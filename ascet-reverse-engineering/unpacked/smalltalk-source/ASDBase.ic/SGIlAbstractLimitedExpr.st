"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005330; bytecode file offset 0x90206c"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200069e0; bytecode file offset 0x908be4"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
leftExpr
    | recoveredValue0 |
    recoveredValue0 := (self) expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002ca44; bytecode file offset 0x934580"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
isIleEnumExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) isIleEnumExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030704; bytecode file offset 0x934580"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
isIleFloatTypedExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interval.
    recoveredValue1 := (recoveredValue0) isFloat.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034c24; bytecode file offset 0x934580"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
ileRoundedInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interval.
    recoveredValue1 := (recoveredValue0) roundedTowardsMiddle.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d458; bytecode file offset 0x93bf94"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
upperBoundOrInfinity
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Infinity.
    recoveredValue1 := (recoveredValue0) plus.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eb78; bytecode file offset 0x93bf94"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
lowerBoundOrInfinity
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Infinity.
    recoveredValue1 := (recoveredValue0) minus.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055c2c; bytecode file offset 0x952a9c"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractLimitedExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057488; bytecode file offset 0x956284"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) ileDependsOnAccessExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a6c8; bytecode file offset 0x957a6c"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
createOpExpr: recoveredArg1 compareEqual: recoveredArg2 type: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20069d50; bytecode file offset 0x966bdc"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
expr
    | recoveredValue0 |
    recoveredValue0 := expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a584; bytecode file offset 0x967a18"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
interval
    | recoveredValue0 |
    recoveredValue0 := interval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a684; bytecode file offset 0x967a18"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
ileBasicIntervalOrNil
    | recoveredValue0 |
    recoveredValue0 := interval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b318; bytecode file offset 0x96873c"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
compareEqual
    | recoveredValue0 |
    recoveredValue0 := compareEqual.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076934; bytecode file offset 0x9757c8"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
isIleArithmeticExpr
    ^true
! !

"ASDBase.ic method 0x200773a4; bytecode file offset 0x9757c8"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
isIleAbstractLimitExpr
    ^true
! !

"ASDBase.ic method 0x2008f5a4; bytecode file offset 0x98c228"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
lowerBound
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) interval.
    recoveredValue2 := (recoveredValue1) left.
    recoveredValue3 := (recoveredValue0) createScalarConstant: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f634; bytecode file offset 0x98c228"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
upperBound
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) interval.
    recoveredValue2 := (recoveredValue1) right.
    recoveredValue3 := (recoveredValue0) createScalarConstant: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200938d0; bytecode file offset 0x9904ac"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
createOpCompareEqual: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createOpExpr: (recoveredValue0) compareEqual: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009d1cc; bytecode file offset 0x999a88"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
ileRuntimeCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := expr.
    recoveredValue1 := (recoveredValue0) ileRuntimeCosts.
    recoveredValue2 := (self) ileRuntimeCostsOfExpr.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a015c; bytecode file offset 0x99ca28"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
createIleTypeFromInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interval.
    recoveredValue1 := (self) createIleTypeFromInterval: (recoveredValue0).
    type := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200a8648; bytecode file offset 0x9a4f24"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
expr: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    expr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8c08; bytecode file offset 0x9c5684"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
createOpExpr: recoveredArg1 compareEqual: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) typeOrNil.
    recoveredValue3 := (self) createOpExpr: (recoveredValue0) compareEqual: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d55b0; bytecode file offset 0x9d2050"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) expr.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d7eac; bytecode file offset 0x9d4794"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (self) compareEqual.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createOpExpr: (recoveredValue0) compareEqual: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200da268; bytecode file offset 0x9d6b2c"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
createOpExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) compareEqual.
    recoveredValue3 := (self) createOpExpr: (recoveredValue1) compareEqual: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) anyExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fe88c; bytecode file offset 0x9fb278"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) printIntervalOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20105b8c; bytecode file offset 0xa02468"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
type
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) createIleTypeFromInterval.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20108afc; bytecode file offset 0xa05448"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := ('Cannot add parenthesis around ') , (recoveredValue2).
    (recoveredValue0) fatalMessage: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2013cd60; bytecode file offset 0xa3962c"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
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
            recoveredStack1 := expr.
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

"ASDBase.ic method 0x2013cd70; bytecode file offset 0xa3962c"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
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
            recoveredStack1 := expr.
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

"ASDBase.ic method 0x20173508; bytecode file offset 0xa6fddc"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
ileBasicInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := interval.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := super ileBasicInterval.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := interval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201d0004; bytecode file offset 0xacc8c4"
!SGIlAbstractLimitedExpr methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 expr: recoveredArg3 interval: recoveredArg4 compareEqual: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    expr := recoveredValue0.
    recoveredValue1 := recoveredArg4.
    interval := recoveredValue1.
    recoveredValue2 := interval.
    (recoveredValue2) markReadOnly: (true).
    recoveredValue3 := recoveredArg5.
    compareEqual := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    super initializeSource: (recoveredValue4) type: (recoveredValue5).
    ^self
! !

