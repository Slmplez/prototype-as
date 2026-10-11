"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001c8c; bytecode file offset 0x155d58"
!OSTapeSetMediaParameters methodsFor: 'recovered'!
BlockSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010484; bytecode file offset 0x165330"
!OSTapeSetMediaParameters methodsFor: 'recovered'!
BlockSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

