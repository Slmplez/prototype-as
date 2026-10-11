"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002dd4; bytecode file offset 0x157170"
!OSIconinfo methodsFor: 'recovered'!
xHotspot
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200041e0; bytecode file offset 0x157f64"
!OSIconinfo methodsFor: 'recovered'!
yHotspot
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d348; bytecode file offset 0x160c04"
!OSIconinfo methodsFor: 'recovered'!
fIcon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (0).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x200115dc; bytecode file offset 0x165330"
!OSIconinfo methodsFor: 'recovered'!
fIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012bd8; bytecode file offset 0x166e00"
!OSIconinfo methodsFor: 'recovered'!
xHotspot: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014948; bytecode file offset 0x1683c0"
!OSIconinfo methodsFor: 'recovered'!
yHotspot: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014edc; bytecode file offset 0x169290"
!OSIconinfo methodsFor: 'recovered'!
hbmMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200165f8; bytecode file offset 0x169eb4"
!OSIconinfo methodsFor: 'recovered'!
hbmColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a840; bytecode file offset 0x16e2c4"
!OSIconinfo methodsFor: 'recovered'!
createIconIndirect
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := CreateIconIndirect.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001c57c; bytecode file offset 0x16fe44"
!OSIconinfo methodsFor: 'recovered'!
hbmMask
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c7cc; bytecode file offset 0x170238"
!OSIconinfo methodsFor: 'recovered'!
hbmColor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

