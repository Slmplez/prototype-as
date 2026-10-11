"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001218; bytecode file offset 0x155d58"
!OSOleuichangeicon methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200035e4; bytecode file offset 0x157170"
!OSOleuichangeicon methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005324; bytecode file offset 0x159294"
!OSOleuichangeicon methodsFor: 'recovered'!
lpfnHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005af4; bytecode file offset 0x159974"
!OSOleuichangeicon methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20009018; bytecode file offset 0x15caa4"
!OSOleuichangeicon methodsFor: 'recovered'!
oleUIChangeIcon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OleUIChangeIcon.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000b1fc; bytecode file offset 0x15ea94"
!OSOleuichangeicon methodsFor: 'recovered'!
cchIconExe
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (316).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e640; bytecode file offset 0x161eec"
!OSOleuichangeicon methodsFor: 'recovered'!
clsid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) structAt: (40) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001004c; bytecode file offset 0x165330"
!OSOleuichangeicon methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013514; bytecode file offset 0x166e00"
!OSOleuichangeicon methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200148c4; bytecode file offset 0x1683c0"
!OSOleuichangeicon methodsFor: 'recovered'!
hWndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e7c; bytecode file offset 0x169290"
!OSOleuichangeicon methodsFor: 'recovered'!
lpszCaption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015cb0; bytecode file offset 0x169eb4"
!OSOleuichangeicon methodsFor: 'recovered'!
lpfnHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016940; bytecode file offset 0x16a7b4"
!OSOleuichangeicon methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001754c; bytecode file offset 0x16afe8"
!OSOleuichangeicon methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017bd0; bytecode file offset 0x16b690"
!OSOleuichangeicon methodsFor: 'recovered'!
lpszTemplate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200181f4; bytecode file offset 0x16bb70"
!OSOleuichangeicon methodsFor: 'recovered'!
hResource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018488; bytecode file offset 0x16bff0"
!OSOleuichangeicon methodsFor: 'recovered'!
hMetaPict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018878; bytecode file offset 0x16c368"
!OSOleuichangeicon methodsFor: 'recovered'!
clsid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bcb0; bytecode file offset 0x16f8e8"
!OSOleuichangeicon methodsFor: 'recovered'!
hWndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c374; bytecode file offset 0x16fe44"
!OSOleuichangeicon methodsFor: 'recovered'!
lpszCaption
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cca8; bytecode file offset 0x170728"
!OSOleuichangeicon methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d008; bytecode file offset 0x170948"
!OSOleuichangeicon methodsFor: 'recovered'!
lpszTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d118; bytecode file offset 0x170b20"
!OSOleuichangeicon methodsFor: 'recovered'!
hResource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHrsrc.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d2fc; bytecode file offset 0x170d40"
!OSOleuichangeicon methodsFor: 'recovered'!
hMetaPict
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001f028; bytecode file offset 0x1728c0"
!OSOleuichangeicon methodsFor: 'recovered'!
szIconExe
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (56) size: (260).
    ^recoveredValue0
! !

"psupp.ic method 0x2001fa60; bytecode file offset 0x1732f8"
!OSOleuichangeicon methodsFor: 'recovered'!
cchIconExe: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (316) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20025738; bytecode file offset 0x178fd0"
!OSOleuichangeicon methodsFor: 'recovered'!
szIconExe: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (56) put: (recoveredValue0) size: (260).
    ^self
! !

