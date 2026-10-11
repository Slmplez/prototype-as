"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001788; bytecode file offset 0x155d58"
!OSStartupinfo methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200059b4; bytecode file offset 0x159294"
!OSStartupinfo methodsFor: 'recovered'!
dwX
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005cd4; bytecode file offset 0x159974"
!OSStartupinfo methodsFor: 'recovered'!
dwY
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006660; bytecode file offset 0x159f34"
!OSStartupinfo methodsFor: 'recovered'!
dwXSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006a28; bytecode file offset 0x15a428"
!OSStartupinfo methodsFor: 'recovered'!
dwYSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006d44; bytecode file offset 0x15a780"
!OSStartupinfo methodsFor: 'recovered'!
dwXCountChars
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200070b0; bytecode file offset 0x15aa74"
!OSStartupinfo methodsFor: 'recovered'!
dwYCountChars
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000736c; bytecode file offset 0x15ad48"
!OSStartupinfo methodsFor: 'recovered'!
dwFillAttribute
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007570; bytecode file offset 0x15b000"
!OSStartupinfo methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x200079f8; bytecode file offset 0x15b29c"
!OSStartupinfo methodsFor: 'recovered'!
wShowWindow
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007a74; bytecode file offset 0x15b348"
!OSStartupinfo methodsFor: 'recovered'!
cbReserved2
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (50).
    ^recoveredValue0
! !

"psupp.ic method 0x20009108; bytecode file offset 0x15caa4"
!OSStartupinfo methodsFor: 'recovered'!
getStartupInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetStartupInfo.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20010724; bytecode file offset 0x165330"
!OSStartupinfo methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012a1c; bytecode file offset 0x166e00"
!OSStartupinfo methodsFor: 'recovered'!
lpReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d24; bytecode file offset 0x1683c0"
!OSStartupinfo methodsFor: 'recovered'!
lpDesktop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014f78; bytecode file offset 0x169290"
!OSStartupinfo methodsFor: 'recovered'!
lpTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015f80; bytecode file offset 0x169eb4"
!OSStartupinfo methodsFor: 'recovered'!
dwX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016c04; bytecode file offset 0x16a7b4"
!OSStartupinfo methodsFor: 'recovered'!
dwY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017528; bytecode file offset 0x16afe8"
!OSStartupinfo methodsFor: 'recovered'!
dwXSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ca8; bytecode file offset 0x16b690"
!OSStartupinfo methodsFor: 'recovered'!
dwYSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018080; bytecode file offset 0x16bb70"
!OSStartupinfo methodsFor: 'recovered'!
dwXCountChars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200185fc; bytecode file offset 0x16bff0"
!OSStartupinfo methodsFor: 'recovered'!
dwYCountChars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001895c; bytecode file offset 0x16c368"
!OSStartupinfo methodsFor: 'recovered'!
dwFillAttribute: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018d70; bytecode file offset 0x16c6bc"
!OSStartupinfo methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019070; bytecode file offset 0x16c9d4"
!OSStartupinfo methodsFor: 'recovered'!
wShowWindow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200191c0; bytecode file offset 0x16ca94"
!OSStartupinfo methodsFor: 'recovered'!
cbReserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (50) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200192d4; bytecode file offset 0x16cc74"
!OSStartupinfo methodsFor: 'recovered'!
lpReserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200195f8; bytecode file offset 0x16ce9c"
!OSStartupinfo methodsFor: 'recovered'!
hStdInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200196c4; bytecode file offset 0x16d088"
!OSStartupinfo methodsFor: 'recovered'!
hStdOutput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b6f0; bytecode file offset 0x16f1fc"
!OSStartupinfo methodsFor: 'recovered'!
lpReserved
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bee0; bytecode file offset 0x16f8e8"
!OSStartupinfo methodsFor: 'recovered'!
lpDesktop
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c48c; bytecode file offset 0x16fe44"
!OSStartupinfo methodsFor: 'recovered'!
lpTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d784; bytecode file offset 0x171024"
!OSStartupinfo methodsFor: 'recovered'!
lpReserved2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (52).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d7ec; bytecode file offset 0x17108c"
!OSStartupinfo methodsFor: 'recovered'!
hStdInput
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (56).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d82c; bytecode file offset 0x17111c"
!OSStartupinfo methodsFor: 'recovered'!
hStdOutput
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (60).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001e910; bytecode file offset 0x1721d8"
!OSStartupinfo methodsFor: 'recovered'!
hStdError
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (64).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001fb30; bytecode file offset 0x173428"
!OSStartupinfo methodsFor: 'recovered'!
hStdError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (64) put: (recoveredValue0).
    ^self
! !

