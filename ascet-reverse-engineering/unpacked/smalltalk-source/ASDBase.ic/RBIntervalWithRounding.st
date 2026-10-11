"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ab80; bytecode file offset 0x908be4"
!RBIntervalWithRounding methodsFor: 'recovered'!
roundedOutwardsWithFlags
    | recoveredValue0 |
    recoveredValue0 := (self) rounded.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c043c; bytecode file offset 0x9bd228"
!RBIntervalWithRounding methodsFor: 'recovered'!
roundLeft: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    roundLeft := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0fe0; bytecode file offset 0x9bdf14"
!RBIntervalWithRounding methodsFor: 'recovered'!
roundRight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    roundRight := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20130b98; bytecode file offset 0xa2d454"
!RBIntervalWithRounding methodsFor: 'recovered'!
+ recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cad10Arg1 :block280cad10Arg2 | 
    | block280cad10Value0 block280cad10Value1 block280cad10Value2 |
    block280cad10Value0 := block280cad10Arg1.
    block280cad10Value1 := block280cad10Arg2.
    block280cad10Value2 := (block280cad10Value0) + (block280cad10Value1).
    block280cad10Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundedOperation: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20130bcc; bytecode file offset 0xa2d488"
!RBIntervalWithRounding methodsFor: 'recovered'!
- recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cad58Arg1 :block280cad58Arg2 | 
    | block280cad58Value0 block280cad58Value1 block280cad58Value2 |
    block280cad58Value0 := block280cad58Arg1.
    block280cad58Value1 := block280cad58Arg2.
    block280cad58Value2 := (block280cad58Value0) - (block280cad58Value1).
    block280cad58Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundedOperation: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20130bf0; bytecode file offset 0xa2d4ac"
!RBIntervalWithRounding methodsFor: 'recovered'!
* recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cad7cArg1 :block280cad7cArg2 | 
    | block280cad7cValue0 block280cad7cValue1 block280cad7cValue2 |
    block280cad7cValue0 := block280cad7cArg1.
    block280cad7cValue1 := block280cad7cArg2.
    block280cad7cValue2 := (block280cad7cValue0) * (block280cad7cValue1).
    block280cad7cValue2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundedOperation: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20130c14; bytecode file offset 0xa2d4d4"
!RBIntervalWithRounding methodsFor: 'recovered'!
integerDiv: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cada0Arg1 :block280cada0Arg2 | 
    | block280cada0Value0 block280cada0Value1 block280cada0Value2 |
    block280cada0Value0 := block280cada0Arg1.
    block280cada0Value1 := block280cada0Arg2.
    block280cada0Value2 := (block280cada0Value0) integerDiv: (block280cada0Value1).
    block280cada0Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundedOperation: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201887dc; bytecode file offset 0xa85090"
!RBIntervalWithRounding methodsFor: 'recovered'!
calcRounded: recoveredArg1 exact: recoveredArg2 default: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201bef30; bytecode file offset 0xabb7f8"
!RBIntervalWithRounding methodsFor: 'recovered'!
rounded
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) left.
    recoveredValue1 := roundLeft.
    recoveredValue2 := (self) round: (recoveredValue0) direction: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) right.
    recoveredValue4 := roundRight.
    recoveredValue5 := (self) round: (recoveredValue3) direction: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := RBInterval.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue6) left: (recoveredValue7) right: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ce8a0; bytecode file offset 0xacb160"
