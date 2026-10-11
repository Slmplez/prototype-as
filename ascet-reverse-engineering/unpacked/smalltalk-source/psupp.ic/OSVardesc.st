"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002178; bytecode file offset 0x155d58"
!OSVardesc methodsFor: 'recovered'!
memid
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20004120; bytecode file offset 0x157f64"
!OSVardesc methodsFor: 'recovered'!
oInst
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000695c; bytecode file offset 0x15a428"
!OSVardesc methodsFor: 'recovered'!
wVarFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006df8; bytecode file offset 0x15a780"
!OSVardesc methodsFor: 'recovered'!
varkind
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000df4c; bytecode file offset 0x1617e8"
!OSVardesc methodsFor: 'recovered'!
elemdescVar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSElemdesc.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011084; bytecode file offset 0x165330"
!OSVardesc methodsFor: 'recovered'!
memid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001205c; bytecode file offset 0x166e00"
!OSVardesc methodsFor: 'recovered'!
lpstrSchema: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013940; bytecode file offset 0x1683c0"
!OSVardesc methodsFor: 'recovered'!
oInst: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d48; bytecode file offset 0x1683c0"
!OSVardesc methodsFor: 'recovered'!
lpvarValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200153a4; bytecode file offset 0x169290"
!OSVardesc methodsFor: 'recovered'!
elemdescVar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200178c4; bytecode file offset 0x16b690"
!OSVardesc methodsFor: 'recovered'!
wVarFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001805c; bytecode file offset 0x16bb70"
!OSVardesc methodsFor: 'recovered'!
varkind: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b7b8; bytecode file offset 0x16f1fc"
!OSVardesc methodsFor: 'recovered'!
lpstrSchema
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bae4; bytecode file offset 0x16f8e8"
!OSVardesc methodsFor: 'recovered'!
lpvarValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSVariant.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

