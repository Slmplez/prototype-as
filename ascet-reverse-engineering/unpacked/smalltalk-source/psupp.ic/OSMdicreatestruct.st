"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004f68; bytecode file offset 0x1589a4"
!OSMdicreatestruct methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005408; bytecode file offset 0x159294"
!OSMdicreatestruct methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000601c; bytecode file offset 0x159974"
!OSMdicreatestruct methodsFor: 'recovered'!
cx
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006438; bytecode file offset 0x159f34"
!OSMdicreatestruct methodsFor: 'recovered'!
cy
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006b84; bytecode file offset 0x15a428"
!OSMdicreatestruct methodsFor: 'recovered'!
style
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006d38; bytecode file offset 0x15a780"
!OSMdicreatestruct methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20010118; bytecode file offset 0x165330"
!OSMdicreatestruct methodsFor: 'recovered'!
szClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200128f0; bytecode file offset 0x166e00"
!OSMdicreatestruct methodsFor: 'recovered'!
szTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013c28; bytecode file offset 0x1683c0"
!OSMdicreatestruct methodsFor: 'recovered'!
hOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015440; bytecode file offset 0x169290"
!OSMdicreatestruct methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015f20; bytecode file offset 0x169eb4"
!OSMdicreatestruct methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016e08; bytecode file offset 0x16a7b4"
!OSMdicreatestruct methodsFor: 'recovered'!
cx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017414; bytecode file offset 0x16afe8"
!OSMdicreatestruct methodsFor: 'recovered'!
cy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017a74; bytecode file offset 0x16b690"
!OSMdicreatestruct methodsFor: 'recovered'!
style: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017eb8; bytecode file offset 0x16bb70"
!OSMdicreatestruct methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ab40; bytecode file offset 0x16ea70"
!OSMdicreatestruct methodsFor: 'recovered'!
szClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b510; bytecode file offset 0x16f1fc"
!OSMdicreatestruct methodsFor: 'recovered'!
szTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ba1c; bytecode file offset 0x16f8e8"
!OSMdicreatestruct methodsFor: 'recovered'!
hOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

