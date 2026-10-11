"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001f98; bytecode file offset 0x155d58"
!OSCandidateform methodsFor: 'recovered'!
dwIndex
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002f90; bytecode file offset 0x157170"
!OSCandidateform methodsFor: 'recovered'!
dwStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dc68; bytecode file offset 0x161514"
!OSCandidateform methodsFor: 'recovered'!
ptCurrentPos
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dfbc; bytecode file offset 0x161938"
!OSCandidateform methodsFor: 'recovered'!
rcArea
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010c1c; bytecode file offset 0x165330"
!OSCandidateform methodsFor: 'recovered'!
dwIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c08; bytecode file offset 0x166e00"
!OSCandidateform methodsFor: 'recovered'!
dwStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013fc4; bytecode file offset 0x1683c0"
!OSCandidateform methodsFor: 'recovered'!
ptCurrentPos: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016340; bytecode file offset 0x169eb4"
!OSCandidateform methodsFor: 'recovered'!
rcArea: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

