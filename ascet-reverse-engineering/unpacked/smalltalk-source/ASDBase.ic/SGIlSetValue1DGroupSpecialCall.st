"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018308; bytecode file offset 0x92209c"
!SGIlSetValue1DGroupSpecialCall methodsFor: 'recovered'!
label
    ^'setValueOneDGroup'
! !

"ASDBase.ic method 0x200550e0; bytecode file offset 0x952a9c"
!SGIlSetValue1DGroupSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) setValue1DGroupSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c8278; bytecode file offset 0x9c4d2c"
!SGIlSetValue1DGroupSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    (recoveredValue0) setValueServices: (recoveredValue1) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2016b564; bytecode file offset 0xa67e60"
!SGIlSetValue1DGroupSpecialCall methodsFor: 'recovered'!
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
    recoveredValue7 := (recoveredValue2) with: ('SETVALUEGROUP1') with: (recoveredValue6).
    ^recoveredValue7
! !

