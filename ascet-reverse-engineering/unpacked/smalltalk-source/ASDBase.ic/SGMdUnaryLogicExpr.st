"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20029a54; bytecode file offset 0x934580"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
isMdlSideEffectExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) child.
    recoveredValue1 := (recoveredValue0) isMdlSideEffectExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002be64; bytecode file offset 0x934580"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
isMdlNonModifiableExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) child.
    recoveredValue1 := (recoveredValue0) isMdlNonModifiableExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200561d8; bytecode file offset 0x952a9c"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) unaryLogicExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c824; bytecode file offset 0x9692b0"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
child
    | recoveredValue0 |
    recoveredValue0 := leftChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cc30; bytecode file offset 0x969c04"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
operator
    | recoveredValue0 |
    recoveredValue0 := operator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200887b4; bytecode file offset 0x985628"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
children
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) child.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200904d0; bytecode file offset 0x98cd90"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
exprSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) child.
    recoveredValue1 := (recoveredValue0) exprSize.
    recoveredValue2 := (self) mdlExprCodeSizeCosts.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c2cfc; bytecode file offset 0x9bfde0"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
child: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    leftChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3c08; bytecode file offset 0x9c058c"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
operator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operator := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201d94a8; bytecode file offset 0xad5d70"
!SGMdUnaryLogicExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) operator.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPut: ($().
    recoveredValue3 := (self) child.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) nextPut: ($)).
    ^self
! !

