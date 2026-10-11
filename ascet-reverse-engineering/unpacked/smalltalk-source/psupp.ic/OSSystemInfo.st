"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000162c; bytecode file offset 0x155d58"
!OSSystemInfo methodsFor: 'recovered'!
dwOemId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002238; bytecode file offset 0x155d58"
!OSSystemInfo methodsFor: 'recovered'!
wProcessorArchitecture
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002644; bytecode file offset 0x1561c4"
!OSSystemInfo methodsFor: 'recovered'!
wReserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002dbc; bytecode file offset 0x157170"
!OSSystemInfo methodsFor: 'recovered'!
dwPageSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003f28; bytecode file offset 0x157f64"
!OSSystemInfo methodsFor: 'recovered'!
lpMinimumApplicationAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004914; bytecode file offset 0x1589a4"
!OSSystemInfo methodsFor: 'recovered'!
lpMaximumApplicationAddress
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200054c8; bytecode file offset 0x159294"
!OSSystemInfo methodsFor: 'recovered'!
dwActiveProcessorMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005bf0; bytecode file offset 0x159974"
!OSSystemInfo methodsFor: 'recovered'!
dwNumberOfProcessors
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006390; bytecode file offset 0x159f34"
!OSSystemInfo methodsFor: 'recovered'!
dwProcessorType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200068f0; bytecode file offset 0x15a428"
!OSSystemInfo methodsFor: 'recovered'!
dwAllocationGranularity
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006c30; bytecode file offset 0x15a780"
!OSSystemInfo methodsFor: 'recovered'!
wProcessorLevel
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20006f20; bytecode file offset 0x15a7d0"
!OSSystemInfo methodsFor: 'recovered'!
wProcessorRevision
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (34).
    ^recoveredValue0
! !

"psupp.ic method 0x20009078; bytecode file offset 0x15caa4"
!OSSystemInfo methodsFor: 'recovered'!
getSystemInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetSystemInfo.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20010f1c; bytecode file offset 0x165330"
!OSSystemInfo methodsFor: 'recovered'!
dwOemId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200115a0; bytecode file offset 0x165330"
!OSSystemInfo methodsFor: 'recovered'!
wProcessorArchitecture: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011dd4; bytecode file offset 0x1657d4"
!OSSystemInfo methodsFor: 'recovered'!
wReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012bc0; bytecode file offset 0x166e00"
!OSSystemInfo methodsFor: 'recovered'!
dwPageSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200140d8; bytecode file offset 0x1683c0"
!OSSystemInfo methodsFor: 'recovered'!
lpMinimumApplicationAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200156e0; bytecode file offset 0x169290"
!OSSystemInfo methodsFor: 'recovered'!
lpMaximumApplicationAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001646c; bytecode file offset 0x169eb4"
!OSSystemInfo methodsFor: 'recovered'!
dwActiveProcessorMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016844; bytecode file offset 0x16a7b4"
!OSSystemInfo methodsFor: 'recovered'!
dwNumberOfProcessors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200176fc; bytecode file offset 0x16afe8"
!OSSystemInfo methodsFor: 'recovered'!
dwProcessorType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017abc; bytecode file offset 0x16b690"
!OSSystemInfo methodsFor: 'recovered'!
dwAllocationGranularity: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018110; bytecode file offset 0x16bb70"
!OSSystemInfo methodsFor: 'recovered'!
wProcessorLevel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200182f0; bytecode file offset 0x16bbd0"
!OSSystemInfo methodsFor: 'recovered'!
wProcessorRevision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (34) put: (recoveredValue0).
    ^self
! !

