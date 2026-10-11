"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005818; bytecode file offset 0x902744"
!SGIaWrappedIleExpr methodsFor: 'recovered'!
changeOffsetTo: recoveredArg1 attributes: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005980; bytecode file offset 0x902744"
!SGIaWrappedIleExpr methodsFor: 'recovered'!
limitAssignmentTo: recoveredArg1 attributes: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005998; bytecode file offset 0x902744"
!SGIaWrappedIleExpr methodsFor: 'recovered'!
changeScaleTo: recoveredArg1 attributes: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005cf8; bytecode file offset 0x902744"
!SGIaWrappedIleExpr methodsFor: 'recovered'!
prepareAssign: recoveredArg1 attributes: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20071b4c; bytecode file offset 0x96e578"
!SGIaWrappedIleExpr methodsFor: 'recovered'!
offset
    ^0
! !

"ASDBase.ic method 0x20072288; bytecode file offset 0x96ee04"
!SGIaWrappedIleExpr methodsFor: 'recovered'!
scale
    ^1
! !

"ASDBase.ic method 0x201360e0; bytecode file offset 0xa329a8"
!SGIaWrappedIleExpr methodsFor: 'recovered'!
compare: recoveredArg1 op: recoveredArg2 attributes: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := (self) ileBuilder.
    recoveredValue2 := (self) ileExpr.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) ileExpr.
    recoveredValue6 := (recoveredValue1) compare: (recoveredValue2) operator: (recoveredValue3) and: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) createBooleanTypedExpr: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015992c; bytecode file offset 0xa56210"
!SGIaWrappedIleExpr methodsFor: 'recovered'!
rounded
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateRound.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleRoundedExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ileExpr: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021a5a8; bytecode file offset 0xb16e78"
!SGIaWrappedIleExpr methodsFor: 'recovered'!
shortPrintString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileExpr.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) type.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isCgContMoebiusFixedPointType.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 27].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) type.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) formula.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) shortPrintString.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^''
! !

