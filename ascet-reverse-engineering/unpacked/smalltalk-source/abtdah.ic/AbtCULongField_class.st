"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000420; bytecode file offset 0x10494"
!AbtCULongField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := TranscriptTTY.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000cb0; bytecode file offset 0x10d08"
!AbtCULongField class methodsFor: 'recovered'!
length
    ^4
! !

"abtdah.ic method 0x2000107c; bytecode file offset 0x110ac"
!AbtCULongField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) uint32At: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20001518; bytecode file offset 0x1159c"
!AbtCULongField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001ea0; bytecode file offset 0x11f20"
!AbtCULongField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) abtAsNumber.
    recoveredValue5 := (recoveredValue4) abrAsCLangULong.
    (recoveredValue1) uint32At: (recoveredValue2) put: (recoveredValue5).
    ^self
! !

