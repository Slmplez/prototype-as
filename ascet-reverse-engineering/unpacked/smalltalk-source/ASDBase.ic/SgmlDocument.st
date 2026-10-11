"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d7cc; bytecode file offset 0x90a4b8"
!SgmlDocument methodsFor: 'recovered'!
convertStringValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20039330; bytecode file offset 0x935c54"
!SgmlDocument methodsFor: 'recovered'!
convertCharacterValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006657c; bytecode file offset 0x963428"
!SgmlDocument methodsFor: 'recovered'!
rootTag
    | recoveredValue0 |
    recoveredValue0 := rootTag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067804; bytecode file offset 0x9646f8"
!SgmlDocument methodsFor: 'recovered'!
idTable
    | recoveredValue0 |
    recoveredValue0 := idTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069214; bytecode file offset 0x965b90"
!SgmlDocument methodsFor: 'recovered'!
currentAttributeValues
    | recoveredValue0 |
    recoveredValue0 := currentAttributeValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a000; bytecode file offset 0x966bdc"
!SgmlDocument methodsFor: 'recovered'!
currentContent
    | recoveredValue0 |
    recoveredValue0 := currentContent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ac1c; bytecode file offset 0x967a18"
!SgmlDocument methodsFor: 'recovered'!
dtd
    | recoveredValue0 |
    recoveredValue0 := dtd.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd48; bytecode file offset 0x96873c"
!SgmlDocument methodsFor: 'recovered'!
factory
    | recoveredValue0 |
    recoveredValue0 := factory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084c60; bytecode file offset 0x981ca4"
!SgmlDocument methodsFor: 'recovered'!
addTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addTagOrText: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20093c88; bytecode file offset 0x9905e8"
!SgmlDocument methodsFor: 'recovered'!
entityReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dtd.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) entityDeclarationNamed: (recoveredValue1).
    recoveredValue3 := (self) entityReferenceType: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200980a4; bytecode file offset 0x995850"
!SgmlDocument methodsFor: 'recovered'!
pcdata: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parser.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) parseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b9ba0; bytecode file offset 0x9b6464"
!SgmlDocument methodsFor: 'recovered'!
endTag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) dtd.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) elementNamed: (recoveredValue1).
    recoveredValue3 := (self) endTagType: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) explicitEndTag: (true).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bdd6c; bytecode file offset 0x9bb178"
!SgmlDocument methodsFor: 'recovered'!
rootTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rootTag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bec00; bytecode file offset 0x9bc0b4"
!SgmlDocument methodsFor: 'recovered'!
idTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    idTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfb5c; bytecode file offset 0x9bd228"
!SgmlDocument methodsFor: 'recovered'!
currentAttributeValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentAttributeValues := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0e20; bytecode file offset 0x9bdf14"
!SgmlDocument methodsFor: 'recovered'!
currentContent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentContent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1fd4; bytecode file offset 0x9beac8"
!SgmlDocument methodsFor: 'recovered'!
dtd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dtd := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c25d8; bytecode file offset 0x9bf474"
!SgmlDocument methodsFor: 'recovered'!
factory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    factory := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8100; bytecode file offset 0x9c49c0"
!SgmlDocument methodsFor: 'recovered'!
addProxyForDeclaration: recoveredArg1 resolveBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) factory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) newTagProxy: (recoveredValue1) resolveBlock: (recoveredValue2).
    recoveredValue4 := (self) addTagOrText: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c8120; bytecode file offset 0x9c49e0"
!SgmlDocument methodsFor: 'recovered'!
addProxyFor: recoveredArg1 resolveBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) dtd.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) elementNamed: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) addProxyForDeclaration: (recoveredValue2) resolveBlock: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d6d64; bytecode file offset 0x9d3620"
!SgmlDocument methodsFor: 'recovered'!
addOpenTag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) addTagOrText: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) currentContent: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200dcf5c; bytecode file offset 0x9d9818"
!SgmlDocument methodsFor: 'recovered'!
setAttribute: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentContent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) setAttribute: (recoveredValue1) value: (recoveredValue2) inDoc: (self).
    ^self
! !

"ASDBase.ic method 0x200e05d4; bytecode file offset 0x9dceb0"
!SgmlDocument methodsFor: 'recovered'!
parser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SgmlDocumentParser.
    recoveredValue1 := (self) dtd.
    recoveredValue2 := (recoveredValue0) usingDTD: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) document: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e83d8; bytecode file offset 0x9e4c9c"
!SgmlDocument methodsFor: 'recovered'!
startTag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) dtd.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) elementNamed: (recoveredValue1).
    recoveredValue3 := (self) startTagType: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) explicitStartTag: (true).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200eef50; bytecode file offset 0x9eb810"
!SgmlDocument methodsFor: 'recovered'!
entityReferenceType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) factory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) newEntityReference: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addText: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20103818; bytecode file offset 0xa000dc"
!SgmlDocument methodsFor: 'recovered'!
characterReference: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) factory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asCharacter.
    recoveredValue3 := (recoveredValue0) newCharacterReference: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) addText: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010a6b0; bytecode file offset 0xa06fac"
