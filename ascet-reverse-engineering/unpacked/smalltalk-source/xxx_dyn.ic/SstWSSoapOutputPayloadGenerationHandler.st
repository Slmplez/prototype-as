"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004cfc; bytecode file offset 0x65de8"
!SstWSSoapOutputPayloadGenerationHandler methodsFor: 'recovered'!
messageArgumentsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSResult.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004d0c; bytecode file offset 0x65de8"
!SstWSSoapOutputPayloadGenerationHandler methodsFor: 'recovered'!
headerArgumentsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSHeaderResult.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000afa0; bytecode file offset 0x6c068"
!SstWSSoapOutputPayloadGenerationHandler methodsFor: 'recovered'!
payloadNamed: recoveredArg1 withArguments: recoveredArg2 message: recoveredArg3 envelope: recoveredArg4 extension: recoveredArg5 encoder: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg6.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) outputPayloadNamed: (recoveredValue1) withArguments: (recoveredValue2) message: (recoveredValue3) envelope: (recoveredValue4) extension: (recoveredValue5).
    ^recoveredValue6
! !

"xxx_dyn.ic method 0x2000b940; bytecode file offset 0x6ca14"
!SstWSSoapOutputPayloadGenerationHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) operation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOneWayOperation.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            super invoke: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20013128; bytecode file offset 0x74204"
!SstWSSoapOutputPayloadGenerationHandler methodsFor: 'recovered'!
soapBodyPayloadWithArguments: recoveredArg1 forEnvelope: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) bindingOperation.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) output.
    recoveredValue4 := (recoveredValue3) soapBodyExtension.
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) operation.
    recoveredValue7 := (recoveredValue6) output.
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) localName.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := (self) createPayloadNamed: (recoveredValue9) withArguments: (recoveredValue10) forEnvelope: (recoveredValue11) message: (recoveredValue12) bindingOperation: (recoveredValue13) extension: (recoveredValue14).
    ^recoveredValue15
! !

