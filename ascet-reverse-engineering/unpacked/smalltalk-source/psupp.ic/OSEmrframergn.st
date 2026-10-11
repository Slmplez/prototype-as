"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006264; bytecode file offset 0x159f34"
!OSEmrframergn methodsFor: 'recovered'!
cbRgnData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006b0c; bytecode file offset 0x15a428"
!OSEmrframergn methodsFor: 'recovered'!
ihBrush
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bfb8; bytecode file offset 0x15fa24"
!OSEmrframergn methodsFor: 'recovered'!
RgnData: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000cd30; bytecode file offset 0x160b8c"
!OSEmrframergn methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d968; bytecode file offset 0x161514"
!OSEmrframergn methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e4f0; bytecode file offset 0x161e0c"
!OSEmrframergn methodsFor: 'recovered'!
szlStroke
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSizel.
    recoveredValue1 := (self) structAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e630; bytecode file offset 0x161eec"
!OSEmrframergn methodsFor: 'recovered'!
RgnData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (40) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fc20; bytecode file offset 0x165330"
!OSEmrframergn methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014384; bytecode file offset 0x1683c0"
!OSEmrframergn methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017660; bytecode file offset 0x16afe8"
!OSEmrframergn methodsFor: 'recovered'!
cbRgnData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c84; bytecode file offset 0x16b690"
!OSEmrframergn methodsFor: 'recovered'!
ihBrush: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018098; bytecode file offset 0x16bb70"
!OSEmrframergn methodsFor: 'recovered'!
szlStroke: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (32) put: (recoveredValue0).
    ^self
! !

