"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001cd4; bytecode file offset 0x155d58"
!OSCommFaultOffsets methodsFor: 'recovered'!
CommOffset
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200027c4; bytecode file offset 0x1561c4"
!OSCommFaultOffsets methodsFor: 'recovered'!
FaultOffset
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20011024; bytecode file offset 0x165330"
!OSCommFaultOffsets methodsFor: 'recovered'!
CommOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011cfc; bytecode file offset 0x1657d4"
!OSCommFaultOffsets methodsFor: 'recovered'!
FaultOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (2) put: (recoveredValue0).
    ^self
! !

