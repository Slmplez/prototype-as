"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001d70; bytecode file offset 0x155d58"
!OSSid methodsFor: 'recovered'!
Revision
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002558; bytecode file offset 0x155e38"
!OSSid methodsFor: 'recovered'!
SubAuthorityCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d3e8; bytecode file offset 0x160c84"
!OSSid methodsFor: 'recovered'!
IdentifierAuthority
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSidIdentifierAuthority.
    recoveredValue1 := (self) structAt: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dac8; bytecode file offset 0x161514"
!OSSid methodsFor: 'recovered'!
SubAuthority
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010d48; bytecode file offset 0x165330"
!OSSid methodsFor: 'recovered'!
Revision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011ab0; bytecode file offset 0x16542c"
!OSSid methodsFor: 'recovered'!
SubAuthorityCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d68; bytecode file offset 0x1657d4"
!OSSid methodsFor: 'recovered'!
IdentifierAuthority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (2) put: (recoveredValue0).
    ^self
! !

