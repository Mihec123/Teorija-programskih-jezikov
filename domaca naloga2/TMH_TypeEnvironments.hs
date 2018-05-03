
module TMH_TypeEnvironments where
import TMH_ExpType
import TMH_Evaluator

--------------------------------------------------------------------------

--
-- Functions manipulating types and type variables
--


typeVars :: Type -> [String]
typeVars (TypeConst _) = []
typeVars (TypeVar ('a':_)) = []
typeVars (TypeVar b) = [b]
typeVars (Arrow (t, t')) = (typeVars t') ++ (typeVars t)
typeVars (Myb t) = typeVars t
typeVars (List t) = typeVars t
typeVars (Tree t) = typeVars t

polyTypeVars :: Type -> [String]
polyTypeVars (TypeConst _) = []
polyTypeVars (TypeVar (('a'):nn)) = [('a'):nn]
polyTypeVars (TypeVar _) = []
polyTypeVars (Arrow (t, t')) = (polyTypeVars t') ++ (polyTypeVars t)
polyTypeVars (Myb t) = polyTypeVars t
polyTypeVars (List t) = polyTypeVars t
polyTypeVars (Tree t) = polyTypeVars t


freshtvar :: [String] -> String

freshtvar bs = findfreshtvar bs ('b') 0
  -- a fresh monomorphic type variable different from variables in bs


freshptvar :: [String] -> String

freshptvar as = findfreshtvar as ('a') 0
  -- a fresh polymorphic type variable different from variables in as


findfreshtvar tvs c n =
  let tv = c:(show n)
    in if notElem tv tvs then tv
       else findfreshtvar tvs c (n+1) 


----------------------------------------------------------------------------

-- Parallel type substitutions

type TypeSubst = [(String,Type)]


typeSubst :: Type -> TypeSubst -> Type

typeSubst (TypeVar a) s =
  let mt = lookup a s
    in case mt of
         (Just t) -> t
         Nothing -> (TypeVar a)

typeSubst (TypeConst tc) s = (TypeConst tc)

typeSubst (Arrow (t, t')) s =
  Arrow (typeSubst t s, typeSubst t' s)

typeSubst (Myb t) s = Myb (typeSubst t s)

typeSubst (List t) s = List (typeSubst t s)

typeSubst (Tree t) s = Tree (typeSubst t s)



domain :: TypeSubst -> [String]

domain s = [a | (a, _) <- s]


restrict :: TypeSubst -> [String] -> TypeSubst

restrict s as = [(a, t) | (a, t) <- s, elem a as]


composeSubst :: TypeSubst -> TypeSubst -> TypeSubst

-- composeSubst s1 s2
--
---- constructs the composite substitution s1 followed by s2

composeSubst s1 s2 =
  [(a, typeSubst (typeSubst (TypeVar a) s1) s2) | a <- domain s1] ++
    [(a, typeSubst (TypeVar a) s2) | a <- domain s2, notElem a (domain s1)]


composeSubstList :: [TypeSubst] -> TypeSubst

-- composeSubstList [s1,..., sn]
--
---- constructs the composite substitution s1 followed by ... followed by sn.

composeSubstList [] = []
composeSubstList (s:ss) = composeSubst s (composeSubstList ss)

---------------------------------------------------------------------------

--
-- Unification
--

-- mgu t1 t2
--
----- Returns most general unifier of t1 and t2 if one exists. Otherwise raises error.


mgu :: Type -> Type -> Maybe TypeSubst

mgu t1 t2 = mguFind [] t1 t2

mguFind s (TypeConst tc1) (TypeConst tc2) | tc1 == tc2   = Just s

mguFind s (Arrow (t1, t1')) (Arrow (t2, t2')) =
  do s' <- mguFind s t1 t2
     mguFind s' (typeSubst t1' s') (typeSubst t2' s')

mguFind s (Myb t1) (Myb t2) = mguFind s t1 t2

mguFind s (List t1) (List t2) = mguFind s t1 t2

mguFind s (Tree t1) (Tree t2) = mguFind s t1 t2

mguFind s (TypeVar a1) (TypeVar a2) =
  if a1 == a2 then Just s else Just (composeSubst s [(a1, (TypeVar a2))])

mguFind s (TypeVar a1) t2 =
  if notElem a1 (typeVars t2) then Just (composeSubst s [(a1, t2)])
  else Nothing -- occurs check error

mguFind s t1 (TypeVar a2) =
  if notElem a2 (typeVars t1) then Just (composeSubst s [(a2, t1)])
  else Nothing -- occurs check error

mguFind s t1 t2 = Nothing -- unification error


-----------------------------------------------------------------------------

-- Type environments

type TypeEnv = [(String,Type)]

updateTEnv :: TypeEnv -> String -> Type -> TypeEnv

updateTEnv xts x t =
  [(x',t') | (x',t') <- xts, x' /= x] ++ [(x,t)]

varsTEnv tenv = [x | (x,_) <- tenv]
  -- all expression variables in type environment tenv

tvarsTEnv tenv = concat [typeVars t | (_,t) <- tenv]
  -- all monomorphic type variables in type environment tenv

typeSubstTEnv :: TypeEnv -> TypeSubst -> TypeEnv

typeSubstTEnv tenv s = 
  [(x, typeSubst t s) | (x,t) <- tenv]

