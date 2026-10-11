"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001fa4; bytecode file offset 0x155d58"
!OSFontdesc methodsFor: 'recovered'!
cbSizeofstruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005960; bytecode file offset 0x159294"
!OSFontdesc methodsFor: 'recovered'!
sWeight
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005a3c; bytecode file offset 0x159358"
!OSFontdesc methodsFor: 'recovered'!
sCharset
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (18).
    ^recoveredValue0
! !

"psupp.ic method 0x2000da18; bytecode file offset 0x161514"
!OSFontdesc methodsFor: 'recovered'!
cySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCy.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e23c; bytecode file offset 0x161ad4"
!OSFontdesc methodsFor: 'recovered'!
fItalic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (20).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e3b0; bytecode file offset 0x161c48"
!OSFontdesc methodsFor: 'recovered'!
fUnderline
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (24).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e4a8; bytecode file offset 0x161d40"
!OSFontdesc methodsFor: 'recovered'!
fStrikethrough
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (28).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fadc; bytecode file offset 0x165330"
!OSFontdesc methodsFor: 'recovered'!
cbSizeofstruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013484; bytecode file offset 0x166e00"
!OSFontdesc methodsFor: 'recovered'!
lpstrName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200146fc; bytecode file offset 0x1683c0"
!OSFontdesc methodsFor: 'recovered'!
cySize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016190; bytecode file offset 0x169eb4"
!OSFontdesc methodsFor: 'recovered'!
sWeight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200166a0; bytecode file offset 0x169f98"
!OSFontdesc methodsFor: 'recovered'!
sCharset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (18) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200169dc; bytecode file offset 0x16a7b4"
!OSFontdesc methodsFor: 'recovered'!
fItalic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001763c; bytecode file offset 0x16afe8"
!OSFontdesc methodsFor: 'recovered'!
fUnderline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001799c; bytecode file offset 0x16b690"
!OSFontdesc methodsFor: 'recovered'!
fStrikethrough: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b4fc; bytecode file offset 0x16f1fc"
!OSFontdesc methodsFor: 'recovered'!
lpstrName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

