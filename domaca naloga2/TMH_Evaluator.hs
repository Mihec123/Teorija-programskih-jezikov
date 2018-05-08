
module TMH_Evaluator where
import TMH_ExpType
import TMH_ExpSubst

evaluate :: Env -> Exp -> Exp

-- evaluate env e
--
---- performs big step operational semantics on expression exp in
---- term environment env and returns resulting value expression

evaluate env (Var x)  = evaluate env (env x)

evaluate env (Num n)  = (Num n)

evaluate env (Boolean b) = (Boolean b)

evaluate env (Cond(exp0, exp1, exp2)) =
  let val0 = evaluate env exp0
   in case val0 of
        (Boolean True) -> evaluate env exp1
        (Boolean False) -> evaluate env exp2
        _ -> error "Runtime type error"

evaluate env (Let(x, exp1, exp2)) =
  evaluate env (expsubst exp2 x (Let(x, exp1, exp1)))

evaluate env (Op("==", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
    (Num m, Num n) -> Boolean (m==n)
    _ -> error "Runtime type error"

evaluate env (Op("<", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
        (Num m, Num n) -> Boolean (m<n)
	_ -> error "Runtime type error"

evaluate env (Op("+", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
        (Num m, Num n) -> Num (m+n)
	_ -> error "Runtime type error"

evaluate env (Op("-", exp1, exp2)) =
  let val1 = evaluate env exp1
      val2 = evaluate env exp2
   in case (val1, val2) of
        (Num m, Num n) -> Num (m-n)
	_ -> error "Runtime type error"

evaluate env (Op("appl", exp1, exp2)) =
  let val1 = evaluate env exp1
   in case val1 of
        (Lam (x, exp0)) -> evaluate env (expsubst exp0 x exp2)
       	nonLambda -> Op("appl", nonLambda, exp2)
          -- the non-lambda case is needed for when val1 is a sequence of
	  -- applications whose leftmost expression is a constructor

evaluate env (Lam (x, exp)) = Lam (x, exp)

evaluate env Jst = Jst

evaluate env Nthg = Nthg

evaluate env Nil = Nil

evaluate env (Cons (exp1, exp2)) = Cons (exp1, exp2)

evaluate env (MybCase (exp0, y, exp1, exp2)) =
  case evaluate env exp0 of
    Op("appl", Jst, exp0') -> evaluate env (expsubst exp1 y exp0')
    Nthg -> evaluate env exp2
    _ -> error "Runtime type error"

evaluate env (ListCase (exp0, exp1, y, z, exp2)) =
  case evaluate env exp0 of
    Nil -> evaluate env exp1
    Cons(exp0hd, exp0tl) -> evaluate env (parExpsubst exp2 [y,z] [exp0hd,exp0tl])
    _ -> error "Runtime type error"


--evaluation of a leaf in a tree
evaluate env Leaf = Leaf

-- evaluation of a node
evaluate env Node = Node

-- evaluation of a tree
evaluate env (TreeCase (exp0, exp1, x, y, z, exp2)) =
  case evaluate env exp0 of
    Leaf -> evaluate env exp1
    Op("appl", Op("appl", Op("appl", Node, x'), y'), z') -> evaluate env (parExpsubst exp2 [x,y,z] [x',y',z'])
    _ -> error "Runtime type error"
	
	
	