"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055974; bytecode file offset 0x952a9c"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractBinaryOptionalServiceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200799ac; bytecode file offset 0x97c330"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
isIleMixedSignedServiceExpr
    ^false
! !

"ASDBase.ic method 0x2008e8ac; bytecode file offset 0x98b308"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
isIleLimitLowerServiceExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) serviceLabel.
    recoveredValue1 := SGCgServiceTable.
    recoveredValue2 := (recoveredValue1) limitLowerServiceLabel.
    recoveredValue3 := (recoveredValue0) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e924; bytecode file offset 0x98b308"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
isIleMinServiceExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) serviceLabel.
    recoveredValue1 := SGCgServiceTable.
    recoveredValue2 := (recoveredValue1) minServiceLabel.
    recoveredValue3 := (recoveredValue0) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e984; bytecode file offset 0x98b308"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
isIleLimitUpperServiceExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) serviceLabel.
    recoveredValue1 := SGCgServiceTable.
    recoveredValue2 := (recoveredValue1) limitUpperServiceLabel.
    recoveredValue3 := (recoveredValue0) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e9b4; bytecode file offset 0x98b308"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
isIleMaxServiceExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) serviceLabel.
    recoveredValue1 := SGCgServiceTable.
    recoveredValue2 := (recoveredValue1) maxServiceLabel.
    recoveredValue3 := (recoveredValue0) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200970fc; bytecode file offset 0x9939e8"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
changeIleType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createCastExpr: (self) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cc1bc; bytecode file offset 0x9c8f90"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
serviceSpecificationKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) serviceLabel.
    recoveredValue2 := (self) shortCType.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cc444; bytecode file offset 0x9c8f90"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) serviceKey.
    recoveredValue2 := (self) shortCType.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2032be50; bytecode file offset 0xc2873c"
!SGIlAbstractBinaryOptionalServiceExpr methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super addServiceArgs: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) shortCType.
    (recoveredValue2) at: ('t1') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) longCType.
    (recoveredValue4) at: ('ft1') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) firstOperand.
    recoveredValue8 := (recoveredValue7) castCType.
    (recoveredValue6) at: ('c1') put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) shortCType.
    (recoveredValue9) at: ('t2') put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := (self) longCType.
    (recoveredValue11) at: ('ft2') put: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := (self) secondOperand.
    recoveredValue15 := (recoveredValue14) castCType.
    (recoveredValue13) at: ('c2') put: (recoveredValue15).
    ^recoveredValue1
! !

