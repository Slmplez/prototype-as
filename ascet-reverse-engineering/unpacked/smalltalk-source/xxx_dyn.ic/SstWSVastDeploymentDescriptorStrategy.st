"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000d28; bytecode file offset 0x6209c"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
mappingSpecClass
    | recoveredValue0 |
    recoveredValue0 := AbtXmlMappingSpec.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001cf8; bytecode file offset 0x62dd8"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
deploy: recoveredArg1 into: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) deploy: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001ec4; bytecode file offset 0x63040"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
deserializationConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtXmlDeserializationConfiguration.
    recoveredValue1 := (recoveredValue0) newMappingParserConfiguration.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200050f0; bytecode file offset 0x661c0"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
parser
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlMappingParser.
    recoveredValue1 := (self) deserializationConfiguration.
    recoveredValue2 := (recoveredValue0) usingConfiguration: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007a40; bytecode file offset 0x68b10"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
resolveMappingSpec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) mappingSpecClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) from: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) validateMappingSpec: (recoveredValue2) resolvedFrom: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000eeb4; bytecode file offset 0x6ff88"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
deploymentDescriptorFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildDeploymentObjectFrom: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlMappedObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) namespaceUri.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) deploymentNamespace: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200102d8; bytecode file offset 0x713ac"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
validateMappingSpec: recoveredArg1 resolvedFrom: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := ('Error building mapping spec from %1.  See error log.') bindWith: (recoveredBlock7Value0).
    recoveredBlock7Value2 := (self) error: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20013688; bytecode file offset 0x7478c"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
containerDescriptorFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) containerDescriptor.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := SstWSDeploymentManager.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) sourceUrl.
    recoveredBlock8Value3 := ('No container description specified in deployment descriptor located at %1') bindWith: (recoveredBlock8Value2).
    recoveredBlock8Value4 := (recoveredBlock8Value0) fatalDeploymentError: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200136ac; bytecode file offset 0x7478c"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
servicesDescriptorFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) servicesDescriptor.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := SstWSDeploymentManager.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) sourceUrl.
    recoveredBlock8Value3 := ('No services description specified in deployment descriptor located at %1') bindWith: (recoveredBlock8Value2).
    recoveredBlock8Value4 := (recoveredBlock8Value0) fatalDeploymentError: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20016798; bytecode file offset 0x7786c"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
initializeHandlersFor: recoveredArg1 using: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) handlers.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := [:recoveredBlock8Block15Arg1 | 
    | recoveredBlock8Block15Value0 recoveredBlock8Block15Value1 recoveredBlock8Block15Value2 recoveredBlock8Block15Value3 |
    recoveredBlock8Block15Value0 := recoveredBlock8Block15Arg1.
    recoveredBlock8Block15Value1 := recoveredArg1.
    recoveredBlock8Block15Value2 := recoveredArg3.
    recoveredBlock8Block15Value3 := (recoveredBlock8Block15Value0) initializeFor: (recoveredBlock8Block15Value1) using: (recoveredBlock8Block15Value2).
    recoveredBlock8Block15Value3
].
    recoveredBlock8Value2 := (recoveredBlock8Value0) do: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x2001b3dc; bytecode file offset 0x7c4bc"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
initializeMappingSpecs: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) serializationManager.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) mappingSpecUrls.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block23Arg1 | 
    | recoveredBlock15Block23Local1 recoveredBlock15Block23Value0 recoveredBlock15Block23Value1 recoveredBlock15Block23Value2 recoveredBlock15Block23Value3 recoveredBlock15Block23Value4 recoveredBlock15Block23Value5 recoveredBlock15Block23Value6 |
    recoveredBlock15Block23Value0 := recoveredBlock15Block23Arg1.
    recoveredBlock15Block23Value1 := (self) resolveMappingSpec: (recoveredBlock15Block23Value0).
    recoveredBlock15Block23Local1 := recoveredBlock15Block23Value1.
    recoveredBlock15Block23Value2 := recoveredLocal1.
    recoveredBlock15Block23Value3 := recoveredBlock15Block23Local1.
    recoveredBlock15Block23Value4 := recoveredBlock15Block23Local1.
    recoveredBlock15Block23Value5 := (recoveredBlock15Block23Value4) nameSpaceURI.
    recoveredBlock15Block23Value6 := (recoveredBlock15Block23Value2) addMappingSpec: (recoveredBlock15Block23Value3) named: (recoveredBlock15Block23Value5).
    recoveredBlock15Block23Value6
].
    recoveredBlock15Value2 := (recoveredBlock15Value0) do: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x2001bd5c; bytecode file offset 0x7ce40"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
unloadImageComponentsFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) imageComponents.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := [:recoveredBlock14Block21Arg1 | 
    | recoveredBlock14Block21Value0 recoveredBlock14Block21Value1 recoveredBlock14Block21Value2 recoveredBlock14Block21Value3 recoveredBlock14Block21Value4 recoveredBlock14Block21Value5 |
    recoveredBlock14Block21Value0 := recoveredLocal1.
    recoveredBlock14Block21Value1 := recoveredBlock14Block21Arg1.
    recoveredBlock14Block21Value2 := System.
    recoveredBlock14Block21Value3 := recoveredBlock14Block21Arg1.
    recoveredBlock14Block21Value4 := (recoveredBlock14Block21Value2) removeComponent: (recoveredBlock14Block21Value3) checkInstances: (false).
    recoveredBlock14Block21Value5 := (recoveredBlock14Block21Value0) at: (recoveredBlock14Block21Value1) put: (recoveredBlock14Block21Value4).
    recoveredBlock14Block21Value5
].
    recoveredBlock14Value2 := (recoveredBlock14Value0) do: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x2001be0c; bytecode file offset 0x7cf00"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
