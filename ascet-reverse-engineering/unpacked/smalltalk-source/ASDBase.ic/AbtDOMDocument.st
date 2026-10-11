"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200095b4; bytecode file offset 0x908be4"
!AbtDOMDocument methodsFor: 'recovered'!
docType
    | recoveredValue0 |
    recoveredValue0 := (self) dtd.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009a10; bytecode file offset 0x908be4"
!AbtDOMDocument methodsFor: 'recovered'!
documentElement
    | recoveredValue0 |
    recoveredValue0 := (self) rootTag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b804; bytecode file offset 0x908be4"
!AbtDOMDocument methodsFor: 'recovered'!
localName
    | recoveredValue0 |
    recoveredValue0 := (self) nodeName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012fcc; bytecode file offset 0x912098"
!AbtDOMDocument methodsFor: 'recovered'!
nodeType
    | recoveredValue0 |
    recoveredValue0 := AbtDOMDocumentNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ac54; bytecode file offset 0x92209c"
!AbtDOMDocument methodsFor: 'recovered'!
defaultXmlNamespaceURI
    ^'http://www.w3.org/XML/1998/namespace'
! !

"ASDBase.ic method 0x2001f7d8; bytecode file offset 0x92209c"
!AbtDOMDocument methodsFor: 'recovered'!
nodeName
    ^'document'
! !

"ASDBase.ic method 0x2005a13c; bytecode file offset 0x956a30"
!AbtDOMDocument methodsFor: 'recovered'!
importNode: recoveredArg1 deep: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) cloneNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006c07c; bytecode file offset 0x9692b0"
!AbtDOMDocument methodsFor: 'recovered'!
implementation
    | recoveredValue0 |
    recoveredValue0 := implementation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cbd0; bytecode file offset 0x969c04"
!AbtDOMDocument methodsFor: 'recovered'!
standAlone
    | recoveredValue0 |
    recoveredValue0 := standAlone.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d3d4; bytecode file offset 0x96a390"
!AbtDOMDocument methodsFor: 'recovered'!
uri
    | recoveredValue0 |
    recoveredValue0 := uri.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200815f8; bytecode file offset 0x97e234"
!AbtDOMDocument methodsFor: 'recovered'!
createEntityReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtDOMEntityReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) named: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083894; bytecode file offset 0x980230"
!AbtDOMDocument methodsFor: 'recovered'!
createAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createAttribute: (recoveredValue0) nameSpaceURI: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200838dc; bytecode file offset 0x980230"
!AbtDOMDocument methodsFor: 'recovered'!
getElementsByTagName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getElementsByTagName: (recoveredValue0) nameSpaceURI: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083978; bytecode file offset 0x980230"
!AbtDOMDocument methodsFor: 'recovered'!
createElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createElement: (recoveredValue0) nameSpaceURI: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200858f0; bytecode file offset 0x9821c4"
!AbtDOMDocument methodsFor: 'recovered'!
characterReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asCharacter.
    recoveredValue2 := (recoveredValue1) abrAsString.
    recoveredValue3 := (self) addText: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20089d08; bytecode file offset 0x986668"
!AbtDOMDocument methodsFor: 'recovered'!
createDocumentFragment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtDOMDocumentFragment.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) ownerDocument: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092468; bytecode file offset 0x98ed78"
!AbtDOMDocument methodsFor: 'recovered'!
createComment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtDOMComment.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) data: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab6fc; bytecode file offset 0x9a8250"
!AbtDOMDocument methodsFor: 'recovered'!
getElementById: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) idTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c3c40; bytecode file offset 0x9c058c"
!AbtDOMDocument methodsFor: 'recovered'!
standAlone: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    standAlone := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4254; bytecode file offset 0x9c0bf0"
!AbtDOMDocument methodsFor: 'recovered'!
uri: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    uri := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cb358; bytecode file offset 0x9c7c18"
!AbtDOMDocument methodsFor: 'recovered'!
mapElement: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) documentElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getElementByTagName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) mapUsing: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eb250; bytecode file offset 0x9e7b14"
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

"ASDBase.ic method 0x2010c6f8; bytecode file offset 0xa09004"
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

"ASDBase.ic method 0x2010c710; bytecode file offset 0xa09004"
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

"ASDBase.ic method 0x20121bf4; bytecode file offset 0xa1e4b8"
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

"ASDBase.ic method 0x20138ce8; bytecode file offset 0xa355a4"
!AbtDOMDocument methodsFor: 'recovered'!
mapUsing: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) documentElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapUsing: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201573b8; bytecode file offset 0xa53c84"
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

"ASDBase.ic method 0x201657e0; bytecode file offset 0xa620a8"
!AbtDOMDocument methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('<?xml version="1.0"?>').
    recoveredValue1 := (self) docType.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) abtXmlPrintOn: (recoveredValue2).
    recoveredValue3 := (self) documentElement.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) abtXmlPrintOn: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20191298; bytecode file offset 0xa8db68"
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

"ASDBase.ic method 0x2019890c; bytecode file offset 0xa951e4"
!AbtDOMDocument methodsFor: 'recovered'!
asXmlString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    (self) abtXmlPrintOn: (recoveredValue5).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) contents.
    recoveredValue9 := (recoveredValue8) asReducedString.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202c620c; bytecode file offset 0xbc2ae4"
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

"ASDBase.ic method 0x202ca8e8; bytecode file offset 0xbc71bc"
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

"ASDBase.ic method 0x2030a0e0; bytecode file offset 0xc069a8"
!AbtDOMDocument methodsFor: 'recovered'!
getElementsByTagPath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) getElementsByTagName: (recoveredBlock24Stack2).
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            (recoveredBlock24Stack1 ~~ nil) ifTrue: [recoveredBlock24PC := 42] ifFalse: [recoveredBlock24PC := 40].
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) someElement.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035037c; bytecode file offset 0xc4cc54"
!AbtDOMDocument methodsFor: 'recovered'!
mapElements: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) documentElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 |
    recoveredBlock39Value0 := recoveredLocal1.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := recoveredArg2.
    recoveredBlock39Value3 := (recoveredBlock39Value1) mapUsing: (recoveredBlock39Value2).
    recoveredBlock39Value4 := (recoveredBlock39Value0) add: (recoveredBlock39Value3).
    recoveredBlock39Value4
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

