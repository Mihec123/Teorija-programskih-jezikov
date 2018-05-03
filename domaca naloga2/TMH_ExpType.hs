
module TMH_ExpType where

-- Haskell datatypes representing abstract syntax of TMH types, expressions 

-- for TMH allow type variables in types
 
data Type =
       TypeVar String |
       TypeConst String |
       Arrow (Type, Type) |
       Myb Type |                -- Myb t represents Maybe t
       List Type |               -- List t represents [t]
       Tree Type                 -- Tree t 
  deriving (Show,Eq)

data Exp =
       Num Integer |
       Boolean Bool |
       Var String |
       Op (String, Exp, Exp) |
       Cond (Exp, Exp, Exp) |
       Let (String, Exp, Exp) |
       Lam (String, Exp) |
       Jst | Nthg | Nil | Cons (Exp,Exp) | Leaf | Node |
       MybCase (Exp, String, Exp, Exp) |
       ListCase (Exp, Exp, String, String, Exp) |
       TreeCase (Exp, Exp, String, String, String, Exp)
       deriving Show

-- Type for environments

type Env = String -> Exp





