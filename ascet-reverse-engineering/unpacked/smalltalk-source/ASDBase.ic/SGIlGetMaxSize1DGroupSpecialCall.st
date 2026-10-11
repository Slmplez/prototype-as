"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200188b4; bytecode file offset 0x92209c"
!SGIlGetMaxSize1DGroupSpecialCall methodsFor: 'recovered'!
label
    ^'getMaxSizeOneDGroup'
! !

"ASDBase.ic method 0x20055fd4; bytecode file offset 0x952a9c"
!SGIlGetMaxSize1DGroupSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getMaxSize1DGroupSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ee82c; bytecode file offset 0x9eb19c"
!SGIlGetMaxSize1DGroupSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) type.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) with: ('GETMAXSIZEGROUP1').
    ^recoveredValue3
! !

