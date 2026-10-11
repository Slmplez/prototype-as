"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001830; bytecode file offset 0x155d58"
!OSDevnames methodsFor: 'recovered'!
wDriverOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000274c; bytecode file offset 0x1561c4"
!OSDevnames methodsFor: 'recovered'!
wDeviceOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20003158; bytecode file offset 0x157170"
!OSDevnames methodsFor: 'recovered'!
wOutputOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003a20; bytecode file offset 0x1572b8"
!OSDevnames methodsFor: 'recovered'!
wDefault
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x20010b68; bytecode file offset 0x165330"
!OSDevnames methodsFor: 'recovered'!
wDriverOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011dc8; bytecode file offset 0x1657d4"
!OSDevnames methodsFor: 'recovered'!
wDeviceOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f98; bytecode file offset 0x166e00"
!OSDevnames methodsFor: 'recovered'!
wOutputOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013640; bytecode file offset 0x166f5c"
!OSDevnames methodsFor: 'recovered'!
wDefault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

