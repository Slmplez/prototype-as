"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200022e0; bytecode file offset 0x155d58"
!OSOleuiinsertobject methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000371c; bytecode file offset 0x157170"
!OSOleuiinsertobject methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005414; bytecode file offset 0x159294"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpfnHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005eb4; bytecode file offset 0x159974"
!OSOleuiinsertobject methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20007d38; bytecode file offset 0x15b654"
!OSOleuiinsertobject methodsFor: 'recovered'!
cchFile
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007e7c; bytecode file offset 0x15b7d4"
!OSOleuiinsertobject methodsFor: 'recovered'!
cClsidExclude
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (60).
    ^recoveredValue0
! !

"psupp.ic method 0x20008818; bytecode file offset 0x15caa4"
!OSOleuiinsertobject methodsFor: 'recovered'!
oleUIInsertObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OleUIInsertObject.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000b64c; bytecode file offset 0x15ef44"
!OSOleuiinsertobject methodsFor: 'recovered'!
oleRender
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (84).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b8d4; bytecode file offset 0x15f1d8"
!OSOleuiinsertobject methodsFor: 'recovered'!
sc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (104).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e5ec; bytecode file offset 0x161e88"
!OSOleuiinsertobject methodsFor: 'recovered'!
clsid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) structAt: (36) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200119d8; bytecode file offset 0x165330"
!OSOleuiinsertobject methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012260; bytecode file offset 0x166e00"
!OSOleuiinsertobject methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001415c; bytecode file offset 0x1683c0"
!OSOleuiinsertobject methodsFor: 'recovered'!
hWndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015218; bytecode file offset 0x169290"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpszCaption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015eb4; bytecode file offset 0x169eb4"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpfnHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001685c; bytecode file offset 0x16a7b4"
!OSOleuiinsertobject methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017180; bytecode file offset 0x16afe8"
!OSOleuiinsertobject methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ba0; bytecode file offset 0x16b690"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpszTemplate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017e94; bytecode file offset 0x16bb70"
!OSOleuiinsertobject methodsFor: 'recovered'!
hResource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018608; bytecode file offset 0x16bff0"
!OSOleuiinsertobject methodsFor: 'recovered'!
clsid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200193dc; bytecode file offset 0x16cc74"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpszFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001952c; bytecode file offset 0x16ce9c"
!OSOleuiinsertobject methodsFor: 'recovered'!
cchFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019784; bytecode file offset 0x16d088"
!OSOleuiinsertobject methodsFor: 'recovered'!
cClsidExclude: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bcec; bytecode file offset 0x16f8e8"
!OSOleuiinsertobject methodsFor: 'recovered'!
hWndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c1d0; bytecode file offset 0x16fe44"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpszCaption
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cd20; bytecode file offset 0x170728"
!OSOleuiinsertobject methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cf7c; bytecode file offset 0x170948"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpszTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d244; bytecode file offset 0x170b20"
!OSOleuiinsertobject methodsFor: 'recovered'!
hResource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHrsrc.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d70c; bytecode file offset 0x171024"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpszFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (52).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001e924; bytecode file offset 0x1721d8"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpClsidExclude
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSClsid.
    recoveredValue1 := (self) uint32At: (64).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001eb04; bytecode file offset 0x1723cc"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpFormatEtc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSFormatetc.
    recoveredValue1 := (self) uint32At: (88).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001eb50; bytecode file offset 0x172418"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpIOleClientSite
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIOleClientSite.
    recoveredValue1 := (self) uint32At: (92).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ebc4; bytecode file offset 0x172464"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpIStorage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIStorage.
    recoveredValue1 := (self) uint32At: (96).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ec0c; bytecode file offset 0x1724ac"
!OSOleuiinsertobject methodsFor: 'recovered'!
hMetaPict
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (108).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001f1fc; bytecode file offset 0x172a98"
!OSOleuiinsertobject methodsFor: 'recovered'!
iid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSIid.
    recoveredValue1 := (self) structAt: (68) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001fae8; bytecode file offset 0x173428"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpClsidExclude: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fc18; bytecode file offset 0x1735ac"
!OSOleuiinsertobject methodsFor: 'recovered'!
iid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (68) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020098; bytecode file offset 0x17396c"
!OSOleuiinsertobject methodsFor: 'recovered'!
oleRender: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (84) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020114; bytecode file offset 0x173a0c"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpFormatEtc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (88) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200201f0; bytecode file offset 0x173aac"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpIOleClientSite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (92) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020288; bytecode file offset 0x173b74"
!OSOleuiinsertobject methodsFor: 'recovered'!
lpIStorage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (96) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020370; bytecode file offset 0x173c20"
!OSOleuiinsertobject methodsFor: 'recovered'!
ppvObj: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (100) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200203c0; bytecode file offset 0x173cdc"
!OSOleuiinsertobject methodsFor: 'recovered'!
sc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (104) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020478; bytecode file offset 0x173d64"
!OSOleuiinsertobject methodsFor: 'recovered'!
hMetaPict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (108) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002ac58; bytecode file offset 0x17e4fc"
!OSOleuiinsertobject methodsFor: 'recovered'!
ppvObj
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (100).
    recoveredValue2 := OSVoid.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

