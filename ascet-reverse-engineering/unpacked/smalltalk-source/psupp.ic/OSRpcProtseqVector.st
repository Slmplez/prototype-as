"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000192c; bytecode file offset 0x155d58"
!OSRpcProtseqVector methodsFor: 'recovered'!
Count
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fa34; bytecode file offset 0x165330"
!OSRpcProtseqVector methodsFor: 'recovered'!
Count: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20029ee0; bytecode file offset 0x17d79c"
!OSRpcProtseqVector methodsFor: 'recovered'!
Protseq
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := OSUInt8.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

