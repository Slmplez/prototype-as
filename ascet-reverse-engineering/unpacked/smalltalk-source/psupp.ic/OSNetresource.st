"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200013d4; bytecode file offset 0x155d58"
!OSNetresource methodsFor: 'recovered'!
dwScope
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002a5c; bytecode file offset 0x157170"
!OSNetresource methodsFor: 'recovered'!
dwType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003bb0; bytecode file offset 0x157f64"
!OSNetresource methodsFor: 'recovered'!
dwDisplayType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004c38; bytecode file offset 0x1589a4"
!OSNetresource methodsFor: 'recovered'!
dwUsage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000f07c; bytecode file offset 0x163098"
!OSNetresource methodsFor: 'recovered'!
multinetGetConnectionPerformance: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MultinetGetConnectionPerformance.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000fa1c; bytecode file offset 0x165330"
!OSNetresource methodsFor: 'recovered'!
dwScope: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001226c; bytecode file offset 0x166e00"
!OSNetresource methodsFor: 'recovered'!
dwType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200140fc; bytecode file offset 0x1683c0"
!OSNetresource methodsFor: 'recovered'!
dwDisplayType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015764; bytecode file offset 0x169290"
!OSNetresource methodsFor: 'recovered'!
dwUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e24; bytecode file offset 0x169eb4"
!OSNetresource methodsFor: 'recovered'!
lpLocalName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016c58; bytecode file offset 0x16a7b4"
!OSNetresource methodsFor: 'recovered'!
lpRemoteName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017600; bytecode file offset 0x16afe8"
!OSNetresource methodsFor: 'recovered'!
lpComment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200179a8; bytecode file offset 0x16b690"
!OSNetresource methodsFor: 'recovered'!
lpProvider: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c6b4; bytecode file offset 0x170238"
!OSNetresource methodsFor: 'recovered'!
lpLocalName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c9f4; bytecode file offset 0x17049c"
!OSNetresource methodsFor: 'recovered'!
lpRemoteName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cdac; bytecode file offset 0x170728"
!OSNetresource methodsFor: 'recovered'!
lpComment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d030; bytecode file offset 0x170948"
!OSNetresource methodsFor: 'recovered'!
lpProvider
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20028254; bytecode file offset 0x17baf4"
!OSNetresource methodsFor: 'recovered'!
wNetAddConnection2: recoveredArg1 lpUserName: recoveredArg2 dwFlags: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := WNetAddConnection2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

