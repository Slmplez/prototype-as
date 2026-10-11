"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000156c; bytecode file offset 0x155d58"
!OSSafearraybound methodsFor: 'recovered'!
cElements
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003500; bytecode file offset 0x157170"
!OSSafearraybound methodsFor: 'recovered'!
lLbound
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010c64; bytecode file offset 0x165330"
!OSSafearraybound methodsFor: 'recovered'!
cElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012044; bytecode file offset 0x166e00"
!OSSafearraybound methodsFor: 'recovered'!
lLbound: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

