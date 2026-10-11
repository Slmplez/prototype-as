"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200009b0; bytecode file offset 0x61a84"
!SstWSXmlGeneration methodsFor: 'recovered'!
createMappingSpecFor: recoveredArg1
    ^nil
! !

"xxx_dyn.ic method 0x200009e8; bytecode file offset 0x61abc"
!SstWSXmlGeneration methodsFor: 'recovered'!
inputMessageNameForOperation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200009f8; bytecode file offset 0x61abc"
!SstWSXmlGeneration methodsFor: 'recovered'!
selectorNameFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002e7c; bytecode file offset 0x64108"
!SstWSXmlGeneration methodsFor: 'recovered'!
soapBodyNamespaceFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) encodingStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) soapBodyNamespaceFor: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200037c4; bytecode file offset 0x649e8"
!SstWSXmlGeneration methodsFor: 'recovered'!
style
    | recoveredValue0 |
    recoveredValue0 := style.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003a98; bytecode file offset 0x64bac"
!SstWSXmlGeneration methodsFor: 'recovered'!
encodingStyle
    | recoveredValue0 |
    recoveredValue0 := encodingStyle.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003c64; bytecode file offset 0x64d78"
!SstWSXmlGeneration methodsFor: 'recovered'!
filePath
    | recoveredValue0 |
    recoveredValue0 := filePath.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004ba0; bytecode file offset 0x65c7c"
!SstWSXmlGeneration methodsFor: 'recovered'!
schemaNamespaceFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstWSToolsDefaultNamespacePrefix.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004d38; bytecode file offset 0x65e04"
!SstWSXmlGeneration methodsFor: 'recovered'!
outputMessageNameForOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('Response').
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20005140; bytecode file offset 0x6624c"
!SstWSXmlGeneration methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    recoveredValue0 := SstWSToolsDefaultServiceStyle.
    (self) style: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x2000651c; bytecode file offset 0x675f0"
!SstWSXmlGeneration methodsFor: 'recovered'!
newWsdlParser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtXmlMappingParser.
    recoveredValue1 := AbtXmlDeserializationConfiguration.
    recoveredValue2 := (recoveredValue1) newWsdlConfiguration.
    recoveredValue3 := (recoveredValue0) usingConfiguration: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006de0; bytecode file offset 0x67eac"
!SstWSXmlGeneration methodsFor: 'recovered'!
fileNameFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) subStrings: ($/).
    recoveredValue2 := (recoveredValue1) last.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007414; bytecode file offset 0x684e0"
!SstWSXmlGeneration methodsFor: 'recovered'!
createImplementationObjectForClass: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createInterfaceObjectForClass: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) createImplementationObjectForInterface: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007860; bytecode file offset 0x6894c"
!SstWSXmlGeneration methodsFor: 'recovered'!
wsdlInterfaceNamespaceFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SstWSToolsDefaultNamespace.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) bindWith: (recoveredValue1).
    recoveredValue3 := SstWSToolsDashInterfaceString.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007878; bytecode file offset 0x6894c"
!SstWSXmlGeneration methodsFor: 'recovered'!
wsdlImplementationNamespaceFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SstWSToolsDefaultNamespace.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) bindWith: (recoveredValue1).
    recoveredValue3 := SstWSToolsDashImplementationString.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007e54; bytecode file offset 0x68f50"
!SstWSXmlGeneration methodsFor: 'recovered'!
style: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    style := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f88; bytecode file offset 0x69104"
!SstWSXmlGeneration methodsFor: 'recovered'!
encodingStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    encodingStyle := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008194; bytecode file offset 0x692b8"
!SstWSXmlGeneration methodsFor: 'recovered'!
filePath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    filePath := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008d94; bytecode file offset 0x69e68"
!SstWSXmlGeneration methodsFor: 'recovered'!
encodingStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SstWSEncodingStrategy.
    recoveredValue1 := (self) style.
    recoveredValue2 := (self) use.
    recoveredValue3 := (recoveredValue0) forStyle: (recoveredValue1) use: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20009658; bytecode file offset 0x6a744"
!SstWSXmlGeneration methodsFor: 'recovered'!
createImplementationWsdlForClass: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createImplementationObjectForClass: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) createFileNamed: (recoveredValue2) contents: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20009668; bytecode file offset 0x6a744"
!SstWSXmlGeneration methodsFor: 'recovered'!
createInterfaceWsdlForClass: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createInterfaceObjectForClass: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) createFileNamed: (recoveredValue2) contents: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20009678; bytecode file offset 0x6a744"
!SstWSXmlGeneration methodsFor: 'recovered'!
createImplementationWsdlFromInterface: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createImplementationObjectForInterface: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) createFileNamed: (recoveredValue2) contents: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20009b30; bytecode file offset 0x6ac04"
!SstWSXmlGeneration methodsFor: 'recovered'!
methodsToBeMappedFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := SstWSToolsDefaultMethodCategory.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) methodNamesCategorizedIn: (recoveredValue3) all: (false).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000b5dc; bytecode file offset 0x6c6ac"
!SstWSXmlGeneration methodsFor: 'recovered'!
use
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) encodingStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SstSoapEncodedString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := SstWSToolsUseLiteralString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20010df8; bytecode file offset 0x71edc"
!SstWSXmlGeneration methodsFor: 'recovered'!
createSchemaFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtXmlSchema.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (self) schemaNamespaceFor: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) targetNamespace: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := AbtXmlSchema.
    recoveredValue8 := (recoveredValue7) defaultNamespace.
    (recoveredValue6) declarePrefix: ('xsd') uri: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"xxx_dyn.ic method 0x20012540; bytecode file offset 0x73614"
