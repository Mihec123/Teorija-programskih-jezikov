
module TMH_TypeInference where
import TMH_ExpType
import TMH_TypeEnvironments

--------------------------------------------------------------------------

inferType :: TypeEnv -> Exp -> [String] -> Maybe (TypeSubst, Type, [String])

-- inferType tenv exp bs
--
---- Performs type inference for expression exp in type environment tenv,
---- where bs is a list of monomorphic type variables in use already.
---- Returns a triple (s, t, bs') where t is inferred type, s is accompanying 
---- type substitution and bs' is all variables used by end of type inference

inferType tenv (Var x) bs =
  do t <- lookup x tenv
     return ([], t, bs)

inferType tenv (Num n) bs = Just ([], TypeConst "Integer", bs)

inferType tenv (Boolean b) bs = Just ([], TypeConst "Bool", bs)

inferType tenv (Cond(exp0, exp1, exp2)) bs =
  do (s0, t0, bs0) <- inferType tenv exp0 bs
     s0' <- mgu t0 (TypeConst "Bool")
     let tenv' = typeSubstTEnv (typeSubstTEnv tenv s0) s0'
     (s1, t1, bs1) <- inferType tenv' exp1 bs0
     let tenv'' = typeSubstTEnv tenv' s1
     (s2, t2, bs2) <- inferType tenv'' exp2 bs1
     s2' <- mgu (typeSubst t1 s2) t2
     let s = composeSubstList [s0,s0',s1,s2,s2']
     return (restrict s (tvarsTEnv tenv), typeSubst t2 s2', bs2)

inferType tenv (Op("==", exp1, exp2)) bs =
  do (s1, t1, bs1) <- inferType tenv exp1 bs
     s1' <- mgu t1 (TypeConst "Integer")
     let tenv' = typeSubstTEnv (typeSubstTEnv tenv s1) s1'
     (s2, t2, bs2) <- inferType tenv' exp2 bs1
     s2' <- mgu t2 (TypeConst "Integer")
     let s = composeSubstList [s1,s1',s2,s2']
     return (restrict s (tvarsTEnv tenv), TypeConst "Bool", bs2)

inferType tenv (Op("<", exp1, exp2)) bs =
  do (s1, t1, bs1) <- inferType tenv exp1 bs
     s1' <- mgu t1 (TypeConst "Integer")
     let tenv' = typeSubstTEnv (typeSubstTEnv tenv s1) s1'
     (s2, t2, bs2) <- inferType tenv' exp2 bs1
     s2' <- mgu t2 (TypeConst "Integer")
     let s = composeSubstList [s1,s1',s2,s2']
     return (restrict s (tvarsTEnv tenv), TypeConst "Bool", bs2)

inferType tenv (Op("+", exp1, exp2)) bs =
  do (s1, t1, bs1) <- inferType tenv exp1 bs
     s1' <- mgu t1 (TypeConst "Integer")
     let tenv' = typeSubstTEnv (typeSubstTEnv tenv s1) s1'
     (s2, t2, bs2) <- inferType tenv' exp2 bs1
     s2' <- mgu t2 (TypeConst "Integer")
     let s = composeSubstList [s1,s1',s2,s2']
     return (restrict s (tvarsTEnv tenv), TypeConst "Integer", bs2)

inferType tenv (Op("-", exp1, exp2)) bs =
  do (s1, t1, bs1) <- inferType tenv exp1 bs
     s1' <- mgu t1 (TypeConst "Integer")
     let tenv' = typeSubstTEnv (typeSubstTEnv tenv s1) s1'
     (s2, t2, bs2) <- inferType tenv' exp2 bs1
     s2' <- mgu t2 (TypeConst "Integer")
     let s = composeSubstList [s1,s1',s2,s2']
     return (restrict s (tvarsTEnv tenv), TypeConst "Integer", bs2)

inferType tenv (Op("appl", exp1, exp2)) bs =
  do (s1, t1, bs1) <- inferType tenv exp1 bs
     let tenv' = typeSubstTEnv tenv s1
     (s2, t2, bs2) <- inferType tenv' exp2 bs1
     let tenv'' = typeSubstTEnv tenv' s2
         b = freshtvar bs2
     s3 <- mgu (Arrow (t2, TypeVar b)) (typeSubst t1 s2)
     let s = composeSubstList [s1,s2,s3]
     return (restrict s (tvarsTEnv tenv), typeSubst (TypeVar b) s3, b:bs2)

inferType tenv (Lam (x, exp0)) bs =
  do let b = freshtvar bs
         tenv' = updateTEnv tenv x (TypeVar b)
     (s0, t0, bs0) <- inferType tenv' exp0 (b:bs)
     return (restrict s0 (tvarsTEnv tenv), Arrow (typeSubst (TypeVar b) s0, t0), bs0)

inferType tenv (Let(x, exp1, exp2)) bs =
  do let b = freshtvar bs
         tenv1 = updateTEnv tenv x (TypeVar b)
     (s1, t1, bs1) <- inferType tenv1 exp1 (b:bs)
     let t1' = typeSubst (TypeVar b) s1
     s1' <- mgu t1' t1
     let t1'' = typeSubst t1' s1'
         tenv' = typeSubstTEnv (typeSubstTEnv tenv s1) s1'
         tenv2 = updateTEnv tenv' x t1''
     (s2, t2, bs2) <- inferType tenv2 exp2 bs1
     let s = composeSubstList [s1,s1',s2]
     return (restrict s (tvarsTEnv tenv), t2, bs2)

inferType tenv Jst bs =
  do let b = freshtvar bs
     return ([], Arrow (TypeVar b, Myb (TypeVar b)), b:bs)

inferType tenv Nthg bs =
  do let b = freshtvar bs
     return ([], Myb (TypeVar b), b:bs)

inferType tenv (MybCase (exp1, y, exp2, exp3)) bs =
  do (s1, t1, bs1) <- inferType tenv exp1 bs
     let b = freshtvar bs1
     s1' <- mgu (Myb (TypeVar b)) t1
     let tenv' = typeSubstTEnv (typeSubstTEnv tenv s1) s1'
         sigma = typeSubst (TypeVar b) s1'
         tenvy = updateTEnv tenv' y sigma
     (s2, t2, bs2) <- inferType tenvy exp2 (b:bs1)
     let tenv'' = typeSubstTEnv tenv' s2
     (s3, t3, bs3) <- inferType tenv'' exp3 bs2
     s3' <- mgu t3 (typeSubst t2 s3)
     let s = composeSubstList [s1,s1',s2,s3,s3']
     return (restrict s (tvarsTEnv tenv), typeSubst t3 s3', bs3)

inferType tenv Nil bs =
  do let b = freshtvar bs
     return ([], List (TypeVar b), b:bs)

inferType tenv (Cons(exp1,exp2)) bs =
  do (s1, t1, bs1) <- inferType tenv exp1 bs
     let tenv' = typeSubstTEnv tenv s1
     (s2, t2, bs2) <- inferType tenv' exp2 bs1
     let tenv'' = typeSubstTEnv tenv' s2
     s3 <- mgu t2 (List (typeSubst t1 s2))
     let s = composeSubstList [s1,s2,s3]
     return (restrict s (tvarsTEnv tenv), typeSubst t2 s3, bs2)

inferType tenv (ListCase (exp1, exp2, y, z, exp3)) bs =
  do (s1, t1, bs1) <- inferType tenv exp1 bs
     let b = freshtvar bs1
     s1' <- mgu (List (TypeVar b)) t1
     let tenv' = typeSubstTEnv (typeSubstTEnv tenv s1) s1'
     (s2, t2, bs2) <- inferType tenv' exp2 (b:bs1)
     let tenv'' = typeSubstTEnv tenv' s2
         sigma = typeSubst (typeSubst (TypeVar b) s1') s2
         tenvyz = updateTEnv (updateTEnv tenv'' y sigma) z (List sigma)
     (s3, t3, bs3) <- inferType tenvyz exp3 bs2
     s3' <- mgu t3 (typeSubst t2 s3)
     let s = composeSubstList [s1,s1',s2,s3,s3']
     return (restrict s (tvarsTEnv tenv), typeSubst t3 s3', bs3)
	 
inferType tenv Leaf bs =
  do let b = freshtvar bs
     return ([],Tree (TypeVar b),b:bs)

inferType tenv Node bs = 
  do let b = freshtvar bs
     return ([], Arrow (TypeVar b, Arrow (Tree (TypeVar b), Arrow (Tree (TypeVar b), Tree (TypeVar b)))), b:bs)


inferType tenv (TreeCase (exp1, exp2, x, y, z, exp3)) bs =
  do (s1, t1, bs1) <- inferType tenv exp1 bs
     let b = freshtvar bs1
     s1' <- mgu (Tree (TypeVar b)) t1
     let tenv' = typeSubstTEnv (typeSubstTEnv tenv s1) s1'
     (s2, t2, bs2) <- inferType tenv' exp2 (b:bs1)
     let tenv'' = typeSubstTEnv tenv' s2
         sigma = typeSubst (typeSubst (TypeVar b) s1') s2
         tenvxyz = updateTEnv (updateTEnv (updateTEnv tenv'' x sigma) y (Tree sigma)) z (Tree sigma)
     (s3, t3, bs3) <- inferType tenvxyz exp3 bs2
     s3' <- mgu t3 (typeSubst t2 s3)
     let s = composeSubstList [s1,s1',s2,s3,s3']
     return (restrict s (tvarsTEnv tenv), typeSubst t3 s3', bs3)


-------------------------------------------------------------------------------------------

inferProg :: [String] -> Env  -> Maybe TypeEnv

-- inferProg xs env
--
---- xs is a list of declared variables, and env is the environment
---- assigning expressions to variables. The function peforms type inference
---- for all the variable declarations in xs and, if successful, returns the
---- resulting type environment.

inferProg xs env = doInferProg xs env []


doInferProg :: [String] -> Env -> TypeEnv -> Maybe TypeEnv

-- doInferProg xs env tenv
--
---- It is assumed that tenv is a polymorphic type environment for
---- variables that have already been type-checked, xs is a list of
---- the remaining expression variables to be type checked, and env is the environment
---- assigning expressions to variables. The function peforms type inference
---- for all the variable declarations in xs and, if successful, returns a
---- type environment extending tenv.

doInferProg [] _  tenv  = Just tenv

doInferProg (x:xs) env tenv =
  do let bs = tvarsTEnv tenv
         b = freshtvar bs
	 tenv1 = updateTEnv tenv x (TypeVar b)
     (s1, t1, bs') <- inferType tenv1 (env x) (b:bs)
     let t1' = typeSubst (TypeVar b) s1
     s1' <- mgu t1' t1
     let t1'' = typeSubst t1' s1'
         tenv' = typeSubstTEnv (typeSubstTEnv tenv s1) s1'
         tenv2 = updateTEnv tenv' x t1''
     doInferProg xs env tenv2


