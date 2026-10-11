"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003ad8; bytecode file offset 0x157f64"
!OSNdrScontext methodsFor: 'recovered'!
userContext
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200149a8; bytecode file offset 0x1683c0"
!OSNdrScontext methodsFor: 'recovered'!
userContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200210dc; bytecode file offset 0x174df8"
!OSNdrScontext methodsFor: 'recovered'!
nDRSContextMarshall: recoveredArg1 userRunDownIn: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := NDRSContextMarshall.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20023728; bytecode file offset 0x176fd8"
!OSNdrScontext methodsFor: 'recovered'!
pad: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (2).
    ^self
! !

"psupp.ic method 0x20029df4; bytecode file offset 0x17d6b0"
!OSNdrScontext methodsFor: 'recovered'!
pad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := OSVoid.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