!SstWSXmlGeneration methodsFor: 'recovered'!
importUrlFor: recoveredArg1 type: recoveredArg2
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SstWSToolsDefaultHttpServerLocation.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20012614; bytecode file offset 0x736ec"
!SstWSXmlGeneration methodsFor: 'recovered'!
createTypesForClass: recoveredArg1 in: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSchemaFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addToTypes: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetNamespace.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlDefaultNamespacePrefix.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetNamespace.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) declarePrefix: (recoveredStack1) uri: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001301c; bytecode file offset 0x74104"
!SstWSXmlGeneration methodsFor: 'recovered'!
createPortTypesForClass: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SstWsdlPortType.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) name.
    recoveredValue5 := SstWSToolsPortTypeString.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := (recoveredValue2) name: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    (self) createOperationsForPortType: (recoveredValue8) fromClass: (recoveredValue9) in: (recoveredValue10).
    recoveredValue11 := OrderedCollection.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue11) with: (recoveredValue12).
    ^recoveredValue13
! !

"xxx_dyn.ic method 0x20013b90; bytecode file offset 0x74c7c"
!SstWSXmlGeneration methodsFor: 'recovered'!
createWSObjectWithDefaultNamespaces
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SstWsdlDefinitions.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SstSoapDefaultWsdlNamespace.
    (recoveredValue2) declarePrefix: ('') uri: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := SstWSToolsXsdString.
    recoveredValue6 := AbtXmlSchemaComponent.
    recoveredValue7 := (recoveredValue6) defaultNamespace.
    (recoveredValue4) declarePrefix: (recoveredValue5) uri: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := SstWSToolsSoapString.
    recoveredValue10 := SstSoapDefaultWsdlSoapNamespace.
    (recoveredValue8) declarePrefix: (recoveredValue9) uri: (recoveredValue10).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200150f0; bytecode file offset 0x761dc"
!SstWSXmlGeneration methodsFor: 'recovered'!
createProviderDescriptorFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SstWSProviderDescriptor.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) type: ('SmalltalkProvider').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) baseNameFrom: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue4) className: (recoveredValue7).
    recoveredValue8 := SstWSToolsDefaultCreationMethod.
    (recoveredValue2) creationMethod: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal1.
    (self) createProviderOperationsFor: (recoveredValue9) in: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"xxx_dyn.ic method 0x20015ce8; bytecode file offset 0x76dbc"
!SstWSXmlGeneration methodsFor: 'recovered'!
baseNameFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SstWSToolsDashInterfaceString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20016a40; bytecode file offset 0x77b30"
!SstWSXmlGeneration methodsFor: 'recovered'!
createPortForBinding: recoveredArg1 in: recoveredArg2 baseName: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SstWsdlPort.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := SstWSToolsPortString.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    (recoveredValue3) name: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) binding: (recoveredValue8).
    recoveredLocal1 := recoveredValue2.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := SstWsdlPortSoapExtension.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue10) new: (recoveredValue11).
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := SstWSToolsDefaultServerLocation.
    recoveredValue15 := SstWSToolsDefaultServletName.
    recoveredValue16 := (recoveredValue14) , (recoveredValue15).
    (recoveredValue13) location: (recoveredValue16).
    (recoveredValue9) addExtension: (recoveredValue12).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"xxx_dyn.ic method 0x20017cbc; bytecode file offset 0x78db0"
!SstWSXmlGeneration methodsFor: 'recovered'!
createDeploymentObjectFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SstWSDeploymentDescriptor.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SstWSToolsDefaultNamespacePrefix.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) baseNameFrom: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) asString.
    recoveredValue8 := (recoveredValue4) , (recoveredValue7).
    (recoveredValue3) targetNamespace: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) createServicesDescriptorFor: (recoveredValue9).
    (recoveredValue2) servicesDescriptor: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) targetNamespace.
    recoveredValue14 := (recoveredValue13) abtXmlDefaultNamespacePrefix.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) targetNamespace.
    (recoveredValue11) declarePrefix: (recoveredValue14) uri: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"xxx_dyn.ic method 0x20017d1c; bytecode file offset 0x78e10"
