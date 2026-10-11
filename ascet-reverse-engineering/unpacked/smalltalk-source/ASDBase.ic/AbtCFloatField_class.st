"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013044; bytecode file offset 0x912098"
!AbtCFloatField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := Float.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072d18; bytecode file offset 0x96f6d4"
!AbtCFloatField class methodsFor: 'recovered'!
length
    ^4
! !

"ASDBase.ic method 0x200870b0; bytecode file offset 0x98396c"
!AbtCFloatField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) float32At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a22cc; bytecode file offset 0x99ebdc"
!AbtCFloatField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ddc6c; bytecode file offset 0x9da530"
!AbtCFloatField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) abtAsNumber.
    recoveredValue5 := (recoveredValue4) asFloat.
    recoveredValue6 := (recoveredValue1) float32At: (recoveredValue2) put: (recoveredValue5).
    ^recoveredValue6
! !

