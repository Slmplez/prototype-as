"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001380; bytecode file offset 0x155d58"
!OSPropsheetheader methodsFor: 'recovered'!
dwSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000308c; bytecode file offset 0x157170"
!OSPropsheetheader methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20006408; bytecode file offset 0x159f34"
!OSPropsheetheader methodsFor: 'recovered'!
nPages
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006b48; bytecode file offset 0x15a428"
!OSPropsheetheader methodsFor: 'recovered'!
nStartPage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20007158; bytecode file offset 0x15aa74"
!OSPropsheetheader methodsFor: 'recovered'!
pfnCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20008bb8; bytecode file offset 0x15caa4"
!OSPropsheetheader methodsFor: 'recovered'!
propertySheet
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := PropertySheet.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20010fa0; bytecode file offset 0x165330"
!OSPropsheetheader methodsFor: 'recovered'!
dwSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001241c; bytecode file offset 0x166e00"
!OSPropsheetheader methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013a9c; bytecode file offset 0x1683c0"
!OSPropsheetheader methodsFor: 'recovered'!
hwndParent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015908; bytecode file offset 0x169290"
!OSPropsheetheader methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016070; bytecode file offset 0x169eb4"
!OSPropsheetheader methodsFor: 'recovered'!
hIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016424; bytecode file offset 0x169eb4"
!OSPropsheetheader methodsFor: 'recovered'!
pszIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016ad8; bytecode file offset 0x16a7b4"
!OSPropsheetheader methodsFor: 'recovered'!
pszCaption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200172c4; bytecode file offset 0x16afe8"
!OSPropsheetheader methodsFor: 'recovered'!
nPages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017918; bytecode file offset 0x16b690"
!OSPropsheetheader methodsFor: 'recovered'!
pStartPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017990; bytecode file offset 0x16b690"
!OSPropsheetheader methodsFor: 'recovered'!
nStartPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017f78; bytecode file offset 0x16bb70"
!OSPropsheetheader methodsFor: 'recovered'!
phpage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200180a4; bytecode file offset 0x16bb70"
!OSPropsheetheader methodsFor: 'recovered'!
ppsp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018404; bytecode file offset 0x16bff0"
!OSPropsheetheader methodsFor: 'recovered'!
pfnCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ba58; bytecode file offset 0x16f8e8"
!OSPropsheetheader methodsFor: 'recovered'!
hwndParent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c0a4; bytecode file offset 0x16fe44"
!OSPropsheetheader methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c650; bytecode file offset 0x170238"
!OSPropsheetheader methodsFor: 'recovered'!
hIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c970; bytecode file offset 0x170238"
!OSPropsheetheader methodsFor: 'recovered'!
pszIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ca94; bytecode file offset 0x17049c"
!OSPropsheetheader methodsFor: 'recovered'!
pszCaption
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d06c; bytecode file offset 0x170948"
!OSPropsheetheader methodsFor: 'recovered'!
pStartPage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d1e0; bytecode file offset 0x170b20"
!OSPropsheetheader methodsFor: 'recovered'!
ppsp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSPropsheetpage.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002a060; bytecode file offset 0x17d904"
!OSPropsheetheader methodsFor: 'recovered'!
phpage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := OSHpropsheetpage.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

