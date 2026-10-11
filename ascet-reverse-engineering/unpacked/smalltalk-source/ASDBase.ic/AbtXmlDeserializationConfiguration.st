"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002e564; bytecode file offset 0x934580"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
newSaxHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handlerClass.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ba10; bytecode file offset 0x96873c"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
attributeClass
    | recoveredValue0 |
    recoveredValue0 := attributeClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d1c8; bytecode file offset 0x969c04"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
elementClass
    | recoveredValue0 |
    recoveredValue0 := elementClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d4b4; bytecode file offset 0x96a390"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
handlerClass
    | recoveredValue0 |
    recoveredValue0 := handlerClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e940; bytecode file offset 0x96b41c"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
startElementValidators
    | recoveredValue0 |
    recoveredValue0 := startElementValidators.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ebfc; bytecode file offset 0x96b8a0"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
endElementValidators
    | recoveredValue0 |
    recoveredValue0 := endElementValidators.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f2e8; bytecode file offset 0x96bc1c"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
validate
    | recoveredValue0 |
    recoveredValue0 := validate.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f4c0; bytecode file offset 0x96bf7c"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
deserializer
    | recoveredValue0 |
    recoveredValue0 := deserializer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089c40; bytecode file offset 0x986668"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
newContext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlDeserializationContext.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) pushConfiguration: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c22a8; bytecode file offset 0x9bf474"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
attributeClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributeClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3a88; bytecode file offset 0x9c058c"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
elementClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4164; bytecode file offset 0x9c0bf0"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
handlerClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handlerClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4760; bytecode file offset 0x9c11bc"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
errorHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorHandler := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4a04; bytecode file offset 0x9c16b0"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
warningHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    warningHandler := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5188; bytecode file offset 0x9c1afc"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
startElementValidators: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startElementValidators := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c52f8; bytecode file offset 0x9c1f64"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
endElementValidators: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endElementValidators := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c59c4; bytecode file offset 0x9c22c8"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
validate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    validate := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5c70; bytecode file offset 0x9c25bc"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
deserializer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    deserializer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201160a8; bytecode file offset 0xa12978"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
defaultConfiguration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defaultConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootConfiguration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            defaultConfiguration := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := defaultConfiguration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a45c; bytecode file offset 0xa26d1c"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := errorHandler.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) getFromParent: ('errorHandler').
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2012a598; bytecode file offset 0xa26e58"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
warningHandler
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := warningHandler.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) getFromParent: ('warningHandler').
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2013c4c4; bytecode file offset 0xa38d88"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
logWarnings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cb874Arg1 | 
    | block280cb874Value0 block280cb874Value1 block280cb874Value2 |
    block280cb874Value0 := AbtXmlUtility.
    block280cb874Value1 := block280cb874Arg1.
    block280cb874Value2 := (block280cb874Value0) logError: (block280cb874Value1).
    block280cb874Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) warningHandler: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20177ca0; bytecode file offset 0xa7490c"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
validateStartElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startElementValidators.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) value: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20177ee4; bytecode file offset 0xa7490c"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
validateEndElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) endElementValidators.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) value: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d7df8; bytecode file offset 0xad46c8"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    (self) validate: (true).
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) startElementValidators: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) endElementValidators: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202564f8; bytecode file offset 0xb52ddc"
!AbtXmlDeserializationConfiguration methodsFor: 'recovered'!
newConfigurationOfClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super newConfigurationOfClass: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) errorHandler.
    (recoveredValue2) errorHandler: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) deserializer.
    (recoveredValue4) deserializer: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) warningHandler.
    (recoveredValue6) warningHandler: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) elementClass.
    (recoveredValue8) elementClass: (recoveredValue9).
    recoveredValue10 := (self) attributeClass.
    recoveredValue11 := (recoveredValue1) attributeClass: (recoveredValue10).
    ^recoveredValue11
! !

