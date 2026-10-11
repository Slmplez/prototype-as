"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000128; bytecode file offset 0x6147c"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
_PRAGMA_SstSoapConstants
    ^self
! !

"xxx_dyn.ic method 0x200001d0; bytecode file offset 0x6147c"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
_PRAGMA_SstSoapErrorConstants
    ^self
! !

"xxx_dyn.ic method 0x20000d58; bytecode file offset 0x6209c"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
axisNamespace
    | recoveredValue0 |
    recoveredValue0 := SstSoapAxisNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000d88; bytecode file offset 0x6209c"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
abtXmlCacheKey
    | recoveredValue0 |
    recoveredValue0 := SstSoapDefaultEnvelopeNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200010d8; bytecode file offset 0x626a4"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
abtXmlSchemaResourceNames
    ^#('sstsoenv.xsd' 'sstsoenc.xsd' 'sstaxis.xsd')
! !

"xxx_dyn.ic method 0x20001270; bytecode file offset 0x626a4"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
abtXmlMappingSpecResourceNames
    ^#('sstsoenv.map' 'sstsoenc.map' 'sstaxis.map')
! !

"xxx_dyn.ic method 0x20002898; bytecode file offset 0x63b1c"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    (self) initializeExceptions.
    ^self
! !

"xxx_dyn.ic method 0x20005da0; bytecode file offset 0x66f2c"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2001ce3c; bytecode file offset 0x7df2c"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) localize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) startUp.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block2800b910Arg1 | 
    | block2800b910Stack0 block2800b910Stack1 block2800b910Stack2 block2800b910Stack3 block2800b910Stack4 block2800b910PC block2800b910Step block2800b910Done block2800b910Result |
    block2800b910Stack0 := self.
    block2800b910PC := 4.
    block2800b910Done := false.
    [block2800b910Done not] whileTrue: [
        block2800b910Step := block2800b910PC.
        block2800b910Step = 4 ifTrue: [
            block2800b910Stack1 := block2800b910Arg1.
            block2800b910PC := 5.
        ].
        block2800b910Step = 5 ifTrue: [
            block2800b910Stack2 := 'setupAfterLoad'.
            block2800b910PC := 7.
        ].
        block2800b910Step = 7 ifTrue: [
            block2800b910Stack1 := (block2800b910Stack1) respondsTo: (block2800b910Stack2).
            block2800b910PC := 9.
        ].
        block2800b910Step = 9 ifTrue: [
            (block2800b910Stack1) ifTrue: [block2800b910PC := 12] ifFalse: [block2800b910PC := 15].
        ].
        block2800b910Step = 12 ifTrue: [
            block2800b910Stack1 := block2800b910Arg1.
            block2800b910PC := 13.
        ].
        block2800b910Step = 13 ifTrue: [
            (block2800b910Stack1) setupAfterLoad.
            block2800b910PC := 15.
        ].
        block2800b910Step = 15 ifTrue: [
            block2800b910Stack1 := nil.
            block2800b910PC := 16.
        ].
        block2800b910Step = 16 ifTrue: [
            block2800b910Stack2 := block2800b910Arg1.
            block2800b910PC := 17.
        ].
        block2800b910Step = 17 ifTrue: [
            block2800b910Stack2 := (block2800b910Stack2) class.
            block2800b910PC := 19.
        ].
        block2800b910Step = 19 ifTrue: [
            block2800b910Stack3 := 'setupAfterLoadNonInherited'.
            block2800b910PC := 21.
        ].
        block2800b910Step = 21 ifTrue: [
            block2800b910Stack2 := (block2800b910Stack2) includesSelector: (block2800b910Stack3).
            block2800b910PC := 23.
        ].
        block2800b910Step = 23 ifTrue: [
            (block2800b910Stack2) ifTrue: [block2800b910PC := 26] ifFalse: [block2800b910PC := 30].
        ].
        block2800b910Step = 26 ifTrue: [
            block2800b910PC := 27.
        ].
        block2800b910Step = 27 ifTrue: [
            block2800b910Stack1 := block2800b910Arg1.
            block2800b910PC := 28.
        ].
        block2800b910Step = 28 ifTrue: [
            block2800b910Stack1 := (block2800b910Stack1) setupAfterLoadNonInherited.
            block2800b910PC := 30.
        ].
        block2800b910Step = 30 ifTrue: [
            block2800b910Result := block2800b910Stack1.
            block2800b910Done := true.
        ].
    ].
    block2800b910Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200213c4; bytecode file offset 0x824b8"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
