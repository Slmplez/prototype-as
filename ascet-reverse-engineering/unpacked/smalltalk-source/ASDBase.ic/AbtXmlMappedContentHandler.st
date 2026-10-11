"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007e98; bytecode file offset 0x908be4"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
document
    | recoveredValue0 |
    recoveredValue0 := (self) root.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002a764; bytecode file offset 0x934580"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
popResource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) context.
    recoveredValue1 := (recoveredValue0) popResource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aec4; bytecode file offset 0x934580"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
warningHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) warningHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f514; bytecode file offset 0x934580"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
objectCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) objectCache.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fb54; bytecode file offset 0x934580"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
mappingSpec
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) mappingSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030eb4; bytecode file offset 0x934580"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
validate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) validate.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031814; bytecode file offset 0x934580"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) errorHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200364a4; bytecode file offset 0x934580"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
configuration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) context.
    recoveredValue1 := (recoveredValue0) activeConfiguration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200575b8; bytecode file offset 0x956284"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
validateStartElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) validateStartElement: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058e78; bytecode file offset 0x956284"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
validateEndElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) validateEndElement: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059198; bytecode file offset 0x956284"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
pushResource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) context.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) pushResource: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200666cc; bytecode file offset 0x963428"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
root
    | recoveredValue0 |
    recoveredValue0 := root.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006769c; bytecode file offset 0x9646f8"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
context
    | recoveredValue0 |
    recoveredValue0 := context.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200685c4; bytecode file offset 0x965b90"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
elementStack
    | recoveredValue0 |
    recoveredValue0 := elementStack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069650; bytecode file offset 0x966bdc"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
nameSpaceSupport
    | recoveredValue0 |
    recoveredValue0 := nameSpaceSupport.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20095778; bytecode file offset 0x9920d8"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
initializeObjectFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) context.
    recoveredValue2 := (recoveredValue1) deserializer.
    recoveredValue3 := (recoveredValue0) initializeObjectUsing: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20098144; bytecode file offset 0x995850"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
pushElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementStack.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a548; bytecode file offset 0x997194"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
typeNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) objectCache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) typeNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009b16c; bytecode file offset 0x997a28"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
ignorableWhiteSpace: recoveredArg1 start: recoveredArg2 length: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) context.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) ignorableWhiteSpace: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a91ac; bytecode file offset 0x9a5d18"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
warningString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) warningString: (recoveredValue0) withArguments: (#()).
    ^self
! !

"ASDBase.ic method 0x200aadb8; bytecode file offset 0x9a76ac"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
tokenizerFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) tokenReader.
    recoveredValue1 := ReadStream.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) on: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) inputStream: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bda84; bytecode file offset 0x9bb178"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
root: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    root := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf688; bytecode file offset 0x9bc0b4"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
context: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    context := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c093c; bytecode file offset 0x9bd228"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
elementStack: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementStack := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c14a0; bytecode file offset 0x9bdf14"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
nameSpaceSupport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameSpaceSupport := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200daf44; bytecode file offset 0x9d7818"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
errorString: recoveredArg1 code: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SgmlSyntaxError.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) code: (recoveredValue1) text: (recoveredValue2).
    (recoveredValue3) signalException.
    ^self
! !

"ASDBase.ic method 0x200ff468; bytecode file offset 0x9fbd94"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
warning: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) warningHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) warningHandler.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20100170; bytecode file offset 0x9fca4c"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
resolveEntity: recoveredArg1 systemId: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtXmlResourceReader.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) currentResourceURI.
    recoveredValue5 := (recoveredValue1) resolveEntity: (recoveredValue2) systemId: (recoveredValue3) baseURI: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201018c4; bytecode file offset 0x9fe18c"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
mappedAttributeFor: recoveredArg1 uri: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) attributeClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) abtXmlName: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue2) nameSpaceURI: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20129adc; bytecode file offset 0xa26468"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
tokenReader
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tokenReader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtXmlTokenReader.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            tokenReader := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := tokenReader.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012e540; bytecode file offset 0xa2b0c4"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
currentResourceURI
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResource.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ca890Arg1 | 
    | block280ca890Value0 block280ca890Value1 |
    block280ca890Value0 := block280ca890Arg1.
    block280ca890Value1 := (block280ca890Value0) systemId.
    block280ca890Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ed0c; bytecode file offset 0xa2b5f4"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
