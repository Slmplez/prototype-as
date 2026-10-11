"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200019a4; bytecode file offset 0x155d58"
!OSScontextQueue methodsFor: 'recovered'!
NumberOfObjects
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010208; bytecode file offset 0x165330"
!OSScontextQueue methodsFor: 'recovered'!
NumberOfObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012dc4; bytecode file offset 0x166e00"
!OSScontextQueue methodsFor: 'recovered'!
ArrayOfObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20029e98; bytecode file offset 0x17d79c"
!OSScontextQueue methodsFor: 'recovered'!
ArrayOfObjects
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := OSNdrScontext.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

