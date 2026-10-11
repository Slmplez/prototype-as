"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001ea8; bytecode file offset 0x155d58"
!OSImageBaseRelocation methodsFor: 'recovered'!
VirtualAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002c6c; bytecode file offset 0x157170"
!OSImageBaseRelocation methodsFor: 'recovered'!
SizeOfBlock
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20011930; bytecode file offset 0x165330"
!OSImageBaseRelocation methodsFor: 'recovered'!
VirtualAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012290; bytecode file offset 0x166e00"
!OSImageBaseRelocation methodsFor: 'recovered'!
SizeOfBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

