"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20007c54; bytecode file offset 0x52b68"
!EsLocalStackVariable class methodsFor: 'recovered'!
position: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) named: ('<unspecified>') position: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000c04c; bytecode file offset 0x56f68"
!EsLocalStackVariable class methodsFor: 'recovered'!
named: recoveredArg1 position: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) name: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg3.
    (recoveredValue3) frame: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) position: (recoveredValue6).
    ^recoveredValue0
! !

