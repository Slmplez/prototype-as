"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000135c; bytecode file offset 0x155d58"
!OSTtpolycurve methodsFor: 'recovered'!
wType
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002674; bytecode file offset 0x1561c4"
!OSTtpolycurve methodsFor: 'recovered'!
cpfx
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bf78; bytecode file offset 0x15fa24"
!OSTtpolycurve methodsFor: 'recovered'!
apfx: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d6a4; bytecode file offset 0x160f90"
!OSTtpolycurve methodsFor: 'recovered'!
apfx
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointfx.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ff08; bytecode file offset 0x165330"
!OSTtpolycurve methodsFor: 'recovered'!
wType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011ca8; bytecode file offset 0x1657d4"
!OSTtpolycurve methodsFor: 'recovered'!
cpfx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

