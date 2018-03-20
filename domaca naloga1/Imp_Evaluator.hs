
module Imp_Evaluator where
import Imp_AbsSyntax
import Imp_State

evalAExp :: State -> AExp -> Integer

evalBExp :: State -> BExp -> Bool

evalCom :: State -> Com -> State

evalAExp state (String loc)  = valof state loc

evalAExp state (Num n)  = n

evalAExp state (Op ("+", exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
        (Num m, Num n) -> m+n
        _ -> error "Runtime type error"
		
evalAExp state (Op ("-", exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
        (Num m, Num n) -> m-n
        _ -> error "Runtime type error"
		
evalAExp state (Op ("*", exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
        (Num m, Num n) -> m*n
        _ -> error "Runtime type error"
		
evalBExp state (Boolean b) = b

evalBExp state (Op ("==", exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
    (Num m, Num n) -> m==n
    _ -> error "Runtime type error"
	
evalBExp state (Op ("<", exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1, val2) of
    (Num m, Num n) -> m<n
    _ -> error "Runtime type error"

evalBExp state (Op ("&&", exp1, exp2)) =
  let val1 = evalBExp state exp1
      val2 = evalBExp state exp2
   in case (val1, val2) of
			(Boolean True,Boolean True) -> True
			(Boolean _,Boolean _) -> False
			_ -> error "Runtime type error"
			
evalBExp state (Op ("||", exp1, exp2)) =
  let val1 = evalBExp state exp1
      val2 = evalBExp state exp2
   in case (val1, val2) of
			(Boolean True,Boolean _) -> True
			(Boolean False,Boolean True) -> True
			(Boolean False,Boolean False) -> False
			_ -> error "Runtime type error"
			
evalBExp state (Op("!", exp1)) =
  let val1 = evalBExp state exp1
   in case (val1) of
			Boolean True -> False
			Boolean False -> True
			_ -> error "Runtime type error"

evalCom state (Cond (exp0, exp1, exp2)) =
  let val0 = evalBExp state exp0
   in case val0 of
        (Boolean True) -> evalCom state exp1
        (Boolean False) -> evalCom state exp2
        _ -> error "Runtime type error"
		
evalCom state (While (exp0, exp1)) =
  let val0 = evalBExp state exp0
   in case val0 of
        (Boolean True) -> evalCom (evalCom state exp1) (While (exp0, exp1))
        (Boolean False) -> state
        _ -> error "Runtime type error"

evalCom state 'skip' = state

evalCom state (Op(";",exp0, exp1)) = state2
		where state2 = evalCom (evalCom state exp0) exp1
		
evalCom state (Ass (exp0)) = 
	let val0 = evalAExp state (valof exp0)
	in case val0 of
        (Num n) -> update state exp0 n
        _ -> error "Runtime type error"
	
--
-- [[DEFINE EVALUATION FUNCTIONS FOR:
--
--     *  ARITHMETIC EXPRESSIONS
--     *  BOOLEAN  EXPRESSIONS
--     *  COMMANDS
--
--   WITH THE TYPES SPECIFIED ABOVE]]
--
