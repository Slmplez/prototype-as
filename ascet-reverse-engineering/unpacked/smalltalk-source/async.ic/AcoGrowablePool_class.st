"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x20000aa8; bytecode file offset 0x7c40"
!AcoGrowablePool class methodsFor: 'recovered'!
size: recoveredArg1 growableBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) size: (recoveredValue0) creationBlock: (recoveredValue1) growableBlock: (recoveredValue2).
    ^recoveredValue3
! !

"async.ic method 0x20000b78; bytecode file offset 0x7d14"
!AcoGrowablePool class methodsFor: 'recovered'!
size: recoveredArg1 creationBlock: recoveredArg2 growableBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super size: (recoveredValue0) creationBlock: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) growableBlock: (recoveredValue3).
    ^recoveredValue4
! !

