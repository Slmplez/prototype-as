"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200aabc8; bytecode file offset 0x9a753c"
!EtasCodeListEntry class methodsFor: 'recovered'!
createExternalHeaderEntry: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initializePath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) initForExternalHeader: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aabdc; bytecode file offset 0x9a753c"
!EtasCodeListEntry class methodsFor: 'recovered'!
createClassHeaderEntry: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initializePath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) initForClassHeader: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aac7c; bytecode file offset 0x9a753c"
!EtasCodeListEntry class methodsFor: 'recovered'!
createExternalCCodeEntry: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initializePath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) initForExternalCCode: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dcd40; bytecode file offset 0x9d9600"
!EtasCodeListEntry class methodsFor: 'recovered'!
createMethodEntry: recoveredArg1 method: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initializePath.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) initForMethod: (recoveredValue2) controller: (recoveredValue3).
    ^recoveredValue4
! !

