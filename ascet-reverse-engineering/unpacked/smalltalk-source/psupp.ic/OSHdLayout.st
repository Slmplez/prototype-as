"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001163c; bytecode file offset 0x165330"
!OSHdLayout methodsFor: 'recovered'!
prc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012350; bytecode file offset 0x166e00"
!OSHdLayout methodsFor: 'recovered'!
pwpos: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aba4; bytecode file offset 0x16ea70"
!OSHdLayout methodsFor: 'recovered'!
prc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b664; bytecode file offset 0x16f1fc"
!OSHdLayout methodsFor: 'recovered'!
pwpos
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSWindowpos.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

