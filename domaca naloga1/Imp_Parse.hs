{-# OPTIONS_GHC -w #-}
module Imp_Parse where
import Imp_Lex
import Imp_AbsSyntax
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,92) ([10496,4096,2624,1024,0,32,0,0,4096,28,1024,7,0,0,1,0,512,2624,1024,0,320,32832,1,3968,0,0,0,49408,1,0,0,0,0,0,32,6,164,64,4096,28,1024,7,0,0,20480,0,5120,0,1280,0,320,0,80,32768,0,896,0,8192,41984,16384,0,0,0,0,0,0,14336,0,3584,0,2048,0,0,4096,2048,10496,4096,0,192,0,0,0,8,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_imp_parse","Com","Com1","BExp","AExp","Exp0","if","then","else","while","do","skip","':='","'=='","'<'","'+'","'-'","'*'","'!'","land","lor","'{'","'}'","';'","num","boolean","loc","%eof"]
        bit_start = st * 30
        bit_end = (st + 1) * 30
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..29]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (9) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (29) = happyShift action_7
action_0 (4) = happyGoto action_8
action_0 (5) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_4
action_1 (12) = happyShift action_5
action_1 (14) = happyShift action_6
action_1 (29) = happyShift action_7
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (26) = happyShift action_9
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (21) = happyShift action_14
action_4 (27) = happyShift action_15
action_4 (28) = happyShift action_16
action_4 (29) = happyShift action_17
action_4 (6) = happyGoto action_18
action_4 (7) = happyGoto action_12
action_4 (8) = happyGoto action_13
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (21) = happyShift action_14
action_5 (27) = happyShift action_15
action_5 (28) = happyShift action_16
action_5 (29) = happyShift action_17
action_5 (6) = happyGoto action_11
action_5 (7) = happyGoto action_12
action_5 (8) = happyGoto action_13
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_6

action_7 (15) = happyShift action_10
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (26) = happyShift action_9
action_8 (30) = happyAccept
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (9) = happyShift action_4
action_9 (12) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (29) = happyShift action_7
action_9 (4) = happyGoto action_30
action_9 (5) = happyGoto action_3
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (27) = happyShift action_15
action_10 (29) = happyShift action_17
action_10 (7) = happyGoto action_29
action_10 (8) = happyGoto action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (13) = happyShift action_28
action_11 (22) = happyShift action_20
action_11 (23) = happyShift action_21
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (16) = happyShift action_23
action_12 (17) = happyShift action_24
action_12 (18) = happyShift action_25
action_12 (19) = happyShift action_26
action_12 (20) = happyShift action_27
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_16

action_14 (21) = happyShift action_14
action_14 (27) = happyShift action_15
action_14 (28) = happyShift action_16
action_14 (29) = happyShift action_17
action_14 (6) = happyGoto action_22
action_14 (7) = happyGoto action_12
action_14 (8) = happyGoto action_13
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_17

action_16 _ = happyReduce_12

action_17 _ = happyReduce_18

action_18 (10) = happyShift action_19
action_18 (22) = happyShift action_20
action_18 (23) = happyShift action_21
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (9) = happyShift action_4
action_19 (12) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (29) = happyShift action_7
action_19 (4) = happyGoto action_39
action_19 (5) = happyGoto action_3
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (21) = happyShift action_14
action_20 (27) = happyShift action_15
action_20 (28) = happyShift action_16
action_20 (29) = happyShift action_17
action_20 (6) = happyGoto action_38
action_20 (7) = happyGoto action_12
action_20 (8) = happyGoto action_13
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (21) = happyShift action_14
action_21 (27) = happyShift action_15
action_21 (28) = happyShift action_16
action_21 (29) = happyShift action_17
action_21 (6) = happyGoto action_37
action_21 (7) = happyGoto action_12
action_21 (8) = happyGoto action_13
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_10

action_23 (27) = happyShift action_15
action_23 (29) = happyShift action_17
action_23 (7) = happyGoto action_36
action_23 (8) = happyGoto action_13
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (27) = happyShift action_15
action_24 (29) = happyShift action_17
action_24 (7) = happyGoto action_35
action_24 (8) = happyGoto action_13
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (27) = happyShift action_15
action_25 (29) = happyShift action_17
action_25 (7) = happyGoto action_34
action_25 (8) = happyGoto action_13
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (27) = happyShift action_15
action_26 (29) = happyShift action_17
action_26 (7) = happyGoto action_33
action_26 (8) = happyGoto action_13
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (27) = happyShift action_15
action_27 (29) = happyShift action_17
action_27 (7) = happyGoto action_32
action_27 (8) = happyGoto action_13
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (24) = happyShift action_31
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (18) = happyShift action_25
action_29 (19) = happyShift action_26
action_29 (20) = happyShift action_27
action_29 _ = happyReduce_5

action_30 (26) = happyShift action_9
action_30 _ = happyReduce_1

action_31 (9) = happyShift action_4
action_31 (12) = happyShift action_5
action_31 (14) = happyShift action_6
action_31 (29) = happyShift action_7
action_31 (4) = happyGoto action_41
action_31 (5) = happyGoto action_3
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_15

action_33 _ = happyReduce_14

action_34 _ = happyReduce_13

action_35 (18) = happyShift action_25
action_35 (19) = happyShift action_26
action_35 (20) = happyShift action_27
action_35 _ = happyReduce_11

action_36 (18) = happyShift action_25
action_36 (19) = happyShift action_26
action_36 (20) = happyShift action_27
action_36 _ = happyReduce_7

action_37 (22) = happyShift action_20
action_37 _ = happyReduce_9

action_38 _ = happyReduce_8

action_39 (11) = happyShift action_40
action_39 (26) = happyShift action_9
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (9) = happyShift action_4
action_40 (12) = happyShift action_5
action_40 (14) = happyShift action_6
action_40 (29) = happyShift action_7
action_40 (4) = happyGoto action_43
action_40 (5) = happyGoto action_3
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (25) = happyShift action_42
action_41 (26) = happyShift action_9
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_4

action_43 (26) = happyShift action_9
action_43 _ = happyReduce_3

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Seq (happy_var_1,happy_var_3)
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happyReduce 6 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Cond (happy_var_2, happy_var_4, happy_var_6)
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While (happy_var_2, happy_var_5)
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (LOC happy_var_1))
	 =  HappyAbsSyn5
		 (Assign (happy_var_1, happy_var_3)
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn5
		 (Skip
	)

happyReduce_7 = happySpecReduce_3  6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (Equal (happy_var_1, happy_var_3)
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  6 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And (happy_var_1, happy_var_3)
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or (happy_var_1, happy_var_3)
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not (happy_var_2)
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (LessThan (happy_var_1, happy_var_3)
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyTerminal (BOOLEAN happy_var_1))
	 =  HappyAbsSyn6
		 (Boolean happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Add (happy_var_1, happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Minus (happy_var_1, happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Times (happy_var_1, happy_var_3)
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  7 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  8 happyReduction_17
happyReduction_17 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn8
		 (Num happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 (HappyTerminal (LOC happy_var_1))
	 =  HappyAbsSyn8
		 (Loc happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 30 30 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	KEY "if" -> cont 9;
	KEY "then" -> cont 10;
	KEY "else" -> cont 11;
	KEY "while" -> cont 12;
	KEY "do" -> cont 13;
	KEY "skip" -> cont 14;
	ASS ":=" -> cont 15;
	OP "==" -> cont 16;
	OP "<" -> cont 17;
	OP "+" -> cont 18;
	OP "-" -> cont 19;
	OP "*" -> cont 20;
	OP "!" -> cont 21;
	OP "&&" -> cont 22;
	OP "||" -> cont 23;
	PUNC "{" -> cont 24;
	PUNC "}" -> cont 25;
	PUNC ";" -> cont 26;
	NUM happy_dollar_dollar -> cont 27;
	BOOLEAN happy_dollar_dollar -> cont 28;
	LOC happy_dollar_dollar -> cont 29;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 30 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
imp_parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Imp parse error"
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:\\GitHub\\haskell-platform\\build\\ghc-bindist\\local\\lib/include\\ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "C:\\Users\\randy\\AppData\\Local\\Temp\\ghc1316_0\\ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
