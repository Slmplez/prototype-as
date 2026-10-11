"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003c5b8; bytecode file offset 0x938e84"
!ItemFileAccess class methodsFor: 'recovered'!
createWithelementAccessors: recoveredArg1 nameTable: recoveredArg2 recordFormat: recoveredArg3 offsetInFile: recoveredArg4 currentRecordNumber: recoveredArg5 recordBuffer: recoveredArg6
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009b5a0; bytecode file offset 0x997e5c"
!ItemFileAccess class methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initialize: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20127474; bytecode file offset 0xa23de0"
!ItemFileAccess class methodsFor: 'recovered'!
create: recoveredArg1 nameTable: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) recordFormat: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    (recoveredValue2) nameTable: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

