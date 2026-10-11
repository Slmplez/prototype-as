"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000ccc0; bytecode file offset 0x160b8c"
!OSRpcSyntaxIdentifier methodsFor: 'recovered'!
SyntaxGUID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSGuid.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dfcc; bytecode file offset 0x161938"
!OSRpcSyntaxIdentifier methodsFor: 'recovered'!
SyntaxVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRpcVersion.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001184c; bytecode file offset 0x165330"
!OSRpcSyntaxIdentifier methodsFor: 'recovered'!
SyntaxGUID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015de8; bytecode file offset 0x169eb4"
!OSRpcSyntaxIdentifier methodsFor: 'recovered'!
SyntaxVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

