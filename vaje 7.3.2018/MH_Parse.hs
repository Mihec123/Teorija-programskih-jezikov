{-# OPTIONS_GHC -w #-}
module MH_Parse where
import MH_Lex
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
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
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16

action_0 (46) = happyShift action_21
action_0 (5) = happyGoto action_18
action_0 (6) = happyGoto action_19
action_0 (7) = happyGoto action_20
action_0 _ = happyReduce_2

action_1 (17) = happyShift action_8
action_1 (20) = happyShift action_9
action_1 (29) = happyShift action_10
action_1 (36) = happyShift action_11
action_1 (38) = happyShift action_12
action_1 (42) = happyShift action_13
action_1 (43) = happyShift action_14
action_1 (44) = happyShift action_15
action_1 (45) = happyShift action_16
action_1 (46) = happyShift action_17
action_1 (11) = happyGoto action_3
action_1 (12) = happyGoto action_4
action_1 (13) = happyGoto action_5
action_1 (14) = happyGoto action_6
action_1 (15) = happyGoto action_7
action_1 _ = happyFail

action_2 _ = happyFail

action_3 (47) = happyAccept
action_3 _ = happyFail

action_4 (26) = happyShift action_34
action_4 (27) = happyShift action_35
action_4 (28) = happyShift action_36
action_4 (29) = happyShift action_37
action_4 (30) = happyShift action_38
action_4 (34) = happyShift action_39
action_4 (35) = happyShift action_40
action_4 _ = happyReduce_17

action_5 (36) = happyShift action_11
action_5 (38) = happyShift action_12
action_5 (42) = happyShift action_13
action_5 (43) = happyShift action_14
action_5 (44) = happyShift action_15
action_5 (45) = happyShift action_16
action_5 (46) = happyShift action_17
action_5 (14) = happyGoto action_33
action_5 (15) = happyGoto action_7
action_5 _ = happyReduce_27

action_6 _ = happyReduce_29

action_7 _ = happyReduce_35

action_8 (17) = happyShift action_8
action_8 (20) = happyShift action_9
action_8 (29) = happyShift action_10
action_8 (36) = happyShift action_11
action_8 (38) = happyShift action_12
action_8 (42) = happyShift action_13
action_8 (43) = happyShift action_14
action_8 (44) = happyShift action_15
action_8 (45) = happyShift action_16
action_8 (46) = happyShift action_17
action_8 (11) = happyGoto action_32
action_8 (12) = happyGoto action_4
action_8 (13) = happyGoto action_5
action_8 (14) = happyGoto action_6
action_8 (15) = happyGoto action_7
action_8 _ = happyFail

action_9 (20) = happyShift action_9
action_9 (29) = happyShift action_10
action_9 (36) = happyShift action_11
action_9 (38) = happyShift action_12
action_9 (42) = happyShift action_13
action_9 (43) = happyShift action_14
action_9 (44) = happyShift action_15
action_9 (45) = happyShift action_16
action_9 (46) = happyShift action_17
action_9 (12) = happyGoto action_31
action_9 (13) = happyGoto action_5
action_9 (14) = happyGoto action_6
action_9 (15) = happyGoto action_7
action_9 _ = happyFail

action_10 (36) = happyShift action_11
action_10 (38) = happyShift action_12
action_10 (42) = happyShift action_13
action_10 (43) = happyShift action_14
action_10 (44) = happyShift action_15
action_10 (45) = happyShift action_16
action_10 (46) = happyShift action_17
action_10 (13) = happyGoto action_30
action_10 (14) = happyGoto action_6
action_10 (15) = happyGoto action_7
action_10 _ = happyFail

action_11 (17) = happyShift action_8
action_11 (20) = happyShift action_9
action_11 (29) = happyShift action_10
action_11 (36) = happyShift action_11
action_11 (38) = happyShift action_12
action_11 (42) = happyShift action_13
action_11 (43) = happyShift action_14
action_11 (44) = happyShift action_15
action_11 (45) = happyShift action_16
action_11 (46) = happyShift action_17
action_11 (11) = happyGoto action_29
action_11 (12) = happyGoto action_4
action_11 (13) = happyGoto action_5
action_11 (14) = happyGoto action_6
action_11 (15) = happyGoto action_7
action_11 _ = happyFail

action_12 (17) = happyShift action_8
action_12 (20) = happyShift action_9
action_12 (29) = happyShift action_10
action_12 (36) = happyShift action_11
action_12 (38) = happyShift action_12
action_12 (39) = happyShift action_28
action_12 (42) = happyShift action_13
action_12 (43) = happyShift action_14
action_12 (44) = happyShift action_15
action_12 (45) = happyShift action_16
action_12 (46) = happyShift action_17
action_12 (11) = happyGoto action_26
action_12 (12) = happyGoto action_4
action_12 (13) = happyGoto action_5
action_12 (14) = happyGoto action_6
action_12 (15) = happyGoto action_7
action_12 (16) = happyGoto action_27
action_12 _ = happyFail

action_13 _ = happyReduce_30

action_14 _ = happyReduce_31

action_15 _ = happyReduce_32

action_16 _ = happyReduce_33

action_17 _ = happyReduce_34

action_18 (47) = happyAccept
action_18 _ = happyFail

action_19 (46) = happyShift action_21
action_19 (5) = happyGoto action_25
action_19 (6) = happyGoto action_19
action_19 (7) = happyGoto action_20
action_19 _ = happyReduce_2

action_20 (46) = happyShift action_24
action_20 (9) = happyGoto action_23
action_20 _ = happyFail

action_21 (32) = happyShift action_22
action_21 _ = happyFail

action_22 (21) = happyShift action_55
action_22 (22) = happyShift action_56
action_22 (23) = happyShift action_57
action_22 (24) = happyShift action_58
action_22 (25) = happyShift action_59
action_22 (36) = happyShift action_60
action_22 (8) = happyGoto action_54
action_22 _ = happyFail

action_23 _ = happyReduce_4

action_24 (46) = happyShift action_53
action_24 (10) = happyGoto action_52
action_24 _ = happyReduce_14

action_25 _ = happyReduce_3

action_26 (41) = happyShift action_51
action_26 _ = happyReduce_39

action_27 (39) = happyShift action_50
action_27 _ = happyFail

action_28 _ = happyReduce_37

action_29 (37) = happyShift action_49
action_29 _ = happyFail

action_30 (36) = happyShift action_11
action_30 (38) = happyShift action_12
action_30 (42) = happyShift action_13
action_30 (43) = happyShift action_14
action_30 (44) = happyShift action_15
action_30 (45) = happyShift action_16
action_30 (46) = happyShift action_17
action_30 (14) = happyGoto action_33
action_30 (15) = happyGoto action_7
action_30 _ = happyReduce_26

action_31 (26) = happyShift action_34
action_31 (27) = happyShift action_35
action_31 (28) = happyShift action_36
action_31 (29) = happyShift action_37
action_31 _ = happyReduce_25

action_32 (18) = happyShift action_48
action_32 _ = happyFail

action_33 _ = happyReduce_28

action_34 (20) = happyShift action_9
action_34 (29) = happyShift action_10
action_34 (36) = happyShift action_11
action_34 (38) = happyShift action_12
action_34 (42) = happyShift action_13
action_34 (43) = happyShift action_14
action_34 (44) = happyShift action_15
action_34 (45) = happyShift action_16
action_34 (46) = happyShift action_17
action_34 (12) = happyGoto action_47
action_34 (13) = happyGoto action_5
action_34 (14) = happyGoto action_6
action_34 (15) = happyGoto action_7
action_34 _ = happyFail

action_35 (20) = happyShift action_9
action_35 (29) = happyShift action_10
action_35 (36) = happyShift action_11
action_35 (38) = happyShift action_12
action_35 (42) = happyShift action_13
action_35 (43) = happyShift action_14
action_35 (44) = happyShift action_15
action_35 (45) = happyShift action_16
action_35 (46) = happyShift action_17
action_35 (12) = happyGoto action_46
action_35 (13) = happyGoto action_5
action_35 (14) = happyGoto action_6
action_35 (15) = happyGoto action_7
action_35 _ = happyFail

action_36 (20) = happyShift action_9
action_36 (29) = happyShift action_10
action_36 (36) = happyShift action_11
action_36 (38) = happyShift action_12
action_36 (42) = happyShift action_13
action_36 (43) = happyShift action_14
action_36 (44) = happyShift action_15
action_36 (45) = happyShift action_16
action_36 (46) = happyShift action_17
action_36 (12) = happyGoto action_45
action_36 (13) = happyGoto action_5
action_36 (14) = happyGoto action_6
action_36 (15) = happyGoto action_7
action_36 _ = happyFail

action_37 (20) = happyShift action_9
action_37 (29) = happyShift action_10
action_37 (36) = happyShift action_11
action_37 (38) = happyShift action_12
action_37 (42) = happyShift action_13
action_37 (43) = happyShift action_14
action_37 (44) = happyShift action_15
action_37 (45) = happyShift action_16
action_37 (46) = happyShift action_17
action_37 (12) = happyGoto action_44
action_37 (13) = happyGoto action_5
action_37 (14) = happyGoto action_6
action_37 (15) = happyGoto action_7
action_37 _ = happyFail

action_38 (20) = happyShift action_9
action_38 (29) = happyShift action_10
action_38 (36) = happyShift action_11
action_38 (38) = happyShift action_12
action_38 (42) = happyShift action_13
action_38 (43) = happyShift action_14
action_38 (44) = happyShift action_15
action_38 (45) = happyShift action_16
action_38 (46) = happyShift action_17
action_38 (12) = happyGoto action_43
action_38 (13) = happyGoto action_5
action_38 (14) = happyGoto action_6
action_38 (15) = happyGoto action_7
action_38 _ = happyFail

action_39 (20) = happyShift action_9
action_39 (29) = happyShift action_10
action_39 (36) = happyShift action_11
action_39 (38) = happyShift action_12
action_39 (42) = happyShift action_13
action_39 (43) = happyShift action_14
action_39 (44) = happyShift action_15
action_39 (45) = happyShift action_16
action_39 (46) = happyShift action_17
action_39 (12) = happyGoto action_42
action_39 (13) = happyGoto action_5
action_39 (14) = happyGoto action_6
action_39 (15) = happyGoto action_7
action_39 _ = happyFail

action_40 (20) = happyShift action_9
action_40 (29) = happyShift action_10
action_40 (36) = happyShift action_11
action_40 (38) = happyShift action_12
action_40 (42) = happyShift action_13
action_40 (43) = happyShift action_14
action_40 (44) = happyShift action_15
action_40 (45) = happyShift action_16
action_40 (46) = happyShift action_17
action_40 (12) = happyGoto action_41
action_40 (13) = happyGoto action_5
action_40 (14) = happyGoto action_6
action_40 (15) = happyGoto action_7
action_40 _ = happyFail

action_41 (26) = happyShift action_34
action_41 (27) = happyShift action_35
action_41 (28) = happyShift action_36
action_41 (29) = happyShift action_37
action_41 (34) = happyShift action_39
action_41 _ = happyReduce_23

action_42 (26) = happyShift action_34
action_42 (27) = happyShift action_35
action_42 (28) = happyShift action_36
action_42 (29) = happyShift action_37
action_42 _ = happyReduce_22

action_43 (26) = happyShift action_34
action_43 (27) = happyShift action_35
action_43 (28) = happyShift action_36
action_43 (29) = happyShift action_37
action_43 (30) = happyShift action_38
action_43 (34) = happyShift action_39
action_43 (35) = happyShift action_40
action_43 _ = happyReduce_24

action_44 _ = happyReduce_21

action_45 _ = happyReduce_20

action_46 (26) = happyFail
action_46 (27) = happyFail
action_46 (28) = happyShift action_36
action_46 (29) = happyShift action_37
action_46 _ = happyReduce_19

action_47 (26) = happyFail
action_47 (27) = happyFail
action_47 (28) = happyShift action_36
action_47 (29) = happyShift action_37
action_47 _ = happyReduce_18

action_48 (17) = happyShift action_8
action_48 (20) = happyShift action_9
action_48 (29) = happyShift action_10
action_48 (36) = happyShift action_11
action_48 (38) = happyShift action_12
action_48 (42) = happyShift action_13
action_48 (43) = happyShift action_14
action_48 (44) = happyShift action_15
action_48 (45) = happyShift action_16
action_48 (46) = happyShift action_17
action_48 (11) = happyGoto action_67
action_48 (12) = happyGoto action_4
action_48 (13) = happyGoto action_5
action_48 (14) = happyGoto action_6
action_48 (15) = happyGoto action_7
action_48 _ = happyFail

action_49 _ = happyReduce_36

action_50 _ = happyReduce_38

action_51 (17) = happyShift action_8
action_51 (20) = happyShift action_9
action_51 (29) = happyShift action_10
action_51 (36) = happyShift action_11
action_51 (38) = happyShift action_12
action_51 (42) = happyShift action_13
action_51 (43) = happyShift action_14
action_51 (44) = happyShift action_15
action_51 (45) = happyShift action_16
action_51 (46) = happyShift action_17
action_51 (11) = happyGoto action_26
action_51 (12) = happyGoto action_4
action_51 (13) = happyGoto action_5
action_51 (14) = happyGoto action_6
action_51 (15) = happyGoto action_7
action_51 (16) = happyGoto action_66
action_51 _ = happyFail

action_52 (31) = happyShift action_65
action_52 _ = happyFail

action_53 (46) = happyShift action_53
action_53 (10) = happyGoto action_64
action_53 _ = happyReduce_14

action_54 (33) = happyShift action_62
action_54 (40) = happyShift action_63
action_54 _ = happyFail

action_55 _ = happyReduce_6

action_56 _ = happyReduce_7

action_57 _ = happyReduce_8

action_58 _ = happyReduce_9

action_59 _ = happyReduce_10

action_60 (21) = happyShift action_55
action_60 (22) = happyShift action_56
action_60 (23) = happyShift action_57
action_60 (24) = happyShift action_58
action_60 (25) = happyShift action_59
action_60 (36) = happyShift action_60
action_60 (8) = happyGoto action_61
action_60 _ = happyFail

action_61 (33) = happyShift action_62
action_61 (37) = happyShift action_71
action_61 _ = happyFail

action_62 (21) = happyShift action_55
action_62 (22) = happyShift action_56
action_62 (23) = happyShift action_57
action_62 (24) = happyShift action_58
action_62 (25) = happyShift action_59
action_62 (36) = happyShift action_60
action_62 (8) = happyGoto action_70
action_62 _ = happyFail

action_63 _ = happyReduce_5

action_64 _ = happyReduce_15

action_65 (17) = happyShift action_8
action_65 (20) = happyShift action_9
action_65 (29) = happyShift action_10
action_65 (36) = happyShift action_11
action_65 (38) = happyShift action_12
action_65 (42) = happyShift action_13
action_65 (43) = happyShift action_14
action_65 (44) = happyShift action_15
action_65 (45) = happyShift action_16
action_65 (46) = happyShift action_17
action_65 (11) = happyGoto action_69
action_65 (12) = happyGoto action_4
action_65 (13) = happyGoto action_5
action_65 (14) = happyGoto action_6
action_65 (15) = happyGoto action_7
action_65 _ = happyFail

action_66 _ = happyReduce_40

action_67 (19) = happyShift action_68
action_67 _ = happyFail

action_68 (17) = happyShift action_8
action_68 (20) = happyShift action_9
action_68 (29) = happyShift action_10
action_68 (36) = happyShift action_11
action_68 (38) = happyShift action_12
action_68 (42) = happyShift action_13
action_68 (43) = happyShift action_14
action_68 (44) = happyShift action_15
action_68 (45) = happyShift action_16
action_68 (46) = happyShift action_17
action_68 (11) = happyGoto action_73
action_68 (12) = happyGoto action_4
action_68 (13) = happyGoto action_5
action_68 (14) = happyGoto action_6
action_68 (15) = happyGoto action_7
action_68 _ = happyFail

action_69 (40) = happyShift action_72
action_69 _ = happyFail

action_70 (33) = happyShift action_62
action_70 _ = happyReduce_11

action_71 _ = happyReduce_12

action_72 _ = happyReduce_13

action_73 _ = happyReduce_16

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

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn8
		 (TypeConst "Char"
	)

happyReduce_9 = happySpecReduce_1  8 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn8
		 (TypeConst "String"
	)

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn8
		 (TypeConst "List"
	)

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (TypeOp ("->", happy_var_1, happy_var_3)
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 5 9 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	(HappyTerminal (VAR happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ((happy_var_1, lamabstract happy_var_2 happy_var_4)
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_0  10 happyReduction_14
happyReduction_14  =  HappyAbsSyn10
		 ([]
	)

happyReduce_15 = happySpecReduce_2  10 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn10
		 (happy_var_1:happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 11 happyReduction_16
happyReduction_16 ((HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Cond (happy_var_2, happy_var_4, happy_var_6)
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  11 happyReduction_17
happyReduction_17 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  12 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("==", happy_var_1, happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  12 happyReduction_19
happyReduction_19 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("<", happy_var_1, happy_var_3)
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  12 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("+", happy_var_1, happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  12 happyReduction_21
happyReduction_21 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("-", happy_var_1, happy_var_3)
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  12 happyReduction_22
happyReduction_22 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("&&", happy_var_1, happy_var_3)
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op ("||", happy_var_1, happy_var_3)
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  12 happyReduction_24
happyReduction_24 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Op (":", happy_var_1, happy_var_3)
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  12 happyReduction_25
happyReduction_25 (HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (UOp ("not", happy_var_2)
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  12 happyReduction_26
happyReduction_26 (HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (UOp ("-", happy_var_2)
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  12 happyReduction_27
happyReduction_27 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  13 happyReduction_28
happyReduction_28 (HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Op ("appl", happy_var_1, happy_var_2)
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  13 happyReduction_29
happyReduction_29 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  14 happyReduction_30
happyReduction_30 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn14
		 (Num happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  14 happyReduction_31
happyReduction_31 (HappyTerminal (BOOLEAN happy_var_1))
	 =  HappyAbsSyn14
		 (Boolean happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  14 happyReduction_32
happyReduction_32 (HappyTerminal (CHAR happy_var_1))
	 =  HappyAbsSyn14
		 (Char happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  14 happyReduction_33
happyReduction_33 (HappyTerminal (STRING happy_var_1))
	 =  HappyAbsSyn14
		 (String happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  14 happyReduction_34
happyReduction_34 (HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn14
		 (Var happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  14 happyReduction_35
happyReduction_35 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  14 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  15 happyReduction_37
happyReduction_37 _
	_
	 =  HappyAbsSyn15
		 (List []
	)

happyReduce_38 = happySpecReduce_3  15 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (List happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  16 happyReduction_39
happyReduction_39 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn16
		 ([happy_var_1]
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1 : happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 47 47 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	KEY "if" -> cont 17;
	KEY "then" -> cont 18;
	KEY "else" -> cont 19;
	KEY "not" -> cont 20;
	KEY "Integer" -> cont 21;
	KEY "Bool" -> cont 22;
	KEY "Char" -> cont 23;
	KEY "String" -> cont 24;
	KEY "List" -> cont 25;
	OP "==" -> cont 26;
	OP "<" -> cont 27;
	OP "+" -> cont 28;
	OP "-" -> cont 29;
	OP ":" -> cont 30;
	OP "=" -> cont 31;
	OP "::" -> cont 32;
	OP "->" -> cont 33;
	OP "&&" -> cont 34;
	OP "||" -> cont 35;
	PUNC "(" -> cont 36;
	PUNC ")" -> cont 37;
	PUNC "[" -> cont 38;
	PUNC "]" -> cont 39;
	PUNC ";" -> cont 40;
	PUNC "," -> cont 41;
	NUM happy_dollar_dollar -> cont 42;
	BOOLEAN happy_dollar_dollar -> cont 43;
	CHAR happy_dollar_dollar -> cont 44;
	STRING happy_dollar_dollar -> cont 45;
	VAR happy_dollar_dollar -> cont 46;
	_ -> happyError' (tk:tks)
	}

happyError_ 47 tk tks = happyError' tks
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
