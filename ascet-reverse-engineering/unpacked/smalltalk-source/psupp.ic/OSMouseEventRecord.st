"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200033f8; bytecode file offset 0x157170"
!OSMouseEventRecord methodsFor: 'recovered'!
dwButtonState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004294; bytecode file offset 0x157f64"
!OSMouseEventRecord methodsFor: 'recovered'!
dwControlKeyState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200049e0; bytecode file offset 0x1589a4"
!OSMouseEventRecord methodsFor: 'recovered'!
dwEventFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d110; bytecode file offset 0x160b8c"
!OSMouseEventRecord methodsFor: 'recovered'!
dwMousePosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCoord.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011204; bytecode file offset 0x165330"
!OSMouseEventRecord methodsFor: 'recovered'!
dwMousePosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200120b0; bytecode file offset 0x166e00"
!OSMouseEventRecord methodsFor: 'recovered'!
dwButtonState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014174; bytecode file offset 0x1683c0"
!OSMouseEventRecord methodsFor: 'recovered'!
dwControlKeyState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001577c; bytecode file offset 0x169290"
!OSMouseEventRecord methodsFor: 'recovered'!
dwEventFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

