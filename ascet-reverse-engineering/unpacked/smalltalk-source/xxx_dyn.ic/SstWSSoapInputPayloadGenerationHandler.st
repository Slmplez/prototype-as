"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000af94; bytecode file offset 0x6c068"
!SstWSSoapInputPayloadGenerationHandler methodsFor: 'recovered'!
payloadNamed: recoveredArg1 withArguments: recoveredArg2 message: recoveredArg3 envelope: recoveredArg4 extension: recoveredArg5 encoder: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg6.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) inputPayloadNamed: (recoveredValue1) withArguments: (recoveredValue2) message: (recoveredValue3) envelope: (recoveredValue4) extension: (recoveredValue5).
    ^recoveredValue6
! !

"xxx_dyn.ic method 0x200130e8; bytecode file offset 0x741c4"
!SstWSSoapInputPayloadGenerationHandler methodsFor: 'recovered'!
soapBodyPayloadWithArguments: recoveredArg1 forEnvelope: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) bindingOperation.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) input.
    recoveredValue4 := (recoveredValue3) soapBodyExtension.
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) operation.
    recoveredValue7 := (recoveredValue6) input.
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) name.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := (self) createPayloadNamed: (recoveredValue9) withArguments: (recoveredValue10) forEnvelope: (recoveredValue11) message: (recoveredValue12) bindingOperation: (recoveredValue13) extension: (recoveredValue14).
    ^recoveredValue15
! !

