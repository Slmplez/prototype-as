"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20033004; bytecode file offset 0x934580"
!MCSSimClass class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201be740; bytecode file offset 0xabb014"
!MCSSimClass class methodsFor: 'recovered'!
createForDevice: recoveredArg1 pseudoAddress: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := Smalltalk.
    recoveredValue3 := (recoveredValue2) at: ('EtasL1AccessSimManager').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) createForDevice: (recoveredValue4).
    (recoveredValue1) simManager: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) pseudoAddress: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) createAccess.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

