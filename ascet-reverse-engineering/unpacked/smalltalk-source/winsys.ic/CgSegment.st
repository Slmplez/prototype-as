"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002a18; bytecode file offset 0x7ed00"
!CgSegment methodsFor: 'recovered'!
x1
    | recoveredValue0 |
    recoveredValue0 := x1.
    ^recoveredValue0
! !

"winsys.ic method 0x20002c28; bytecode file offset 0x7efc0"
!CgSegment methodsFor: 'recovered'!
y1
    | recoveredValue0 |
    recoveredValue0 := y1.
    ^recoveredValue0
! !

"winsys.ic method 0x20002f00; bytecode file offset 0x7f220"
!CgSegment methodsFor: 'recovered'!
x2
    | recoveredValue0 |
    recoveredValue0 := x2.
    ^recoveredValue0
! !

"winsys.ic method 0x200031d8; bytecode file offset 0x7f418"
!CgSegment methodsFor: 'recovered'!
y2
    | recoveredValue0 |
    recoveredValue0 := y2.
    ^recoveredValue0
! !

"winsys.ic method 0x20004f80; bytecode file offset 0x81144"
!CgSegment methodsFor: 'recovered'!
point1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := x1.
    recoveredValue1 := y1.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x20005010; bytecode file offset 0x811d4"
!CgSegment methodsFor: 'recovered'!
point2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := x2.
    recoveredValue1 := y2.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x2000713c; bytecode file offset 0x8346c"
!CgSegment methodsFor: 'recovered'!
x1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x1 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007324; bytecode file offset 0x836b4"
!CgSegment methodsFor: 'recovered'!
y1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y1 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000765c; bytecode file offset 0x838d4"
!CgSegment methodsFor: 'recovered'!
x2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x2 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007864; bytecode file offset 0x83a6c"
!CgSegment methodsFor: 'recovered'!
y2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y2 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200097c4; bytecode file offset 0x8598c"
!CgSegment methodsFor: 'recovered'!
point1: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    x1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    y1 := recoveredValue3.
    ^self
! !

"winsys.ic method 0x200097e4; bytecode file offset 0x859ac"
!CgSegment methodsFor: 'recovered'!
point2: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    x2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    y2 := recoveredValue3.
    ^self
! !

"winsys.ic method 0x2000cb78; bytecode file offset 0x88d38"
!CgSegment methodsFor: 'recovered'!
x1: recoveredArg1 y1: recoveredArg2 x2: recoveredArg3 y2: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    x1 := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    y1 := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    x2 := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    y2 := recoveredValue3.
    ^self
! !

"winsys.ic method 0x20010ea4; bytecode file offset 0x8d06c"
!CgSegment methodsFor: 'recovered'!
point1: recoveredArg1 point2: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    x1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    y1 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) x.
    x2 := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) y.
    y2 := recoveredValue7.
    ^self
! !

"winsys.ic method 0x20025d68; bytecode file offset 0xa1f60"
!CgSegment methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) x1.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := ('(x1: ') , (recoveredValue4).
    (recoveredValue2) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) y1.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (' y1: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) x2.
    recoveredValue12 := (recoveredValue11) printString.
    recoveredValue13 := (' x2: ') , (recoveredValue12).
    (recoveredValue10) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) y2.
    recoveredValue16 := (recoveredValue15) printString.
    recoveredValue17 := (' y2: ') , (recoveredValue16).
    (recoveredValue14) nextPutAll: (recoveredValue17).
    (recoveredValue1) nextPut: ($)).
    ^self
! !

