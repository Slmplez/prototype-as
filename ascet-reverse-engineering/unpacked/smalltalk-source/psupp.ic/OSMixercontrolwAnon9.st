"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200018d8; bytecode file offset 0x155d58"
!OSMixercontrolwAnon9 methodsFor: 'recovered'!
cbCustomData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002094; bytecode file offset 0x155d58"
!OSMixercontrolwAnon9 methodsFor: 'recovered'!
cSteps
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2001067c; bytecode file offset 0x165330"
!OSMixercontrolwAnon9 methodsFor: 'recovered'!
cSteps: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001070c; bytecode file offset 0x165330"
!OSMixercontrolwAnon9 methodsFor: 'recovered'!
cbCustomData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20021f68; bytecode file offset 0x175804"
!OSMixercontrolwAnon9 methodsFor: 'recovered'!
dwReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (0) size: (6) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200237b8; bytecode file offset 0x177098"
!OSMixercontrolwAnon9 methodsFor: 'recovered'!
dwReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (6).
    ^self
! !

