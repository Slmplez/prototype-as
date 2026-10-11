"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200cbf84; bytecode file offset 0x9c8860"
!ASDAbstractIntecrioConnector methodsFor: 'recovered'!
errorStartINTECRIO
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := (recoveredValue0) errorMessage: ('Could not open INTECRIO').
    (recoveredValue1) prompt.
    ^nil
! !

"ASDBase.ic method 0x200cbf9c; bytecode file offset 0x9c8860"
!ASDAbstractIntecrioConnector methodsFor: 'recovered'!
errorBuildFailed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := (recoveredValue0) errorMessage: ('Build in INTECRIO not successful').
    (recoveredValue1) prompt.
    ^nil
! !

"ASDBase.ic method 0x200fb74c; bytecode file offset 0x9f8014"
!ASDAbstractIntecrioConnector methodsFor: 'recovered'!
errorSystemNotInWorkspace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('Selected system %1 is NOT part of current workspace!!') bindWith: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) errorMessage: (recoveredValue2).
    (recoveredValue3) prompt.
    ^nil
! !

"ASDBase.ic method 0x20173d7c; bytecode file offset 0xa70650"
!ASDAbstractIntecrioConnector methodsFor: 'recovered'!
continueOnDifferentWorkspace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBUserQuestion.
    recoveredValue1 := ('Do you want to close the active workspace and open workspace\ "') withCrs.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('"?').
    recoveredValue5 := (recoveredValue0) confirm: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) cancelOk.
    recoveredValue7 := (recoveredValue5) prompt.
    ^recoveredValue7
! !

