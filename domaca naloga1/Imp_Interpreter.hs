module Imp_Interpreter where
import Imp_Lex
import Imp_Parse
import Imp_State
import Imp_Evaluator

--
-- lexes and parses the Imp program text in file.imp and then
-- executes it starting in state s
		
runImp filename s = do
    progtext <- readFile filename
    let lexed   = imp_lex progtext
        parsed  = imp_parse lexed
        s'      = evalCom s parsed
      in print s'

--runImp "file.imp" emp
-- let x = emp
-- let y = update x "X" 5
-- runImp "factorial.imp" y