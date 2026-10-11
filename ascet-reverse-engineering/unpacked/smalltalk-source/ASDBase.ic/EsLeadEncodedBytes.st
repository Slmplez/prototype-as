"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200078d4; bytecode file offset 0x908be4"
!EsLeadEncodedBytes methodsFor: 'recovered'!
abtAsSBString
    | recoveredValue0 |
    recoveredValue0 := (self) asSBString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000aacc; bytecode file offset 0x908be4"
!EsLeadEncodedBytes methodsFor: 'recovered'!
abtAsDBString
    | recoveredValue0 |
    recoveredValue0 := (self) asDBString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027ac0; bytecode file offset 0x92454c"
!EsLeadEncodedBytes methodsFor: 'recovered'!
abtCanBeSBString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isEncoded.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e87b0; bytecode file offset 0x9e5084"
!EsLeadEncodedBytes methodsFor: 'recovered'!
emWriteLiteralOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    (recoveredValue1) emWriteClass: (recoveredValue2).
    (recoveredValue0) writeByteArray: (self).
    ^self
! !

