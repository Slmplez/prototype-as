"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000e6c; bytecode file offset 0x6209c"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
abtXmlCacheKey
    | recoveredValue0 |
    recoveredValue0 := WSDeploymentURI.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200012f4; bytecode file offset 0x626a4"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
abtXmlSchemaResourceNames
    ^#('sstwsdep.xsd')
! !

"xxx_dyn.ic method 0x20001408; bytecode file offset 0x626a4"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
abtXmlMappingSpecResourceNames
    ^#('sstwsdep.map')
! !

"xxx_dyn.ic method 0x20005de0; bytecode file offset 0x66f2c"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20019058; bytecode file offset 0x7a14c"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
abtXmlInitializeSerializationConfigurations
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) abtXmlCacheKey.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := AbtXmlSerializationConfiguration.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue1) forKey: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) abtXmlDefaultNamespacePrefix.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue5) declarePrefix: (recoveredValue7) uri: (recoveredValue8).
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) declarePrefix: ('vast') uri: ('Smalltalk').
    (recoveredValue4) printTypes: (false).
    recoveredValue10 := recoveredLocal2.
    (self) addCommentPropertiesToConfiguration: (recoveredValue10).
    recoveredValue11 := AbtXmlObjectCache.
    recoveredValue12 := (recoveredValue11) current.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue12) addSerializationConfiguration: (recoveredValue13) named: (recoveredValue14).
    ^self
! !

