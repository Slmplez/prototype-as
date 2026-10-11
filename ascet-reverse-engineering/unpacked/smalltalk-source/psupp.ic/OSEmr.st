"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200021fc; bytecode file offset 0x155d58"
!OSEmr methodsFor: 'recovered'!
iType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002aa4; bytecode file offset 0x157170"
!OSEmr methodsFor: 'recovered'!
nSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20011744; bytecode file offset 0x165330"
!OSEmr methodsFor: 'recovered'!
iType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013568; bytecode file offset 0x166e00"
!OSEmr methodsFor: 'recovered'!
nSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

