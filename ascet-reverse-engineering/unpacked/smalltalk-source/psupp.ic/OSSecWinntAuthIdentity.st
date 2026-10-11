"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002f9c; bytecode file offset 0x157170"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
UserLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004eb4; bytecode file offset 0x1589a4"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
DomainLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005e9c; bytecode file offset 0x159974"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
PasswordLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200064c8; bytecode file offset 0x159f34"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20010850; bytecode file offset 0x165330"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
User: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013010; bytecode file offset 0x166e00"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
UserLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014540; bytecode file offset 0x1683c0"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
Domain: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014f24; bytecode file offset 0x169290"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
DomainLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200165d4; bytecode file offset 0x169eb4"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
Password: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016d60; bytecode file offset 0x16a7b4"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
PasswordLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017714; bytecode file offset 0x16afe8"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001afdc; bytecode file offset 0x16ea70"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
User
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bad0; bytecode file offset 0x16f8e8"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
Domain
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c6f0; bytecode file offset 0x170238"
!OSSecWinntAuthIdentity methodsFor: 'recovered'!
Password
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

