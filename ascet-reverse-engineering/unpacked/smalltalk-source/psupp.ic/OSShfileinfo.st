"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002d38; bytecode file offset 0x157170"
!OSShfileinfo methodsFor: 'recovered'!
iIcon
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200040a8; bytecode file offset 0x157f64"
!OSShfileinfo methodsFor: 'recovered'!
dwAttributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fc50; bytecode file offset 0x165330"
!OSShfileinfo methodsFor: 'recovered'!
hIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ca4; bytecode file offset 0x166e00"
!OSShfileinfo methodsFor: 'recovered'!
iIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200145d0; bytecode file offset 0x1683c0"
!OSShfileinfo methodsFor: 'recovered'!
dwAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aeec; bytecode file offset 0x16ea70"
!OSShfileinfo methodsFor: 'recovered'!
hIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ef80; bytecode file offset 0x172818"
!OSShfileinfo methodsFor: 'recovered'!
szDisplayName
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (12) size: (260).
    ^recoveredValue0
! !

"psupp.ic method 0x200252a8; bytecode file offset 0x178b40"
!OSShfileinfo methodsFor: 'recovered'!
szTypeName
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (272) size: (80).
    ^recoveredValue0
! !

"psupp.ic method 0x20025690; bytecode file offset 0x178f28"
!OSShfileinfo methodsFor: 'recovered'!
szDisplayName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (12) put: (recoveredValue0) size: (260).
    ^self
! !

"psupp.ic method 0x200290e8; bytecode file offset 0x17c980"
!OSShfileinfo methodsFor: 'recovered'!
szTypeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (272) put: (recoveredValue0) size: (80).
    ^self
! !

