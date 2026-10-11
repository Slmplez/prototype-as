"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200016a4; bytecode file offset 0x155d58"
!OSCandidatelist methodsFor: 'recovered'!
dwSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002c30; bytecode file offset 0x157170"
!OSCandidatelist methodsFor: 'recovered'!
dwStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004300; bytecode file offset 0x157f64"
!OSCandidatelist methodsFor: 'recovered'!
dwCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200049b0; bytecode file offset 0x1589a4"
!OSCandidatelist methodsFor: 'recovered'!
dwSelection
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005834; bytecode file offset 0x159294"
!OSCandidatelist methodsFor: 'recovered'!
dwPageStart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005e3c; bytecode file offset 0x159974"
!OSCandidatelist methodsFor: 'recovered'!
dwPageSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e2c4; bytecode file offset 0x161c00"
!OSCandidatelist methodsFor: 'recovered'!
dwOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001103c; bytecode file offset 0x165330"
!OSCandidatelist methodsFor: 'recovered'!
dwSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013538; bytecode file offset 0x166e00"
!OSCandidatelist methodsFor: 'recovered'!
dwStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ed4; bytecode file offset 0x1683c0"
!OSCandidatelist methodsFor: 'recovered'!
dwCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e4c; bytecode file offset 0x169290"
!OSCandidatelist methodsFor: 'recovered'!
dwSelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016154; bytecode file offset 0x169eb4"
!OSCandidatelist methodsFor: 'recovered'!
dwPageStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016ebc; bytecode file offset 0x16a7b4"
!OSCandidatelist methodsFor: 'recovered'!
dwPageSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

