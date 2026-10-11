"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20005304; bytecode file offset 0x814d4"
!CgFontCursor methodsFor: 'recovered'!
xHot
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (64).
    ^recoveredValue0
! !

"winsys.ic method 0x20005334; bytecode file offset 0x814f8"
!CgFontCursor methodsFor: 'recovered'!
yHot
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (65).
    ^recoveredValue0
! !

"winsys.ic method 0x20006284; bytecode file offset 0x82448"
!CgFontCursor methodsFor: 'recovered'!
sourceBits
    | recoveredValue0 |
    recoveredValue0 := (self) memcpyFrom: (0) to: (31).
    ^recoveredValue0
! !

"winsys.ic method 0x20006330; bytecode file offset 0x824f4"
!CgFontCursor methodsFor: 'recovered'!
maskBits
    | recoveredValue0 |
    recoveredValue0 := (self) memcpyFrom: (32) to: (63).
    ^recoveredValue0
! !

"winsys.ic method 0x2000970c; bytecode file offset 0x858dc"
!CgFontCursor methodsFor: 'recovered'!
xHot: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (64) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20009740; bytecode file offset 0x85904"
!CgFontCursor methodsFor: 'recovered'!
yHot: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (65) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000b8b0; bytecode file offset 0x87a74"
!CgFontCursor methodsFor: 'recovered'!
sourceBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) memcpyFrom: (0) to: (31) into: (self) startingAt: (0).
    ^self
! !

"winsys.ic method 0x2000b8cc; bytecode file offset 0x87a90"
!CgFontCursor methodsFor: 'recovered'!
maskBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) memcpyFrom: (0) to: (31) into: (self) startingAt: (32).
    ^self
! !

