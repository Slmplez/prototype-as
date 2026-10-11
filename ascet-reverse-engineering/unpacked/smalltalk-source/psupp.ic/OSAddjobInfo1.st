"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003170; bytecode file offset 0x157170"
!OSAddjobInfo1 methodsFor: 'recovered'!
JobId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200115e8; bytecode file offset 0x165330"
!OSAddjobInfo1 methodsFor: 'recovered'!
Path: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012140; bytecode file offset 0x166e00"
!OSAddjobInfo1 methodsFor: 'recovered'!
JobId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ac94; bytecode file offset 0x16ea70"
!OSAddjobInfo1 methodsFor: 'recovered'!
Path
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

