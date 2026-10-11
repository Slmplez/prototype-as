"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001344; bytecode file offset 0x155d58"
!OSOpenfilename methodsFor: 'recovered'!
lStructSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005ec0; bytecode file offset 0x159974"
!OSOpenfilename methodsFor: 'recovered'!
nMaxCustFilter
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200063b4; bytecode file offset 0x159f34"
!OSOpenfilename methodsFor: 'recovered'!
nFilterIndex
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006ee8; bytecode file offset 0x15a780"
!OSOpenfilename methodsFor: 'recovered'!
nMaxFile
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200073fc; bytecode file offset 0x15ad48"
!OSOpenfilename methodsFor: 'recovered'!
nMaxFileTitle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007b14; bytecode file offset 0x15b490"
!OSOpenfilename methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (52).
    ^recoveredValue0
! !

"psupp.ic method 0x20007cd8; bytecode file offset 0x15b654"
!OSOpenfilename methodsFor: 'recovered'!
nFileOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007e14; bytecode file offset 0x15b6b8"
!OSOpenfilename methodsFor: 'recovered'!
nFileExtension
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (58).
    ^recoveredValue0
! !

"psupp.ic method 0x200088f8; bytecode file offset 0x15caa4"
!OSOpenfilename methodsFor: 'recovered'!
getSaveFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetSaveFileName.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009058; bytecode file offset 0x15caa4"
!OSOpenfilename methodsFor: 'recovered'!
getOpenFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetOpenFileName.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000b274; bytecode file offset 0x15eb84"
!OSOpenfilename methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b364; bytecode file offset 0x15ecb0"
!OSOpenfilename methodsFor: 'recovered'!
lpfnHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (68).
    ^recoveredValue0
! !

"psupp.ic method 0x200112a0; bytecode file offset 0x165330"
!OSOpenfilename methodsFor: 'recovered'!
lStructSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012cb0; bytecode file offset 0x166e00"
!OSOpenfilename methodsFor: 'recovered'!
hwndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013a24; bytecode file offset 0x1683c0"
!OSOpenfilename methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014fc0; bytecode file offset 0x169290"
!OSOpenfilename methodsFor: 'recovered'!
lpstrFilter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016148; bytecode file offset 0x169eb4"
!OSOpenfilename methodsFor: 'recovered'!
lpstrCustomFilter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016c34; bytecode file offset 0x16a7b4"
!OSOpenfilename methodsFor: 'recovered'!
nMaxCustFilter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017564; bytecode file offset 0x16afe8"
!OSOpenfilename methodsFor: 'recovered'!
nFilterIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017a80; bytecode file offset 0x16b690"
!OSOpenfilename methodsFor: 'recovered'!
lpstrFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200181dc; bytecode file offset 0x16bb70"
!OSOpenfilename methodsFor: 'recovered'!
nMaxFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001853c; bytecode file offset 0x16bff0"
!OSOpenfilename methodsFor: 'recovered'!
lpstrFileTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001880c; bytecode file offset 0x16c368"
!OSOpenfilename methodsFor: 'recovered'!
nMaxFileTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018dd0; bytecode file offset 0x16c6bc"
!OSOpenfilename methodsFor: 'recovered'!
lpstrInitialDir: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019124; bytecode file offset 0x16c9d4"
!OSOpenfilename methodsFor: 'recovered'!
lpstrTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019364; bytecode file offset 0x16cc74"
!OSOpenfilename methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001958c; bytecode file offset 0x16ce9c"
!OSOpenfilename methodsFor: 'recovered'!
nFileOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001967c; bytecode file offset 0x16cf14"
!OSOpenfilename methodsFor: 'recovered'!
nFileExtension: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (58) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001973c; bytecode file offset 0x16d088"
!OSOpenfilename methodsFor: 'recovered'!
lpstrDefExt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b6dc; bytecode file offset 0x16f1fc"
!OSOpenfilename methodsFor: 'recovered'!
hwndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bd14; bytecode file offset 0x16f8e8"
!OSOpenfilename methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c2ac; bytecode file offset 0x16fe44"
!OSOpenfilename methodsFor: 'recovered'!
lpstrFilter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c5ec; bytecode file offset 0x170238"
!OSOpenfilename methodsFor: 'recovered'!
lpstrCustomFilter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cf04; bytecode file offset 0x170948"
!OSOpenfilename methodsFor: 'recovered'!
lpstrFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d2d4; bytecode file offset 0x170d40"
!OSOpenfilename methodsFor: 'recovered'!
lpstrFileTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d5f8; bytecode file offset 0x170f10"
!OSOpenfilename methodsFor: 'recovered'!
lpstrInitialDir
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (44).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d6a4; bytecode file offset 0x170f6c"
!OSOpenfilename methodsFor: 'recovered'!
lpstrTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (48).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d87c; bytecode file offset 0x17111c"
!OSOpenfilename methodsFor: 'recovered'!
lpstrDefExt
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (60).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001e9cc; bytecode file offset 0x17226c"
!OSOpenfilename methodsFor: 'recovered'!
lpTemplateName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (72).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001fa7c; bytecode file offset 0x173428"
!OSOpenfilename methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fc9c; bytecode file offset 0x1735ac"
!OSOpenfilename methodsFor: 'recovered'!
lpfnHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (68) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fdd4; bytecode file offset 0x1736cc"
!OSOpenfilename methodsFor: 'recovered'!
lpTemplateName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (72) put: (recoveredValue0).
    ^self
! !

