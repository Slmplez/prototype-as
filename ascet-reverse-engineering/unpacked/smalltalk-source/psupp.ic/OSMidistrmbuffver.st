"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001518; bytecode file offset 0x155d58"
!OSMidistrmbuffver methodsFor: 'recovered'!
dwVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003080; bytecode file offset 0x157170"
!OSMidistrmbuffver methodsFor: 'recovered'!
dwMid
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003fdc; bytecode file offset 0x157f64"
!OSMidistrmbuffver methodsFor: 'recovered'!
dwOEMVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200118e8; bytecode file offset 0x165330"
!OSMidistrmbuffver methodsFor: 'recovered'!
dwVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013274; bytecode file offset 0x166e00"
!OSMidistrmbuffver methodsFor: 'recovered'!
dwMid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013dfc; bytecode file offset 0x1683c0"
!OSMidistrmbuffver methodsFor: 'recovered'!
dwOEMVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

