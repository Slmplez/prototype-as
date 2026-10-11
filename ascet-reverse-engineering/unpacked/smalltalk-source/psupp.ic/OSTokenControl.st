"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d290; bytecode file offset 0x160b8c"
!OSTokenControl methodsFor: 'recovered'!
TokenId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuid.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d9b8; bytecode file offset 0x161514"
!OSTokenControl methodsFor: 'recovered'!
AuthenticationId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuid.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e07c; bytecode file offset 0x161938"
!OSTokenControl methodsFor: 'recovered'!
ModifiedId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuid.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e254; bytecode file offset 0x161c00"
!OSTokenControl methodsFor: 'recovered'!
TokenSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSTokenSource.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200107e4; bytecode file offset 0x165330"
!OSTokenControl methodsFor: 'recovered'!
TokenId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014594; bytecode file offset 0x1683c0"
!OSTokenControl methodsFor: 'recovered'!
AuthenticationId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c14; bytecode file offset 0x169eb4"
!OSTokenControl methodsFor: 'recovered'!
ModifiedId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017570; bytecode file offset 0x16afe8"
!OSTokenControl methodsFor: 'recovered'!
TokenSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