!SstWSXmlGeneration methodsFor: 'recovered'!
createServiceDescriptorFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := SstWSServiceDescriptor.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SstWSToolsDefaultServiceClass.
    recoveredValue5 := (recoveredValue4) abrAsClass.
    (recoveredValue3) serviceInterfaceClass: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) name.
    recoveredValue9 := (self) wsdlImplementationNamespaceFor: (recoveredValue8).
    (recoveredValue6) namespace: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) name.
    recoveredValue13 := (recoveredValue12) asString.
    (recoveredValue10) name: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (self) createProviderDescriptorFor: (recoveredValue14).
    (recoveredValue2) provider: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"xxx_dyn.ic method 0x2001b09c; bytecode file offset 0x7c17c"
!SstWSXmlGeneration methodsFor: 'recovered'!
fullPathFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePath.
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
            recoveredStack0 := (recoveredStack0) filePath.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparator.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparatorString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001bc1c; bytecode file offset 0x7cd10"
!SstWSXmlGeneration methodsFor: 'recovered'!
createDeploymentDescriptorForInterface: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := SstWSDeploymentDescriptor.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SstWSToolsDefaultNamespacePrefix.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) baseNameFrom: (recoveredValue5).
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    (recoveredValue3) targetNamespace: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) targetNamespace.
    recoveredValue11 := (recoveredValue10) abtXmlDefaultNamespacePrefix.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) targetNamespace.
    (recoveredValue8) declarePrefix: (recoveredValue11) uri: (recoveredValue13).
    recoveredValue14 := recoveredValue2.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) targetNamespace.
    recoveredValue18 := (recoveredValue15) prefixForURI: (recoveredValue17).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) targetNamespace.
    (recoveredValue14) declarePrefix: (recoveredValue18) uri: (recoveredValue20).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (self) createServicesDescriptorFor: (recoveredValue21).
    (recoveredValue2) servicesDescriptor: (recoveredValue22).
    recoveredValue23 := recoveredLocal1.
    ^recoveredValue23
! !

"xxx_dyn.ic method 0x2001bfb4; bytecode file offset 0x7d0a8"
!SstWSXmlGeneration methodsFor: 'recovered'!
createServicesDescriptorFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstWSServicesDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) baseNameFrom: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := SstWSToolsDefaultWsdlFilenameExtension.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) importUrlFor: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) addWsdlUrl: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) createServiceDescriptorFor: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) addService: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMappingSpecFor: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseNameFrom: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := SstWSToolsDefaultMappingSpecExtension.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) importUrlFor: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) addMappingSpecUrl: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001e358; bytecode file offset 0x7f444"
!SstWSXmlGeneration methodsFor: 'recovered'!
generateServiceFilesForClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createInterfaceObjectForClass: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := SstWSToolsDashInterfaceString.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := SstWSToolsDefaultWsdlFilenameExtension.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    recoveredValue9 := (self) fullPathFor: (recoveredValue8).
    recoveredValue10 := recoveredLocal1.
    (self) createFileNamed: (recoveredValue9) contents: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) createImplementationObjectForInterface: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := SstWSToolsDefaultWsdlFilenameExtension.
    recoveredValue15 := (recoveredValue13) , (recoveredValue14).
    recoveredValue16 := (self) fullPathFor: (recoveredValue15).
    recoveredValue17 := recoveredLocal1.
    (self) createFileNamed: (recoveredValue16) contents: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (self) createDeploymentObjectFor: (recoveredValue18).
    recoveredLocal1 := recoveredValue19.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := SstWSToolsDefaultXmlFilenameExtension.
    recoveredValue22 := (recoveredValue20) , (recoveredValue21).
    recoveredValue23 := (self) fullPathFor: (recoveredValue22).
    recoveredValue24 := recoveredLocal1.
    (self) createFileNamed: (recoveredValue23) contents: (recoveredValue24).
    ^self
! !

