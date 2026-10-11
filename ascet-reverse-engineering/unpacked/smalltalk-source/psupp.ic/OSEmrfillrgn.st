"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006528; bytecode file offset 0x159f34"
!OSEmrfillrgn methodsFor: 'recovered'!
cbRgnData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006938; bytecode file offset 0x15a428"
!OSEmrfillrgn methodsFor: 'recovered'!
ihBrush
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bf88; bytecode file offset 0x15fa24"
!OSEmrfillrgn methodsFor: 'recovered'!
RgnData: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000cba0; bytecode file offset 0x160b8c"
!OSEmrfillrgn methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dbc8; bytecode file offset 0x161514"
!OSEmrfillrgn methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e560; bytecode file offset 0x161e0c"
!OSEmrfillrgn methodsFor: 'recovered'!
RgnData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010658; bytecode file offset 0x165330"
!OSEmrfillrgn methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013e38; bytecode file offset 0x1683c0"
!OSEmrfillrgn methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200171b0; bytecode file offset 0x16afe8"
!OSEmrfillrgn methodsFor: 'recovered'!
cbRgnData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017cf0; bytecode file offset 0x16b690"
!OSEmrfillrgn methodsFor: 'recovered'!
ihBrush: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

