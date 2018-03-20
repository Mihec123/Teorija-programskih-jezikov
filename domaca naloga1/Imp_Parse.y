{module Imp_Parse where
import Imp_Lex
import Imp_AbsSyntax
}

-- the parser implements a function
--
--           imp_parse :: [Token] -> Com
--
-- that converts a list of tokens to the abstract syntax tree of a command

%name imp_parse Com 
%tokentype { Token }
%error { parseError }

%token

--declaration of terminal symbols

        if                  {KEY "if"}
        then                {KEY "then"}
        else                {KEY "else"}
		while				{KEY "while"}
		do					{KEY "do"}
		skip				{KEY "skip"}
		':='				{ASS ":="}
        '=='                {OP "=="}
        '<'                 {OP "<"}
        '+'                 {OP "+"}
        '-'                 {OP "-"}
        '*'                 {OP "*"}
		'!'					{OP "!"}
		';'                 {OP ";"}
        land                {OP "&&"}
        lor                 {OP "||"}
        '('                 {PUNC "("}
        ')'                 {PUNC ")"}
        '{'                 {PUNC "{"}
        '}'                 {PUNC "}"}
--        ';'                 {PUNC ";"}
        num                 {NUM $$}
        boolean             {BOOLEAN $$}
        loc                 {LOC $$}

-- precedence and associativity declarations, lowest precedence first

%right ';'
%left lor
%left land
%nonassoc '!'
%nonassoc '==' '<'
%left '+' '-' '*'
  
%%

-- the grammar

Prog : {- empty -}              {[]}
     | Decl Prog                {$1:$2}

Decl : TermDecl        			{$1}


TermDecl : loc Args ':=' Com ';' {($1,$2,$4)}

Args : {- empty -}              {[]}
     | Com Args                 {$1:$2}

Com  : if BExp then Com else Com {Cond ($2, $4, $6)}
	 | while BExp do Com		 {While ($2, $4)}
	 | loc Args ':=' AExp		 {Ass ($2, $4)} 
     | Com ';' Com	 			 {Op (";",$1,$3)}
	 | skip						 {$1}

BExp : AExp '==' AExp           {Op ("==", $1, $3)}
     | BExp land BExp           {Op ("&&", $1, $3)}
     | BExp lor BExp            {Op ("||", $1, $3)}
	 | '!' BExp                 {UOp ("!", $2)}
	 | Exp0						{$1}	 
	
AExp : AExp '<' AExp            {Op ("<", $1, $3)}
     | AExp '+' AExp            {Op ("+", $1, $3)}
     | AExp '-' AExp            {Op ("-", $1, $3)}
	 | AExp '*' AExp            {Op ("*", $1, $3)}
     | Exp0                     {$1}

Exp0 : num                      {Num $1}
     | boolean                  {Boolean $1}
	 | loc		 				{Location $1}
     | '(' Com ')'              {$2}
	 | '{' Com '}' 				{$2}
     
{
  
parseError :: [Token] -> a
parseError _ = error "Imp parse error"

data Com =
        Num Integer |
        Boolean Bool |
        Location String |
        Op (String, Com, Com) |
        UOp (String, Com) |
        Cond (Boolean, Com, Com) |
        While (Boolean, Com) |
		Ass (String, Com) |
		Lin (String,Com, Com)
        deriving Show

}

