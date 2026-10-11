"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200058e8; bytecode file offset 0x159294"
!OSRpcTransferSyntax methodsFor: 'recovered'!
VersMajor
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005aa8; bytecode file offset 0x159358"
!OSRpcTransferSyntax methodsFor: 'recovered'!
VersMinor
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (18).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d240; bytecode file offset 0x160b8c"
!OSRpcTransferSyntax methodsFor: 'recovered'!
Uuid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUuid.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011708; bytecode file offset 0x165330"
!OSRpcTransferSyntax methodsFor: 'recovered'!
Uuid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015d04; bytecode file offset 0x169eb4"
!OSRpcTransferSyntax methodsFor: 'recovered'!
VersMajor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016664; bytecode file offset 0x169f98"
!OSRpcTransferSyntax methodsFor: 'recovered'!
VersMinor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (18) put: (recoveredValue0).
    ^self
! !

