"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200003cc; bytecode file offset 0x10494"
!AbtCCharField class methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := OrderedCollection.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000102c; bytecode file offset 0x110ac"
!AbtCCharField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) char8At: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20001750; bytecode file offset 0x11780"
!AbtCCharField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    (recoveredValue1) char8At: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