popElement
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementStack.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ed20; bytecode file offset 0xa2b5f4"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
firstElement
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementStack.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ed34; bytecode file offset 0xa2b5f4"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
currentElement
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementStack.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201371a4; bytecode file offset 0xa33b30"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
currentElementType
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentElement.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
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

"ASDBase.ic method 0x201519dc; bytecode file offset 0xa4e2a4"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := AbtXmlSaxNamespaceSupport.
    recoveredValue1 := (recoveredValue0) new.
    nameSpaceSupport := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    elementStack := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201be6dc; bytecode file offset 0xabafa0"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
warningString: recoveredArg1 withArguments: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) warningHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWithArguments: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) warning: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cb340; bytecode file offset 0xac7c14"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
initializeContextFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) context.
    (self) context: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) elementStack.
    (self) elementStack: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) nameSpaceSupport.
    (self) nameSpaceSupport: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) root.
    (self) root: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201d427c; bytecode file offset 0xad0b44"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
characters: recoveredArg1 start: recoveredArg2 length: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentElement.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := '%1 is not a valid document root '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) errorString: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201df0e8; bytecode file offset 0xadb9b0"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
includeWhiteSpaceFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) object.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ignorableWhiteSpace.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := Space.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6968; bytecode file offset 0xaf322c"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
processNamespacesForElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameSpaceSupport.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameSpaceSupport.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContext.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := recoveredBlock11Arg2.
    recoveredBlock11Value3 := (recoveredBlock11Value0) declarePrefix: (recoveredBlock11Value1) uri: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20239404; bytecode file offset 0xb35cdc"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
mappedElementFor: recoveredArg1 uri: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) root.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AbtXmlMappedRootElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) abtXmlName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentElement.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameSpaceURI: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025c2dc; bytecode file offset 0xb58ba0"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
getAttributeNamed: recoveredArg1 fromCollection: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) key.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value1) = (recoveredBlock8Value2).
    recoveredBlock8Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026e6f0; bytecode file offset 0xb6afb4"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
primTypeForTagNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectCache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 |
    recoveredBlock21Value0 := (self) objectCache.
    recoveredBlock21Value1 := recoveredArg1.
    recoveredBlock21Value2 := recoveredArg2.
    recoveredBlock21Value3 := (recoveredBlock21Value0) typeNamed: (recoveredBlock21Value1) inNamespace: (recoveredBlock21Value2).
    recoveredBlock21Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029e968; bytecode file offset 0xb9b230"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
typeForElementNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentElementType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComplexType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementNamed: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceUri.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) primTypeForTagNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b9ce8; bytecode file offset 0xbb65c4"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
schemaTypeFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitQName: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCache.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) first.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) uriForPrefix: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d1030; bytecode file offset 0xbcd910"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
setAttributes: recoveredArg1 forElement: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 recoveredBlock7Value13 recoveredBlock7Value14 recoveredBlock7Value15 recoveredBlock7Value16 recoveredBlock7Value17 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) key.
    recoveredBlock7Value2 := (self) nameSpaceSupport.
    recoveredBlock7Value3 := AbtXmlUtility.
    recoveredBlock7Value4 := recoveredBlock7Arg1.
    recoveredBlock7Value5 := (recoveredBlock7Value4) key.
    recoveredBlock7Value6 := (recoveredBlock7Value3) prefixFor: (recoveredBlock7Value5).
    recoveredBlock7Value7 := (recoveredBlock7Value2) getUri: (recoveredBlock7Value6).
    recoveredBlock7Value8 := (self) mappedAttributeFor: (recoveredBlock7Value1) uri: (recoveredBlock7Value7).
    recoveredBlock7Local1 := recoveredBlock7Value8.
    recoveredBlock7Value9 := recoveredBlock7Local1.
    recoveredBlock7Value10 := recoveredBlock7Arg1.
    recoveredBlock7Value11 := (recoveredBlock7Value10) key.
    recoveredBlock7Value12 := recoveredBlock7Arg1.
    recoveredBlock7Value13 := (recoveredBlock7Value12) value.
    recoveredBlock7Value14 := (self) normalizeAttributeNamed: (recoveredBlock7Value11) value: (recoveredBlock7Value13).
    (recoveredBlock7Value9) value: (recoveredBlock7Value14).
    recoveredBlock7Value15 := recoveredArg2.
    recoveredBlock7Value16 := recoveredBlock7Local1.
    recoveredBlock7Value17 := (recoveredBlock7Value15) setAttribute: (recoveredBlock7Value16).
    recoveredBlock7Value17
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202f29d0; bytecode file offset 0xbef2ac"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
getXsiTypeForElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := AbtXmlSchemaInstanceTypeString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) context.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) schemaInstanceUriFor: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttributeNamed: (recoveredStack2) namespaceUri: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlMappedObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitQName: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) uriForPrefix: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2031a7b0; bytecode file offset 0xc17080"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
mappingForElementNamed: recoveredArg1 uri: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCache.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingSpecNamed: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingSpec.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentElement.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapping.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapping.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) id.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingForElement: (recoveredStack1) nameSpaceURI: (recoveredStack2) parentId: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20387918; bytecode file offset 0xc84208"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
startElement: recoveredArg1 rawName: recoveredArg2 uri: recoveredArg3 attributes: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ignorableWhiteSpace: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappedElementFor: (recoveredStack1) uri: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) processNamespacesForElement: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setAttributes: (recoveredStack2) forElement: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) setTypeForElement: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) setMappingForElement: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) initializeAttributesInElement: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentElement.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) setOrAddToElement: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) pushElement: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) getInstance.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) validateStartElement: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) root.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) root: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20413f38; bytecode file offset 0xd10828"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
setTypeForElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) localName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameSpaceURI.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeForElementNamed: (recoveredStack1) inNamespace: (recoveredStack2).
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
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getXsiTypeForElement: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isType.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeName: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) type: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) warningHandler.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 'Type could not be determined for %1 in namespace %2'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) warningString: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045dccc; bytecode file offset 0xd5a5d8"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
endElement: recoveredArg1 rawName: recoveredArg2 uri: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) popElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'Unexpected end tag for %1.  Expected %2.'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) errorString: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) elements.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) includeWhiteSpaceFor: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) ignorableWhiteSpace.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeObjectFor: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) warningHandler.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 'Unable to initialize object for tag %1'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) warningString: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) validate.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) validate.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) validateEndElement: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20499de0; bytecode file offset 0xd966c0"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
setMappingForElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) localName.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mappingSpecUri.
    recoveredValue4 := (self) mappingForElementNamed: (recoveredValue1) uri: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) type.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 122] ifFalse: [recoveredBlock18PC := 32].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) schemaTypeFor: (recoveredBlock18Stack2).
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredLocal2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal2.
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) name.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack3 := recoveredLocal2.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) namespaceUri.
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) mappingForElementNamed: (recoveredBlock18Stack2) uri: (recoveredBlock18Stack3).
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack1.
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isComplexType.
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 75] ifFalse: [recoveredBlock18PC := 66].
        ].
        recoveredBlock18Step = 66 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 69.
        ].
        recoveredBlock18Step = 69 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal3.
            recoveredBlock18PC := 72.
        ].
        recoveredBlock18Step = 72 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) mapping: (recoveredBlock18Stack2).
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            ^recoveredBlock18Stack1
        ].
        recoveredBlock18Step = 75 ifTrue: [
            recoveredBlock18PC := 99.
        ].
        recoveredBlock18Step = 78 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 79.
        ].
        recoveredBlock18Step = 79 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 82.
        ].
        recoveredBlock18Step = 82 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) localName.
            recoveredBlock18PC := 83.
        ].
        recoveredBlock18Step = 83 ifTrue: [
            recoveredBlock18Stack3 := recoveredLocal1.
            recoveredBlock18PC := 86.
        ].
        recoveredBlock18Step = 86 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) namespaceUri.
            recoveredBlock18PC := 88.
        ].
        recoveredBlock18Step = 88 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) mappingForElementNamed: (recoveredBlock18Stack2) uri: (recoveredBlock18Stack3).
            recoveredBlock18PC := 90.
        ].
        recoveredBlock18Step = 90 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack1.
            recoveredBlock18PC := 93.
        ].
        recoveredBlock18Step = 93 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 96.
        ].
        recoveredBlock18Step = 96 ifTrue: [
            recoveredLocal2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 99.
        ].
        recoveredBlock18Step = 99 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal3.
            recoveredBlock18PC := 102.
        ].
        recoveredBlock18Step = 102 ifTrue: [
            (recoveredBlock18Stack1 ~~ nil) ifTrue: [recoveredBlock18PC := 121] ifFalse: [recoveredBlock18PC := 106].
        ].
        recoveredBlock18Step = 106 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 109.
        ].
        recoveredBlock18Step = 109 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) baseType.
            recoveredBlock18PC := 111.
        ].
        recoveredBlock18Step = 111 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 112.
        ].
        recoveredBlock18Step = 112 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 115.
        ].
        recoveredBlock18Step = 115 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal2.
            recoveredBlock18PC := 118.
        ].
        recoveredBlock18Step = 118 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) ~= (recoveredBlock18Stack2).
            recoveredBlock18PC := 119.
        ].
        recoveredBlock18Step = 119 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 78] ifFalse: [recoveredBlock18PC := 121].
        ].
        recoveredBlock18Step = 121 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 122.
        ].
        recoveredBlock18Step = 122 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) ifNil: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal3.
    (recoveredValue7) mapping: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x204d3b88; bytecode file offset 0xdd04a0"
