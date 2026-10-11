"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20005240; bytecode file offset 0x159294"
!OSNameBuffer methodsFor: 'recovered'!
nameNum
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005a10; bytecode file offset 0x1592c0"
!OSNameBuffer methodsFor: 'recovered'!
nameFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (17).
    ^recoveredValue0
! !

"psupp.ic method 0x20015ecc; bytecode file offset 0x169eb4"
!OSNameBuffer methodsFor: 'recovered'!
nameNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001664c; bytecode file offset 0x169ee4"
!OSNameBuffer methodsFor: 'recovered'!
nameFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (17) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20021fb8; bytecode file offset 0x175864"
!OSNameBuffer methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (0) size: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2002385c; bytecode file offset 0x1770f4"
!OSNameBuffer methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (16).
    ^self
! !

