"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200012cc; bytecode file offset 0x155d58"
!OSBindOpts methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003584; bytecode file offset 0x157170"
!OSBindOpts methodsFor: 'recovered'!
grfFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003c4c; bytecode file offset 0x157f64"
!OSBindOpts methodsFor: 'recovered'!
grfMode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ba8; bytecode file offset 0x1589a4"
!OSBindOpts methodsFor: 'recovered'!
dwTickCountDeadline
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20010514; bytecode file offset 0x165330"
!OSBindOpts methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012fec; bytecode file offset 0x166e00"
!OSBindOpts methodsFor: 'recovered'!
grfFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001439c; bytecode file offset 0x1683c0"
!OSBindOpts methodsFor: 'recovered'!
grfMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015620; bytecode file offset 0x169290"
!OSBindOpts methodsFor: 'recovered'!
dwTickCountDeadline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

