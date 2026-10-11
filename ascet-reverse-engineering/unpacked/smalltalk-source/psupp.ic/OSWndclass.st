"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000132c; bytecode file offset 0x155d58"
!OSWndclass methodsFor: 'recovered'!
style
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002ec4; bytecode file offset 0x157170"
!OSWndclass methodsFor: 'recovered'!
lpfnWndProc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003c1c; bytecode file offset 0x157f64"
!OSWndclass methodsFor: 'recovered'!
cbClsExtra
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004a58; bytecode file offset 0x1589a4"
!OSWndclass methodsFor: 'recovered'!
cbWndExtra
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fab8; bytecode file offset 0x165330"
!OSWndclass methodsFor: 'recovered'!
style: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013400; bytecode file offset 0x166e00"
!OSWndclass methodsFor: 'recovered'!
lpfnWndProc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ae4; bytecode file offset 0x1683c0"
!OSWndclass methodsFor: 'recovered'!
cbClsExtra: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015158; bytecode file offset 0x169290"
!OSWndclass methodsFor: 'recovered'!
cbWndExtra: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200161f0; bytecode file offset 0x169eb4"
!OSWndclass methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016acc; bytecode file offset 0x16a7b4"
!OSWndclass methodsFor: 'recovered'!
hIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017258; bytecode file offset 0x16afe8"
!OSWndclass methodsFor: 'recovered'!
hCursor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ad4; bytecode file offset 0x16b690"
!OSWndclass methodsFor: 'recovered'!
hbrBackground: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001820c; bytecode file offset 0x16bb70"
!OSWndclass methodsFor: 'recovered'!
lpszMenuName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200185b4; bytecode file offset 0x16bff0"
!OSWndclass methodsFor: 'recovered'!
lpszClassName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a9d8; bytecode file offset 0x16e2c4"
!OSWndclass methodsFor: 'recovered'!
registerClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSAtom.
    recoveredValue1 := RegisterClass.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001c7e0; bytecode file offset 0x170238"
!OSWndclass methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ca1c; bytecode file offset 0x17049c"
!OSWndclass methodsFor: 'recovered'!
hIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cd98; bytecode file offset 0x170728"
!OSWndclass methodsFor: 'recovered'!
hCursor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHcursor.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d080; bytecode file offset 0x170948"
!OSWndclass methodsFor: 'recovered'!
hbrBackground
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHbrush.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d140; bytecode file offset 0x170b20"
!OSWndclass methodsFor: 'recovered'!
lpszMenuName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d4a0; bytecode file offset 0x170d40"
!OSWndclass methodsFor: 'recovered'!
lpszClassName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