"xxx_dyn.ic method 0x2001b8b4; bytecode file offset 0x7c9d0"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageStarted.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) startUp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block2800b7f0Arg1 | 
    | block2800b7f0Stack0 block2800b7f0Stack1 block2800b7f0Stack2 block2800b7f0Stack3 block2800b7f0Stack4 block2800b7f0PC block2800b7f0Step block2800b7f0Done block2800b7f0Result |
    block2800b7f0Stack0 := self.
    block2800b7f0PC := 4.
    block2800b7f0Done := false.
    [block2800b7f0Done not] whileTrue: [
        block2800b7f0Step := block2800b7f0PC.
        block2800b7f0Step = 4 ifTrue: [
            block2800b7f0Stack1 := block2800b7f0Arg1.
            block2800b7f0PC := 5.
        ].
        block2800b7f0Step = 5 ifTrue: [
            block2800b7f0Stack2 := 'setupAfterLoad'.
            block2800b7f0PC := 7.
        ].
        block2800b7f0Step = 7 ifTrue: [
            block2800b7f0Stack1 := (block2800b7f0Stack1) respondsTo: (block2800b7f0Stack2).
            block2800b7f0PC := 9.
        ].
        block2800b7f0Step = 9 ifTrue: [
            (block2800b7f0Stack1) ifTrue: [block2800b7f0PC := 12] ifFalse: [block2800b7f0PC := 15].
        ].
        block2800b7f0Step = 12 ifTrue: [
            block2800b7f0Stack1 := block2800b7f0Arg1.
            block2800b7f0PC := 13.
        ].
        block2800b7f0Step = 13 ifTrue: [
            (block2800b7f0Stack1) setupAfterLoad.
            block2800b7f0PC := 15.
        ].
        block2800b7f0Step = 15 ifTrue: [
            block2800b7f0Stack1 := nil.
            block2800b7f0PC := 16.
        ].
        block2800b7f0Step = 16 ifTrue: [
            block2800b7f0Stack2 := block2800b7f0Arg1.
            block2800b7f0PC := 17.
        ].
        block2800b7f0Step = 17 ifTrue: [
            block2800b7f0Stack2 := (block2800b7f0Stack2) class.
            block2800b7f0PC := 19.
        ].
        block2800b7f0Step = 19 ifTrue: [
            block2800b7f0Stack3 := 'setupAfterLoadNonInherited'.
            block2800b7f0PC := 21.
        ].
        block2800b7f0Step = 21 ifTrue: [
            block2800b7f0Stack2 := (block2800b7f0Stack2) includesSelector: (block2800b7f0Stack3).
            block2800b7f0PC := 23.
        ].
        block2800b7f0Step = 23 ifTrue: [
            (block2800b7f0Stack2) ifTrue: [block2800b7f0PC := 26] ifFalse: [block2800b7f0PC := 30].
        ].
        block2800b7f0Step = 26 ifTrue: [
            block2800b7f0PC := 27.
        ].
        block2800b7f0Step = 27 ifTrue: [
            block2800b7f0Stack1 := block2800b7f0Arg1.
            block2800b7f0PC := 28.
        ].
        block2800b7f0Step = 28 ifTrue: [
            block2800b7f0Stack1 := (block2800b7f0Stack1) setupAfterLoadNonInherited.
            block2800b7f0PC := 30.
        ].
        block2800b7f0Step = 30 ifTrue: [
            block2800b7f0Result := block2800b7f0Stack1.
            block2800b7f0Done := true.
        ].
    ].
    block2800b7f0Result
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001f4d4; bytecode file offset 0x805cc"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800bae4Arg1 | 
    | block2800bae4Stack0 block2800bae4Stack1 block2800bae4Stack2 block2800bae4Stack3 block2800bae4Stack4 block2800bae4PC block2800bae4Step block2800bae4Done block2800bae4Result |
    block2800bae4Stack0 := self.
    block2800bae4PC := 4.
    block2800bae4Done := false.
    [block2800bae4Done not] whileTrue: [
        block2800bae4Step := block2800bae4PC.
        block2800bae4Step = 4 ifTrue: [
            block2800bae4Stack1 := block2800bae4Arg1.
            block2800bae4PC := 5.
        ].
        block2800bae4Step = 5 ifTrue: [
            block2800bae4Stack2 := 'cleanUpBeforeRemove'.
            block2800bae4PC := 7.
        ].
        block2800bae4Step = 7 ifTrue: [
            block2800bae4Stack1 := (block2800bae4Stack1) respondsTo: (block2800bae4Stack2).
            block2800bae4PC := 8.
        ].
        block2800bae4Step = 8 ifTrue: [
            (block2800bae4Stack1) ifTrue: [block2800bae4PC := 12] ifFalse: [block2800bae4PC := 15].
        ].
        block2800bae4Step = 12 ifTrue: [
            block2800bae4Stack1 := block2800bae4Arg1.
            block2800bae4PC := 13.
        ].
        block2800bae4Step = 13 ifTrue: [
            (block2800bae4Stack1) cleanUpBeforeRemove.
            block2800bae4PC := 15.
        ].
        block2800bae4Step = 15 ifTrue: [
            block2800bae4Stack1 := nil.
            block2800bae4PC := 16.
        ].
        block2800bae4Step = 16 ifTrue: [
            block2800bae4Stack2 := block2800bae4Arg1.
            block2800bae4PC := 17.
        ].
        block2800bae4Step = 17 ifTrue: [
            block2800bae4Stack2 := (block2800bae4Stack2) class.
            block2800bae4PC := 18.
        ].
        block2800bae4Step = 18 ifTrue: [
            block2800bae4Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800bae4PC := 20.
        ].
        block2800bae4Step = 20 ifTrue: [
            block2800bae4Stack2 := (block2800bae4Stack2) includesSelector: (block2800bae4Stack3).
            block2800bae4PC := 22.
        ].
        block2800bae4Step = 22 ifTrue: [
            (block2800bae4Stack2) ifTrue: [block2800bae4PC := 26] ifFalse: [block2800bae4PC := 30].
        ].
        block2800bae4Step = 26 ifTrue: [
            block2800bae4PC := 27.
        ].
        block2800bae4Step = 27 ifTrue: [
            block2800bae4Stack1 := block2800bae4Arg1.
            block2800bae4PC := 28.
        ].
        block2800bae4Step = 28 ifTrue: [
            block2800bae4Stack1 := (block2800bae4Stack1) cleanUpBeforeRemoveNonInherited.
            block2800bae4PC := 30.
        ].
        block2800bae4Step = 30 ifTrue: [
            block2800bae4Result := block2800bae4Stack1.
            block2800bae4Done := true.
        ].
    ].
    block2800bae4Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlCacheKey.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) removeSchemaNamed: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlCacheKey.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) removeMappingSpecNamed: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) removeSerializationConfigurationNamed: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20023890; bytecode file offset 0x84984"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
