"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d100; bytecode file offset 0x160b8c"
!OSEnumlogfont methodsFor: 'recovered'!
elfLogFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011090; bytecode file offset 0x165330"
!OSEnumlogfont methodsFor: 'recovered'!
elfLogFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002577c; bytecode file offset 0x179020"
!OSEnumlogfont methodsFor: 'recovered'!
elfFullName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (60) put: (recoveredValue0) size: (64).
    ^self
! !

"psupp.ic method 0x20027594; bytecode file offset 0x17ae30"
!OSEnumlogfont methodsFor: 'recovered'!
elfFullName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (60) size: (64) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20027714; bytecode file offset 0x17afd0"
!OSEnumlogfont methodsFor: 'recovered'!
elfStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (124) size: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20027b9c; bytecode file offset 0x17b44c"
!OSEnumlogfont methodsFor: 'recovered'!
elfStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (124) put: (recoveredValue0) size: (32).
    ^self
! !

