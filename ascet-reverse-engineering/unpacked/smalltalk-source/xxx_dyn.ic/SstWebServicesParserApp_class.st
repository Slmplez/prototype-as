"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200013cc; bytecode file offset 0x626a4"
!SstWebServicesParserApp class methodsFor: 'recovered'!
abtXmlCacheKey
    ^'http://schemas.xmlsoap.org/wsdl/'
! !

"xxx_dyn.ic method 0x20001474; bytecode file offset 0x626a4"
!SstWebServicesParserApp class methodsFor: 'recovered'!
abtXmlMappingSpecResourceNames
    ^#('sstwsdl.map')
! !

"xxx_dyn.ic method 0x20001594; bytecode file offset 0x626a4"
!SstWebServicesParserApp class methodsFor: 'recovered'!
abtXmlSchemaResourceNames
    ^#('sstwsdl.xsd')
! !

"xxx_dyn.ic method 0x20005e10; bytecode file offset 0x66f2c"
!SstWebServicesParserApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20014364; bytecode file offset 0x75444"
!SstWebServicesParserApp class methodsFor: 'recovered'!
startUp
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
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaNamed: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) abtXmlInitializeSchemas.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingSpecNamed: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) abtXmlInitializeMappingSpecs.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001b8e4; bytecode file offset 0x7c9d0"
!SstWebServicesParserApp class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b814Arg1 | 
    | block2800b814Stack0 block2800b814Stack1 block2800b814Stack2 block2800b814Stack3 block2800b814Stack4 block2800b814PC block2800b814Step block2800b814Done block2800b814Result |
    block2800b814Stack0 := self.
    block2800b814PC := 4.
    block2800b814Done := false.
    [block2800b814Done not] whileTrue: [
        block2800b814Step := block2800b814PC.
        block2800b814Step = 4 ifTrue: [
            block2800b814Stack1 := block2800b814Arg1.
            block2800b814PC := 5.
        ].
        block2800b814Step = 5 ifTrue: [
            block2800b814Stack2 := 'setupAfterLoad'.
            block2800b814PC := 7.
        ].
        block2800b814Step = 7 ifTrue: [
            block2800b814Stack1 := (block2800b814Stack1) respondsTo: (block2800b814Stack2).
            block2800b814PC := 9.
        ].
        block2800b814Step = 9 ifTrue: [
            (block2800b814Stack1) ifTrue: [block2800b814PC := 12] ifFalse: [block2800b814PC := 15].
        ].
        block2800b814Step = 12 ifTrue: [
            block2800b814Stack1 := block2800b814Arg1.
            block2800b814PC := 13.
        ].
        block2800b814Step = 13 ifTrue: [
            (block2800b814Stack1) setupAfterLoad.
            block2800b814PC := 15.
        ].
        block2800b814Step = 15 ifTrue: [
            block2800b814Stack1 := nil.
            block2800b814PC := 16.
        ].
        block2800b814Step = 16 ifTrue: [
            block2800b814Stack2 := block2800b814Arg1.
            block2800b814PC := 17.
        ].
        block2800b814Step = 17 ifTrue: [
            block2800b814Stack2 := (block2800b814Stack2) class.
            block2800b814PC := 19.
        ].
        block2800b814Step = 19 ifTrue: [
            block2800b814Stack3 := 'setupAfterLoadNonInherited'.
            block2800b814PC := 21.
        ].
        block2800b814Step = 21 ifTrue: [
            block2800b814Stack2 := (block2800b814Stack2) includesSelector: (block2800b814Stack3).
            block2800b814PC := 23.
        ].
        block2800b814Step = 23 ifTrue: [
            (block2800b814Stack2) ifTrue: [block2800b814PC := 26] ifFalse: [block2800b814PC := 30].
        ].
        block2800b814Step = 26 ifTrue: [
            block2800b814PC := 27.
        ].
        block2800b814Step = 27 ifTrue: [
            block2800b814Stack1 := block2800b814Arg1.
            block2800b814PC := 28.
        ].
        block2800b814Step = 28 ifTrue: [
            block2800b814Stack1 := (block2800b814Stack1) setupAfterLoadNonInherited.
            block2800b814PC := 30.
        ].
        block2800b814Step = 30 ifTrue: [
            block2800b814Result := block2800b814Stack1.
            block2800b814Done := true.
        ].
    ].
    block2800b814Result
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

