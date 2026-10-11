"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200014b8; bytecode file offset 0x155d58"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
dwMinimum
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002244; bytecode file offset 0x155d58"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
lMinimum
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002c90; bytecode file offset 0x157170"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
dwMaximum
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003470; bytecode file offset 0x157170"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
lMaximum
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010010; bytecode file offset 0x165330"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
dwMinimum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20010c28; bytecode file offset 0x165330"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
lMinimum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ea8; bytecode file offset 0x166e00"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
lMaximum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001340c; bytecode file offset 0x166e00"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
dwMaximum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20021f48; bytecode file offset 0x175804"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
dwReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (0) size: (6) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200237f4; bytecode file offset 0x177098"
!OSMixercontrolAnon8 methodsFor: 'recovered'!
dwReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (6).
    ^self
! !

