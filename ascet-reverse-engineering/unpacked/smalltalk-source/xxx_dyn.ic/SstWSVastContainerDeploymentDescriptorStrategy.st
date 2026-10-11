"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20014ee4; bytecode file offset 0x75fb8"
!SstWSVastContainerDeploymentDescriptorStrategy methodsFor: 'recovered'!
deployServicesInto: recoveredArg1 using: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) serviceUrls.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := [:recoveredBlock8Block15Arg1 | 
    | recoveredBlock8Block15Value0 recoveredBlock8Block15Value1 recoveredBlock8Block15Value2 |
    recoveredBlock8Block15Value0 := recoveredArg1.
    recoveredBlock8Block15Value1 := recoveredBlock8Block15Arg1.
    recoveredBlock8Block15Value2 := (recoveredBlock8Block15Value0) deploy: (recoveredBlock8Block15Value1).
    recoveredBlock8Block15Value2
].
    recoveredBlock8Value2 := (recoveredBlock8Value0) do: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x200196d8; bytecode file offset 0x7a7cc"
!SstWSVastContainerDeploymentDescriptorStrategy methodsFor: 'recovered'!
deploymentDescriptorFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parser.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseURI: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlMappedObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstIsDeploymentDescriptor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) sourceUrl: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) namespaceUri.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) deploymentNamespace: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SstWSDeploymentManager.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'Deployment descriptor could not be built from %1'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) fatalDeploymentError: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20019850; bytecode file offset 0x7a94c"
!SstWSVastContainerDeploymentDescriptorStrategy methodsFor: 'recovered'!
deserializationConfiguration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := WSDeploymentURI.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) deserializationConfigurationNamed: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [
    | block2800b61cStack0 block2800b61cStack1 block2800b61cStack2 block2800b61cStack3 block2800b61cPC block2800b61cStep block2800b61cDone block2800b61cResult |
    block2800b61cStack0 := self.
    block2800b61cPC := 4.
    block2800b61cDone := false.
    [block2800b61cDone not] whileTrue: [
        block2800b61cStep := block2800b61cPC.
        block2800b61cStep = 4 ifTrue: [
            block2800b61cStack1 := AbtXmlDeserializationConfiguration.
            block2800b61cPC := 6.
        ].
        block2800b61cStep = 6 ifTrue: [
            block2800b61cStack1 := (block2800b61cStack1) newMappingParserConfiguration.
            block2800b61cPC := 8.
        ].
        block2800b61cStep = 8 ifTrue: [
            block2800b61cStack2 := [:block2800b640Arg1 | 
    | block2800b640Value0 block2800b640Value1 block2800b640Value2 block2800b640Value3 block2800b640Value4 |
    block2800b640Value0 := SstWSDeploymentManager.
    block2800b640Value1 := block2800b640Arg1.
    block2800b640Value2 := (block2800b640Value1) argument.
    (block2800b640Value0) fatalDeploymentError: (block2800b640Value2).
    block2800b640Value3 := block2800b640Arg1.
    block2800b640Value4 := (block2800b640Value3) exitWith: (nil).
    block2800b640Value4
].
            block2800b61cPC := 10.
        ].
        block2800b61cStep = 10 ifTrue: [
            block2800b61cPC := 26.
        ].
        block2800b61cStep = 26 ifTrue: [
            block2800b61cStack1 := (block2800b61cStack1) errorHandler: (block2800b61cStack2).
            block2800b61cPC := 28.
        ].
        block2800b61cStep = 28 ifTrue: [
            block2800b61cResult := block2800b61cStack1.
            block2800b61cDone := true.
        ].
    ].
    block2800b61cResult
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001f2e0; bytecode file offset 0x803d8"
!SstWSVastContainerDeploymentDescriptorStrategy methodsFor: 'recovered'!
deploy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) deploymentDescriptorFrom: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := (self) containerDescriptorFrom: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := SstWSContainer.
    recoveredValue6 := (recoveredValue4) containerUsing: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    (self) loadImageComponentsFrom: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := (recoveredValue9) containerDescriptor.
    (self) initializeSchemas: (recoveredValue8) using: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := (recoveredValue12) containerDescriptor.
    (self) initializeMappingSpecs: (recoveredValue11) using: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := (recoveredValue15) containerDescriptor.
    recoveredValue17 := recoveredLocal3.
    (self) initializeHandlersFor: (recoveredValue14) using: (recoveredValue16) with: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := (recoveredValue19) containerDescriptor.
    (self) deployServicesInto: (recoveredValue18) using: (recoveredValue20).
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := (recoveredValue22) allServices.
    recoveredValue24 := recoveredLocal2.
    (recoveredValue21) applyDeploymentExtensionsToServices: (recoveredValue23) andContainer: (recoveredValue24).
    recoveredValue25 := recoveredLocal2.
    recoveredValue26 := recoveredValue25.
    (recoveredValue26) startUp.
    ^recoveredValue25
! !

