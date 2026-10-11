"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001efc; bytecode file offset 0x155d58"
!OSProcessHeapEntry methodsFor: 'recovered'!
lpData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003818; bytecode file offset 0x157170"
!OSProcessHeapEntry methodsFor: 'recovered'!
cbData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003b20; bytecode file offset 0x157f64"
!OSProcessHeapEntry methodsFor: 'recovered'!
cbOverhead
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004710; bytecode file offset 0x157fa8"
!OSProcessHeapEntry methodsFor: 'recovered'!
iRegionIndex
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (9).
    ^recoveredValue0
! !

"psupp.ic method 0x20004760; bytecode file offset 0x1580a0"
!OSProcessHeapEntry methodsFor: 'recovered'!
wFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (10).
    ^recoveredValue0
! !

"psupp.ic method 0x2000de2c; bytecode file offset 0x1617e8"
!OSProcessHeapEntry methodsFor: 'recovered'!
Region
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSProcessHeapEntryAnon6Anon2.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000de6c; bytecode file offset 0x1617e8"
!OSProcessHeapEntry methodsFor: 'recovered'!
Block
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSProcessHeapEntryAnon6Anon1.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200116a8; bytecode file offset 0x165330"
!OSProcessHeapEntry methodsFor: 'recovered'!
lpData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200120f8; bytecode file offset 0x166e00"
!OSProcessHeapEntry methodsFor: 'recovered'!
cbData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013cf4; bytecode file offset 0x1683c0"
!OSProcessHeapEntry methodsFor: 'recovered'!
cbOverhead: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014b58; bytecode file offset 0x168414"
!OSProcessHeapEntry methodsFor: 'recovered'!
iRegionIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (9) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014c90; bytecode file offset 0x168528"
!OSProcessHeapEntry methodsFor: 'recovered'!
wFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (10) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015188; bytecode file offset 0x169290"
!OSProcessHeapEntry methodsFor: 'recovered'!
Block: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015470; bytecode file offset 0x169290"
!OSProcessHeapEntry methodsFor: 'recovered'!
Region: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

