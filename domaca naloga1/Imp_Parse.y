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
        while               {KEY "while"}
        do                  {KEY "do"}
        skip                {KEY "skip"}
        ':='                {ASS ":="}
        '=='                {OP "=="}
        '<'                 {OP "<"}
        '+'                 {OP "+"}
        '-'                 {OP "-"}
        '*'                 {OP "*"}
        '!'                 {OP "!"}
        land                {OP "&&"}
        lor                 {OP "||"}
        '{'                 {PUNC "{"}
        '}'                 {PUNC "}"}
		'('                 {PUNC "("}
        ')'                 {PUNC ")"}
        ';'                 {PUNC ";"}
        num                 {NUM $$}
        boolean             {BOOLEAN $$}
        loc                 {LOC $$}

-- precedence and associativity declarations, lowest precedence first


%right ';'
%right else
%left lor
%left land
%nonassoc '!'
%nonassoc '==' '<'
%left '+' '-' '*'
%nonassoc skip
  
%%

-- the grammar

Com  : Com ';' Com               {Seq ($1,$3)}
     | Com1                      {$1}
      
Com1 : if BExp then Com else Com {Cond ($2, $4, $6)}
     | while BExp do Com2        {While ($2, $4)}
     | loc ':=' AExp             {Assign ($1, $3)} 
     | skip                      {Skip}
     
Com2 : Com1                      {$1}
     | '{' Com '}'               {$2}


BExp : AExp '==' AExp           {Equal ($1, $3)}
     | BExp land BExp           {And ($1, $3)}
     | BExp lor BExp            {Or ($1, $3)}
     | '!' BExp                 {Not ($2)}
     | AExp '<' AExp            {LessThan ($1, $3)}
     | boolean                  {Boolean $1}
     
AExp : AExp '+' AExp            {Add ($1, $3)}
     | AExp '-' AExp            {Minus ($1, $3)}
     | AExp '*' AExp            {Times ($1, $3)}
     | Exp0                     {$1}
	 | '(' AExp ')'             {$2}

Exp0 : num                      {Num $1}
     | loc                      {Loc $1}
     
{
parseError :: [Token] -> a
parseError _ = error "Imp parse error"

}

