"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d7c04; bytecode file offset 0x9d44bc"
!SGIlOverflowOfLimitedDiscreteCalculationVisitor methodsFor: 'recovered'!
checkMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    checkFailed := false.
    recoveredValue0 := recoveredArg1.
    (self) visitNode: (recoveredValue0).
    recoveredValue1 := checkFailed.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e9860; bytecode file offset 0x9e61c0"
!SGIlOverflowOfLimitedDiscreteCalculationVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) checkExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super muxExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e9888; bytecode file offset 0x9e61c0"
!SGIlOverflowOfLimitedDiscreteCalculationVisitor methodsFor: 'recovered'!
unaryArithExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) checkExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super unaryArithExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e98b0; bytecode file offset 0x9e61c0"
!SGIlOverflowOfLimitedDiscreteCalculationVisitor methodsFor: 'recovered'!
binaryArithExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) checkExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super binaryArithExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e9900; bytecode file offset 0x9e61c0"
!SGIlOverflowOfLimitedDiscreteCalculationVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) checkExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super multiplexExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20250014; bytecode file offset 0xb4c8e4"
!SGIlOverflowOfLimitedDiscreteCalculationVisitor methodsFor: 'recovered'!
checkExpr: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLimitedDiscreteContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableInDoubleBitSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            checkFailed := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBasicInterval.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ileErrorIntervalDoesNotFit: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035a79c; bytecode file offset 0xc57080"
!SGIlOverflowOfLimitedDiscreteCalculationVisitor methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super abstractNoOverflowExpr: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulNoOverflowExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddSubNoOverflowExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOperands.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block280f0030Arg1 | 
    | block280f0030Stack0 block280f0030Stack1 block280f0030Stack2 block280f0030Stack3 block280f0030Stack4 block280f0030Stack5 block280f0030PC block280f0030Step block280f0030Done block280f0030Result |
    block280f0030Stack0 := self.
    block280f0030PC := 4.
    block280f0030Done := false.
    [block280f0030Done not] whileTrue: [
        block280f0030Step := block280f0030PC.
        block280f0030Step = 4 ifTrue: [
            block280f0030Stack1 := nil.
            block280f0030PC := 5.
        ].
        block280f0030Step = 5 ifTrue: [
            block280f0030Stack2 := block280f0030Arg1.
            block280f0030PC := 6.
        ].
        block280f0030Step = 6 ifTrue: [
            block280f0030Stack2 := (block280f0030Stack2) isIleImplCastAssign.
            block280f0030PC := 8.
        ].
        block280f0030Step = 8 ifTrue: [
            (block280f0030Stack2) ifTrue: [block280f0030PC := 12] ifFalse: [block280f0030PC := 37].
        ].
        block280f0030Step = 12 ifTrue: [
            block280f0030Stack2 := block280f0030Arg1.
            block280f0030PC := 13.
        ].
        block280f0030Step = 13 ifTrue: [
            block280f0030Stack2 := (block280f0030Stack2) type.
            block280f0030PC := 15.
        ].
        block280f0030Step = 15 ifTrue: [
            block280f0030Stack2 := (block280f0030Stack2) isCgNewDiscreteType.
            block280f0030PC := 17.
        ].
        block280f0030Step = 17 ifTrue: [
            (block280f0030Stack2) ifTrue: [block280f0030PC := 20] ifFalse: [block280f0030PC := 37].
        ].
        block280f0030Step = 20 ifTrue: [
            block280f0030PC := 21.
        ].
        block280f0030Step = 21 ifTrue: [
            block280f0030Stack1 := block280f0030Arg1.
            block280f0030PC := 22.
        ].
        block280f0030Step = 22 ifTrue: [
            block280f0030Stack2 := 113.
            block280f0030PC := 26.
        ].
        block280f0030Step = 26 ifTrue: [
            block280f0030Stack3 := block280f0030Arg1.
            block280f0030PC := 27.
        ].
        block280f0030Step = 27 ifTrue: [
            block280f0030Stack3 := (block280f0030Stack3) type.
            block280f0030PC := 29.
        ].
        block280f0030Step = 29 ifTrue: [
            block280f0030Stack3 := (block280f0030Stack3) errLabel.
            block280f0030PC := 31.
        ].
        block280f0030Step = 31 ifTrue: [
            block280f0030Stack4 := block280f0030Arg1.
            block280f0030PC := 32.
        ].
        block280f0030Step = 32 ifTrue: [
            block280f0030Stack4 := (block280f0030Stack4) errLabel.
            block280f0030PC := 34.
        ].
        block280f0030Step = 34 ifTrue: [
            block280f0030Stack1 := (block280f0030Stack1) ileWarningNo: (block280f0030Stack2) with: (block280f0030Stack3) with: (block280f0030Stack4).
            block280f0030PC := 37.
        ].
        block280f0030Step = 37 ifTrue: [
            block280f0030Result := block280f0030Stack1.
            block280f0030Done := true.
        ].
    ].
    block280f0030Result
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

