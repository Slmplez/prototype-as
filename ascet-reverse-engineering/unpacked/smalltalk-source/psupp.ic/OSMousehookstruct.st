"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004878; bytecode file offset 0x1589a4"
!OSMousehookstruct methodsFor: 'recovered'!
wHitTestCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200059a8; bytecode file offset 0x159294"
!OSMousehookstruct methodsFor: 'recovered'!
dwExtraInfo
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cb20; bytecode file offset 0x160b8c"
!OSMousehookstruct methodsFor: 'recovered'!
pt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200108b0; bytecode file offset 0x165330"
!OSMousehookstruct methodsFor: 'recovered'!
pt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014918; bytecode file offset 0x1683c0"
!OSMousehookstruct methodsFor: 'recovered'!
hwnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015758; bytecode file offset 0x169290"
!OSMousehookstruct methodsFor: 'recovered'!
wHitTestCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c98; bytecode file offset 0x169eb4"
!OSMousehookstruct methodsFor: 'recovered'!
dwExtraInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b990; bytecode file offset 0x16f8e8"
!OSMousehookstruct methodsFor: 'recovered'!
hwnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

