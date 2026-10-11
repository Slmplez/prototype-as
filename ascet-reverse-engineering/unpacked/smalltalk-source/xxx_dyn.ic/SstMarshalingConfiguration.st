"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200037dc; bytecode file offset 0x649e8"
!SstMarshalingConfiguration methodsFor: 'recovered'!
marshalerClass
    | recoveredValue0 |
    recoveredValue0 := marshalerClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007e04; bytecode file offset 0x68f50"
!SstMarshalingConfiguration methodsFor: 'recovered'!
marshalerClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    marshalerClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009274; bytecode file offset 0x6a340"
!SstMarshalingConfiguration methodsFor: 'recovered'!
instantiateFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := marshalerClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) initializeFrom: (self).
    ^recoveredValue2
! !

