"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20010fe8; bytecode file offset 0x165330"
!OSPictdescAnon3Anon1 methodsFor: 'recovered'!
hbitmap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013544; bytecode file offset 0x166e00"
!OSPictdescAnon3Anon1 methodsFor: 'recovered'!
hpal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b018; bytecode file offset 0x16ea70"
!OSPictdescAnon3Anon1 methodsFor: 'recovered'!
hbitmap
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b254; bytecode file offset 0x16f1fc"
!OSPictdescAnon3Anon1 methodsFor: 'recovered'!
hpal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHpalette.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

