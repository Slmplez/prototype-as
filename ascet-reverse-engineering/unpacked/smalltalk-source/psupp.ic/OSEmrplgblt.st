"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20007980; bytecode file offset 0x15b29c"
!OSEmrplgblt methodsFor: 'recovered'!
xSrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007b68; bytecode file offset 0x15b490"
!OSEmrplgblt methodsFor: 'recovered'!
ySrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (52).
    ^recoveredValue0
! !

"psupp.ic method 0x20007da4; bytecode file offset 0x15b654"
!OSEmrplgblt methodsFor: 'recovered'!
cxSrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007eac; bytecode file offset 0x15b7d4"
!OSEmrplgblt methodsFor: 'recovered'!
cySrc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (60).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ae30; bytecode file offset 0x15e6e0"
!OSEmrplgblt methodsFor: 'recovered'!
cbBmiMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (128).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ae6c; bytecode file offset 0x15e71c"
!OSEmrplgblt methodsFor: 'recovered'!
offBitsMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (132).
    ^recoveredValue0
! !

"psupp.ic method 0x2000aecc; bytecode file offset 0x15e770"
!OSEmrplgblt methodsFor: 'recovered'!
cbBitsMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (136).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b6f4; bytecode file offset 0x15efbc"
!OSEmrplgblt methodsFor: 'recovered'!
crBkColorSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (88).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b778; bytecode file offset 0x15f028"
!OSEmrplgblt methodsFor: 'recovered'!
iUsageSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (92).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b7c0; bytecode file offset 0x15f0a0"
!OSEmrplgblt methodsFor: 'recovered'!
offBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (96).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b850; bytecode file offset 0x15f124"
!OSEmrplgblt methodsFor: 'recovered'!
cbBmiSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (100).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b904; bytecode file offset 0x15f1d8"
!OSEmrplgblt methodsFor: 'recovered'!
offBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (104).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b9ac; bytecode file offset 0x15f244"
!OSEmrplgblt methodsFor: 'recovered'!
cbBitsSrc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (108).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b9f4; bytecode file offset 0x15f28c"
!OSEmrplgblt methodsFor: 'recovered'!
xMask
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (112).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ba3c; bytecode file offset 0x15f2d4"
!OSEmrplgblt methodsFor: 'recovered'!
yMask
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (116).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ba84; bytecode file offset 0x15f31c"
!OSEmrplgblt methodsFor: 'recovered'!
iUsageMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (120).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bac0; bytecode file offset 0x15f358"
!OSEmrplgblt methodsFor: 'recovered'!
offBmiMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (124).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cad0; bytecode file offset 0x160b8c"
!OSEmrplgblt methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d978; bytecode file offset 0x161514"
!OSEmrplgblt methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011804; bytecode file offset 0x165330"
!OSEmrplgblt methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001466c; bytecode file offset 0x1683c0"
!OSEmrplgblt methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019040; bytecode file offset 0x16c9d4"
!OSEmrplgblt methodsFor: 'recovered'!
xSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019268; bytecode file offset 0x16cc74"
!OSEmrplgblt methodsFor: 'recovered'!
ySrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200195ec; bytecode file offset 0x16ce9c"
!OSEmrplgblt methodsFor: 'recovered'!
cxSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019778; bytecode file offset 0x16d088"
!OSEmrplgblt methodsFor: 'recovered'!
cySrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f19c; bytecode file offset 0x172a48"
!OSEmrplgblt methodsFor: 'recovered'!
xformSrc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSXform.
    recoveredValue1 := (self) structAt: (64) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f530; bytecode file offset 0x172df8"
!OSEmrplgblt methodsFor: 'recovered'!
cbBmiMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (128) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f5a0; bytecode file offset 0x172e50"
!OSEmrplgblt methodsFor: 'recovered'!
offBitsMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (132) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f614; bytecode file offset 0x172eb8"
!OSEmrplgblt methodsFor: 'recovered'!
cbBitsMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (136) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fb84; bytecode file offset 0x173428"
!OSEmrplgblt methodsFor: 'recovered'!
xformSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020120; bytecode file offset 0x173a0c"
!OSEmrplgblt methodsFor: 'recovered'!
crBkColorSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (88) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200201a8; bytecode file offset 0x173aac"
!OSEmrplgblt methodsFor: 'recovered'!
iUsageSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (92) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200202a0; bytecode file offset 0x173b74"
!OSEmrplgblt methodsFor: 'recovered'!
offBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (96) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020334; bytecode file offset 0x173c20"
!OSEmrplgblt methodsFor: 'recovered'!
cbBmiSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (100) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200203e4; bytecode file offset 0x173cdc"
!OSEmrplgblt methodsFor: 'recovered'!
offBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (104) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200204a8; bytecode file offset 0x173d64"
!OSEmrplgblt methodsFor: 'recovered'!
cbBitsSrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (108) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002050c; bytecode file offset 0x173dbc"
!OSEmrplgblt methodsFor: 'recovered'!
xMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (112) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002054c; bytecode file offset 0x173e20"
!OSEmrplgblt methodsFor: 'recovered'!
yMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (116) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200205b0; bytecode file offset 0x173e84"
!OSEmrplgblt methodsFor: 'recovered'!
iUsageMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (120) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020638; bytecode file offset 0x173ee8"
!OSEmrplgblt methodsFor: 'recovered'!
offBmiMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (124) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20022308; bytecode file offset 0x175bd4"
!OSEmrplgblt methodsFor: 'recovered'!
aptlDest
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) arrayAt: (24) size: (3) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023c38; bytecode file offset 0x1774d0"
!OSEmrplgblt methodsFor: 'recovered'!
aptlDest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (24) put: (recoveredValue0) size: (3).
    ^self
! !

