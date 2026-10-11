"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000360; bytecode file offset 0x10494"
!AbtCByteField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := TranscriptTTY.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000c6c; bytecode file offset 0x10c94"
!AbtCByteField class methodsFor: 'recovered'!
length
    ^1
! !

"abtdah.ic method 0x2000106c; bytecode file offset 0x110ac"
!AbtCByteField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) uint8At: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x200014f0; bytecode file offset 0x1159c"
!AbtCByteField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001730; bytecode file offset 0x11780"
!AbtCByteField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    (recoveredValue1) uint8At: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

