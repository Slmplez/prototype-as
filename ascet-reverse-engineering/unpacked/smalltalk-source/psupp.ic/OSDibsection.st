"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000b598; bytecode file offset 0x15eea8"
!OSDibsection methodsFor: 'recovered'!
dsOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (80).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cbf0; bytecode file offset 0x160b8c"
!OSDibsection methodsFor: 'recovered'!
dsBm
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSBitmap.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e2d4; bytecode file offset 0x161c00"
!OSDibsection methodsFor: 'recovered'!
dsBmih
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSBitmapinfoheader.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010418; bytecode file offset 0x165330"
!OSDibsection methodsFor: 'recovered'!
dsBm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017690; bytecode file offset 0x16afe8"
!OSDibsection methodsFor: 'recovered'!
dsBmih: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ea3c; bytecode file offset 0x1722dc"
!OSDibsection methodsFor: 'recovered'!
dshSection
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (76).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ff14; bytecode file offset 0x1737b8"
!OSDibsection methodsFor: 'recovered'!
dshSection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (76) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ffac; bytecode file offset 0x173898"
!OSDibsection methodsFor: 'recovered'!
dsOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (80) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20027654; bytecode file offset 0x17aef0"
!OSDibsection methodsFor: 'recovered'!
dsBitfields
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (64) size: (3) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20027ad8; bytecode file offset 0x17b370"
!OSDibsection methodsFor: 'recovered'!
dsBitfields: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (64) put: (recoveredValue0) size: (3).
    ^self
! !

