"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001998; bytecode file offset 0x155d58"
!OSMonlinkstruct methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003824; bytecode file offset 0x157170"
!OSMonlinkstruct methodsFor: 'recovered'!
dwTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20006e40; bytecode file offset 0x15a780"
!OSMonlinkstruct methodsFor: 'recovered'!
wFmt
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000df74; bytecode file offset 0x16180c"
!OSMonlinkstruct methodsFor: 'recovered'!
fEstablished
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (12).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e0dc; bytecode file offset 0x161974"
!OSMonlinkstruct methodsFor: 'recovered'!
fNoData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (16).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e608; bytecode file offset 0x161ea0"
!OSMonlinkstruct methodsFor: 'recovered'!
fServer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (36).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010c7c; bytecode file offset 0x165330"
!OSMonlinkstruct methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012848; bytecode file offset 0x166e00"
!OSMonlinkstruct methodsFor: 'recovered'!
dwTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001499c; bytecode file offset 0x1683c0"
!OSMonlinkstruct methodsFor: 'recovered'!
hTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015344; bytecode file offset 0x169290"
!OSMonlinkstruct methodsFor: 'recovered'!
fEstablished: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016178; bytecode file offset 0x169eb4"
!OSMonlinkstruct methodsFor: 'recovered'!
fNoData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016748; bytecode file offset 0x16a7b4"
!OSMonlinkstruct methodsFor: 'recovered'!
hszSvc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200175c4; bytecode file offset 0x16afe8"
!OSMonlinkstruct methodsFor: 'recovered'!
hszTopic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200179e4; bytecode file offset 0x16b690"
!OSMonlinkstruct methodsFor: 'recovered'!
hszItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001811c; bytecode file offset 0x16bb70"
!OSMonlinkstruct methodsFor: 'recovered'!
wFmt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200183bc; bytecode file offset 0x16bff0"
!OSMonlinkstruct methodsFor: 'recovered'!
fServer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018884; bytecode file offset 0x16c368"
!OSMonlinkstruct methodsFor: 'recovered'!
hConvServer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018e00; bytecode file offset 0x16c6bc"
!OSMonlinkstruct methodsFor: 'recovered'!
hConvClient: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001be18; bytecode file offset 0x16f8e8"
!OSMonlinkstruct methodsFor: 'recovered'!
hTask
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cb34; bytecode file offset 0x17049c"
!OSMonlinkstruct methodsFor: 'recovered'!
hszSvc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHsz.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cc44; bytecode file offset 0x170728"
!OSMonlinkstruct methodsFor: 'recovered'!
hszTopic
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHsz.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d058; bytecode file offset 0x170948"
!OSMonlinkstruct methodsFor: 'recovered'!
hszItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHsz.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d4fc; bytecode file offset 0x170e28"
!OSMonlinkstruct methodsFor: 'recovered'!
hConvServer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHconv.
    recoveredValue1 := (self) uint32At: (40).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d5a8; bytecode file offset 0x170f10"
!OSMonlinkstruct methodsFor: 'recovered'!
hConvClient
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHconv.
    recoveredValue1 := (self) uint32At: (44).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

