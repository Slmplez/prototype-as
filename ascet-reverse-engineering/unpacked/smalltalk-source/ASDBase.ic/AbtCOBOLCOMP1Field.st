"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200150fc; bytecode file offset 0x912098"
!AbtCOBOLCOMP1Field methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := Float.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002bc64; bytecode file offset 0x934580"
!AbtCOBOLCOMP1Field methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) length.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a5c00; bytecode file offset 0x9a24c0"
!AbtCOBOLCOMP1Field methodsFor: 'recovered'!
analyzePic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) length.
    recoveredValue1 := super length: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c9124; bytecode file offset 0x9c5a00"
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

"ASDBase.ic method 0x201118c8; bytecode file offset 0xa0e18c"
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

