"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d37c0; bytecode file offset 0x9d0078"
!RBOemConversion class methodsFor: 'recovered'!
createInstance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createWithSize: (256).
    recoveredValue1 := recoveredValue0.
    theInstance := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ea84c; bytecode file offset 0x9e7110"
!RBOemConversion class methodsFor: 'recovered'!
createWithSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := String.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) buffer: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    theInstance := recoveredValue5.
    ^recoveredValue4
! !

