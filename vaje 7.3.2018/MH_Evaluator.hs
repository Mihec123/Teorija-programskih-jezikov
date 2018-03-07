module MH_Evaluator where
import MH_Parse

type Env = String -> Exp


freevars :: Exp -> [String]
freevars e = case e of
    Var y                   -> [y]
    Num _                   -> []
    Boolean _               -> []
    Op (op, exp1, exp2)     -> (freevars exp1) ++ (freevars exp2)
    UOp (op, exp1)          -> freevars exp1
    Cond (exp0, exp1, exp2) -> (freevars exp0) ++ (freevars exp1) ++ (freevars exp2)
    Lam (y, exp0)           -> filter (\x -> x/=y) (freevars exp0)


freshen :: String -> [String] -> String

freshen x xs =
  if notElem x xs then x
     else freshen (x ++ "'") xs


expsubst :: Exp -> String -> Exp -> Exp
expsubst e x exp =
  case e of
    Var y                   -> if x == y then exp else Var y
    Num n                   -> Num n
    Boolean b               -> Boolean b
    Op (op, exp1, exp2)     -> Op(op, expsubst exp1 x exp, expsubst exp2 x exp)
    UOp (op, exp1)          -> UOp(op, expsubst exp1 x exp)
    Cond (exp0, exp1, exp2) ->
      Cond (expsubst exp0 x exp, expsubst exp1 x exp, expsubst exp2 x exp)
    Lam(y, exp0)            ->
      if x == y then Lam (y, exp0)
      else let xs = freevars exp
        in if notElem y xs then Lam (y, expsubst exp0 x exp)
           else let y' = freshen y ((freevars exp0) ++ xs)
                 in Lam (y', expsubst (expsubst exp0 y (Var y')) x exp)


evaluate :: Env -> Exp -> Exp

evaluate env (Var x)  = evaluate env (env x)

evaluate env (Num n)  = (Num n)

evaluate env (Boolean b) = (Boolean b)

evaluate env (Cond (exp0, exp1, exp2)) =
  let val0 = evaluate env exp0
   in case val0 of
        (Boolean True) -> evaluate env exp1
        (Boolean False) -> evaluate env exp2
        _ -> error "Runtime type error"

evaluate env (Op ("==", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
    (Num m, Num n) -> Boolean (m==n)
    _ -> error "Runtime type error"

evaluate env (Op ("<", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
        (Num m, Num n) -> Boolean (m<n)
        _ -> error "Runtime type error"

evaluate env (Op ("+", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
        (Num m, Num n) -> Num (m+n)
        _ -> error "Runtime type error"

evaluate env (Op ("-", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
        (Num m, Num n) -> Num (m-n)
        _ -> error "Runtime type error"

evaluate env (Op ("appl", exp1, exp2)) =
  let val1 = evaluate env exp1
   in case val1 of
        (Lam (x, exp0)) -> evaluate env (expsubst exp0 x exp2)
        _ -> error "Runtime type error"
		
evaluate env (Op ("&&", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
			(Boolean True,Boolean True) -> Boolean True
			(Boolean True,Boolean False) -> Boolean False
			(Boolean False,Boolean True) -> Boolean False
			(Boolean False,Boolean False) -> Boolean False
			_ -> error "Runtime type error"
			
evaluate env (Op ("||", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
			(Boolean True,Boolean True) -> Boolean True
			(Boolean True,Boolean False) -> Boolean True
			(Boolean False,Boolean True) -> Boolean True
			(Boolean False,Boolean False) -> Boolean False
			_ -> error "Runtime type error"
			
evaluate env (UOp("not", exp1)) =
  let val1 = evaluate env exp1
   in case (val1) of
			Boolean True -> Boolean False
			Boolean False -> Boolean True
			_ -> error "Runtime type error"
			
evaluate env (UOp("-", exp1)) =
  let val1 = evaluate env exp1
   in case (val1) of
			Num a -> Num (-a)
			_ -> error "Runtime type error"

evaluate env (Lam (x, exp)) = Lam (x, exp)
