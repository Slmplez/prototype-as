"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001440; bytecode file offset 0x155d58"
!OSPagesetupdlg methodsFor: 'recovered'!
lStructSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200052a0; bytecode file offset 0x159294"
!OSPagesetupdlg methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20008fd8; bytecode file offset 0x15caa4"
!OSPagesetupdlg methodsFor: 'recovered'!
pageSetupDlg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := PageSetupDlg.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000b238; bytecode file offset 0x15eb84"
!OSPagesetupdlg methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b400; bytecode file offset 0x15ecb0"
!OSPagesetupdlg methodsFor: 'recovered'!
lpfnPageSetupHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (68).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b4c0; bytecode file offset 0x15ed70"
!OSPagesetupdlg methodsFor: 'recovered'!
lpfnPagePaintHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (72).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e138; bytecode file offset 0x161aa4"
!OSPagesetupdlg methodsFor: 'recovered'!
ptPaperSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e418; bytecode file offset 0x161d04"
!OSPagesetupdlg methodsFor: 'recovered'!
rtMinMargin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e694; bytecode file offset 0x161f30"
!OSPagesetupdlg methodsFor: 'recovered'!
rtMargin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (44) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200116c0; bytecode file offset 0x165330"
!OSPagesetupdlg methodsFor: 'recovered'!
lStructSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012e9c; bytecode file offset 0x166e00"
!OSPagesetupdlg methodsFor: 'recovered'!
hwndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200143f0; bytecode file offset 0x1683c0"
!OSPagesetupdlg methodsFor: 'recovered'!
hDevMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014fa8; bytecode file offset 0x169290"
!OSPagesetupdlg methodsFor: 'recovered'!
hDevNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001613c; bytecode file offset 0x169eb4"
!OSPagesetupdlg methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016e80; bytecode file offset 0x16a7b4"
!OSPagesetupdlg methodsFor: 'recovered'!
ptPaperSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017a08; bytecode file offset 0x16b690"
!OSPagesetupdlg methodsFor: 'recovered'!
rtMinMargin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018c68; bytecode file offset 0x16c6bc"
!OSPagesetupdlg methodsFor: 'recovered'!
rtMargin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200197cc; bytecode file offset 0x16d088"
!OSPagesetupdlg methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b470; bytecode file offset 0x16f1fc"
!OSPagesetupdlg methodsFor: 'recovered'!
hwndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b97c; bytecode file offset 0x16f8e8"
!OSPagesetupdlg methodsFor: 'recovered'!
hDevMode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c248; bytecode file offset 0x16fe44"
!OSPagesetupdlg methodsFor: 'recovered'!
hDevNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d868; bytecode file offset 0x17111c"
!OSPagesetupdlg methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (60).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ea14; bytecode file offset 0x1722dc"
!OSPagesetupdlg methodsFor: 'recovered'!
lpPageSetupTemplateName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (76).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ea84; bytecode file offset 0x172338"
!OSPagesetupdlg methodsFor: 'recovered'!
hPageSetupTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (80).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001fb90; bytecode file offset 0x173428"
!OSPagesetupdlg methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fc6c; bytecode file offset 0x1735ac"
!OSPagesetupdlg methodsFor: 'recovered'!
lpfnPageSetupHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (68) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fde0; bytecode file offset 0x1736cc"
!OSPagesetupdlg methodsFor: 'recovered'!
lpfnPagePaintHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (72) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ff20; bytecode file offset 0x1737b8"
!OSPagesetupdlg methodsFor: 'recovered'!
lpPageSetupTemplateName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (76) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ffc4; bytecode file offset 0x173898"
!OSPagesetupdlg methodsFor: 'recovered'!
hPageSetupTemplate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (80) put: (recoveredValue0).
    ^self
! !

