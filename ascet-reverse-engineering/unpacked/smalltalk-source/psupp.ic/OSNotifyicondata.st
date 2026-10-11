"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001ee4; bytecode file offset 0x155d58"
!OSNotifyicondata methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000445c; bytecode file offset 0x157f64"
!OSNotifyicondata methodsFor: 'recovered'!
uID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004884; bytecode file offset 0x1589a4"
!OSNotifyicondata methodsFor: 'recovered'!
uFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200056d8; bytecode file offset 0x159294"
!OSNotifyicondata methodsFor: 'recovered'!
uCallbackMessage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2001136c; bytecode file offset 0x165330"
!OSNotifyicondata methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200126ec; bytecode file offset 0x166e00"
!OSNotifyicondata methodsFor: 'recovered'!
hWnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013970; bytecode file offset 0x1683c0"
!OSNotifyicondata methodsFor: 'recovered'!
uID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015968; bytecode file offset 0x169290"
!OSNotifyicondata methodsFor: 'recovered'!
uFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016118; bytecode file offset 0x169eb4"
!OSNotifyicondata methodsFor: 'recovered'!
uCallbackMessage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a6c; bytecode file offset 0x16a7b4"
!OSNotifyicondata methodsFor: 'recovered'!
hIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b2f4; bytecode file offset 0x16f1fc"
!OSNotifyicondata methodsFor: 'recovered'!
hWnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c9e0; bytecode file offset 0x17049c"
!OSNotifyicondata methodsFor: 'recovered'!
hIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001efd4; bytecode file offset 0x17286c"
!OSNotifyicondata methodsFor: 'recovered'!
szTip
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (24) size: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x200256c8; bytecode file offset 0x178f60"
!OSNotifyicondata methodsFor: 'recovered'!
szTip: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (24) put: (recoveredValue0) size: (64).
    ^self
! !

