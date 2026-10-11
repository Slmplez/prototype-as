"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a10; bytecode file offset 0x155d58"
!OSPrintdlg methodsFor: 'recovered'!
lStructSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005b54; bytecode file offset 0x159974"
!OSPrintdlg methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006324; bytecode file offset 0x159f34"
!OSPrintdlg methodsFor: 'recovered'!
nFromPage
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006700; bytecode file offset 0x15a004"
!OSPrintdlg methodsFor: 'recovered'!
nToPage
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (26).
    ^recoveredValue0
! !

"psupp.ic method 0x200068e4; bytecode file offset 0x15a428"
!OSPrintdlg methodsFor: 'recovered'!
nMinPage
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006bd4; bytecode file offset 0x15a46c"
!OSPrintdlg methodsFor: 'recovered'!
nMaxPage
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (30).
    ^recoveredValue0
! !

"psupp.ic method 0x20006dec; bytecode file offset 0x15a780"
!OSPrintdlg methodsFor: 'recovered'!
nCopies
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200071fc; bytecode file offset 0x15aab8"
!OSPrintdlg methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (38).
    ^recoveredValue0
! !

"psupp.ic method 0x20007524; bytecode file offset 0x15adbc"
!OSPrintdlg methodsFor: 'recovered'!
lpfnPrintHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (42).
    ^recoveredValue0
! !

"psupp.ic method 0x200077b4; bytecode file offset 0x15b0ac"
!OSPrintdlg methodsFor: 'recovered'!
lpfnSetupHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (46).
    ^recoveredValue0
! !

"psupp.ic method 0x20008dc8; bytecode file offset 0x15caa4"
!OSPrintdlg methodsFor: 'recovered'!
printDlg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := PrintDlg.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200118dc; bytecode file offset 0x165330"
!OSPrintdlg methodsFor: 'recovered'!
lStructSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200121c4; bytecode file offset 0x166e00"
!OSPrintdlg methodsFor: 'recovered'!
hwndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001481c; bytecode file offset 0x1683c0"
!OSPrintdlg methodsFor: 'recovered'!
hDevMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014fd8; bytecode file offset 0x169290"
!OSPrintdlg methodsFor: 'recovered'!
hDevNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015d88; bytecode file offset 0x169eb4"
!OSPrintdlg methodsFor: 'recovered'!
hDC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a18; bytecode file offset 0x16a7b4"
!OSPrintdlg methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017450; bytecode file offset 0x16afe8"
!OSPrintdlg methodsFor: 'recovered'!
nFromPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200177f8; bytecode file offset 0x16b0cc"
!OSPrintdlg methodsFor: 'recovered'!
nToPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (26) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c00; bytecode file offset 0x16b690"
!OSPrintdlg methodsFor: 'recovered'!
nMinPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017e34; bytecode file offset 0x16b6d8"
!OSPrintdlg methodsFor: 'recovered'!
nMaxPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (30) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018128; bytecode file offset 0x16bb70"
!OSPrintdlg methodsFor: 'recovered'!
nCopies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018320; bytecode file offset 0x16bbd0"
!OSPrintdlg methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (34) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018770; bytecode file offset 0x16c038"
!OSPrintdlg methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (38) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018b18; bytecode file offset 0x16c3e0"
!OSPrintdlg methodsFor: 'recovered'!
lpfnPrintHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (42) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018ecc; bytecode file offset 0x16c770"
!OSPrintdlg methodsFor: 'recovered'!
lpfnSetupHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (46) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200191e4; bytecode file offset 0x16ca94"
!OSPrintdlg methodsFor: 'recovered'!
lpPrintTemplateName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (50) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019448; bytecode file offset 0x16cce0"
!OSPrintdlg methodsFor: 'recovered'!
lpSetupTemplateName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (54) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019664; bytecode file offset 0x16cf14"
!OSPrintdlg methodsFor: 'recovered'!
hPrintTemplate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (58) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019838; bytecode file offset 0x16d0d0"
!OSPrintdlg methodsFor: 'recovered'!
hSetupTemplate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (62) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b380; bytecode file offset 0x16f1fc"
!OSPrintdlg methodsFor: 'recovered'!
hwndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bbd4; bytecode file offset 0x16f8e8"
!OSPrintdlg methodsFor: 'recovered'!
hDevMode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c144; bytecode file offset 0x16fe44"
!OSPrintdlg methodsFor: 'recovered'!
hDevNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c7b8; bytecode file offset 0x170238"
!OSPrintdlg methodsFor: 'recovered'!
hDC
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHdc.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d2a0; bytecode file offset 0x170b40"
!OSPrintdlg methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (34).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d6ec; bytecode file offset 0x170f8c"
!OSPrintdlg methodsFor: 'recovered'!
lpPrintTemplateName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (50).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d7a4; bytecode file offset 0x171044"
!OSPrintdlg methodsFor: 'recovered'!
lpSetupTemplateName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (54).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d80c; bytecode file offset 0x1710ac"
!OSPrintdlg methodsFor: 'recovered'!
hPrintTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (58).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d89c; bytecode file offset 0x17113c"
!OSPrintdlg methodsFor: 'recovered'!
hSetupTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (62).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

