"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003a10; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
matrixYLengthSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003f40; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getY2DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004390; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getValue2DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200043b0; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getCurrentSizeY2DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200047b8; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getMaxSizeY2DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004878; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getValue1DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200049b0; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
matrixXLengthSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004a18; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getCurrentSize1DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004a28; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getX2DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004b90; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getCurrentSizeX2DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ee0; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
rteIrvIReadCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004f00; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getX1DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004f80; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
arrayLengthSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004f98; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
rteIReadCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005100; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getMaxSizeX2DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005658; bytecode file offset 0x90206c"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getMaxSize1DSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200529f0; bytecode file offset 0x94f2e4"
!SGIlContainsSideEffects methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    result := true.
    ^self
! !

"ASDBase.ic method 0x200529f8; bytecode file offset 0x94f2e4"
!SGIlContainsSideEffects methodsFor: 'recovered'!
assignExpr: recoveredArg1
    result := true.
    ^self
! !

"ASDBase.ic method 0x20052a00; bytecode file offset 0x94f2e4"
!SGIlContainsSideEffects methodsFor: 'recovered'!
prePostIncDec: recoveredArg1
    result := true.
    ^self
! !

"ASDBase.ic method 0x20052a08; bytecode file offset 0x94f2e4"
!SGIlContainsSideEffects methodsFor: 'recovered'!
parmAssign: recoveredArg1
    result := true.
    ^self
! !

"ASDBase.ic method 0x20052a10; bytecode file offset 0x94f2e4"
!SGIlContainsSideEffects methodsFor: 'recovered'!
statementExpression: recoveredArg1
    result := true.
    ^self
! !

"ASDBase.ic method 0x20052a18; bytecode file offset 0x94f2e4"
!SGIlContainsSideEffects methodsFor: 'recovered'!
assertIntervalFailureExpr: recoveredArg1
    result := true.
    ^self
! !

"ASDBase.ic method 0x20052a20; bytecode file offset 0x94f2e4"
!SGIlContainsSideEffects methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    result := true.
    ^self
! !

"ASDBase.ic method 0x20052a30; bytecode file offset 0x94f2e4"
!SGIlContainsSideEffects methodsFor: 'recovered'!
memCopyExpr: recoveredArg1
    result := true.
    ^self
! !

"ASDBase.ic method 0x200e9e2c; bytecode file offset 0x9e6708"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getAt1DSpecialCall: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleSideEffectFreeInterpolation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            result := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e9e38; bytecode file offset 0x9e6708"
!SGIlContainsSideEffects methodsFor: 'recovered'!
interpolate1DSpecialCall: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleSideEffectFreeInterpolation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            result := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e9e44; bytecode file offset 0x9e6708"
!SGIlContainsSideEffects methodsFor: 'recovered'!
getAt2DSpecialCall: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleSideEffectFreeInterpolation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            result := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e9e50; bytecode file offset 0x9e6708"
!SGIlContainsSideEffects methodsFor: 'recovered'!
interpolate2DSpecialCall: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleSideEffectFreeInterpolation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            result := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012061c; bytecode file offset 0xa1cee0"
!SGIlContainsSideEffects methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDummyExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            super tempAssignIdentifier: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185814; bytecode file offset 0xa820d8"
!SGIlContainsSideEffects methodsFor: 'recovered'!
abstractSaveOp: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            result := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            super abstractSaveOp: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202563b0; bytecode file offset 0xb52c84"
!SGIlContainsSideEffects methodsFor: 'recovered'!
abstractModelMethodCall: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSideEffectFree.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) expr.
    recoveredBlock15Value2 := (self) visitNode: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            result := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

