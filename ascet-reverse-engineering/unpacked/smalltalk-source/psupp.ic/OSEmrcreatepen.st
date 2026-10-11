"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003cdc; bytecode file offset 0x157f64"
!OSEmrcreatepen methodsFor: 'recovered'!
ihPen
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cf40; bytecode file offset 0x160b8c"
!OSEmrcreatepen methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000de5c; bytecode file offset 0x1617e8"
!OSEmrcreatepen methodsFor: 'recovered'!
lopn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogpen.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200111a4; bytecode file offset 0x165330"
!OSEmrcreatepen methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200149f0; bytecode file offset 0x1683c0"
!OSEmrcreatepen methodsFor: 'recovered'!
ihPen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001589c; bytecode file offset 0x169290"
!OSEmrcreatepen methodsFor: 'recovered'!
lopn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

