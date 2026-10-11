"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dde.ic method 0x20000718; bytecode file offset 0x69e4"
!DdeServer class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatDDE.
    recoveredValue1 := (recoveredValue0) indexedMsg: (4).
    (self) error: (recoveredValue1).
    ^self
! !

"dde.ic method 0x2000181c; bytecode file offset 0x7b08"
!DdeServer class methodsFor: 'recovered'!
name: recoveredArg1 items: recoveredArg2 remoteHandle: recoveredArg3 topic: recoveredArg4 manager: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := super new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) application: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) items: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) remoteHandle: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) topic: (recoveredValue9).
    recoveredValue10 := recoveredArg5.
    (recoveredValue1) manager: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) manager.
    recoveredValue14 := (recoveredValue13) testMode.
    (recoveredValue11) testMode: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := recoveredArg4.
    (recoveredValue15) sendInitiateAck: (recoveredValue16) topic: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    ^recoveredValue18
! !