"xxx_dyn.ic method 0x2001ed8c; bytecode file offset 0x7fe84"
!SstWebServicesParserApp class methodsFor: 'recovered'!
removing
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
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) removeSchemaNamed: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) removeMappingSpecNamed: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) removeDeserializationConfigurationNamed: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block2800ba54Arg1 | 
    | block2800ba54Stack0 block2800ba54Stack1 block2800ba54Stack2 block2800ba54Stack3 block2800ba54Stack4 block2800ba54PC block2800ba54Step block2800ba54Done block2800ba54Result |
    block2800ba54Stack0 := self.
    block2800ba54PC := 4.
    block2800ba54Done := false.
    [block2800ba54Done not] whileTrue: [
        block2800ba54Step := block2800ba54PC.
        block2800ba54Step = 4 ifTrue: [
            block2800ba54Stack1 := block2800ba54Arg1.
            block2800ba54PC := 5.
        ].
        block2800ba54Step = 5 ifTrue: [
            block2800ba54Stack2 := 'cleanUpBeforeRemove'.
            block2800ba54PC := 7.
        ].
        block2800ba54Step = 7 ifTrue: [
            block2800ba54Stack1 := (block2800ba54Stack1) respondsTo: (block2800ba54Stack2).
            block2800ba54PC := 9.
        ].
        block2800ba54Step = 9 ifTrue: [
            (block2800ba54Stack1) ifTrue: [block2800ba54PC := 12] ifFalse: [block2800ba54PC := 15].
        ].
        block2800ba54Step = 12 ifTrue: [
            block2800ba54Stack1 := block2800ba54Arg1.
            block2800ba54PC := 13.
        ].
        block2800ba54Step = 13 ifTrue: [
            (block2800ba54Stack1) cleanUpBeforeRemove.
            block2800ba54PC := 15.
        ].
        block2800ba54Step = 15 ifTrue: [
            block2800ba54Stack1 := nil.
            block2800ba54PC := 16.
        ].
        block2800ba54Step = 16 ifTrue: [
            block2800ba54Stack2 := block2800ba54Arg1.
            block2800ba54PC := 17.
        ].
        block2800ba54Step = 17 ifTrue: [
            block2800ba54Stack2 := (block2800ba54Stack2) class.
            block2800ba54PC := 19.
        ].
        block2800ba54Step = 19 ifTrue: [
            block2800ba54Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800ba54PC := 21.
        ].
        block2800ba54Step = 21 ifTrue: [
            block2800ba54Stack2 := (block2800ba54Stack2) includesSelector: (block2800ba54Stack3).
            block2800ba54PC := 23.
        ].
        block2800ba54Step = 23 ifTrue: [
            (block2800ba54Stack2) ifTrue: [block2800ba54PC := 26] ifFalse: [block2800ba54PC := 30].
        ].
        block2800ba54Step = 26 ifTrue: [
            block2800ba54PC := 27.
        ].
        block2800ba54Step = 27 ifTrue: [
            block2800ba54Stack1 := block2800ba54Arg1.
            block2800ba54PC := 28.
        ].
        block2800ba54Step = 28 ifTrue: [
            block2800ba54Stack1 := (block2800ba54Stack1) cleanUpBeforeRemoveNonInherited.
            block2800ba54PC := 30.
        ].
        block2800ba54Step = 30 ifTrue: [
            block2800ba54Result := block2800ba54Stack1.
            block2800ba54Done := true.
        ].
    ].
    block2800ba54Result
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

