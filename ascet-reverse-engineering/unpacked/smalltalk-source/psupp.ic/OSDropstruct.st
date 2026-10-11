"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003e08; bytecode file offset 0x157f64"
!OSDropstruct methodsFor: 'recovered'!
wFmt
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000510c; bytecode file offset 0x1589a4"
!OSDropstruct methodsFor: 'recovered'!
dwData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20006300; bytecode file offset 0x159f34"
!OSDropstruct methodsFor: 'recovered'!
dwControlData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e05c; bytecode file offset 0x161938"
!OSDropstruct methodsFor: 'recovered'!
ptDrop
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200103c4; bytecode file offset 0x165330"
!OSDropstruct methodsFor: 'recovered'!
hwndSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012878; bytecode file offset 0x166e00"
!OSDropstruct methodsFor: 'recovered'!
hwndSink: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200145c4; bytecode file offset 0x1683c0"
!OSDropstruct methodsFor: 'recovered'!
wFmt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200151b8; bytecode file offset 0x169290"
!OSDropstruct methodsFor: 'recovered'!
dwData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016028; bytecode file offset 0x169eb4"
!OSDropstruct methodsFor: 'recovered'!
ptDrop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017174; bytecode file offset 0x16afe8"
!OSDropstruct methodsFor: 'recovered'!
dwControlData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001afc8; bytecode file offset 0x16ea70"
!OSDropstruct methodsFor: 'recovered'!
hwndSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b768; bytecode file offset 0x16f1fc"
!OSDropstruct methodsFor: 'recovered'!
hwndSink
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

