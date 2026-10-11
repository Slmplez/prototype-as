"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003638; bytecode file offset 0x157170"
!OSValent methodsFor: 'recovered'!
veValuelen
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003b08; bytecode file offset 0x157f64"
!OSValent methodsFor: 'recovered'!
veValueptr
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004974; bytecode file offset 0x1589a4"
!OSValent methodsFor: 'recovered'!
veType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20010940; bytecode file offset 0x165330"
!OSValent methodsFor: 'recovered'!
veValuename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200123f8; bytecode file offset 0x166e00"
!OSValent methodsFor: 'recovered'!
veValuelen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200147f8; bytecode file offset 0x1683c0"
!OSValent methodsFor: 'recovered'!
veValueptr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014dec; bytecode file offset 0x169290"
!OSValent methodsFor: 'recovered'!
veType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001acd0; bytecode file offset 0x16ea70"
!OSValent methodsFor: 'recovered'!
veValuename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