!RBIntervalWithRounding methodsFor: 'recovered'!
round: recoveredArg1 direction: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) ceiling.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) floor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027b2a8; bytecode file offset 0xb77b74"
!RBIntervalWithRounding methodsFor: 'recovered'!
intersect: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super intersect: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := roundLeft.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) roundLeft: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := roundRight.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) roundRight: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cfafc; bytecode file offset 0xbcc3d4"
!RBIntervalWithRounding methodsFor: 'recovered'!
/ recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e6004Arg1 :block280e6004Arg2 | 
    | block280e6004Local1 block280e6004Stack0 block280e6004Stack1 block280e6004Stack2 block280e6004Stack3 block280e6004PC block280e6004Step block280e6004Done block280e6004Result |
    block280e6004Stack0 := self.
    block280e6004PC := 4.
    block280e6004Done := false.
    [block280e6004Done not] whileTrue: [
        block280e6004Step := block280e6004PC.
        block280e6004Step = 4 ifTrue: [
            block280e6004Stack1 := block280e6004Arg2.
            block280e6004PC := 5.
        ].
        block280e6004Step = 5 ifTrue: [
            block280e6004Stack1 := (block280e6004Stack1) asInterval.
            block280e6004PC := 6.
        ].
        block280e6004Step = 6 ifTrue: [
            block280e6004Stack2 := block280e6004Stack1.
            block280e6004PC := 7.
        ].
        block280e6004Step = 7 ifTrue: [
            block280e6004Local1 := block280e6004Stack2.
            block280e6004PC := 8.
        ].
        block280e6004Step = 8 ifTrue: [
            block280e6004Stack1 := (block280e6004Stack1) left.
            block280e6004PC := 9.
        ].
        block280e6004Step = 9 ifTrue: [
            block280e6004Stack2 := 0.
            block280e6004PC := 11.
        ].
        block280e6004Step = 11 ifTrue: [
            block280e6004Stack1 := (block280e6004Stack1) equals: (block280e6004Stack2).
            block280e6004PC := 12.
        ].
        block280e6004Step = 12 ifTrue: [
            (block280e6004Stack1) ifTrue: [block280e6004PC := 26] ifFalse: [block280e6004PC := 16].
        ].
        block280e6004Step = 16 ifTrue: [
            block280e6004Stack1 := block280e6004Local1.
            block280e6004PC := 17.
        ].
        block280e6004Step = 17 ifTrue: [
            block280e6004Stack1 := (block280e6004Stack1) right.
            block280e6004PC := 19.
        ].
        block280e6004Step = 19 ifTrue: [
            block280e6004Stack2 := 0.
            block280e6004PC := 21.
        ].
        block280e6004Step = 21 ifTrue: [
            block280e6004Stack1 := (block280e6004Stack1) equals: (block280e6004Stack2).
            block280e6004PC := 22.
        ].
        block280e6004Step = 22 ifTrue: [
            (block280e6004Stack1) ifTrue: [block280e6004PC := 26] ifFalse: [block280e6004PC := 34].
        ].
        block280e6004Step = 26 ifTrue: [
            block280e6004Stack1 := RBInterval.
            block280e6004PC := 28.
        ].
        block280e6004Step = 28 ifTrue: [
            block280e6004Stack1 := (block280e6004Stack1) emptyInterval.
            block280e6004PC := 30.
        ].
        block280e6004Step = 30 ifTrue: [
            block280e6004PC := 38.
        ].
        block280e6004Step = 34 ifTrue: [
            block280e6004Stack1 := block280e6004Arg1.
            block280e6004PC := 35.
        ].
        block280e6004Step = 35 ifTrue: [
            block280e6004Stack2 := block280e6004Arg2.
            block280e6004PC := 36.
        ].
        block280e6004Step = 36 ifTrue: [
            block280e6004Stack1 := (block280e6004Stack1) / (block280e6004Stack2).
            block280e6004PC := 38.
        ].
        block280e6004Step = 38 ifTrue: [
            block280e6004Result := block280e6004Stack1.
            block280e6004Done := true.
        ].
    ].
    block280e6004Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundedOperation: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20321bac; bytecode file offset 0xc1e484"
!RBIntervalWithRounding methodsFor: 'recovered'!
roundedOperation: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) rounded.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) rounded.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) left.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) calcRounded: (recoveredStack3) exact: (recoveredStack4) default: (recoveredStack5).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := (recoveredStack5) right.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) calcRounded: (recoveredStack4) exact: (recoveredStack5) default: (recoveredStack6).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIntervalWithRoundingLeft: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

