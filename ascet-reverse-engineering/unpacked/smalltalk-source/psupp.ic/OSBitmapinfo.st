"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000bfc8; bytecode file offset 0x15fa24"
!OSBitmapinfo methodsFor: 'recovered'!
bmiColors: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d2d0; bytecode file offset 0x160b8c"
!OSBitmapinfo methodsFor: 'recovered'!
bmiHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSBitmapinfoheader.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e620; bytecode file offset 0x161eec"
!OSBitmapinfo methodsFor: 'recovered'!
bmiColors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRgbquad.
    recoveredValue1 := (self) arrayAt: (40) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011978; bytecode file offset 0x165330"
!OSBitmapinfo methodsFor: 'recovered'!
bmiHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

