"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006354; bytecode file offset 0x159f34"
!OSEmrbitblt methodsFor: 'recovered'!
xDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006854; bytecode file offset 0x15a428"
!OSEmrbitblt methodsFor: 'recovered'!
yDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006d8c; bytecode file offset 0x15a780"
!OSEmrbitblt methodsFor: 'recovered'!
cxDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20007020; bytecode file offset 0x15aa74"
!OSEmrbitblt methodsFor: 'recovered'!
cyDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x200073e4; bytecode file offset 0x15ad48"
!OSEmrbitblt methodsFor: 'recovered'!
dwRop
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x200076e4; bytecode file offset 0x15b000"
!OSEmrbitblt methodsFor: 'recovered'!
xSrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x20007938; bytecode file offset 0x15b29c"
!OSEmrbitblt methodsFor: 'recovered'!
ySrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b550; bytecode file offset 0x15ee18"
!OSEmrbitblt methodsFor: 'recovered'!
crBkColorSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (76).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b5f8; bytecode file offset 0x15eea8"
!OSEmrbitblt methodsFor: 'recovered'!
iUsageSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (80).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b694; bytecode file offset 0x15ef44"
!OSEmrbitblt methodsFor: 'recovered'!
offBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (84).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b718; bytecode file offset 0x15efbc"
!OSEmrbitblt methodsFor: 'recovered'!
cbBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (88).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b76c; bytecode file offset 0x15f028"
!OSEmrbitblt methodsFor: 'recovered'!
offBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (92).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b808; bytecode file offset 0x15f0a0"
!OSEmrbitblt methodsFor: 'recovered'!
cbBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (96).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ce60; bytecode file offset 0x160b8c"
!OSEmrbitblt methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000da88; bytecode file offset 0x161514"
!OSEmrbitblt methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e71c; bytecode file offset 0x161ff8"
!OSEmrbitblt methodsFor: 'recovered'!
xformSrc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSXform.
    recoveredValue1 := (self) structAt: (52) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011498; bytecode file offset 0x165330"
!OSEmrbitblt methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013db4; bytecode file offset 0x1683c0"
!OSEmrbitblt methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017744; bytecode file offset 0x16afe8"
!OSEmrbitblt methodsFor: 'recovered'!
xDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017b28; bytecode file offset 0x16b690"
!OSEmrbitblt methodsFor: 'recovered'!
yDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200180e0; bytecode file offset 0x16bb70"
!OSEmrbitblt methodsFor: 'recovered'!
cxDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001874c; bytecode file offset 0x16bff0"
!OSEmrbitblt methodsFor: 'recovered'!
cyDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200187dc; bytecode file offset 0x16c368"
!OSEmrbitblt methodsFor: 'recovered'!
dwRop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018d1c; bytecode file offset 0x16c6bc"
!OSEmrbitblt methodsFor: 'recovered'!
xSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200190a0; bytecode file offset 0x16c9d4"
!OSEmrbitblt methodsFor: 'recovered'!
ySrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001934c; bytecode file offset 0x16cc74"
!OSEmrbitblt methodsFor: 'recovered'!
xformSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ff08; bytecode file offset 0x1737b8"
!OSEmrbitblt methodsFor: 'recovered'!
crBkColorSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (76) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ff94; bytecode file offset 0x173898"
!OSEmrbitblt methodsFor: 'recovered'!
iUsageSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (80) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200200c8; bytecode file offset 0x17396c"
!OSEmrbitblt methodsFor: 'recovered'!
offBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (84) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002015c; bytecode file offset 0x173a0c"
!OSEmrbitblt methodsFor: 'recovered'!
cbBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (88) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020214; bytecode file offset 0x173aac"
!OSEmrbitblt methodsFor: 'recovered'!
offBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (92) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200202dc; bytecode file offset 0x173b74"
!OSEmrbitblt methodsFor: 'recovered'!
cbBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (96) put: (recoveredValue0).
    ^self
! !

