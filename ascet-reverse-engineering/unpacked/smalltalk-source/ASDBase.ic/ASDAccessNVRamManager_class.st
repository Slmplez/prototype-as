"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e3adc; bytecode file offset 0x9e039c"
!ASDAccessNVRamManager class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) oidNumber: (10).
    ^recoveredValue0
! !

"ASDBase.ic method 0x204210a8; bytecode file offset 0xd1d9a0"
!ASDAccessNVRamManager class methodsFor: 'recovered'!
initializeCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    CMethods := recoveredValue1.
    recoveredValue2 := CMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('setUpdateInterval()') put: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('setConsistencyLevel()') put: (1).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('enableAutoUpdate()') put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('disableAutoUpdate()') put: (3).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('checkForInitializedVars()') put: (4).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('initModelVars()') put: (5).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('clear()') put: (6).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('manualUpdate()') put: (7).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('checkForAutoUpdate()') put: (8).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('getUpdateInterval()') put: (9).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('getConsistencyLevel()') put: (10).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('checkRunningUpdate()') put: (11).
    (recoveredValue2) at: ('updateAgeMs()') put: (12).
    ^self
! !

