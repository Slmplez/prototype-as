"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200813a8; bytecode file offset 0x97dc5c"
!SGMonitorObject class methodsFor: 'recovered'!
getIdleNumber
    ^255
! !

"ASDBase.ic method 0x201b7498; bytecode file offset 0xab3d68"
!SGMonitorObject class methodsFor: 'recovered'!
createWithMax: recoveredArg1 current: recoveredArg2 elements: recoveredArg3 times: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg3.
    (recoveredValue2) elements: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg4.
    (recoveredValue4) times: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) currentIndex: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) maxIndex: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) initializeTypes.
    ^recoveredValue1
! !

