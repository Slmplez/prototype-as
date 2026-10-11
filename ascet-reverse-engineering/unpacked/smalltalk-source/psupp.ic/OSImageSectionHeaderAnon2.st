"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200017d0; bytecode file offset 0x155d58"
!OSImageSectionHeaderAnon2 methodsFor: 'recovered'!
VirtualSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20001f44; bytecode file offset 0x155d58"
!OSImageSectionHeaderAnon2 methodsFor: 'recovered'!
PhysicalAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fa94; bytecode file offset 0x165330"
!OSImageSectionHeaderAnon2 methodsFor: 'recovered'!
PhysicalAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200113b4; bytecode file offset 0x165330"
!OSImageSectionHeaderAnon2 methodsFor: 'recovered'!
VirtualSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

