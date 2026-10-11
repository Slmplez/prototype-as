"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007fee8; bytecode file offset 0x97c79c"
!EtasAscetExpEnvAPI class methodsFor: 'recovered'!
experimentViewErrorCodeOffset
    ^4000
! !

"ASDBase.ic method 0x20212918; bytecode file offset 0xb0f224"
!EtasAscetExpEnvAPI class methodsFor: 'recovered'!
createExperimentViewError: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EtasAPIError.
    recoveredValue1 := (self) experimentViewErrorCodeOffset.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (recoveredValue0) createWithErrorCode: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := EtasAPIExperimentViewError.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) errorCode.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (recoveredValue8) , (' - ').
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) errorMessage.
    recoveredValue12 := (recoveredValue9) , (recoveredValue11).
    (recoveredValue5) create: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20266744; bytecode file offset 0xb63024"
!EtasAscetExpEnvAPI class methodsFor: 'recovered'!
createExperimentViewError: recoveredArg1 additionalText: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := EtasAPIError.
    recoveredValue1 := (self) experimentViewErrorCodeOffset.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (recoveredValue0) createWithErrorCode: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := EtasAPIExperimentViewError.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) errorCode.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (recoveredValue8) , (' - ').
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) errorMessage.
    recoveredValue12 := (recoveredValue9) , (recoveredValue11).
    recoveredValue13 := (recoveredValue12) , (' ').
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (recoveredValue13) , (recoveredValue14).
    (recoveredValue5) create: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

