"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002400; bytecode file offset 0x155d58"
!OSIconmetrics methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000326c; bytecode file offset 0x157170"
!OSIconmetrics methodsFor: 'recovered'!
iHorzSpacing
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200046b4; bytecode file offset 0x157f64"
!OSIconmetrics methodsFor: 'recovered'!
iVertSpacing
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004f5c; bytecode file offset 0x1589a4"
!OSIconmetrics methodsFor: 'recovered'!
iTitleWrap
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e04c; bytecode file offset 0x161938"
!OSIconmetrics methodsFor: 'recovered'!
lfFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010730; bytecode file offset 0x165330"
!OSIconmetrics methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ff8; bytecode file offset 0x166e00"
!OSIconmetrics methodsFor: 'recovered'!
iHorzSpacing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d30; bytecode file offset 0x1683c0"
!OSIconmetrics methodsFor: 'recovered'!
iVertSpacing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015098; bytecode file offset 0x169290"
!OSIconmetrics methodsFor: 'recovered'!
iTitleWrap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200164e4; bytecode file offset 0x169eb4"
!OSIconmetrics methodsFor: 'recovered'!
lfFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

