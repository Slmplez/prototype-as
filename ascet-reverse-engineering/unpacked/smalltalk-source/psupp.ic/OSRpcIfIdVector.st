"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000222c; bytecode file offset 0x155d58"
!OSRpcIfIdVector methodsFor: 'recovered'!
Count
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010a00; bytecode file offset 0x165330"
!OSRpcIfIdVector methodsFor: 'recovered'!
Count: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20029e68; bytecode file offset 0x17d79c"
!OSRpcIfIdVector methodsFor: 'recovered'!
IfId
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := OSRpcIfId.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

