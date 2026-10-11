"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e18; bytecode file offset 0x155d58"
!OSPoint methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003110; bytecode file offset 0x157170"
!OSPoint methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20008e78; bytecode file offset 0x15caa4"
!OSPoint methodsFor: 'recovered'!
getCursorPos
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetCursorPos.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008f28; bytecode file offset 0x15caa4"
!OSPoint methodsFor: 'recovered'!
windowFromPoint
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (recoveredValue0) windowFromPoint: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200090b8; bytecode file offset 0x15caa4"
!OSPoint methodsFor: 'recovered'!
getCaretPos
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetCaretPos.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20011828; bytecode file offset 0x165330"
!OSPoint methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200131b4; bytecode file offset 0x166e00"
!OSPoint methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20022784; bytecode file offset 0x1760d0"
!OSPoint methodsFor: 'recovered'!
imageListGetDragImage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSHimagelist.
    recoveredValue1 := ImageListGetDragImage.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) callWith: (self) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20027e34; bytecode file offset 0x17b888"
!OSPoint methodsFor: 'recovered'!
createPolygonRgn: recoveredArg1 fnPolyFillMode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHrgn.
    recoveredValue1 := CreatePolygonRgn.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200293f4; bytecode file offset 0x17ce78"
!OSPoint methodsFor: 'recovered'!
createPolyPolygonRgn: recoveredArg1 cIntegers: recoveredArg2 fnPolyFillMode: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSHrgn.
    recoveredValue1 := CreatePolyPolygonRgn.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) immediate: (recoveredValue5).
    ^recoveredValue6
! !

