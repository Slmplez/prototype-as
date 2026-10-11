"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001674; bytecode file offset 0x155d58"
!OSNonclientmetrics methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200033e0; bytecode file offset 0x157170"
!OSNonclientmetrics methodsFor: 'recovered'!
iBorderWidth
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003ba4; bytecode file offset 0x157f64"
!OSNonclientmetrics methodsFor: 'recovered'!
iScrollWidth
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004908; bytecode file offset 0x1589a4"
!OSNonclientmetrics methodsFor: 'recovered'!
iScrollHeight
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200059c0; bytecode file offset 0x159294"
!OSNonclientmetrics methodsFor: 'recovered'!
iCaptionWidth
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005e90; bytecode file offset 0x159974"
!OSNonclientmetrics methodsFor: 'recovered'!
iCaptionHeight
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000afa4; bytecode file offset 0x15e860"
!OSNonclientmetrics methodsFor: 'recovered'!
iMenuWidth
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (152).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b010; bytecode file offset 0x15e8a8"
!OSNonclientmetrics methodsFor: 'recovered'!
iMenuHeight
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (156).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b640; bytecode file offset 0x15ef44"
!OSNonclientmetrics methodsFor: 'recovered'!
iSmCaptionWidth
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (84).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b6c4; bytecode file offset 0x15efbc"
!OSNonclientmetrics methodsFor: 'recovered'!
iSmCaptionHeight
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (88).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e364; bytecode file offset 0x161c00"
!OSNonclientmetrics methodsFor: 'recovered'!
lfCaptionFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fe18; bytecode file offset 0x165330"
!OSNonclientmetrics methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200129d4; bytecode file offset 0x166e00"
!OSNonclientmetrics methodsFor: 'recovered'!
iBorderWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014360; bytecode file offset 0x1683c0"
!OSNonclientmetrics methodsFor: 'recovered'!
iScrollWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001532c; bytecode file offset 0x169290"
!OSNonclientmetrics methodsFor: 'recovered'!
iScrollHeight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015d28; bytecode file offset 0x169eb4"
!OSNonclientmetrics methodsFor: 'recovered'!
iCaptionWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016790; bytecode file offset 0x16a7b4"
!OSNonclientmetrics methodsFor: 'recovered'!
iCaptionHeight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200170f0; bytecode file offset 0x16afe8"
!OSNonclientmetrics methodsFor: 'recovered'!
lfCaptionFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f0a0; bytecode file offset 0x17293c"
!OSNonclientmetrics methodsFor: 'recovered'!
lfMessageFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) structAt: (280) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f0e0; bytecode file offset 0x17297c"
!OSNonclientmetrics methodsFor: 'recovered'!
lfMenuFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) structAt: (160) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f2f8; bytecode file offset 0x172b94"
!OSNonclientmetrics methodsFor: 'recovered'!
lfSmCaptionFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) structAt: (92) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f318; bytecode file offset 0x172bb4"
!OSNonclientmetrics methodsFor: 'recovered'!
lfStatusFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) structAt: (220) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f758; bytecode file offset 0x173014"
!OSNonclientmetrics methodsFor: 'recovered'!
iMenuWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (152) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f798; bytecode file offset 0x173030"
!OSNonclientmetrics methodsFor: 'recovered'!
lfMessageFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (280) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f7f0; bytecode file offset 0x173088"
!OSNonclientmetrics methodsFor: 'recovered'!
iMenuHeight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (156) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f840; bytecode file offset 0x1730e4"
!OSNonclientmetrics methodsFor: 'recovered'!
lfMenuFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (160) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020050; bytecode file offset 0x17396c"
!OSNonclientmetrics methodsFor: 'recovered'!
iSmCaptionWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (84) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020174; bytecode file offset 0x173a0c"
!OSNonclientmetrics methodsFor: 'recovered'!
iSmCaptionHeight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (88) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200201b4; bytecode file offset 0x173aac"
!OSNonclientmetrics methodsFor: 'recovered'!
lfSmCaptionFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (92) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020230; bytecode file offset 0x173ac8"
!OSNonclientmetrics methodsFor: 'recovered'!
lfStatusFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (220) put: (recoveredValue0).
    ^self
! !

