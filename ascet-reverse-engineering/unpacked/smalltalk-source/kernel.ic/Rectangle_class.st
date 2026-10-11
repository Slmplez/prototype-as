"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20007e24; bytecode file offset 0x52d78"
!Rectangle class methodsFor: 'recovered'!
origin: recoveredArg1 extent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) origin: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) extent: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20007e4c; bytecode file offset 0x52d78"
!Rectangle class methodsFor: 'recovered'!
origin: recoveredArg1 corner: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) origin: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) corner: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20008ba8; bytecode file offset 0x53abc"
!Rectangle class methodsFor: 'recovered'!
left: recoveredArg1 right: recoveredArg2 top: recoveredArg3 bottom: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue3) @ (recoveredValue4).
    recoveredValue6 := (self) origin: (recoveredValue2) corner: (recoveredValue5).
    ^recoveredValue6
! !

