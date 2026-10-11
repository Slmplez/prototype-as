"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001530; bytecode file offset 0x155d58"
!OSPerfObjectType methodsFor: 'recovered'!
TotalByteLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002c00; bytecode file offset 0x157170"
!OSPerfObjectType methodsFor: 'recovered'!
DefinitionLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004468; bytecode file offset 0x157f64"
!OSPerfObjectType methodsFor: 'recovered'!
HeaderLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004998; bytecode file offset 0x1589a4"
!OSPerfObjectType methodsFor: 'recovered'!
ObjectNameTitleIndex
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005b90; bytecode file offset 0x159974"
!OSPerfObjectType methodsFor: 'recovered'!
ObjectHelpTitleIndex
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006a64; bytecode file offset 0x15a428"
!OSPerfObjectType methodsFor: 'recovered'!
DetailLevel
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006dbc; bytecode file offset 0x15a780"
!OSPerfObjectType methodsFor: 'recovered'!
NumCounters
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20007014; bytecode file offset 0x15aa74"
!OSPerfObjectType methodsFor: 'recovered'!
DefaultCounter
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20007474; bytecode file offset 0x15ad48"
!OSPerfObjectType methodsFor: 'recovered'!
NumInstances
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007624; bytecode file offset 0x15b000"
!OSPerfObjectType methodsFor: 'recovered'!
CodePage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e700; bytecode file offset 0x161f9c"
!OSPerfObjectType methodsFor: 'recovered'!
PerfTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (48) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e788; bytecode file offset 0x162034"
!OSPerfObjectType methodsFor: 'recovered'!
PerfFreq
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (56) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200106a0; bytecode file offset 0x165330"
!OSPerfObjectType methodsFor: 'recovered'!
TotalByteLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012a28; bytecode file offset 0x166e00"
!OSPerfObjectType methodsFor: 'recovered'!
DefinitionLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013814; bytecode file offset 0x1683c0"
!OSPerfObjectType methodsFor: 'recovered'!
HeaderLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015464; bytecode file offset 0x169290"
!OSPerfObjectType methodsFor: 'recovered'!
ObjectNameTitleIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200162d4; bytecode file offset 0x169eb4"
!OSPerfObjectType methodsFor: 'recovered'!
ObjectNameTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016760; bytecode file offset 0x16a7b4"
!OSPerfObjectType methodsFor: 'recovered'!
ObjectHelpTitleIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017498; bytecode file offset 0x16afe8"
!OSPerfObjectType methodsFor: 'recovered'!
ObjectHelpTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017978; bytecode file offset 0x16b690"
!OSPerfObjectType methodsFor: 'recovered'!
DetailLevel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017f84; bytecode file offset 0x16bb70"
!OSPerfObjectType methodsFor: 'recovered'!
NumCounters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200183ec; bytecode file offset 0x16bff0"
!OSPerfObjectType methodsFor: 'recovered'!
DefaultCounter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001889c; bytecode file offset 0x16c368"
!OSPerfObjectType methodsFor: 'recovered'!
NumInstances: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018d28; bytecode file offset 0x16c6bc"
!OSPerfObjectType methodsFor: 'recovered'!
CodePage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018f14; bytecode file offset 0x16c9d4"
!OSPerfObjectType methodsFor: 'recovered'!
PerfTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200195c8; bytecode file offset 0x16ce9c"
!OSPerfObjectType methodsFor: 'recovered'!
PerfFreq: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c880; bytecode file offset 0x170238"
!OSPerfObjectType methodsFor: 'recovered'!
ObjectNameTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ce88; bytecode file offset 0x170728"
!OSPerfObjectType methodsFor: 'recovered'!
ObjectHelpTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

