"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000310; bytecode file offset 0x6147c"
!SstWSMessageContextFactory methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x2000207c; bytecode file offset 0x63558"
!SstWSMessageContextFactory methodsFor: 'recovered'!
serverFaultMessageConstructor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSServerFaultMessageConstructor.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000208c; bytecode file offset 0x63558"
!SstWSMessageContextFactory methodsFor: 'recovered'!
serverOutputMessageConstructor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSServerOutputMessageConstructor.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000219c; bytecode file offset 0x63558"
!SstWSMessageContextFactory methodsFor: 'recovered'!
clientFaultMessageConstructor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSClientFaultMessageConstructor.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000224c; bytecode file offset 0x63558"
!SstWSMessageContextFactory methodsFor: 'recovered'!
clientInputMessageConstructor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSClientInputMessageConstructor.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000237c; bytecode file offset 0x63558"
!SstWSMessageContextFactory methodsFor: 'recovered'!
clientOutputMessageConstructor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSClientOutputMessageConstructor.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200023bc; bytecode file offset 0x63558"
!SstWSMessageContextFactory methodsFor: 'recovered'!
serverInputMessageConstructor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSServerInputMessageConstructor.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200038c4; bytecode file offset 0x649e8"
!SstWSMessageContextFactory methodsFor: 'recovered'!
container
    | recoveredValue0 |
    recoveredValue0 := container.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003a48; bytecode file offset 0x64bac"
!SstWSMessageContextFactory methodsFor: 'recovered'!
serializationConfigurationCreationBlock
    | recoveredValue0 |
    recoveredValue0 := serializationConfigurationCreationBlock.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004f60; bytecode file offset 0x66030"
!SstWSMessageContextFactory methodsFor: 'recovered'!
handlerNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) container.
    recoveredValue1 := (recoveredValue0) handlerFactory.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) handlerNamed: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20005544; bytecode file offset 0x66618"
!SstWSMessageContextFactory methodsFor: 'recovered'!
contextInitializer
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) container.
    recoveredValue1 := (recoveredValue0) handlerFactory.
    recoveredValue2 := WSMessageContextInitializer.
    recoveredValue3 := (recoveredValue1) handlerNamed: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007d6c; bytecode file offset 0x68f50"
!SstWSMessageContextFactory methodsFor: 'recovered'!
container: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    container := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007ed0; bytecode file offset 0x69104"
!SstWSMessageContextFactory methodsFor: 'recovered'!
serializationConfigurationCreationBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    serializationConfigurationCreationBlock := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000c7f0; bytecode file offset 0x6d8cc"
!SstWSMessageContextFactory methodsFor: 'recovered'!
newMessageContext
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SstWSMessageContext.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) container.
    (recoveredValue2) container: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) createSerializationConfiguration.
    (recoveredValue4) serializationConfiguration: (recoveredValue5).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000ce1c; bytecode file offset 0x6deec"
!SstWSMessageContextFactory methodsFor: 'recovered'!
createSerializationConfiguration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) serializationConfigurationCreationBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultSerializationConfiguration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20011644; bytecode file offset 0x72724"
!SstWSMessageContextFactory methodsFor: 'recovered'!
defaultSerializationConfiguration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) container.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) serializationManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := SstSoapEnvelope.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlCacheKey.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) serializationConfigurationNamed: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := AbtXmlSerializationConfiguration.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) newSoapConfiguration.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001b030; bytecode file offset 0x7c128"
!SstWSMessageContextFactory methodsFor: 'recovered'!
serverMessageContextWith: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) newMessageContext.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := WSTransportMessageRequest.
    (recoveredValue1) addProperty: (recoveredValue2) named: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) serverInputMessageConstructor.
    recoveredValue6 := WSInputMessageConstructor.
    (recoveredValue4) addProperty: (recoveredValue5) named: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) serverOutputMessageConstructor.
    recoveredValue9 := WSOutputMessageConstructor.
    (recoveredValue7) addProperty: (recoveredValue8) named: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := (self) serverFaultMessageConstructor.
    recoveredValue12 := WSFaultMessageConstructor.
    (recoveredValue10) addProperty: (recoveredValue11) named: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) container.
    recoveredValue15 := (recoveredValue14) engineFactory.
    recoveredValue16 := (recoveredValue15) defaultServerEngine.
    (recoveredValue13) engine: (recoveredValue16).
    recoveredLocal1 := recoveredValue0.
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"xxx_dyn.ic method 0x2001f7f8; bytecode file offset 0x808f8"
!SstWSMessageContextFactory methodsFor: 'recovered'!
clientMessageContextForOperationNamed: recoveredArg1 withArguments: recoveredArg2 forService: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := (self) newMessageContext.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) sstImplementation.
    recoveredValue4 := WSImplementation.
    (recoveredValue1) addProperty: (recoveredValue3) named: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := WSOperationName.
    (recoveredValue5) addProperty: (recoveredValue6) named: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := WSOperationArguments.
    (recoveredValue8) addProperty: (recoveredValue9) named: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) clientInputMessageConstructor.
    recoveredValue13 := WSInputMessageConstructor.
    (recoveredValue11) addProperty: (recoveredValue12) named: (recoveredValue13).
    recoveredValue14 := recoveredValue0.
    recoveredValue15 := (self) clientOutputMessageConstructor.
    recoveredValue16 := WSOutputMessageConstructor.
    (recoveredValue14) addProperty: (recoveredValue15) named: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := (self) clientFaultMessageConstructor.
    recoveredValue19 := WSFaultMessageConstructor.
    (recoveredValue17) addProperty: (recoveredValue18) named: (recoveredValue19).
    recoveredValue20 := recoveredValue0.
    recoveredValue21 := recoveredArg3.
    recoveredValue22 := WSService.
    (recoveredValue20) addProperty: (recoveredValue21) named: (recoveredValue22).
    recoveredLocal1 := recoveredValue0.
    recoveredValue23 := (self) contextInitializer.
    recoveredValue24 := recoveredLocal1.
    (recoveredValue23) invoke: (recoveredValue24).
    recoveredValue25 := recoveredLocal1.
    ^recoveredValue25
! !

