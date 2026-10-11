"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200024a8; bytecode file offset 0x155d58"
!OSInAddrAnon1 methodsFor: 'recovered'!
SAddr
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cac0; bytecode file offset 0x160b8c"
!OSInAddrAnon1 methodsFor: 'recovered'!
SUnW
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSInAddrAnon1Anon2.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000cf20; bytecode file offset 0x160b8c"
!OSInAddrAnon1 methodsFor: 'recovered'!
SUnB
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSInAddrAnon1Anon1.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010d6c; bytecode file offset 0x165330"
!OSInAddrAnon1 methodsFor: 'recovered'!
SUnB: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200114bc; bytecode file offset 0x165330"
!OSInAddrAnon1 methodsFor: 'recovered'!
SUnW: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011618; bytecode file offset 0x165330"
!OSInAddrAnon1 methodsFor: 'recovered'!
SAddr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

