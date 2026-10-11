"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200022b0; bytecode file offset 0x155d58"
!OSMemorystatus methodsFor: 'recovered'!
dwLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003614; bytecode file offset 0x157170"
!OSMemorystatus methodsFor: 'recovered'!
dwMemoryLoad
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003cb8; bytecode file offset 0x157f64"
!OSMemorystatus methodsFor: 'recovered'!
dwTotalPhys
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200048c0; bytecode file offset 0x1589a4"
!OSMemorystatus methodsFor: 'recovered'!
dwAvailPhys
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000551c; bytecode file offset 0x159294"
!OSMemorystatus methodsFor: 'recovered'!
dwTotalPageFile
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000607c; bytecode file offset 0x159974"
!OSMemorystatus methodsFor: 'recovered'!
dwAvailPageFile
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200061ec; bytecode file offset 0x159f34"
!OSMemorystatus methodsFor: 'recovered'!
dwTotalVirtual
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006a7c; bytecode file offset 0x15a428"
!OSMemorystatus methodsFor: 'recovered'!
dwAvailVirtual
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20008cd8; bytecode file offset 0x15caa4"
!OSMemorystatus methodsFor: 'recovered'!
globalMemoryStatus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GlobalMemoryStatus.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200119f0; bytecode file offset 0x165330"
!OSMemorystatus methodsFor: 'recovered'!
dwLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200131a8; bytecode file offset 0x166e00"
!OSMemorystatus methodsFor: 'recovered'!
dwMemoryLoad: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001406c; bytecode file offset 0x1683c0"
!OSMemorystatus methodsFor: 'recovered'!
dwTotalPhys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001544c; bytecode file offset 0x169290"
!OSMemorystatus methodsFor: 'recovered'!
dwAvailPhys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e78; bytecode file offset 0x169eb4"
!OSMemorystatus methodsFor: 'recovered'!
dwTotalPageFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016c40; bytecode file offset 0x16a7b4"
!OSMemorystatus methodsFor: 'recovered'!
dwAvailPageFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017624; bytecode file offset 0x16afe8"
!OSMemorystatus methodsFor: 'recovered'!
dwTotalVirtual: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017bac; bytecode file offset 0x16b690"
!OSMemorystatus methodsFor: 'recovered'!
dwAvailVirtual: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

