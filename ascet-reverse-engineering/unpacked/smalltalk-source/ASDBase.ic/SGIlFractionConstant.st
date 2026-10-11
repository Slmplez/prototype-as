"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200092c0; bytecode file offset 0x908be4"
!SGIlFractionConstant methodsFor: 'recovered'!
ileCosts
    | recoveredValue0 |
    recoveredValue0 := (self) ileNumericalPrecisionCosts.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a604; bytecode file offset 0x908be4"
!SGIlFractionConstant methodsFor: 'recovered'!
ileCommonFactor
    | recoveredValue0 |
    recoveredValue0 := (self) ileNumExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200554c4; bytecode file offset 0x952a9c"
!SGIlFractionConstant methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fractionConst: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077b1c; bytecode file offset 0x9757c8"
!SGIlFractionConstant methodsFor: 'recovered'!
isIleFraction
    ^true
! !

"ASDBase.ic method 0x2007bec4; bytecode file offset 0x97c330"
!SGIlFractionConstant methodsFor: 'recovered'!
isIleZeroInInterval
    ^false
! !

"ASDBase.ic method 0x2008f694; bytecode file offset 0x98c228"
!SGIlFractionConstant methodsFor: 'recovered'!
asIleIntConstant
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) value.
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := (recoveredValue0) createIntConstant: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200907f0; bytecode file offset 0x98d0ec"
!SGIlFractionConstant methodsFor: 'recovered'!
isIleConstantValueZero
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) numerator.
    recoveredValue2 := (recoveredValue1) = (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a1bf4; bytecode file offset 0x99e4b4"
!SGIlFractionConstant methodsFor: 'recovered'!
isIleConstantValueOne
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) numerator.
    recoveredValue2 := (self) value.
    recoveredValue3 := (recoveredValue2) denominator.
    recoveredValue4 := (recoveredValue1) == (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b43d0; bytecode file offset 0x9b0c8c"
!SGIlFractionConstant methodsFor: 'recovered'!
ileNumericalPrecisionCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileRuntimeCostsOfExpr.
    recoveredValue1 := (self) ileRuntimeCostsOfConstant.
    recoveredValue2 := (recoveredValue1) * (2).
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2018ff98; bytecode file offset 0xa8c8c4"
!SGIlFractionConstant methodsFor: 'recovered'!
ileNumExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) value.
    recoveredBlock7Value2 := (recoveredBlock7Value1) numerator.
    recoveredBlock7Value3 := (recoveredBlock7Value0) scalarConstant: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2018ffd8; bytecode file offset 0xa8c8c4"
!SGIlFractionConstant methodsFor: 'recovered'!
ileDenomExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) value.
    recoveredBlock7Value2 := (recoveredBlock7Value1) denominator.
    recoveredBlock7Value3 := (recoveredBlock7Value0) scalarConstant: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201e4414; bytecode file offset 0xae0ce0"
!SGIlFractionConstant methodsFor: 'recovered'!
neg
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundToInfinity.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRepresentableFraction: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) roundToInfinity.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRepresentableFraction: (recoveredStack1) roundToInfinity: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

