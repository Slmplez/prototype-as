"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200045e8; bytecode file offset 0x157f64"
!OSMethoddata methodsFor: 'recovered'!
dispid
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004e9c; bytecode file offset 0x1589a4"
!OSMethoddata methodsFor: 'recovered'!
iMeth
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005468; bytecode file offset 0x159294"
!OSMethoddata methodsFor: 'recovered'!
cc
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005b78; bytecode file offset 0x159974"
!OSMethoddata methodsFor: 'recovered'!
cArgs
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200065a0; bytecode file offset 0x159f34"
!OSMethoddata methodsFor: 'recovered'!
wFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200066f4; bytecode file offset 0x15a004"
!OSMethoddata methodsFor: 'recovered'!
vtReturn
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (26).
    ^recoveredValue0
! !

"psupp.ic method 0x200103e8; bytecode file offset 0x165330"
!OSMethoddata methodsFor: 'recovered'!
szName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ef0; bytecode file offset 0x166e00"
!OSMethoddata methodsFor: 'recovered'!
ppdata: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014834; bytecode file offset 0x1683c0"
!OSMethoddata methodsFor: 'recovered'!
dispid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200155e4; bytecode file offset 0x169290"
!OSMethoddata methodsFor: 'recovered'!
iMeth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015f08; bytecode file offset 0x169eb4"
!OSMethoddata methodsFor: 'recovered'!
cc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b5c; bytecode file offset 0x16a7b4"
!OSMethoddata methodsFor: 'recovered'!
cArgs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200171bc; bytecode file offset 0x16afe8"
!OSMethoddata methodsFor: 'recovered'!
wFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001781c; bytecode file offset 0x16b0cc"
!OSMethoddata methodsFor: 'recovered'!
vtReturn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (26) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ad48; bytecode file offset 0x16ea70"
!OSMethoddata methodsFor: 'recovered'!
szName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar16.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b4ac; bytecode file offset 0x16f1fc"
!OSMethoddata methodsFor: 'recovered'!
ppdata
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSParamdata.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

