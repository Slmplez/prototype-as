"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200048fc; bytecode file offset 0x1589a4"
!OSDocInfo2 methodsFor: 'recovered'!
dwMode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200057d4; bytecode file offset 0x159294"
!OSDocInfo2 methodsFor: 'recovered'!
JobId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2001145c; bytecode file offset 0x165330"
!OSDocInfo2 methodsFor: 'recovered'!
pDocName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c14; bytecode file offset 0x166e00"
!OSDocInfo2 methodsFor: 'recovered'!
pOutputFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a20; bytecode file offset 0x1683c0"
!OSDocInfo2 methodsFor: 'recovered'!
pDatatype: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015308; bytecode file offset 0x169290"
!OSDocInfo2 methodsFor: 'recovered'!
dwMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200165a4; bytecode file offset 0x169eb4"
!OSDocInfo2 methodsFor: 'recovered'!
JobId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001add4; bytecode file offset 0x16ea70"
!OSDocInfo2 methodsFor: 'recovered'!
pDocName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b600; bytecode file offset 0x16f1fc"
!OSDocInfo2 methodsFor: 'recovered'!
pOutputFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ba08; bytecode file offset 0x16f8e8"
!OSDocInfo2 methodsFor: 'recovered'!
pDatatype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

