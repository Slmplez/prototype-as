"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003924; bytecode file offset 0x649e8"
!SstForwarder methodsFor: 'recovered'!
sstTarget
    | recoveredValue0 |
    recoveredValue0 := target.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007d8c; bytecode file offset 0x68f50"
!SstForwarder methodsFor: 'recovered'!
sstTarget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    target := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009250; bytecode file offset 0x6a320"
!SstForwarder methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := target.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) selector.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) arguments.
    recoveredValue5 := (recoveredValue0) perform: (recoveredValue2) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

