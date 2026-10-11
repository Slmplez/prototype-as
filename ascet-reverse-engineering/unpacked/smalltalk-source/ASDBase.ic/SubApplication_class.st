"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002060; bytecode file offset 0x8ffcfc"
!SubApplication class methodsFor: 'recovered'!
etasDefaultLocalize
    ^self
! !

"ASDBase.ic method 0x200020b0; bytecode file offset 0x8ffcfc"
!SubApplication class methodsFor: 'recovered'!
runtimeStartUp
    ^self
! !

"ASDBase.ic method 0x20016154; bytecode file offset 0x92209c"
!SubApplication class methodsFor: 'recovered'!
abtXmlMappingSpecResourceNames
    ^#()
! !

"ASDBase.ic method 0x2001a87c; bytecode file offset 0x92209c"
!SubApplication class methodsFor: 'recovered'!
abtXmlSchemaResourceNames
    ^#()
! !

"ASDBase.ic method 0x20025f3c; bytecode file offset 0x923928"
!SubApplication class methodsFor: 'recovered'!
abtXmlDtdResourceNames
    ^#()
! !

"ASDBase.ic method 0x203b2c68; bytecode file offset 0xcaf558"
!SubApplication class methodsFor: 'recovered'!
abtXmlInitializeMappingSpecs
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) abtXmlMappingSpecResourceNames.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := AbtXmlMappingSpec.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) from: (recoveredBlock5Stack2).
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredLocal3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 60] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal3.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) nameSpaceURI.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := [
    | recoveredBlock5Block28Value0 recoveredBlock5Block28Value1 |
    recoveredBlock5Block28Value0 := recoveredLocal3.
    recoveredBlock5Block28Value1 := (recoveredBlock5Block28Value0) name.
    recoveredBlock5Block28Value1
].
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ifNil: (recoveredBlock5Stack2).
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack1 := AbtXmlObjectCache.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) current.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal3.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack3 := recoveredLocal2.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addMappingSpec: (recoveredBlock5Stack2) named: (recoveredBlock5Stack3).
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 60 ifTrue: [
            recoveredBlock5Stack1 := AbtXmlUtility.
            recoveredBlock5PC := 62.
        ].
        recoveredBlock5Step = 62 ifTrue: [
            recoveredBlock5Stack2 := '%1 failed to initialize XML mapping resource %2'.
            recoveredBlock5PC := 64.
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) printString.
            recoveredBlock5PC := 67.
        ].
        recoveredBlock5Step = 67 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 68.
        ].
        recoveredBlock5Step = 68 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) printString.
            recoveredBlock5PC := 70.
        ].
        recoveredBlock5Step = 70 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) bindWith: (recoveredBlock5Stack3) with: (recoveredBlock5Stack4).
            recoveredBlock5PC := 72.
        ].
        recoveredBlock5Step = 72 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) logError: (recoveredBlock5Stack2).
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2043b550; bytecode file offset 0xd37e54"
!SubApplication class methodsFor: 'recovered'!
abtXmlInitializeDtds
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) abtXmlDtdResourceNames.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := [
    | recoveredBlock5Block12Stack0 recoveredBlock5Block12Stack1 recoveredBlock5Block12Stack2 recoveredBlock5Block12Stack3 recoveredBlock5Block12Stack4 recoveredBlock5Block12Stack5 recoveredBlock5Block12PC recoveredBlock5Block12Step recoveredBlock5Block12Done recoveredBlock5Block12Result |
    recoveredBlock5Block12Stack0 := self.
    recoveredBlock5Block12PC := 18.
    recoveredBlock5Block12Done := false.
    [recoveredBlock5Block12Done not] whileTrue: [
        recoveredBlock5Block12Step := recoveredBlock5Block12PC.
        recoveredBlock5Block12Step = 18 ifTrue: [
            recoveredBlock5Block12Stack1 := AbtDOMDocumentType.
            recoveredBlock5Block12PC := 20.
        ].
        recoveredBlock5Block12Step = 20 ifTrue: [
            recoveredBlock5Block12Stack2 := recoveredBlock5Arg1.
            recoveredBlock5Block12PC := 23.
        ].
        recoveredBlock5Block12Step = 23 ifTrue: [
            recoveredBlock5Block12Stack1 := (recoveredBlock5Block12Stack1) from: (recoveredBlock5Block12Stack2).
            recoveredBlock5Block12PC := 24.
        ].
        recoveredBlock5Block12Step = 24 ifTrue: [
            recoveredBlock5Block12Stack2 := recoveredBlock5Block12Stack1.
            recoveredBlock5Block12PC := 25.
        ].
        recoveredBlock5Block12Step = 25 ifTrue: [
            recoveredLocal1 := recoveredBlock5Block12Stack2.
            recoveredBlock5Block12PC := 28.
        ].
        recoveredBlock5Block12Step = 28 ifTrue: [
            (recoveredBlock5Block12Stack1 == nil) ifTrue: [recoveredBlock5Block12PC := 48] ifFalse: [recoveredBlock5Block12PC := 32].
        ].
        recoveredBlock5Block12Step = 32 ifTrue: [
            recoveredBlock5Block12Stack1 := AbtXmlObjectCache.
            recoveredBlock5Block12PC := 34.
        ].
        recoveredBlock5Block12Step = 34 ifTrue: [
            recoveredBlock5Block12Stack1 := (recoveredBlock5Block12Stack1) current.
            recoveredBlock5Block12PC := 36.
        ].
        recoveredBlock5Block12Step = 36 ifTrue: [
            recoveredBlock5Block12Stack2 := recoveredLocal1.
            recoveredBlock5Block12PC := 39.
        ].
        recoveredBlock5Block12Step = 39 ifTrue: [
            recoveredBlock5Block12Stack3 := recoveredBlock5Arg1.
            recoveredBlock5Block12PC := 42.
        ].
        recoveredBlock5Block12Step = 42 ifTrue: [
            recoveredBlock5Block12Stack1 := (recoveredBlock5Block12Stack1) addDTD: (recoveredBlock5Block12Stack2) named: (recoveredBlock5Block12Stack3).
            recoveredBlock5Block12PC := 44.
        ].
        recoveredBlock5Block12Step = 44 ifTrue: [
            recoveredBlock5Block12PC := 64.
        ].
        recoveredBlock5Block12Step = 48 ifTrue: [
            recoveredBlock5Block12Stack1 := AbtXmlUtility.
            recoveredBlock5Block12PC := 50.
        ].
        recoveredBlock5Block12Step = 50 ifTrue: [
            recoveredBlock5Block12Stack2 := '%1 failed to initialize XML DTD %2'.
            recoveredBlock5Block12PC := 52.
        ].
        recoveredBlock5Block12Step = 52 ifTrue: [
            recoveredBlock5Block12Stack3 := self.
            recoveredBlock5Block12PC := 53.
        ].
        recoveredBlock5Block12Step = 53 ifTrue: [
            recoveredBlock5Block12Stack3 := (recoveredBlock5Block12Stack3) printString.
            recoveredBlock5Block12PC := 55.
        ].
        recoveredBlock5Block12Step = 55 ifTrue: [
            recoveredBlock5Block12Stack4 := recoveredBlock5Arg1.
            recoveredBlock5Block12PC := 58.
        ].
        recoveredBlock5Block12Step = 58 ifTrue: [
            recoveredBlock5Block12Stack4 := (recoveredBlock5Block12Stack4) printString.
            recoveredBlock5Block12PC := 60.
        ].
        recoveredBlock5Block12Step = 60 ifTrue: [
            recoveredBlock5Block12Stack2 := (recoveredBlock5Block12Stack2) bindWith: (recoveredBlock5Block12Stack3) with: (recoveredBlock5Block12Stack4).
            recoveredBlock5Block12PC := 62.
        ].
        recoveredBlock5Block12Step = 62 ifTrue: [
            recoveredBlock5Block12Stack1 := (recoveredBlock5Block12Stack1) logError: (recoveredBlock5Block12Stack2).
            recoveredBlock5Block12PC := 64.
        ].
        recoveredBlock5Block12Step = 64 ifTrue: [
            recoveredBlock5Block12Result := recoveredBlock5Block12Stack1.
            recoveredBlock5Block12Done := true.
        ].
    ].
    recoveredBlock5Block12Result
].
    recoveredBlock5Value1 := SgmlException.
    recoveredBlock5Value2 := ExError.
    recoveredBlock5Value3 := (recoveredBlock5Value1) | (recoveredBlock5Value2).
    recoveredBlock5Value4 := [:recoveredBlock5Block71Arg1 | 
    | recoveredBlock5Block71Value0 recoveredBlock5Block71Value1 recoveredBlock5Block71Value2 recoveredBlock5Block71Value3 recoveredBlock5Block71Value4 recoveredBlock5Block71Value5 recoveredBlock5Block71Value6 recoveredBlock5Block71Value7 recoveredBlock5Block71Value8 |
    recoveredBlock5Block71Value0 := AbtXmlUtility.
    recoveredBlock5Block71Value1 := recoveredBlock5Arg1.
    recoveredBlock5Block71Value2 := (recoveredBlock5Block71Value1) , ('-> ').
    recoveredBlock5Block71Value3 := recoveredBlock5Block71Arg1.
    recoveredBlock5Block71Value4 := (recoveredBlock5Block71Value3) argument.
    recoveredBlock5Block71Value5 := (recoveredBlock5Block71Value4) printString.
    recoveredBlock5Block71Value6 := (recoveredBlock5Block71Value2) , (recoveredBlock5Block71Value5).
    (recoveredBlock5Block71Value0) logError: (recoveredBlock5Block71Value6).
    recoveredBlock5Block71Value7 := recoveredBlock5Block71Arg1.
    recoveredBlock5Block71Value8 := (recoveredBlock5Block71Value7) exitWith: (nil).
    recoveredBlock5Block71Value8
].
    recoveredBlock5Value5 := (recoveredBlock5Value0) when: (recoveredBlock5Value3) do: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204ab4bc; bytecode file offset 0xda7de0"
