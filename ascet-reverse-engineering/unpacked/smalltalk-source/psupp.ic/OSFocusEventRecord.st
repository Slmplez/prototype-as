"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d324; bytecode file offset 0x160c04"
!OSFocusEventRecord methodsFor: 'recovered'!
bSetFocus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (0).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fb84; bytecode file offset 0x165330"
!OSFocusEventRecord methodsFor: 'recovered'!
bSetFocus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

