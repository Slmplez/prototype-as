"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200013bc; bytecode file offset 0x155d58"
!OSMsgboxparams methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005cb0; bytecode file offset 0x159974"
!OSMsgboxparams methodsFor: 'recovered'!
dwStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200067dc; bytecode file offset 0x15a428"
!OSMsgboxparams methodsFor: 'recovered'!
dwContextHelpId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006be8; bytecode file offset 0x15a780"
!OSMsgboxparams methodsFor: 'recovered'!
lpfnMsgBoxCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20007008; bytecode file offset 0x15aa74"
!OSMsgboxparams methodsFor: 'recovered'!
dwLanguageId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x20008788; bytecode file offset 0x15caa4"
!OSMsgboxparams methodsFor: 'recovered'!
messageBoxIndirect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MessageBoxIndirect.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fdb8; bytecode file offset 0x165330"
!OSMsgboxparams methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200124b8; bytecode file offset 0x166e00"
!OSMsgboxparams methodsFor: 'recovered'!
hwndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001397c; bytecode file offset 0x1683c0"
!OSMsgboxparams methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015260; bytecode file offset 0x169290"
!OSMsgboxparams methodsFor: 'recovered'!
lpszText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001607c; bytecode file offset 0x169eb4"
!OSMsgboxparams methodsFor: 'recovered'!
lpszCaption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b8c; bytecode file offset 0x16a7b4"
!OSMsgboxparams methodsFor: 'recovered'!
dwStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001760c; bytecode file offset 0x16afe8"
!OSMsgboxparams methodsFor: 'recovered'!
lpszIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017d50; bytecode file offset 0x16b690"
!OSMsgboxparams methodsFor: 'recovered'!
dwContextHelpId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017fcc; bytecode file offset 0x16bb70"
!OSMsgboxparams methodsFor: 'recovered'!
lpfnMsgBoxCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200186bc; bytecode file offset 0x16bff0"
!OSMsgboxparams methodsFor: 'recovered'!
dwLanguageId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b72c; bytecode file offset 0x16f1fc"
!OSMsgboxparams methodsFor: 'recovered'!
hwndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bcd8; bytecode file offset 0x16f8e8"
!OSMsgboxparams methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c1a8; bytecode file offset 0x16fe44"
!OSMsgboxparams methodsFor: 'recovered'!
lpszText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c808; bytecode file offset 0x170238"
!OSMsgboxparams methodsFor: 'recovered'!
lpszCaption
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ce38; bytecode file offset 0x170728"
!OSMsgboxparams methodsFor: 'recovered'!
lpszIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

