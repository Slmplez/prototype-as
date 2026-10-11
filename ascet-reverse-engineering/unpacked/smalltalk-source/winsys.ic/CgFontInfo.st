"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002988; bytecode file offset 0x7ed00"
!CgFontInfo methodsFor: 'recovered'!
logFont
    | recoveredValue0 |
    recoveredValue0 := logFont.
    ^recoveredValue0
! !

"winsys.ic method 0x20002bd0; bytecode file offset 0x7efc0"
!CgFontInfo methodsFor: 'recovered'!
textMetric
    | recoveredValue0 |
    recoveredValue0 := textMetric.
    ^recoveredValue0
! !

"winsys.ic method 0x20002e98; bytecode file offset 0x7f220"
!CgFontInfo methodsFor: 'recovered'!
fontType
    | recoveredValue0 |
    recoveredValue0 := fontType.
    ^recoveredValue0
! !

"winsys.ic method 0x2000718c; bytecode file offset 0x8346c"
!CgFontInfo methodsFor: 'recovered'!
logFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    logFont := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200072f4; bytecode file offset 0x836b4"
!CgFontInfo methodsFor: 'recovered'!
textMetric: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    textMetric := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007584; bytecode file offset 0x838d4"
!CgFontInfo methodsFor: 'recovered'!
fontType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fontType := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20026340; bytecode file offset 0xa252c"
!CgFontInfo methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPut: ($().
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    (recoveredValue2) nextPutAll: ('fontType: ').
    recoveredValue4 := (self) fontType.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) cr.
    (recoveredValue6) nextPutAll: ('logFont: ').
    recoveredValue8 := (self) logFont.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) cr.
    (recoveredValue10) nextPutAll: ('textMetric: ').
    recoveredValue12 := (self) textMetric.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) printOn: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    (recoveredValue14) nextPut: ($)).
    ^self
! !

