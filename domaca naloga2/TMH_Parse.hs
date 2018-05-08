{-# OPTIONS_GHC -w #-}
module TMH_Parse where
import TMH_Lex
import TMH_ExpType
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,235) ([0,0,16,41042,2012,0,0,0,240,2,0,0,0,56448,7,0,0,1312,32202,0,0,16,41042,2012,0,0,8193,51717,125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,256,0,1,0,0,16,0,0,49152,2115,0,1024,0,15872,128,0,16,0,961,8,0,0,18432,29313,31,41042,2012,5248,63272,8193,51717,125,33096,8050,0,8204,0,0,0,0,0,0,32816,0,3072,32,5248,63272,8193,51717,125,0,336,20992,56480,7,0,0,0,0,18432,29313,31,3840,34,49152,2051,0,0,64,0,1,0,64,0,968,8,61568,512,18432,29313,31,41042,2012,5248,63272,8193,51717,125,0,1,0,0,32768,10260,503,61440,544,0,34876,0,3840,32,49152,2051,0,0,8,0,4096,0,8719,0,0,2,0,512,0,0,16,0,1024,0,0,1,1024,0,33096,8050,0,64,0,0,256,0,4,18432,29313,31,3840,32,49152,2051,8192,51717,125,15360,128,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_tmh_parseProg","%start_tmh_parseExp","Prog","TermDecl","Args","Exp","CaseExp","Exp1","Exp2","if","then","else","let","in","case","of","'~'","'<'","'+'","'-'","'='","lam","arrow","'('","')'","';'","just","nothing","nil","':'","leaf","node","num","boolean","var","%eof"]
        bit_start = st * 38
        bit_end = (st + 1) * 38
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..37]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (37) = happyShift action_22
action_0 (5) = happyGoto action_20
action_0 (6) = happyGoto action_21
action_0 _ = happyReduce_2

action_1 (12) = happyShift action_7
action_1 (15) = happyShift action_8
action_1 (17) = happyShift action_9
action_1 (24) = happyShift action_10
action_1 (26) = happyShift action_11
action_1 (29) = happyShift action_12
action_1 (30) = happyShift action_13
action_1 (31) = happyShift action_14
action_1 (33) = happyShift action_15
action_1 (34) = happyShift action_16
action_1 (35) = happyShift action_17
action_1 (36) = happyShift action_18
action_1 (37) = happyShift action_19
action_1 (8) = happyGoto action_3
action_1 (9) = happyGoto action_4
action_1 (10) = happyGoto action_5
action_1 (11) = happyGoto action_6
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 (19) = happyShift action_32
action_3 (20) = happyShift action_33
action_3 (21) = happyShift action_34
action_3 (22) = happyShift action_35
action_3 (32) = happyShift action_36
action_3 (38) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_15

action_5 (26) = happyShift action_11
action_5 (29) = happyShift action_12
action_5 (30) = happyShift action_13
action_5 (31) = happyShift action_14
action_5 (33) = happyShift action_15
action_5 (34) = happyShift action_16
action_5 (35) = happyShift action_17
action_5 (36) = happyShift action_18
action_5 (37) = happyShift action_19
action_5 (11) = happyGoto action_31
action_5 _ = happyReduce_16

action_6 _ = happyReduce_21

action_7 (12) = happyShift action_7
action_7 (15) = happyShift action_8
action_7 (17) = happyShift action_9
action_7 (24) = happyShift action_10
action_7 (26) = happyShift action_11
action_7 (29) = happyShift action_12
action_7 (30) = happyShift action_13
action_7 (31) = happyShift action_14
action_7 (33) = happyShift action_15
action_7 (34) = happyShift action_16
action_7 (35) = happyShift action_17
action_7 (36) = happyShift action_18
action_7 (37) = happyShift action_19
action_7 (8) = happyGoto action_30
action_7 (9) = happyGoto action_4
action_7 (10) = happyGoto action_5
action_7 (11) = happyGoto action_6
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (37) = happyShift action_29
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (12) = happyShift action_7
action_9 (15) = happyShift action_8
action_9 (17) = happyShift action_9
action_9 (24) = happyShift action_10
action_9 (26) = happyShift action_11
action_9 (29) = happyShift action_12
action_9 (30) = happyShift action_13
action_9 (31) = happyShift action_14
action_9 (33) = happyShift action_15
action_9 (34) = happyShift action_16
action_9 (35) = happyShift action_17
action_9 (36) = happyShift action_18
action_9 (37) = happyShift action_19
action_9 (8) = happyGoto action_28
action_9 (9) = happyGoto action_4
action_9 (10) = happyGoto action_5
action_9 (11) = happyGoto action_6
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (37) = happyShift action_27
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_7
action_11 (15) = happyShift action_8
action_11 (17) = happyShift action_9
action_11 (24) = happyShift action_10
action_11 (26) = happyShift action_11
action_11 (29) = happyShift action_12
action_11 (30) = happyShift action_13
action_11 (31) = happyShift action_14
action_11 (33) = happyShift action_15
action_11 (34) = happyShift action_16
action_11 (35) = happyShift action_17
action_11 (36) = happyShift action_18
action_11 (37) = happyShift action_19
action_11 (8) = happyGoto action_26
action_11 (9) = happyGoto action_4
action_11 (10) = happyGoto action_5
action_11 (11) = happyGoto action_6
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_25

action_13 _ = happyReduce_26

action_14 _ = happyReduce_27

action_15 _ = happyReduce_28

action_16 _ = happyReduce_29

action_17 _ = happyReduce_22

action_18 _ = happyReduce_23

action_19 _ = happyReduce_24

action_20 (38) = happyAccept
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (37) = happyShift action_22
action_21 (5) = happyGoto action_25
action_21 (6) = happyGoto action_21
action_21 _ = happyReduce_2

action_22 (37) = happyShift action_24
action_22 (7) = happyGoto action_23
action_22 _ = happyReduce_5

action_23 (23) = happyShift action_48
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (37) = happyShift action_24
action_24 (7) = happyGoto action_47
action_24 _ = happyReduce_5

action_25 _ = happyReduce_3

action_26 (19) = happyShift action_32
action_26 (20) = happyShift action_33
action_26 (21) = happyShift action_34
action_26 (22) = happyShift action_35
action_26 (27) = happyShift action_46
action_26 (32) = happyShift action_36
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (25) = happyShift action_45
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (18) = happyShift action_44
action_28 (19) = happyShift action_32
action_28 (20) = happyShift action_33
action_28 (21) = happyShift action_34
action_28 (22) = happyShift action_35
action_28 (32) = happyShift action_36
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (23) = happyShift action_43
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (13) = happyShift action_42
action_30 (19) = happyShift action_32
action_30 (20) = happyShift action_33
action_30 (21) = happyShift action_34
action_30 (22) = happyShift action_35
action_30 (32) = happyShift action_36
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_20

action_32 (12) = happyShift action_7
action_32 (15) = happyShift action_8
action_32 (17) = happyShift action_9
action_32 (24) = happyShift action_10
action_32 (26) = happyShift action_11
action_32 (29) = happyShift action_12
action_32 (30) = happyShift action_13
action_32 (31) = happyShift action_14
action_32 (33) = happyShift action_15
action_32 (34) = happyShift action_16
action_32 (35) = happyShift action_17
action_32 (36) = happyShift action_18
action_32 (37) = happyShift action_19
action_32 (8) = happyGoto action_41
action_32 (9) = happyGoto action_4
action_32 (10) = happyGoto action_5
action_32 (11) = happyGoto action_6
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (12) = happyShift action_7
action_33 (15) = happyShift action_8
action_33 (17) = happyShift action_9
action_33 (24) = happyShift action_10
action_33 (26) = happyShift action_11
action_33 (29) = happyShift action_12
action_33 (30) = happyShift action_13
action_33 (31) = happyShift action_14
action_33 (33) = happyShift action_15
action_33 (34) = happyShift action_16
action_33 (35) = happyShift action_17
action_33 (36) = happyShift action_18
action_33 (37) = happyShift action_19
action_33 (8) = happyGoto action_40
action_33 (9) = happyGoto action_4
action_33 (10) = happyGoto action_5
action_33 (11) = happyGoto action_6
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_7
action_34 (15) = happyShift action_8
action_34 (17) = happyShift action_9
action_34 (24) = happyShift action_10
action_34 (26) = happyShift action_11
action_34 (29) = happyShift action_12
action_34 (30) = happyShift action_13
action_34 (31) = happyShift action_14
action_34 (33) = happyShift action_15
action_34 (34) = happyShift action_16
action_34 (35) = happyShift action_17
action_34 (36) = happyShift action_18
action_34 (37) = happyShift action_19
action_34 (8) = happyGoto action_39
action_34 (9) = happyGoto action_4
action_34 (10) = happyGoto action_5
action_34 (11) = happyGoto action_6
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (12) = happyShift action_7
action_35 (15) = happyShift action_8
action_35 (17) = happyShift action_9
action_35 (24) = happyShift action_10
action_35 (26) = happyShift action_11
action_35 (29) = happyShift action_12
action_35 (30) = happyShift action_13
action_35 (31) = happyShift action_14
action_35 (33) = happyShift action_15
action_35 (34) = happyShift action_16
action_35 (35) = happyShift action_17
action_35 (36) = happyShift action_18
action_35 (37) = happyShift action_19
action_35 (8) = happyGoto action_38
action_35 (9) = happyGoto action_4
action_35 (10) = happyGoto action_5
action_35 (11) = happyGoto action_6
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (12) = happyShift action_7
action_36 (15) = happyShift action_8
action_36 (17) = happyShift action_9
action_36 (24) = happyShift action_10
action_36 (26) = happyShift action_11
action_36 (29) = happyShift action_12
action_36 (30) = happyShift action_13
action_36 (31) = happyShift action_14
action_36 (33) = happyShift action_15
action_36 (34) = happyShift action_16
action_36 (35) = happyShift action_17
action_36 (36) = happyShift action_18
action_36 (37) = happyShift action_19
action_36 (8) = happyGoto action_37
action_36 (9) = happyGoto action_4
action_36 (10) = happyGoto action_5
action_36 (11) = happyGoto action_6
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (21) = happyShift action_34
action_37 (22) = happyShift action_35
action_37 (32) = happyShift action_36
action_37 _ = happyReduce_14

action_38 _ = happyReduce_13

action_39 _ = happyReduce_12

action_40 (19) = happyFail []
action_40 (20) = happyFail []
action_40 (21) = happyShift action_34
action_40 (22) = happyShift action_35
action_40 (32) = happyShift action_36
action_40 _ = happyReduce_11

action_41 (19) = happyFail []
action_41 (20) = happyFail []
action_41 (21) = happyShift action_34
action_41 (22) = happyShift action_35
action_41 (32) = happyShift action_36
action_41 _ = happyReduce_10

action_42 (12) = happyShift action_7
action_42 (15) = happyShift action_8
action_42 (17) = happyShift action_9
action_42 (24) = happyShift action_10
action_42 (26) = happyShift action_11
action_42 (29) = happyShift action_12
action_42 (30) = happyShift action_13
action_42 (31) = happyShift action_14
action_42 (33) = happyShift action_15
action_42 (34) = happyShift action_16
action_42 (35) = happyShift action_17
action_42 (36) = happyShift action_18
action_42 (37) = happyShift action_19
action_42 (8) = happyGoto action_55
action_42 (9) = happyGoto action_4
action_42 (10) = happyGoto action_5
action_42 (11) = happyGoto action_6
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (12) = happyShift action_7
action_43 (15) = happyShift action_8
action_43 (17) = happyShift action_9
action_43 (24) = happyShift action_10
action_43 (26) = happyShift action_11
action_43 (29) = happyShift action_12
action_43 (30) = happyShift action_13
action_43 (31) = happyShift action_14
action_43 (33) = happyShift action_15
action_43 (34) = happyShift action_16
action_43 (35) = happyShift action_17
action_43 (36) = happyShift action_18
action_43 (37) = happyShift action_19
action_43 (8) = happyGoto action_54
action_43 (9) = happyGoto action_4
action_43 (10) = happyGoto action_5
action_43 (11) = happyGoto action_6
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (29) = happyShift action_51
action_44 (31) = happyShift action_52
action_44 (33) = happyShift action_53
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (12) = happyShift action_7
action_45 (15) = happyShift action_8
action_45 (17) = happyShift action_9
action_45 (24) = happyShift action_10
action_45 (26) = happyShift action_11
action_45 (29) = happyShift action_12
action_45 (30) = happyShift action_13
action_45 (31) = happyShift action_14
action_45 (33) = happyShift action_15
action_45 (34) = happyShift action_16
action_45 (35) = happyShift action_17
action_45 (36) = happyShift action_18
action_45 (37) = happyShift action_19
action_45 (8) = happyGoto action_50
action_45 (9) = happyGoto action_4
action_45 (10) = happyGoto action_5
action_45 (11) = happyGoto action_6
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_30

action_47 _ = happyReduce_6

action_48 (12) = happyShift action_7
action_48 (15) = happyShift action_8
action_48 (17) = happyShift action_9
action_48 (24) = happyShift action_10
action_48 (26) = happyShift action_11
action_48 (29) = happyShift action_12
action_48 (30) = happyShift action_13
action_48 (31) = happyShift action_14
action_48 (33) = happyShift action_15
action_48 (34) = happyShift action_16
action_48 (35) = happyShift action_17
action_48 (36) = happyShift action_18
action_48 (37) = happyShift action_19
action_48 (8) = happyGoto action_49
action_48 (9) = happyGoto action_4
action_48 (10) = happyGoto action_5
action_48 (11) = happyGoto action_6
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (19) = happyShift action_32
action_49 (20) = happyShift action_33
action_49 (21) = happyShift action_34
action_49 (22) = happyShift action_35
action_49 (28) = happyShift action_61
action_49 (32) = happyShift action_36
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (19) = happyShift action_32
action_50 (20) = happyShift action_33
action_50 (21) = happyShift action_34
action_50 (22) = happyShift action_35
action_50 (32) = happyShift action_36
action_50 _ = happyReduce_9

action_51 (37) = happyShift action_60
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (25) = happyShift action_59
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (25) = happyShift action_58
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (16) = happyShift action_57
action_54 (19) = happyShift action_32
action_54 (20) = happyShift action_33
action_54 (21) = happyShift action_34
action_54 (22) = happyShift action_35
action_54 (32) = happyShift action_36
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (14) = happyShift action_56
action_55 (19) = happyShift action_32
action_55 (20) = happyShift action_33
action_55 (21) = happyShift action_34
action_55 (22) = happyShift action_35
action_55 (32) = happyShift action_36
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (12) = happyShift action_7
action_56 (15) = happyShift action_8
action_56 (17) = happyShift action_9
action_56 (24) = happyShift action_10
action_56 (26) = happyShift action_11
action_56 (29) = happyShift action_12
action_56 (30) = happyShift action_13
action_56 (31) = happyShift action_14
action_56 (33) = happyShift action_15
action_56 (34) = happyShift action_16
action_56 (35) = happyShift action_17
action_56 (36) = happyShift action_18
action_56 (37) = happyShift action_19
action_56 (8) = happyGoto action_66
action_56 (9) = happyGoto action_4
action_56 (10) = happyGoto action_5
action_56 (11) = happyGoto action_6
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (12) = happyShift action_7
action_57 (15) = happyShift action_8
action_57 (17) = happyShift action_9
action_57 (24) = happyShift action_10
action_57 (26) = happyShift action_11
action_57 (29) = happyShift action_12
action_57 (30) = happyShift action_13
action_57 (31) = happyShift action_14
action_57 (33) = happyShift action_15
action_57 (34) = happyShift action_16
action_57 (35) = happyShift action_17
action_57 (36) = happyShift action_18
action_57 (37) = happyShift action_19
action_57 (8) = happyGoto action_65
action_57 (9) = happyGoto action_4
action_57 (10) = happyGoto action_5
action_57 (11) = happyGoto action_6
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_7
action_58 (15) = happyShift action_8
action_58 (17) = happyShift action_9
action_58 (24) = happyShift action_10
action_58 (26) = happyShift action_11
action_58 (29) = happyShift action_12
action_58 (30) = happyShift action_13
action_58 (31) = happyShift action_14
action_58 (33) = happyShift action_15
action_58 (34) = happyShift action_16
action_58 (35) = happyShift action_17
action_58 (36) = happyShift action_18
action_58 (37) = happyShift action_19
action_58 (8) = happyGoto action_64
action_58 (9) = happyGoto action_4
action_58 (10) = happyGoto action_5
action_58 (11) = happyGoto action_6
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (12) = happyShift action_7
action_59 (15) = happyShift action_8
action_59 (17) = happyShift action_9
action_59 (24) = happyShift action_10
action_59 (26) = happyShift action_11
action_59 (29) = happyShift action_12
action_59 (30) = happyShift action_13
action_59 (31) = happyShift action_14
action_59 (33) = happyShift action_15
action_59 (34) = happyShift action_16
action_59 (35) = happyShift action_17
action_59 (36) = happyShift action_18
action_59 (37) = happyShift action_19
action_59 (8) = happyGoto action_63
action_59 (9) = happyGoto action_4
action_59 (10) = happyGoto action_5
action_59 (11) = happyGoto action_6
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (25) = happyShift action_62
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_4

action_62 (12) = happyShift action_7
action_62 (15) = happyShift action_8
action_62 (17) = happyShift action_9
action_62 (24) = happyShift action_10
action_62 (26) = happyShift action_11
action_62 (29) = happyShift action_12
action_62 (30) = happyShift action_13
action_62 (31) = happyShift action_14
action_62 (33) = happyShift action_15
action_62 (34) = happyShift action_16
action_62 (35) = happyShift action_17
action_62 (36) = happyShift action_18
action_62 (37) = happyShift action_19
action_62 (8) = happyGoto action_69
action_62 (9) = happyGoto action_4
action_62 (10) = happyGoto action_5
action_62 (11) = happyGoto action_6
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (19) = happyShift action_32
action_63 (20) = happyShift action_33
action_63 (21) = happyShift action_34
action_63 (22) = happyShift action_35
action_63 (28) = happyShift action_68
action_63 (32) = happyShift action_36
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (19) = happyShift action_32
action_64 (20) = happyShift action_33
action_64 (21) = happyShift action_34
action_64 (22) = happyShift action_35
action_64 (28) = happyShift action_67
action_64 (32) = happyShift action_36
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (19) = happyShift action_32
action_65 (20) = happyShift action_33
action_65 (21) = happyShift action_34
action_65 (22) = happyShift action_35
action_65 (32) = happyShift action_36
action_65 _ = happyReduce_8

action_66 (19) = happyShift action_32
action_66 (20) = happyShift action_33
action_66 (21) = happyShift action_34
action_66 (22) = happyShift action_35
action_66 (32) = happyShift action_36
action_66 _ = happyReduce_7

action_67 (34) = happyShift action_72
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (37) = happyShift action_71
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (19) = happyShift action_32
action_69 (20) = happyShift action_33
action_69 (21) = happyShift action_34
action_69 (22) = happyShift action_35
action_69 (28) = happyShift action_70
action_69 (32) = happyShift action_36
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (30) = happyShift action_75
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (32) = happyShift action_74
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (37) = happyShift action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (37) = happyShift action_78
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (37) = happyShift action_77
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (25) = happyShift action_76
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (12) = happyShift action_7
action_76 (15) = happyShift action_8
action_76 (17) = happyShift action_9
action_76 (24) = happyShift action_10
action_76 (26) = happyShift action_11
action_76 (29) = happyShift action_12
action_76 (30) = happyShift action_13
action_76 (31) = happyShift action_14
action_76 (33) = happyShift action_15
action_76 (34) = happyShift action_16
action_76 (35) = happyShift action_17
action_76 (36) = happyShift action_18
action_76 (37) = happyShift action_19
action_76 (8) = happyGoto action_81
action_76 (9) = happyGoto action_4
action_76 (10) = happyGoto action_5
action_76 (11) = happyGoto action_6
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (25) = happyShift action_80
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (37) = happyShift action_79
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (25) = happyShift action_83
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (12) = happyShift action_7
action_80 (15) = happyShift action_8
action_80 (17) = happyShift action_9
action_80 (24) = happyShift action_10
action_80 (26) = happyShift action_11
action_80 (29) = happyShift action_12
action_80 (30) = happyShift action_13
action_80 (31) = happyShift action_14
action_80 (33) = happyShift action_15
action_80 (34) = happyShift action_16
action_80 (35) = happyShift action_17
action_80 (36) = happyShift action_18
action_80 (37) = happyShift action_19
action_80 (8) = happyGoto action_82
action_80 (9) = happyGoto action_4
action_80 (10) = happyGoto action_5
action_80 (11) = happyGoto action_6
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (19) = happyShift action_32
action_81 (20) = happyShift action_33
action_81 (21) = happyShift action_34
action_81 (22) = happyShift action_35
action_81 (32) = happyShift action_36
action_81 _ = happyReduce_17

action_82 (19) = happyShift action_32
action_82 (20) = happyShift action_33
action_82 (21) = happyShift action_34
action_82 (22) = happyShift action_35
action_82 (32) = happyShift action_36
action_82 _ = happyReduce_18

action_83 (12) = happyShift action_7
action_83 (15) = happyShift action_8
action_83 (17) = happyShift action_9
action_83 (24) = happyShift action_10
action_83 (26) = happyShift action_11
action_83 (29) = happyShift action_12
action_83 (30) = happyShift action_13
action_83 (31) = happyShift action_14
action_83 (33) = happyShift action_15
action_83 (34) = happyShift action_16
action_83 (35) = happyShift action_17
action_83 (36) = happyShift action_18
action_83 (37) = happyShift action_19
action_83 (8) = happyGoto action_84
action_83 (9) = happyGoto action_4
action_83 (10) = happyGoto action_5
action_83 (11) = happyGoto action_6
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (19) = happyShift action_32
action_84 (20) = happyShift action_33
action_84 (21) = happyShift action_34
action_84 (22) = happyShift action_35
action_84 (32) = happyShift action_36
action_84 _ = happyReduce_19

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

happyReduce_4 = happyReduce 5 6 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	(HappyTerminal (VAR happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 ((happy_var_1, lamabstract happy_var_2 happy_var_4)
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_0  7 happyReduction_5
happyReduction_5  =  HappyAbsSyn7
		 ([]
	)

happyReduce_6 = happySpecReduce_2  7 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_2)
	(HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn7
		 (happy_var_1:happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 6 8 happyReduction_7
happyReduction_7 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Cond (happy_var_2, happy_var_4, happy_var_6)
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 6 8 happyReduction_8
happyReduction_8 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Let (happy_var_2, happy_var_4, happy_var_6)
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 4 8 happyReduction_9
happyReduction_9 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Lam (happy_var_2, happy_var_4)
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  8 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Op ("==", happy_var_1, happy_var_3)
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Op ("<", happy_var_1, happy_var_3)
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Op ("+", happy_var_1, happy_var_3)
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Op ("-", happy_var_1, happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Cons (happy_var_1, happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  8 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  8 happyReduction_16
happyReduction_16 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happyReduce 11 9 happyReduction_17
happyReduction_17 ((HappyAbsSyn8  happy_var_11) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_5)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (MybCase (happy_var_2, happy_var_5, happy_var_7, happy_var_11)
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 12 9 happyReduction_18
happyReduction_18 ((HappyAbsSyn8  happy_var_12) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_10)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_8)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (ListCase (happy_var_2, happy_var_6, happy_var_8, happy_var_10, happy_var_12)
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 13 9 happyReduction_19
happyReduction_19 ((HappyAbsSyn8  happy_var_13) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_11)) `HappyStk`
	(HappyTerminal (VAR happy_var_10)) `HappyStk`
	(HappyTerminal (VAR happy_var_9)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (TreeCase (happy_var_2, happy_var_6, happy_var_9, happy_var_10, happy_var_11, happy_var_13)
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_2  10 happyReduction_20
happyReduction_20 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Op ("appl", happy_var_1, happy_var_2)
	)
happyReduction_20 _ _  = notHappyAtAll 

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
happyReduction_24 (HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn11
		 (Var happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  11 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn11
		 (Jst
	)

happyReduce_26 = happySpecReduce_1  11 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn11
		 (Nthg
	)

happyReduce_27 = happySpecReduce_1  11 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn11
		 (Nil
	)

happyReduce_28 = happySpecReduce_1  11 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn11
		 (Leaf
	)

happyReduce_29 = happySpecReduce_1  11 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn11
		 (Node
	)

happyReduce_30 = happySpecReduce_3  11 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 38 38 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	KEY "if" -> cont 12;
	KEY "then" -> cont 13;
	KEY "else" -> cont 14;
	KEY "let" -> cont 15;
	KEY "in" -> cont 16;
	KEY "case" -> cont 17;
	KEY "of" -> cont 18;
	OP "==" -> cont 19;
	OP "<" -> cont 20;
	OP "+" -> cont 21;
	OP "-" -> cont 22;
	OP "=" -> cont 23;
	OP "lam" -> cont 24;
	OP "->" -> cont 25;
	PUNC "(" -> cont 26;
	PUNC ")" -> cont 27;
	PUNC ";" -> cont 28;
	CONSTR "Just" -> cont 29;
	CONSTR "Nothing" -> cont 30;
	CONSTR "[]" -> cont 31;
	CONSTR ":" -> cont 32;
	CONSTR "Leaf" -> cont 33;
	CONSTR "Node" -> cont 34;
	NUM happy_dollar_dollar -> cont 35;
	BOOLEAN happy_dollar_dollar -> cont 36;
	VAR happy_dollar_dollar -> cont 37;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 38 tk tks = happyError' (tks, explist)
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
tmh_parseProg tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn5 z -> happyReturn z; _other -> notHappyAtAll })

tmh_parseExp tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn8 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "TMH parse error"

lamabstract [] exp = exp
lamabstract (v:vs) exp = Lam(v, lamabstract vs exp)
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
