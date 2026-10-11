"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200064e0; bytecode file offset 0x159f34"
!OSEmrpaintrgn methodsFor: 'recovered'!
cbRgnData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c0f8; bytecode file offset 0x15fa24"
!OSEmrpaintrgn methodsFor: 'recovered'!
RgnData: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000ce00; bytecode file offset 0x160b8c"
!OSEmrpaintrgn methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dba8; bytecode file offset 0x161514"
!OSEmrpaintrgn methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e448; bytecode file offset 0x161d04"
!OSEmrpaintrgn methodsFor: 'recovered'!
RgnData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010808; bytecode file offset 0x165330"
!OSEmrpaintrgn methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200137a8; bytecode file offset 0x1683c0"
!OSEmrpaintrgn methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017024; bytecode file offset 0x16afe8"
!OSEmrpaintrgn methodsFor: 'recovered'!
cbRgnData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

