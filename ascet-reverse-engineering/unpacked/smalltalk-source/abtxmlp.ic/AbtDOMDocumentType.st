"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x2000034c; bytecode file offset 0x18bb0"
!AbtDOMDocumentType methodsFor: 'recovered'!
nodeName
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200010d8; bytecode file offset 0x198c0"
!AbtDOMDocumentType methodsFor: 'recovered'!
internalSubset
    | recoveredValue0 |
    recoveredValue0 := internalSubset.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200010ec; bytecode file offset 0x198e4"
!AbtDOMDocumentType methodsFor: 'recovered'!
publicId
    | recoveredValue0 |
    recoveredValue0 := publicId.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001118; bytecode file offset 0x19900"
!AbtDOMDocumentType methodsFor: 'recovered'!
systemId
    | recoveredValue0 |
    recoveredValue0 := systemId.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001134; bytecode file offset 0x19924"
!AbtDOMDocumentType methodsFor: 'recovered'!
uri
    | recoveredValue0 |
    recoveredValue0 := uri.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200014b8; bytecode file offset 0x19cf8"
!AbtDOMDocumentType methodsFor: 'recovered'!
getOrAddElementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getOrAddElementNamed: (recoveredValue0) nameSpaceURI: (nil).
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200027d0; bytecode file offset 0x1afc0"
!AbtDOMDocumentType methodsFor: 'recovered'!
internalSubset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    internalSubset := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200027ec; bytecode file offset 0x1afdc"
!AbtDOMDocumentType methodsFor: 'recovered'!
publicId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    publicId := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002808; bytecode file offset 0x1aff8"
!AbtDOMDocumentType methodsFor: 'recovered'!
systemId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    systemId := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x2000282c; bytecode file offset 0x1b014"
!AbtDOMDocumentType methodsFor: 'recovered'!
uri: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    uri := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20004df0; bytecode file offset 0x1d5ec"
!AbtDOMDocumentType methodsFor: 'recovered'!
addToXmlObjectCache
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) systemId.
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
            recoveredStack0 := (recoveredStack0) systemId.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addDTD: (recoveredStack1) named: (recoveredStack2).
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

"abtxmlp.ic method 0x20005650; bytecode file offset 0x1de4c"
!AbtDOMDocumentType methodsFor: 'recovered'!
getOrAddElementNamed: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := AbtXmlElementDeclaration.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) dtd: (self) name: (recoveredBlock8Value1).
    recoveredBlock8Value3 := recoveredArg2.
    recoveredBlock8Value4 := (recoveredBlock8Value2) nameSpaceURI: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20005f24; bytecode file offset 0x1e72c"
!AbtDOMDocumentType methodsFor: 'recovered'!
elementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := SgmlSyntaxError.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) code: ('UnknownTag') text: ('Tag %1 is unknown') with: (recoveredBlock8Value1).
    (recoveredBlock8Value2) signalException.
    recoveredBlock8Value3 := recoveredArg1.
    recoveredBlock8Value4 := (self) getOrAddElementNamed: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x200060bc; bytecode file offset 0x1e8cc"
!AbtDOMDocumentType methodsFor: 'recovered'!
parameterEntityNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parameterEntities.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := SgmlSyntaxError.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) code: ('UnknownParameterEntity') text: ('Parameter entity "%1" is unknown') with: (recoveredBlock8Value1).
    (recoveredBlock8Value2) signalException.
    recoveredBlock8Value3 := CompiledMethod.
    recoveredBlock8Value4 := (recoveredBlock8Value3) on: ('').
    recoveredBlock8Value4
].
    recoveredValue3 := (recoveredValue0) entityNamed: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

