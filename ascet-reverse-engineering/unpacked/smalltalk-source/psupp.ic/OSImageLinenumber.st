"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003164; bytecode file offset 0x157170"
!OSImageLinenumber methodsFor: 'recovered'!
Linenumber
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ceb0; bytecode file offset 0x160b8c"
!OSImageLinenumber methodsFor: 'recovered'!
Type
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSImageLinenumberAnon1.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010b5c; bytecode file offset 0x165330"
!OSImageLinenumber methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012758; bytecode file offset 0x166e00"
!OSImageLinenumber methodsFor: 'recovered'!
Linenumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