!SgmlDocument methodsFor: 'recovered'!
currentTag
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTag.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201187a4; bytecode file offset 0xa15068"
!SgmlDocument methodsFor: 'recovered'!
closeCurrentTag
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentContent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) declaration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c7854Arg1 | 
    true
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) endTagType: (recoveredStack1) specifiedWith: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011b7c0; bytecode file offset 0xa18094"
!SgmlDocument methodsFor: 'recovered'!
expectedData
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SgmlAnyData.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) expectedData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20171dfc; bytecode file offset 0xa6e6c0"
!SgmlDocument methodsFor: 'recovered'!
cr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isText.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := LineDelimiter.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186cc4; bytecode file offset 0xa83580"
!SgmlDocument methodsFor: 'recovered'!
endTagType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) isTag: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (self) endTagType: (recoveredValue0) specifiedWith: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201903e8; bytecode file offset 0xa8ccac"
!SgmlDocument methodsFor: 'recovered'!
decrementTagStack
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentContent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) currentContent: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6d7c; bytecode file offset 0xaa3668"
!SgmlDocument methodsFor: 'recovered'!
cdata: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parser.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ReadStream.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) inputStream: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) parseCDataTerminatedBy: (recoveredStack1) resetPosition: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6d9c; bytecode file offset 0xaa3668"
!SgmlDocument methodsFor: 'recovered'!
rcdata: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parser.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ReadStream.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) inputStream: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) parseRCDataTerminatedBy: (recoveredStack1) resetPosition: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201effc0; bytecode file offset 0xaec8c4"
!SgmlDocument methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) dtd.
    (self) dtd: (recoveredValue1).
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    (self) idTable: (recoveredValue3).
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    (self) currentAttributeValues: (recoveredValue5).
    recoveredValue6 := SgmlFactory.
    (self) factory: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2020f488; bytecode file offset 0xb0bd48"
!SgmlDocument methodsFor: 'recovered'!
closeTag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) declaration.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) == (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (self) endTagType: (recoveredValue1) specifiedWith: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) explicitEndTag: (true).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20293138; bytecode file offset 0xb8fa08"
!SgmlDocument methodsFor: 'recovered'!
addText: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTag.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) factory.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) newText: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) addTagOrText: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) currentContent: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d8b90; bytecode file offset 0xbd5468"
!SgmlDocument methodsFor: 'recovered'!
catchExceptionsWhile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SgmlException.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) argument.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) code.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := 'TagRequired'.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            (recoveredBlock7Stack1 ~~ recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 43] ifFalse: [recoveredBlock7PC := 24].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local2.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) argument.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) startTagRequired.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 41] ifFalse: [recoveredBlock7PC := 34].
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            (recoveredBlock7Stack1) startTagType: (recoveredBlock7Stack2).
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            (recoveredBlock7Stack1) retry.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) signal.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20331864; bytecode file offset 0xc2e13c"
!SgmlDocument methodsFor: 'recovered'!
startTagType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) factory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) newTag: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentAttributeValues.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 |
    recoveredBlock31Value0 := recoveredLocal2.
    recoveredBlock31Value1 := (recoveredBlock31Value0) attributes.
    recoveredBlock31Value2 := recoveredBlock31Arg1.
    recoveredBlock31Value3 := recoveredBlock31Arg2.
    recoveredBlock31Value4 := (recoveredBlock31Value1) at: (recoveredBlock31Value2) put: (recoveredBlock31Value3).
    recoveredBlock31Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) addOpenTag: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20385ab4; bytecode file offset 0xc82398"
!SgmlDocument methodsFor: 'recovered'!
endTagType: recoveredArg1 specifiedWith: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentContent.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentContent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) decrementTagStack.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentContent.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentContent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) endTagRequired.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SgmlSyntaxError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'endTagRequired'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'Can not close %1 because %2 requires an end tag'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := (recoveredStack5) currentContent.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) code: (recoveredStack2) text: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalException.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) decrementTagStack.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) endTagType: (recoveredStack2) specifiedWith: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := SgmlSyntaxError.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'EndTagWithoutStartTag'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := 'Can not close %1.'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalException.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205110c8; bytecode file offset 0xe0d9d4"
!SgmlDocument methodsFor: 'recovered'!
addTagOrText: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) currentContent.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 68] ifFalse: [recoveredBlock4PC := 14].
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isTag.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 22] ifFalse: [recoveredBlock4PC := 38].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            (recoveredBlock4Stack0) parent: (recoveredBlock4Stack1).
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            (recoveredBlock4Stack0) rootTag: (recoveredBlock4Stack1).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := true.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) containsOnlySeparators.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 46] ifFalse: [recoveredBlock4PC := 50].
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack0 := false.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack0 := SgmlSyntaxError.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack1 := 'InvalidRoot'.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack2 := '%1 is not a valid document root'.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) code: (recoveredBlock4Stack1) text: (recoveredBlock4Stack2) with: (recoveredBlock4Stack3).
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) signalException.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 68 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) currentContent.
            recoveredBlock4PC := 70.
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isTag.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 74] ifFalse: [recoveredBlock4PC := 84].
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) currentContent.
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) addTag: (recoveredBlock4Stack1).
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack0 := false.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) catchExceptionsWhile: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) isText.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsOnlySeparators.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentContent.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) endTagRequired.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := SgmlSyntaxError.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 'EndTagRequired'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'Cannot add %2 to %1'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentContent.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) code: (recoveredStack1) text: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalException.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) decrementTagStack.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) addTagOrText: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootTag.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) rootTag: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 184.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := SgmlSyntaxError.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := 'TagNotAllowed'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := 'Can not add %2 to %1'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootTag.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) code: (recoveredStack1) text: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalException.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

