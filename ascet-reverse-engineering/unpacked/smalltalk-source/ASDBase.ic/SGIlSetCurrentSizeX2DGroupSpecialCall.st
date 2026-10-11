"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c844; bytecode file offset 0x92209c"
!SGIlSetCurrentSizeX2DGroupSpecialCall methodsFor: 'recovered'!
label
    ^'setCurrentSizeXTwoDGroup'
! !

"ASDBase.ic method 0x20055638; bytecode file offset 0x952a9c"
!SGIlSetCurrentSizeX2DGroupSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) setCurrentSizeX2DGroupSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c83cc; bytecode file offset 0x9c4d2c"
!SGIlSetCurrentSizeX2DGroupSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    (recoveredValue0) setCurrentSizeXServices: (recoveredValue1) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ee8b8; bytecode file offset 0x9eb19c"
!SGIlSetCurrentSizeX2DGroupSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) type.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) with: ('SETCURRENTSIZEXGROUP2').
    ^recoveredValue3
! !

