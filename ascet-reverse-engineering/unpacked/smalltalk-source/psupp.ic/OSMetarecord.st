"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000246c; bytecode file offset 0x155d58"
!OSMetarecord methodsFor: 'recovered'!
rdSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200030b0; bytecode file offset 0x157170"
!OSMetarecord methodsFor: 'recovered'!
rdFunction
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bf98; bytecode file offset 0x15fa24"
!OSMetarecord methodsFor: 'recovered'!
rdParm: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d7ec; bytecode file offset 0x161088"
!OSMetarecord methodsFor: 'recovered'!
rdParm
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (6) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200115c4; bytecode file offset 0x165330"
!OSMetarecord methodsFor: 'recovered'!
rdSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013130; bytecode file offset 0x166e00"
!OSMetarecord methodsFor: 'recovered'!
rdFunction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