"xxx_dyn.ic method 0x2001ec3c; bytecode file offset 0x7fd1c"
!SstWSXmlGeneration methodsFor: 'recovered'!
createPortsForInterface: recoveredArg1 in: recoveredArg2 baseName: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindings.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 |
    recoveredBlock32Value0 := recoveredLocal1.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    recoveredBlock32Value2 := recoveredArg2.
    recoveredBlock32Value3 := recoveredArg3.
    recoveredBlock32Value4 := (self) createPortForBinding: (recoveredBlock32Value1) in: (recoveredBlock32Value2) baseName: (recoveredBlock32Value3).
    recoveredBlock32Value5 := (recoveredBlock32Value0) add: (recoveredBlock32Value4).
    recoveredBlock32Value5
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x200219b0; bytecode file offset 0x82a9c"
!SstWSXmlGeneration methodsFor: 'recovered'!
createBindingsForInterface: recoveredArg1 in: recoveredArg2 baseName: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800bc4cArg1 :block2800bc4cArg2 | 
    | block2800bc4cValue0 block2800bc4cValue1 block2800bc4cValue2 block2800bc4cValue3 block2800bc4cValue4 |
    block2800bc4cValue0 := block2800bc4cArg1.
    block2800bc4cValue1 := (block2800bc4cValue0) name.
    block2800bc4cValue2 := block2800bc4cArg2.
    block2800bc4cValue3 := (block2800bc4cValue2) name.
    block2800bc4cValue4 := (block2800bc4cValue1) < (block2800bc4cValue3).
    block2800bc4cValue4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) portTypes.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 |
    recoveredBlock41Value0 := recoveredLocal2.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := recoveredArg2.
    recoveredBlock41Value3 := recoveredArg3.
    recoveredBlock41Value4 := (self) createBindingForPortType: (recoveredBlock41Value1) in: (recoveredBlock41Value2) baseName: (recoveredBlock41Value3).
    recoveredBlock41Value5 := (recoveredBlock41Value0) add: (recoveredBlock41Value4).
    recoveredBlock41Value5
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20021a28; bytecode file offset 0x82b24"
!SstWSXmlGeneration methodsFor: 'recovered'!
createInterfaceObjectForClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := recoveredLocal5.
    recoveredValue3 := (self) wsdlInterfaceNamespaceFor: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) createWSObjectWithDefaultNamespaces.
    recoveredValue5 := recoveredValue4.
    recoveredLocal6 := recoveredValue5.
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := SstWSToolsDashInterfaceString.
    recoveredValue9 := (recoveredValue7) , (recoveredValue8).
    (recoveredValue6) name: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    (recoveredValue4) namespace: (recoveredValue10).
    recoveredValue11 := recoveredLocal6.
    recoveredValue12 := SstWSToolsTnsString.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue11) declarePrefix: (recoveredValue12) uri: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredLocal6.
    (self) createTypesForClass: (recoveredValue14) in: (recoveredValue15).
    recoveredValue16 := recoveredLocal6.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredLocal6.
    recoveredValue20 := (self) createPortTypesForClass: (recoveredValue18) in: (recoveredValue19).
    (recoveredValue17) portTypes: (recoveredValue20).
    recoveredValue21 := recoveredLocal6.
    recoveredValue22 := recoveredLocal6.
    recoveredValue23 := recoveredLocal5.
    recoveredValue24 := (self) createBindingsForInterface: (recoveredValue21) in: (recoveredValue22) baseName: (recoveredValue23).
    (recoveredValue16) bindings: (recoveredValue24).
    recoveredValue25 := recoveredLocal6.
    ^recoveredValue25
! !

"xxx_dyn.ic method 0x20021f94; bytecode file offset 0x83078"
!SstWSXmlGeneration methodsFor: 'recovered'!
operationNameFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new: (10).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := $:.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack1 ~~ recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 58] ifFalse: [recoveredBlock18PC := 32].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg2.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack3 := recoveredArg1.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) size.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) ~= (recoveredBlock18Stack3).
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 44] ifFalse: [recoveredBlock18PC := 54].
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack2 := $_.
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) nextPut: (recoveredBlock18Stack2).
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) nextPut: (recoveredBlock18Stack2).
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) doWithIndex: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) contents.
    ^recoveredValue7
! !

