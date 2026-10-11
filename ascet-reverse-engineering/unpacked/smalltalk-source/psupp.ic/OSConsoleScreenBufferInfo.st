"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004618; bytecode file offset 0x157f64"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
wAttributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cf70; bytecode file offset 0x160b8c"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
dwSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCoord.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d524; bytecode file offset 0x160f90"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
dwCursorPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCoord.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dd60; bytecode file offset 0x16160c"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
srWindow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSmallRect.
    recoveredValue1 := (self) structAt: (10) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e0f4; bytecode file offset 0x161990"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
dwMaximumWindowSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCoord.
    recoveredValue1 := (self) structAt: (18) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001097c; bytecode file offset 0x165330"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
dwSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200121a0; bytecode file offset 0x166e00"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
dwCursorPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014258; bytecode file offset 0x1683c0"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
wAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014bac; bytecode file offset 0x168528"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
srWindow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (10) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016670; bytecode file offset 0x169f98"
!OSConsoleScreenBufferInfo methodsFor: 'recovered'!
dwMaximumWindowSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (18) put: (recoveredValue0).
    ^self
! !

