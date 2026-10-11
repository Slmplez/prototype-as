"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002a44; bytecode file offset 0x157170"
!OSKeyEventRecord methodsFor: 'recovered'!
wRepeatCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200039f0; bytecode file offset 0x1572b8"
!OSKeyEventRecord methodsFor: 'recovered'!
wVirtualKeyCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x20004348; bytecode file offset 0x157f64"
!OSKeyEventRecord methodsFor: 'recovered'!
wVirtualScanCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005034; bytecode file offset 0x1589a4"
!OSKeyEventRecord methodsFor: 'recovered'!
dwControlKeyState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d360; bytecode file offset 0x160c04"
!OSKeyEventRecord methodsFor: 'recovered'!
bKeyDown
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (0).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dd70; bytecode file offset 0x16160c"
!OSKeyEventRecord methodsFor: 'recovered'!
uChar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSKeyEventRecordAnon5.
    recoveredValue1 := (self) structAt: (10) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010538; bytecode file offset 0x165330"
!OSKeyEventRecord methodsFor: 'recovered'!
bKeyDown: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200128e4; bytecode file offset 0x166e00"
!OSKeyEventRecord methodsFor: 'recovered'!
wRepeatCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200136a0; bytecode file offset 0x166f5c"
!OSKeyEventRecord methodsFor: 'recovered'!
wVirtualKeyCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013808; bytecode file offset 0x1683c0"
!OSKeyEventRecord methodsFor: 'recovered'!
wVirtualScanCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014c24; bytecode file offset 0x168528"
!OSKeyEventRecord methodsFor: 'recovered'!
uChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (10) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200150e0; bytecode file offset 0x169290"
!OSKeyEventRecord methodsFor: 'recovered'!
dwControlKeyState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

