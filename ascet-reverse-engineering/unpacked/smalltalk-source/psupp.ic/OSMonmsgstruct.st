"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001d58; bytecode file offset 0x155d58"
!OSMonmsgstruct methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003ce8; bytecode file offset 0x157f64"
!OSMonmsgstruct methodsFor: 'recovered'!
dwTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200057ec; bytecode file offset 0x159294"
!OSMonmsgstruct methodsFor: 'recovered'!
wMsg
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005c80; bytecode file offset 0x159974"
!OSMonmsgstruct methodsFor: 'recovered'!
wParam
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200063f0; bytecode file offset 0x159f34"
!OSMonmsgstruct methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e3d8; bytecode file offset 0x161d04"
!OSMonmsgstruct methodsFor: 'recovered'!
dmhd
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSDdemlMsgHookData.
    recoveredValue1 := (self) structAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200103dc; bytecode file offset 0x165330"
!OSMonmsgstruct methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ec0; bytecode file offset 0x166e00"
!OSMonmsgstruct methodsFor: 'recovered'!
hwndTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014084; bytecode file offset 0x1683c0"
!OSMonmsgstruct methodsFor: 'recovered'!
dwTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015554; bytecode file offset 0x169290"
!OSMonmsgstruct methodsFor: 'recovered'!
hTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016310; bytecode file offset 0x169eb4"
!OSMonmsgstruct methodsFor: 'recovered'!
wMsg: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016988; bytecode file offset 0x16a7b4"
!OSMonmsgstruct methodsFor: 'recovered'!
wParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017384; bytecode file offset 0x16afe8"
!OSMonmsgstruct methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ce4; bytecode file offset 0x16b690"
!OSMonmsgstruct methodsFor: 'recovered'!
dmhd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b560; bytecode file offset 0x16f1fc"
!OSMonmsgstruct methodsFor: 'recovered'!
hwndTo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c518; bytecode file offset 0x16fe44"
!OSMonmsgstruct methodsFor: 'recovered'!
hTask
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

