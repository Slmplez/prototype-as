"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a1c; bytecode file offset 0x155d58"
!OSMallocFreeStruct methodsFor: 'recovered'!
pfnAllocate
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002c0c; bytecode file offset 0x157170"
!OSMallocFreeStruct methodsFor: 'recovered'!
pfnFree
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200100b8; bytecode file offset 0x165330"
!OSMallocFreeStruct methodsFor: 'recovered'!
pfnAllocate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012734; bytecode file offset 0x166e00"
!OSMallocFreeStruct methodsFor: 'recovered'!
pfnFree: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

