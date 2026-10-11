"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003800; bytecode file offset 0x157170"
!OSPictdescAnon3Anon2 methodsFor: 'recovered'!
xExt
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003bf8; bytecode file offset 0x157f64"
!OSPictdescAnon3Anon2 methodsFor: 'recovered'!
yExt
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010e2c; bytecode file offset 0x165330"
!OSPictdescAnon3Anon2 methodsFor: 'recovered'!
hmeta: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012968; bytecode file offset 0x166e00"
!OSPictdescAnon3Anon2 methodsFor: 'recovered'!
xExt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ebc; bytecode file offset 0x1683c0"
!OSPictdescAnon3Anon2 methodsFor: 'recovered'!
yExt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aca8; bytecode file offset 0x16ea70"
!OSPictdescAnon3Anon2 methodsFor: 'recovered'!
hmeta
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHmetafile.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

