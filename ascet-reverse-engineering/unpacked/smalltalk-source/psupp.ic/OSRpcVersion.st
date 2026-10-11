"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e3c; bytecode file offset 0x155d58"
!OSRpcVersion methodsFor: 'recovered'!
MajorVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200027b8; bytecode file offset 0x1561c4"
!OSRpcVersion methodsFor: 'recovered'!
MinorVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20010628; bytecode file offset 0x165330"
!OSRpcVersion methodsFor: 'recovered'!
MajorVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011e28; bytecode file offset 0x1657d4"
!OSRpcVersion methodsFor: 'recovered'!
MinorVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

