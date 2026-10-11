"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200016f8; bytecode file offset 0x155d58"
!OSProppageinfo methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20006414; bytecode file offset 0x159f34"
!OSProppageinfo methodsFor: 'recovered'!
dwHelpContext
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d9c8; bytecode file offset 0x161514"
!OSProppageinfo methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSize.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fd7c; bytecode file offset 0x165330"
!OSProppageinfo methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012d88; bytecode file offset 0x166e00"
!OSProppageinfo methodsFor: 'recovered'!
pszTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013850; bytecode file offset 0x1683c0"
!OSProppageinfo methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015df4; bytecode file offset 0x169eb4"
!OSProppageinfo methodsFor: 'recovered'!
pszDocString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016c88; bytecode file offset 0x16a7b4"
!OSProppageinfo methodsFor: 'recovered'!
pszHelpFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017084; bytecode file offset 0x16afe8"
!OSProppageinfo methodsFor: 'recovered'!
dwHelpContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b8f8; bytecode file offset 0x16f1fc"
!OSProppageinfo methodsFor: 'recovered'!
pszTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c86c; bytecode file offset 0x170238"
!OSProppageinfo methodsFor: 'recovered'!
pszDocString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ca08; bytecode file offset 0x17049c"
!OSProppageinfo methodsFor: 'recovered'!
pszHelpFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

