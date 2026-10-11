"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200004e0; bytecode file offset 0x615ac"
!SstSoapElement methodsFor: 'recovered'!
initializeUsing: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x200005f4; bytecode file offset 0x619a4"
!SstSoapElement methodsFor: 'recovered'!
elementName
    | recoveredValue0 |
    recoveredValue0 := (self) abtXmlName.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000888; bytecode file offset 0x619a4"
!SstSoapElement methodsFor: 'recovered'!
payload
    | recoveredValue0 |
    recoveredValue0 := (self) elements.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000d70; bytecode file offset 0x6209c"
!SstSoapElement methodsFor: 'recovered'!
defaultNamespaceUri
    | recoveredValue0 |
    recoveredValue0 := SstSoapDefaultEnvelopeNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000f8c; bytecode file offset 0x6209c"
!SstSoapElement methodsFor: 'recovered'!
soapEnvPrefix
    | recoveredValue0 |
    recoveredValue0 := SstSoapDefaultPrefix.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001fdc; bytecode file offset 0x63558"
!SstSoapElement methodsFor: 'recovered'!
actor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapActorString.
    recoveredValue1 := (self) attributeNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200020dc; bytecode file offset 0x63558"
!SstSoapElement methodsFor: 'recovered'!
id
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapIdString.
    recoveredValue1 := (self) attributeNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200022fc; bytecode file offset 0x63558"
!SstSoapElement methodsFor: 'recovered'!
href
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapHrefString.
    recoveredValue1 := (self) attributeNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20004190; bytecode file offset 0x65264"
!SstSoapElement methodsFor: 'recovered'!
encodingStyle
    | recoveredValue0 |
    recoveredValue0 := encodingStyle.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004e88; bytecode file offset 0x65fa4"
!SstSoapElement methodsFor: 'recovered'!
payload: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) elements: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20006a54; bytecode file offset 0x67c40"
!SstSoapElement methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapIdString.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) value: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006ab4; bytecode file offset 0x67c40"
!SstSoapElement methodsFor: 'recovered'!
href: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapHrefString.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) value: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006af4; bytecode file offset 0x67c40"
!SstSoapElement methodsFor: 'recovered'!
actor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstSoapActorString.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) value: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20008668; bytecode file offset 0x6978c"
!SstSoapElement methodsFor: 'recovered'!
encodingStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    encodingStyle := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200093f4; bytecode file offset 0x6a4d0"
!SstSoapElement methodsFor: 'recovered'!
addPayloadElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) addElement: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) parent: (self).
    ^self
! !

"xxx_dyn.ic method 0x2000b628; bytecode file offset 0x6c6fc"
!SstSoapElement methodsFor: 'recovered'!
abtXmlCacheKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) resolveNamespace.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := (self) class.
    recoveredBlock5Value1 := (recoveredBlock5Value0) abtXmlCacheKey.
    recoveredBlock5Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000d660; bytecode file offset 0x6e734"
!SstSoapElement methodsFor: 'recovered'!
addElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtIsXmlMappedObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d9d4; bytecode file offset 0x6eab4"
!SstSoapElement methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) elements: (recoveredValue1).
    recoveredValue2 := (self) elementName.
    (self) abtXmlName: (recoveredValue2).
    super initialize.
    ^self
! !

"xxx_dyn.ic method 0x20010124; bytecode file offset 0x71210"
!SstSoapElement methodsFor: 'recovered'!
elementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) abtXmlName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200151d8; bytecode file offset 0x762b0"
!SstSoapElement methodsFor: 'recovered'!
declareUniquePrefix: recoveredArg1 uri: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrAsString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) uriForPrefix: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) declarePrefix: (recoveredStack1) uri: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

