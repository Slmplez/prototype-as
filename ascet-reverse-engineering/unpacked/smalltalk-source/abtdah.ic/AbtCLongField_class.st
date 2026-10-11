"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000414; bytecode file offset 0x10494"
!AbtCLongField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := TranscriptTTY.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000cc0; bytecode file offset 0x10d08"
!AbtCLongField class methodsFor: 'recovered'!
length
    ^4
! !

"abtdah.ic method 0x2000101c; bytecode file offset 0x110ac"
!AbtCLongField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) int32At: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20001504; bytecode file offset 0x1159c"
!AbtCLongField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001ee8; bytecode file offset 0x11f20"
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

