"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000210c; bytecode file offset 0x155d58"
!OSAclSizeInformation methodsFor: 'recovered'!
AceCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003410; bytecode file offset 0x157170"
!OSAclSizeInformation methodsFor: 'recovered'!
AclBytesInUse
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004054; bytecode file offset 0x157f64"
!OSAclSizeInformation methodsFor: 'recovered'!
AclBytesFree
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2001043c; bytecode file offset 0x165330"
!OSAclSizeInformation methodsFor: 'recovered'!
AceCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012524; bytecode file offset 0x166e00"
!OSAclSizeInformation methodsFor: 'recovered'!
AclBytesInUse: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014900; bytecode file offset 0x1683c0"
!OSAclSizeInformation methodsFor: 'recovered'!
AclBytesFree: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

