"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001080; bytecode file offset 0x155d58"
!OSLogbrush methodsFor: 'recovered'!
lbStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200030c8; bytecode file offset 0x157170"
!OSLogbrush methodsFor: 'recovered'!
lbColor
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004234; bytecode file offset 0x157f64"
!OSLogbrush methodsFor: 'recovered'!
lbHatch
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200112dc; bytecode file offset 0x165330"
!OSLogbrush methodsFor: 'recovered'!
lbStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012eb4; bytecode file offset 0x166e00"
!OSLogbrush methodsFor: 'recovered'!
lbColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013898; bytecode file offset 0x1683c0"
!OSLogbrush methodsFor: 'recovered'!
lbHatch: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a600; bytecode file offset 0x16e2c4"
!OSLogbrush methodsFor: 'recovered'!
createBrushIndirect
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHbrush.
    recoveredValue1 := CreateBrushIndirect.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

