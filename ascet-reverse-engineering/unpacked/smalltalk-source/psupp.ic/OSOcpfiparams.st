"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001290; bytecode file offset 0x155d58"
!OSOcpfiparams methodsFor: 'recovered'!
cbStructSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200041f8; bytecode file offset 0x157f64"
!OSOcpfiparams methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000489c; bytecode file offset 0x1589a4"
!OSOcpfiparams methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005d58; bytecode file offset 0x159974"
!OSOcpfiparams methodsFor: 'recovered'!
cObjects
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200067ac; bytecode file offset 0x15a428"
!OSOcpfiparams methodsFor: 'recovered'!
cPages
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20007164; bytecode file offset 0x15aa74"
!OSOcpfiparams methodsFor: 'recovered'!
lcid
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20007390; bytecode file offset 0x15ad48"
!OSOcpfiparams methodsFor: 'recovered'!
dispidInitialProperty
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20011780; bytecode file offset 0x165330"
!OSOcpfiparams methodsFor: 'recovered'!
cbStructSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200134c0; bytecode file offset 0x166e00"
!OSOcpfiparams methodsFor: 'recovered'!
hWndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200141e0; bytecode file offset 0x1683c0"
!OSOcpfiparams methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200151ac; bytecode file offset 0x169290"
!OSOcpfiparams methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200164c0; bytecode file offset 0x169eb4"
!OSOcpfiparams methodsFor: 'recovered'!
lpszCaption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016dfc; bytecode file offset 0x16a7b4"
!OSOcpfiparams methodsFor: 'recovered'!
cObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017510; bytecode file offset 0x16afe8"
!OSOcpfiparams methodsFor: 'recovered'!
lplpUnk: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017a14; bytecode file offset 0x16b690"
!OSOcpfiparams methodsFor: 'recovered'!
cPages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017fa8; bytecode file offset 0x16bb70"
!OSOcpfiparams methodsFor: 'recovered'!
lpPages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200185d8; bytecode file offset 0x16bff0"
!OSOcpfiparams methodsFor: 'recovered'!
lcid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018860; bytecode file offset 0x16c368"
!OSOcpfiparams methodsFor: 'recovered'!
dispidInitialProperty: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b36c; bytecode file offset 0x16f1fc"
!OSOcpfiparams methodsFor: 'recovered'!
hWndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c5d8; bytecode file offset 0x170238"
!OSOcpfiparams methodsFor: 'recovered'!
lpszCaption
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d12c; bytecode file offset 0x170b20"
!OSOcpfiparams methodsFor: 'recovered'!
lpPages
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20029ff0; bytecode file offset 0x17d894"
!OSOcpfiparams methodsFor: 'recovered'!
lplpUnk
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := OSIUnknown.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

