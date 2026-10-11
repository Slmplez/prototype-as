"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000174c; bytecode file offset 0x155d58"
!OSCadword methodsFor: 'recovered'!
cElems
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000f974; bytecode file offset 0x165330"
!OSCadword methodsFor: 'recovered'!
cElems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013460; bytecode file offset 0x166e00"
!OSCadword methodsFor: 'recovered'!
pElems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b2cc; bytecode file offset 0x16f1fc"
!OSCadword methodsFor: 'recovered'!
pElems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

