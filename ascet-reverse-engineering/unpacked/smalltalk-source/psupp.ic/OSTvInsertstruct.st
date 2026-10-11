"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000db68; bytecode file offset 0x161514"
!OSTvInsertstruct methodsFor: 'recovered'!
item
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSTvItem.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001127c; bytecode file offset 0x165330"
!OSTvInsertstruct methodsFor: 'recovered'!
hParent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200127b8; bytecode file offset 0x166e00"
!OSTvInsertstruct methodsFor: 'recovered'!
hInsertAfter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200141f8; bytecode file offset 0x1683c0"
!OSTvInsertstruct methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ade8; bytecode file offset 0x16ea70"
!OSTvInsertstruct methodsFor: 'recovered'!
hParent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHtreeitem.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b22c; bytecode file offset 0x16f1fc"
!OSTvInsertstruct methodsFor: 'recovered'!
hInsertAfter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHtreeitem.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

