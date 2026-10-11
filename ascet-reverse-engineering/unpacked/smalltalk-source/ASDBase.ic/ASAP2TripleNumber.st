"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004af44; bytecode file offset 0x947a60"
!ASAP2TripleNumber methodsFor: 'recovered'!
one
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b3b4; bytecode file offset 0x947d20"
!ASAP2TripleNumber methodsFor: 'recovered'!
two
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b53c; bytecode file offset 0x947ec0"
!ASAP2TripleNumber methodsFor: 'recovered'!
three
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a5e00; bytecode file offset 0x9a27f0"
!ASAP2TripleNumber methodsFor: 'recovered'!
one: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a60a4; bytecode file offset 0x9a2a28"
!ASAP2TripleNumber methodsFor: 'recovered'!
two: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a61b8; bytecode file offset 0x9a2b84"
!ASAP2TripleNumber methodsFor: 'recovered'!
three: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20184790; bytecode file offset 0xa81054"
!ASAP2TripleNumber methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getNumber: (recoveredValue0).
    (self) one: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getNumber: (recoveredValue2).
    (self) two: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) getNumber: (recoveredValue4).
    (self) three: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2023e14c; bytecode file offset 0xb3aa14"
!ASAP2TripleNumber methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) one.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) two.
    (self) putIn: (recoveredValue4) hex: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) three.
    (self) putIn: (recoveredValue7) hex: (recoveredValue8).
    ^self
! !