startUp
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) abtXmlCacheKey.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := AbtXmlObjectCache.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) schemaNamed: (recoveredValue3).
    recoveredValue5 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := (self) abtXmlInitializeSchemas.
    recoveredBlock15Value0
].
    (recoveredValue4) ifNil: (recoveredValue5).
    recoveredValue6 := AbtXmlObjectCache.
    recoveredValue7 := (recoveredValue6) current.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) mappingSpecNamed: (recoveredValue8).
    recoveredValue10 := [
    | recoveredBlock35Value0 |
    recoveredBlock35Value0 := (self) abtXmlInitializeMappingSpecs.
    recoveredBlock35Value0
].
    (recoveredValue9) ifNil: (recoveredValue10).
    recoveredValue11 := AbtXmlObjectCache.
    recoveredValue12 := (recoveredValue11) current.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue12) serializationConfigurationNamed: (recoveredValue13).
    recoveredValue15 := [
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 |
    recoveredBlock55Value0 := AbtXmlObjectCache.
    recoveredBlock55Value1 := (recoveredBlock55Value0) current.
    recoveredBlock55Value2 := SstWSDeploymentDescriptorSerializer.
    recoveredBlock55Value3 := (recoveredBlock55Value2) current.
    recoveredBlock55Value4 := recoveredLocal1.
    (recoveredBlock55Value1) addOutputSerializer: (recoveredBlock55Value3) named: (recoveredBlock55Value4).
    recoveredBlock55Value5 := (self) abtXmlInitializeSerializationConfigurations.
    recoveredBlock55Value5
].
    (recoveredValue14) ifNil: (recoveredValue15).
    ^self
! !

