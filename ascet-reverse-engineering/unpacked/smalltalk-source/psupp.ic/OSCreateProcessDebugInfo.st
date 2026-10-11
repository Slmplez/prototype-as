"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004fec; bytecode file offset 0x1589a4"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
lpBaseOfImage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005954; bytecode file offset 0x159294"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
dwDebugInfoFileOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005c2c; bytecode file offset 0x159974"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
nDebugInfoSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200063c0; bytecode file offset 0x159f34"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
lpThreadLocalBase
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006824; bytecode file offset 0x15a428"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
lpStartAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006c3c; bytecode file offset 0x15a780"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
lpImageName
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200070bc; bytecode file offset 0x15aa74"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
fUnicode
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20010430; bytecode file offset 0x165330"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
hFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013394; bytecode file offset 0x166e00"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
hProcess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014498; bytecode file offset 0x1683c0"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
hThread: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015164; bytecode file offset 0x169290"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
lpBaseOfImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015f5c; bytecode file offset 0x169eb4"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
dwDebugInfoFileOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016814; bytecode file offset 0x16a7b4"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
nDebugInfoSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001751c; bytecode file offset 0x16afe8"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
lpThreadLocalBase: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017aa4; bytecode file offset 0x16b690"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
lpStartAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200182cc; bytecode file offset 0x16bb70"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
lpImageName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018578; bytecode file offset 0x16bff0"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
fUnicode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b0cc; bytecode file offset 0x16ea70"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
hFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b7f4; bytecode file offset 0x16f1fc"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
hProcess
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001baa8; bytecode file offset 0x16f8e8"
!OSCreateProcessDebugInfo methodsFor: 'recovered'!
hThread
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

