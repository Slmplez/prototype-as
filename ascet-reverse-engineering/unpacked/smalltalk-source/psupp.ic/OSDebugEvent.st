"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200015b4; bytecode file offset 0x155d58"
!OSDebugEvent methodsFor: 'recovered'!
dwDebugEventCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002cd8; bytecode file offset 0x157170"
!OSDebugEvent methodsFor: 'recovered'!
dwProcessId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004384; bytecode file offset 0x157f64"
!OSDebugEvent methodsFor: 'recovered'!
dwThreadId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000de4c; bytecode file offset 0x1617e8"
!OSDebugEvent methodsFor: 'recovered'!
u
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSDebugEventAnon4.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000f4cc; bytecode file offset 0x163098"
!OSDebugEvent methodsFor: 'recovered'!
waitForDebugEvent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := WaitForDebugEvent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200108d4; bytecode file offset 0x165330"
!OSDebugEvent methodsFor: 'recovered'!
dwDebugEventCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001334c; bytecode file offset 0x166e00"
!OSDebugEvent methodsFor: 'recovered'!
dwProcessId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013f10; bytecode file offset 0x1683c0"
!OSDebugEvent methodsFor: 'recovered'!
dwThreadId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014cd8; bytecode file offset 0x169290"
!OSDebugEvent methodsFor: 'recovered'!
u: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

