"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001758; bytecode file offset 0x155d58"
!OSClipdata methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002ed0; bytecode file offset 0x157170"
!OSClipdata methodsFor: 'recovered'!
ulClipFmt
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010364; bytecode file offset 0x165330"
!OSClipdata methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200127e8; bytecode file offset 0x166e00"
!OSClipdata methodsFor: 'recovered'!
ulClipFmt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013964; bytecode file offset 0x1683c0"
!OSClipdata methodsFor: 'recovered'!
pClipData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bd50; bytecode file offset 0x16f8e8"
!OSClipdata methodsFor: 'recovered'!
pClipData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

