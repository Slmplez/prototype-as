"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200132fc; bytecode file offset 0x912098"
!AbtCDoubleField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := Float.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007442c; bytecode file offset 0x970de8"
!AbtCDoubleField class methodsFor: 'recovered'!
length
    ^8
! !

"ASDBase.ic method 0x20087070; bytecode file offset 0x98396c"
!AbtCDoubleField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) float64At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a22e0; bytecode file offset 0x99ebdc"
!AbtCDoubleField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ddc54; bytecode file offset 0x9da530"
!AbtCDoubleField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) abtAsNumber.
    recoveredValue5 := (recoveredValue4) asFloat.
    recoveredValue6 := (recoveredValue1) float64At: (recoveredValue2) put: (recoveredValue5).
    ^recoveredValue6
! !

