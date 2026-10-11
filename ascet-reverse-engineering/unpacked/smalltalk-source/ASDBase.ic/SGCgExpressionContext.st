"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c9ec; bytecode file offset 0x909658"
!SGCgExpressionContext methodsFor: 'recovered'!
isCgSameContext: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000f55c; bytecode file offset 0x90bef8"
!SGCgExpressionContext methodsFor: 'recovered'!
adjustInterval: recoveredArg1 forType: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003b8d0; bytecode file offset 0x938608"
!SGCgExpressionContext methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) executeInContext: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200669b4; bytecode file offset 0x963428"
!SGCgExpressionContext methodsFor: 'recovered'!
contextType
    | recoveredValue0 |
    recoveredValue0 := contextType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079fbc; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isContextWithBehaviour
    ^false
! !

"ASDBase.ic method 0x2007a3e4; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isVoidContext
    ^false
! !

"ASDBase.ic method 0x2007a734; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isCGContextWithType
    ^false
! !

"ASDBase.ic method 0x2007a744; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isTwosComplementContext
    ^false
! !

"ASDBase.ic method 0x2007b344; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isArithmeticContext
    ^false
! !

"ASDBase.ic method 0x2007b574; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isLimitNecessary
    ^false
! !

"ASDBase.ic method 0x2007b84c; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isIntContext
    ^false
! !

"ASDBase.ic method 0x2007bb8c; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isModularDiscreteContext
    ^false
! !

"ASDBase.ic method 0x2007ca94; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isFloatContext
    ^false
! !

"ASDBase.ic method 0x2007ee2c; bytecode file offset 0x97c330"
!SGCgExpressionContext methodsFor: 'recovered'!
isLimitedDiscreteContext
    ^false
! !

"ASDBase.ic method 0x20094a14; bytecode file offset 0x9913f0"
!SGCgExpressionContext methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('Expression context: ').
    ^self
! !

"ASDBase.ic method 0x200bdc0c; bytecode file offset 0x9bb178"
!SGCgExpressionContext methodsFor: 'recovered'!
contextType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contextType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201b2c38; bytecode file offset 0xaaf4fc"
!SGCgExpressionContext methodsFor: 'recovered'!
typeConforms: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgWrapAroundIntegerype.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgLimitedIntegerType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgModularIntegerType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20214360; bytecode file offset 0xb10c24"
!SGCgExpressionContext methodsFor: 'recovered'!
executeInContext: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) generator.
    (recoveredValue2) expressionContext: (self).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := (self) generator.
    recoveredBlock17Value1 := recoveredLocal1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) expressionContext: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    recoveredValue5 := (recoveredValue3) ensure: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20299494; bytecode file offset 0xb95d70"
!SGCgExpressionContext methodsFor: 'recovered'!
optimize: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) transformationFactory.
    recoveredValue2 := (recoveredValue1) basicArithmeticVisitor.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) optimizeRTCostsTransformExprVisitor.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) constantFoldingBoolVisitor.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) constantFoldingScalarVisitor.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) expressionSimplificationVisitor.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) normalizeSyntaxTreeVisitor.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) operatorSimplificationImplAwareVisitor.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) operatorSimplificationVisitor.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (recoveredValue16) anyExpr: (recoveredValue17).
    recoveredValue19 := (recoveredValue14) anyExpr: (recoveredValue18).
    recoveredValue20 := (recoveredValue12) anyExpr: (recoveredValue19).
    recoveredValue21 := (recoveredValue10) anyExpr: (recoveredValue20).
    recoveredValue22 := (recoveredValue8) anyExpr: (recoveredValue21).
    recoveredValue23 := (recoveredValue6) anyExpr: (recoveredValue22).
    recoveredValue24 := (recoveredValue4) anyExpr: (recoveredValue23).
    recoveredValue25 := (recoveredValue2) anyExpr: (recoveredValue24).
    ^recoveredValue25
! !

