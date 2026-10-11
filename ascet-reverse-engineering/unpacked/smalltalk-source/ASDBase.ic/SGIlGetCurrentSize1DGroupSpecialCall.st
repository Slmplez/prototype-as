"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ea94; bytecode file offset 0x92209c"
!SGIlGetCurrentSize1DGroupSpecialCall methodsFor: 'recovered'!
label
    ^'getCurrentSizeOneDGroup'
! !

"ASDBase.ic method 0x20055488; bytecode file offset 0x952a9c"
!SGIlGetCurrentSize1DGroupSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getCurrentSize1DGroupSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c8444; bytecode file offset 0x9c4d2c"
!SGIlGetCurrentSize1DGroupSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    (recoveredValue0) getCurrentSizeOneDGroupServices: (recoveredValue1) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ee7f4; bytecode file offset 0x9eb19c"
!SGIlGetCurrentSize1DGroupSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) type.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) with: ('GETCURRENTSIZEGROUP1').
    ^recoveredValue3
! !

