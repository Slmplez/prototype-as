"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001494; bytecode file offset 0x155d58"
!OSTvItem methodsFor: 'recovered'!
mask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20004498; bytecode file offset 0x157f64"
!OSTvItem methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004c50; bytecode file offset 0x1589a4"
!OSTvItem methodsFor: 'recovered'!
stateMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005cf8; bytecode file offset 0x159974"
!OSTvItem methodsFor: 'recovered'!
cchTextMax
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006330; bytecode file offset 0x159f34"
!OSTvItem methodsFor: 'recovered'!
iImage
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200068fc; bytecode file offset 0x15a428"
!OSTvItem methodsFor: 'recovered'!
iSelectedImage
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006d20; bytecode file offset 0x15a780"
!OSTvItem methodsFor: 'recovered'!
cChildren
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20007050; bytecode file offset 0x15aa74"
!OSTvItem methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ffec; bytecode file offset 0x165330"
!OSTvItem methodsFor: 'recovered'!
mask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200126a4; bytecode file offset 0x166e00"
!OSTvItem methodsFor: 'recovered'!
hItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014630; bytecode file offset 0x1683c0"
!OSTvItem methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200154b8; bytecode file offset 0x169290"
!OSTvItem methodsFor: 'recovered'!
stateMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e54; bytecode file offset 0x169eb4"
!OSTvItem methodsFor: 'recovered'!
pszText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001682c; bytecode file offset 0x16a7b4"
!OSTvItem methodsFor: 'recovered'!
cchTextMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017228; bytecode file offset 0x16afe8"
!OSTvItem methodsFor: 'recovered'!
iImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017b04; bytecode file offset 0x16b690"
!OSTvItem methodsFor: 'recovered'!
iSelectedImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017fb4; bytecode file offset 0x16bb70"
!OSTvItem methodsFor: 'recovered'!
cChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018374; bytecode file offset 0x16bff0"
!OSTvItem methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b678; bytecode file offset 0x16f1fc"
!OSTvItem methodsFor: 'recovered'!
hItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHtreeitem.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c664; bytecode file offset 0x170238"
!OSTvItem methodsFor: 'recovered'!
pszText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

