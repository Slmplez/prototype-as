"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001d8bc; bytecode file offset 0x171158"
!OSIUnknown methodsFor: 'recovered'!
addRef
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AddRef.
    recoveredValue1 := (recoveredValue0) callWith: (1) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2001d8d8; bytecode file offset 0x171174"
!OSIUnknown methodsFor: 'recovered'!
release
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Release.
    recoveredValue1 := (recoveredValue0) callWith: (2) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200258a8; bytecode file offset 0x179144"
!OSIUnknown methodsFor: 'recovered'!
queryInterface: recoveredArg1 ppvObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := QueryInterface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (0) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

