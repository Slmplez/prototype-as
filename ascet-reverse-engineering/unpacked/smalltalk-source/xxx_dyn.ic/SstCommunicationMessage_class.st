"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200055a4; bytecode file offset 0x66a34"
!SstCommunicationMessage class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20006040; bytecode file offset 0x6710c"
!SstCommunicationMessage class methodsFor: 'recovered'!
contents: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) contents: (recoveredValue2).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20009e30; bytecode file offset 0x6af28"
!SstCommunicationMessage class methodsFor: 'recovered'!
header: recoveredArg1 contents: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) header: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) contents: (recoveredValue4).
    ^recoveredValue0
! !

