"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013bf0; bytecode file offset 0x912098"
!AbtCLongField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := Integer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072ca0; bytecode file offset 0x96f6d4"
!AbtCLongField class methodsFor: 'recovered'!
length
    ^4
! !

"ASDBase.ic method 0x200870a0; bytecode file offset 0x98396c"
!AbtCLongField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) int32At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a231c; bytecode file offset 0x99ebdc"
!AbtCLongField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ddcdc; bytecode file offset 0x9da5a0"
!AbtCLongField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) abtAsNumber.
    recoveredValue5 := (recoveredValue4) abrAsCLangLong.
    (recoveredValue1) int32At: (recoveredValue2) put: (recoveredValue5).
    ^self
! !

