"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001158; bytecode file offset 0x155d58"
!OSMixercontrol methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000311c; bytecode file offset 0x157170"
!OSMixercontrol methodsFor: 'recovered'!
dwControlID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003a6c; bytecode file offset 0x157f64"
!OSMixercontrol methodsFor: 'recovered'!
dwControlType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004c14; bytecode file offset 0x1589a4"
!OSMixercontrol methodsFor: 'recovered'!
fdwControl
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200055b8; bytecode file offset 0x159294"
!OSMixercontrol methodsFor: 'recovered'!
cMultipleItems
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e224; bytecode file offset 0x161abc"
!OSMixercontrol methodsFor: 'recovered'!
szShortName
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (20) size: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20011a5c; bytecode file offset 0x165330"
!OSMixercontrol methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200121ac; bytecode file offset 0x166e00"
!OSMixercontrol methodsFor: 'recovered'!
dwControlID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013cac; bytecode file offset 0x1683c0"
!OSMixercontrol methodsFor: 'recovered'!
dwControlType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015338; bytecode file offset 0x169290"
!OSMixercontrol methodsFor: 'recovered'!
fdwControl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c5c; bytecode file offset 0x169eb4"
!OSMixercontrol methodsFor: 'recovered'!
cMultipleItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001eff0; bytecode file offset 0x172888"
!OSMixercontrol methodsFor: 'recovered'!
szName
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (36) size: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x2001f358; bytecode file offset 0x172bf4"
!OSMixercontrol methodsFor: 'recovered'!
Bounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSMixercontrolAnon8.
    recoveredValue1 := (self) structAt: (100) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f40c; bytecode file offset 0x172ca8"
!OSMixercontrol methodsFor: 'recovered'!
Metrics
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSMixercontrolAnon9.
    recoveredValue1 := (self) structAt: (124) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2002031c; bytecode file offset 0x173c20"
!OSMixercontrol methodsFor: 'recovered'!
Bounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (100) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020650; bytecode file offset 0x173ee8"
!OSMixercontrol methodsFor: 'recovered'!
Metrics: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (124) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023bc4; bytecode file offset 0x17745c"
!OSMixercontrol methodsFor: 'recovered'!
szShortName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (20) put: (recoveredValue0) size: (16).
    ^self
! !

"psupp.ic method 0x20025700; bytecode file offset 0x178f98"
!OSMixercontrol methodsFor: 'recovered'!
szName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (36) put: (recoveredValue0) size: (64).
    ^self
! !

