"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001da0; bytecode file offset 0x155d58"
!OSLogpen methodsFor: 'recovered'!
lopnStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20004c08; bytecode file offset 0x1589a4"
!OSLogpen methodsFor: 'recovered'!
lopnColor
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d504; bytecode file offset 0x160f90"
!OSLogpen methodsFor: 'recovered'!
lopnWidth
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200105e0; bytecode file offset 0x165330"
!OSLogpen methodsFor: 'recovered'!
lopnStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200124f4; bytecode file offset 0x166e00"
!OSLogpen methodsFor: 'recovered'!
lopnWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001556c; bytecode file offset 0x169290"
!OSLogpen methodsFor: 'recovered'!
lopnColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a9f0; bytecode file offset 0x16e2c4"
!OSLogpen methodsFor: 'recovered'!
createPenIndirect
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHpen.
    recoveredValue1 := CreatePenIndirect.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

