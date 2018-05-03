module Imp_Evaluator where
import Imp_AbsSyntax
import Imp_State
import Imp_Parse

evalAExp :: State -> AExp -> Integer

evalAExp state (Num n)  = n

evalAExp state (Add (exp1, exp2)) =
  let val1 = evalAExp state exp1
      val2 = evalAExp state exp2
   in case (val1,val2) of
        (n, m) -> n + m
        _ -> error "Runtime type error"