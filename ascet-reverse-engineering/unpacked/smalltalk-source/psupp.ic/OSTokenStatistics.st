"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006588; bytecode file offset 0x159f34"
!OSTokenStatistics methodsFor: 'recovered'!
TokenType
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006b00; bytecode file offset 0x15a428"
!OSTokenStatistics methodsFor: 'recovered'!
ImpersonationLevel
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006d14; bytecode file offset 0x15a780"
!OSTokenStatistics methodsFor: 'recovered'!
DynamicCharged
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20007110; bytecode file offset 0x15aa74"
!OSTokenStatistics methodsFor: 'recovered'!
DynamicAvailable
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20007414; bytecode file offset 0x15ad48"
!OSTokenStatistics methodsFor: 'recovered'!
GroupCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007660; bytecode file offset 0x15b000"
!OSTokenStatistics methodsFor: 'recovered'!
PrivilegeCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d130; bytecode file offset 0x160b8c"
!OSTokenStatistics methodsFor: 'recovered'!
TokenId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuid.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dbe8; bytecode file offset 0x161514"
!OSTokenStatistics methodsFor: 'recovered'!
AuthenticationId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuid.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000df8c; bytecode file offset 0x161938"
!OSTokenStatistics methodsFor: 'recovered'!
ExpirationTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e6f0; bytecode file offset 0x161f9c"
!OSTokenStatistics methodsFor: 'recovered'!
ModifiedId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuid.
    recoveredValue1 := (self) structAt: (48) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011648; bytecode file offset 0x165330"
!OSTokenStatistics methodsFor: 'recovered'!
TokenId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013994; bytecode file offset 0x1683c0"
!OSTokenStatistics methodsFor: 'recovered'!
AuthenticationId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015d7c; bytecode file offset 0x169eb4"
!OSTokenStatistics methodsFor: 'recovered'!
ExpirationTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001772c; bytecode file offset 0x16afe8"
!OSTokenStatistics methodsFor: 'recovered'!
TokenType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c78; bytecode file offset 0x16b690"
!OSTokenStatistics methodsFor: 'recovered'!
ImpersonationLevel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017f48; bytecode file offset 0x16bb70"
!OSTokenStatistics methodsFor: 'recovered'!
DynamicCharged: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018698; bytecode file offset 0x16bff0"
!OSTokenStatistics methodsFor: 'recovered'!
DynamicAvailable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018938; bytecode file offset 0x16c368"
!OSTokenStatistics methodsFor: 'recovered'!
GroupCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018e0c; bytecode file offset 0x16c6bc"
!OSTokenStatistics methodsFor: 'recovered'!
PrivilegeCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019010; bytecode file offset 0x16c9d4"
!OSTokenStatistics methodsFor: 'recovered'!
ModifiedId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (48) put: (recoveredValue0).
    ^self
! !

