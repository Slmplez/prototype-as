"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e90; bytecode file offset 0x155d58"
!OSHelpinfo methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002c78; bytecode file offset 0x157170"
!OSHelpinfo methodsFor: 'recovered'!
iContextType
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000460c; bytecode file offset 0x157f64"
!OSHelpinfo methodsFor: 'recovered'!
iCtrlId
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000587c; bytecode file offset 0x159294"
!OSHelpinfo methodsFor: 'recovered'!
dwContextId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e178; bytecode file offset 0x161aa4"
!OSHelpinfo methodsFor: 'recovered'!
MousePos
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010910; bytecode file offset 0x165330"
!OSHelpinfo methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001298c; bytecode file offset 0x166e00"
!OSHelpinfo methodsFor: 'recovered'!
iContextType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014750; bytecode file offset 0x1683c0"
!OSHelpinfo methodsFor: 'recovered'!
iCtrlId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001562c; bytecode file offset 0x169290"
!OSHelpinfo methodsFor: 'recovered'!
hItemHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016520; bytecode file offset 0x169eb4"
!OSHelpinfo methodsFor: 'recovered'!
dwContextId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016ab4; bytecode file offset 0x16a7b4"
!OSHelpinfo methodsFor: 'recovered'!
MousePos: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c1e4; bytecode file offset 0x16fe44"
!OSHelpinfo methodsFor: 'recovered'!
hItemHandle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

