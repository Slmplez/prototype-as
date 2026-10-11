"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200003fc; bytecode file offset 0x10494"
!AbtCUShortField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := TranscriptTTY.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000c80; bytecode file offset 0x10cb0"
!AbtCUShortField class methodsFor: 'recovered'!
length
    ^2
! !

"abtdah.ic method 0x2000103c; bytecode file offset 0x110ac"
!AbtCUShortField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) uint16At: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x2000152c; bytecode file offset 0x1159c"
!AbtCUShortField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001eb8; bytecode file offset 0x11f20"
!AbtCUShortField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) abtAsNumber.
    recoveredValue5 := (recoveredValue4) abrAsCLangUShort.
    (recoveredValue1) uint16At: (recoveredValue2) put: (recoveredValue5).
    ^self
! !

