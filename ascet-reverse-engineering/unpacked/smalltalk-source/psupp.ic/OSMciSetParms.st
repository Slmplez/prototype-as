"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200021b4; bytecode file offset 0x155d58"
!OSMciSetParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200032e4; bytecode file offset 0x157170"
!OSMciSetParms methodsFor: 'recovered'!
dwTimeFormat
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004078; bytecode file offset 0x157f64"
!OSMciSetParms methodsFor: 'recovered'!
dwAudio
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fcf8; bytecode file offset 0x165330"
!OSMciSetParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200122d8; bytecode file offset 0x166e00"
!OSMciSetParms methodsFor: 'recovered'!
dwTimeFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200143b4; bytecode file offset 0x1683c0"
!OSMciSetParms methodsFor: 'recovered'!
dwAudio: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

