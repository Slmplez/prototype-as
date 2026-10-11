"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000458c; bytecode file offset 0x65650"
!SstHeaderedByteMessage class methodsFor: 'recovered'!
headerSize
    ^4
! !

"xxx_dyn.ic method 0x20009da8; bytecode file offset 0x6ae78"
!SstHeaderedByteMessage class methodsFor: 'recovered'!
new: recoveredArg1 headerSize: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) headerSize: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) ensureCapacityTo: (recoveredValue4).
    ^recoveredValue0
! !

