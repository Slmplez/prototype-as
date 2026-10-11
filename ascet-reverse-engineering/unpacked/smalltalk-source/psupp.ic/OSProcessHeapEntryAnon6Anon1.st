"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200101b4; bytecode file offset 0x165330"
!OSProcessHeapEntryAnon6Anon1 methodsFor: 'recovered'!
hMem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001afa0; bytecode file offset 0x16ea70"
!OSProcessHeapEntryAnon6Anon1 methodsFor: 'recovered'!
hMem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20022088; bytecode file offset 0x175924"
!OSProcessHeapEntryAnon6Anon1 methodsFor: 'recovered'!
dwReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (4) size: (3) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023920; bytecode file offset 0x1771b8"
!OSProcessHeapEntryAnon6Anon1 methodsFor: 'recovered'!
dwReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (4) put: (recoveredValue0) size: (3).
    ^self
! !

