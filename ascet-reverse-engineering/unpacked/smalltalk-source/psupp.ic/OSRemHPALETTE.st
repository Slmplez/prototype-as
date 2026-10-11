"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000105c; bytecode file offset 0x155d58"
!OSRemHPALETTE methodsFor: 'recovered'!
cbData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d4e4; bytecode file offset 0x160f90"
!OSRemHPALETTE methodsFor: 'recovered'!
data
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200118b8; bytecode file offset 0x165330"
!OSRemHPALETTE methodsFor: 'recovered'!
cbData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

