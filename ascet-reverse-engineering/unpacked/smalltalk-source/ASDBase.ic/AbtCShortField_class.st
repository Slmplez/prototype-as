"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012e88; bytecode file offset 0x912098"
!AbtCShortField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := Integer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072760; bytecode file offset 0x96f1c4"
!AbtCShortField class methodsFor: 'recovered'!
length
    ^2
! !

"ASDBase.ic method 0x20087090; bytecode file offset 0x98396c"
!AbtCShortField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) int16At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a22f4; bytecode file offset 0x99ebdc"
!AbtCShortField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) type: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ddcc4; bytecode file offset 0x9da5a0"
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

