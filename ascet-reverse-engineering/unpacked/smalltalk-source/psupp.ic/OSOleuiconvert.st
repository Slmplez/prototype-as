"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200023a0; bytecode file offset 0x155d58"
!OSOleuiconvert methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003668; bytecode file offset 0x157170"
!OSOleuiconvert methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005648; bytecode file offset 0x159294"
!OSOleuiconvert methodsFor: 'recovered'!
lpfnHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005e0c; bytecode file offset 0x159974"
!OSOleuiconvert methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200090e8; bytecode file offset 0x15caa4"
!OSOleuiconvert methodsFor: 'recovered'!
oleUIConvert
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OleUIConvert.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ae18; bytecode file offset 0x15e6e0"
!OSOleuiconvert methodsFor: 'recovered'!
cClsidExclude
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (128).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b844; bytecode file offset 0x15f124"
!OSOleuiconvert methodsFor: 'recovered'!
dvAspect
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (100).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b8bc; bytecode file offset 0x15f1d8"
!OSOleuiconvert methodsFor: 'recovered'!
wFormat
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (104).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e5bc; bytecode file offset 0x161e88"
!OSOleuiconvert methodsFor: 'recovered'!
clsid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) structAt: (36) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e73c; bytecode file offset 0x161ff8"
!OSOleuiconvert methodsFor: 'recovered'!
clsidConvertDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) structAt: (52) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200103b8; bytecode file offset 0x165330"
!OSOleuiconvert methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012b90; bytecode file offset 0x166e00"
!OSOleuiconvert methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014030; bytecode file offset 0x1683c0"
!OSOleuiconvert methodsFor: 'recovered'!
hWndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001508c; bytecode file offset 0x169290"
!OSOleuiconvert methodsFor: 'recovered'!
lpszCaption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016094; bytecode file offset 0x169eb4"
!OSOleuiconvert methodsFor: 'recovered'!
lpfnHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b44; bytecode file offset 0x16a7b4"
!OSOleuiconvert methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017630; bytecode file offset 0x16afe8"
!OSOleuiconvert methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017dbc; bytecode file offset 0x16b690"
!OSOleuiconvert methodsFor: 'recovered'!
lpszTemplate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001808c; bytecode file offset 0x16bb70"
!OSOleuiconvert methodsFor: 'recovered'!
hResource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018650; bytecode file offset 0x16bff0"
!OSOleuiconvert methodsFor: 'recovered'!
clsid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200192c8; bytecode file offset 0x16cc74"
!OSOleuiconvert methodsFor: 'recovered'!
clsidConvertDefault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bcc4; bytecode file offset 0x16f8e8"
!OSOleuiconvert methodsFor: 'recovered'!
hWndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c52c; bytecode file offset 0x16fe44"
!OSOleuiconvert methodsFor: 'recovered'!
lpszCaption
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cd34; bytecode file offset 0x170728"
!OSOleuiconvert methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d094; bytecode file offset 0x170948"
!OSOleuiconvert methodsFor: 'recovered'!
lpszTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d1a4; bytecode file offset 0x170b20"
!OSOleuiconvert methodsFor: 'recovered'!
hResource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHrsrc.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001e838; bytecode file offset 0x1720d8"
!OSOleuiconvert methodsFor: 'recovered'!
lpClsidExclude
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) uint32At: (132).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ec30; bytecode file offset 0x1724d0"
!OSOleuiconvert methodsFor: 'recovered'!
hMetaPict
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (112).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ec54; bytecode file offset 0x1724f4"
!OSOleuiconvert methodsFor: 'recovered'!
lpszUserType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (116).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ec78; bytecode file offset 0x172518"
!OSOleuiconvert methodsFor: 'recovered'!
lpszDefLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (124).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001f1cc; bytecode file offset 0x172a98"
!OSOleuiconvert methodsFor: 'recovered'!
clsidActivateDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) structAt: (68) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f2d8; bytecode file offset 0x172b74"
!OSOleuiconvert methodsFor: 'recovered'!
clsidNew
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) structAt: (84) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f378; bytecode file offset 0x172c10"
!OSOleuiconvert methodsFor: 'recovered'!
fIsLinkedObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (108).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f3f0; bytecode file offset 0x172c88"
!OSOleuiconvert methodsFor: 'recovered'!
fObjectsIconChanged
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (120).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f53c; bytecode file offset 0x172df8"
!OSOleuiconvert methodsFor: 'recovered'!
cClsidExclude: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (128) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f588; bytecode file offset 0x172e50"
!OSOleuiconvert methodsFor: 'recovered'!
lpClsidExclude: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (132) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fce4; bytecode file offset 0x1735ac"
!OSOleuiconvert methodsFor: 'recovered'!
clsidActivateDefault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (68) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002005c; bytecode file offset 0x17396c"
!OSOleuiconvert methodsFor: 'recovered'!
clsidNew: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (84) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020340; bytecode file offset 0x173c20"
!OSOleuiconvert methodsFor: 'recovered'!
dvAspect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (100) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200203fc; bytecode file offset 0x173cdc"
!OSOleuiconvert methodsFor: 'recovered'!
wFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (104) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200204c0; bytecode file offset 0x173d64"
!OSOleuiconvert methodsFor: 'recovered'!
fIsLinkedObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (108) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200204e8; bytecode file offset 0x173dbc"
!OSOleuiconvert methodsFor: 'recovered'!
hMetaPict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (112) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020570; bytecode file offset 0x173e20"
!OSOleuiconvert methodsFor: 'recovered'!
lpszUserType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (116) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200205bc; bytecode file offset 0x173e84"
!OSOleuiconvert methodsFor: 'recovered'!
fObjectsIconChanged: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (120) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020608; bytecode file offset 0x173ee8"
!OSOleuiconvert methodsFor: 'recovered'!
lpszDefLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (124) put: (recoveredValue0).
    ^self
! !

