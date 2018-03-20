
{module Imp_Lex where }

%wrapper "basic"

-- character classes

$digit		= [0-9]
$lower      = [a-z]
$upper   	= [A-Z]
$symb       = [\!\@\#\$\%\^\&\-\+\=\/\<\>\~\:\;\.\?\/\\\~\'\|]

:-

-- lexical classes

   $white+                                               ;   -- whitespace
   \-[\-]+([^$symb].*)?                                  ;   -- comments
   $upper[$upper $lower $digit]*						 {\s -> LOC s}
   $digit+                                               {\s -> NUM (read s)}
   \:\=												 	 {\s -> ASS s}
   \; | \( | \) | \{ | \}								 {\s -> PUNC s}
   True | False                                          {\s -> BOOLEAN (read s)}
   if | then | else | while | do | skip					 {\s -> KEY s}
   \=\= | \< | \+ | \- | \* | \&\& | \|\| | \!:          {\s -> OP s}
   


{

-- The Token type - the action for each lexical class has type String -> Token

data Token = KEY String
    | OP String
    | PUNC String
    | BOOLEAN Bool
    | NUM Integer
    | LOC String
    | ASS String
	deriving Show

-- The lexer implements a function
--
--        imp_lex :: String -> [Token]
--
-- which converts a string containing Imp program text into a list of tokens

imp_lex = alexScanTokens

}
