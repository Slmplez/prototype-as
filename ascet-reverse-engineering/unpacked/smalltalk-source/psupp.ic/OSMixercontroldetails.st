"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001260; bytecode file offset 0x155d58"
!OSMixercontroldetails methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002d50; bytecode file offset 0x157170"
!OSMixercontroldetails methodsFor: 'recovered'!
dwControlID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003d6c; bytecode file offset 0x157f64"
!OSMixercontroldetails methodsFor: 'recovered'!
cChannels
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200048a8; bytecode file offset 0x1589a4"
!OSMixercontroldetails methodsFor: 'recovered'!
cMultipleItems
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200055e8; bytecode file offset 0x159294"
!OSMixercontroldetails methodsFor: 'recovered'!
cbDetails
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005f44; bytecode file offset 0x159974"
!OSMixercontroldetails methodsFor: 'recovered'!
paDetails
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20010298; bytecode file offset 0x165330"
!OSMixercontroldetails methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012bf0; bytecode file offset 0x166e00"
!OSMixercontroldetails methodsFor: 'recovered'!
dwControlID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200144bc; bytecode file offset 0x1683c0"
!OSMixercontroldetails methodsFor: 'recovered'!
cChannels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200151e8; bytecode file offset 0x169290"
!OSMixercontroldetails methodsFor: 'recovered'!
cMultipleItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015584; bytecode file offset 0x169290"
!OSMixercontroldetails methodsFor: 'recovered'!
hwndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015ddc; bytecode file offset 0x169eb4"
!OSMixercontroldetails methodsFor: 'recovered'!
cbDetails: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016f10; bytecode file offset 0x16a7b4"
!OSMixercontroldetails methodsFor: 'recovered'!
paDetails: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c298; bytecode file offset 0x16fe44"
!OSMixercontroldetails methodsFor: 'recovered'!
hwndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

