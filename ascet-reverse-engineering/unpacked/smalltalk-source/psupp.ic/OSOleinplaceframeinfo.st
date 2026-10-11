"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200014ac; bytecode file offset 0x155d58"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005534; bytecode file offset 0x159294"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
cAccelEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d770; bytecode file offset 0x161038"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
fMDIApp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x200117c8; bytecode file offset 0x165330"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012530; bytecode file offset 0x166e00"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
fMDIApp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ba4; bytecode file offset 0x1683c0"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
hwndFrame: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014f84; bytecode file offset 0x169290"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
haccel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015ba8; bytecode file offset 0x169eb4"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
cAccelEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bb84; bytecode file offset 0x16f8e8"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
hwndFrame
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c4dc; bytecode file offset 0x16fe44"
!OSOleinplaceframeinfo methodsFor: 'recovered'!
haccel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHaccel.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

