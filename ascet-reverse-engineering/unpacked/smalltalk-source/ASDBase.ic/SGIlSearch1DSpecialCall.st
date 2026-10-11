"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a270; bytecode file offset 0x92209c"
!SGIlSearch1DSpecialCall methodsFor: 'recovered'!
label
    ^'searchOneD'
! !

"ASDBase.ic method 0x200556a4; bytecode file offset 0x952a9c"
!SGIlSearch1DSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) search1DSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c8230; bytecode file offset 0x9c4af0"
!SGIlSearch1DSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    recoveredValue4 := (recoveredValue0) searchOneD: (recoveredValue1) type: (recoveredValue3).
    ^recoveredValue4
! !

