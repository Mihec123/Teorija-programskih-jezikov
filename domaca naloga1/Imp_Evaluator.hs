
module Imp_Evaluator where
import Imp_AbsSyntax
import Imp_State
import Imp_Parse

evalAExp :: State -> AExp -> Integer

evalBExp :: State -> BExp -> Bool

evalCom :: State -> Com -> State

evalAExp state (Loc s)  = valof state s

evalAExp state (Num n)  = n

evalAExp state (Add(exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
        (m, n) -> m+n
		
evalAExp state (Minus (exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
        (m, n) -> m-n
		
evalAExp state (Times ( exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
        (m, n) -> m*n
		
evalBExp state (Boolean b) = b

evalBExp state (Equal( exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
    (m, n) -> m==n
	
evalBExp state (LessThan( exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
    (m, n) -> m<n

evalBExp state (And ( exp1, exp2)) =
  let val1 = evalBExp state exp1
      val2 = evalBExp state exp2
   in case (val1, val2) of
			(True,True) -> True
			( _,_) -> False
			
evalBExp state (Or ( exp1, exp2)) =
  let val1 = evalBExp state exp1
      val2 = evalBExp state exp2
   in case (val1, val2) of
			(True,_) -> True
			(False,True) -> True
			(False,False) -> False
			
evalBExp state (Not( exp1)) =
  let val1 = evalBExp state exp1
   in case (val1) of
			True -> False
			False -> True

evalCom state (Cond (exp0, exp1, exp2)) =
  let val0 = evalBExp state exp0
   in case val0 of
        (True) -> evalCom state exp1
        (False) -> evalCom state exp2
		
evalCom state (While (exp0, exp1)) =
  let val0 = evalBExp state exp0
   in case val0 of
        (True) -> evalCom (evalCom state exp1) (While (exp0, exp1))
        (False) -> state

evalCom state (Skip) = state

evalCom state (Seq(exp0, exp1)) = state2
		where state2 = evalCom (evalCom state exp0) exp1
		
evalCom state (Assign (exp0,exp1)) = 
	let val0 = evalAExp state exp1
	in case val0 of
        (n) -> update state exp0 n
	
--
-- [[DEFINE EVALUATION FUNCTIONS FOR:
--
--     *  ARITHMETIC EXPRESSIONS
--     *  BOOLEAN  EXPRESSIONS
--     *  COMMANDS
--
--   WITH THE TYPES SPECIFIED ABOVE]]
--
