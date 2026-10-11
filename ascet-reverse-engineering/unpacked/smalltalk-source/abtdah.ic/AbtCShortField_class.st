"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x2000042c; bytecode file offset 0x10494"
!AbtCShortField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := TranscriptTTY.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000c88; bytecode file offset 0x10cb0"
!AbtCShortField class methodsFor: 'recovered'!
length
    ^2
! !

"abtdah.ic method 0x2000104c; bytecode file offset 0x110ac"
!AbtCShortField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) int16At: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20001568; bytecode file offset 0x1159c"
!AbtCShortField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001ed0; bytecode file offset 0x11f20"
!AbtCShortField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) abtAsNumber.
    recoveredValue5 := (recoveredValue4) abrAsCLangShort.
    (recoveredValue1) int16At: (recoveredValue2) put: (recoveredValue5).
    ^self
! !

