"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001740; bytecode file offset 0x155d58"
!OSMciAnimWindowParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200045d0; bytecode file offset 0x157f64"
!OSMciAnimWindowParms methodsFor: 'recovered'!
nCmdShow
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200115ac; bytecode file offset 0x165330"
!OSMciAnimWindowParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012458; bytecode file offset 0x166e00"
!OSMciAnimWindowParms methodsFor: 'recovered'!
hWnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001472c; bytecode file offset 0x1683c0"
!OSMciAnimWindowParms methodsFor: 'recovered'!
nCmdShow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001538c; bytecode file offset 0x169290"
!OSMciAnimWindowParms methodsFor: 'recovered'!
lpstrText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b8e4; bytecode file offset 0x16f1fc"
!OSMciAnimWindowParms methodsFor: 'recovered'!
hWnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c2c0; bytecode file offset 0x16fe44"
!OSMciAnimWindowParms methodsFor: 'recovered'!
lpstrText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

