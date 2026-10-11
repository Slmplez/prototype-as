"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000439c; bytecode file offset 0x157f64"
!OSPerfDataBlock methodsFor: 'recovered'!
LittleEndian
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004fe0; bytecode file offset 0x1589a4"
!OSPerfDataBlock methodsFor: 'recovered'!
Version
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200052ac; bytecode file offset 0x159294"
!OSPerfDataBlock methodsFor: 'recovered'!
Revision
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005d04; bytecode file offset 0x159974"
!OSPerfDataBlock methodsFor: 'recovered'!
TotalByteLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200062e8; bytecode file offset 0x159f34"
!OSPerfDataBlock methodsFor: 'recovered'!
HeaderLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006a34; bytecode file offset 0x15a428"
!OSPerfDataBlock methodsFor: 'recovered'!
NumObjectTypes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006ed0; bytecode file offset 0x15a780"
!OSPerfDataBlock methodsFor: 'recovered'!
DefaultObject
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b610; bytecode file offset 0x15eea8"
!OSPerfDataBlock methodsFor: 'recovered'!
SystemNameLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (80).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b658; bytecode file offset 0x15ef44"
!OSPerfDataBlock methodsFor: 'recovered'!
SystemNameOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (84).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e5ac; bytecode file offset 0x161e88"
!OSPerfDataBlock methodsFor: 'recovered'!
SystemTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSystemtime.
    recoveredValue1 := (self) structAt: (36) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e778; bytecode file offset 0x162034"
!OSPerfDataBlock methodsFor: 'recovered'!
PerfTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (56) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20013be0; bytecode file offset 0x1683c0"
!OSPerfDataBlock methodsFor: 'recovered'!
LittleEndian: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015644; bytecode file offset 0x169290"
!OSPerfDataBlock methodsFor: 'recovered'!
Version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200163a0; bytecode file offset 0x169eb4"
!OSPerfDataBlock methodsFor: 'recovered'!
Revision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016c64; bytecode file offset 0x16a7b4"
!OSPerfDataBlock methodsFor: 'recovered'!
TotalByteLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017408; bytecode file offset 0x16afe8"
!OSPerfDataBlock methodsFor: 'recovered'!
HeaderLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ae0; bytecode file offset 0x16b690"
!OSPerfDataBlock methodsFor: 'recovered'!
NumObjectTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017fd8; bytecode file offset 0x16bb70"
!OSPerfDataBlock methodsFor: 'recovered'!
DefaultObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018428; bytecode file offset 0x16bff0"
!OSPerfDataBlock methodsFor: 'recovered'!
SystemTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001949c; bytecode file offset 0x16ce9c"
!OSPerfDataBlock methodsFor: 'recovered'!
PerfTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f1ac; bytecode file offset 0x172a48"
!OSPerfDataBlock methodsFor: 'recovered'!
PerfFreq
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (64) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f258; bytecode file offset 0x172af4"
!OSPerfDataBlock methodsFor: 'recovered'!
PerfTime100nSec
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (72) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001fadc; bytecode file offset 0x173428"
!OSPerfDataBlock methodsFor: 'recovered'!
PerfFreq: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fdec; bytecode file offset 0x1736cc"
!OSPerfDataBlock methodsFor: 'recovered'!
PerfTime100nSec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (72) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ffb8; bytecode file offset 0x173898"
!OSPerfDataBlock methodsFor: 'recovered'!
SystemNameLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (80) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200200a4; bytecode file offset 0x17396c"
!OSPerfDataBlock methodsFor: 'recovered'!
SystemNameOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (84) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20021eb8; bytecode file offset 0x175784"
!OSPerfDataBlock methodsFor: 'recovered'!
Signature
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (0) size: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2002379c; bytecode file offset 0x177034"
!OSPerfDataBlock methodsFor: 'recovered'!
Signature: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (4).
    ^self
! !

