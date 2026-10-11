"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200006cc; bytecode file offset 0x619a4"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsServerFaultMessageConstructor
    | recoveredValue0 |
    recoveredValue0 := (self) primFaultMessageConstructor.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000840; bytecode file offset 0x619a4"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsClientFaultMessageConstructor
    | recoveredValue0 |
    recoveredValue0 := (self) primFaultMessageConstructor.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200018bc; bytecode file offset 0x62c08"
!SstWSHandlerFactory methodsFor: 'recovered'!
globalNamespace
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) container.
    recoveredValue1 := (recoveredValue0) globalNamespace.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001d34; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsServiceResponseServerHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) default.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001d44; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsHttpClientRequestHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSHttpDispatchHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001d54; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsHttpServerResponseHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSHttpResponseHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001d74; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsServiceRequestClientHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSTransportDeterminationHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001d94; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsGlobalClientInputHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSSecurityHeaderGenerationHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001da4; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsHttpClientFaultHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001db4; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsServiceResponseClientHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) default.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001df4; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsServerInputMessageConstructor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSSoapDeserializationHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001e04; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsServiceFaultServerHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) default.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001e14; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsGlobalRequestServerHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSHeaderProcessor.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001e24; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsNoOpHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) default.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001e54; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsMessageContextInitializer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSMessageContextInitializationHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001e64; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsClientOutputMessageConstructor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSSoapDeserializationHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001e94; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsGlobalFaultClientHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) default.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001ea4; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsGlobalFaultServerHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) default.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001ef4; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsGlobalResponseServerHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) default.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001f04; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsHttpServerRequestHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSHttpSoapActionHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001f24; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsHttpClientResponseHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) default.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001f34; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsServiceFaultClientHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSNoOperationHandler.
    recoveredValue1 := (recoveredValue0) default.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001f54; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsGlobalResponseClientHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSHeaderProcessor.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001f64; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsHttpServerFaultHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSHttpResponseHandler.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001f74; bytecode file offset 0x63040"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsServiceRequestServerHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSBodyProcessor.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002874; bytecode file offset 0x63b1c"
!SstWSHandlerFactory methodsFor: 'recovered'!
clear
    (self) initialize.
    ^self
! !

"xxx_dyn.ic method 0x200037e4; bytecode file offset 0x649e8"
!SstWSHandlerFactory methodsFor: 'recovered'!
registry
    | recoveredValue0 |
    recoveredValue0 := registry.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003a50; bytecode file offset 0x64bac"
!SstWSHandlerFactory methodsFor: 'recovered'!
container
    | recoveredValue0 |
    recoveredValue0 := container.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004ffc; bytecode file offset 0x660c4"
!SstWSHandlerFactory methodsFor: 'recovered'!
unregister: recoveredArg1 named: recoveredArg2 inNamespace: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) unregisterHandlerNamed: (recoveredValue0) inNamespace: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005cf4; bytecode file offset 0x66e50"
!SstWSHandlerFactory methodsFor: 'recovered'!
createHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) globalNamespace.
    recoveredValue2 := (self) createHandler: (recoveredValue0) inNamespace: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005d34; bytecode file offset 0x66e50"
!SstWSHandlerFactory methodsFor: 'recovered'!
unregister: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) globalNamespace.
    recoveredValue2 := (self) unregister: (recoveredValue0) inNamespace: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005d54; bytecode file offset 0x66e50"
!SstWSHandlerFactory methodsFor: 'recovered'!
register: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) globalNamespace.
    recoveredValue2 := (self) register: (recoveredValue0) inNamespace: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005d84; bytecode file offset 0x66e50"
!SstWSHandlerFactory methodsFor: 'recovered'!
handlerNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) globalNamespace.
    recoveredValue2 := (self) handlerNamed: (recoveredValue0) inNamespace: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20006434; bytecode file offset 0x67530"
!SstWSHandlerFactory methodsFor: 'recovered'!
unregisterHandlerNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) removeObjectNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006444; bytecode file offset 0x67530"
!SstWSHandlerFactory methodsFor: 'recovered'!
register: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) add: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006660; bytecode file offset 0x67758"
!SstWSHandlerFactory methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstNamespaceDictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) registry: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x200077ec; bytecode file offset 0x688c0"
!SstWSHandlerFactory methodsFor: 'recovered'!
error: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ExWSNonFatalError.
    recoveredValue1 := SstWSError.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) for: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) signalWith: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007c9c; bytecode file offset 0x68f50"
!SstWSHandlerFactory methodsFor: 'recovered'!
registry: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    registry := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007ea8; bytecode file offset 0x69104"
!SstWSHandlerFactory methodsFor: 'recovered'!
container: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    container := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008c00; bytecode file offset 0x69ccc"
!SstWSHandlerFactory methodsFor: 'recovered'!
unregister: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) unregister: (recoveredValue0) named: (recoveredValue2) inNamespace: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20008cc8; bytecode file offset 0x69de4"
!SstWSHandlerFactory methodsFor: 'recovered'!
handlerNamed: recoveredArg1 inNamespace: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) objectNamed: (recoveredValue1) inNamespace: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20008cd8; bytecode file offset 0x69de4"
!SstWSHandlerFactory methodsFor: 'recovered'!
register: recoveredArg1 named: recoveredArg2 inNamespace: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) add: (recoveredValue1) named: (recoveredValue2) inNamespace: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000c864; bytecode file offset 0x6d92c"
!SstWSHandlerFactory methodsFor: 'recovered'!
handlerCreationBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := handlerCreationBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultHandlerCreationBlock.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := handlerCreationBlock.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d038; bytecode file offset 0x6e148"
!SstWSHandlerFactory methodsFor: 'recovered'!
primFaultMessageConstructor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SstWSSimpleChain.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SstWSSoapEnvelopeGenerationHandler.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue2) addHandler: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SstWSSoapFaultPayloadGenerationHandler.
    recoveredValue7 := (recoveredValue6) new.
    (recoveredValue5) addHandler: (recoveredValue7).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000d054; bytecode file offset 0x6e148"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsServerOutputMessageConstructor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SstWSSimpleChain.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SstWSSoapEnvelopeGenerationHandler.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue2) addHandler: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SstWSSoapOutputPayloadGenerationHandler.
    recoveredValue7 := (recoveredValue6) new.
    (recoveredValue5) addHandler: (recoveredValue7).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000d070; bytecode file offset 0x6e148"
!SstWSHandlerFactory methodsFor: 'recovered'!
wsClientInputMessageConstructor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SstWSSimpleChain.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SstWSSoapEnvelopeGenerationHandler.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue2) addHandler: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SstWSSoapInputPayloadGenerationHandler.
    recoveredValue7 := (recoveredValue6) new.
    (recoveredValue5) addHandler: (recoveredValue7).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20012dbc; bytecode file offset 0x73e88"
!SstWSHandlerFactory methodsFor: 'recovered'!
handlerNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := recoveredArg2.
    recoveredBlock10Value2 := (self) createHandler: (recoveredBlock10Value0) inNamespace: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    recoveredValue3 := (self) handlerNamed: (recoveredValue0) inNamespace: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200148ec; bytecode file offset 0x759c8"
!SstWSHandlerFactory methodsFor: 'recovered'!
createHandler: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlerCreationBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'Handler named %1 could not be created in %2'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) register: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20014c54; bytecode file offset 0x75d28"
!SstWSHandlerFactory methodsFor: 'recovered'!
defaultHandlerCreationBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) asSymbol.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) respondsTo: (recoveredBlock4Stack1).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 30].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) perform: (recoveredBlock4Stack1).
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) name: (recoveredBlock4Stack1).
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

