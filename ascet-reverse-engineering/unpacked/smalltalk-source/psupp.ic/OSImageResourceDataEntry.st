"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000fa8; bytecode file offset 0x155d58"
!OSImageResourceDataEntry methodsFor: 'recovered'!
OffsetToData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003770; bytecode file offset 0x157170"
!OSImageResourceDataEntry methodsFor: 'recovered'!
Size
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200044ec; bytecode file offset 0x157f64"
!OSImageResourceDataEntry methodsFor: 'recovered'!
CodePage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004d70; bytecode file offset 0x1589a4"
!OSImageResourceDataEntry methodsFor: 'recovered'!
Reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200117bc; bytecode file offset 0x165330"
!OSImageResourceDataEntry methodsFor: 'recovered'!
OffsetToData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200122a8; bytecode file offset 0x166e00"
!OSImageResourceDataEntry methodsFor: 'recovered'!
Size: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014978; bytecode file offset 0x1683c0"
!OSImageResourceDataEntry methodsFor: 'recovered'!
CodePage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200153b0; bytecode file offset 0x169290"
!OSImageResourceDataEntry methodsFor: 'recovered'!
Reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

