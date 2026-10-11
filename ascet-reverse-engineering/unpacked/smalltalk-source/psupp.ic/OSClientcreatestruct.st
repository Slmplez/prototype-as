"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200038cc; bytecode file offset 0x157170"
!OSClientcreatestruct methodsFor: 'recovered'!
idFirstChild
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20011894; bytecode file offset 0x165330"
!OSClientcreatestruct methodsFor: 'recovered'!
hWindowMenu: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012df4; bytecode file offset 0x166e00"
!OSClientcreatestruct methodsFor: 'recovered'!
idFirstChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ae4c; bytecode file offset 0x16ea70"
!OSClientcreatestruct methodsFor: 'recovered'!
hWindowMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

