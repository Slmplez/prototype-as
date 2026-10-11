"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000114c; bytecode file offset 0x155d58"
!OSCreatestruct methodsFor: 'recovered'!
lpCreateParams
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005300; bytecode file offset 0x159294"
!OSCreatestruct methodsFor: 'recovered'!
cy
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005e48; bytecode file offset 0x159974"
!OSCreatestruct methodsFor: 'recovered'!
cx
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200065c4; bytecode file offset 0x159f34"
!OSCreatestruct methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200068d8; bytecode file offset 0x15a428"
!OSCreatestruct methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006d74; bytecode file offset 0x15a780"
!OSCreatestruct methodsFor: 'recovered'!
style
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200076d8; bytecode file offset 0x15b000"
!OSCreatestruct methodsFor: 'recovered'!
dwExStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x200107f0; bytecode file offset 0x165330"
!OSCreatestruct methodsFor: 'recovered'!
lpCreateParams: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012d7c; bytecode file offset 0x166e00"
!OSCreatestruct methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014ae0; bytecode file offset 0x1683c0"
!OSCreatestruct methodsFor: 'recovered'!
hMenu: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015824; bytecode file offset 0x169290"
!OSCreatestruct methodsFor: 'recovered'!
hwndParent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200165e0; bytecode file offset 0x169eb4"
!OSCreatestruct methodsFor: 'recovered'!
cy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016898; bytecode file offset 0x16a7b4"
!OSCreatestruct methodsFor: 'recovered'!
cx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200176a8; bytecode file offset 0x16afe8"
!OSCreatestruct methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017d68; bytecode file offset 0x16b690"
!OSCreatestruct methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017fe4; bytecode file offset 0x16bb70"
!OSCreatestruct methodsFor: 'recovered'!
style: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200185a8; bytecode file offset 0x16bff0"
!OSCreatestruct methodsFor: 'recovered'!
lpszName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018854; bytecode file offset 0x16c368"
!OSCreatestruct methodsFor: 'recovered'!
lpszClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018b90; bytecode file offset 0x16c6bc"
!OSCreatestruct methodsFor: 'recovered'!
dwExStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b290; bytecode file offset 0x16f1fc"
!OSCreatestruct methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bf1c; bytecode file offset 0x16f8e8"
!OSCreatestruct methodsFor: 'recovered'!
hMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHmenu.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c194; bytecode file offset 0x16fe44"
!OSCreatestruct methodsFor: 'recovered'!
hwndParent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d3ec; bytecode file offset 0x170d40"
!OSCreatestruct methodsFor: 'recovered'!
lpszName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d538; bytecode file offset 0x170e28"
!OSCreatestruct methodsFor: 'recovered'!
lpszClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (40).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

