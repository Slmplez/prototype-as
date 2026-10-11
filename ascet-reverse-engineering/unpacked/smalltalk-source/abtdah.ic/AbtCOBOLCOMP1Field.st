"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x2000045c; bytecode file offset 0x10494"
!AbtCOBOLCOMP1Field methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := EsWeakDictionary.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000500; bytecode file offset 0x10580"
!AbtCOBOLCOMP1Field methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) length.
    ^recoveredValue1
! !

"abtdah.ic method 0x20001624; bytecode file offset 0x11658"
!AbtCOBOLCOMP1Field methodsFor: 'recovered'!
analyzePic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) length.
    recoveredValue1 := super length: (recoveredValue0).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001c6c; bytecode file offset 0x11c9c"
!AbtCOBOLCOMP1Field methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (recoveredValue1) float32At: (recoveredValue4).
    ^recoveredValue5
! !

"abtdah.ic method 0x20002590; bytecode file offset 0x125c8"
!AbtCOBOLCOMP1Field methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) abtAsNumber.
    recoveredValue7 := (recoveredValue6) asFloat.
    recoveredValue8 := (recoveredValue1) float32At: (recoveredValue4) put: (recoveredValue7).
    ^recoveredValue8
! !

