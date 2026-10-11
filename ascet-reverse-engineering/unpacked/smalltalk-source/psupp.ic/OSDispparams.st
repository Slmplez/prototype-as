"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200041ec; bytecode file offset 0x157f64"
!OSDispparams methodsFor: 'recovered'!
cArgs
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004b30; bytecode file offset 0x1589a4"
!OSDispparams methodsFor: 'recovered'!
cNamedArgs
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200115f4; bytecode file offset 0x165330"
!OSDispparams methodsFor: 'recovered'!
rgvarg: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f8c; bytecode file offset 0x166e00"
!OSDispparams methodsFor: 'recovered'!
rgdispidNamedArgs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014780; bytecode file offset 0x1683c0"
!OSDispparams methodsFor: 'recovered'!
cArgs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015194; bytecode file offset 0x169290"
!OSDispparams methodsFor: 'recovered'!
cNamedArgs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001abcc; bytecode file offset 0x16ea70"
!OSDispparams methodsFor: 'recovered'!
rgvarg
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSVariantarg.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b4e8; bytecode file offset 0x16f1fc"
!OSDispparams methodsFor: 'recovered'!
rgdispidNamedArgs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSInt32.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002626c; bytecode file offset 0x179e98"
!OSDispparams methodsFor: 'recovered'!
dispGetParam: recoveredArg1 vtTarg: recoveredArg2 pvarResult: recoveredArg3 puArgErr: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := DispGetParam.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

