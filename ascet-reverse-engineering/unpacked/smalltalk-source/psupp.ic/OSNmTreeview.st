"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004a34; bytecode file offset 0x1589a4"
!OSNmTreeview methodsFor: 'recovered'!
action
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cda0; bytecode file offset 0x160b8c"
!OSNmTreeview methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e08c; bytecode file offset 0x161938"
!OSNmTreeview methodsFor: 'recovered'!
itemOld
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSTvItem.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e798; bytecode file offset 0x162034"
!OSNmTreeview methodsFor: 'recovered'!
itemNew
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSTvItem.
    recoveredValue1 := (self) structAt: (56) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010268; bytecode file offset 0x165330"
!OSNmTreeview methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200155b4; bytecode file offset 0x169290"
!OSNmTreeview methodsFor: 'recovered'!
action: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015cd4; bytecode file offset 0x169eb4"
!OSNmTreeview methodsFor: 'recovered'!
itemOld: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019490; bytecode file offset 0x16ce9c"
!OSNmTreeview methodsFor: 'recovered'!
itemNew: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f338; bytecode file offset 0x172bd4"
!OSNmTreeview methodsFor: 'recovered'!
ptDrag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (96) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200202c4; bytecode file offset 0x173b74"
!OSNmTreeview methodsFor: 'recovered'!
ptDrag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (96) put: (recoveredValue0).
    ^self
! !

