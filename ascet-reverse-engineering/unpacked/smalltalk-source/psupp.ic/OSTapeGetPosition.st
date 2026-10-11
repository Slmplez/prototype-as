"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001044; bytecode file offset 0x155d58"
!OSTapeGetPosition methodsFor: 'recovered'!
Type
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003398; bytecode file offset 0x157170"
!OSTapeGetPosition methodsFor: 'recovered'!
Partition
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000da98; bytecode file offset 0x161514"
!OSTapeGetPosition methodsFor: 'recovered'!
Offset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fdd0; bytecode file offset 0x165330"
!OSTapeGetPosition methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013328; bytecode file offset 0x166e00"
!OSTapeGetPosition methodsFor: 'recovered'!
Partition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013bf8; bytecode file offset 0x1683c0"
!OSTapeGetPosition methodsFor: 'recovered'!
Offset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

