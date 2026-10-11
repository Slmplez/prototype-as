"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003020; bytecode file offset 0x157170"
!OSCreateThreadDebugInfo methodsFor: 'recovered'!
lpThreadLocalBase
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004600; bytecode file offset 0x157f64"
!OSCreateThreadDebugInfo methodsFor: 'recovered'!
lpStartAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200100e8; bytecode file offset 0x165330"
!OSCreateThreadDebugInfo methodsFor: 'recovered'!
hThread: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013340; bytecode file offset 0x166e00"
!OSCreateThreadDebugInfo methodsFor: 'recovered'!
lpThreadLocalBase: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a74; bytecode file offset 0x1683c0"
!OSCreateThreadDebugInfo methodsFor: 'recovered'!
lpStartAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aec4; bytecode file offset 0x16ea70"
!OSCreateThreadDebugInfo methodsFor: 'recovered'!
hThread
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

