"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000340; bytecode file offset 0x18bb0"
!AbtDOMDocument methodsFor: 'recovered'!
localName
    | recoveredValue0 |
    recoveredValue0 := (self) nodeName.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000388; bytecode file offset 0x18bb0"
!AbtDOMDocument methodsFor: 'recovered'!
documentElement
    | recoveredValue0 |
    recoveredValue0 := (self) rootTag.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000394; bytecode file offset 0x18bb0"
!AbtDOMDocument methodsFor: 'recovered'!
docType
    | recoveredValue0 |
    recoveredValue0 := (self) dtd.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200004dc; bytecode file offset 0x18d4c"
!AbtDOMDocument methodsFor: 'recovered'!
nodeType
    | recoveredValue0 |
    recoveredValue0 := AbtDOMDocumentNode.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x2000058c; bytecode file offset 0x18dd8"
!AbtDOMDocument methodsFor: 'recovered'!
defaultXmlNamespaceURI
    ^'http://www.w3.org/XML/1998/namespace'
! !

"abtxmlp.ic method 0x200005b0; bytecode file offset 0x18dd8"
!AbtDOMDocument methodsFor: 'recovered'!
nodeName
    ^'document'
! !

"abtxmlp.ic method 0x20000c38; bytecode file offset 0x19424"
!AbtDOMDocument methodsFor: 'recovered'!
importNode: recoveredArg1 deep: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) cloneNode: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x2000100c; bytecode file offset 0x19834"
!AbtDOMDocument methodsFor: 'recovered'!
implementation
    | recoveredValue0 |
    recoveredValue0 := implementation.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001078; bytecode file offset 0x19878"
!AbtDOMDocument methodsFor: 'recovered'!
standAlone
    | recoveredValue0 |
    recoveredValue0 := standAlone.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200010b4; bytecode file offset 0x198a4"
!AbtDOMDocument methodsFor: 'recovered'!
uri
    | recoveredValue0 |
    recoveredValue0 := uri.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200013f4; bytecode file offset 0x19c64"
!AbtDOMDocument methodsFor: 'recovered'!
createEntityReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtDOMEntityReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) named: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x200014c4; bytecode file offset 0x19cf8"
!AbtDOMDocument methodsFor: 'recovered'!
createAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createAttribute: (recoveredValue0) nameSpaceURI: (nil).
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200014d0; bytecode file offset 0x19cf8"
!AbtDOMDocument methodsFor: 'recovered'!
getElementsByTagName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getElementsByTagName: (recoveredValue0) nameSpaceURI: (nil).
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200014dc; bytecode file offset 0x19cf8"
!AbtDOMDocument methodsFor: 'recovered'!
createElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createElement: (recoveredValue0) nameSpaceURI: (nil).
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200015a8; bytecode file offset 0x19d9c"
!AbtDOMDocument methodsFor: 'recovered'!
characterReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asCharacter.
    recoveredValue2 := (recoveredValue1) abrAsString.
    recoveredValue3 := (self) addText: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001694; bytecode file offset 0x19e88"
!AbtDOMDocument methodsFor: 'recovered'!
createDocumentFragment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtDOMDocumentFragment.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) ownerDocument: (self).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x2000180c; bytecode file offset 0x1a028"
!AbtDOMDocument methodsFor: 'recovered'!
createComment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtDOMComment.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) data: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001f5c; bytecode file offset 0x1a7a0"
!AbtDOMDocument methodsFor: 'recovered'!
getElementById: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) idTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20002778; bytecode file offset 0x1af78"
!AbtDOMDocument methodsFor: 'recovered'!
standAlone: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    standAlone := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200027b4; bytecode file offset 0x1afa4"
!AbtDOMDocument methodsFor: 'recovered'!
uri: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    uri := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002d5c; bytecode file offset 0x1b554"
!AbtDOMDocument methodsFor: 'recovered'!
createProcessingInstruction: recoveredArg1 target: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtDOMProcessingInstruction.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue1) data: (recoveredValue4).
    ^recoveredValue5
! !

"abtxmlp.ic method 0x200033c8; bytecode file offset 0x1bbd8"
!AbtDOMDocument methodsFor: 'recovered'!
createCDATASection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtDOMCDataSection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) data: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) ownerDocument: (self).
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200033e0; bytecode file offset 0x1bbd8"
!AbtDOMDocument methodsFor: 'recovered'!
createTextNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtDOMText.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) data: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) ownerDocument: (self).
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200037f8; bytecode file offset 0x1bff0"
!AbtDOMDocument methodsFor: 'recovered'!
createAttribute: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtDOMAttr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) named: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) ownerDocument: (self).
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) nameSpaceURI: (recoveredValue5).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x200041cc; bytecode file offset 0x1c9cc"
!AbtDOMDocument methodsFor: 'recovered'!
getElementsByTagName: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) documentElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) documentElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1) nameSpaceURI: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x200049e0; bytecode file offset 0x1d1e4"
!AbtDOMDocument methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    recoveredValue0 := AbtDOMImplementation.
    recoveredValue1 := (recoveredValue0) new.
    implementation := recoveredValue1.
    recoveredValue2 := AbtXmlDOMFactory.
    (self) factory: (recoveredValue2).
    (self) standAlone: (false).
    ^self
! !

"abtxmlp.ic method 0x20006f54; bytecode file offset 0x1f760"
!AbtDOMDocument methodsFor: 'recovered'!
rootTag: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dtd.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dtd.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dtd.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := SgmlSyntaxError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'DocTypeMismatch'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'Tag %1 does not match %2 from DOCTYPE'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) dtd.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) code: (recoveredStack1) text: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) signalException.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            super rootTag: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x20007014; bytecode file offset 0x1f81c"
!AbtDOMDocument methodsFor: 'recovered'!
createElement: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtDOMElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementOwnerDocument: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) prefix.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'xml'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultXmlNamespaceURI.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) nameSpaceURI: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) nameSpaceURI: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

