{-# OPTIONS_GHC -w #-}
module MH_Parse where
import MH_Lex
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14

action_0 (36) = happyShift action_17
action_0 (5) = happyGoto action_14
action_0 (6) = happyGoto action_15
action_0 (7) = happyGoto action_16
action_0 _ = happyReduce_2

action_1 (15) = happyShift action_7
action_1 (20) = happyShift action_8
action_1 (30) = happyShift action_9
action_1 (31) = happyShift action_10
action_1 (34) = happyShift action_11
action_1 (35) = happyShift action_12
action_1 (36) = happyShift action_13
action_1 (11) = happyGoto action_3
action_1 (12) = happyGoto action_4
action_1 (13) = happyGoto action_5
action_1 (14) = happyGoto action_6
action_1 _ = happyFail

action_2 _ = happyFail

action_3 (37) = happyAccept
action_3 _ = happyFail

action_4 (21) = happyShift action_27
action_4 (22) = happyShift action_28
action_4 (23) = happyShift action_29
action_4 (24) = happyShift action_30
action_4 (28) = happyShift action_31
action_4 (29) = happyShift action_32
action_4 _ = happyReduce_14

action_5 (31) = happyShift action_10
action_5 (34) = happyShift action_11
action_5 (35) = happyShift action_12
action_5 (36) = happyShift action_13
action_5 (14) = happyGoto action_26
action_5 _ = happyReduce_23

action_6 _ = happyReduce_25

action_7 (15) = happyShift action_7
action_7 (20) = happyShift action_8
action_7 (30) = happyShift action_9
action_7 (31) = happyShift action_10
action_7 (34) = happyShift action_11
action_7 (35) = happyShift action_12
action_7 (36) = happyShift action_13
action_7 (11) = happyGoto action_25
action_7 (12) = happyGoto action_4
action_7 (13) = happyGoto action_5
action_7 (14) = happyGoto action_6
action_7 _ = happyFail

action_8 (20) = happyShift action_8
action_8 (30) = happyShift action_9
action_8 (31) = happyShift action_10
action_8 (34) = happyShift action_11
action_8 (35) = happyShift action_12
action_8 (36) = happyShift action_13
action_8 (12) = happyGoto action_24
action_8 (13) = happyGoto action_5
action_8 (14) = happyGoto action_6
action_8 _ = happyFail

action_9 (20) = happyShift action_8
action_9 (30) = happyShift action_9
action_9 (31) = happyShift action_10
action_9 (34) = happyShift action_11
action_9 (35) = happyShift action_12
action_9 (36) = happyShift action_13
action_9 (12) = happyGoto action_23
action_9 (13) = happyGoto action_5
action_9 (14) = happyGoto action_6
action_9 _ = happyFail

action_10 (15) = happyShift action_7
action_10 (20) = happyShift action_8
action_10 (30) = happyShift action_9
action_10 (31) = happyShift action_10
action_10 (34) = happyShift action_11
action_10 (35) = happyShift action_12
action_10 (36) = happyShift action_13
action_10 (11) = happyGoto action_22
action_10 (12) = happyGoto action_4
action_10 (13) = happyGoto action_5
action_10 (14) = happyGoto action_6
action_10 _ = happyFail

action_11 _ = happyReduce_26

action_12 _ = happyReduce_27

action_13 _ = happyReduce_28

action_14 (37) = happyAccept
action_14 _ = happyFail

action_15 (36) = happyShift action_17
action_15 (5) = happyGoto action_21
action_15 (6) = happyGoto action_15
action_15 (7) = happyGoto action_16
action_15 _ = happyReduce_2

action_16 (36) = happyShift action_20
action_16 (9) = happyGoto action_19
action_16 _ = happyFail

action_17 (26) = happyShift action_18
action_17 _ = happyFail

action_18 (18) = happyShift action_44
action_18 (19) = happyShift action_45
action_18 (31) = happyShift action_46
action_18 (8) = happyGoto action_43
action_18 _ = happyFail

action_19 _ = happyReduce_4

action_20 (36) = happyShift action_42
action_20 (10) = happyGoto action_41
action_20 _ = happyReduce_11

action_21 _ = happyReduce_3

action_22 (32) = happyShift action_40
action_22 _ = happyFail

action_23 (23) = happyShift action_29
action_23 (24) = happyShift action_30
action_23 _ = happyReduce_22

action_24 (21) = happyShift action_27
action_24 (22) = happyShift action_28
action_24 (23) = happyShift action_29
action_24 (24) = happyShift action_30
action_24 _ = happyReduce_21

action_25 (16) = happyShift action_39
action_25 _ = happyFail

action_26 _ = happyReduce_24

action_27 (20) = happyShift action_8
action_27 (30) = happyShift action_9
action_27 (31) = happyShift action_10
action_27 (34) = happyShift action_11
action_27 (35) = happyShift action_12
action_27 (36) = happyShift action_13
action_27 (12) = happyGoto action_38
action_27 (13) = happyGoto action_5
action_27 (14) = happyGoto action_6
action_27 _ = happyFail

action_28 (20) = happyShift action_8
action_28 (30) = happyShift action_9
action_28 (31) = happyShift action_10
action_28 (34) = happyShift action_11
action_28 (35) = happyShift action_12
action_28 (36) = happyShift action_13
action_28 (12) = happyGoto action_37
action_28 (13) = happyGoto action_5
action_28 (14) = happyGoto action_6
action_28 _ = happyFail

action_29 (20) = happyShift action_8
action_29 (30) = happyShift action_9
action_29 (31) = happyShift action_10
action_29 (34) = happyShift action_11
action_29 (35) = happyShift action_12
action_29 (36) = happyShift action_13
action_29 (12) = happyGoto action_36
action_29 (13) = happyGoto action_5
action_29 (14) = happyGoto action_6
action_29 _ = happyFail

action_30 (20) = happyShift action_8
action_30 (30) = happyShift action_9
action_30 (31) = happyShift action_10
action_30 (34) = happyShift action_11
action_30 (35) = happyShift action_12
action_30 (36) = happyShift action_13
action_30 (12) = happyGoto action_35
action_30 (13) = happyGoto action_5
action_30 (14) = happyGoto action_6
action_30 _ = happyFail

action_31 (20) = happyShift action_8
action_31 (30) = happyShift action_9
action_31 (31) = happyShift action_10
action_31 (34) = happyShift action_11
action_31 (35) = happyShift action_12
action_31 (36) = happyShift action_13
action_31 (12) = happyGoto action_34
action_31 (13) = happyGoto action_5
action_31 (14) = happyGoto action_6
action_31 _ = happyFail

action_32 (20) = happyShift action_8
action_32 (30) = happyShift action_9
action_32 (31) = happyShift action_10
action_32 (34) = happyShift action_11
action_32 (35) = happyShift action_12
action_32 (36) = happyShift action_13
action_32 (12) = happyGoto action_33
action_32 (13) = happyGoto action_5
action_32 (14) = happyGoto action_6
action_32 _ = happyFail

action_33 (21) = happyShift action_27
action_33 (22) = happyShift action_28
action_33 (23) = happyShift action_29
action_33 (24) = happyShift action_30
action_33 _ = happyReduce_20

action_34 (21) = happyShift action_27
action_34 (22) = happyShift action_28
action_34 (23) = happyShift action_29
action_34 (24) = happyShift action_30
action_34 _ = happyReduce_19

action_35 _ = happyReduce_18

action_36 _ = happyReduce_17

action_37 (21) = happyFail
action_37 (22) = happyFail
action_37 (23) = happyShift action_29
action_37 (24) = happyShift action_30
action_37 _ = happyReduce_16

action_38 (21) = happyFail
action_38 (22) = happyFail
action_38 (23) = happyShift action_29
action_38 (24) = happyShift action_30
action_38 _ = happyReduce_15

action_39 (15) = happyShift action_7
action_39 (20) = happyShift action_8
action_39 (30) = happyShift action_9
action_39 (31) = happyShift action_10
action_39 (34) = happyShift action_11
action_39 (35) = happyShift action_12
action_39 (36) = happyShift action_13
action_39 (11) = happyGoto action_52
action_39 (12) = happyGoto action_4
action_39 (13) = happyGoto action_5
action_39 (14) = happyGoto action_6
action_39 _ = happyFail

action_40 _ = happyReduce_29

action_41 (25) = happyShift action_51
action_41 _ = happyFail

action_42 (36) = happyShift action_42
action_42 (10) = happyGoto action_50
action_42 _ = happyReduce_11

action_43 (27) = happyShift action_48
action_43 (33) = happyShift action_49
action_43 _ = happyFail

action_44 _ = happyReduce_6

action_45 _ = happyReduce_7

action_46 (18) = happyShift action_44
action_46 (19) = happyShift action_45
action_46 (31) = happyShift action_46
action_46 (8) = happyGoto action_47
action_46 _ = happyFail

action_47 (27) = happyShift action_48
action_47 (32) = happyShift action_56
action_47 _ = happyFail

action_48 (18) = happyShift action_44
action_48 (19) = happyShift action_45
action_48 (31) = happyShift action_46
action_48 (8) = happyGoto action_55
action_48 _ = happyFail

action_49 _ = happyReduce_5

action_50 _ = happyReduce_12

action_51 (15) = happyShift action_7
action_51 (20) = happyShift action_8
action_51 (30) = happyShift action_9
action_51 (31) = happyShift action_10
action_51 (34) = happyShift action_11
action_51 (35) = happyShift action_12
action_51 (36) = happyShift action_13
action_51 (11) = happyGoto action_54
action_51 (12) = happyGoto action_4
action_51 (13) = happyGoto action_5
action_51 (14) = happyGoto action_6
action_51 _ = happyFail

action_52 (17) = happyShift action_53
action_52 _ = happyFail

action_53 (15) = happyShift action_7
action_53 (20) = happyShift action_8
action_53 (30) = happyShift action_9
action_53 (31) = happyShift action_10
action_53 (34) = happyShift action_11
action_53 (35) = happyShift action_12
action_53 (36) = happyShift action_13
action_53 (11) = happyGoto action_58
action_53 (12) = happyGoto action_4
action_53 (13) = happyGoto action_5
action_53 (14) = happyGoto action_6
action_53 _ = happyFail

action_54 (33) = happyShift action_57
action_54 _ = happyFail

action_55 (27) = happyShift action_48
action_55 _ = happyReduce_8

action_56 _ = happyReduce_9

action_57 _ = happyReduce_10

action_58 _ = happyReduce_13

happyReduce_2 = happySpecReduce_0  5 happyReduction_2
happyReduction_2  =  HappyAbsSyn5
		 ([]
	)

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1:happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  6 happyReduction_4
happyReduction_4 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ((happy_var_1,happy_var_2)
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 4 7 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_1,happy_var_3)
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  8 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn8
		 (TypeConst "Integer"
	)

happyReduce_7 = happySpecReduce_1  8 happyReduction_7
happyReduction_7 _
	 =  HappyAbsSyn8
		 (TypeConst "Bool"
	)

happyReduce_8 = happySpecReduce_3  8 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (TypeOp ("->", happy_var_1, happy_var_3)
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  8 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 5 9 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	(HappyTerminal (VAR happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ((happy_var_1, lamabstract happy_var_2 happy_var_4)
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_0  10 happyReduction_11
happyReduction_11  =  HappyAbsSyn10
		 ([]
	)

happyReduce_12 = happySpecReduce_2  10 happyReduction_12
happyReduction_12 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn10
		 (happy_var_1:happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 11 happyReduction_13
happyReduction_13 ((HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Cond (happy_var_2, happy_var_4, happy_var_6)
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_1  11 happyReduction_14
happyReduction_14 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  12 happyReduction_15
happyReduction_15 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("==", happy_var_1, happy_var_3)
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  12 happyReduction_16
happyReduction_16 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("<", happy_var_1, happy_var_3)
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  12 happyReduction_17
happyReduction_17 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("+", happy_var_1, happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  12 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("-", happy_var_1, happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  12 happyReduction_19
happyReduction_19 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("&&", happy_var_1, happy_var_3)
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  12 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("||", happy_var_1, happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  12 happyReduction_21
happyReduction_21 (HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (UOp ("not", happy_var_2)
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  12 happyReduction_22
happyReduction_22 (HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (UOp ("um", happy_var_2)
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  12 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  13 happyReduction_24
happyReduction_24 (HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Op ("appl", happy_var_1, happy_var_2)
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  13 happyReduction_25
happyReduction_25 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  14 happyReduction_26
happyReduction_26 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn14
		 (Num happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  14 happyReduction_27
happyReduction_27 (HappyTerminal (BOOLEAN happy_var_1))
	 =  HappyAbsSyn14
		 (Boolean happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  14 happyReduction_28
happyReduction_28 (HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn14
		 (Var happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  14 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	KEY "if" -> cont 15;
	KEY "then" -> cont 16;
	KEY "else" -> cont 17;
	KEY "Integer" -> cont 18;
	KEY "Bool" -> cont 19;
	KEY "not" -> cont 20;
	OP "==" -> cont 21;
	OP "<" -> cont 22;
	OP "+" -> cont 23;
	OP "-" -> cont 24;
	OP "=" -> cont 25;
	OP "::" -> cont 26;
	OP "->" -> cont 27;
	OP "&&" -> cont 28;
	OP "||" -> cont 29;
	OP "um" -> cont 30;
	PUNC "(" -> cont 31;
	PUNC ")" -> cont 32;
	PUNC ";" -> cont 33;
	NUM happy_dollar_dollar -> cont 34;
	BOOLEAN happy_dollar_dollar -> cont 35;
	VAR happy_dollar_dollar -> cont 36;
	_ -> happyError' (tk:tks)
	}

happyError_ 37 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = return
    (<*>) = ap
instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

mh_parseProg tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn5 z -> happyReturn z; _other -> notHappyAtAll })

mh_parseExp tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn11 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "MH parse error"

-- Haskell datatypes representing abstract syntax of MH types and expressions
  
data Type =
        TypeConst String |
        TypeOp (String, Type, Type)
        deriving Show
  
data Exp =
        Num Integer |
        Boolean Bool |
        Var String |
        Op (String, Exp, Exp) |
		UOp (String, Exp) |
        Cond (Exp, Exp, Exp) |
        Lam (String, Exp)
        deriving Show

lamabstract [] exp = exp
lamabstract (v:vs) exp = Lam(v, lamabstract vs exp)
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 9 "<command-line>" #-}
{-# LINE 1 "G:\\GitHub\\haskell-platform\\build\\ghc-bindist\\local\\lib/include\\ghcversion.h" #-}

















{-# LINE 9 "<command-line>" #-}
{-# LINE 1 "C:\\Users\\randy\\AppData\\Local\\Temp\\ghc4548_0\\ghc_2.h" #-}
















































































































































{-# LINE 9 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates\\GenericTemplate.hs" #-}

{-# LINE 46 "templates\\GenericTemplate.hs" #-}








{-# LINE 67 "templates\\GenericTemplate.hs" #-}

{-# LINE 77 "templates\\GenericTemplate.hs" #-}

{-# LINE 86 "templates\\GenericTemplate.hs" #-}

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

{-# LINE 155 "templates\\GenericTemplate.hs" #-}

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
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

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
happyFail  i tk (HappyState (action)) sts stk =
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

{-# LINE 322 "templates\\GenericTemplate.hs" #-}
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