!AbtXmlMappedContentHandler methodsFor: 'recovered'!
initializeAttributesInElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 |
    recoveredBlock8Value0 := OrderedCollection.
    recoveredBlock8Value1 := (recoveredBlock8Value0) new.
    recoveredBlock8Local1 := recoveredBlock8Value1.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value2) attributes.
    recoveredBlock8Value4 := [:recoveredBlock8Block24Arg1 | 
    | recoveredBlock8Block24Stack0 recoveredBlock8Block24Stack1 recoveredBlock8Block24Stack2 recoveredBlock8Block24Stack3 recoveredBlock8Block24Stack4 recoveredBlock8Block24Stack5 recoveredBlock8Block24PC recoveredBlock8Block24Step recoveredBlock8Block24Done recoveredBlock8Block24Result |
    recoveredBlock8Block24Stack0 := self.
    recoveredBlock8Block24PC := 30.
    recoveredBlock8Block24Done := false.
    [recoveredBlock8Block24Done not] whileTrue: [
        recoveredBlock8Block24Step := recoveredBlock8Block24PC.
        recoveredBlock8Block24Step = 30 ifTrue: [
            recoveredBlock8Block24Stack1 := recoveredBlock8Block24Arg1.
            recoveredBlock8Block24PC := 31.
        ].
        recoveredBlock8Block24Step = 31 ifTrue: [
            recoveredBlock8Block24Stack2 := recoveredBlock8Arg1.
            recoveredBlock8Block24PC := 34.
        ].
        recoveredBlock8Block24Step = 34 ifTrue: [
            recoveredBlock8Block24Stack3 := recoveredBlock8Block24Arg1.
            recoveredBlock8Block24PC := 35.
        ].
        recoveredBlock8Block24Step = 35 ifTrue: [
            recoveredBlock8Block24Stack3 := (recoveredBlock8Block24Stack3) abtXmlName.
            recoveredBlock8Block24PC := 37.
        ].
        recoveredBlock8Block24Step = 37 ifTrue: [
            recoveredBlock8Block24Stack2 := (recoveredBlock8Block24Stack2) primAttributeNamed: (recoveredBlock8Block24Stack3).
            recoveredBlock8Block24PC := 39.
        ].
        recoveredBlock8Block24Step = 39 ifTrue: [
            (recoveredBlock8Block24Stack1) type: (recoveredBlock8Block24Stack2).
            recoveredBlock8Block24PC := 41.
        ].
        recoveredBlock8Block24Step = 41 ifTrue: [
            recoveredBlock8Block24Stack1 := recoveredBlock8Block24Arg1.
            recoveredBlock8Block24PC := 42.
        ].
        recoveredBlock8Block24Step = 42 ifTrue: [
            (recoveredBlock8Block24Stack0) initializeObjectFor: (recoveredBlock8Block24Stack1).
            recoveredBlock8Block24PC := 44.
        ].
        recoveredBlock8Block24Step = 44 ifTrue: [
            recoveredBlock8Block24Stack0 := recoveredBlock8Block24Arg1.
            recoveredBlock8Block24PC := 45.
        ].
        recoveredBlock8Block24Step = 45 ifTrue: [
            recoveredBlock8Block24Stack0 := (recoveredBlock8Block24Stack0) type.
            recoveredBlock8Block24PC := 46.
        ].
        recoveredBlock8Block24Step = 46 ifTrue: [
            (recoveredBlock8Block24Stack0 ~~ nil) ifTrue: [recoveredBlock8Block24PC := 82] ifFalse: [recoveredBlock8Block24PC := 50].
        ].
        recoveredBlock8Block24Step = 50 ifTrue: [
            recoveredBlock8Block24Stack0 := nil.
            recoveredBlock8Block24PC := 51.
        ].
        recoveredBlock8Block24Step = 51 ifTrue: [
            recoveredBlock8Block24Stack1 := self.
            recoveredBlock8Block24PC := 52.
        ].
        recoveredBlock8Block24Step = 52 ifTrue: [
            recoveredBlock8Block24Stack1 := (recoveredBlock8Block24Stack1) warningHandler.
            recoveredBlock8Block24PC := 54.
        ].
        recoveredBlock8Block24Step = 54 ifTrue: [
            (recoveredBlock8Block24Stack1 == nil) ifTrue: [recoveredBlock8Block24PC := 78] ifFalse: [recoveredBlock8Block24PC := 58].
        ].
        recoveredBlock8Block24Step = 58 ifTrue: [
            recoveredBlock8Block24PC := 59.
        ].
        recoveredBlock8Block24Step = 59 ifTrue: [
            recoveredBlock8Block24Stack0 := self.
            recoveredBlock8Block24PC := 60.
        ].
        recoveredBlock8Block24Step = 60 ifTrue: [
            recoveredBlock8Block24Stack1 := 'Type could not be determined for %1 in namespace %2'.
            recoveredBlock8Block24PC := 62.
        ].
        recoveredBlock8Block24Step = 62 ifTrue: [
            recoveredBlock8Block24Stack2 := Array.
            recoveredBlock8Block24PC := 64.
        ].
        recoveredBlock8Block24Step = 64 ifTrue: [
            recoveredBlock8Block24Stack3 := recoveredBlock8Block24Arg1.
            recoveredBlock8Block24PC := 65.
        ].
        recoveredBlock8Block24Step = 65 ifTrue: [
            recoveredBlock8Block24Stack3 := (recoveredBlock8Block24Stack3) abtXmlName.
            recoveredBlock8Block24PC := 67.
        ].
        recoveredBlock8Block24Step = 67 ifTrue: [
            recoveredBlock8Block24Stack3 := (recoveredBlock8Block24Stack3) printString.
            recoveredBlock8Block24PC := 69.
        ].
        recoveredBlock8Block24Step = 69 ifTrue: [
            recoveredBlock8Block24Stack4 := recoveredBlock8Block24Arg1.
            recoveredBlock8Block24PC := 70.
        ].
        recoveredBlock8Block24Step = 70 ifTrue: [
            recoveredBlock8Block24Stack4 := (recoveredBlock8Block24Stack4) namespaceUri.
            recoveredBlock8Block24PC := 72.
        ].
        recoveredBlock8Block24Step = 72 ifTrue: [
            recoveredBlock8Block24Stack4 := (recoveredBlock8Block24Stack4) printString.
            recoveredBlock8Block24PC := 74.
        ].
        recoveredBlock8Block24Step = 74 ifTrue: [
            recoveredBlock8Block24Stack2 := (recoveredBlock8Block24Stack2) with: (recoveredBlock8Block24Stack3) with: (recoveredBlock8Block24Stack4).
            recoveredBlock8Block24PC := 76.
        ].
        recoveredBlock8Block24Step = 76 ifTrue: [
            recoveredBlock8Block24Stack0 := (recoveredBlock8Block24Stack0) warningString: (recoveredBlock8Block24Stack1) withArguments: (recoveredBlock8Block24Stack2).
            recoveredBlock8Block24PC := 78.
        ].
        recoveredBlock8Block24Step = 78 ifTrue: [
            recoveredBlock8Block24PC := 90.
        ].
        recoveredBlock8Block24Step = 82 ifTrue: [
            recoveredBlock8Block24Stack0 := recoveredBlock8Local1.
            recoveredBlock8Block24PC := 85.
        ].
        recoveredBlock8Block24Step = 85 ifTrue: [
            recoveredBlock8Block24Stack1 := recoveredBlock8Block24Arg1.
            recoveredBlock8Block24PC := 86.
        ].
        recoveredBlock8Block24Step = 86 ifTrue: [
            recoveredBlock8Block24Stack1 := (recoveredBlock8Block24Stack1) abtXmlName.
            recoveredBlock8Block24PC := 88.
        ].
        recoveredBlock8Block24Step = 88 ifTrue: [
            recoveredBlock8Block24Stack0 := (recoveredBlock8Block24Stack0) add: (recoveredBlock8Block24Stack1).
            recoveredBlock8Block24PC := 90.
        ].
        recoveredBlock8Block24Step = 90 ifTrue: [
            recoveredBlock8Block24Result := recoveredBlock8Block24Stack0.
            recoveredBlock8Block24Done := true.
        ].
    ].
    recoveredBlock8Block24Result
].
    (recoveredBlock8Value3) do: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Arg1.
    recoveredBlock8Value6 := (recoveredBlock8Value5) attributes.
    recoveredBlock8Value7 := [:recoveredBlock8Block97Arg1 | 
    | recoveredBlock8Block97Local1 recoveredBlock8Block97Stack0 recoveredBlock8Block97Stack1 recoveredBlock8Block97Stack2 recoveredBlock8Block97Stack3 recoveredBlock8Block97Stack4 recoveredBlock8Block97PC recoveredBlock8Block97Step recoveredBlock8Block97Done recoveredBlock8Block97Result |
    recoveredBlock8Block97Stack0 := self.
    recoveredBlock8Block97PC := 104.
    recoveredBlock8Block97Done := false.
    [recoveredBlock8Block97Done not] whileTrue: [
        recoveredBlock8Block97Step := recoveredBlock8Block97PC.
        recoveredBlock8Block97Step = 104 ifTrue: [
            recoveredBlock8Block97Stack1 := nil.
            recoveredBlock8Block97PC := 105.
        ].
        recoveredBlock8Block97Step = 105 ifTrue: [
            recoveredBlock8Block97Stack2 := recoveredBlock8Block97Arg1.
            recoveredBlock8Block97PC := 106.
        ].
        recoveredBlock8Block97Step = 106 ifTrue: [
            recoveredBlock8Block97Stack2 := (recoveredBlock8Block97Stack2) default.
            recoveredBlock8Block97PC := 108.
        ].
        recoveredBlock8Block97Step = 108 ifTrue: [
            (recoveredBlock8Block97Stack2 == nil) ifTrue: [recoveredBlock8Block97PC := 150] ifFalse: [recoveredBlock8Block97PC := 112].
        ].
        recoveredBlock8Block97Step = 112 ifTrue: [
            recoveredBlock8Block97Stack2 := recoveredBlock8Local1.
            recoveredBlock8Block97PC := 115.
        ].
        recoveredBlock8Block97Step = 115 ifTrue: [
            recoveredBlock8Block97Stack3 := recoveredBlock8Block97Arg1.
            recoveredBlock8Block97PC := 116.
        ].
        recoveredBlock8Block97Step = 116 ifTrue: [
            recoveredBlock8Block97Stack3 := (recoveredBlock8Block97Stack3) abtXmlName.
            recoveredBlock8Block97PC := 118.
        ].
        recoveredBlock8Block97Step = 118 ifTrue: [
            recoveredBlock8Block97Stack2 := (recoveredBlock8Block97Stack2) includes: (recoveredBlock8Block97Stack3).
            recoveredBlock8Block97PC := 120.
        ].
        recoveredBlock8Block97Step = 120 ifTrue: [
            (recoveredBlock8Block97Stack2) ifTrue: [recoveredBlock8Block97PC := 150] ifFalse: [recoveredBlock8Block97PC := 124].
        ].
        recoveredBlock8Block97Step = 124 ifTrue: [
            recoveredBlock8Block97PC := 125.
        ].
        recoveredBlock8Block97Step = 125 ifTrue: [
            recoveredBlock8Block97Stack1 := recoveredBlock8Block97Arg1.
            recoveredBlock8Block97PC := 126.
        ].
        recoveredBlock8Block97Step = 126 ifTrue: [
            recoveredBlock8Block97Stack2 := self.
            recoveredBlock8Block97PC := 127.
        ].
        recoveredBlock8Block97Step = 127 ifTrue: [
            recoveredBlock8Block97Stack2 := (recoveredBlock8Block97Stack2) configuration.
            recoveredBlock8Block97PC := 129.
        ].
        recoveredBlock8Block97Step = 129 ifTrue: [
            recoveredBlock8Block97Stack2 := (recoveredBlock8Block97Stack2) attributeClass.
            recoveredBlock8Block97PC := 131.
        ].
        recoveredBlock8Block97Step = 131 ifTrue: [
            recoveredBlock8Block97Stack1 := (recoveredBlock8Block97Stack1) newMappedElement: (recoveredBlock8Block97Stack2).
            recoveredBlock8Block97PC := 133.
        ].
        recoveredBlock8Block97Step = 133 ifTrue: [
            recoveredBlock8Block97Local1 := recoveredBlock8Block97Stack1.
            recoveredBlock8Block97PC := 134.
        ].
        recoveredBlock8Block97Step = 134 ifTrue: [
            recoveredBlock8Block97Stack1 := recoveredBlock8Block97Local1.
            recoveredBlock8Block97PC := 135.
        ].
        recoveredBlock8Block97Step = 135 ifTrue: [
            recoveredBlock8Block97Stack2 := recoveredBlock8Block97Arg1.
            recoveredBlock8Block97PC := 136.
        ].
        recoveredBlock8Block97Step = 136 ifTrue: [
            recoveredBlock8Block97Stack2 := (recoveredBlock8Block97Stack2) default.
            recoveredBlock8Block97PC := 138.
        ].
        recoveredBlock8Block97Step = 138 ifTrue: [
            (recoveredBlock8Block97Stack1) value: (recoveredBlock8Block97Stack2).
            recoveredBlock8Block97PC := 140.
        ].
        recoveredBlock8Block97Step = 140 ifTrue: [
            recoveredBlock8Block97Stack1 := recoveredArg1.
            recoveredBlock8Block97PC := 143.
        ].
        recoveredBlock8Block97Step = 143 ifTrue: [
            recoveredBlock8Block97Stack2 := recoveredBlock8Block97Local1.
            recoveredBlock8Block97PC := 144.
        ].
        recoveredBlock8Block97Step = 144 ifTrue: [
            (recoveredBlock8Block97Stack1) setAttribute: (recoveredBlock8Block97Stack2).
            recoveredBlock8Block97PC := 146.
        ].
        recoveredBlock8Block97Step = 146 ifTrue: [
            recoveredBlock8Block97Stack1 := self.
            recoveredBlock8Block97PC := 147.
        ].
        recoveredBlock8Block97Step = 147 ifTrue: [
            recoveredBlock8Block97Stack2 := recoveredBlock8Block97Local1.
            recoveredBlock8Block97PC := 148.
        ].
        recoveredBlock8Block97Step = 148 ifTrue: [
            recoveredBlock8Block97Stack1 := (recoveredBlock8Block97Stack1) initializeObjectFor: (recoveredBlock8Block97Stack2).
            recoveredBlock8Block97PC := 150.
        ].
        recoveredBlock8Block97Step = 150 ifTrue: [
            recoveredBlock8Block97Result := recoveredBlock8Block97Stack1.
            recoveredBlock8Block97Done := true.
        ].
    ].
    recoveredBlock8Block97Result
].
    recoveredBlock8Value8 := (recoveredBlock8Value6) do: (recoveredBlock8Value7).
    recoveredBlock8Value8
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

