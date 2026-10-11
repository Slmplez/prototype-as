"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001524; bytecode file offset 0x155d58"
!OSMciPlayParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002fcc; bytecode file offset 0x157170"
!OSMciPlayParms methodsFor: 'recovered'!
dwFrom
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003db4; bytecode file offset 0x157f64"
!OSMciPlayParms methodsFor: 'recovered'!
dwTo
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200101e4; bytecode file offset 0x165330"
!OSMciPlayParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200125e4; bytecode file offset 0x166e00"
!OSMciPlayParms methodsFor: 'recovered'!
dwFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d0c; bytecode file offset 0x1683c0"
!OSMciPlayParms methodsFor: 'recovered'!
dwTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

