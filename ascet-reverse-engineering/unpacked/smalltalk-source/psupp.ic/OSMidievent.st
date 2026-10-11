"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001374; bytecode file offset 0x155d58"
!OSMidievent methodsFor: 'recovered'!
dwDeltaTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003848; bytecode file offset 0x157170"
!OSMidievent methodsFor: 'recovered'!
dwStreamID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004474; bytecode file offset 0x157f64"
!OSMidievent methodsFor: 'recovered'!
dwEvent
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dd8c; bytecode file offset 0x1617e8"
!OSMidievent methodsFor: 'recovered'!
dwParms
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011960; bytecode file offset 0x165330"
!OSMidievent methodsFor: 'recovered'!
dwDeltaTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013310; bytecode file offset 0x166e00"
!OSMidievent methodsFor: 'recovered'!
dwStreamID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ff4; bytecode file offset 0x1683c0"
!OSMidievent methodsFor: 'recovered'!
dwEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

