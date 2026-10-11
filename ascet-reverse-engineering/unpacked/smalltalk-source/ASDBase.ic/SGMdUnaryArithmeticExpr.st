"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20041efc; bytecode file offset 0x93e7d8"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
semAnaChildrenCancelled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := leftChild.
    recoveredValue1 := (recoveredValue0) semAnaChildrenCancelled.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041f20; bytecode file offset 0x93e7d8"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isExactScalable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := leftChild.
    recoveredValue1 := (recoveredValue0) isExactScalable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051b50; bytecode file offset 0x94f0e0"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isPureFloat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) child.
    recoveredValue1 := (recoveredValue0) optData.
    recoveredValue2 := (recoveredValue1) needsFloatType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20055b9c; bytecode file offset 0x952a9c"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) unaryArithmeticExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060fbc; bytecode file offset 0x95d978"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlNegExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operator.
    recoveredValue1 := (recoveredValue0) = ('neg').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d188; bytecode file offset 0x969c04"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
child
    | recoveredValue0 |
    recoveredValue0 := leftChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078764; bytecode file offset 0x9757c8"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlUnaryArithmeticExpression
    ^true
! !

"ASDBase.ic method 0x200887dc; bytecode file offset 0x985628"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
children
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) child.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bf74; bytecode file offset 0x988b68"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlIncrement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operator.
    recoveredValue1 := (#('postInc' 'preInc')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008bf88; bytecode file offset 0x988b68"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlPostDec
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operator.
    recoveredValue1 := (#('postDec')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c03c; bytecode file offset 0x988b68"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlPostInc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operator.
    recoveredValue1 := (#('postInc')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c1b8; bytecode file offset 0x988b68"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlDecrement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operator.
    recoveredValue1 := (#('postDec' 'preDec')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20090480; bytecode file offset 0x98cd90"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
exprSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) child.
    recoveredValue1 := (recoveredValue0) exprSize.
    recoveredValue2 := (self) mdlExprCodeSizeCosts.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009dde0; bytecode file offset 0x99a69c"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
value
    | recoveredValue0 |
    (self) assertDeprecated: ('evaluateMdlConstantValue').
    recoveredValue0 := (self) evaluateMdlConstantValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c38b0; bytecode file offset 0x9c058c"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
child: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    leftChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e1270; bytecode file offset 0x9ddb2c"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
cancelSemAna
    | recoveredValue0 |
    recoveredValue0 := leftChild.
    (recoveredValue0) cancelSemAna.
    super cancelSemAna.
    ^self
! !

"ASDBase.ic method 0x200e28e4; bytecode file offset 0x9df430"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlSideEffectExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) isMdlIncrement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDecrement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107b8c; bytecode file offset 0xa044b0"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
hasMdlMaybeUnsuitablePhysicalType
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
            recoveredStack2 := (recoveredStack2) isMdlNegExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgUdiscType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018fd90; bytecode file offset 0xa8c654"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
attributes
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlIncrement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlDecrement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := leftChild.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := super attributes.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020aaac; bytecode file offset 0xb073d8"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlArithmeticConstantValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlArithmeticConstantValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) operator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'abs'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'neg'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020aacc; bytecode file offset 0xb073d8"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlArithmeticConstantIntValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlArithmeticConstantIntValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) operator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'abs'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'neg'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020aaec; bytecode file offset 0xb073d8"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlConstantValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlConstantValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) operator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'abs'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'neg'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020ab0c; bytecode file offset 0xb073d8"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
isMdlNonModifiableExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlNonModifiableExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) operator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'abs'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'neg'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026a890; bytecode file offset 0xb6718c"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
mdlConstantValueInterval
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) operator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'abs'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlConstantValueInterval.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) operator.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'neg'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlConstantValueInterval.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlConstantValueInterval.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026a8b8; bytecode file offset 0xb6718c"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
evaluateMdlConstantValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) operator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'abs'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateMdlConstantValue.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) operator.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'neg'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateMdlConstantValue.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateMdlConstantValue.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20477afc; bytecode file offset 0xd743f4"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
createIleExpr: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) operator.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := 'abs'.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) equals: (recoveredBlock7Stack1).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 28].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) abs.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) operator.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := 'neg'.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) equals: (recoveredBlock7Stack1).
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 38] ifFalse: [recoveredBlock7PC := 44].
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) neg.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) operator.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := 'preDec'.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) equals: (recoveredBlock7Stack1).
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 54] ifFalse: [recoveredBlock7PC := 63].
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) preDec: (recoveredBlock7Stack1).
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) operator.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack1 := 'preInc'.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) equals: (recoveredBlock7Stack1).
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 72] ifFalse: [recoveredBlock7PC := 81].
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) preInc: (recoveredBlock7Stack1).
            recoveredBlock7PC := 80.
        ].
        recoveredBlock7Step = 80 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) operator.
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            recoveredBlock7Stack1 := 'postDec'.
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 85 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) equals: (recoveredBlock7Stack1).
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 90] ifFalse: [recoveredBlock7PC := 99].
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 93.
        ].
        recoveredBlock7Step = 93 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 96.
        ].
        recoveredBlock7Step = 96 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) postDec: (recoveredBlock7Stack1).
            recoveredBlock7PC := 98.
        ].
        recoveredBlock7Step = 98 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 99 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 100.
        ].
        recoveredBlock7Step = 100 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 101.
        ].
        recoveredBlock7Step = 101 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) operator.
            recoveredBlock7PC := 102.
        ].
        recoveredBlock7Step = 102 ifTrue: [
            recoveredBlock7Stack2 := 'postInc'.
            recoveredBlock7PC := 104.
        ].
        recoveredBlock7Step = 104 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) equals: (recoveredBlock7Stack2).
            recoveredBlock7PC := 106.
        ].
        recoveredBlock7Step = 106 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 110] ifFalse: [recoveredBlock7PC := 120].
        ].
        recoveredBlock7Step = 110 ifTrue: [
            recoveredBlock7PC := 111.
        ].
        recoveredBlock7Step = 111 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 114.
        ].
        recoveredBlock7Step = 114 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 117.
        ].
        recoveredBlock7Step = 117 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) postInc: (recoveredBlock7Stack1).
            recoveredBlock7PC := 119.
        ].
        recoveredBlock7Step = 119 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 120 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20551ed0; bytecode file offset 0xe4e808"
!SGMdUnaryArithmeticExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) operator.
    recoveredBlock5Value0
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'neg'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := [
    '-'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := 'abs'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := [
    ''
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack7 := 'preInc'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack8 := [
    '++'
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack9 := 'preDec'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack10 := [
    '--'
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack11 := 'postInc'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack12 := [
    ''
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack13 := 'postDec'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack14 := [
    ''
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack15 := [
    | recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := [
    false
].
            recoveredBlock75PC := 84.
        ].
        recoveredBlock75Step = 84 ifTrue: [
            recoveredBlock75PC := 90.
        ].
        recoveredBlock75Step = 90 ifTrue: [
            recoveredBlock75Stack2 := [
    | recoveredBlock75Block90Value0 recoveredBlock75Block90Value1 |
    recoveredBlock75Block90Value0 := (self) operator.
    recoveredBlock75Block90Value1 := ('Unknown unary operator ') , (recoveredBlock75Block90Value0).
    recoveredBlock75Block90Value1
].
            recoveredBlock75PC := 103.
        ].
        recoveredBlock75Step = 103 ifTrue: [
            recoveredBlock75Stack0 := (recoveredBlock75Stack0) ileAssert: (recoveredBlock75Stack1) message: (recoveredBlock75Stack2).
            recoveredBlock75PC := 105.
        ].
        recoveredBlock75Step = 105 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack0.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) case: (recoveredStack3) do: (recoveredStack4) case: (recoveredStack5) do: (recoveredStack6) case: (recoveredStack7) do: (recoveredStack8) case: (recoveredStack9) do: (recoveredStack10) case: (recoveredStack11) do: (recoveredStack12) case: (recoveredStack13) do: (recoveredStack14) others: (recoveredStack15).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock117Value0 |
    recoveredBlock117Value0 := (self) operator.
    recoveredBlock117Value0
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 'neg'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := 'abs'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := [
    '.abs()'
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack6 := 'preInc'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack7 := [
    ''
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack8 := 'preDec'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack9 := [
    ''
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack10 := 'postInc'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack11 := [
    '++'
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack12 := 'postDec'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack13 := [
    '--'
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock187Stack0 recoveredBlock187Stack1 recoveredBlock187Stack2 recoveredBlock187Stack3 recoveredBlock187PC recoveredBlock187Step recoveredBlock187Done recoveredBlock187Result |
    recoveredBlock187Stack0 := self.
    recoveredBlock187PC := 194.
    recoveredBlock187Done := false.
    [recoveredBlock187Done not] whileTrue: [
        recoveredBlock187Step := recoveredBlock187PC.
        recoveredBlock187Step = 194 ifTrue: [
            recoveredBlock187Stack1 := [
    false
].
            recoveredBlock187PC := 196.
        ].
        recoveredBlock187Step = 196 ifTrue: [
            recoveredBlock187PC := 202.
        ].
        recoveredBlock187Step = 202 ifTrue: [
            recoveredBlock187Stack2 := [
    | recoveredBlock187Block202Value0 recoveredBlock187Block202Value1 |
    recoveredBlock187Block202Value0 := (self) operator.
    recoveredBlock187Block202Value1 := ('Unknown unary operator ') , (recoveredBlock187Block202Value0).
    recoveredBlock187Block202Value1
].
            recoveredBlock187PC := 215.
        ].
        recoveredBlock187Step = 215 ifTrue: [
            recoveredBlock187Stack0 := (recoveredBlock187Stack0) ileAssert: (recoveredBlock187Stack1) message: (recoveredBlock187Stack2).
            recoveredBlock187PC := 217.
        ].
        recoveredBlock187Step = 217 ifTrue: [
            recoveredBlock187Result := recoveredBlock187Stack0.
            recoveredBlock187Done := true.
        ].
    ].
    recoveredBlock187Result
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) case: (recoveredStack6) do: (recoveredStack7) case: (recoveredStack8) do: (recoveredStack9) case: (recoveredStack10) do: (recoveredStack11) case: (recoveredStack12) do: (recoveredStack13) others: (recoveredStack14).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

