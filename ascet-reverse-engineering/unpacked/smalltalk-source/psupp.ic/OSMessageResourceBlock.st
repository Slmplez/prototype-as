"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001bcc; bytecode file offset 0x155d58"
!OSMessageResourceBlock methodsFor: 'recovered'!
LowId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003224; bytecode file offset 0x157170"
!OSMessageResourceBlock methodsFor: 'recovered'!
HighId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200042dc; bytecode file offset 0x157f64"
!OSMessageResourceBlock methodsFor: 'recovered'!
OffsetToEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200119a8; bytecode file offset 0x165330"
!OSMessageResourceBlock methodsFor: 'recovered'!
LowId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001301c; bytecode file offset 0x166e00"
!OSMessageResourceBlock methodsFor: 'recovered'!
HighId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013f4c; bytecode file offset 0x1683c0"
!OSMessageResourceBlock methodsFor: 'recovered'!
OffsetToEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

