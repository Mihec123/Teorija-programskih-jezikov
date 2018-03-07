{module MH_Parse where
import MH_Lex
}

%name mh_parseProg Prog
%name mh_parseExp Exp
%tokentype { Token }
%error { parseError }

%token

--declaration of terminal symbols

        if                  {KEY "if"}
        then                {KEY "then"}
        else                {KEY "else"}
        not                 {KEY "not"}
        integertype         {KEY "Integer"}
        booltype            {KEY "Bool"}
        chartype            {KEY "Char"}
        stringtype          {KEY "String"}
        listtype            {KEY "List"}
        '=='                {OP "=="}
        '<'                 {OP "<"}
        '+'                 {OP "+"}
        '-'                 {OP "-"}
        ':'                 {OP ":"}
        '='                 {OP "="}
        colcol              {OP "::"}
        arrow               {OP "->"}
        land                {OP "&&"}
        lor                 {OP "||"}
        '('                 {PUNC "("}
        ')'                 {PUNC ")"}
        '['                 {PUNC "["}
        ']'                 {PUNC "]"}
        ';'                 {PUNC ";"}
        ','                 {PUNC ","}
        num                 {NUM $$}
        boolean             {BOOLEAN $$}
        chr                 {CHAR $$}
        str                 {STRING $$}
        var                 {VAR $$}


-- precedence and associativity declarations, lowest precedence first

%right ':'
%left lor
%left land
%nonassoc not
%nonassoc '==' '<'
%left '+' '-'
%right arrow

%%

-- the grammar

Prog : {- empty -}              {[]}
     | Decl Prog                {$1:$2}

Decl : TypeDecl TermDecl        {($1,$2)}

TypeDecl : var colcol Type ';'  {($1,$3)}

Type : integertype              {TypeConst "Integer"}
     | booltype                 {TypeConst "Bool"}
     | chartype                 {TypeConst "Char"}
     | stringtype               {TypeConst "String"}
     | listtype                 {TypeConst "List"}
     | Type arrow Type          {TypeOp ("->", $1, $3)}
     | '(' Type ')'             {$2}

TermDecl : var Args '=' Exp ';' {($1, lamabstract $2 $4)}

Args : {- empty -}              {[]}
     | var Args                 {$1:$2}

Exp  : if Exp then Exp else Exp {Cond ($2, $4, $6)}
     | Exp0                     {$1}

Exp0 : Exp0 '==' Exp0           {Op ("==", $1, $3)}
     | Exp0 '<' Exp0            {Op ("<", $1, $3)}
     | Exp0 '+' Exp0            {Op ("+", $1, $3)}
     | Exp0 '-' Exp0            {Op ("-", $1, $3)}
     | Exp0 land Exp0           {Op ("&&", $1, $3)}
     | Exp0 lor Exp0            {Op ("||", $1, $3)}
     | Exp0 ':' Exp0            {Op (":", $1, $3)}
     | not Exp0                 {UOp ("not", $2)}
     | '-' Exp1                 {UOp ("-", $2)}
     | Exp1                     {$1}

Exp1 : Exp1 Exp2                {Op ("appl", $1, $2)}
     | Exp2                     {$1}

Exp2 : num                      {Num $1}
     | boolean                  {Boolean $1}
     | chr                      {Char $1}
     | str                      {String $1}
     | var                      {Var $1}
     | Exp3                     {$1}
     | '(' Exp ')'              {$2}

Exp3 : '[' ']'                  {List []}
     | '[' List ']'             {List $2}

List : Exp                      {[$1]}
     | Exp ',' List            {$1 : $3}

-- Exp3 : '[' List ']'             {List $2}
-- List : {- empty -}              { [] }
--      | Exp ',' List             { ($1 : $3) }


{

parseError :: [Token] -> a
parseError _ = error "MH parse error"

-- Haskell datatypes representing abstract syntax of MH types and expressions

data Type =
        TypeConst String |
        TypeOp (String, Type, Type)
        deriving (Show, Eq)

data Exp =
        Num Integer |
        Boolean Bool |
        Char Char |
        String String |
        List [Exp] |
        Var String |
        Op (String, Exp, Exp) |
        UOp (String, Exp) |
        Cond (Exp, Exp, Exp) |
        Lam (String, Exp)
        deriving Show

lamabstract [] exp = exp
lamabstract (v:vs) exp = Lam(v, lamabstract vs exp)

}
