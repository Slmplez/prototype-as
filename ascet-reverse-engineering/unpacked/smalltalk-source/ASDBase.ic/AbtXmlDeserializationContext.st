"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002dfd4; bytecode file offset 0x934580"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
popHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handlerStack.
    recoveredValue1 := (recoveredValue0) removeLast.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032844; bytecode file offset 0x934580"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
deserializer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) activeConfiguration.
    recoveredValue1 := (recoveredValue0) deserializer.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057c38; bytecode file offset 0x956284"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
isInitializeDeferred: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) deferSet.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057e08; bytecode file offset 0x956284"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
pushResource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) resourceStack.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addLast: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20067594; bytecode file offset 0x9646f8"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
configurationStack
    | recoveredValue0 |
    recoveredValue0 := configurationStack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200691f4; bytecode file offset 0x965b90"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
handlerStack
    | recoveredValue0 |
    recoveredValue0 := handlerStack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069888; bytecode file offset 0x966bdc"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
resourceStack
    | recoveredValue0 |
    recoveredValue0 := resourceStack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a3c4; bytecode file offset 0x967a18"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
schemaInstanceUri
    | recoveredValue0 |
    recoveredValue0 := schemaInstanceUri.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bcb8; bytecode file offset 0x96873c"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
deferSet
    | recoveredValue0 |
    recoveredValue0 := deferSet.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c154; bytecode file offset 0x9692b0"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
ignorableWhiteSpace
    | recoveredValue0 |
    recoveredValue0 := ignorableWhiteSpace.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097814; bytecode file offset 0x995850"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
deferProcessingFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) deferSet.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098624; bytecode file offset 0x995850"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
pushHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handlerStack.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098784; bytecode file offset 0x995850"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
pushConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configurationStack.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20099f18; bytecode file offset 0x997194"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
configurationForElementNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) activeConfiguration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) configurationForElementNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c1a74; bytecode file offset 0x9beac8"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
schemaInstanceUri: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    schemaInstanceUri := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c313c; bytecode file offset 0x9bfde0"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
ignorableWhiteSpace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ignorableWhiteSpace := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012ef64; bytecode file offset 0xa2b93c"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
popResource
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceStack.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012efa0; bytecode file offset 0xa2b93c"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
currentHandler
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlerStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlerStack.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012efdc; bytecode file offset 0xa2b93c"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
currentResource
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceStack.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012f068; bytecode file offset 0xa2b93c"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
activeConfiguration
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationStack.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20161dd4; bytecode file offset 0xa5e698"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
popConfiguration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationStack.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeConfiguration.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f2a24; bytecode file offset 0xaef2ec"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    handlerStack := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    configurationStack := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    resourceStack := recoveredValue5.
    recoveredValue6 := Set.
    recoveredValue7 := (recoveredValue6) new.
    deferSet := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x2027b34c; bytecode file offset 0xb77c20"
!AbtXmlDeserializationContext methodsFor: 'recovered'!
schemaInstanceUriFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaInstanceUri.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := AbtXmlUtility.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtXmlSchema.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultInstanceNamespace.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) compatibleUriFor: (recoveredStack1) inObject: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | block280e1264Value0 block280e1264Value1 |
    block280e1264Value0 := AbtXmlSchema.
    block280e1264Value1 := (block280e1264Value0) defaultInstanceNamespace.
    block280e1264Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) schemaInstanceUri: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

