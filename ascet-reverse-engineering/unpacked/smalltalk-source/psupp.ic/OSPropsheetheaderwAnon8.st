"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001de8; bytecode file offset 0x155d58"
!OSPropsheetheaderwAnon8 methodsFor: 'recovered'!
nStartPage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ff80; bytecode file offset 0x165330"
!OSPropsheetheaderwAnon8 methodsFor: 'recovered'!
pStartPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001076c; bytecode file offset 0x165330"
!OSPropsheetheaderwAnon8 methodsFor: 'recovered'!
nStartPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ab68; bytecode file offset 0x16ea70"
!OSPropsheetheaderwAnon8 methodsFor: 'recovered'!
pStartPage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

