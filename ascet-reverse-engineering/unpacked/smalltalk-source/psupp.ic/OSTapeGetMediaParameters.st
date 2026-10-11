"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200058b8; bytecode file offset 0x159294"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
BlockSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005c14; bytecode file offset 0x159974"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
PartitionCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cdf0; bytecode file offset 0x160b8c"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
Capacity
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000db08; bytecode file offset 0x161514"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
Remaining
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e398; bytecode file offset 0x161c48"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
WriteProtected
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (24).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010b74; bytecode file offset 0x165330"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
Capacity: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014678; bytecode file offset 0x1683c0"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
Remaining: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200164d8; bytecode file offset 0x169eb4"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
BlockSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016d24; bytecode file offset 0x16a7b4"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
PartitionCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001721c; bytecode file offset 0x16afe8"
!OSTapeGetMediaParameters methodsFor: 'recovered'!
WriteProtected: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (24) put: (recoveredValue0).
    ^self
! !

