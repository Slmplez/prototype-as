"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d7b0; bytecode file offset 0x92209c"
!SGCgAbstractTable methodsFor: 'recovered'!
currentEntryKeyKey
    ^'_key_'
! !

"ASDBase.ic method 0x20048e9c; bytecode file offset 0x945780"
!SGCgAbstractTable methodsFor: 'recovered'!
resetCurrentArguments
    currentArguments := nil.
    ^self
! !

"ASDBase.ic method 0x2004e798; bytecode file offset 0x94d048"
!SGCgAbstractTable methodsFor: 'recovered'!
table
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200536ac; bytecode file offset 0x9505d0"
!SGCgAbstractTable methodsFor: 'recovered'!
table: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053718; bytecode file offset 0x9505d0"
!SGCgAbstractTable methodsFor: 'recovered'!
readFromDict: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200bda24; bytecode file offset 0x9bb178"
!SGCgAbstractTable methodsFor: 'recovered'!
currentArguments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentArguments := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010badc; bytecode file offset 0xa085f0"
!SGCgAbstractTable methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) table: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20128fb0; bytecode file offset 0xa258cc"
!SGCgAbstractTable methodsFor: 'recovered'!
currentArguments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentArguments.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            currentArguments := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := currentArguments.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012d7cc; bytecode file offset 0xa2a0cc"
!SGCgAbstractTable methodsFor: 'recovered'!
currentEntryKey
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentArguments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentEntryKeyKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f6868; bytecode file offset 0xcf3144"
!SGCgAbstractTable methodsFor: 'recovered'!
sortableKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := '*'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'zzz'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := '0'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) subStringFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 16] ifFalse: [recoveredLocal2 := nil. recoveredPC := 89]] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20505990; bytecode file offset 0xe02298"
!SGCgAbstractTable methodsFor: 'recovered'!
addEntry: recoveredArg1 key: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := SortedCollection.
    recoveredBlock12Value1 := recoveredBlock12Value0.
    (recoveredBlock12Value1) new.
    recoveredBlock12Value2 := [:recoveredBlock12Block23Arg1 :recoveredBlock12Block23Arg2 | 
    | recoveredBlock12Block23Stack0 recoveredBlock12Block23Stack1 recoveredBlock12Block23Stack2 recoveredBlock12Block23Stack3 recoveredBlock12Block23Stack4 recoveredBlock12Block23Stack5 recoveredBlock12Block23PC recoveredBlock12Block23Step recoveredBlock12Block23Done recoveredBlock12Block23Result |
    recoveredBlock12Block23Stack0 := self.
    recoveredBlock12Block23PC := 30.
    recoveredBlock12Block23Done := false.
    [recoveredBlock12Block23Done not] whileTrue: [
        recoveredBlock12Block23Step := recoveredBlock12Block23PC.
        recoveredBlock12Block23Step = 30 ifTrue: [
            recoveredBlock12Block23Stack1 := recoveredBlock12Block23Arg1.
            recoveredBlock12Block23PC := 31.
        ].
        recoveredBlock12Block23Step = 31 ifTrue: [
            recoveredBlock12Block23Stack1 := (recoveredBlock12Block23Stack1) key.
            recoveredBlock12Block23PC := 33.
        ].
        recoveredBlock12Block23Step = 33 ifTrue: [
            recoveredBlock12Block23Stack1 := (recoveredBlock12Block23Stack1) size.
            recoveredBlock12Block23PC := 35.
        ].
        recoveredBlock12Block23Step = 35 ifTrue: [
            recoveredBlock12Block23Stack2 := recoveredBlock12Block23Arg2.
            recoveredBlock12Block23PC := 36.
        ].
        recoveredBlock12Block23Step = 36 ifTrue: [
            recoveredBlock12Block23Stack2 := (recoveredBlock12Block23Stack2) key.
            recoveredBlock12Block23PC := 38.
        ].
        recoveredBlock12Block23Step = 38 ifTrue: [
            recoveredBlock12Block23Stack2 := (recoveredBlock12Block23Stack2) size.
            recoveredBlock12Block23PC := 40.
        ].
        recoveredBlock12Block23Step = 40 ifTrue: [
            (recoveredBlock12Block23Stack1 == recoveredBlock12Block23Stack2) ifTrue: [recoveredBlock12Block23PC := 64] ifFalse: [recoveredBlock12Block23PC := 44].
        ].
        recoveredBlock12Block23Step = 44 ifTrue: [
            recoveredBlock12Block23Stack1 := SGCgErrorHandler.
            recoveredBlock12Block23PC := 46.
        ].
        recoveredBlock12Block23Step = 46 ifTrue: [
            recoveredBlock12Block23Stack1 := (recoveredBlock12Block23Stack1) current.
            recoveredBlock12Block23PC := 48.
        ].
        recoveredBlock12Block23Step = 48 ifTrue: [
            recoveredBlock12Block23Stack2 := 'Service definitions for service "'.
            recoveredBlock12Block23PC := 50.
        ].
        recoveredBlock12Block23Step = 50 ifTrue: [
            recoveredBlock12Block23Stack3 := recoveredArg2.
            recoveredBlock12Block23PC := 53.
        ].
        recoveredBlock12Block23Step = 53 ifTrue: [
            recoveredBlock12Block23Stack4 := 1.
            recoveredBlock12Block23PC := 55.
        ].
        recoveredBlock12Block23Step = 55 ifTrue: [
            recoveredBlock12Block23Stack3 := (recoveredBlock12Block23Stack3) at: (recoveredBlock12Block23Stack4).
            recoveredBlock12Block23PC := 56.
        ].
        recoveredBlock12Block23Step = 56 ifTrue: [
            recoveredBlock12Block23Stack2 := (recoveredBlock12Block23Stack2) , (recoveredBlock12Block23Stack3).
            recoveredBlock12Block23PC := 58.
        ].
        recoveredBlock12Block23Step = 58 ifTrue: [
            recoveredBlock12Block23Stack3 := '" have different argument sizes.'.
            recoveredBlock12Block23PC := 60.
        ].
        recoveredBlock12Block23Step = 60 ifTrue: [
            recoveredBlock12Block23Stack2 := (recoveredBlock12Block23Stack2) , (recoveredBlock12Block23Stack3).
            recoveredBlock12Block23PC := 62.
        ].
        recoveredBlock12Block23Step = 62 ifTrue: [
            (recoveredBlock12Block23Stack1) fatalMessage: (recoveredBlock12Block23Stack2).
            recoveredBlock12Block23PC := 64.
        ].
        recoveredBlock12Block23Step = 64 ifTrue: [
            recoveredBlock12Block23Stack1 := recoveredBlock12Block23Arg1.
            recoveredBlock12Block23PC := 65.
        ].
        recoveredBlock12Block23Step = 65 ifTrue: [
            recoveredBlock12Block23Stack1 := (recoveredBlock12Block23Stack1) key.
            recoveredBlock12Block23PC := 67.
        ].
        recoveredBlock12Block23Step = 67 ifTrue: [
            recoveredBlock12Block23Stack0 := (recoveredBlock12Block23Stack0) sortableKey: (recoveredBlock12Block23Stack1).
            recoveredBlock12Block23PC := 69.
        ].
        recoveredBlock12Block23Step = 69 ifTrue: [
            recoveredBlock12Block23Stack1 := self.
            recoveredBlock12Block23PC := 70.
        ].
        recoveredBlock12Block23Step = 70 ifTrue: [
            recoveredBlock12Block23Stack2 := recoveredBlock12Block23Arg2.
            recoveredBlock12Block23PC := 71.
        ].
        recoveredBlock12Block23Step = 71 ifTrue: [
            recoveredBlock12Block23Stack2 := (recoveredBlock12Block23Stack2) key.
            recoveredBlock12Block23PC := 73.
        ].
        recoveredBlock12Block23Step = 73 ifTrue: [
            recoveredBlock12Block23Stack1 := (recoveredBlock12Block23Stack1) sortableKey: (recoveredBlock12Block23Stack2).
            recoveredBlock12Block23PC := 75.
        ].
        recoveredBlock12Block23Step = 75 ifTrue: [
            recoveredBlock12Block23Stack0 := (recoveredBlock12Block23Stack0) <= (recoveredBlock12Block23Stack1).
            recoveredBlock12Block23PC := 76.
        ].
        recoveredBlock12Block23Step = 76 ifTrue: [
            recoveredBlock12Block23Result := recoveredBlock12Block23Stack0.
            recoveredBlock12Block23Done := true.
        ].
    ].
    recoveredBlock12Block23Result
].
    recoveredBlock12Value3 := (recoveredBlock12Value0) sortBlock: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Local1 recoveredBlock88Stack0 recoveredBlock88Stack1 recoveredBlock88Stack2 recoveredBlock88Stack3 recoveredBlock88Stack4 recoveredBlock88Stack5 recoveredBlock88PC recoveredBlock88Step recoveredBlock88Done recoveredBlock88Result |
    recoveredBlock88Stack0 := self.
    recoveredBlock88PC := 94.
    recoveredBlock88Done := false.
    [recoveredBlock88Done not] whileTrue: [
        recoveredBlock88Step := recoveredBlock88PC.
        recoveredBlock88Step = 94 ifTrue: [
            recoveredBlock88Stack1 := true.
            recoveredBlock88PC := 95.
        ].
        recoveredBlock88Step = 95 ifTrue: [
            recoveredLocal1 := recoveredBlock88Stack1.
            recoveredBlock88PC := 98.
        ].
        recoveredBlock88Step = 98 ifTrue: [
            recoveredBlock88Stack1 := 0.
            recoveredBlock88PC := 100.
        ].
        recoveredBlock88Step = 100 ifTrue: [
            recoveredBlock88Local1 := recoveredBlock88Stack1.
            recoveredBlock88PC := 101.
        ].
        recoveredBlock88Step = 101 ifTrue: [
            recoveredBlock88Stack1 := recoveredArg2.
            recoveredBlock88PC := 104.
        ].
        recoveredBlock88Step = 104 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) size.
            recoveredBlock88PC := 106.
        ].
        recoveredBlock88Step = 106 ifTrue: [
            recoveredBlock88PC := 136.
        ].
        recoveredBlock88Step = 110 ifTrue: [
            recoveredBlock88Stack2 := false.
            recoveredBlock88PC := 111.
        ].
        recoveredBlock88Step = 111 ifTrue: [
            recoveredBlock88Stack3 := recoveredLocal1.
            recoveredBlock88PC := 114.
        ].
        recoveredBlock88Step = 114 ifTrue: [
            (recoveredBlock88Stack3) ifTrue: [recoveredBlock88PC := 118] ifFalse: [recoveredBlock88PC := 133].
        ].
        recoveredBlock88Step = 118 ifTrue: [
            recoveredBlock88PC := 119.
        ].
        recoveredBlock88Step = 119 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 120.
        ].
        recoveredBlock88Step = 120 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) key.
            recoveredBlock88PC := 122.
        ].
        recoveredBlock88Step = 122 ifTrue: [
            recoveredBlock88Stack3 := recoveredBlock88Local1.
            recoveredBlock88PC := 123.
        ].
        recoveredBlock88Step = 123 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) at: (recoveredBlock88Stack3).
            recoveredBlock88PC := 124.
        ].
        recoveredBlock88Step = 124 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) asUppercase.
            recoveredBlock88PC := 125.
        ].
        recoveredBlock88Step = 125 ifTrue: [
            recoveredBlock88Stack3 := recoveredArg2.
            recoveredBlock88PC := 128.
        ].
        recoveredBlock88Step = 128 ifTrue: [
            recoveredBlock88Stack4 := recoveredBlock88Local1.
            recoveredBlock88PC := 129.
        ].
        recoveredBlock88Step = 129 ifTrue: [
            recoveredBlock88Stack3 := (recoveredBlock88Stack3) at: (recoveredBlock88Stack4).
            recoveredBlock88PC := 130.
        ].
        recoveredBlock88Step = 130 ifTrue: [
            recoveredBlock88Stack3 := (recoveredBlock88Stack3) asUppercase.
            recoveredBlock88PC := 131.
        ].
        recoveredBlock88Step = 131 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) equals: (recoveredBlock88Stack3).
            recoveredBlock88PC := 133.
        ].
        recoveredBlock88Step = 133 ifTrue: [
            recoveredLocal1 := recoveredBlock88Stack2.
            recoveredBlock88PC := 136.
        ].
        recoveredBlock88Step = 136 ifTrue: [
            (recoveredBlock88Stack1 isInteger and: [recoveredBlock88Local1 isInteger]) ifTrue: [(recoveredBlock88Local1 + 1 <= recoveredBlock88Stack1) ifTrue: [recoveredBlock88Local1 := recoveredBlock88Local1 + 1. recoveredBlock88PC := 110] ifFalse: [recoveredBlock88Local1 := nil. recoveredBlock88PC := 150]] ifFalse: [recoveredBlock88PC := 140].
        ].
        recoveredBlock88Step = 140 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Stack1.
            recoveredBlock88PC := 141.
        ].
        recoveredBlock88Step = 141 ifTrue: [
            recoveredBlock88Stack3 := recoveredBlock88Local1.
            recoveredBlock88PC := 142.
        ].
        recoveredBlock88Step = 142 ifTrue: [
            recoveredBlock88Stack3 := (recoveredBlock88Stack3) + (1).
            recoveredBlock88PC := 143.
        ].
        recoveredBlock88Step = 143 ifTrue: [
            recoveredBlock88Stack4 := recoveredBlock88Stack3.
            recoveredBlock88PC := 144.
        ].
        recoveredBlock88Step = 144 ifTrue: [
            recoveredBlock88Local1 := recoveredBlock88Stack4.
            recoveredBlock88PC := 145.
        ].
        recoveredBlock88Step = 145 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) < (recoveredBlock88Stack3).
            recoveredBlock88PC := 146.
        ].
        recoveredBlock88Step = 146 ifTrue: [
            (recoveredBlock88Stack2) ifTrue: [recoveredBlock88PC := 148] ifFalse: [recoveredBlock88PC := 110].
        ].
        recoveredBlock88Step = 148 ifTrue: [
            recoveredBlock88Stack2 := nil.
            recoveredBlock88PC := 149.
        ].
        recoveredBlock88Step = 149 ifTrue: [
            recoveredBlock88Local1 := recoveredBlock88Stack2.
            recoveredBlock88PC := 150.
        ].
        recoveredBlock88Step = 150 ifTrue: [
            recoveredBlock88PC := 151.
        ].
        recoveredBlock88Step = 151 ifTrue: [
            recoveredBlock88Stack1 := recoveredLocal1.
            recoveredBlock88PC := 154.
        ].
        recoveredBlock88Step = 154 ifTrue: [
            recoveredBlock88Result := recoveredBlock88Stack1.
            recoveredBlock88Done := true.
        ].
    ].
    recoveredBlock88Result
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFirst: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 177] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

