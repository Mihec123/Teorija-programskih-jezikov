module TMH_Interpreter where 

import TMH_Lex
import TMH_Parse
import TMH_ExpType
import TMH_ExpSubst
import TMH_Evaluator
import TMH_TypeEnvironments
import TMH_TypeInference


typeToString :: Type -> String

typeToString (TypeVar str) = str
typeToString (TypeConst str) = str
typeToString (Arrow (TypeVar str, t)) =
     str ++ " -> " ++ (typeToString t)
typeToString (Arrow (TypeConst str, t)) =
     str ++ " -> " ++ (typeToString t)
typeToString (Arrow (List t1, t2)) =
     (typeToString (List t1)) ++ " -> " ++ (typeToString t2)
typeToString (Arrow (Myb t1, t2)) =
     (typeToString (Myb t1)) ++ " -> " ++ (typeToString t2)
typeToString (Arrow (t1, t2)) =
     "(" ++ (typeToString t1) ++ ") -> " ++ (typeToString t2)
typeToString (Myb t) = "Maybe " ++ (typeToString t)
typeToString (List t) = "[" ++ (typeToString t) ++ "]"
typeToString (Tree t) = "Tree " ++ (typeToString t)


-- runTMH "file.hs"
--
-- lexes and parses the TMH program text in file.hs and
-- performs static analysis including type inference.
-- Then it enters an interpreter loop: the user inputs an
-- LLMH expression, which the computer and evaluates,
-- outputting the type and resulting value.
-- The loop is exited by inputting ":q"
		

runTMH filename = do
  progtext <- readFile filename
  let lexed  = tmh_lex progtext
      termDecls = tmh_parseProg lexed
      declVars = checkVars termDecls []
      env = (\x -> case lookup x termDecls of
               Just exp -> exp
	       -- The case below should never occur due to static analysis
               Nothing -> error ("Lookup error - undefined variable: " ++ x))
   in case inferProg declVars env  of
                 Nothing -> putStrLn "Type errors in program."
                 Just tenv  -> 
                        do putStrLn ""
                           printTypes tenv
                           runIn tenv env (tvarsTEnv tenv)

-- Checks that variables are introduced sequentially in program
checkVars [] xs = xs
checkVars ((x,expx):trds) xs =
  if notElem x xs && all (\y -> elem y (x:xs)) (freevars expx)
  then checkVars trds (xs ++ [x])
  else error ("Invalid declaration for variable " ++ x)

printTypes [] = putStrLn ""

printTypes ((x,t):tenv) =
  do _ <- putStrLn (x ++ " :: " ++ (typeToString t))
     printTypes tenv

runIn tenv env bs = do
     _ <- putStr "TMH> "
     textuser <- getLine
     if textuser == ":q" then putStrLn "TMH goodbye!"
       else let lexeduser = tmh_lex textuser
                exp  = tmh_parseExp lexeduser
             in if all (\y -> elem y [x | (x,_) <- tenv]) (freevars exp)
                then case inferType tenv exp bs of
                          Nothing -> do putStrLn "Type error."
                                        runIn tenv env bs
                          Just (_, t, _) -> do putStr "Type: "
                                               putStrLn (typeToString t)
                                               putStr "Value: "
                                               putStrLn (evalToString env exp)
                                               runIn tenv env bs
                else do putStrLn "Undeclared variable."
                        runIn tenv env bs

evalToString  env exp =
  case evaluate env exp of
    Num n -> show n
    Boolean b -> show b
    Op ("appl", Jst, exp') -> "Just " ++ (evalToString env exp')
    Nthg -> "Nothing"
    Nil -> "[]"
    Cons (exp1, exp2) -> (evalToString env exp1) ++ ":" ++ (evalToString env exp2)
    Leaf -> "Leaf"
    Op ("appl", Op ("appl", Op ("appl", Node, exp1), exp2), exp3) ->
        "Node " ++ (evalToString env exp1) ++ " (" ++ (evalToString env exp2) ++ ") (" ++ (evalToString env exp3) ++ ")"
    _ -> "..."  -- For non-printable values such as functions

