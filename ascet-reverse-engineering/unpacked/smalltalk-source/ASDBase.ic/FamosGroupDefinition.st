"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d941c; bytecode file offset 0x9d5d08"
!FamosGroupDefinition methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) addGroupDefinition: (self).
    ^true
! !

"ASDBase.ic method 0x20185bdc; bytecode file offset 0xa824a4"
!FamosGroupDefinition methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super putFieldsIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putCommentLengthIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putCommentIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putEndIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20194fc4; bytecode file offset 0xa91888"
!FamosGroupDefinition methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    commentLength := recoveredValue2.
    recoveredValue3 := commentLength.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) getString: (recoveredValue3) from: (recoveredValue4).
    comment := recoveredValue5.
    ^self
! !

