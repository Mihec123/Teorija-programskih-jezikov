
{module MH_Lex where }

%wrapper "basic"


$digit      = [0-9]
$lower      = [a-z]
$upper      = [A-Z]
$symb       = [\!\@\#\$\%\^\&\-\+\=\/\<\>\~\:\;\.\?\/\\\~\'\|]
@escaped    = \\ [\'\"n]
:-

   $white+                                               ;   -- whitespace
   \-[\-]+([^$symb].*)?                                  ;   -- comments
   if | then | else
   | Integer | Bool | Char | String | List | not         {\s -> KEY s}
   \=\= | \< | \+ | \- | \= | \:\: | \-\> | \&\& | \|\|
   | \:                                                  {\s -> OP s}
   \( | \) | \; | \, | \[ | \]                           {\s -> PUNC s}
   True | False                                          {\s -> BOOLEAN (read s)}
   $digit+                                               {\s -> NUM (read s)}
   [$lower][$lower $upper $digit \_]*[\']*               {\s -> VAR s}
   \'( [$lower $upper $digit] | @escaped ) \'            {\s -> CHAR (read s)}
   \"([$digit $white $symb $upper $lower] | @escaped)*\" {\s -> STRING (read s)}
   $symb+                                                {\_ -> UNKNOWNSYM}


{

-- The Token type - each action above has type String -> Token

data Token =
      KEY String
    | OP String
    | PUNC String
    | BOOLEAN Bool
    | NUM Integer
    | CHAR Char
    | STRING String
    | VAR String
    | UNKNOWNSYM
    deriving Show
}
