"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016acc; bytecode file offset 0x92209c"
!SGIlGetHighPart methodsFor: 'recovered'!
serviceLabel
    ^'GETHIGHPART'
! !

"ASDBase.ic method 0x200550f8; bytecode file offset 0x952a9c"
!SGIlGetHighPart methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getHighPartServiceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007676c; bytecode file offset 0x9757c8"
!SGIlGetHighPart methodsFor: 'recovered'!
isIleGetHighPartExpr
    ^true
! !

"ASDBase.ic method 0x200775a4; bytecode file offset 0x9757c8"
!SGIlGetHighPart methodsFor: 'recovered'!
isIleDivServiceExpr
    ^true
! !

"ASDBase.ic method 0x2007ad7c; bytecode file offset 0x97c330"
!SGIlGetHighPart methodsFor: 'recovered'!
isIleBinaryOrTernaryServiceExpr
    ^false
! !

"ASDBase.ic method 0x2007cf64; bytecode file offset 0x97c330"
!SGIlGetHighPart methodsFor: 'recovered'!
isIleBinOpServiceExpr
    ^false
! !

"ASDBase.ic method 0x200888b8; bytecode file offset 0x985628"
!SGIlGetHighPart methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) serviceLabel.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20136444; bytecode file offset 0xa32d0c"
!SGIlGetHighPart methodsFor: 'recovered'!
createFirstOperand: recoveredArg1 secondOperand: recoveredArg2 alternativeExpr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) goalInterval.
    recoveredValue4 := (self) limitOverflow.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (self) source.
    recoveredValue7 := (recoveredValue0) createGetHighPartExpr: (recoveredValue1) secondOperand: (recoveredValue2) goalInterval: (recoveredValue3) limit: (recoveredValue4) alternative: (recoveredValue5) source: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201b4350; bytecode file offset 0xab0c24"
!SGIlGetHighPart methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super addServiceArgs: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) type.
    recoveredValue4 := (recoveredValue3) getImplType.
    recoveredValue5 := (recoveredValue4) byteSize.
    recoveredValue6 := (recoveredValue5) * (8).
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue2) at: ('il') put: (recoveredValue7).
    ^recoveredValue1
! !

