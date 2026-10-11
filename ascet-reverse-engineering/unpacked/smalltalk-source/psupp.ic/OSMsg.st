"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200036ec; bytecode file offset 0x157170"
!OSMsg methodsFor: 'recovered'!
message
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003cac; bytecode file offset 0x157f64"
!OSMsg methodsFor: 'recovered'!
wParam
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004d88; bytecode file offset 0x1589a4"
!OSMsg methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005720; bytecode file offset 0x159294"
!OSMsg methodsFor: 'recovered'!
time
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x200083f8; bytecode file offset 0x15caa4"
!OSMsg methodsFor: 'recovered'!
translateMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TranslateMessage.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009178; bytecode file offset 0x15caa4"
!OSMsg methodsFor: 'recovered'!
dispatchMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DispatchMessage.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e168; bytecode file offset 0x161aa4"
!OSMsg methodsFor: 'recovered'!
pt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ed4c; bytecode file offset 0x163098"
!OSMsg methodsFor: 'recovered'!
callMsgFilter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CallMsgFilter.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000fb0c; bytecode file offset 0x165330"
!OSMsg methodsFor: 'recovered'!
hwnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013208; bytecode file offset 0x166e00"
!OSMsg methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013f88; bytecode file offset 0x1683c0"
!OSMsg methodsFor: 'recovered'!
wParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001550c; bytecode file offset 0x169290"
!OSMsg methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015f2c; bytecode file offset 0x169eb4"
!OSMsg methodsFor: 'recovered'!
time: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a30; bytecode file offset 0x16a7b4"
!OSMsg methodsFor: 'recovered'!
pt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b1a8; bytecode file offset 0x16ea70"
!OSMsg methodsFor: 'recovered'!
hwnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20024748; bytecode file offset 0x1781a4"
!OSMsg methodsFor: 'recovered'!
getMessage: recoveredArg1 uMsgFilterMin: recoveredArg2 uMsgFilterMax: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GetMessage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2002650c; bytecode file offset 0x179e98"
!OSMsg methodsFor: 'recovered'!
peekMessage: recoveredArg1 uFilterFirst: recoveredArg2 uFilterLast: recoveredArg3 fuRemove: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := PeekMessage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

