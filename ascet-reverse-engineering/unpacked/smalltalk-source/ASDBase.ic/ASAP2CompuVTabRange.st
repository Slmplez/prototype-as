"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20076a24; bytecode file offset 0x9757c8"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
isTabRange
    ^true
! !

"ASDBase.ic method 0x201399b4; bytecode file offset 0xa3627c"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
defaultEntry
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Association.
    recoveredValue1 := RBInterval.
    recoveredValue2 := (recoveredValue1) left: (0) right: (1).
    recoveredValue3 := (recoveredValue0) key: (recoveredValue2) value: ('').
    ^recoveredValue3
! !

"ASDBase.ic method 0x20163b70; bytecode file offset 0xa605cc"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putLongNameIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putNoValuesIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putValuesIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201e6960; bytecode file offset 0xae324c"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
hexTabListFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280d72ecArg1 | 
    | block280d72ecValue0 block280d72ecValue1 |
    block280d72ecValue0 := block280d72ecArg1.
    block280d72ecValue1 := (block280d72ecValue0) notNil.
    block280d72ecValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280d7310Arg1 | 
    | block280d7310Value0 block280d7310Value1 block280d7310Value2 block280d7310Value3 |
    block280d7310Value0 := block280d7310Arg1.
    block280d7310Value1 := (block280d7310Value0) at: (1).
    block280d7310Value2 := (block280d7310Value1) left.
    block280d7310Value3 := (block280d7310Value2) asHexString.
    block280d7310Value3
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e6980; bytecode file offset 0xae324c"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
dezTabListFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280d7334Arg1 | 
    | block280d7334Value0 block280d7334Value1 |
    block280d7334Value0 := block280d7334Arg1.
    block280d7334Value1 := (block280d7334Value0) notNil.
    block280d7334Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280d7358Arg1 | 
    | block280d7358Value0 block280d7358Value1 block280d7358Value2 block280d7358Value3 |
    block280d7358Value0 := block280d7358Arg1.
    block280d7358Value1 := (block280d7358Value0) at: (1).
    block280d7358Value2 := (block280d7358Value1) left.
    block280d7358Value3 := (block280d7358Value2) asString.
    block280d7358Value3
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ed7cc; bytecode file offset 0xaea098"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getShortBegin: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) getName: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getLongName: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getNoValues: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) getValues: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) parse: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20227300; bytecode file offset 0xb23bd0"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
binTabListFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280dc770Arg1 | 
    | block280dc770Value0 block280dc770Value1 |
    block280dc770Value0 := block280dc770Arg1.
    block280dc770Value1 := (block280dc770Value0) notNil.
    block280dc770Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280dc794Arg1 | 
    | block280dc794Value0 block280dc794Value1 block280dc794Value2 block280dc794Value3 block280dc794Value4 |
    block280dc794Value0 := block280dc794Arg1.
    block280dc794Value1 := (block280dc794Value0) at: (1).
    block280dc794Value2 := (block280dc794Value1) left.
    block280dc794Value3 := (block280dc794Value2) asInteger.
    block280dc794Value4 := (block280dc794Value3) printStringRadix: (2) showRadix: (false).
    block280dc794Value4
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a2488; bytecode file offset 0xb9ed54"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
appliedToNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) values.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) lastOrNil.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) firstOrNil.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isNumber.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 34] ifFalse: [recoveredBlock19PC := 36].
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) left.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            ^recoveredBlock19Stack1
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue0) detect: (recoveredValue1) ifOne: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x203adb2c; bytecode file offset 0xcaa404"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
getValues: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) noValues.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) values: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) noValues.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := (recoveredStack5) getNumber: (recoveredStack6).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack6 := (recoveredStack6) getNumber: (recoveredStack7).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) getString: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 22] ifFalse: [recoveredLocal2 := nil. recoveredPC := 75]] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20496ac8; bytecode file offset 0xd933c0"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
emMutate
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super emMutate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 :recoveredBlock39Arg2 | 
    | recoveredBlock39Local1 recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39Stack5 recoveredBlock39Stack6 recoveredBlock39Stack7 recoveredBlock39Stack8 recoveredBlock39Stack9 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := Array.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack2 := 2.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) new: (recoveredBlock39Stack2).
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Local1 := recoveredBlock39Stack1.
            recoveredBlock39PC := 53.
        ].
        recoveredBlock39Step = 53 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal1.
            recoveredBlock39PC := 56.
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg2.
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Local1.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            (recoveredBlock39Stack1) at: (recoveredBlock39Stack2) put: (recoveredBlock39Stack3).
            recoveredBlock39PC := 60.
        ].
        recoveredBlock39Step = 60 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local1.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Stack1.
            recoveredBlock39PC := 62.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack3 := 1.
            recoveredBlock39PC := 64.
        ].
        recoveredBlock39Step = 64 ifTrue: [
            recoveredBlock39Stack4 := RBInterval.
            recoveredBlock39PC := 66.
        ].
        recoveredBlock39Step = 66 ifTrue: [
            recoveredBlock39Stack5 := recoveredBlock39Arg1.
            recoveredBlock39PC := 67.
        ].
        recoveredBlock39Step = 67 ifTrue: [
            recoveredBlock39Stack6 := 1.
            recoveredBlock39PC := 69.
        ].
        recoveredBlock39Step = 69 ifTrue: [
            recoveredBlock39Stack7 := [
    0
].
            recoveredBlock39PC := 71.
        ].
        recoveredBlock39Step = 71 ifTrue: [
            recoveredBlock39PC := 77.
        ].
        recoveredBlock39Step = 77 ifTrue: [
            recoveredBlock39Stack5 := (recoveredBlock39Stack5) at: (recoveredBlock39Stack6) ifAbsent: (recoveredBlock39Stack7).
            recoveredBlock39PC := 79.
        ].
        recoveredBlock39Step = 79 ifTrue: [
            recoveredBlock39Stack6 := recoveredBlock39Arg1.
            recoveredBlock39PC := 80.
        ].
        recoveredBlock39Step = 80 ifTrue: [
            recoveredBlock39Stack7 := 2.
            recoveredBlock39PC := 82.
        ].
        recoveredBlock39Step = 82 ifTrue: [
            recoveredBlock39Stack8 := [
    1
].
            recoveredBlock39PC := 84.
        ].
        recoveredBlock39Step = 84 ifTrue: [
            recoveredBlock39PC := 91.
        ].
        recoveredBlock39Step = 91 ifTrue: [
            recoveredBlock39Stack6 := (recoveredBlock39Stack6) at: (recoveredBlock39Stack7) ifAbsent: (recoveredBlock39Stack8).
            recoveredBlock39PC := 93.
        ].
        recoveredBlock39Step = 93 ifTrue: [
            recoveredBlock39Stack4 := (recoveredBlock39Stack4) left: (recoveredBlock39Stack5) right: (recoveredBlock39Stack6).
            recoveredBlock39PC := 95.
        ].
        recoveredBlock39Step = 95 ifTrue: [
            (recoveredBlock39Stack2) at: (recoveredBlock39Stack3) put: (recoveredBlock39Stack4).
            recoveredBlock39PC := 97.
        ].
        recoveredBlock39Step = 97 ifTrue: [
            recoveredBlock39Stack2 := 2.
            recoveredBlock39PC := 99.
        ].
        recoveredBlock39Step = 99 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg1.
            recoveredBlock39PC := 100.
        ].
        recoveredBlock39Step = 100 ifTrue: [
            recoveredBlock39Stack4 := 3.
            recoveredBlock39PC := 102.
        ].
        recoveredBlock39Step = 102 ifTrue: [
            recoveredBlock39Stack5 := [
    ''
].
            recoveredBlock39PC := 104.
        ].
        recoveredBlock39Step = 104 ifTrue: [
            recoveredBlock39PC := 111.
        ].
        recoveredBlock39Step = 111 ifTrue: [
            recoveredBlock39Stack3 := (recoveredBlock39Stack3) at: (recoveredBlock39Stack4) ifAbsent: (recoveredBlock39Stack5).
            recoveredBlock39PC := 113.
        ].
        recoveredBlock39Step = 113 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) at: (recoveredBlock39Stack2) put: (recoveredBlock39Stack3).
            recoveredBlock39PC := 115.
        ].
        recoveredBlock39Step = 115 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) values: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c9974; bytecode file offset 0xdc6258"
