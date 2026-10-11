"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002250; bytecode file offset 0x155d58"
!OSChoosefont methodsFor: 'recovered'!
lStructSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005570; bytecode file offset 0x159294"
!OSChoosefont methodsFor: 'recovered'!
iPointSize
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x200060d0; bytecode file offset 0x159974"
!OSChoosefont methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200065d0; bytecode file offset 0x159f34"
!OSChoosefont methodsFor: 'recovered'!
rgbColors
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006b6c; bytecode file offset 0x15a428"
!OSChoosefont methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006dc8; bytecode file offset 0x15a780"
!OSChoosefont methodsFor: 'recovered'!
lpfnHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000786c; bytecode file offset 0x15b29c"
!OSChoosefont methodsFor: 'recovered'!
nFontType
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007a68; bytecode file offset 0x15b348"
!OSChoosefont methodsFor: 'recovered'!
MISSINGALIGNMENT
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (50).
    ^recoveredValue0
! !

"psupp.ic method 0x20007afc; bytecode file offset 0x15b490"
!OSChoosefont methodsFor: 'recovered'!
nSizeMin
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (52).
    ^recoveredValue0
! !

"psupp.ic method 0x20007d50; bytecode file offset 0x15b654"
!OSChoosefont methodsFor: 'recovered'!
nSizeMax
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20008cf8; bytecode file offset 0x15caa4"
!OSChoosefont methodsFor: 'recovered'!
chooseFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ChooseFont.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fd4c; bytecode file offset 0x165330"
!OSChoosefont methodsFor: 'recovered'!
lStructSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200123bc; bytecode file offset 0x166e00"
!OSChoosefont methodsFor: 'recovered'!
hwndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200145a0; bytecode file offset 0x1683c0"
!OSChoosefont methodsFor: 'recovered'!
hDC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015608; bytecode file offset 0x169290"
!OSChoosefont methodsFor: 'recovered'!
lpLogFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200163dc; bytecode file offset 0x169eb4"
!OSChoosefont methodsFor: 'recovered'!
iPointSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016d54; bytecode file offset 0x16a7b4"
!OSChoosefont methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001766c; bytecode file offset 0x16afe8"
!OSChoosefont methodsFor: 'recovered'!
rgbColors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017b64; bytecode file offset 0x16b690"
!OSChoosefont methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017f24; bytecode file offset 0x16bb70"
!OSChoosefont methodsFor: 'recovered'!
lpfnHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018494; bytecode file offset 0x16bff0"
!OSChoosefont methodsFor: 'recovered'!
lpTemplateName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018a10; bytecode file offset 0x16c368"
!OSChoosefont methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018cb0; bytecode file offset 0x16c6bc"
!OSChoosefont methodsFor: 'recovered'!
lpszStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001901c; bytecode file offset 0x16c9d4"
!OSChoosefont methodsFor: 'recovered'!
nFontType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200191a8; bytecode file offset 0x16ca94"
!OSChoosefont methodsFor: 'recovered'!
MISSINGALIGNMENT: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (50) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019334; bytecode file offset 0x16cc74"
!OSChoosefont methodsFor: 'recovered'!
nSizeMin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200195e0; bytecode file offset 0x16ce9c"
!OSChoosefont methodsFor: 'recovered'!
nSizeMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b218; bytecode file offset 0x16f1fc"
!OSChoosefont methodsFor: 'recovered'!
hwndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bd78; bytecode file offset 0x16f8e8"
!OSChoosefont methodsFor: 'recovered'!
hDC
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHdc.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c108; bytecode file offset 0x16fe44"
!OSChoosefont methodsFor: 'recovered'!
lpLogFont
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d464; bytecode file offset 0x170d40"
!OSChoosefont methodsFor: 'recovered'!
lpTemplateName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d560; bytecode file offset 0x170e28"
!OSChoosefont methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (40).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d620; bytecode file offset 0x170f10"
!OSChoosefont methodsFor: 'recovered'!
lpszStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (44).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

