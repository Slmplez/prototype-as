"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x200002bc; bytecode file offset 0x18bb0"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
abtIsReadOnly
    | recoveredValue0 |
    recoveredValue0 := (self) readOnly.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000694; bytecode file offset 0x18fa4"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) items.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"abtxmlp.ic method 0x20000734; bytecode file offset 0x18fa4"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) items.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200007d8; bytecode file offset 0x19000"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
getNamedItem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"abtxmlp.ic method 0x20000b00; bytecode file offset 0x19410"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
includesKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) items.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20000d34; bytecode file offset 0x19564"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
items
    | recoveredValue0 |
    recoveredValue0 := items.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000de8; bytecode file offset 0x19600"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
ownerDocument
    | recoveredValue0 |
    recoveredValue0 := ownerDocument.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000e6c; bytecode file offset 0x1967c"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
nameSpaceMappings
    | recoveredValue0 |
    recoveredValue0 := nameSpaceMappings.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000ed0; bytecode file offset 0x19700"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
readOnly
    | recoveredValue0 |
    recoveredValue0 := readOnly.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001884; bytecode file offset 0x1a074"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20001a0c; bytecode file offset 0x1a2ec"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
keysAndValuesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) items.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x20001a1c; bytecode file offset 0x1a2ec"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
associationsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) items.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) associationsDo: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x20001b94; bytecode file offset 0x1a3a4"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
detect: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) items.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001e1c; bytecode file offset 0x1a7a0"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
prefixForURI: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) nameSpaceMappings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001ef8; bytecode file offset 0x1a7a0"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
itemAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) items.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) atIndex: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20002008; bytecode file offset 0x1a808"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
removeNamedItem: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) fullNameFor: (recoveredValue0) nameSpaceURI: (recoveredValue1).
    recoveredValue3 := (self) removeNamedItem: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20002018; bytecode file offset 0x1a808"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
getNamedItem: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) fullNameFor: (recoveredValue0) nameSpaceURI: (recoveredValue1).
    recoveredValue3 := (self) at: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x200020fc; bytecode file offset 0x1a8f0"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) items.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) abtDOMKey.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"abtxmlp.ic method 0x20002520; bytecode file offset 0x1ad18"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
ownerDocument: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ownerDocument := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x2000254c; bytecode file offset 0x1ad9c"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
nameSpaceMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameSpaceMappings := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002608; bytecode file offset 0x1ae20"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
readOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    readOnly := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200029bc; bytecode file offset 0x1b1ac"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
printAllAttributesOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) printNamespaceMappingsOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) printAttributesOn: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x20003184; bytecode file offset 0x1b978"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) items.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"abtxmlp.ic method 0x20003878; bytecode file offset 0x1c070"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
handleDOMExceptionNumber: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getMsg: (recoveredValue0) group: ('AbtDOMMsg').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := AbtDOMException.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) signalWith: (recoveredValue3).
    ^self
! !

"abtxmlp.ic method 0x20003970; bytecode file offset 0x1c160"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SystemExceptions.
    recoveredValue1 := (recoveredValue0) new.
    nameSpaceMappings := recoveredValue1.
    recoveredValue2 := SystemExceptions.
    recoveredValue3 := (recoveredValue2) new.
    items := recoveredValue3.
    readOnly := false.
    ^self
! !

"abtxmlp.ic method 0x20004178; bytecode file offset 0x1c974"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
setNamedItem: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) nodeName.
    recoveredValue2 := (self) prefixFor: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    (self) declarePrefix: (recoveredValue2) uri: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) fullNameFor: (recoveredValue4) nameSpaceURI: (recoveredValue5).
    recoveredValue7 := (self) setNamedItem: (recoveredValue6).
    ^recoveredValue7
! !

"abtxmlp.ic method 0x2000431c; bytecode file offset 0x1cb10"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
removeNamedItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := AbtDOMNotFoundErr.
    (self) handleDOMExceptionNumber: (recoveredBlock5Value0).
    nil
].
    recoveredValue2 := (self) removeKey: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x2000568c; bytecode file offset 0x1de8c"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
prefixFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) memcpyStringFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtxmlp.ic method 0x200058e0; bytecode file offset 0x1e0e0"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPut: ($().
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    (self) printAllAttributesOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) nextPut: ($)).
    ^self
! !

"abtxmlp.ic method 0x20005b34; bytecode file offset 0x1e328"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
declarePrefix: recoveredArg1 uri: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameSpaceMappings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
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

"abtxmlp.ic method 0x20006ae4; bytecode file offset 0x1f2f0"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
setNamedItem: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerDocument.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := AbtDOMWrongDocumentErr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) handleDOMExceptionNumber: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInUse.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := AbtDOMInUseAttributeErr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) handleDOMExceptionNumber: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtIsReadOnly.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := AbtDOMNoModificationAllowedErr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) handleDOMExceptionNumber: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodeName.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x20006bf0; bytecode file offset 0x1f3fc"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
printAttributesOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) items.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := PrimErrSupportDLLMissing.
    (recoveredBlock5Value1) nextPut: (recoveredBlock5Value2).
    recoveredBlock5Value3 := recoveredBlock5Value0.
    recoveredBlock5Value4 := recoveredBlock5Arg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) key.
    (recoveredBlock5Value3) nextPutAll: (recoveredBlock5Value5).
    recoveredBlock5Value6 := recoveredBlock5Value0.
    (recoveredBlock5Value6) nextPut: ($=).
    recoveredBlock5Value7 := recoveredBlock5Arg1.
    recoveredBlock5Value8 := (recoveredBlock5Value7) value.
    recoveredBlock5Value9 := (recoveredBlock5Value8) abrAsString.
    recoveredBlock5Value10 := (recoveredBlock5Value9) printString.
    recoveredBlock5Value11 := (recoveredBlock5Value0) nextPutAll: (recoveredBlock5Value10).
    recoveredBlock5Value11
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x200078e4; bytecode file offset 0x20118"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
fullNameFor: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) prefixForURI: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := ':'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x200080a4; bytecode file offset 0x208bc"
!AbtDOMNamedNodeMap methodsFor: 'recovered'!
printNamespaceMappingsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) nameSpaceMappings.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := 'xmlns:'.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) , (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) items.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) includesKey: (recoveredBlock5Stack3).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 58] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack3 := PrimErrSupportDLLMissing.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            (recoveredBlock5Stack2) nextPut: (recoveredBlock5Stack3).
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local1.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            (recoveredBlock5Stack2) nextPutAll: (recoveredBlock5Stack3).
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack3 := '="'.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            (recoveredBlock5Stack2) nextPutAll: (recoveredBlock5Stack3).
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) key.
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            (recoveredBlock5Stack2) nextPutAll: (recoveredBlock5Stack3).
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack2 := $".
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) nextPut: (recoveredBlock5Stack2).
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    ^self
! !

