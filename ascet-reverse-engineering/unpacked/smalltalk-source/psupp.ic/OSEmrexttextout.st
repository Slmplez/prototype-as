"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000624c; bytecode file offset 0x159f34"
!OSEmrexttextout methodsFor: 'recovered'!
iGraphicsMode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000689c; bytecode file offset 0x15a428"
!OSEmrexttextout methodsFor: 'recovered'!
exScale
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006ea0; bytecode file offset 0x15a780"
!OSEmrexttextout methodsFor: 'recovered'!
eyScale
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c9a0; bytecode file offset 0x160b8c"
!OSEmrexttextout methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dbf8; bytecode file offset 0x161514"
!OSEmrexttextout methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e5dc; bytecode file offset 0x161e88"
!OSEmrexttextout methodsFor: 'recovered'!
emrtext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmrtext.
    recoveredValue1 := (self) structAt: (36) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010e8c; bytecode file offset 0x165330"
!OSEmrexttextout methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d78; bytecode file offset 0x1683c0"
!OSEmrexttextout methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001748c; bytecode file offset 0x16afe8"
!OSEmrexttextout methodsFor: 'recovered'!
iGraphicsMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c30; bytecode file offset 0x16b690"
!OSEmrexttextout methodsFor: 'recovered'!
exScale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200180d4; bytecode file offset 0x16bb70"
!OSEmrexttextout methodsFor: 'recovered'!
eyScale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018704; bytecode file offset 0x16bff0"
!OSEmrexttextout methodsFor: 'recovered'!
emrtext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (36) put: (recoveredValue0).
    ^self
! !