buildSchema: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) serializationManager.
    recoveredValue2 := AbtXmlSchema.
    recoveredValue3 := (recoveredValue2) defaultNamespace.
    recoveredValue4 := (recoveredValue1) deserializationConfigurationNamed: (recoveredValue3).
    recoveredValue5 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := AbtXmlDeserializationConfiguration.
    recoveredBlock12Value1 := (recoveredBlock12Value0) newSchemaConfiguration.
    recoveredBlock12Value2 := recoveredBlock12Value1.
    recoveredBlock12Value3 := recoveredArg2.
    recoveredBlock12Value4 := (recoveredBlock12Value3) serializationManager.
    (recoveredBlock12Value2) objectCache: (recoveredBlock12Value4).
    recoveredBlock12Value1
].
    recoveredValue6 := (recoveredValue4) ifNil: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := AbtXmlMappingParser.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) usingConfiguration: (recoveredValue8).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue9) parseURI: (recoveredValue10).
    recoveredValue12 := (recoveredValue11) abtXmlMappedObject.
    ^recoveredValue12
! !

"xxx_dyn.ic method 0x2001d6e8; bytecode file offset 0x7e7c4"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
initializeSchemas: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializationManager.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaUrls.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaUrls.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := self.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Arg1.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack4 := recoveredArg1.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) buildSchema: (recoveredBlock22Stack3) using: (recoveredBlock22Stack4).
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack3.
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            (recoveredBlock22Stack2 == nil) ifTrue: [recoveredBlock22PC := 51] ifFalse: [recoveredBlock22PC := 42].
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local1.
            recoveredBlock22PC := 48.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) targetNamespace.
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) addSchema: (recoveredBlock22Stack2) named: (recoveredBlock22Stack3).
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001ee70; bytecode file offset 0x7ff68"
!SstWSVastDeploymentDescriptorStrategy methodsFor: 'recovered'!
loadImageComponentsFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) imageComponents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800ba78Arg1 | 
    | block2800ba78Stack0 block2800ba78Stack1 block2800ba78Stack2 block2800ba78Stack3 block2800ba78PC block2800ba78Step block2800ba78Done block2800ba78Result |
    block2800ba78Stack0 := self.
    block2800ba78PC := 4.
    block2800ba78Done := false.
    [block2800ba78Done not] whileTrue: [
        block2800ba78Step := block2800ba78PC.
        block2800ba78Step = 4 ifTrue: [
            block2800ba78Stack1 := block2800ba78Arg1.
            block2800ba78PC := 5.
        ].
        block2800ba78Step = 5 ifTrue: [
            block2800ba78Stack2 := [:block2800ba9cArg1 | 
    | block2800ba9cValue0 block2800ba9cValue1 block2800ba9cValue2 block2800ba9cValue3 |
    block2800ba9cValue0 := [
    | block2800ba9cBlock4Value0 block2800ba9cBlock4Value1 block2800ba9cBlock4Value2 |
    block2800ba9cBlock4Value0 := System.
    block2800ba9cBlock4Value1 := block2800ba9cArg1.
    block2800ba9cBlock4Value2 := (block2800ba9cBlock4Value0) loadComponent: (block2800ba9cBlock4Value1).
    block2800ba9cBlock4Value2
].
    block2800ba9cValue1 := ExAll.
    block2800ba9cValue2 := [:block2800ba9cBlock20Arg1 | 
    | block2800ba9cBlock20Value0 block2800ba9cBlock20Value1 block2800ba9cBlock20Value2 block2800ba9cBlock20Value3 block2800ba9cBlock20Value4 |
    block2800ba9cBlock20Value0 := ExWSFatalDeploymentError.
    block2800ba9cBlock20Value1 := block2800ba9cArg1.
    block2800ba9cBlock20Value2 := ('Cannot load IC %1') bindWith: (block2800ba9cBlock20Value1).
    block2800ba9cBlock20Value3 := block2800ba9cBlock20Arg1.
    block2800ba9cBlock20Value4 := (block2800ba9cBlock20Value0) signalWith: (block2800ba9cBlock20Value2) with: (block2800ba9cBlock20Value3).
    block2800ba9cBlock20Value4
].
    block2800ba9cValue3 := (block2800ba9cValue0) when: (block2800ba9cValue1) do: (block2800ba9cValue2).
    block2800ba9cValue3
].
            block2800ba78PC := 7.
        ].
        block2800ba78Step = 7 ifTrue: [
            block2800ba78PC := 48.
        ].
        block2800ba78Step = 48 ifTrue: [
            block2800ba78Stack1 := (block2800ba78Stack1) do: (block2800ba78Stack2).
            block2800ba78PC := 50.
        ].
        block2800ba78Step = 50 ifTrue: [
            block2800ba78Result := block2800ba78Stack1.
            block2800ba78Done := true.
        ].
    ].
    block2800ba78Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

