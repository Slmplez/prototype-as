"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000648c; bytecode file offset 0x159f34"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
xDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006848; bytecode file offset 0x15a428"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
yDest
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006d08; bytecode file offset 0x15a780"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
xSrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200071d0; bytecode file offset 0x15aa74"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
ySrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20007420; bytecode file offset 0x15ad48"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cxSrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007618; bytecode file offset 0x15b000"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cySrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x20007974; bytecode file offset 0x15b29c"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
offBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007bbc; bytecode file offset 0x15b490"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cbBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (52).
    ^recoveredValue0
! !

"psupp.ic method 0x20007d14; bytecode file offset 0x15b654"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
offBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007ee8; bytecode file offset 0x15b7d4"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cbBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (60).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b2e0; bytecode file offset 0x15eb84"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
iUsageSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b3f4; bytecode file offset 0x15ecb0"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
iStartScan
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (68).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b490; bytecode file offset 0x15ed70"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cScans
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (72).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c9d0; bytecode file offset 0x160b8c"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000db88; bytecode file offset 0x161514"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200114a4; bytecode file offset 0x165330"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014744; bytecode file offset 0x1683c0"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017270; bytecode file offset 0x16afe8"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
xDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200178e8; bytecode file offset 0x16b690"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
yDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200180c8; bytecode file offset 0x16bb70"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
xSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018680; bytecode file offset 0x16bff0"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
ySrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018920; bytecode file offset 0x16c368"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cxSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018bcc; bytecode file offset 0x16c6bc"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cySrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200190e8; bytecode file offset 0x16c9d4"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
offBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200192b0; bytecode file offset 0x16cc74"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cbBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200195d4; bytecode file offset 0x16ce9c"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
offBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200197e4; bytecode file offset 0x16d088"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cbBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fb18; bytecode file offset 0x173428"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
iUsageSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fcf0; bytecode file offset 0x1735ac"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
iStartScan: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (68) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fe34; bytecode file offset 0x1736cc"
!OSEmrsetdibitstodevice methodsFor: 'recovered'!
cScans: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (72) put: (recoveredValue0).
    ^self
! !