"xxx_dyn.ic method 0x20022008; bytecode file offset 0x830f0"
!SstWSXmlGeneration methodsFor: 'recovered'!
selectorFromWsdlOperation: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) input.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) input.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := ':'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 'with:'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 50] ifFalse: [recoveredLocal1 := nil. recoveredPC := 70]] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20022d8c; bytecode file offset 0x83e90"
!SstWSXmlGeneration methodsFor: 'recovered'!
generateServiceFilesForInterface: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIsWsdlObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) newWsdlParser.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) parseURI: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlMappedObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) sourceUrl: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIsWsdlObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Invalid argument passed to code generator'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseNameFrom: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) createImplementationObjectForInterface: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := SstWSToolsDashImplementationString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := SstWSToolsDefaultWsdlFilenameExtension.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) fullPathFor: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) createFileNamed: (recoveredStack1) contents: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDeploymentDescriptorForInterface: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := SstWSToolsDefaultXmlFilenameExtension.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) fullPathFor: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) createFileNamed: (recoveredStack1) contents: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20023524; bytecode file offset 0x84618"
!SstWSXmlGeneration methodsFor: 'recovered'!
createProviderOperationsFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIsWsdlObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) createProviderOperationsForInterface: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaNamespaceFor: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlDefaultNamespacePrefix.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsToBeMappedFor: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Local1 recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 recoveredBlock44Value7 recoveredBlock44Value8 recoveredBlock44Value9 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) , (':').
    recoveredBlock44Value2 := recoveredBlock44Arg1.
    recoveredBlock44Value3 := (self) operationNameFor: (recoveredBlock44Value2).
    recoveredBlock44Value4 := (recoveredBlock44Value1) , (recoveredBlock44Value3).
    recoveredBlock44Local1 := recoveredBlock44Value4.
    recoveredBlock44Value5 := recoveredArg2.
    recoveredBlock44Value6 := recoveredBlock44Local1.
    recoveredBlock44Value7 := recoveredBlock44Arg1.
    recoveredBlock44Value8 := (self) selectorNameFrom: (recoveredBlock44Value7).
    recoveredBlock44Value9 := (recoveredBlock44Value5) addMethodNamed: (recoveredBlock44Value6) selector: (recoveredBlock44Value8).
    recoveredBlock44Value9
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20023a44; bytecode file offset 0x84b38"
!SstWSXmlGeneration methodsFor: 'recovered'!
createProviderOperationsForInterface: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) portTypes.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) namespace.
    recoveredLocal3 := recoveredBlock14Value1.
    recoveredBlock14Value2 := recoveredArg1.
    recoveredBlock14Value3 := recoveredLocal3.
    recoveredBlock14Value4 := (recoveredBlock14Value2) prefixForURI: (recoveredBlock14Value3).
    recoveredLocal1 := recoveredBlock14Value4.
    recoveredBlock14Value5 := recoveredBlock14Arg1.
    recoveredBlock14Value6 := (recoveredBlock14Value5) operations.
    recoveredBlock14Value7 := [:recoveredBlock14Block39Arg1 | 
    | recoveredBlock14Block39Value0 recoveredBlock14Block39Value1 recoveredBlock14Block39Value2 recoveredBlock14Block39Value3 recoveredBlock14Block39Value4 recoveredBlock14Block39Value5 recoveredBlock14Block39Value6 recoveredBlock14Block39Value7 recoveredBlock14Block39Value8 recoveredBlock14Block39Value9 |
    recoveredBlock14Block39Value0 := recoveredLocal1.
    recoveredBlock14Block39Value1 := (recoveredBlock14Block39Value0) , (':').
    recoveredBlock14Block39Value2 := recoveredBlock14Block39Arg1.
    recoveredBlock14Block39Value3 := (recoveredBlock14Block39Value2) name.
    recoveredBlock14Block39Value4 := (recoveredBlock14Block39Value1) , (recoveredBlock14Block39Value3).
    recoveredLocal2 := recoveredBlock14Block39Value4.
    recoveredBlock14Block39Value5 := recoveredArg2.
    recoveredBlock14Block39Value6 := recoveredLocal2.
    recoveredBlock14Block39Value7 := recoveredBlock14Block39Arg1.
    recoveredBlock14Block39Value8 := (self) selectorFromWsdlOperation: (recoveredBlock14Block39Value7).
    recoveredBlock14Block39Value9 := (recoveredBlock14Block39Value5) addMethodNamed: (recoveredBlock14Block39Value6) selector: (recoveredBlock14Block39Value8).
    recoveredBlock14Block39Value9
].
    recoveredBlock14Value8 := (recoveredBlock14Value6) do: (recoveredBlock14Value7).
    recoveredBlock14Value8
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x20028214; bytecode file offset 0x89328"
!SstWSXmlGeneration methodsFor: 'recovered'!
createFileNamed: recoveredArg1 contents: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlPrintString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := AbtFileSpec.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileSpec: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 recoveredBlock37Value7 recoveredBlock37Value8 recoveredBlock37Value9 recoveredBlock37Value10 recoveredBlock37Value11 recoveredBlock37Value12 recoveredBlock37Value13 recoveredBlock37Value14 recoveredBlock37Value15 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredBlock37Value0.
    recoveredBlock37Value2 := SstWSToolsDefaultXmlDeclaration.
    (recoveredBlock37Value1) nextPutAll: (recoveredBlock37Value2).
    (recoveredBlock37Value0) cr.
    recoveredBlock37Value3 := recoveredBlock37Arg1.
    recoveredBlock37Value4 := SstWSToolsHeaderComment.
    recoveredBlock37Value5 := Date.
    recoveredBlock37Value6 := (recoveredBlock37Value5) today.
    recoveredBlock37Value7 := (recoveredBlock37Value6) printString.
    recoveredBlock37Value8 := Time.
    recoveredBlock37Value9 := (recoveredBlock37Value8) now.
    recoveredBlock37Value10 := (recoveredBlock37Value9) printString.
    recoveredBlock37Value11 := (recoveredBlock37Value4) bindWith: (recoveredBlock37Value7) with: (recoveredBlock37Value10).
    (recoveredBlock37Value3) nextPutAll: (recoveredBlock37Value11).
    recoveredBlock37Value12 := recoveredBlock37Arg1.
    recoveredBlock37Value13 := recoveredBlock37Value12.
    (recoveredBlock37Value13) cr.
    recoveredBlock37Value14 := recoveredLocal2.
    recoveredBlock37Value15 := (recoveredBlock37Value12) nextPutAll: (recoveredBlock37Value14).
    recoveredBlock37Value15
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := (recoveredBlock81Value0) printString.
    recoveredBlock81Value2 := (self) error: (recoveredBlock81Value1).
    recoveredBlock81Value2
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) withCfsStreamNewDo: (recoveredStack2) ifOpenError: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'Created file named %1'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20029c1c; bytecode file offset 0x8ad24"
!SstWSXmlGeneration methodsFor: 'recovered'!
createOperationsForPortType: recoveredArg1 fromClass: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) encodingStrategy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) methodsToBeMappedFor: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Local4 recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 recoveredBlock13Value10 recoveredBlock13Value11 recoveredBlock13Value12 recoveredBlock13Value13 recoveredBlock13Value14 recoveredBlock13Value15 recoveredBlock13Value16 recoveredBlock13Value17 recoveredBlock13Value18 recoveredBlock13Value19 recoveredBlock13Value20 recoveredBlock13Value21 recoveredBlock13Value22 recoveredBlock13Value23 recoveredBlock13Value24 recoveredBlock13Value25 recoveredBlock13Value26 recoveredBlock13Value27 recoveredBlock13Value28 recoveredBlock13Value29 recoveredBlock13Value30 recoveredBlock13Value31 recoveredBlock13Value32 recoveredBlock13Value33 recoveredBlock13Value34 recoveredBlock13Value35 recoveredBlock13Value36 recoveredBlock13Value37 recoveredBlock13Value38 recoveredBlock13Value39 recoveredBlock13Value40 recoveredBlock13Value41 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (self) operationNameFor: (recoveredBlock13Value0).
    recoveredBlock13Local4 := recoveredBlock13Value1.
    recoveredBlock13Value2 := SstWsdlOperation.
    recoveredBlock13Value3 := recoveredArg3.
    recoveredBlock13Value4 := (recoveredBlock13Value2) new: (recoveredBlock13Value3).
    recoveredBlock13Value5 := recoveredBlock13Value4.
    recoveredBlock13Local3 := recoveredBlock13Value5.
    recoveredBlock13Value6 := recoveredBlock13Local4.
    (recoveredBlock13Value4) name: (recoveredBlock13Value6).
    recoveredBlock13Value7 := SstWsdlMessage.
    recoveredBlock13Value8 := recoveredArg3.
    recoveredBlock13Value9 := (recoveredBlock13Value7) new: (recoveredBlock13Value8).
    recoveredBlock13Value10 := recoveredBlock13Value9.
    recoveredBlock13Local2 := recoveredBlock13Value10.
    recoveredBlock13Value11 := recoveredBlock13Local4.
    recoveredBlock13Value12 := (self) inputMessageNameForOperation: (recoveredBlock13Value11).
    (recoveredBlock13Value9) name: (recoveredBlock13Value12).
    recoveredBlock13Value13 := recoveredArg3.
    recoveredBlock13Value14 := (recoveredBlock13Value13) messages.
    recoveredBlock13Value15 := recoveredBlock13Local2.
    (recoveredBlock13Value14) add: (recoveredBlock13Value15).
    recoveredBlock13Value16 := recoveredBlock13Local3.
    recoveredBlock13Value17 := recoveredBlock13Local2.
    (recoveredBlock13Value16) input: (recoveredBlock13Value17).
    recoveredBlock13Value18 := recoveredLocal1.
    recoveredBlock13Value19 := recoveredBlock13Local2.
    recoveredBlock13Value20 := recoveredArg2.
    recoveredBlock13Value21 := recoveredBlock13Arg1.
    recoveredBlock13Value22 := recoveredArg3.
    (recoveredBlock13Value18) createInputPartsForMessage: (recoveredBlock13Value19) class: (recoveredBlock13Value20) method: (recoveredBlock13Value21) definitions: (recoveredBlock13Value22).
    recoveredBlock13Value23 := SstWsdlMessage.
    recoveredBlock13Value24 := recoveredArg3.
    recoveredBlock13Value25 := (recoveredBlock13Value23) new: (recoveredBlock13Value24).
    recoveredBlock13Value26 := recoveredBlock13Value25.
    recoveredBlock13Local1 := recoveredBlock13Value26.
    recoveredBlock13Value27 := recoveredBlock13Local4.
    recoveredBlock13Value28 := (self) outputMessageNameForOperation: (recoveredBlock13Value27).
    (recoveredBlock13Value25) name: (recoveredBlock13Value28).
    recoveredBlock13Value29 := recoveredLocal1.
    recoveredBlock13Value30 := recoveredBlock13Local1.
    recoveredBlock13Value31 := recoveredArg2.
    recoveredBlock13Value32 := recoveredBlock13Arg1.
    recoveredBlock13Value33 := recoveredArg3.
    (recoveredBlock13Value29) createOutputPartsForMessage: (recoveredBlock13Value30) class: (recoveredBlock13Value31) method: (recoveredBlock13Value32) definitions: (recoveredBlock13Value33).
    recoveredBlock13Value34 := recoveredBlock13Local3.
    recoveredBlock13Value35 := recoveredBlock13Local1.
    (recoveredBlock13Value34) output: (recoveredBlock13Value35).
    recoveredBlock13Value36 := recoveredArg1.
    recoveredBlock13Value37 := recoveredBlock13Local3.
    (recoveredBlock13Value36) addOperation: (recoveredBlock13Value37).
    recoveredBlock13Value38 := recoveredArg3.
    recoveredBlock13Value39 := (recoveredBlock13Value38) messages.
    recoveredBlock13Value40 := recoveredBlock13Local1.
    recoveredBlock13Value41 := (recoveredBlock13Value39) add: (recoveredBlock13Value40).
    recoveredBlock13Value41
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x2002c6a0; bytecode file offset 0x8d7ec"
!SstWSXmlGeneration methodsFor: 'recovered'!
createBindingForPortType: recoveredArg1 in: recoveredArg2 baseName: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstWsdlBinding.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := SstWSToolsBindingString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := SstWsdlBindingSoapExtension.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) style.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack3) style: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := SstWsdlBindingSoapExtension.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) httpTransport.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) transport: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) addExtension: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) soapBodyNamespaceFor: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOperations.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:block2800c1ecArg1 :block2800c1ecArg2 | 
    | block2800c1ecValue0 block2800c1ecValue1 block2800c1ecValue2 block2800c1ecValue3 block2800c1ecValue4 |
    block2800c1ecValue0 := block2800c1ecArg1.
    block2800c1ecValue1 := (block2800c1ecValue0) name.
    block2800c1ecValue2 := block2800c1ecArg2.
    block2800c1ecValue3 := (block2800c1ecValue2) name.
    block2800c1ecValue4 := (block2800c1ecValue1) < (block2800c1ecValue3).
    block2800c1ecValue4
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Local1 recoveredBlock86Local2 recoveredBlock86Local3 recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 recoveredBlock86Value5 recoveredBlock86Value6 recoveredBlock86Value7 recoveredBlock86Value8 recoveredBlock86Value9 recoveredBlock86Value10 recoveredBlock86Value11 recoveredBlock86Value12 recoveredBlock86Value13 recoveredBlock86Value14 recoveredBlock86Value15 recoveredBlock86Value16 recoveredBlock86Value17 recoveredBlock86Value18 recoveredBlock86Value19 recoveredBlock86Value20 recoveredBlock86Value21 recoveredBlock86Value22 recoveredBlock86Value23 recoveredBlock86Value24 recoveredBlock86Value25 recoveredBlock86Value26 recoveredBlock86Value27 recoveredBlock86Value28 recoveredBlock86Value29 recoveredBlock86Value30 recoveredBlock86Value31 recoveredBlock86Value32 recoveredBlock86Value33 recoveredBlock86Value34 |
    recoveredBlock86Value0 := SstWsdlBindingOperation.
    recoveredBlock86Value1 := recoveredArg2.
    recoveredBlock86Value2 := (recoveredBlock86Value0) new: (recoveredBlock86Value1).
    recoveredBlock86Value3 := recoveredBlock86Value2.
    recoveredBlock86Local3 := recoveredBlock86Value3.
    recoveredBlock86Value4 := recoveredBlock86Arg1.
    recoveredBlock86Value5 := (recoveredBlock86Value4) name.
    (recoveredBlock86Value2) name: (recoveredBlock86Value5).
    recoveredBlock86Value6 := SstWsdlMessageSoapBodyExtension.
    recoveredBlock86Value7 := (recoveredBlock86Value6) new.
    recoveredBlock86Value8 := recoveredBlock86Value7.
    recoveredBlock86Local2 := recoveredBlock86Value8.
    recoveredBlock86Value9 := recoveredBlock86Value7.
    recoveredBlock86Value10 := (self) use.
    (recoveredBlock86Value9) use: (recoveredBlock86Value10).
    recoveredBlock86Value11 := recoveredBlock86Value7.
    recoveredBlock86Value12 := recoveredLocal2.
    (recoveredBlock86Value11) namespace: (recoveredBlock86Value12).
    recoveredBlock86Value13 := (self) encodingStyle.
    (recoveredBlock86Value7) encodingStyle: (recoveredBlock86Value13).
    recoveredBlock86Value14 := SstWsdlObject.
    recoveredBlock86Value15 := recoveredArg2.
    recoveredBlock86Value16 := (recoveredBlock86Value14) new: (recoveredBlock86Value15).
    recoveredBlock86Value17 := recoveredBlock86Value16.
    recoveredBlock86Local1 := recoveredBlock86Value17.
    recoveredBlock86Value18 := recoveredBlock86Local2.
    (recoveredBlock86Value16) addExtension: (recoveredBlock86Value18).
    recoveredBlock86Value19 := recoveredBlock86Local3.
    recoveredBlock86Value20 := recoveredBlock86Value19.
    recoveredBlock86Value21 := recoveredBlock86Local1.
    (recoveredBlock86Value20) input: (recoveredBlock86Value21).
    recoveredBlock86Value22 := recoveredBlock86Local1.
    (recoveredBlock86Value19) output: (recoveredBlock86Value22).
    recoveredBlock86Value23 := recoveredBlock86Local3.
    recoveredBlock86Value24 := SstWsdlOperationSoapExtension.
    recoveredBlock86Value25 := recoveredArg2.
    recoveredBlock86Value26 := (recoveredBlock86Value25) targetNamespace.
    recoveredBlock86Value27 := (recoveredBlock86Value26) , ('/').
    recoveredBlock86Value28 := recoveredBlock86Arg1.
    recoveredBlock86Value29 := (recoveredBlock86Value28) name.
    recoveredBlock86Value30 := (recoveredBlock86Value27) , (recoveredBlock86Value29).
    recoveredBlock86Value31 := (recoveredBlock86Value24) soapAction: (recoveredBlock86Value30).
    (recoveredBlock86Value23) addExtension: (recoveredBlock86Value31).
    recoveredBlock86Value32 := recoveredLocal3.
    recoveredBlock86Value33 := recoveredBlock86Local3.
    recoveredBlock86Value34 := (recoveredBlock86Value32) addOperation: (recoveredBlock86Value33).
    recoveredBlock86Value34
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002cf44; bytecode file offset 0x8e084"
!SstWSXmlGeneration methodsFor: 'recovered'!
createImplementationObjectForInterface: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) baseNameFrom: (recoveredValue0).
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) targetNamespace.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := (self) wsdlImplementationNamespaceFor: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := (self) createWSObjectWithDefaultNamespaces.
    recoveredValue7 := recoveredValue6.
    recoveredLocal5 := recoveredValue7.
    recoveredValue8 := recoveredValue6.
    recoveredValue9 := recoveredLocal4.
    recoveredValue10 := SstWSToolsDashImplementationString.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    (recoveredValue8) name: (recoveredValue11).
    recoveredValue12 := recoveredLocal3.
    (recoveredValue6) namespace: (recoveredValue12).
    recoveredValue13 := recoveredLocal5.
    recoveredValue14 := recoveredValue13.
    recoveredValue15 := SstWSToolsVastifString.
    recoveredValue16 := recoveredLocal2.
    (recoveredValue14) declarePrefix: (recoveredValue15) uri: (recoveredValue16).
    recoveredValue17 := SstWSToolsTnsString.
    recoveredValue18 := recoveredLocal3.
    (recoveredValue13) declarePrefix: (recoveredValue17) uri: (recoveredValue18).
    recoveredValue19 := recoveredLocal5.
    recoveredValue20 := SstWsdlImport.
    recoveredValue21 := recoveredLocal5.
    recoveredValue22 := (recoveredValue20) new: (recoveredValue21).
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal2.
    (recoveredValue23) namespace: (recoveredValue24).
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := (recoveredValue25) sourceUrl.
    recoveredValue27 := [
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 |
    recoveredBlock86Value0 := recoveredArg1.
    recoveredBlock86Value1 := (recoveredBlock86Value0) targetNamespace.
    recoveredBlock86Value2 := (self) fileNameFrom: (recoveredBlock86Value1).
    recoveredBlock86Value3 := SstWSToolsDefaultWsdlFilenameExtension.
    recoveredBlock86Value4 := (self) importUrlFor: (recoveredBlock86Value2) type: (recoveredBlock86Value3).
    recoveredBlock86Value4
].
    recoveredValue28 := (recoveredValue26) ifNil: (recoveredValue27).
    recoveredValue29 := (recoveredValue22) location: (recoveredValue28).
    (recoveredValue19) addImport: (recoveredValue29).
    recoveredValue30 := SstWsdlImplementation.
    recoveredValue31 := recoveredLocal5.
    recoveredValue32 := (recoveredValue30) new: (recoveredValue31).
    recoveredValue33 := recoveredValue32.
    recoveredValue34 := recoveredLocal4.
    (recoveredValue33) name: (recoveredValue34).
    recoveredValue35 := SstWSToolsDefaultDocString.
    recoveredValue36 := recoveredLocal4.
    recoveredValue37 := (recoveredValue35) bindWith: (recoveredValue36).
    recoveredValue38 := (recoveredValue32) documentation: (recoveredValue37).
    recoveredLocal1 := recoveredValue38.
    recoveredValue39 := recoveredLocal5.
    recoveredValue40 := recoveredArg1.
    recoveredValue41 := recoveredLocal5.
    recoveredValue42 := recoveredLocal4.
    recoveredValue43 := (self) createBindingsForInterface: (recoveredValue40) in: (recoveredValue41) baseName: (recoveredValue42).
    (recoveredValue39) bindings: (recoveredValue43).
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := recoveredArg1.
    recoveredValue46 := recoveredLocal5.
    recoveredValue47 := recoveredLocal4.
    recoveredValue48 := (self) createPortsForInterface: (recoveredValue45) in: (recoveredValue46) baseName: (recoveredValue47).
    (recoveredValue44) ports: (recoveredValue48).
    recoveredValue49 := recoveredLocal5.
    recoveredValue50 := OrderedCollection.
    recoveredValue51 := recoveredLocal1.
    recoveredValue52 := (recoveredValue50) with: (recoveredValue51).
    (recoveredValue49) services: (recoveredValue52).
    recoveredValue53 := recoveredLocal5.
    ^recoveredValue53
! !

