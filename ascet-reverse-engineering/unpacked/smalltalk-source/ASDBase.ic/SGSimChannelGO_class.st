"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20216034; bytecode file offset 0xb12908"
!SGSimChannelGO class methodsFor: 'recovered'!
createForMonitor: recoveredArg1 prefix: recoveredArg2 postfix: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredLocal1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) addChannelGO: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) ownerMonitorGO: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) valueString: ('XXX').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) prefix: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg3.
    (recoveredValue9) postfix: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

