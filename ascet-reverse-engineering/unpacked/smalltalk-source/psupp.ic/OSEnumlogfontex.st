"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d050; bytecode file offset 0x160b8c"
!OSEnumlogfontex methodsFor: 'recovered'!
elfLogFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011948; bytecode file offset 0x165330"
!OSEnumlogfontex methodsFor: 'recovered'!
elfLogFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20025770; bytecode file offset 0x179020"
!OSEnumlogfontex methodsFor: 'recovered'!
elfFullName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (60) put: (recoveredValue0) size: (64).
    ^self
! !

"psupp.ic method 0x20027584; bytecode file offset 0x17ae30"
!OSEnumlogfontex methodsFor: 'recovered'!
elfFullName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (60) size: (64) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200275b4; bytecode file offset 0x17ae50"
!OSEnumlogfontex methodsFor: 'recovered'!
elfScript
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (156) size: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20027734; bytecode file offset 0x17afd0"
!OSEnumlogfontex methodsFor: 'recovered'!
elfStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (124) size: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20027a30; bytecode file offset 0x17b2c8"
!OSEnumlogfontex methodsFor: 'recovered'!
elfScript: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (156) put: (recoveredValue0) size: (32).
    ^self
! !

"psupp.ic method 0x20027bb4; bytecode file offset 0x17b44c"
!OSEnumlogfontex methodsFor: 'recovered'!
elfStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (124) put: (recoveredValue0) size: (32).
    ^self
! !

