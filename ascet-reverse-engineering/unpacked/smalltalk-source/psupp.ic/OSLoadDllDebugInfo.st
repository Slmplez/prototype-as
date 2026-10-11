"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002c60; bytecode file offset 0x157170"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
lpBaseOfDll
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003fac; bytecode file offset 0x157f64"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
dwDebugInfoFileOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000495c; bytecode file offset 0x1589a4"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
nDebugInfoSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005330; bytecode file offset 0x159294"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
lpImageName
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005ca4; bytecode file offset 0x159974"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
fUnicode
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2001016c; bytecode file offset 0x165330"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
hFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012500; bytecode file offset 0x166e00"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
lpBaseOfDll: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014150; bytecode file offset 0x1683c0"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
dwDebugInfoFileOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200154ac; bytecode file offset 0x169290"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
nDebugInfoSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015bf0; bytecode file offset 0x169eb4"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
lpImageName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016e2c; bytecode file offset 0x16a7b4"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
fUnicode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ad98; bytecode file offset 0x16ea70"
!OSLoadDllDebugInfo methodsFor: 'recovered'!
hFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

