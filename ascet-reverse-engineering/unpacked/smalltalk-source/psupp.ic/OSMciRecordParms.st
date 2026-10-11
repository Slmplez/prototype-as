"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e9c; bytecode file offset 0x155d58"
!OSMciRecordParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200030f8; bytecode file offset 0x157170"
!OSMciRecordParms methodsFor: 'recovered'!
dwFrom
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003d90; bytecode file offset 0x157f64"
!OSMciRecordParms methodsFor: 'recovered'!
dwTo
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fd1c; bytecode file offset 0x165330"
!OSMciRecordParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012db8; bytecode file offset 0x166e00"
!OSMciRecordParms methodsFor: 'recovered'!
dwFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a2c; bytecode file offset 0x1683c0"
!OSMciRecordParms methodsFor: 'recovered'!
dwTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

