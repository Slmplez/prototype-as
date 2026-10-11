"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200550ec; bytecode file offset 0x952a9c"
!SGIlAbstractUnaryOptionalServiceExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractUnaryOptionalServiceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009710c; bytecode file offset 0x9939e8"
!SGIlAbstractUnaryOptionalServiceExpr methodsFor: 'recovered'!
changeIleType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createCastExpr: (self) type: (recoveredValue1).
    ^recoveredValue2
! !

