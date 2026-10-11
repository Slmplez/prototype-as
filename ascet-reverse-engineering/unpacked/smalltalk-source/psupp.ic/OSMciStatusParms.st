"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001d88; bytecode file offset 0x155d58"
!OSMciStatusParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003698; bytecode file offset 0x157170"
!OSMciStatusParms methodsFor: 'recovered'!
dwReturn
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003ca0; bytecode file offset 0x157f64"
!OSMciStatusParms methodsFor: 'recovered'!
dwItem
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ef0; bytecode file offset 0x1589a4"
!OSMciStatusParms methodsFor: 'recovered'!
dwTrack
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200106e8; bytecode file offset 0x165330"
!OSMciStatusParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012080; bytecode file offset 0x166e00"
!OSMciStatusParms methodsFor: 'recovered'!
dwReturn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d00; bytecode file offset 0x1683c0"
!OSMciStatusParms methodsFor: 'recovered'!
dwItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200151a0; bytecode file offset 0x169290"
!OSMciStatusParms methodsFor: 'recovered'!
dwTrack: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

