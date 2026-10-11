"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001c20; bytecode file offset 0x155d58"
!OSPropsheetpagew methodsFor: 'recovered'!
dwSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003044; bytecode file offset 0x157170"
!OSPropsheetpagew methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200062ac; bytecode file offset 0x159f34"
!OSPropsheetpagew methodsFor: 'recovered'!
pfnDlgProc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006ae8; bytecode file offset 0x15a428"
!OSPropsheetpagew methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006e58; bytecode file offset 0x15a780"
!OSPropsheetpagew methodsFor: 'recovered'!
pfnCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20010598; bytecode file offset 0x165330"
!OSPropsheetpagew methodsFor: 'recovered'!
dwSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200133f4; bytecode file offset 0x166e00"
!OSPropsheetpagew methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200138ec; bytecode file offset 0x1683c0"
!OSPropsheetpagew methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200154c4; bytecode file offset 0x169290"
!OSPropsheetpagew methodsFor: 'recovered'!
pResource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015560; bytecode file offset 0x169290"
!OSPropsheetpagew methodsFor: 'recovered'!
pszTemplate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e90; bytecode file offset 0x169eb4"
!OSPropsheetpagew methodsFor: 'recovered'!
pszIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200160dc; bytecode file offset 0x169eb4"
!OSPropsheetpagew methodsFor: 'recovered'!
hIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016e50; bytecode file offset 0x16a7b4"
!OSPropsheetpagew methodsFor: 'recovered'!
pszTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200173e4; bytecode file offset 0x16afe8"
!OSPropsheetpagew methodsFor: 'recovered'!
pfnDlgProc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001796c; bytecode file offset 0x16b690"
!OSPropsheetpagew methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017edc; bytecode file offset 0x16bb70"
!OSPropsheetpagew methodsFor: 'recovered'!
pfnCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018410; bytecode file offset 0x16bff0"
!OSPropsheetpagew methodsFor: 'recovered'!
pcRefParent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aa20; bytecode file offset 0x16e2c4"
!OSPropsheetpagew methodsFor: 'recovered'!
createPropertySheetPage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHpropsheetpage.
    recoveredValue1 := CreatePropertySheetPageW.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001bc74; bytecode file offset 0x16f8e8"
!OSPropsheetpagew methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c414; bytecode file offset 0x16fe44"
!OSPropsheetpagew methodsFor: 'recovered'!
pszTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c4c8; bytecode file offset 0x16fe44"
!OSPropsheetpagew methodsFor: 'recovered'!
pResource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSDlgtemplate.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c6dc; bytecode file offset 0x170238"
!OSPropsheetpagew methodsFor: 'recovered'!
hIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c704; bytecode file offset 0x170238"
!OSPropsheetpagew methodsFor: 'recovered'!
pszIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ca80; bytecode file offset 0x17049c"
!OSPropsheetpagew methodsFor: 'recovered'!
pszTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d48c; bytecode file offset 0x170d40"
!OSPropsheetpagew methodsFor: 'recovered'!
pcRefParent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

