"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000dfa4; bytecode file offset 0x90ab8c"
!SGIlAbstractOperation methodsFor: 'recovered'!
braceForceParenthesisLogicOp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) asBracedExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002cab4; bytecode file offset 0x934580"
!SGIlAbstractOperation methodsFor: 'recovered'!
ileRuntimeCosts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) costs.
    recoveredValue1 := (recoveredValue0) runtime.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200313c4; bytecode file offset 0x934580"
!SGIlAbstractOperation methodsFor: 'recovered'!
ileNumericalPrecisionCosts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) costs.
    recoveredValue1 := (recoveredValue0) numericalPrecision.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200319a4; bytecode file offset 0x934580"
!SGIlAbstractOperation methodsFor: 'recovered'!
ileCosts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) costs.
    recoveredValue1 := (recoveredValue0) general.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055bcc; bytecode file offset 0x952a9c"
!SGIlAbstractOperation methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractOperation: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059d04; bytecode file offset 0x9566ac"
!SGIlAbstractOperation methodsFor: 'recovered'!
createOpExpr: recoveredArg1 type: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006b06c; bytecode file offset 0x967a18"
!SGIlAbstractOperation methodsFor: 'recovered'!
leftExpr
    | recoveredValue0 |
    recoveredValue0 := leftExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007cd64; bytecode file offset 0x97c330"
!SGIlAbstractOperation methodsFor: 'recovered'!
isIleCommutativeOp
    ^false
! !

"ASDBase.ic method 0x2007f6dc; bytecode file offset 0x97c330"
!SGIlAbstractOperation methodsFor: 'recovered'!
isIleEnumExpr
    ^false
! !

"ASDBase.ic method 0x20085f20; bytecode file offset 0x9827dc"
!SGIlAbstractOperation methodsFor: 'recovered'!
ileCalculateRuntimeCostsExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileRuntimeCostsOfExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileRuntimeCosts.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f0ec; bytecode file offset 0x98b9c0"
!SGIlAbstractOperation methodsFor: 'recovered'!
ileCalculateRuntimeCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileRuntimeCostsOfExpr.
    recoveredValue1 := (self) leftExpr.
    recoveredValue2 := (recoveredValue1) ileRuntimeCosts.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f100; bytecode file offset 0x98b9c0"
!SGIlAbstractOperation methodsFor: 'recovered'!
ileCalculateGeneralCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileRuntimeCostsOfExpr.
    recoveredValue1 := (self) leftExpr.
    recoveredValue2 := (recoveredValue1) ileCosts.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20093940; bytecode file offset 0x9904ac"
!SGIlAbstractOperation methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createOpExpr: (recoveredValue0) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094ffc; bytecode file offset 0x991c58"
!SGIlAbstractOperation methodsFor: 'recovered'!
createNoOpLeftExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) typeOrNil.
    recoveredValue2 := (self) createOpExpr: (recoveredValue0) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200950ac; bytecode file offset 0x991c58"
!SGIlAbstractOperation methodsFor: 'recovered'!
createOpLeftExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) typeOrNil.
    recoveredValue2 := (self) createOpExpr: (recoveredValue0) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2134; bytecode file offset 0x9aea94"
!SGIlAbstractOperation methodsFor: 'recovered'!
firstOperand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Rl') == ('Call_67224').
    recoveredValue1 := (self) leftExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d098c; bytecode file offset 0x9cd3a0"
!SGIlAbstractOperation methodsFor: 'recovered'!
isIleCompileTimeConstantExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rl') == ('Call_63804').
    recoveredValue1 := (self) leftExpr.
    recoveredValue2 := (recoveredValue1) isIleCompileTimeConstantExpr.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d0aac; bytecode file offset 0x9cd3a0"
!SGIlAbstractOperation methodsFor: 'recovered'!
hasIleFloatConstant
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rl') == ('Call_63804').
    recoveredValue1 := (self) leftExpr.
    recoveredValue2 := (recoveredValue1) hasIleFloatConstant.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d5740; bytecode file offset 0x9d2050"
!SGIlAbstractOperation methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) leftExpr.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20101cb0; bytecode file offset 0x9fe56c"
!SGIlAbstractOperation methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 leftExpr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    leftExpr := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    super initializeSource: (recoveredValue1) type: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2013aed0; bytecode file offset 0xa3778c"
!SGIlAbstractOperation methodsFor: 'recovered'!
costs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := costs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCosts: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            costs := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := costs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013cd94; bytecode file offset 0xa39660"
!SGIlAbstractOperation methodsFor: 'recovered'!
isIleRepresentableRecursiveDoubleBitSize
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super isIleRepresentableRecursiveDoubleBitSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := leftExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursiveDoubleBitSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013cda4; bytecode file offset 0xa39660"
!SGIlAbstractOperation methodsFor: 'recovered'!
isIleRepresentableRecursive
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super isIleRepresentableRecursive.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := leftExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursive.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

