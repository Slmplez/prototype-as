"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f7e4; bytecode file offset 0x92209c"
!SGIlSetValue2DGroupSpecialCall methodsFor: 'recovered'!
label
    ^'setValueTwoDGroup'
! !

"ASDBase.ic method 0x20054be8; bytecode file offset 0x952a9c"
!SGIlSetValue2DGroupSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) setValue2DGroupSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c8304; bytecode file offset 0x9c4d2c"
!SGIlSetValue2DGroupSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    (recoveredValue0) setValueServices: (recoveredValue1) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2016b514; bytecode file offset 0xa67e60"
!SGIlSetValue2DGroupSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) type.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) values.
    recoveredValue5 := (recoveredValue4) getImplType.
    recoveredValue6 := (recoveredValue5) asShortCType.
    recoveredValue7 := (recoveredValue2) with: ('SETVALUEGROUP2') with: (recoveredValue6).
    ^recoveredValue7
! !