startUp
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlCacheKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaNamed: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) abtXmlInitializeSchemas.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingSpecNamed: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) abtXmlInitializeMappingSpecs.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputSerializerNamed: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := AbtXmlSchemaOutputSerializer.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) addOutputSerializer: (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := SstSoapDefaultEncodingNamespace.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputSerializerNamed: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := SstSoapOutputSerializer.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := SstSoapDefaultEncodingNamespace.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) addOutputSerializer: (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20026b20; bytecode file offset 0x87c20"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
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
            recoveredStack2 := SstSoapDefaultEncodingNamespace.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) removeSchemaNamed: (recoveredStack2).
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
            recoveredStack2 := (recoveredStack2) axisNamespace.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) removeSchemaNamed: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) removeMappingSpecNamed: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := SstSoapDefaultEncodingNamespace.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) removeMappingSpecNamed: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) axisNamespace.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) removeMappingSpecNamed: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) removeOutputSerializerNamed: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := SstSoapDefaultEncodingNamespace.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) removeOutputSerializerNamed: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [:block2800bf88Arg1 | 
    | block2800bf88Stack0 block2800bf88Stack1 block2800bf88Stack2 block2800bf88Stack3 block2800bf88Stack4 block2800bf88PC block2800bf88Step block2800bf88Done block2800bf88Result |
    block2800bf88Stack0 := self.
    block2800bf88PC := 4.
    block2800bf88Done := false.
    [block2800bf88Done not] whileTrue: [
        block2800bf88Step := block2800bf88PC.
        block2800bf88Step = 4 ifTrue: [
            block2800bf88Stack1 := block2800bf88Arg1.
            block2800bf88PC := 5.
        ].
        block2800bf88Step = 5 ifTrue: [
            block2800bf88Stack2 := 'cleanUpBeforeRemove'.
            block2800bf88PC := 7.
        ].
        block2800bf88Step = 7 ifTrue: [
            block2800bf88Stack1 := (block2800bf88Stack1) respondsTo: (block2800bf88Stack2).
            block2800bf88PC := 9.
        ].
        block2800bf88Step = 9 ifTrue: [
            (block2800bf88Stack1) ifTrue: [block2800bf88PC := 12] ifFalse: [block2800bf88PC := 15].
        ].
        block2800bf88Step = 12 ifTrue: [
            block2800bf88Stack1 := block2800bf88Arg1.
            block2800bf88PC := 13.
        ].
        block2800bf88Step = 13 ifTrue: [
            (block2800bf88Stack1) cleanUpBeforeRemove.
            block2800bf88PC := 15.
        ].
        block2800bf88Step = 15 ifTrue: [
            block2800bf88Stack1 := nil.
            block2800bf88PC := 16.
        ].
        block2800bf88Step = 16 ifTrue: [
            block2800bf88Stack2 := block2800bf88Arg1.
            block2800bf88PC := 17.
        ].
        block2800bf88Step = 17 ifTrue: [
            block2800bf88Stack2 := (block2800bf88Stack2) class.
            block2800bf88PC := 19.
        ].
        block2800bf88Step = 19 ifTrue: [
            block2800bf88Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800bf88PC := 21.
        ].
        block2800bf88Step = 21 ifTrue: [
            block2800bf88Stack2 := (block2800bf88Stack2) includesSelector: (block2800bf88Stack3).
            block2800bf88PC := 23.
        ].
        block2800bf88Step = 23 ifTrue: [
            (block2800bf88Stack2) ifTrue: [block2800bf88PC := 26] ifFalse: [block2800bf88PC := 30].
        ].
        block2800bf88Step = 26 ifTrue: [
            block2800bf88PC := 27.
        ].
        block2800bf88Step = 27 ifTrue: [
            block2800bf88Stack1 := block2800bf88Arg1.
            block2800bf88PC := 28.
        ].
        block2800bf88Step = 28 ifTrue: [
            block2800bf88Stack1 := (block2800bf88Stack1) cleanUpBeforeRemoveNonInherited.
            block2800bf88PC := 30.
        ].
        block2800bf88Step = 30 ifTrue: [
            block2800bf88Result := block2800bf88Stack1.
            block2800bf88Done := true.
        ].
    ].
    block2800bf88Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20027ce8; bytecode file offset 0x88dec"
!SstWebServicesSoapBaseApp class methodsFor: 'recovered'!
initializeExceptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExSstSoapException.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ExSstSoapException := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExSstSoapException.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'An error occurred during SOAP processing.'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ExSstSoapClientException.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ExSstSoapException.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ExSstSoapClientException := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := ExSstSoapClientException.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'An error occurred during SOAP processing.  Please verify the outgoing message.'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := ExSstSoapServerException.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := ExSstSoapException.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ExSstSoapServerException := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := ExSstSoapServerException.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'An error occurred during SOAP processing at the server.'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := ExSstSoapMustUnderstandException.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := ExSstSoapException.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ExSstSoapMustUnderstandException := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := ExSstSoapMustUnderstandException.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := 'SOAP Header not understood by server.'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := ExSstSoapVersionMismatchException.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := ExSstSoapException.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ExSstSoapVersionMismatchException := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := ExSstSoapVersionMismatchException.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := 'Soap envelope version does not match %1.'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := SstSoapDefaultEnvelopeNamespace.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

