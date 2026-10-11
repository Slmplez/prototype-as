"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000f54; bytecode file offset 0x155d58"
!OSMciAnimUpdateParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d664; bytecode file offset 0x160f90"
!OSMciAnimUpdateParms methodsFor: 'recovered'!
rc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001172c; bytecode file offset 0x165330"
!OSMciAnimUpdateParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012b48; bytecode file offset 0x166e00"
!OSMciAnimUpdateParms methodsFor: 'recovered'!
rc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b98; bytecode file offset 0x16a7b4"
!OSMciAnimUpdateParms methodsFor: 'recovered'!
hDC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001cb70; bytecode file offset 0x17049c"
!OSMciAnimUpdateParms methodsFor: 'recovered'!
hDC
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHdc.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