!SubApplication class methodsFor: 'recovered'!
abtXmlInitializeSchemas
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) abtXmlSchemaResourceNames.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := AbtXmlDeserializationConfiguration.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) newSchemaConfiguration.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := AbtXmlSchema.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) defaultNamespace.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) mappingSpecName: (recoveredBlock5Stack2).
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := AbtXmlMappingParser.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) usingConfiguration: (recoveredBlock5Stack2).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack1 := [
    | recoveredBlock5Block34Value0 recoveredBlock5Block34Value1 recoveredBlock5Block34Value2 recoveredBlock5Block34Value3 |
    recoveredBlock5Block34Value0 := recoveredBlock5Local1.
    recoveredBlock5Block34Value1 := recoveredBlock5Arg1.
    recoveredBlock5Block34Value2 := (recoveredBlock5Block34Value0) parseURI: (recoveredBlock5Block34Value1).
    recoveredBlock5Block34Value3 := recoveredBlock5Block34Value2.
    recoveredLocal3 := recoveredBlock5Block34Value3.
    recoveredBlock5Block34Value2
].
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack2 := ExError.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack3 := SgmlException.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) | (recoveredBlock5Stack3).
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 59 ifTrue: [
            recoveredBlock5Stack3 := [:block28105298Arg1 | 
    | block28105298Value0 block28105298Value1 block28105298Value2 block28105298Value3 block28105298Value4 block28105298Value5 |
    block28105298Value0 := AbtXmlUtility.
    block28105298Value1 := block28105298Arg1.
    block28105298Value2 := (block28105298Value1) argument.
    block28105298Value3 := (block28105298Value2) printString.
    (block28105298Value0) logError: (block28105298Value3).
    block28105298Value4 := block28105298Arg1.
    block28105298Value5 := (block28105298Value4) resumeWith: (nil).
    block28105298Value5
].
            recoveredBlock5PC := 61.
        ].
        recoveredBlock5Step = 61 ifTrue: [
            recoveredBlock5PC := 78.
        ].
        recoveredBlock5Step = 78 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) when: (recoveredBlock5Stack2) do: (recoveredBlock5Stack3).
            recoveredBlock5PC := 80.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 120] ifFalse: [recoveredBlock5PC := 84].
        ].
        recoveredBlock5Step = 84 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal3.
            recoveredBlock5PC := 87.
        ].
        recoveredBlock5Step = 87 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) targetNamespace.
            recoveredBlock5PC := 89.
        ].
        recoveredBlock5Step = 89 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 90.
        ].
        recoveredBlock5Step = 90 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack2.
            recoveredBlock5PC := 93.
        ].
        recoveredBlock5Step = 93 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 102] ifFalse: [recoveredBlock5PC := 96].
        ].
        recoveredBlock5Step = 96 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 97.
        ].
        recoveredBlock5Step = 97 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) abtXmlCacheKey.
            recoveredBlock5PC := 99.
        ].
        recoveredBlock5Step = 99 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 102.
        ].
        recoveredBlock5Step = 102 ifTrue: [
            recoveredBlock5Stack1 := AbtXmlObjectCache.
            recoveredBlock5PC := 104.
        ].
        recoveredBlock5Step = 104 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) current.
            recoveredBlock5PC := 106.
        ].
        recoveredBlock5Step = 106 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal3.
            recoveredBlock5PC := 109.
        ].
        recoveredBlock5Step = 109 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) abtXmlMappedObject.
            recoveredBlock5PC := 111.
        ].
        recoveredBlock5Step = 111 ifTrue: [
            recoveredBlock5Stack3 := recoveredLocal2.
            recoveredBlock5PC := 114.
        ].
        recoveredBlock5Step = 114 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addSchema: (recoveredBlock5Stack2) named: (recoveredBlock5Stack3).
            recoveredBlock5PC := 116.
        ].
        recoveredBlock5Step = 116 ifTrue: [
            recoveredBlock5PC := 136.
        ].
        recoveredBlock5Step = 120 ifTrue: [
            recoveredBlock5Stack1 := AbtXmlUtility.
            recoveredBlock5PC := 122.
        ].
        recoveredBlock5Step = 122 ifTrue: [
            recoveredBlock5Stack2 := '%1 failed to initialize XML schema resource %2'.
            recoveredBlock5PC := 124.
        ].
        recoveredBlock5Step = 124 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 125.
        ].
        recoveredBlock5Step = 125 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) printString.
            recoveredBlock5PC := 127.
        ].
        recoveredBlock5Step = 127 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 130.
        ].
        recoveredBlock5Step = 130 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) printString.
            recoveredBlock5PC := 132.
        ].
        recoveredBlock5Step = 132 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) bindWith: (recoveredBlock5Stack3) with: (recoveredBlock5Stack4).
            recoveredBlock5PC := 134.
        ].
        recoveredBlock5Step = 134 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) logError: (recoveredBlock5Stack2).
            recoveredBlock5PC := 136.
        ].
        recoveredBlock5Step = 136 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

