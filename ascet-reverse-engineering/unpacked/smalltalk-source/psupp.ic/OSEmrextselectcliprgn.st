"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003fb8; bytecode file offset 0x157f64"
!OSEmrextselectcliprgn methodsFor: 'recovered'!
cbRgnData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004aa0; bytecode file offset 0x1589a4"
!OSEmrextselectcliprgn methodsFor: 'recovered'!
iMode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c188; bytecode file offset 0x15fa24"
!OSEmrextselectcliprgn methodsFor: 'recovered'!
RgnData: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d1b0; bytecode file offset 0x160b8c"
!OSEmrextselectcliprgn methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e06c; bytecode file offset 0x161938"
!OSEmrextselectcliprgn methodsFor: 'recovered'!
RgnData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001178c; bytecode file offset 0x165330"
!OSEmrextselectcliprgn methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014b1c; bytecode file offset 0x1683c0"
!OSEmrextselectcliprgn methodsFor: 'recovered'!
cbRgnData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d68; bytecode file offset 0x169290"
!OSEmrextselectcliprgn methodsFor: 'recovered'!
iMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

