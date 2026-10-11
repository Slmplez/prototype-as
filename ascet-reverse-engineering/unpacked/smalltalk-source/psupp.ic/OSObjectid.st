"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20005684; bytecode file offset 0x159294"
!OSObjectid methodsFor: 'recovered'!
Uniquifier
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d1c0; bytecode file offset 0x160b8c"
!OSObjectid methodsFor: 'recovered'!
Lineage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSGuid.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010688; bytecode file offset 0x165330"
!OSObjectid methodsFor: 'recovered'!
Lineage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200164cc; bytecode file offset 0x169eb4"
!OSObjectid methodsFor: 'recovered'!
Uniquifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

