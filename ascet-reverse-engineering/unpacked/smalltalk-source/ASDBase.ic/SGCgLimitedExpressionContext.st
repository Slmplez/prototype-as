"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200389a0; bytecode file offset 0x935c54"
!SGCgLimitedExpressionContext methodsFor: 'recovered'!
isCgSameContext: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isLimitedDiscreteContext.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074a1c; bytecode file offset 0x9757c8"
!SGCgLimitedExpressionContext methodsFor: 'recovered'!
isLimitedDiscreteContext
    ^true
! !

"ASDBase.ic method 0x2007719c; bytecode file offset 0x9757c8"
!SGCgLimitedExpressionContext methodsFor: 'recovered'!
isCGContextWithType
    ^true
! !

"ASDBase.ic method 0x20078c2c; bytecode file offset 0x9757c8"
!SGCgLimitedExpressionContext methodsFor: 'recovered'!
isContextWithBehaviour
    ^true
! !

"ASDBase.ic method 0x20100ee4; bytecode file offset 0x9fd7c0"
!SGCgLimitedExpressionContext methodsFor: 'recovered'!
optimize: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) constantFoldingBoolVisitor.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) expressionSimplificationVisitor.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) optimizeLimitedDiscreteArithmetics.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue5) anyExpr: (recoveredValue6).
    recoveredValue8 := (recoveredValue3) anyExpr: (recoveredValue7).
    recoveredValue9 := (recoveredValue1) anyExpr: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20153758; bytecode file offset 0xa5001c"
!SGCgLimitedExpressionContext methodsFor: 'recovered'!
typeConforms: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := super typeConforms: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgLimitedIntegerType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e7b0c; bytecode file offset 0xae43e0"
!SGCgLimitedExpressionContext methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('limit ').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) contextType.
    recoveredValue5 := (recoveredValue4) interval.
    recoveredValue6 := (recoveredValue5) asString.
    (recoveredValue3) nextPutAll: (recoveredValue6).
    (recoveredValue1) cr.
    ^self
! !

