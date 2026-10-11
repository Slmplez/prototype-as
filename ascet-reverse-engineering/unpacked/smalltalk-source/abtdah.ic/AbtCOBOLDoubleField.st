"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200003a8; bytecode file offset 0x10494"
!AbtCOBOLDoubleField methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := EsWeakDictionary.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000cf4; bytecode file offset 0x10d24"
!AbtCOBOLDoubleField methodsFor: 'recovered'!
length
    ^8
! !

"abtdah.ic method 0x20001610; bytecode file offset 0x11658"
!AbtCOBOLDoubleField methodsFor: 'recovered'!
analyzePic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) length.
    recoveredValue1 := super length: (recoveredValue0).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001c5c; bytecode file offset 0x11c9c"
!AbtCOBOLDoubleField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (recoveredValue1) float64At: (recoveredValue4).
    ^recoveredValue5
! !

"abtdah.ic method 0x200025b8; bytecode file offset 0x125f0"
!AbtCOBOLDoubleField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) abtAsNumber.
    recoveredValue7 := (recoveredValue6) asFloat.
    (recoveredValue1) float64At: (recoveredValue4) put: (recoveredValue7).
    ^self
! !

