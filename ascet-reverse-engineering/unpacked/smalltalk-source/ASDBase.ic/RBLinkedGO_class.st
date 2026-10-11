"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20120d5c; bytecode file offset 0xa1d624"
!RBLinkedGO class methodsFor: 'recovered'!
createWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) graphObject: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) linkPointObjects.
    (recoveredValue3) sensitivePointObjects: (recoveredValue5).
    recoveredValue6 := (recoveredValue0) initialize.
    ^recoveredValue6
! !

