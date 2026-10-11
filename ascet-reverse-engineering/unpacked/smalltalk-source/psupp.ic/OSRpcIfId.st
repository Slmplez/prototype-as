"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20005360; bytecode file offset 0x159294"
!OSRpcIfId methodsFor: 'recovered'!
VersMajor
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005ac0; bytecode file offset 0x159358"
!OSRpcIfId methodsFor: 'recovered'!
VersMinor
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (18).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cfb0; bytecode file offset 0x160b8c"
!OSRpcIfId methodsFor: 'recovered'!
Uuid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUuid.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010b80; bytecode file offset 0x165330"
!OSRpcIfId methodsFor: 'recovered'!
Uuid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015cbc; bytecode file offset 0x169eb4"
!OSRpcIfId methodsFor: 'recovered'!
VersMajor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016700; bytecode file offset 0x169f98"
!OSRpcIfId methodsFor: 'recovered'!
VersMinor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (18) put: (recoveredValue0).
    ^self
! !