!ASAP2CompuVTabRange methodsFor: 'recovered'!
putValuesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := (self) values.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11Stack6 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := 1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2).
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isNumber.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 28] ifFalse: [recoveredBlock11PC := 74].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Arg1.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack5 := 1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) at: (recoveredBlock11Stack5).
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            (recoveredBlock11Stack2) putIn: (recoveredBlock11Stack3) float: (recoveredBlock11Stack4).
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            (recoveredBlock11Stack2) putSeparatorIn: (recoveredBlock11Stack3).
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Arg1.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack5 := 2.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) at: (recoveredBlock11Stack5).
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            (recoveredBlock11Stack2) putIn: (recoveredBlock11Stack3) float: (recoveredBlock11Stack4).
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            (recoveredBlock11Stack2) putSeparatorIn: (recoveredBlock11Stack3).
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Stack4 := 3.
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) at: (recoveredBlock11Stack4).
            recoveredBlock11PC := 68.
        ].
        recoveredBlock11Step = 68 ifTrue: [
            (recoveredBlock11Stack1) putIn: (recoveredBlock11Stack2) integerWithQuotedType: (recoveredBlock11Stack3).
            recoveredBlock11PC := 70.
        ].
        recoveredBlock11Step = 70 ifTrue: [
            recoveredBlock11PC := 144.
        ].
        recoveredBlock11Step = 74 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 75.
        ].
        recoveredBlock11Step = 75 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 76.
        ].
        recoveredBlock11Step = 76 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Arg1.
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11Stack5 := 1.
            recoveredBlock11PC := 82.
        ].
        recoveredBlock11Step = 82 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) at: (recoveredBlock11Stack5).
            recoveredBlock11PC := 83.
        ].
        recoveredBlock11Step = 83 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) left.
            recoveredBlock11PC := 85.
        ].
        recoveredBlock11Step = 85 ifTrue: [
            (recoveredBlock11Stack2) putIn: (recoveredBlock11Stack3) float: (recoveredBlock11Stack4).
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 88.
        ].
        recoveredBlock11Step = 88 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 91.
        ].
        recoveredBlock11Step = 91 ifTrue: [
            (recoveredBlock11Stack2) putSeparatorIn: (recoveredBlock11Stack3).
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 97.
        ].
        recoveredBlock11Step = 97 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Arg1.
            recoveredBlock11PC := 98.
        ].
        recoveredBlock11Step = 98 ifTrue: [
            recoveredBlock11Stack5 := 1.
            recoveredBlock11PC := 100.
        ].
        recoveredBlock11Step = 100 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) at: (recoveredBlock11Stack5).
            recoveredBlock11PC := 101.
        ].
        recoveredBlock11Step = 101 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) right.
            recoveredBlock11PC := 103.
        ].
        recoveredBlock11Step = 103 ifTrue: [
            (recoveredBlock11Stack2) putIn: (recoveredBlock11Stack3) float: (recoveredBlock11Stack4).
            recoveredBlock11PC := 105.
        ].
        recoveredBlock11Step = 105 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 108.
        ].
        recoveredBlock11Step = 108 ifTrue: [
            (recoveredBlock11Stack1) putSeparatorIn: (recoveredBlock11Stack2).
            recoveredBlock11PC := 110.
        ].
        recoveredBlock11Step = 110 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 111.
        ].
        recoveredBlock11Step = 111 ifTrue: [
            recoveredBlock11Stack2 := 2.
            recoveredBlock11PC := 113.
        ].
        recoveredBlock11Step = 113 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2).
            recoveredBlock11PC := 114.
        ].
        recoveredBlock11Step = 114 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isString.
            recoveredBlock11PC := 116.
        ].
        recoveredBlock11Step = 116 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 120] ifFalse: [recoveredBlock11PC := 134].
        ].
        recoveredBlock11Step = 120 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 121.
        ].
        recoveredBlock11Step = 121 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 124.
        ].
        recoveredBlock11Step = 124 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 125.
        ].
        recoveredBlock11Step = 125 ifTrue: [
            recoveredBlock11Stack4 := 2.
            recoveredBlock11PC := 127.
        ].
        recoveredBlock11Step = 127 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) at: (recoveredBlock11Stack4).
            recoveredBlock11PC := 128.
        ].
        recoveredBlock11Step = 128 ifTrue: [
            (recoveredBlock11Stack1) putIn: (recoveredBlock11Stack2) quotedString: (recoveredBlock11Stack3).
            recoveredBlock11PC := 130.
        ].
        recoveredBlock11Step = 130 ifTrue: [
            recoveredBlock11PC := 144.
        ].
        recoveredBlock11Step = 134 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 135.
        ].
        recoveredBlock11Step = 135 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 138.
        ].
        recoveredBlock11Step = 138 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 139.
        ].
        recoveredBlock11Step = 139 ifTrue: [
            recoveredBlock11Stack4 := 2.
            recoveredBlock11PC := 141.
        ].
        recoveredBlock11Step = 141 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) at: (recoveredBlock11Stack4).
            recoveredBlock11PC := 142.
        ].
        recoveredBlock11Step = 142 ifTrue: [
            (recoveredBlock11Stack1) putIn: (recoveredBlock11Stack2) integerWithQuotedType: (recoveredBlock11Stack3).
            recoveredBlock11PC := 144.
        ].
        recoveredBlock11Step = 144 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 147.
        ].
        recoveredBlock11Step = 147 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) putNewLineIn: (recoveredBlock11Stack1).
            recoveredBlock11PC := 148.
        ].
        recoveredBlock11Step = 148 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