"xxx_dyn.ic method 0x20024770; bytecode file offset 0x85880"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
abtXmlInitializeSchemas
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super abtXmlInitializeSchemas.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'smalltalkClass'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := AbtPluggableTypeConverter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:block2800be20Arg1 :block2800be20Arg2 | 
    | block2800be20Local1 block2800be20Stack0 block2800be20Stack1 block2800be20Stack2 block2800be20Stack3 block2800be20PC block2800be20Step block2800be20Done block2800be20Result |
    block2800be20Stack0 := self.
    block2800be20PC := 4.
    block2800be20Done := false.
    [block2800be20Done not] whileTrue: [
        block2800be20Step := block2800be20PC.
        block2800be20Step = 4 ifTrue: [
            block2800be20Stack1 := block2800be20Arg1.
            block2800be20PC := 5.
        ].
        block2800be20Step = 5 ifTrue: [
            block2800be20Stack1 := (block2800be20Stack1) abrAsClass.
            block2800be20PC := 7.
        ].
        block2800be20Step = 7 ifTrue: [
            block2800be20Stack2 := block2800be20Stack1.
            block2800be20PC := 8.
        ].
        block2800be20Step = 8 ifTrue: [
            block2800be20Local1 := block2800be20Stack2.
            block2800be20PC := 9.
        ].
        block2800be20Step = 9 ifTrue: [
            (block2800be20Stack1 == nil) ifTrue: [block2800be20PC := 16] ifFalse: [block2800be20PC := 12].
        ].
        block2800be20Step = 12 ifTrue: [
            block2800be20Stack1 := block2800be20Local1.
            block2800be20PC := 13.
        ].
        block2800be20Step = 13 ifTrue: [
            block2800be20PC := 17.
        ].
        block2800be20Step = 16 ifTrue: [
            block2800be20Stack1 := block2800be20Arg1.
            block2800be20PC := 17.
        ].
        block2800be20Step = 17 ifTrue: [
            block2800be20Result := block2800be20Stack1.
            block2800be20Done := true.
        ].
    ].
    block2800be20Result
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) fromBlock: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:block2800be44Arg1 :block2800be44Arg2 | 
    | block2800be44Stack0 block2800be44Stack1 block2800be44Stack2 block2800be44PC block2800be44Step block2800be44Done block2800be44Result |
    block2800be44Stack0 := self.
    block2800be44PC := 4.
    block2800be44Done := false.
    [block2800be44Done not] whileTrue: [
        block2800be44Step := block2800be44PC.
        block2800be44Step = 4 ifTrue: [
            block2800be44Stack1 := block2800be44Arg1.
            block2800be44PC := 5.
        ].
        block2800be44Step = 5 ifTrue: [
            block2800be44Stack1 := (block2800be44Stack1) isClass.
            block2800be44PC := 7.
        ].
        block2800be44Step = 7 ifTrue: [
            (block2800be44Stack1) ifTrue: [block2800be44PC := 10] ifFalse: [block2800be44PC := 18].
        ].
        block2800be44Step = 10 ifTrue: [
            block2800be44Stack1 := block2800be44Arg1.
            block2800be44PC := 11.
        ].
        block2800be44Step = 11 ifTrue: [
            block2800be44Stack1 := (block2800be44Stack1) name.
            block2800be44PC := 13.
        ].
        block2800be44Step = 13 ifTrue: [
            block2800be44Stack1 := (block2800be44Stack1) asString.
            block2800be44PC := 15.
        ].
        block2800be44Step = 15 ifTrue: [
            block2800be44PC := 21.
        ].
        block2800be44Step = 18 ifTrue: [
            block2800be44Stack1 := block2800be44Arg1.
            block2800be44PC := 19.
        ].
        block2800be44Step = 19 ifTrue: [
            block2800be44Stack1 := (block2800be44Stack1) abtXmlPrintString.
            block2800be44PC := 21.
        ].
        block2800be44Step = 21 ifTrue: [
            block2800be44Result := block2800be44Stack1.
            block2800be44Done := true.
        ].
    ].
    block2800be44Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBlock: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) converter: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200269a8; bytecode file offset 0x87ae0"
!SstWebServicesDeploymentApp class methodsFor: 'recovered'!
addCommentPropertiesToConfiguration: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    (recoveredValue0) addProperty: (recoveredValue2) named: ('Comments').
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) at: ('container') put: ('Create definitions with "container" visibility.  Elements below can be shared by all services deployed to a container').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) at: ('imageComponentUrls') put: ('The Smalltalk ICs that should be loaded before attempting deployment.  Urls must resolve to a local file.').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) at: ('mappingSpecUrls') put: ('The mapping specifications that are required to marshall XML for the services defined by this deployment descriptor').
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) at: ('configuration') put: ('The container configuration settings.  Typically mapped to SstWSContainerConfiguration. ').
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) at: ('actorRoles') put: ('The actor roles that this node supports during processing.  Hosted services must include the VAST 
anonymous role vast:anonymous').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) at: ('schemaUrls') put: ('Urls for any required XML schemas that are not directly imported by WSDL').
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) at: ('managers') put: ('Managers deployed in the container.  Managers are instantiated in the order they appear').
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) at: ('handlers') put: ('The Web services handlers that are available to all services').
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) at: ('serviceUrls') put: ('The service imports section represent service descriptions external to this document. Currently,
the external document can be either a service deployment descriptor or a WSDL.  Processing of
the service imports occurs after the container is deployed and started').
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) at: ('extensions') put: ('Add any installation-specific extensions here.  Custom deployment strategies may use the extensions during deployment').
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) at: ('wsdlUrls') put: ('The WSDL urls containing the interface information for the services to be deployed').
    (recoveredValue4) at: ('service') put: ('The Smalltalk specific deployment information for a service defined in the above WSDLs. 
The service name and namespace must be found in one of the WSDLs listed above.').
    ^self
! !

