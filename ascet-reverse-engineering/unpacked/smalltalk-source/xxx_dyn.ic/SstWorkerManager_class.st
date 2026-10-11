"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000112c; bytecode file offset 0x626a4"
!SstWorkerManager class methodsFor: 'recovered'!
defaultWorkerName
    ^'Worker %1'
! !

"xxx_dyn.ic method 0x20001de4; bytecode file offset 0x63040"
!SstWorkerManager class methodsFor: 'recovered'!
defaultWorkerPriority
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) userSchedulingPriority.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20009ebc; bytecode file offset 0x6af88"
!SstWorkerManager class methodsFor: 'recovered'!
high: recoveredArg1 low: recoveredArg2 strict: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) setupPoolHigh: (recoveredValue1) low: (recoveredValue2) strict: (recoveredValue3) createBlock: (nil) destroyBlock: (nil).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000a578; bytecode file offset 0x6b664"
!SstWorkerManager class methodsFor: 'recovered'!
high: recoveredArg1 low: recoveredArg2 strict: recoveredArg3 createBlock: recoveredArg4 destroyBlock: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) setupPoolHigh: (recoveredValue1) low: (recoveredValue2) strict: (recoveredValue3) createBlock: (recoveredValue4) destroyBlock: (recoveredValue5).
    ^recoveredValue6
! !

