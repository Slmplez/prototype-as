"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001620; bytecode file offset 0x155d58"
!OSMidlFormatString methodsFor: 'recovered'!
Pad
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d3d8; bytecode file offset 0x160c84"
!OSMidlFormatString methodsFor: 'recovered'!
Format
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011378; bytecode file offset 0x165330"
!OSMidlFormatString methodsFor: 'recovered'!
Pad: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (0) put: (recoveredValue0).
    ^self
! !

