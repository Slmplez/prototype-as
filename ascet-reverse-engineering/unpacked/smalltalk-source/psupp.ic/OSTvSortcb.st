"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003620; bytecode file offset 0x157170"
!OSTvSortcb methodsFor: 'recovered'!
lpfnCompare
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004048; bytecode file offset 0x157f64"
!OSTvSortcb methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010f7c; bytecode file offset 0x165330"
!OSTvSortcb methodsFor: 'recovered'!
hParent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012488; bytecode file offset 0x166e00"
!OSTvSortcb methodsFor: 'recovered'!
lpfnCompare: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200138f8; bytecode file offset 0x1683c0"
!OSTvSortcb methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001abe0; bytecode file offset 0x16ea70"
!OSTvSortcb methodsFor: 'recovered'!
hParent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHtreeitem.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

