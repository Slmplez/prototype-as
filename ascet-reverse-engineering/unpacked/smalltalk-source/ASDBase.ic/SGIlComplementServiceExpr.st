"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023f24; bytecode file offset 0x92209c"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
serviceLabel
    ^'complement'
! !

"ASDBase.ic method 0x2004124c; bytecode file offset 0x93dd2c"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
firstOperandImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) getImplType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041294; bytecode file offset 0x93dd2c"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
type
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) asRedundantModelType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052320; bytecode file offset 0x94f0e0"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) getImplType.
    recoveredValue2 := (recoveredValue1) getInterval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052640; bytecode file offset 0x94f0e0"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
calculateInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) getImplType.
    recoveredValue2 := (recoveredValue1) getInterval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20054bc4; bytecode file offset 0x952a9c"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) complementServiceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005a208; bytecode file offset 0x956ac4"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
createFirstOperand: recoveredArg1 alternativeExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createComplementServiceExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20073790; bytecode file offset 0x970b34"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
ileNativeInitValue
    ^nil
! !

"ASDBase.ic method 0x2007689c; bytecode file offset 0x9757c8"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
isIleComplementServiceExpr
    ^true
! !

"ASDBase.ic method 0x200ae1e8; bytecode file offset 0x9aaaa4"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
createOp: recoveredArg1 alternativeExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := type.
    recoveredValue3 := (recoveredValue0) createComplementServiceExpr: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e049c; bytecode file offset 0x9dcd80"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) serviceKey.
    recoveredValue2 := (self) firstOperandImplType.
    recoveredValue3 := (recoveredValue2) asShortCType.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2024ff78; bytecode file offset 0xb4c850"
!SGIlComplementServiceExpr methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) firstOperandImplType.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super addServiceArgs: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asShortCType.
    (recoveredValue3) at: ('t1') put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) getDisplayLabel.
    (recoveredValue6) at: ('ft1') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) getDisplayLabel.
    (recoveredValue9) at: ('c1') put: (recoveredValue11).
    ^recoveredValue2
! !

