"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000ff2c; bytecode file offset 0x165330"
!OSPictdescAnon3Anon4 methodsFor: 'recovered'!
hemf: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001acf8; bytecode file offset 0x16ea70"
!OSPictdescAnon3Anon4 methodsFor: 'recovered'!
hemf
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHenhmetafile.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

