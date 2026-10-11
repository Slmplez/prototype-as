"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e54; bytecode file offset 0x155d58"
!OSWndclassex methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002ca8; bytecode file offset 0x157170"
!OSWndclassex methodsFor: 'recovered'!
style
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200043d8; bytecode file offset 0x157f64"
!OSWndclassex methodsFor: 'recovered'!
lpfnWndProc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004f38; bytecode file offset 0x1589a4"
!OSWndclassex methodsFor: 'recovered'!
cbClsExtra
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200055dc; bytecode file offset 0x159294"
!OSWndclassex methodsFor: 'recovered'!
cbWndExtra
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20010868; bytecode file offset 0x165330"
!OSWndclassex methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001352c; bytecode file offset 0x166e00"
!OSWndclassex methodsFor: 'recovered'!
style: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200148a0; bytecode file offset 0x1683c0"
!OSWndclassex methodsFor: 'recovered'!
lpfnWndProc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014cfc; bytecode file offset 0x169290"
!OSWndclassex methodsFor: 'recovered'!
cbClsExtra: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001652c; bytecode file offset 0x169eb4"
!OSWndclassex methodsFor: 'recovered'!
cbWndExtra: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016d30; bytecode file offset 0x16a7b4"
!OSWndclassex methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200173c0; bytecode file offset 0x16afe8"
!OSWndclassex methodsFor: 'recovered'!
hIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200179d8; bytecode file offset 0x16b690"
!OSWndclassex methodsFor: 'recovered'!
hCursor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018290; bytecode file offset 0x16bb70"
!OSWndclassex methodsFor: 'recovered'!
hbrBackground: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001838c; bytecode file offset 0x16bff0"
!OSWndclassex methodsFor: 'recovered'!
lpszMenuName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200187e8; bytecode file offset 0x16c368"
!OSWndclassex methodsFor: 'recovered'!
lpszClassName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018db8; bytecode file offset 0x16c6bc"
!OSWndclassex methodsFor: 'recovered'!
hIconSm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a678; bytecode file offset 0x16e2c4"
!OSWndclassex methodsFor: 'recovered'!
registerClassEx
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSAtom.
    recoveredValue1 := RegisterClassEx.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001cb5c; bytecode file offset 0x17049c"
!OSWndclassex methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cc80; bytecode file offset 0x170728"
!OSWndclassex methodsFor: 'recovered'!
hIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cfe0; bytecode file offset 0x170948"
!OSWndclassex methodsFor: 'recovered'!
hCursor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHcursor.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d21c; bytecode file offset 0x170b20"
!OSWndclassex methodsFor: 'recovered'!
hbrBackground
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHbrush.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d34c; bytecode file offset 0x170d40"
!OSWndclassex methodsFor: 'recovered'!
lpszMenuName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d4c0; bytecode file offset 0x170e28"
!OSWndclassex methodsFor: 'recovered'!
lpszClassName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (40).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d65c; bytecode file offset 0x170f10"
!OSWndclassex methodsFor: 'recovered'!
hIconSm
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := (self) uint32At: (44).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

