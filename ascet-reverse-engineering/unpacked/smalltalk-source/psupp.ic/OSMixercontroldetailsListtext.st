"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200014d0; bytecode file offset 0x155d58"
!OSMixercontroldetailsListtext methodsFor: 'recovered'!
dwParam1
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003884; bytecode file offset 0x157170"
!OSMixercontroldetailsListtext methodsFor: 'recovered'!
dwParam2
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ffc8; bytecode file offset 0x165330"
!OSMixercontroldetailsListtext methodsFor: 'recovered'!
dwParam1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ab8; bytecode file offset 0x166e00"
!OSMixercontroldetailsListtext methodsFor: 'recovered'!
dwParam2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ef64; bytecode file offset 0x1727fc"
!OSMixercontroldetailsListtext methodsFor: 'recovered'!
szName
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (8) size: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x20025674; bytecode file offset 0x178f0c"
!OSMixercontroldetailsListtext methodsFor: 'recovered'!
szName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (8) put: (recoveredValue0) size: (64).
    ^self
! !

