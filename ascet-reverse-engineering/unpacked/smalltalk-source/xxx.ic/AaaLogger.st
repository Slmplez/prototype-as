"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx.ic method 0x2000234c; bytecode file offset 0x16e48"
!AaaLogger methodsFor: 'recovered'!
wsStateRequest: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) propertyNamed: ('wsTransportMessageRequest').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := EtasLoggerInfoObject.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) location: ('Request').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) module: ('Automation API').
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) contents.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue6) message: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := CATEGORYTYPE_INFO.
    (recoveredValue10) category: (recoveredValue11).
    (recoveredValue3) writeToLogfile.
    ^self
! !

"xxx.ic method 0x20002478; bytecode file offset 0x16f74"
!AaaLogger methodsFor: 'recovered'!
wsStateResponse: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EtasLoggerInfoObject.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) location: ('Response').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) module: ('Automation API').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) container.
    recoveredValue7 := (recoveredValue6) serializationManager.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) currentMessage.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue7) serialize: (recoveredValue9) context: (recoveredValue10).
    (recoveredValue4) message: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := CATEGORYTYPE_INFO.
    (recoveredValue12) category: (recoveredValue13).
    (recoveredValue1) writeToLogfile.
    ^self
! !

