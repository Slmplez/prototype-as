"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200012a8; bytecode file offset 0x155d58"
!OSProcessHeapEntryAnon6Anon2 methodsFor: 'recovered'!
dwCommittedSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002b64; bytecode file offset 0x157170"
!OSProcessHeapEntryAnon6Anon2 methodsFor: 'recovered'!
dwUnCommittedSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200043cc; bytecode file offset 0x157f64"
!OSProcessHeapEntryAnon6Anon2 methodsFor: 'recovered'!
lpFirstBlock
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004e18; bytecode file offset 0x1589a4"
!OSProcessHeapEntryAnon6Anon2 methodsFor: 'recovered'!
lpLastBlock
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20011738; bytecode file offset 0x165330"
!OSProcessHeapEntryAnon6Anon2 methodsFor: 'recovered'!
dwCommittedSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200134d8; bytecode file offset 0x166e00"
!OSProcessHeapEntryAnon6Anon2 methodsFor: 'recovered'!
dwUnCommittedSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200144c8; bytecode file offset 0x1683c0"
!OSProcessHeapEntryAnon6Anon2 methodsFor: 'recovered'!
lpFirstBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014fcc; bytecode file offset 0x169290"
!OSProcessHeapEntryAnon6Anon2 methodsFor: 'recovered'!
lpLastBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

