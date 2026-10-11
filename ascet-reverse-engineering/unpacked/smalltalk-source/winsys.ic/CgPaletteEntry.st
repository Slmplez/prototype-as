"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200029c0; bytecode file offset 0x7ed00"
!CgPaletteEntry methodsFor: 'recovered'!
color
    | recoveredValue0 |
    recoveredValue0 := color.
    ^recoveredValue0
! !

"winsys.ic method 0x20002bc0; bytecode file offset 0x7efc0"
!CgPaletteEntry methodsFor: 'recovered'!
animating
    | recoveredValue0 |
    recoveredValue0 := animating.
    ^recoveredValue0
! !

"winsys.ic method 0x20007134; bytecode file offset 0x8346c"
!CgPaletteEntry methodsFor: 'recovered'!
color: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    color := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200073b4; bytecode file offset 0x836b4"
!CgPaletteEntry methodsFor: 'recovered'!
animating: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    animating := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000945c; bytecode file offset 0x85630"
!CgPaletteEntry methodsFor: 'recovered'!
copy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) color.
    recoveredValue2 := (recoveredValue1) copy.
    recoveredValue3 := (self) animating.
    recoveredValue4 := (recoveredValue0) color: (recoveredValue2) animating: (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x2001d0cc; bytecode file offset 0x992ac"
!CgPaletteEntry methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: ('(color: ').
    recoveredValue2 := (self) color.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPutAll: (' animating: ').
    recoveredValue5 := (self) animating.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) nextPut: ($)).
    ^self
! !

