"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201286e8; bytecode file offset 0xa24fb0"
!SGTypeDefinitions class methodsFor: 'recovered'!
allBooleanScalarImplTypeClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := RBImplBoolean.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := RBBit.
    (recoveredValue4) add: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2013a39c; bytecode file offset 0xa36c64"
!SGTypeDefinitions class methodsFor: 'recovered'!
allScalarImplTypeClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) allArithmeticImplTypeClasses.
    (recoveredValue2) addAll: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) allBooleanScalarImplTypeClasses.
    (recoveredValue4) addAll: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202c3880; bytecode file offset 0xbc0160"
!SGTypeDefinitions class methodsFor: 'recovered'!
allArithmeticImplTypeClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := RBInt8Signed.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := RBInt8Unsigned.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := RBInt16Signed.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := RBInt16Unsigned.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := RBInt32Signed.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := RBInt32Unsigned.
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := RBFloat32.
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := RBFloat.
    (recoveredValue16) add: (recoveredValue17).
    ^recoveredValue1
! !

