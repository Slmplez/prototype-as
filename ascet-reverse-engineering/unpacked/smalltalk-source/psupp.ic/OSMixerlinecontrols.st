"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002460; bytecode file offset 0x155d58"
!OSMixerlinecontrols methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000332c; bytecode file offset 0x157170"
!OSMixerlinecontrols methodsFor: 'recovered'!
dwLineID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004168; bytecode file offset 0x157f64"
!OSMixerlinecontrols methodsFor: 'recovered'!
dwControlID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004318; bytecode file offset 0x157f64"
!OSMixerlinecontrols methodsFor: 'recovered'!
dwControlType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ecc; bytecode file offset 0x1589a4"
!OSMixerlinecontrols methodsFor: 'recovered'!
cControls
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200058dc; bytecode file offset 0x159294"
!OSMixerlinecontrols methodsFor: 'recovered'!
cbmxctrl
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fa64; bytecode file offset 0x165330"
!OSMixerlinecontrols methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001307c; bytecode file offset 0x166e00"
!OSMixerlinecontrols methodsFor: 'recovered'!
dwLineID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001427c; bytecode file offset 0x1683c0"
!OSMixerlinecontrols methodsFor: 'recovered'!
dwControlID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a44; bytecode file offset 0x1683c0"
!OSMixerlinecontrols methodsFor: 'recovered'!
dwControlType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d38; bytecode file offset 0x169290"
!OSMixerlinecontrols methodsFor: 'recovered'!
cControls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001610c; bytecode file offset 0x169eb4"
!OSMixerlinecontrols methodsFor: 'recovered'!
cbmxctrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016994; bytecode file offset 0x16a7b4"
!OSMixerlinecontrols methodsFor: 'recovered'!
pamxctrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001cbd4; bytecode file offset 0x17049c"
!OSMixerlinecontrols methodsFor: 'recovered'!
pamxctrl
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSMixercontrol.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

