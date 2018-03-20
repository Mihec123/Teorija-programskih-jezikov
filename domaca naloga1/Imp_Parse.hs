{-# OPTIONS_GHC -w #-}
module Imp_Parse where
import Imp_Lex
import Imp_AbsSyntax
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,119) ([18432,1,2,0,0,16384,0,0,1873,0,14984,0,0,8192,5,8,64,0,328,513,1024,48,0,31,0,0,0,34816,58,164,256,1312,2048,0,0,0,0,0,0,0,32772,1,656,1024,0,16,41984,0,1,41472,14,4096,117,0,65,0,136,0,0,0,20480,7,32768,58,0,468,0,3744,0,29952,18432,1,2,0,0,0,234,61440,0,0,0,0,0,0,0,0,0,0,0,0,32768,3,0,30,0,0,0,0,0,0,1,0,0,1024,32,18432,1,2,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_imp_parse","Prog","Decl","TermDecl","Args","Com","BExp","AExp","Exp0","if","then","else","while","do","skip","':='","'=='","'<'","'+'","'-'","'*'","'!'","';'","land","lor","'('","')'","'{'","'}'","num","boolean","loc","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (12) = happyShift action_3
action_0 (15) = happyShift action_4
action_0 (17) = happyShift action_5
action_0 (34) = happyShift action_6
action_0 (8) = happyGoto action_2
action_0 _ = happyFail (happyExpListPerState 0)

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (25) = happyShift action_19
action_2 (35) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (24) = happyShift action_12
action_3 (28) = happyShift action_13
action_3 (30) = happyShift action_14
action_3 (32) = happyShift action_15
action_3 (33) = happyShift action_16
action_3 (34) = happyShift action_17
action_3 (9) = happyGoto action_18
action_3 (10) = happyGoto action_10
action_3 (11) = happyGoto action_11
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (24) = happyShift action_12
action_4 (28) = happyShift action_13
action_4 (30) = happyShift action_14
action_4 (32) = happyShift action_15
action_4 (33) = happyShift action_16
action_4 (34) = happyShift action_17
action_4 (9) = happyGoto action_9
action_4 (10) = happyGoto action_10
action_4 (11) = happyGoto action_11
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_11

action_6 (12) = happyShift action_3
action_6 (15) = happyShift action_4
action_6 (17) = happyShift action_5
action_6 (34) = happyShift action_6
action_6 (7) = happyGoto action_7
action_6 (8) = happyGoto action_8
action_6 _ = happyReduce_5

action_7 (18) = happyShift action_34
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (12) = happyShift action_3
action_8 (15) = happyShift action_4
action_8 (17) = happyShift action_5
action_8 (25) = happyShift action_19
action_8 (34) = happyShift action_6
action_8 (7) = happyGoto action_33
action_8 (8) = happyGoto action_8
action_8 _ = happyReduce_5

action_9 (16) = happyShift action_32
action_9 (26) = happyShift action_22
action_9 (27) = happyShift action_23
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (19) = happyShift action_27
action_10 (20) = happyShift action_28
action_10 (21) = happyShift action_29
action_10 (22) = happyShift action_30
action_10 (23) = happyShift action_31
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (19) = happyReduce_21
action_11 (20) = happyReduce_21
action_11 (21) = happyReduce_21
action_11 (22) = happyReduce_21
action_11 (23) = happyReduce_21
action_11 _ = happyReduce_16

action_12 (24) = happyShift action_12
action_12 (28) = happyShift action_13
action_12 (30) = happyShift action_14
action_12 (32) = happyShift action_15
action_12 (33) = happyShift action_16
action_12 (34) = happyShift action_17
action_12 (9) = happyGoto action_26
action_12 (10) = happyGoto action_10
action_12 (11) = happyGoto action_11
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_3
action_13 (15) = happyShift action_4
action_13 (17) = happyShift action_5
action_13 (34) = happyShift action_6
action_13 (8) = happyGoto action_25
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (12) = happyShift action_3
action_14 (15) = happyShift action_4
action_14 (17) = happyShift action_5
action_14 (34) = happyShift action_6
action_14 (8) = happyGoto action_24
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_22

action_16 _ = happyReduce_23

action_17 _ = happyReduce_24

action_18 (13) = happyShift action_21
action_18 (26) = happyShift action_22
action_18 (27) = happyShift action_23
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (12) = happyShift action_3
action_19 (15) = happyShift action_4
action_19 (17) = happyShift action_5
action_19 (34) = happyShift action_6
action_19 (8) = happyGoto action_20
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (25) = happyShift action_19
action_20 _ = happyReduce_10

action_21 (12) = happyShift action_3
action_21 (15) = happyShift action_4
action_21 (17) = happyShift action_5
action_21 (34) = happyShift action_6
action_21 (8) = happyGoto action_47
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (24) = happyShift action_12
action_22 (28) = happyShift action_13
action_22 (30) = happyShift action_14
action_22 (32) = happyShift action_15
action_22 (33) = happyShift action_16
action_22 (34) = happyShift action_17
action_22 (9) = happyGoto action_46
action_22 (10) = happyGoto action_10
action_22 (11) = happyGoto action_11
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (24) = happyShift action_12
action_23 (28) = happyShift action_13
action_23 (30) = happyShift action_14
action_23 (32) = happyShift action_15
action_23 (33) = happyShift action_16
action_23 (34) = happyShift action_17
action_23 (9) = happyGoto action_45
action_23 (10) = happyGoto action_10
action_23 (11) = happyGoto action_11
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (25) = happyShift action_19
action_24 (31) = happyShift action_44
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (25) = happyShift action_19
action_25 (29) = happyShift action_43
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_15

action_27 (28) = happyShift action_13
action_27 (30) = happyShift action_14
action_27 (32) = happyShift action_15
action_27 (33) = happyShift action_16
action_27 (34) = happyShift action_17
action_27 (10) = happyGoto action_42
action_27 (11) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (28) = happyShift action_13
action_28 (30) = happyShift action_14
action_28 (32) = happyShift action_15
action_28 (33) = happyShift action_16
action_28 (34) = happyShift action_17
action_28 (10) = happyGoto action_41
action_28 (11) = happyGoto action_36
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (28) = happyShift action_13
action_29 (30) = happyShift action_14
action_29 (32) = happyShift action_15
action_29 (33) = happyShift action_16
action_29 (34) = happyShift action_17
action_29 (10) = happyGoto action_40
action_29 (11) = happyGoto action_36
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (28) = happyShift action_13
action_30 (30) = happyShift action_14
action_30 (32) = happyShift action_15
action_30 (33) = happyShift action_16
action_30 (34) = happyShift action_17
action_30 (10) = happyGoto action_39
action_30 (11) = happyGoto action_36
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (28) = happyShift action_13
action_31 (30) = happyShift action_14
action_31 (32) = happyShift action_15
action_31 (33) = happyShift action_16
action_31 (34) = happyShift action_17
action_31 (10) = happyGoto action_38
action_31 (11) = happyGoto action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (12) = happyShift action_3
action_32 (15) = happyShift action_4
action_32 (17) = happyShift action_5
action_32 (34) = happyShift action_6
action_32 (8) = happyGoto action_37
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_6

action_34 (28) = happyShift action_13
action_34 (30) = happyShift action_14
action_34 (32) = happyShift action_15
action_34 (33) = happyShift action_16
action_34 (34) = happyShift action_17
action_34 (10) = happyGoto action_35
action_34 (11) = happyGoto action_36
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (20) = happyShift action_28
action_35 (21) = happyShift action_29
action_35 (22) = happyShift action_30
action_35 (23) = happyShift action_31
action_35 _ = happyReduce_9

action_36 _ = happyReduce_21

action_37 (25) = happyShift action_19
action_37 _ = happyReduce_8

action_38 _ = happyReduce_20

action_39 _ = happyReduce_19

action_40 _ = happyReduce_18

action_41 (20) = happyFail []
action_41 (21) = happyShift action_29
action_41 (22) = happyShift action_30
action_41 (23) = happyShift action_31
action_41 _ = happyReduce_17

action_42 (20) = happyShift action_28
action_42 (21) = happyShift action_29
action_42 (22) = happyShift action_30
action_42 (23) = happyShift action_31
action_42 _ = happyReduce_12

action_43 _ = happyReduce_25

action_44 _ = happyReduce_26

action_45 (26) = happyShift action_22
action_45 _ = happyReduce_14

action_46 _ = happyReduce_13

action_47 (14) = happyShift action_48
action_47 (25) = happyShift action_19
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (12) = happyShift action_3
action_48 (15) = happyShift action_4
action_48 (17) = happyShift action_5
action_48 (34) = happyShift action_6
action_48 (8) = happyGoto action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (25) = happyShift action_19
action_49 _ = happyReduce_7

happyReduce_1 = happySpecReduce_0  4 happyReduction_1
happyReduction_1  =  HappyAbsSyn4
		 ([]
	)

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1:happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happyReduce 5 6 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	(HappyTerminal (LOC happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 ((happy_var_1,happy_var_2,happy_var_4)
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_0  7 happyReduction_5
happyReduction_5  =  HappyAbsSyn7
		 ([]
	)

happyReduce_6 = happySpecReduce_2  7 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1:happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 6 8 happyReduction_7
happyReduction_7 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Cond (happy_var_2, happy_var_4, happy_var_6)
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 4 8 happyReduction_8
happyReduction_8 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (While (happy_var_2, happy_var_4)
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 4 8 happyReduction_9
happyReduction_9 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Ass (happy_var_2, happy_var_4)
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  8 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Op (";",happy_var_1,happy_var_3)
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  9 happyReduction_12
happyReduction_12 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (Op ("==", happy_var_1, happy_var_3)
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  9 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Op ("&&", happy_var_1, happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Op ("||", happy_var_1, happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  9 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (UOp ("!", happy_var_2)
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Op ("<", happy_var_1, happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Op ("+", happy_var_1, happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  10 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Op ("-", happy_var_1, happy_var_3)
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  10 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Op ("*", happy_var_1, happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  10 happyReduction_21
happyReduction_21 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  11 happyReduction_22
happyReduction_22 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn11
		 (Num happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  11 happyReduction_23
happyReduction_23 (HappyTerminal (BOOLEAN happy_var_1))
	 =  HappyAbsSyn11
		 (Boolean happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyTerminal (LOC happy_var_1))
	 =  HappyAbsSyn11
		 (Location happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  11 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	KEY "if" -> cont 12;
	KEY "then" -> cont 13;
	KEY "else" -> cont 14;
	KEY "while" -> cont 15;
	KEY "do" -> cont 16;
	KEY "skip" -> cont 17;
	ASS ":=" -> cont 18;
	OP "==" -> cont 19;
	OP "<" -> cont 20;
	OP "+" -> cont 21;
	OP "-" -> cont 22;
	OP "*" -> cont 23;
	OP "!" -> cont 24;
	OP ";" -> cont 25;
	OP "&&" -> cont 26;
	OP "||" -> cont 27;
	PUNC "(" -> cont 28;
	PUNC ")" -> cont 29;
	PUNC "{" -> cont 30;
	PUNC "}" -> cont 31;
	NUM happy_dollar_dollar -> cont 32;
	BOOLEAN happy_dollar_dollar -> cont 33;
	LOC happy_dollar_dollar -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
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
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn8 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
