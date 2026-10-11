"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000ab10; bytecode file offset 0x15e3ac"
!OSHaccel methodsFor: 'recovered'!
destroyAcceleratorTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DestroyAcceleratorTable.
    recoveredValue1 := reference.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20023f50; bytecode file offset 0x1777ec"
!OSHaccel methodsFor: 'recovered'!
copyAcceleratorTable: recoveredArg1 cAccel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CopyAcceleratorTable.
    recoveredValue1 := reference.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200244f8; bytecode file offset 0x1781a4"
!OSHaccel methodsFor: 'recovered'!
isAccelerator: recoveredArg1 lpMsg: recoveredArg2 lpwCmd: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := IsAccelerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

