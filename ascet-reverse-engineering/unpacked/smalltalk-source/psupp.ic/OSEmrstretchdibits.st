"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006600; bytecode file offset 0x159f34"
!OSEmrstretchdibits methodsFor: 'recovered'!
xDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200068a8; bytecode file offset 0x15a428"
!OSEmrstretchdibits methodsFor: 'recovered'!
yDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006d98; bytecode file offset 0x15a780"
!OSEmrstretchdibits methodsFor: 'recovered'!
xSrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20006ffc; bytecode file offset 0x15aa74"
!OSEmrstretchdibits methodsFor: 'recovered'!
ySrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20007450; bytecode file offset 0x15ad48"
!OSEmrstretchdibits methodsFor: 'recovered'!
cxSrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007588; bytecode file offset 0x15b000"
!OSEmrstretchdibits methodsFor: 'recovered'!
cySrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x20007a04; bytecode file offset 0x15b29c"
!OSEmrstretchdibits methodsFor: 'recovered'!
offBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007b2c; bytecode file offset 0x15b490"
!OSEmrstretchdibits methodsFor: 'recovered'!
cbBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (52).
    ^recoveredValue0
! !

"psupp.ic method 0x20007ccc; bytecode file offset 0x15b654"
!OSEmrstretchdibits methodsFor: 'recovered'!
offBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007e58; bytecode file offset 0x15b7d4"
!OSEmrstretchdibits methodsFor: 'recovered'!
cbBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (60).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b220; bytecode file offset 0x15eb84"
!OSEmrstretchdibits methodsFor: 'recovered'!
iUsageSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b3a0; bytecode file offset 0x15ecb0"
!OSEmrstretchdibits methodsFor: 'recovered'!
dwRop
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (68).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b460; bytecode file offset 0x15ed70"
!OSEmrstretchdibits methodsFor: 'recovered'!
cxDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (72).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b55c; bytecode file offset 0x15ee18"
!OSEmrstretchdibits methodsFor: 'recovered'!
cyDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (76).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ce90; bytecode file offset 0x160b8c"
!OSEmrstretchdibits methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d888; bytecode file offset 0x161514"
!OSEmrstretchdibits methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001181c; bytecode file offset 0x165330"
!OSEmrstretchdibits methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013e08; bytecode file offset 0x1683c0"
!OSEmrstretchdibits methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200174f8; bytecode file offset 0x16afe8"
!OSEmrstretchdibits methodsFor: 'recovered'!
xDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c60; bytecode file offset 0x16b690"
!OSEmrstretchdibits methodsFor: 'recovered'!
yDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018014; bytecode file offset 0x16bb70"
!OSEmrstretchdibits methodsFor: 'recovered'!
xSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001868c; bytecode file offset 0x16bff0"
!OSEmrstretchdibits methodsFor: 'recovered'!
ySrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200187d0; bytecode file offset 0x16c368"
!OSEmrstretchdibits methodsFor: 'recovered'!
cxSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018ba8; bytecode file offset 0x16c6bc"
!OSEmrstretchdibits methodsFor: 'recovered'!
cySrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001913c; bytecode file offset 0x16c9d4"
!OSEmrstretchdibits methodsFor: 'recovered'!
offBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200192a4; bytecode file offset 0x16cc74"
!OSEmrstretchdibits methodsFor: 'recovered'!
cbBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200194f0; bytecode file offset 0x16ce9c"
!OSEmrstretchdibits methodsFor: 'recovered'!
offBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019730; bytecode file offset 0x16d088"
!OSEmrstretchdibits methodsFor: 'recovered'!
cbBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001faf4; bytecode file offset 0x173428"
!OSEmrstretchdibits methodsFor: 'recovered'!
iUsageSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fc84; bytecode file offset 0x1735ac"
!OSEmrstretchdibits methodsFor: 'recovered'!
dwRop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (68) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fe28; bytecode file offset 0x1736cc"
!OSEmrstretchdibits methodsFor: 'recovered'!
cxDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (72) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fefc; bytecode file offset 0x1737b8"
!OSEmrstretchdibits methodsFor: 'recovered'!
cyDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (76) put: (recoveredValue0).
    ^self
! !

