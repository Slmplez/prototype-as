"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004af08; bytecode file offset 0x947a60"
!ASAP2Page methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b1f8; bytecode file offset 0x947d20"
!ASAP2Page methodsFor: 'recovered'!
startAddress
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b5f0; bytecode file offset 0x947ec0"
!ASAP2Page methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a5e24; bytecode file offset 0x9a27f0"
!ASAP2Page methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a60ec; bytecode file offset 0x9a2a28"
!ASAP2Page methodsFor: 'recovered'!
startAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a62a8; bytecode file offset 0x9a2b84"
!ASAP2Page methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201b22b0; bytecode file offset 0xaaeba4"
!ASAP2Page methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) keyWord.
    (self) putIn: (recoveredValue1) string: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    super putIn: (recoveredValue5).
    ^self
! !

