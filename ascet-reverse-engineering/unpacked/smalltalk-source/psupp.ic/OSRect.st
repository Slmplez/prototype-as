"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000225c; bytecode file offset 0x155d58"
!OSRect methodsFor: 'recovered'!
left
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000353c; bytecode file offset 0x157170"
!OSRect methodsFor: 'recovered'!
top
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200041a4; bytecode file offset 0x157f64"
!OSRect methodsFor: 'recovered'!
right
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004b90; bytecode file offset 0x1589a4"
!OSRect methodsFor: 'recovered'!
bottom
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20008338; bytecode file offset 0x15caa4"
!OSRect methodsFor: 'recovered'!
setRectEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SetRectEmpty.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200087f8; bytecode file offset 0x15caa4"
!OSRect methodsFor: 'recovered'!
clipCursor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ClipCursor.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008838; bytecode file offset 0x15caa4"
!OSRect methodsFor: 'recovered'!
isRectEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IsRectEmpty.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200089b8; bytecode file offset 0x15caa4"
!OSRect methodsFor: 'recovered'!
getClipCursor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetClipCursor.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ec8c; bytecode file offset 0x163098"
!OSRect methodsFor: 'recovered'!
copyRect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CopyRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f0ac; bytecode file offset 0x163098"
!OSRect methodsFor: 'recovered'!
ptInRect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PtInRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f5ec; bytecode file offset 0x163098"
!OSRect methodsFor: 'recovered'!
equalRect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EqualRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001028c; bytecode file offset 0x165330"
!OSRect methodsFor: 'recovered'!
left: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012b30; bytecode file offset 0x166e00"
!OSRect methodsFor: 'recovered'!
top: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013afc; bytecode file offset 0x1683c0"
!OSRect methodsFor: 'recovered'!
right: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001529c; bytecode file offset 0x169290"
!OSRect methodsFor: 'recovered'!
bottom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a780; bytecode file offset 0x16e2c4"
!OSRect methodsFor: 'recovered'!
createEllipticRgnIndirect
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHrgn.
    recoveredValue1 := CreateEllipticRgnIndirect.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001a810; bytecode file offset 0x16e2c4"
!OSRect methodsFor: 'recovered'!
createRectRgnIndirect
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHrgn.
    recoveredValue1 := CreateRectRgnIndirect.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20020a4c; bytecode file offset 0x174df8"
!OSRect methodsFor: 'recovered'!
inflateRect: recoveredArg1 yAmt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := InflateRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20020a9c; bytecode file offset 0x174df8"
!OSRect methodsFor: 'recovered'!
subtractRect: recoveredArg1 lprcSource2: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SubtractRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20020c0c; bytecode file offset 0x174df8"
!OSRect methodsFor: 'recovered'!
intersectRect: recoveredArg1 lprcSrc2: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := IntersectRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200211fc; bytecode file offset 0x174df8"
!OSRect methodsFor: 'recovered'!
unionRect: recoveredArg1 lprcSrc2: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := UnionRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200212dc; bytecode file offset 0x174df8"
!OSRect methodsFor: 'recovered'!
offsetRect: recoveredArg1 y: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OffsetRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002150c; bytecode file offset 0x174df8"
!OSRect methodsFor: 'recovered'!
adjustWindowRect: recoveredArg1 fMenu: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AdjustWindowRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20024568; bytecode file offset 0x1781a4"
!OSRect methodsFor: 'recovered'!
adjustWindowRectEx: recoveredArg1 fMenu: recoveredArg2 dwExStyle: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AdjustWindowRectEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2002631c; bytecode file offset 0x179e98"
!OSRect methodsFor: 'recovered'!
setRect: recoveredArg1 nTop: recoveredArg2 nRight: recoveredArg3 nBottom: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SetRect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

