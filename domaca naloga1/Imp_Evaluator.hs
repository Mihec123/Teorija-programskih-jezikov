
module Imp_Evaluator where
import Imp_AbsSyntax
import Imp_State
import Imp_Parse

evalAExp :: State -> AExp -> Integer

evalBExp :: State -> BExp -> Bool

evalCom :: State -> Com -> State

--Arithmetic expressions
-------------------------------------------------------------------
-- evaluation for location l
evalAExp state (Loc s)  = valof state s

-- evaluation for number n
evalAExp state (Num n)  = n

-- evaluation for e1 + e2
evalAExp state (Add(exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
        (m, n) -> m+n

-- evaluation for e1 - e2
evalAExp state (Minus (exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
        (m, n) -> m-n

-- evaluation for e1 * e2
evalAExp state (Times ( exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
        (m, n) -> m*n

--Boolean expressions
-------------------------------------------------------------------
-- evaluation for boolean b
evalBExp state (Boolean b) = b

-- evaluation for d1 == d2
evalBExp state (Equal( exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
    (m, n) -> m==n

-- evaluation for d1 < d2
evalBExp state (LessThan( exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
    (m, n) -> m<n

-- evaluation for d1 && d2
evalBExp state (And ( exp1, exp2)) =
  let val1 = evalBExp state exp1
      val2 = evalBExp state exp2
   in case (val1, val2) of
            (True,True) -> True
            ( _,_) -> False

-- evaluation for d1 || d2
evalBExp state (Or ( exp1, exp2)) =
  let val1 = evalBExp state exp1
      val2 = evalBExp state exp2
   in case (val1, val2) of
            (True,_) -> True
            (False,True) -> True
            (False,False) -> False

-- evaluation for ! d
evalBExp state (Not( exp1)) =
  let val1 = evalBExp state exp1
   in case (val1) of
            True -> False
            False -> True


--Commands
-------------------------------------------------------------------
-- evaluation for if d then c1 else c2
evalCom state (Cond (exp0, exp1, exp2)) =
  let val0 = evalBExp state exp0
   in case val0 of
        (True) -> evalCom state exp1
        (False) -> evalCom state exp2

-- evaluation for while d do c
evalCom state (While (exp0, exp1)) =
  let val0 = evalBExp state exp0
   in case val0 of
        (True) -> evalCom (evalCom state exp1) (While (exp0, exp1))
        (False) -> state

-- evaluation for skip
evalCom state (Skip) = state

-- evaluation for sequencing c1 ; c2
evalCom state (Seq(exp0, exp1)) = state2
        where state2 = evalCom (evalCom state exp0) exp1

-- evaluation for assigment l := e
evalCom state (Assign (exp0,exp1)) = 
    let val0 = evalAExp state exp1
    in case val0 of
        (n) -> update state exp0 n