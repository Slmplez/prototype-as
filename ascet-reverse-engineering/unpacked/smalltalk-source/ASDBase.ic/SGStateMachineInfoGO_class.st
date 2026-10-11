"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2017d630; bytecode file offset 0xa79efc"
!SGStateMachineInfoGO class methodsFor: 'recovered'!
createFor: recoveredArg1 label: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) lineStyle.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := super createWithLineStyle: (recoveredValue2) manager: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) statePrio: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    (recoveredValue8) updateActionGOsDefault.
    ^recoveredValue5
! !

