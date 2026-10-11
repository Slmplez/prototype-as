"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002d2c; bytecode file offset 0x157170"
!OSTbaddbitmap methodsFor: 'recovered'!
nID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20011354; bytecode file offset 0x165330"
!OSTbaddbitmap methodsFor: 'recovered'!
hInst: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013190; bytecode file offset 0x166e00"
!OSTbaddbitmap methodsFor: 'recovered'!
nID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ad0c; bytecode file offset 0x16ea70"
!OSTbaddbitmap methodsFor: 'recovered'!
hInst
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

