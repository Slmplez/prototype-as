"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x2000039c; bytecode file offset 0x10494"
!AbtCDoubleField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := EsWeakDictionary.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000cfc; bytecode file offset 0x10d24"
!AbtCDoubleField class methodsFor: 'recovered'!
length
    ^8
! !

"abtdah.ic method 0x20000fec; bytecode file offset 0x110ac"
!AbtCDoubleField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) float64At: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20001540; bytecode file offset 0x1159c"
!AbtCDoubleField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001e60; bytecode file offset 0x11eb0"
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

