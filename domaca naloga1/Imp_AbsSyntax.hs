module Imp_AbsSyntax where

-- Haskell datatypes representing abstract syntax of expressions and commands
  
-- arithmetic expressions
data AExp =
       Loc String |              -- l
       Num Integer |             -- n
       Add (AExp, AExp) |        -- e1 + e2
       Minus (AExp, AExp) |      -- e1 - e2
       Times (AExp, AExp)        -- e1 * e2
       deriving Show

-- boolean expressions
data BExp =
       Boolean Bool |            -- b
       Equal (AExp, AExp) |      -- d1 == d2
       LessThan (AExp, AExp) |   -- d1 < d2
       And (BExp, BExp) |        -- d1 && d2
       Or (BExp, BExp) |         -- d1 || d2
       Not (BExp)                -- ! d
       deriving Show

-- commands
data Com =
       Assign (String, AExp) |   -- l := e
       Cond (BExp, Com, Com) |   -- if d then c1 else c2
       Seq (Com, Com) |          -- c1 ; c2
       Skip |                    -- skip
       While (BExp, Com)         -- while d do c
       deriving Show


