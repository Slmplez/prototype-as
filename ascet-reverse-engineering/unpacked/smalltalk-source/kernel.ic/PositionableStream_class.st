"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20006610; bytecode file offset 0x51550"
!PositionableStream class methodsFor: 'recovered'!
on: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) collection: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) reset.
    ^recoveredValue3
! !

"kernel.ic method 0x20006ba4; bytecode file offset 0x51ac4"
!PositionableStream class methodsFor: 'recovered'!
onLocalizedString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Locale.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) preferredStringClass.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) on: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x2000a19c; bytecode file offset 0x550b4"
!PositionableStream class methodsFor: 'recovered'!
on: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue0) copyFrom: (1) to: (recoveredValue1).
    recoveredValue3 := (self) on: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) + (-1).
    recoveredValue6 := (recoveredValue3) position: (recoveredValue5).
    ^recoveredValue6
! !

