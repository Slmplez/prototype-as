"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006474; bytecode file offset 0x159f34"
!OSEmrstretchblt methodsFor: 'recovered'!
xDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200069a4; bytecode file offset 0x15a428"
!OSEmrstretchblt methodsFor: 'recovered'!
yDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006d2c; bytecode file offset 0x15a780"
!OSEmrstretchblt methodsFor: 'recovered'!
cxDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20006fb4; bytecode file offset 0x15aa74"
!OSEmrstretchblt methodsFor: 'recovered'!
cyDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000727c; bytecode file offset 0x15ad48"
!OSEmrstretchblt methodsFor: 'recovered'!
dwRop
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x200075f4; bytecode file offset 0x15b000"
!OSEmrstretchblt methodsFor: 'recovered'!
xSrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x200079b0; bytecode file offset 0x15b29c"
!OSEmrstretchblt methodsFor: 'recovered'!
ySrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b580; bytecode file offset 0x15ee18"
!OSEmrstretchblt methodsFor: 'recovered'!
crBkColorSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (76).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b5e0; bytecode file offset 0x15eea8"
!OSEmrstretchblt methodsFor: 'recovered'!
iUsageSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (80).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b688; bytecode file offset 0x15ef44"
!OSEmrstretchblt methodsFor: 'recovered'!
offBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (84).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b70c; bytecode file offset 0x15efbc"
!OSEmrstretchblt methodsFor: 'recovered'!
cbBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (88).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b784; bytecode file offset 0x15f028"
!OSEmrstretchblt methodsFor: 'recovered'!
offBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (92).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b7d8; bytecode file offset 0x15f0a0"
!OSEmrstretchblt methodsFor: 'recovered'!
cbBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (96).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b820; bytecode file offset 0x15f124"
!OSEmrstretchblt methodsFor: 'recovered'!
cxSrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (100).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b8f8; bytecode file offset 0x15f1d8"
!OSEmrstretchblt methodsFor: 'recovered'!
cySrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (104).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d260; bytecode file offset 0x160b8c"
!OSEmrstretchblt methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d988; bytecode file offset 0x161514"
!OSEmrstretchblt methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e74c; bytecode file offset 0x161ff8"
!OSEmrstretchblt methodsFor: 'recovered'!
xformSrc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSXform.
    recoveredValue1 := (self) structAt: (52) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011030; bytecode file offset 0x165330"
!OSEmrstretchblt methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200149cc; bytecode file offset 0x1683c0"
!OSEmrstretchblt methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001706c; bytecode file offset 0x16afe8"
!OSEmrstretchblt methodsFor: 'recovered'!
xDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017a2c; bytecode file offset 0x16b690"
!OSEmrstretchblt methodsFor: 'recovered'!
yDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018074; bytecode file offset 0x16bb70"
!OSEmrstretchblt methodsFor: 'recovered'!
cxDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018464; bytecode file offset 0x16bff0"
!OSEmrstretchblt methodsFor: 'recovered'!
cyDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200189bc; bytecode file offset 0x16c368"
!OSEmrstretchblt methodsFor: 'recovered'!
dwRop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018cf8; bytecode file offset 0x16c6bc"
!OSEmrstretchblt methodsFor: 'recovered'!
xSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018f98; bytecode file offset 0x16c9d4"
!OSEmrstretchblt methodsFor: 'recovered'!
ySrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019310; bytecode file offset 0x16cc74"
!OSEmrstretchblt methodsFor: 'recovered'!
xformSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fec0; bytecode file offset 0x1737b8"
!OSEmrstretchblt methodsFor: 'recovered'!
crBkColorSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (76) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fff4; bytecode file offset 0x173898"
!OSEmrstretchblt methodsFor: 'recovered'!
iUsageSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (80) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020068; bytecode file offset 0x17396c"
!OSEmrstretchblt methodsFor: 'recovered'!
offBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (84) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020108; bytecode file offset 0x173a0c"
!OSEmrstretchblt methodsFor: 'recovered'!
cbBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (88) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200201d8; bytecode file offset 0x173aac"
!OSEmrstretchblt methodsFor: 'recovered'!
offBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (92) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200202b8; bytecode file offset 0x173b74"
!OSEmrstretchblt methodsFor: 'recovered'!
cbBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (96) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020358; bytecode file offset 0x173c20"
!OSEmrstretchblt methodsFor: 'recovered'!
cxSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (100) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020420; bytecode file offset 0x173cdc"
!OSEmrstretchblt methodsFor: 'recovered'!
cySrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (104) put: (recoveredValue0).
    ^self
! !

