"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003e68; bytecode file offset 0x157f64"
!OSProcessInformation methodsFor: 'recovered'!
dwProcessId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000501c; bytecode file offset 0x1589a4"
!OSProcessInformation methodsFor: 'recovered'!
dwThreadId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fde8; bytecode file offset 0x165330"
!OSProcessInformation methodsFor: 'recovered'!
hProcess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200133d0; bytecode file offset 0x166e00"
!OSProcessInformation methodsFor: 'recovered'!
hThread: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200138a4; bytecode file offset 0x1683c0"
!OSProcessInformation methodsFor: 'recovered'!
dwProcessId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d98; bytecode file offset 0x169290"
!OSProcessInformation methodsFor: 'recovered'!
dwThreadId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ae38; bytecode file offset 0x16ea70"
!OSProcessInformation methodsFor: 'recovered'!
hProcess
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b3bc; bytecode file offset 0x16f1fc"
!OSProcessInformation methodsFor: 'recovered'!
hThread
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

