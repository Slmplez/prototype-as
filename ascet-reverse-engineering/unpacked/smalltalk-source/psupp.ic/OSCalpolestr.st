"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001b30; bytecode file offset 0x155d58"
!OSCalpolestr methodsFor: 'recovered'!
cElems
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fb78; bytecode file offset 0x165330"
!OSCalpolestr methodsFor: 'recovered'!
cElems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200121f4; bytecode file offset 0x166e00"
!OSCalpolestr methodsFor: 'recovered'!
pElems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20029ef8; bytecode file offset 0x17d79c"
!OSCalpolestr methodsFor: 'recovered'!
pElems
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := OSOleStringZ.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

