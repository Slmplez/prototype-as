"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009c5c; bytecode file offset 0x908be4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
typeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) itemTypeLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001368c; bytecode file offset 0x912098"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIAtomicSoftwareComponent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a138; bytecode file offset 0x92209c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
getXMLType
    ^'AUTOSAR_AtomicSoftwareComponent'
! !

"ASDBase.ic method 0x2001b920; bytecode file offset 0x92209c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
itemTypeLabel
    ^'Software Component'
! !

"ASDBase.ic method 0x2001dbf4; bytecode file offset 0x92209c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
sourceModel
    ^'atomicsoftwarecomponent'
! !

"ASDBase.ic method 0x2001e644; bytecode file offset 0x92209c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
defaultProcessName
    ^'runnable'
! !

"ASDBase.ic method 0x2001fcb8; bytecode file offset 0x92209c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
getComponentType
    ^'AUTOSAR_AtomicSoftwareComponent'
! !

"ASDBase.ic method 0x20022058; bytecode file offset 0x92209c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
getComponentTag
    ^'AtomicSoftwareComponent'
! !

"ASDBase.ic method 0x200222f8; bytecode file offset 0x92209c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
iconName
    ^'ComponentsAtomicSoftwareComponent'
! !

"ASDBase.ic method 0x20026b9c; bytecode file offset 0x923928"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
editorIconName
    ^'ComponentsAtomicSoftwareComponent'
! !

"ASDBase.ic method 0x2002709c; bytecode file offset 0x923a44"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableExternalMappingSourceObjects
    | recoveredValue0 |
    recoveredValue0 := (self) variableMappingSourceObjects: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200273c8; bytecode file offset 0x923d40"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableMappingSourceObjects
    | recoveredValue0 |
    recoveredValue0 := (self) variableMappingSourceObjects: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005f630; bytecode file offset 0x95c4f4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableInternalMappingsUpdateProperties
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) variableInternalMappingType.
    recoveredValue2 := (self) mappingsUpdatePropertiesForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f860; bytecode file offset 0x95c4f4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableInternalMappings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) variableInternalMappingType.
    recoveredValue2 := (self) elementMappingsAtType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f9b4; bytecode file offset 0x95c4f4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableExternalMappingsUpdateProperties
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) variableExternalMappingType.
    recoveredValue2 := (self) mappingsUpdatePropertiesForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fb08; bytecode file offset 0x95c4f4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
parameterMappingsUpdateProperties
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) parameterMappingType.
    recoveredValue2 := (self) mappingsUpdatePropertiesForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fb44; bytecode file offset 0x95c4f4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableExternalMappings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) variableExternalMappingType.
    recoveredValue2 := (self) elementMappingsAtType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20074c04; bytecode file offset 0x9757c8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
isRunnableClass
    ^true
! !

"ASDBase.ic method 0x2007503c; bytecode file offset 0x9757c8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
isAtomicSoftwareComponent
    ^true
! !

"ASDBase.ic method 0x2007dd8c; bytecode file offset 0x97c330"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
isSgClassInterfaceProvidePort
    ^false
! !

"ASDBase.ic method 0x2007ec4c; bytecode file offset 0x97c330"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
isSgClassInterfaceRequirePort
    ^false
! !

"ASDBase.ic method 0x2008147c; bytecode file offset 0x97dd48"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
createModelManagerSpecification: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ARAtomicSoftwareComponentManager.
    recoveredValue1 := (recoveredValue0) createForClass: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009c9f8; bytecode file offset 0x999628"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
initEventSpecification
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AREventSpecification.
    recoveredValue1 := (recoveredValue0) create.
    (self) eventSpecification: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a24d0; bytecode file offset 0x99ee44"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
allMappingsCopyForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDMappingObject.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) mappingsUpdatePropertiesForType: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) copyMappings: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a2548; bytecode file offset 0x99ee44"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsCopyForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDMappingObject.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) elementMappingsAtType: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) copyMappings: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a2d48; bytecode file offset 0x99f654"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
readMappingFromXMLFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDXMLSwcMappingImportController.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) init.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) importFromFile: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a8ed0; bytecode file offset 0x9a57cc"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
importMappingsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) importMappingsFrom: (recoveredValue0) toTableWidgets: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ac0c0; bytecode file offset 0x9a8980"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
exportMappingsIntoFileName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) exportUtilClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) exportFor: (self) into: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ad8b8; bytecode file offset 0x9aa218"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
writeXMLElementMapping: recoveredArg1 writer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) writeXMLElementMapping: (recoveredValue0) writer: (recoveredValue1) includeOIDs: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b5a28; bytecode file offset 0x9b2324"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mdlClassTypeAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super mdlClassTypeAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgOptSoftwareComponent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bb308; bytecode file offset 0x9b7c68"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
xmlExternalVariableMappings: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) variableExternalMappingType.
    (self) xmlMappings: (recoveredValue0) type: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bb330; bytecode file offset 0x9b7c68"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
xmlParameterMappings: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) parameterMappingType.
    (self) xmlMappings: (recoveredValue0) type: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bb3a8; bytecode file offset 0x9b7c68"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
xmlInternalVariableMappings: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) variableInternalMappingType.
    (self) xmlMappings: (recoveredValue0) type: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c787c; bytecode file offset 0x9c4150"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
eventSpecification: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eventSpecification := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c78d8; bytecode file offset 0x9c4194"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
realizedInterfaces: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    realizedInterfaces := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cb800; bytecode file offset 0x9c80c4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
possibleSignatureTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := SGMethod.
    recoveredValue2 := ARRunnable.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d004c; bytecode file offset 0x9cc948"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
processClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kli') == ('VariantPrototype').
    recoveredValue1 := ARRunnable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200de260; bytecode file offset 0x9dab5c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
writeXMLMainToFiles: recoveredArg1 baseName: recoveredArg2 xmlExt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) writeXMLMainToFiles: (recoveredValue0) baseName: (recoveredValue1) xmlExt: (recoveredValue2) cryptNode: ('/ComponentMain/AtomicSoftwareComponent').
    ^recoveredValue3
! !

"ASDBase.ic method 0x20106fbc; bytecode file offset 0xa03874"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
eventSpecification
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := eventSpecification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initEventSpecification.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := eventSpecification.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010c04c; bytecode file offset 0xa08928"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initEventSpecification.
    (self) checkSpecification.
    ^self
! !

"ASDBase.ic method 0x2012b220; bytecode file offset 0xa27adc"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
realizedInterfaces
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := realizedInterfaces.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            realizedInterfaces := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := realizedInterfaces.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012b244; bytecode file offset 0xa27b08"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
parameterMappings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappedCalibrationParameter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) convertMappedCalibrationParameter.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterMappingType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappingsAtType: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e300; bytecode file offset 0xa2abd4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
checkSpecification
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := ARBdSpecification.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) addSpecificationOfType: (recoveredStack1) public: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131f40; bytecode file offset 0xa2e804"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsForType: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterMappingType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterMappings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableMappingsForType: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013a614; bytecode file offset 0xa36f4c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
optionAREnableGlobalElementSupport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'AREnableGlobalElementSupport'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015c528; bytecode file offset 0xa58dfc"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
getExportController
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ASDXMLExportController.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := MainController.
    recoveredValue3 := ASDXMLExportParameters.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue4) initForMappingExport.
    recoveredValue6 := (recoveredValue1) initHeadlessOn: (recoveredValue2) options: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) xmlExt: ('xml').
    ^recoveredValue7
! !

"ASDBase.ic method 0x2017cb2c; bytecode file offset 0xa793f0"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
elementMappingsAtType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsInitializeForType: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018e624; bytecode file offset 0xa8aee4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
elementMappings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := elementMappings.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Dictionary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    elementMappings := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := elementMappings.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20190b24; bytecode file offset 0xa8d3f8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
possibleSpecifications
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalSpecClasses: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := ARBdSpecification.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20194ef4; bytecode file offset 0xa917c0"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
internalWriteXMLSpecifications: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super internalWriteXMLSpecifications: (recoveredValue0).
    recoveredValue1 := ('hw') == ('wb_sifting').
    recoveredValue2 := (self) eventSpecification.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) writeXML: (recoveredValue3) item: (self).
    ^self
! !

"ASDBase.ic method 0x201a1934; bytecode file offset 0xa9e200"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
allPrimaryMappedVariablesDictionary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allPrimaryMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d29a8Arg1 | 
    | block280d29a8Stack0 block280d29a8Stack1 block280d29a8Stack2 block280d29a8Stack3 block280d29a8PC block280d29a8Step block280d29a8Done block280d29a8Result |
    block280d29a8Stack0 := self.
    block280d29a8PC := 4.
    block280d29a8Done := false.
    [block280d29a8Done not] whileTrue: [
        block280d29a8Step := block280d29a8PC.
        block280d29a8Step = 4 ifTrue: [
            block280d29a8Stack1 := block280d29a8Arg1.
            block280d29a8PC := 5.
        ].
        block280d29a8Step = 5 ifTrue: [
            block280d29a8Stack2 := [:block280d29ccArg1 | 
    | block280d29ccValue0 block280d29ccValue1 |
    block280d29ccValue0 := block280d29ccArg1.
    block280d29ccValue1 := (block280d29ccValue0) needsTarget.
    block280d29ccValue1
].
            block280d29a8PC := 7.
        ].
        block280d29a8Step = 7 ifTrue: [
            block280d29a8PC := 13.
        ].
        block280d29a8Step = 13 ifTrue: [
            block280d29a8Stack1 := (block280d29a8Stack1) reject: (block280d29a8Stack2).
            block280d29a8PC := 15.
        ].
        block280d29a8Step = 15 ifTrue: [
            block280d29a8Result := block280d29a8Stack1.
            block280d29a8Done := true.
        ].
    ].
    block280d29a8Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cf320; bytecode file offset 0xacbbec"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
setElementMappings: recoveredArg1 forType: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f1334; bytecode file offset 0xaedc30"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
allInternallyMappedVariablesDictionary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableInternalMappingType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappingsCopyForType: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block280d7ca0Arg1 | 
    | block280d7ca0Stack0 block280d7ca0Stack1 block280d7ca0Stack2 block280d7ca0Stack3 block280d7ca0PC block280d7ca0Step block280d7ca0Done block280d7ca0Result |
    block280d7ca0Stack0 := self.
    block280d7ca0PC := 4.
    block280d7ca0Done := false.
    [block280d7ca0Done not] whileTrue: [
        block280d7ca0Step := block280d7ca0PC.
        block280d7ca0Step = 4 ifTrue: [
            block280d7ca0Stack1 := block280d7ca0Arg1.
            block280d7ca0PC := 5.
        ].
        block280d7ca0Step = 5 ifTrue: [
            block280d7ca0Stack2 := [:block280d7cc4Arg1 | 
    | block280d7cc4Value0 block280d7cc4Value1 |
    block280d7cc4Value0 := block280d7cc4Arg1.
    block280d7cc4Value1 := (block280d7cc4Value0) needsTarget.
    block280d7cc4Value1
].
            block280d7ca0PC := 7.
        ].
        block280d7ca0Step = 7 ifTrue: [
            block280d7ca0PC := 14.
        ].
        block280d7ca0Step = 14 ifTrue: [
            block280d7ca0Stack1 := (block280d7ca0Stack1) reject: (block280d7ca0Stack2).
            block280d7ca0PC := 16.
        ].
        block280d7ca0Step = 16 ifTrue: [
            block280d7ca0Result := block280d7ca0Stack1.
            block280d7ca0Done := true.
        ].
    ].
    block280d7ca0Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f135c; bytecode file offset 0xaedc30"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
allExternallyMappedVariablesDictionary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableExternalMappingType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappingsCopyForType: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block280d7ce8Arg1 | 
    | block280d7ce8Stack0 block280d7ce8Stack1 block280d7ce8Stack2 block280d7ce8Stack3 block280d7ce8PC block280d7ce8Step block280d7ce8Done block280d7ce8Result |
    block280d7ce8Stack0 := self.
    block280d7ce8PC := 4.
    block280d7ce8Done := false.
    [block280d7ce8Done not] whileTrue: [
        block280d7ce8Step := block280d7ce8PC.
        block280d7ce8Step = 4 ifTrue: [
            block280d7ce8Stack1 := block280d7ce8Arg1.
            block280d7ce8PC := 5.
        ].
        block280d7ce8Step = 5 ifTrue: [
            block280d7ce8Stack2 := [:block280d7d0cArg1 | 
    | block280d7d0cValue0 block280d7d0cValue1 |
    block280d7d0cValue0 := block280d7d0cArg1.
    block280d7d0cValue1 := (block280d7d0cValue0) needsTarget.
    block280d7d0cValue1
].
            block280d7ce8PC := 7.
        ].
        block280d7ce8Step = 7 ifTrue: [
            block280d7ce8PC := 14.
        ].
        block280d7ce8Step = 14 ifTrue: [
            block280d7ce8Stack1 := (block280d7ce8Stack1) reject: (block280d7ce8Stack2).
            block280d7ce8PC := 16.
        ].
        block280d7ce8Step = 16 ifTrue: [
            block280d7ce8Result := block280d7ce8Stack1.
            block280d7ce8Done := true.
        ].
    ].
    block280d7ce8Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f3000; bytecode file offset 0xaef8d8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
xmlLoaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super xmlLoaded.
    recoveredValue0 := ('Die') == ('Call_97600').
    recoveredValue1 := DBXmlImportDescLoadSpec.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := dbObject.
    recoveredValue4 := (recoveredValue3) importDesc.
    recoveredValue5 := (recoveredValue2) initOn: (recoveredValue4).
    recoveredValue6 := dbObject.
    (recoveredValue5) execute: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202175a0; bytecode file offset 0xb13e9c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
filterListForInsertComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ARDataInterface.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := ARClientServerInterface.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := SGEnumerationDB.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := ASDRecord.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := SGLibraryClass.
    (recoveredValue10) add: (recoveredValue11).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20261700; bytecode file offset 0xb5dfd0"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
removeVarBasic: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClientServerInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeInterface: (recoveredStack2) withRequest: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedInterfaces.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedInterfaces.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            super removeVarBasic: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026ba7c; bytecode file offset 0xb68344"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
usesClassesUI
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isClientServerInterface.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isProvidePort.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 25] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) allVariablesDo: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationCasts.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20297a54; bytecode file offset 0xb94348"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingTargetObjectsForType: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableExternalMappingType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableExternalMappingTargetObjects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableInternalMappingType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableInternalMappingTargetObjects.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterMappingType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterMappingTargetObjects.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20297a78; bytecode file offset 0xb94348"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingSourceObjectsForType: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableExternalMappingType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableExternalMappingSourceObjects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableInternalMappingType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableInternalMappingSourceObjects.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterMappingType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterMappingSourceObjects.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2029fbfc; bytecode file offset 0xb9c4d8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableInternalMappingSourceObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableMappingSourceObjects: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280e3b08Arg1 | 
    | block280e3b08Stack0 block280e3b08Stack1 block280e3b08Stack2 block280e3b08Stack3 block280e3b08Stack4 block280e3b08PC block280e3b08Step block280e3b08Done block280e3b08Result |
    block280e3b08Stack0 := self.
    block280e3b08PC := 4.
    block280e3b08Done := false.
    [block280e3b08Done not] whileTrue: [
        block280e3b08Step := block280e3b08PC.
        block280e3b08Step = 4 ifTrue: [
            block280e3b08Stack1 := false.
            block280e3b08PC := 5.
        ].
        block280e3b08Step = 5 ifTrue: [
            block280e3b08Stack2 := block280e3b08Arg1.
            block280e3b08PC := 6.
        ].
        block280e3b08Step = 6 ifTrue: [
            (block280e3b08Stack2 == nil) ifTrue: [block280e3b08PC := 33] ifFalse: [block280e3b08PC := 10].
        ].
        block280e3b08Step = 10 ifTrue: [
            block280e3b08PC := 11.
        ].
        block280e3b08Step = 11 ifTrue: [
            block280e3b08Stack1 := false.
            block280e3b08PC := 12.
        ].
        block280e3b08Step = 12 ifTrue: [
            block280e3b08Stack2 := block280e3b08Arg1.
            block280e3b08PC := 13.
        ].
        block280e3b08Step = 13 ifTrue: [
            block280e3b08Stack2 := (block280e3b08Stack2) isArtificial.
            block280e3b08PC := 14.
        ].
        block280e3b08Step = 14 ifTrue: [
            (block280e3b08Stack2) ifTrue: [block280e3b08PC := 32] ifFalse: [block280e3b08PC := 18].
        ].
        block280e3b08Step = 18 ifTrue: [
            block280e3b08PC := 19.
        ].
        block280e3b08Step = 19 ifTrue: [
            block280e3b08Stack1 := Array.
            block280e3b08PC := 21.
        ].
        block280e3b08Step = 21 ifTrue: [
            block280e3b08Stack2 := 'Receive'.
            block280e3b08PC := 23.
        ].
        block280e3b08Step = 23 ifTrue: [
            block280e3b08Stack3 := 'Send'.
            block280e3b08PC := 25.
        ].
        block280e3b08Step = 25 ifTrue: [
            block280e3b08Stack1 := (block280e3b08Stack1) with: (block280e3b08Stack2) with: (block280e3b08Stack3).
            block280e3b08PC := 27.
        ].
        block280e3b08Step = 27 ifTrue: [
            block280e3b08Stack2 := block280e3b08Arg1.
            block280e3b08PC := 28.
        ].
        block280e3b08Step = 28 ifTrue: [
            block280e3b08Stack2 := (block280e3b08Stack2) modelAccess.
            block280e3b08PC := 30.
        ].
        block280e3b08Step = 30 ifTrue: [
            block280e3b08Stack1 := (block280e3b08Stack1) includes: (block280e3b08Stack2).
            block280e3b08PC := 32.
        ].
        block280e3b08Step = 32 ifTrue: [
            block280e3b08Stack1 := (block280e3b08Stack1) not.
            block280e3b08PC := 33.
        ].
        block280e3b08Step = 33 ifTrue: [
            block280e3b08Result := block280e3b08Stack1.
            block280e3b08Done := true.
        ].
    ].
    block280e3b08Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b4508; bytecode file offset 0xbb0dd8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
allowedToAddComponent: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isAtomicSoftwareComponent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) isARDataInterface.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) isClientServerInterface.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) isProcessClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRecord.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGClass.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGEnumeration.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b8e70; bytecode file offset 0xbb573c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappings: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredLocal1.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := recoveredBlock19Arg2.
    recoveredBlock19Value3 := (recoveredBlock19Value0) at: (recoveredBlock19Value1) put: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) setElementMappings: (recoveredStack1) forType: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c68b0; bytecode file offset 0xbc3188"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
checkPasteElements: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAREnableGlobalElementSupport.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280e5698Arg1 | 
    | block280e5698Stack0 block280e5698Stack1 block280e5698Stack2 block280e5698Stack3 block280e5698PC block280e5698Step block280e5698Done block280e5698Result |
    block280e5698Stack0 := self.
    block280e5698PC := 4.
    block280e5698Done := false.
    [block280e5698Done not] whileTrue: [
        block280e5698Step := block280e5698PC.
        block280e5698Step = 4 ifTrue: [
            block280e5698Stack1 := false.
            block280e5698PC := 5.
        ].
        block280e5698Step = 5 ifTrue: [
            block280e5698Stack2 := block280e5698Arg1.
            block280e5698PC := 6.
        ].
        block280e5698Step = 6 ifTrue: [
            block280e5698Stack2 := (block280e5698Stack2) isMethodElement.
            block280e5698PC := 7.
        ].
        block280e5698Step = 7 ifTrue: [
            (block280e5698Stack2) ifTrue: [block280e5698PC := 14] ifFalse: [block280e5698PC := 10].
        ].
        block280e5698Step = 10 ifTrue: [
            block280e5698PC := 11.
        ].
        block280e5698Step = 11 ifTrue: [
            block280e5698Stack1 := block280e5698Arg1.
            block280e5698PC := 12.
        ].
        block280e5698Step = 12 ifTrue: [
            block280e5698Stack1 := (block280e5698Stack1) isLocal.
            block280e5698PC := 13.
        ].
        block280e5698Step = 13 ifTrue: [
            block280e5698Stack1 := (block280e5698Stack1) not.
            block280e5698PC := 14.
        ].
        block280e5698Step = 14 ifTrue: [
            block280e5698Result := block280e5698Stack1.
            block280e5698Done := true.
        ].
    ].
    block280e5698Result
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := RBUserInfo.
    recoveredBlock27Value1 := (recoveredBlock27Value0) message: ('It is not possible to paste global elements to a Software Component!!').
    (recoveredBlock27Value1) prompt.
    ^nil
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifOne: (recoveredStack2).
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

"ASDBase.ic method 0x202f76f8; bytecode file offset 0xbf3fc8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variablesForMapping
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isMessage.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 43].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isMatrix.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 43] ifFalse: [recoveredBlock10PC := 28].
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isRecordWithMatrix.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 43] ifFalse: [recoveredBlock10PC := 36].
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue3 := Set.
    recoveredValue4 := (recoveredValue3) new.
    (self) iterateOverVariables: (recoveredValue2) visitedSet: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2030f058; bytecode file offset 0xc0b944"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableInternalMappingsEmpty
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) variableInternalMappingType.
    recoveredValue2 := (self) elementMappingsAtType: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := [:recoveredBlock14Block21Arg1 | 
    | recoveredBlock14Block21Value0 recoveredBlock14Block21Value1 recoveredBlock14Block21Value2 |
    recoveredBlock14Block21Value0 := recoveredBlock14Block21Arg1.
    recoveredBlock14Block21Value1 := [:recoveredBlock14Block21Block29Arg1 | 
    | recoveredBlock14Block21Block29Stack0 recoveredBlock14Block21Block29Stack1 recoveredBlock14Block21Block29Stack2 recoveredBlock14Block21Block29Stack3 recoveredBlock14Block21Block29PC recoveredBlock14Block21Block29Step recoveredBlock14Block21Block29Done recoveredBlock14Block21Block29Result |
    recoveredBlock14Block21Block29Stack0 := self.
    recoveredBlock14Block21Block29PC := 36.
    recoveredBlock14Block21Block29Done := false.
    [recoveredBlock14Block21Block29Done not] whileTrue: [
        recoveredBlock14Block21Block29Step := recoveredBlock14Block21Block29PC.
        recoveredBlock14Block21Block29Step = 36 ifTrue: [
            recoveredBlock14Block21Block29Stack1 := nil.
            recoveredBlock14Block21Block29PC := 37.
        ].
        recoveredBlock14Block21Block29Step = 37 ifTrue: [
            recoveredBlock14Block21Block29Stack2 := recoveredBlock14Block21Block29Arg1.
            recoveredBlock14Block21Block29PC := 38.
        ].
        recoveredBlock14Block21Block29Step = 38 ifTrue: [
            recoveredBlock14Block21Block29Stack2 := (recoveredBlock14Block21Block29Stack2) needsTarget.
            recoveredBlock14Block21Block29PC := 39.
        ].
        recoveredBlock14Block21Block29Step = 39 ifTrue: [
            (recoveredBlock14Block21Block29Stack2) ifTrue: [recoveredBlock14Block21Block29PC := 45] ifFalse: [recoveredBlock14Block21Block29PC := 42].
        ].
        recoveredBlock14Block21Block29Step = 42 ifTrue: [
            recoveredBlock14Block21Block29PC := 43.
        ].
        recoveredBlock14Block21Block29Step = 43 ifTrue: [
            recoveredBlock14Block21Block29Stack1 := false.
            recoveredBlock14Block21Block29PC := 44.
        ].
        recoveredBlock14Block21Block29Step = 44 ifTrue: [
            ^recoveredBlock14Block21Block29Stack1
        ].
        recoveredBlock14Block21Block29Step = 45 ifTrue: [
            recoveredBlock14Block21Block29Result := recoveredBlock14Block21Block29Stack1.
            recoveredBlock14Block21Block29Done := true.
        ].
    ].
    recoveredBlock14Block21Block29Result
].
    recoveredBlock14Block21Value2 := (recoveredBlock14Block21Value0) do: (recoveredBlock14Block21Value1).
    recoveredBlock14Block21Value2
].
    recoveredBlock14Value2 := (recoveredBlock14Value0) do: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^true
! !

"ASDBase.ic method 0x2030f078; bytecode file offset 0xc0b944"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableExternalMappingsEmpty
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) variableExternalMappingType.
    recoveredValue2 := (self) elementMappingsAtType: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := [:recoveredBlock14Block21Arg1 | 
    | recoveredBlock14Block21Value0 recoveredBlock14Block21Value1 recoveredBlock14Block21Value2 |
    recoveredBlock14Block21Value0 := recoveredBlock14Block21Arg1.
    recoveredBlock14Block21Value1 := [:recoveredBlock14Block21Block29Arg1 | 
    | recoveredBlock14Block21Block29Stack0 recoveredBlock14Block21Block29Stack1 recoveredBlock14Block21Block29Stack2 recoveredBlock14Block21Block29Stack3 recoveredBlock14Block21Block29PC recoveredBlock14Block21Block29Step recoveredBlock14Block21Block29Done recoveredBlock14Block21Block29Result |
    recoveredBlock14Block21Block29Stack0 := self.
    recoveredBlock14Block21Block29PC := 36.
    recoveredBlock14Block21Block29Done := false.
    [recoveredBlock14Block21Block29Done not] whileTrue: [
        recoveredBlock14Block21Block29Step := recoveredBlock14Block21Block29PC.
        recoveredBlock14Block21Block29Step = 36 ifTrue: [
            recoveredBlock14Block21Block29Stack1 := nil.
            recoveredBlock14Block21Block29PC := 37.
        ].
        recoveredBlock14Block21Block29Step = 37 ifTrue: [
            recoveredBlock14Block21Block29Stack2 := recoveredBlock14Block21Block29Arg1.
            recoveredBlock14Block21Block29PC := 38.
        ].
        recoveredBlock14Block21Block29Step = 38 ifTrue: [
            recoveredBlock14Block21Block29Stack2 := (recoveredBlock14Block21Block29Stack2) needsTarget.
            recoveredBlock14Block21Block29PC := 39.
        ].
        recoveredBlock14Block21Block29Step = 39 ifTrue: [
            (recoveredBlock14Block21Block29Stack2) ifTrue: [recoveredBlock14Block21Block29PC := 45] ifFalse: [recoveredBlock14Block21Block29PC := 42].
        ].
        recoveredBlock14Block21Block29Step = 42 ifTrue: [
            recoveredBlock14Block21Block29PC := 43.
        ].
        recoveredBlock14Block21Block29Step = 43 ifTrue: [
            recoveredBlock14Block21Block29Stack1 := false.
            recoveredBlock14Block21Block29PC := 44.
        ].
        recoveredBlock14Block21Block29Step = 44 ifTrue: [
            ^recoveredBlock14Block21Block29Stack1
        ].
        recoveredBlock14Block21Block29Step = 45 ifTrue: [
            recoveredBlock14Block21Block29Result := recoveredBlock14Block21Block29Stack1.
            recoveredBlock14Block21Block29Done := true.
        ].
    ].
    recoveredBlock14Block21Block29Result
].
    recoveredBlock14Block21Value2 := (recoveredBlock14Block21Value0) do: (recoveredBlock14Block21Value1).
    recoveredBlock14Block21Value2
].
    recoveredBlock14Value2 := (recoveredBlock14Value0) do: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^true
! !

"ASDBase.ic method 0x20324abc; bytecode file offset 0xc21398"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
doLocalAliasNameReplacements: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'AREventSpecification'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAtomicSoftwareComponent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpecification.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpecification.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) replaceAliasNames: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMethods.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:block280ebf5cArg1 | 
    | block280ebf5cValue0 block280ebf5cValue1 |
    block280ebf5cValue0 := block280ebf5cArg1.
    block280ebf5cValue1 := (block280ebf5cValue0) isRealizedMethodSignature.
    block280ebf5cValue1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 |
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := recoveredArg1.
    recoveredBlock42Value2 := (recoveredBlock42Value0) replaceAliasNames: (recoveredBlock42Value1).
    recoveredBlock42Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20330350; bytecode file offset 0xc2cc1c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
createInfoWidget: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super createInfoWidget: (recoveredStack1) parent: (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := recoveredBlock34Value0.
    recoveredBlock34Value2 := recoveredArg3.
    (recoveredBlock34Value1) owner: (recoveredBlock34Value2).
    recoveredBlock34Value3 := (recoveredBlock34Value0) item: (self).
    recoveredBlock34Value3
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasNotebookComponentLayoutWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033af98; bytecode file offset 0xc37874"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
checkConversionToMultiMappingNeeded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
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
            recoveredStack0 := (recoveredStack0) elementMappings.
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
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappingTypes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) elementMappings.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := [].
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) at: (recoveredBlock19Stack1) ifAbsent: (recoveredBlock19Stack2).
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack0 := nil.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            (recoveredBlock19Stack1 == nil) ifTrue: [recoveredBlock19PC := 57] ifFalse: [recoveredBlock19PC := 38].
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) notEmpty.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 44] ifFalse: [recoveredBlock19PC := 57].
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack0 := nil.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) someElement.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isCollection.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 57] ifFalse: [recoveredBlock19PC := 54].
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack0 := true.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            ^recoveredBlock19Stack0
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack0.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033b494; bytecode file offset 0xc37d6c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
changePortType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClientServerInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexVariables.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProvidePort.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) realizedInterfaces.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) realizeInterface: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRequirePort.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) realizedInterfaces.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) removeInterface: (recoveredStack2) withRequest: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20344d34; bytecode file offset 0xc41618"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsUpdatePropertiesForType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterMappingType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) parameterMappingSourceObjects.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) parameterMappingTargetObjects.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterMappingsType: (recoveredStack2) updatePropertiesForSourceObjects: (recoveredStack3) targetObjects: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableInternalMappingType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) variableInternalMappingSourceObjects.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) variableInternalMappingTargetObjects.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableMappingsType: (recoveredStack2) updatePropertiesForSourceObjects: (recoveredStack3) targetObjects: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableExternalMappingType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) variableExternalMappingSourceObjects.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := (recoveredStack4) variableExternalMappingTargetObjects.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableMappingsType: (recoveredStack2) updatePropertiesForSourceObjects: (recoveredStack3) targetObjects: (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034cff8; bytecode file offset 0xc498d4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsDetectionOfInvalid
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) elementMappings.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := [:recoveredBlock10Block17Arg1 | 
    | recoveredBlock10Block17Value0 recoveredBlock10Block17Value1 recoveredBlock10Block17Value2 |
    recoveredBlock10Block17Value0 := recoveredBlock10Block17Arg1.
    recoveredBlock10Block17Value1 := [:recoveredBlock10Block17Block25Arg1 | 
    | recoveredBlock10Block17Block25Stack0 recoveredBlock10Block17Block25Stack1 recoveredBlock10Block17Block25Stack2 recoveredBlock10Block17Block25Stack3 recoveredBlock10Block17Block25PC recoveredBlock10Block17Block25Step recoveredBlock10Block17Block25Done recoveredBlock10Block17Block25Result |
    recoveredBlock10Block17Block25Stack0 := nil.
    recoveredBlock10Block17Block25PC := 32.
    recoveredBlock10Block17Block25Done := false.
    [recoveredBlock10Block17Block25Done not] whileTrue: [
        recoveredBlock10Block17Block25Step := recoveredBlock10Block17Block25PC.
        recoveredBlock10Block17Block25Step = 32 ifTrue: [
            recoveredBlock10Block17Block25Stack1 := nil.
            recoveredBlock10Block17Block25PC := 33.
        ].
        recoveredBlock10Block17Block25Step = 33 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := recoveredBlock10Block17Block25Arg1.
            recoveredBlock10Block17Block25PC := 34.
        ].
        recoveredBlock10Block17Block25Step = 34 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := (recoveredBlock10Block17Block25Stack2) sourceObject.
            recoveredBlock10Block17Block25PC := 35.
        ].
        recoveredBlock10Block17Block25Step = 35 ifTrue: [
            (recoveredBlock10Block17Block25Stack2 == nil) ifTrue: [recoveredBlock10Block17Block25PC := 53] ifFalse: [recoveredBlock10Block17Block25PC := 38].
        ].
        recoveredBlock10Block17Block25Step = 38 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := recoveredBlock10Block17Block25Arg1.
            recoveredBlock10Block17Block25PC := 39.
        ].
        recoveredBlock10Block17Block25Step = 39 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := (recoveredBlock10Block17Block25Stack2) sourceObject.
            recoveredBlock10Block17Block25PC := 40.
        ].
        recoveredBlock10Block17Block25Step = 40 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := (recoveredBlock10Block17Block25Stack2) isPropertyUnknown.
            recoveredBlock10Block17Block25PC := 41.
        ].
        recoveredBlock10Block17Block25Step = 41 ifTrue: [
            (recoveredBlock10Block17Block25Stack2) ifTrue: [recoveredBlock10Block17Block25PC := 44] ifFalse: [recoveredBlock10Block17Block25PC := 53].
        ].
        recoveredBlock10Block17Block25Step = 44 ifTrue: [
            recoveredBlock10Block17Block25PC := 45.
        ].
        recoveredBlock10Block17Block25Step = 45 ifTrue: [
            recoveredBlock10Block17Block25Stack1 := recoveredLocal1.
            recoveredBlock10Block17Block25PC := 48.
        ].
        recoveredBlock10Block17Block25Step = 48 ifTrue: [
            recoveredBlock10Block17Block25Stack1 := (recoveredBlock10Block17Block25Stack1) + (1).
            recoveredBlock10Block17Block25PC := 49.
        ].
        recoveredBlock10Block17Block25Step = 49 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := recoveredBlock10Block17Block25Stack1.
            recoveredBlock10Block17Block25PC := 50.
        ].
        recoveredBlock10Block17Block25Step = 50 ifTrue: [
            recoveredLocal1 := recoveredBlock10Block17Block25Stack2.
            recoveredBlock10Block17Block25PC := 53.
        ].
        recoveredBlock10Block17Block25Step = 53 ifTrue: [
            recoveredBlock10Block17Block25Result := recoveredBlock10Block17Block25Stack1.
            recoveredBlock10Block17Block25Done := true.
        ].
    ].
    recoveredBlock10Block17Block25Result
].
    recoveredBlock10Block17Value2 := (recoveredBlock10Block17Value0) do: (recoveredBlock10Block17Value1).
    recoveredBlock10Block17Value2
].
    recoveredBlock10Value2 := (recoveredBlock10Value0) do: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2034e458; bytecode file offset 0xc4ad2c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
assignedElementForEvent: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpecification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) events.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) name.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOperationInvoke.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) portAliasName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := (self) elementAliasName: (recoveredBlock49Value0).
    ^recoveredBlock49Value1
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036b3e0; bytecode file offset 0xc67ccc"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
allMappedParameterDictionary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMappings.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280f132cArg1 | 
    | block280f132cValue0 block280f132cValue1 |
    block280f132cValue0 := block280f132cArg1.
    block280f132cValue1 := (block280f132cValue0) isCollection.
    block280f132cValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:block280f1350Arg1 | 
    | block280f1350Value0 block280f1350Value1 block280f1350Value2 block280f1350Value3 |
    block280f1350Value0 := OrderedCollection.
    block280f1350Value1 := (block280f1350Value0) new.
    block280f1350Value2 := block280f1350Value1.
    block280f1350Value3 := block280f1350Arg1.
    (block280f1350Value2) add: (block280f1350Value3).
    block280f1350Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block280f1374Arg1 | 
    | block280f1374Stack0 block280f1374Stack1 block280f1374Stack2 block280f1374Stack3 block280f1374PC block280f1374Step block280f1374Done block280f1374Result |
    block280f1374Stack0 := self.
    block280f1374PC := 4.
    block280f1374Done := false.
    [block280f1374Done not] whileTrue: [
        block280f1374Step := block280f1374PC.
        block280f1374Step = 4 ifTrue: [
            block280f1374Stack1 := block280f1374Arg1.
            block280f1374PC := 5.
        ].
        block280f1374Step = 5 ifTrue: [
            block280f1374Stack2 := [:block280f1398Arg1 | 
    | block280f1398Value0 block280f1398Value1 |
    block280f1398Value0 := block280f1398Arg1.
    block280f1398Value1 := (block280f1398Value0) needsTarget.
    block280f1398Value1
].
            block280f1374PC := 7.
        ].
        block280f1374Step = 7 ifTrue: [
            block280f1374PC := 14.
        ].
        block280f1374Step = 14 ifTrue: [
            block280f1374Stack1 := (block280f1374Stack1) reject: (block280f1374Stack2).
            block280f1374PC := 16.
        ].
        block280f1374Step = 16 ifTrue: [
            block280f1374Result := block280f1374Stack1.
            block280f1374Done := true.
        ].
    ].
    block280f1374Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036b6b0; bytecode file offset 0xc67f84"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
parameterMappingSourceObjects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) parameterForMapping.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) asParameterMappingSource.
    recoveredBlock11Local1 := recoveredBlock11Value1.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := [:recoveredBlock11Block28Arg1 | 
    | recoveredBlock11Block28Value0 recoveredBlock11Block28Value1 recoveredBlock11Block28Value2 recoveredBlock11Block28Value3 recoveredBlock11Block28Value4 |
    recoveredBlock11Block28Value0 := recoveredBlock11Block28Arg1.
    recoveredBlock11Block28Value1 := (recoveredBlock11Block28Value0) displayName.
    recoveredBlock11Block28Value2 := recoveredBlock11Local1.
    recoveredBlock11Block28Value3 := (recoveredBlock11Block28Value2) displayName.
    recoveredBlock11Block28Value4 := (recoveredBlock11Block28Value1) = (recoveredBlock11Block28Value3).
    recoveredBlock11Block28Value4
].
    recoveredBlock11Value4 := [
    | recoveredBlock11Block44Value0 recoveredBlock11Block44Value1 recoveredBlock11Block44Value2 |
    recoveredBlock11Block44Value0 := recoveredLocal1.
    recoveredBlock11Block44Value1 := recoveredBlock11Local1.
    recoveredBlock11Block44Value2 := (recoveredBlock11Block44Value0) add: (recoveredBlock11Block44Value1).
    recoveredBlock11Block44Value2
].
    recoveredBlock11Value5 := (recoveredBlock11Value2) detect: (recoveredBlock11Value3) ifNone: (recoveredBlock11Value4).
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20374c48; bytecode file offset 0xc71514"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
needsCsvConversionTo640: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) asDecimal.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := 0.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) ~= (recoveredBlock16Stack2).
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 30] ifFalse: [recoveredBlock16PC := 45].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16Stack2 := 'File'.
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) = (recoveredBlock16Stack2).
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 40] ifFalse: [recoveredBlock16PC := 45].
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) asDecimal.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredLocal2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := #[41 92 143 194 245 40 240 63].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203763f8; bytecode file offset 0xc72ccc"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsAreEmpty
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappingTypes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) elementMappingsAtType: (recoveredBlock15Stack1).
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Local2 := recoveredBlock15Stack0.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack0 := nil.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local2.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            (recoveredBlock15Stack1 == nil) ifTrue: [recoveredBlock15PC := 65] ifFalse: [recoveredBlock15PC := 32].
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack0 := recoveredBlock15Local2.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack1 := [:recoveredBlock15Block34Arg1 :recoveredBlock15Block34Arg2 | 
    | recoveredBlock15Block34Value0 recoveredBlock15Block34Value1 recoveredBlock15Block34Value2 |
    recoveredBlock15Block34Value0 := recoveredBlock15Block34Arg2.
    recoveredBlock15Block34Value1 := [:recoveredBlock15Block34Block41Arg1 | 
    | recoveredBlock15Block34Block41Stack0 recoveredBlock15Block34Block41Stack1 recoveredBlock15Block34Block41Stack2 recoveredBlock15Block34Block41Stack3 recoveredBlock15Block34Block41PC recoveredBlock15Block34Block41Step recoveredBlock15Block34Block41Done recoveredBlock15Block34Block41Result |
    recoveredBlock15Block34Block41Stack0 := self.
    recoveredBlock15Block34Block41PC := 48.
    recoveredBlock15Block34Block41Done := false.
    [recoveredBlock15Block34Block41Done not] whileTrue: [
        recoveredBlock15Block34Block41Step := recoveredBlock15Block34Block41PC.
        recoveredBlock15Block34Block41Step = 48 ifTrue: [
            recoveredBlock15Block34Block41Stack1 := nil.
            recoveredBlock15Block34Block41PC := 49.
        ].
        recoveredBlock15Block34Block41Step = 49 ifTrue: [
            recoveredBlock15Block34Block41Stack2 := recoveredBlock15Block34Block41Arg1.
            recoveredBlock15Block34Block41PC := 50.
        ].
        recoveredBlock15Block34Block41Step = 50 ifTrue: [
            recoveredBlock15Block34Block41Stack2 := (recoveredBlock15Block34Block41Stack2) isMapped.
            recoveredBlock15Block34Block41PC := 52.
        ].
        recoveredBlock15Block34Block41Step = 52 ifTrue: [
            (recoveredBlock15Block34Block41Stack2) ifTrue: [recoveredBlock15Block34Block41PC := 56] ifFalse: [recoveredBlock15Block34Block41PC := 59].
        ].
        recoveredBlock15Block34Block41Step = 56 ifTrue: [
            recoveredBlock15Block34Block41PC := 57.
        ].
        recoveredBlock15Block34Block41Step = 57 ifTrue: [
            recoveredBlock15Block34Block41Stack1 := false.
            recoveredBlock15Block34Block41PC := 58.
        ].
        recoveredBlock15Block34Block41Step = 58 ifTrue: [
            ^recoveredBlock15Block34Block41Stack1
        ].
        recoveredBlock15Block34Block41Step = 59 ifTrue: [
            recoveredBlock15Block34Block41Result := recoveredBlock15Block34Block41Stack1.
            recoveredBlock15Block34Block41Done := true.
        ].
    ].
    recoveredBlock15Block34Block41Result
].
    recoveredBlock15Block34Value2 := (recoveredBlock15Block34Value0) do: (recoveredBlock15Block34Value1).
    recoveredBlock15Block34Value2
].
            recoveredBlock15PC := 63.
        ].
        recoveredBlock15Step = 63 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) keysAndValuesDo: (recoveredBlock15Stack1).
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20380788; bytecode file offset 0xc7d06c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
convertCsvMappingTo640: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'variableInternal'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'variableExternal'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:block280f2ba4Arg1 | 
    | block280f2ba4Stack0 block280f2ba4Stack1 block280f2ba4Stack2 block280f2ba4Stack3 block280f2ba4PC block280f2ba4Step block280f2ba4Done block280f2ba4Result |
    block280f2ba4Stack0 := self.
    block280f2ba4PC := 4.
    block280f2ba4Done := false.
    [block280f2ba4Done not] whileTrue: [
        block280f2ba4Step := block280f2ba4PC.
        block280f2ba4Step = 4 ifTrue: [
            block280f2ba4Stack1 := block280f2ba4Arg1.
            block280f2ba4PC := 5.
        ].
        block280f2ba4Step = 5 ifTrue: [
            block280f2ba4Stack2 := [:block280f2bc8Arg1 | 
    | block280f2bc8Stack0 block280f2bc8Stack1 block280f2bc8Stack2 block280f2bc8Stack3 block280f2bc8PC block280f2bc8Step block280f2bc8Done block280f2bc8Result |
    block280f2bc8Stack0 := self.
    block280f2bc8PC := 4.
    block280f2bc8Done := false.
    [block280f2bc8Done not] whileTrue: [
        block280f2bc8Step := block280f2bc8PC.
        block280f2bc8Step = 4 ifTrue: [
            block280f2bc8Stack1 := nil.
            block280f2bc8PC := 5.
        ].
        block280f2bc8Step = 5 ifTrue: [
            block280f2bc8Stack2 := block280f2bc8Arg1.
            block280f2bc8PC := 6.
        ].
        block280f2bc8Step = 6 ifTrue: [
            block280f2bc8Stack2 := (block280f2bc8Stack2) hasDotIncludedInSourceObjectDisplayName.
            block280f2bc8PC := 8.
        ].
        block280f2bc8Step = 8 ifTrue: [
            (block280f2bc8Stack2) ifTrue: [block280f2bc8PC := 12] ifFalse: [block280f2bc8PC := 16].
        ].
        block280f2bc8Step = 12 ifTrue: [
            block280f2bc8PC := 13.
        ].
        block280f2bc8Step = 13 ifTrue: [
            block280f2bc8Stack1 := block280f2bc8Arg1.
            block280f2bc8PC := 14.
        ].
        block280f2bc8Step = 14 ifTrue: [
            block280f2bc8Stack1 := (block280f2bc8Stack1) addSelfToSourceObjectDisplayName.
            block280f2bc8PC := 16.
        ].
        block280f2bc8Step = 16 ifTrue: [
            block280f2bc8Result := block280f2bc8Stack1.
            block280f2bc8Done := true.
        ].
    ].
    block280f2bc8Result
].
            block280f2ba4PC := 7.
        ].
        block280f2ba4Step = 7 ifTrue: [
            block280f2ba4PC := 23.
        ].
        block280f2ba4Step = 23 ifTrue: [
            block280f2ba4Stack1 := (block280f2ba4Stack1) do: (block280f2ba4Stack2).
            block280f2ba4PC := 25.
        ].
        block280f2ba4Step = 25 ifTrue: [
            block280f2ba4Result := block280f2ba4Stack1.
            block280f2ba4Done := true.
        ].
    ].
    block280f2ba4Result
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038a9c4; bytecode file offset 0xc872ac"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
allSecondaryMappedElementsDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) variableExternalMappingType.
    recoveredValue4 := (self) allMappingsCopyForType: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block23Arg1 | 
    | recoveredBlock15Block23Stack0 recoveredBlock15Block23Stack1 recoveredBlock15Block23Stack2 recoveredBlock15Block23Stack3 recoveredBlock15Block23Stack4 recoveredBlock15Block23PC recoveredBlock15Block23Step recoveredBlock15Block23Done recoveredBlock15Block23Result |
    recoveredBlock15Block23Stack0 := nil.
    recoveredBlock15Block23PC := 30.
    recoveredBlock15Block23Done := false.
    [recoveredBlock15Block23Done not] whileTrue: [
        recoveredBlock15Block23Step := recoveredBlock15Block23PC.
        recoveredBlock15Block23Step = 30 ifTrue: [
            recoveredBlock15Block23Stack1 := nil.
            recoveredBlock15Block23PC := 31.
        ].
        recoveredBlock15Block23Step = 31 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 32.
        ].
        recoveredBlock15Block23Step = 32 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) sourceObject.
            recoveredBlock15Block23PC := 34.
        ].
        recoveredBlock15Block23Step = 34 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) hasModelAccessSendReceive.
            recoveredBlock15Block23PC := 36.
        ].
        recoveredBlock15Block23Step = 36 ifTrue: [
            (recoveredBlock15Block23Stack2) ifTrue: [recoveredBlock15Block23PC := 40] ifFalse: [recoveredBlock15Block23PC := 63].
        ].
        recoveredBlock15Block23Step = 40 ifTrue: [
            recoveredBlock15Block23PC := 41.
        ].
        recoveredBlock15Block23Step = 41 ifTrue: [
            recoveredBlock15Block23Stack1 := recoveredLocal1.
            recoveredBlock15Block23PC := 44.
        ].
        recoveredBlock15Block23Step = 44 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 45.
        ].
        recoveredBlock15Block23Step = 45 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) sourceObject.
            recoveredBlock15Block23PC := 47.
        ].
        recoveredBlock15Block23Step = 47 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) displayName.
            recoveredBlock15Block23PC := 49.
        ].
        recoveredBlock15Block23Step = 49 ifTrue: [
            recoveredBlock15Block23Stack3 := [
    | block280f357cValue0 block280f357cValue1 |
    block280f357cValue0 := OrderedCollection.
    block280f357cValue1 := (block280f357cValue0) new.
    block280f357cValue1
].
            recoveredBlock15Block23PC := 51.
        ].
        recoveredBlock15Block23Step = 51 ifTrue: [
            recoveredBlock15Block23PC := 58.
        ].
        recoveredBlock15Block23Step = 58 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) at: (recoveredBlock15Block23Stack2) ifAbsentPut: (recoveredBlock15Block23Stack3).
            recoveredBlock15Block23PC := 60.
        ].
        recoveredBlock15Block23Step = 60 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 61.
        ].
        recoveredBlock15Block23Step = 61 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) add: (recoveredBlock15Block23Stack2).
            recoveredBlock15Block23PC := 63.
        ].
        recoveredBlock15Block23Step = 63 ifTrue: [
            recoveredBlock15Block23Result := recoveredBlock15Block23Stack1.
            recoveredBlock15Block23Done := true.
        ].
    ].
    recoveredBlock15Block23Result
].
    recoveredBlock15Value2 := (recoveredBlock15Value0) do: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2038aa4c; bytecode file offset 0xc87338"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
allInvalidInternalMappings
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) variableInternalMappingType.
    recoveredValue4 := (self) allMappingsCopyForType: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block23Arg1 | 
    | recoveredBlock15Block23Stack0 recoveredBlock15Block23Stack1 recoveredBlock15Block23Stack2 recoveredBlock15Block23Stack3 recoveredBlock15Block23Stack4 recoveredBlock15Block23PC recoveredBlock15Block23Step recoveredBlock15Block23Done recoveredBlock15Block23Result |
    recoveredBlock15Block23Stack0 := nil.
    recoveredBlock15Block23PC := 30.
    recoveredBlock15Block23Done := false.
    [recoveredBlock15Block23Done not] whileTrue: [
        recoveredBlock15Block23Step := recoveredBlock15Block23PC.
        recoveredBlock15Block23Step = 30 ifTrue: [
            recoveredBlock15Block23Stack1 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 31.
        ].
        recoveredBlock15Block23Step = 31 ifTrue: [
            (recoveredBlock15Block23Stack1) assertInternalStatus.
            recoveredBlock15Block23PC := 33.
        ].
        recoveredBlock15Block23Step = 33 ifTrue: [
            recoveredBlock15Block23Stack1 := nil.
            recoveredBlock15Block23PC := 34.
        ].
        recoveredBlock15Block23Step = 34 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 35.
        ].
        recoveredBlock15Block23Step = 35 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) isSendAndReceive.
            recoveredBlock15Block23PC := 37.
        ].
        recoveredBlock15Block23Step = 37 ifTrue: [
            (recoveredBlock15Block23Stack2) ifTrue: [recoveredBlock15Block23PC := 63] ifFalse: [recoveredBlock15Block23PC := 40].
        ].
        recoveredBlock15Block23Step = 40 ifTrue: [
            recoveredBlock15Block23PC := 41.
        ].
        recoveredBlock15Block23Step = 41 ifTrue: [
            recoveredBlock15Block23Stack1 := recoveredLocal1.
            recoveredBlock15Block23PC := 44.
        ].
        recoveredBlock15Block23Step = 44 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 45.
        ].
        recoveredBlock15Block23Step = 45 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) sourceObject.
            recoveredBlock15Block23PC := 47.
        ].
        recoveredBlock15Block23Step = 47 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) displayName.
            recoveredBlock15Block23PC := 49.
        ].
        recoveredBlock15Block23Step = 49 ifTrue: [
            recoveredBlock15Block23Stack3 := [
    | block280f35a0Value0 block280f35a0Value1 |
    block280f35a0Value0 := OrderedCollection.
    block280f35a0Value1 := (block280f35a0Value0) new.
    block280f35a0Value1
].
            recoveredBlock15Block23PC := 51.
        ].
        recoveredBlock15Block23Step = 51 ifTrue: [
            recoveredBlock15Block23PC := 58.
        ].
        recoveredBlock15Block23Step = 58 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) at: (recoveredBlock15Block23Stack2) ifAbsentPut: (recoveredBlock15Block23Stack3).
            recoveredBlock15Block23PC := 60.
        ].
        recoveredBlock15Block23Step = 60 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 61.
        ].
        recoveredBlock15Block23Step = 61 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) add: (recoveredBlock15Block23Stack2).
            recoveredBlock15Block23PC := 63.
        ].
        recoveredBlock15Block23Step = 63 ifTrue: [
            recoveredBlock15Block23Result := recoveredBlock15Block23Stack1.
            recoveredBlock15Block23Done := true.
        ].
    ].
    recoveredBlock15Block23Result
].
    recoveredBlock15Value2 := (recoveredBlock15Value0) do: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2038ee94; bytecode file offset 0xc8b784"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableMappings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappedInterrunVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) convertMappedMessageVariables.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableMappingTypeOld.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock17Local1 recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 |
    recoveredBlock17Value0 := LookupTable.
    recoveredBlock17Value1 := (recoveredBlock17Value0) new.
    recoveredBlock17Local1 := recoveredBlock17Value1.
    recoveredBlock17Value2 := (self) variableMappingSourceObjects.
    recoveredBlock17Value3 := [:recoveredBlock17Block33Arg1 | 
    | recoveredBlock17Block33Value0 recoveredBlock17Block33Value1 recoveredBlock17Block33Value2 recoveredBlock17Block33Value3 recoveredBlock17Block33Value4 recoveredBlock17Block33Value5 recoveredBlock17Block33Value6 recoveredBlock17Block33Value7 |
    recoveredBlock17Block33Value0 := recoveredBlock17Local1.
    recoveredBlock17Block33Value1 := recoveredBlock17Block33Arg1.
    recoveredBlock17Block33Value2 := (recoveredBlock17Block33Value1) displayName.
    recoveredBlock17Block33Value3 := ASDMappingObject.
    recoveredBlock17Block33Value4 := (recoveredBlock17Block33Value3) create.
    recoveredBlock17Block33Value5 := recoveredBlock17Block33Arg1.
    recoveredBlock17Block33Value6 := (recoveredBlock17Block33Value4) sourceObject: (recoveredBlock17Block33Value5).
    recoveredBlock17Block33Value7 := (recoveredBlock17Block33Value0) at: (recoveredBlock17Block33Value2) put: (recoveredBlock17Block33Value6).
    recoveredBlock17Block33Value7
].
    (recoveredBlock17Value2) do: (recoveredBlock17Value3).
    recoveredBlock17Value4 := recoveredBlock17Local1.
    recoveredBlock17Value5 := (self) class.
    recoveredBlock17Value6 := (recoveredBlock17Value5) variableMappingTypeOld.
    (self) setElementMappings: (recoveredBlock17Value4) forType: (recoveredBlock17Value6).
    recoveredBlock17Value7 := recoveredBlock17Local1.
    ^recoveredBlock17Value7
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20390690; bytecode file offset 0xc8cf78"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
parameterMappingTargetObjects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
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
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280f3990Arg1 | 
    | block280f3990Stack0 block280f3990Stack1 block280f3990Stack2 block280f3990Stack3 block280f3990PC block280f3990Step block280f3990Done block280f3990Result |
    block280f3990Stack0 := self.
    block280f3990PC := 4.
    block280f3990Done := false.
    [block280f3990Done not] whileTrue: [
        block280f3990Step := block280f3990PC.
        block280f3990Step = 4 ifTrue: [
            block280f3990Stack1 := false.
            block280f3990PC := 5.
        ].
        block280f3990Step = 5 ifTrue: [
            block280f3990Stack2 := block280f3990Arg1.
            block280f3990PC := 6.
        ].
        block280f3990Step = 6 ifTrue: [
            block280f3990Stack2 := (block280f3990Stack2) isCalibrationInterface.
            block280f3990PC := 8.
        ].
        block280f3990Step = 8 ifTrue: [
            (block280f3990Stack2) ifTrue: [block280f3990PC := 12] ifFalse: [block280f3990PC := 16].
        ].
        block280f3990Step = 12 ifTrue: [
            block280f3990PC := 13.
        ].
        block280f3990Step = 13 ifTrue: [
            block280f3990Stack1 := block280f3990Arg1.
            block280f3990PC := 14.
        ].
        block280f3990Step = 14 ifTrue: [
            block280f3990Stack1 := (block280f3990Stack1) isRequirePort.
            block280f3990PC := 16.
        ].
        block280f3990Step = 16 ifTrue: [
            block280f3990Result := block280f3990Stack1.
            block280f3990Done := true.
        ].
    ].
    block280f3990Result
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := [].
    recoveredBlock31Value2 := (recoveredBlock31Value0) sgClassIfUndefined: (recoveredBlock31Value1).
    recoveredBlock31Value3 := [:recoveredBlock31Block45Arg1 | 
    | recoveredBlock31Block45Value0 recoveredBlock31Block45Value1 recoveredBlock31Block45Value2 recoveredBlock31Block45Value3 |
    recoveredBlock31Block45Value0 := recoveredLocal1.
    recoveredBlock31Block45Value1 := recoveredBlock31Arg1.
    recoveredBlock31Block45Value2 := (recoveredBlock31Block45Value1) asMappingTargetsWithArrays: (true) withMatrices: (false).
    recoveredBlock31Block45Value3 := (recoveredBlock31Block45Value0) addAll: (recoveredBlock31Block45Value2).
    recoveredBlock31Block45Value3
].
    recoveredBlock31Value4 := (recoveredBlock31Value2) ifNotNil: (recoveredBlock31Value3).
    recoveredBlock31Value4
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20390718; bytecode file offset 0xc8d000"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableExternalMappingTargetObjects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
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
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280f39b4Arg1 | 
    | block280f39b4Stack0 block280f39b4Stack1 block280f39b4Stack2 block280f39b4Stack3 block280f39b4PC block280f39b4Step block280f39b4Done block280f39b4Result |
    block280f39b4Stack0 := self.
    block280f39b4PC := 4.
    block280f39b4Done := false.
    [block280f39b4Done not] whileTrue: [
        block280f39b4Step := block280f39b4PC.
        block280f39b4Step = 4 ifTrue: [
            block280f39b4Stack1 := true.
            block280f39b4PC := 5.
        ].
        block280f39b4Step = 5 ifTrue: [
            block280f39b4Stack2 := block280f39b4Arg1.
            block280f39b4PC := 6.
        ].
        block280f39b4Step = 6 ifTrue: [
            block280f39b4Stack2 := (block280f39b4Stack2) isSenderReceiverInterface.
            block280f39b4PC := 8.
        ].
        block280f39b4Step = 8 ifTrue: [
            (block280f39b4Stack2) ifTrue: [block280f39b4PC := 16] ifFalse: [block280f39b4PC := 12].
        ].
        block280f39b4Step = 12 ifTrue: [
            block280f39b4PC := 13.
        ].
        block280f39b4Step = 13 ifTrue: [
            block280f39b4Stack1 := block280f39b4Arg1.
            block280f39b4PC := 14.
        ].
        block280f39b4Step = 14 ifTrue: [
            block280f39b4Stack1 := (block280f39b4Stack1) isNVDataInterface.
            block280f39b4PC := 16.
        ].
        block280f39b4Step = 16 ifTrue: [
            block280f39b4Result := block280f39b4Stack1.
            block280f39b4Done := true.
        ].
    ].
    block280f39b4Result
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := [].
    recoveredBlock31Value2 := (recoveredBlock31Value0) sgClassIfUndefined: (recoveredBlock31Value1).
    recoveredBlock31Value3 := [:recoveredBlock31Block45Arg1 | 
    | recoveredBlock31Block45Value0 recoveredBlock31Block45Value1 recoveredBlock31Block45Value2 recoveredBlock31Block45Value3 |
    recoveredBlock31Block45Value0 := recoveredLocal1.
    recoveredBlock31Block45Value1 := recoveredBlock31Arg1.
    recoveredBlock31Block45Value2 := (recoveredBlock31Block45Value1) asMappingTargetsWithArrays: (true) withMatrices: (false).
    recoveredBlock31Block45Value3 := (recoveredBlock31Block45Value0) addAll: (recoveredBlock31Block45Value2).
    recoveredBlock31Block45Value3
].
    recoveredBlock31Value4 := (recoveredBlock31Value2) ifNotNil: (recoveredBlock31Value3).
    recoveredBlock31Value4
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a2428; bytecode file offset 0xc9ed18"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
updateSignature: recoveredArg1 of: recoveredArg2 for: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) updateSignature: (recoveredStack2) of: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ASDAtomicSoftwareComponentEditorOptions.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionSynchronizeInterfaceMethodNames.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventSpecification.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) events.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block280f4878Arg1 | 
    | block280f4878Value0 block280f4878Value1 |
    block280f4878Value0 := block280f4878Arg1.
    block280f4878Value1 := (block280f4878Value0) isOperationInvoke.
    block280f4878Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Local1 recoveredBlock38Local2 recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) specificEvent.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) operationAliasName.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack3 := recoveredArg3.
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) aliasName.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) = (recoveredBlock38Stack3).
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 60] ifFalse: [recoveredBlock38PC := 73].
        ].
        recoveredBlock38Step = 60 ifTrue: [
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 62.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            recoveredBlock38Stack2 := self.
            recoveredBlock38PC := 63.
        ].
        recoveredBlock38Step = 63 ifTrue: [
            recoveredBlock38Stack3 := recoveredArg1.
            recoveredBlock38PC := 66.
        ].
        recoveredBlock38Step = 66 ifTrue: [
            recoveredBlock38Stack4 := recoveredArg2.
            recoveredBlock38PC := 69.
        ].
        recoveredBlock38Step = 69 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) eventNameForSignature: (recoveredBlock38Stack3) of: (recoveredBlock38Stack4).
            recoveredBlock38PC := 71.
        ].
        recoveredBlock38Step = 71 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) name: (recoveredBlock38Stack2).
            recoveredBlock38PC := 73.
        ].
        recoveredBlock38Step = 73 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a32e0; bytecode file offset 0xc9fbc8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
createInterrunnableFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGVariable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInterrunnableVariable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) elementName: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBProxy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassKey.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) sgClassKey: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGVector.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGMatrix.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassKey.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) sgClassKey: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicType.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassKey.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) deepCopy.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) sgClassKey: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) addVar: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203af9b0; bytecode file offset 0xcac298"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
removeSignature: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) removeMethod: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpecification.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) events.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280f5a0cArg1 | 
    | block280f5a0cValue0 block280f5a0cValue1 |
    block280f5a0cValue0 := block280f5a0cArg1.
    block280f5a0cValue1 := (block280f5a0cValue0) isOperationInvoke.
    block280f5a0cValue1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) specificEvent.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) operationAliasName.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) realizedSignature.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack4 := 2.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) at: (recoveredBlock24Stack4).
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) = (recoveredBlock24Stack3).
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 50] ifFalse: [recoveredBlock24PC := 74].
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) specificEvent.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) portAliasName.
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) realizedSignature.
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Stack4 := 1.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) at: (recoveredBlock24Stack4).
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) = (recoveredBlock24Stack3).
            recoveredBlock24PC := 65.
        ].
        recoveredBlock24Step = 65 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 68] ifFalse: [recoveredBlock24PC := 74].
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24PC := 69.
        ].
        recoveredBlock24Step = 69 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 70.
        ].
        recoveredBlock24Step = 70 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) eventSpecification.
            recoveredBlock24PC := 71.
        ].
        recoveredBlock24Step = 71 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 72.
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) deleteEvent: (recoveredBlock24Stack2).
            recoveredBlock24PC := 74.
        ].
        recoveredBlock24Step = 74 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
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

"ASDBase.ic method 0x203b8540; bytecode file offset 0xcb4e14"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
duplicateDependent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super duplicateDependent: (recoveredValue0).
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) variableInternalMappingType.
    recoveredValue3 := (self) variableMappingsForType: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := [:recoveredBlock17Block25Arg1 | 
    | recoveredBlock17Block25Value0 recoveredBlock17Block25Value1 recoveredBlock17Block25Value2 |
    recoveredBlock17Block25Value0 := recoveredBlock17Block25Arg1.
    recoveredBlock17Block25Value1 := recoveredArg1.
    recoveredBlock17Block25Value2 := (recoveredBlock17Block25Value0) initForDuplicateDependent: (recoveredBlock17Block25Value1).
    recoveredBlock17Block25Value2
].
    recoveredBlock17Value2 := (recoveredBlock17Value0) do: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) variableExternalMappingType.
    recoveredValue7 := (self) variableMappingsForType: (recoveredValue6).
    recoveredValue8 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := [:recoveredBlock51Block59Arg1 | 
    | recoveredBlock51Block59Value0 recoveredBlock51Block59Value1 recoveredBlock51Block59Value2 |
    recoveredBlock51Block59Value0 := recoveredBlock51Block59Arg1.
    recoveredBlock51Block59Value1 := recoveredArg1.
    recoveredBlock51Block59Value2 := (recoveredBlock51Block59Value0) initForDuplicateDependent: (recoveredBlock51Block59Value1).
    recoveredBlock51Block59Value2
].
    recoveredBlock51Value2 := (recoveredBlock51Value0) do: (recoveredBlock51Value1).
    recoveredBlock51Value2
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x203ccea0; bytecode file offset 0xcc977c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
xmlMappings: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Local1 recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := [
    | recoveredBlock13Block26Value0 recoveredBlock13Block26Value1 recoveredBlock13Block26Value2 recoveredBlock13Block26Value3 recoveredBlock13Block26Value4 |
    recoveredBlock13Block26Value0 := recoveredLocal1.
    recoveredBlock13Block26Value1 := recoveredBlock13Arg1.
    recoveredBlock13Block26Value2 := OrderedCollection.
    recoveredBlock13Block26Value3 := (recoveredBlock13Block26Value2) new.
    recoveredBlock13Block26Value4 := (recoveredBlock13Block26Value0) at: (recoveredBlock13Block26Value1) put: (recoveredBlock13Block26Value3).
    recoveredBlock13Block26Value4
].
    recoveredBlock13Value3 := (recoveredBlock13Value0) at: (recoveredBlock13Value1) ifAbsent: (recoveredBlock13Value2).
    recoveredBlock13Local1 := recoveredBlock13Value3.
    recoveredBlock13Value4 := recoveredBlock13Arg2.
    recoveredBlock13Value5 := [:recoveredBlock13Block52Arg1 | 
    | recoveredBlock13Block52Value0 recoveredBlock13Block52Value1 recoveredBlock13Block52Value2 recoveredBlock13Block52Value3 |
    recoveredBlock13Block52Value0 := recoveredBlock13Local1.
    recoveredBlock13Block52Value1 := recoveredBlock13Block52Arg1.
    recoveredBlock13Block52Value2 := (recoveredBlock13Block52Value1) asStorageObject.
    recoveredBlock13Block52Value3 := (recoveredBlock13Block52Value0) add: (recoveredBlock13Block52Value2).
    recoveredBlock13Block52Value3
].
    recoveredBlock13Value6 := (recoveredBlock13Value4) do: (recoveredBlock13Value5).
    recoveredBlock13Value6
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := (self) elementMappings.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) at: (recoveredValue5) put: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203d0844; bytecode file offset 0xccd13c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
writeXMLComponentBody: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    super writeXMLComponentBody: (recoveredValue0).
    recoveredValue1 := ('todoReiko') notNil.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) attr: ('supportsMultipleInstantiation') boolean: (false).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) openComplex: ('ParameterMappings').
    recoveredValue4 := (self) parameterMappings.
    recoveredValue5 := (self) getCollectionOfMappingsFrom: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    (self) writeXMLElementMapping: (recoveredValue5) writer: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) closeComplex.
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) openComplex: ('VariableMappingsInternal').
    recoveredValue9 := (self) class.
    recoveredValue10 := (recoveredValue9) variableInternalMappingType.
    recoveredValue11 := (self) variableMappingsForType: (recoveredValue10).
    recoveredValue12 := (self) getCollectionOfMappingsFrom: (recoveredValue11).
    recoveredValue13 := recoveredArg1.
    (self) writeXMLElementMapping: (recoveredValue12) writer: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    (recoveredValue14) closeComplex.
    recoveredValue15 := recoveredArg1.
    (recoveredValue15) openComplex: ('VariableMappingsExternal').
    recoveredValue16 := (self) class.
    recoveredValue17 := (recoveredValue16) variableExternalMappingType.
    recoveredValue18 := (self) variableMappingsForType: (recoveredValue17).
    recoveredValue19 := (self) getCollectionOfMappingsFrom: (recoveredValue18).
    recoveredValue20 := recoveredArg1.
    (self) writeXMLElementMapping: (recoveredValue19) writer: (recoveredValue20).
    recoveredValue21 := recoveredArg1.
    (recoveredValue21) closeComplex.
    ^self
! !

"ASDBase.ic method 0x203d1ddc; bytecode file offset 0xcce6cc"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
loadFinished: recoveredArg1
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
            super loadFinished: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDirectElements.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := true.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isClientServerInterface.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 30].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isProvidePort.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 53] ifFalse: [recoveredBlock11PC := 30].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := false.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack3 := [:block280f7698Arg1 | 
    nil
].
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) readKeyIfUndefined: (recoveredBlock11Stack3).
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            (recoveredBlock11Stack2 ~~ nil) ifTrue: [recoveredBlock11PC := 53] ifFalse: [recoveredBlock11PC := 46].
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) realizedInterfaces.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) includes: (recoveredBlock11Stack2).
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) realizedInterfaces.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'Call_92320'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) realizedInterfaces: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d37d8; bytecode file offset 0xcd00a4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
isMappingValidForSource: recoveredArg1 forTarget: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessage.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := (recoveredStack4) ownerInstanceForMappingElement: (recoveredStack5).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessageMappingValidForSource: (recoveredStack2) forTarget: (recoveredStack3) forInterface: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimilarMappingTypeSource: (recoveredStack1) target: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e6f4c; bytecode file offset 0xce385c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsAsStorageObjects
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsDetectionOfInvalid.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isZero.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'There are '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ' invalid Mappings in the Software Component!!\Do you want to remove these Mappings?'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'ASDRemoveInvalidMappings'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := #('Remove' 'Keep').
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) buttonText: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'warning'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterMappingType.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) mappingsAsStorageObjects: (recoveredStack1) removeInvalid: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableInternalMappingType.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) mappingsAsStorageObjects: (recoveredStack1) removeInvalid: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableExternalMappingType.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) mappingsAsStorageObjects: (recoveredStack1) removeInvalid: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ecb7c; bytecode file offset 0xce9450"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
isSimilarMappingTypeSource: recoveredArg1 target: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sameType: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImported.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasMaxSize.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGReal.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGInteger.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGReal.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGInteger.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204001ac; bytecode file offset 0xcfca98"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
createInterrunnablesAndMapFor: recoveredArg1 implConfig: recoveredArg2 mappingObjects: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Local4 recoveredBlock7Local5 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) createInterrunnableFor: (recoveredBlock7Stack1).
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Local5 := recoveredBlock7Stack0.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isLocal.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 26] ifFalse: [recoveredBlock7PC := 36].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg2.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) configForElementHierarchical: (recoveredBlock7Stack1).
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Local4 := recoveredBlock7Stack0.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) owner.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) classImplConfig.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) configForElement: (recoveredBlock7Stack1).
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Local4 := recoveredBlock7Stack0.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Local4.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            (recoveredBlock7Stack0 == nil) ifTrue: [recoveredBlock7PC := 60] ifFalse: [recoveredBlock7PC := 50].
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg2.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local4.
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) deepCopy.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local5.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            (recoveredBlock7Stack0) setConfig: (recoveredBlock7Stack1) forElement: (recoveredBlock7Stack2).
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Stack1 := ASDMappingSourceObject.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 66.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            recoveredBlock7Stack3 := true.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) newFor: (recoveredBlock7Stack2) artificial: (recoveredBlock7Stack3).
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack3 := true.
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) asVariableMappingSource: (recoveredBlock7Stack1) inSWC: (recoveredBlock7Stack2) artificial: (recoveredBlock7Stack3).
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack0.
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Local5.
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) asVariableMappingTargetInSWC: (recoveredBlock7Stack1).
            recoveredBlock7PC := 80.
        ].
        recoveredBlock7Step = 80 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local2.
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) mapSource: (recoveredBlock7Stack1) toTarget: (recoveredBlock7Stack2) inMapping: (recoveredBlock7Stack3).
            recoveredBlock7PC := 90.
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2040d3d0; bytecode file offset 0xd09cb0"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
assignedMethodForEvent: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpecification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) events.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) name.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOperationInvoke.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) portAliasName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := (self) elementAliasName: (recoveredBlock49Value0).
    recoveredBlock49Value2 := [:recoveredBlock49Block59Arg1 | 
    | recoveredBlock49Block59Value0 recoveredBlock49Block59Value1 recoveredBlock49Block59Value2 recoveredBlock49Block59Value3 |
    recoveredBlock49Block59Value0 := recoveredLocal1.
    recoveredBlock49Block59Value1 := (recoveredBlock49Block59Value0) operationAliasName.
    recoveredBlock49Block59Value2 := [:recoveredBlock49Block59Block71Arg1 | 
    | recoveredBlock49Block59Block71Value0 recoveredBlock49Block59Block71Value1 recoveredBlock49Block59Block71Value2 recoveredBlock49Block59Block71Value3 |
    recoveredBlock49Block59Block71Value0 := recoveredBlock49Block59Arg1.
    recoveredBlock49Block59Block71Value1 := (recoveredBlock49Block59Block71Value0) sgClass.
    recoveredBlock49Block59Block71Value2 := recoveredBlock49Block59Block71Arg1.
    recoveredBlock49Block59Block71Value3 := (recoveredBlock49Block59Block71Value1) methodAliasName: (recoveredBlock49Block59Block71Value2).
    ^recoveredBlock49Block59Block71Value3
].
    recoveredBlock49Block59Value3 := (recoveredBlock49Block59Value1) ifNotNil: (recoveredBlock49Block59Value2).
    recoveredBlock49Block59Value3
].
    recoveredBlock49Value3 := (recoveredBlock49Value1) ifNotNil: (recoveredBlock49Value2).
    recoveredBlock49Value3
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041016c; bytecode file offset 0xd0ca34"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
replaceInMappings: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) variableExternalMappings.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := [:recoveredBlock5Block13Arg1 | 
    | recoveredBlock5Block13Value0 recoveredBlock5Block13Value1 recoveredBlock5Block13Value2 recoveredBlock5Block13Value3 |
    recoveredBlock5Block13Value0 := recoveredBlock5Block13Arg1.
    recoveredBlock5Block13Value1 := recoveredArg1.
    recoveredBlock5Block13Value2 := recoveredArg2.
    recoveredBlock5Block13Value3 := (recoveredBlock5Block13Value0) replaceAlias: (recoveredBlock5Block13Value1) with: (recoveredBlock5Block13Value2).
    recoveredBlock5Block13Value3
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) do: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) variableInternalMappings.
    recoveredValue3 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := [:recoveredBlock36Block43Arg1 | 
    | recoveredBlock36Block43Value0 recoveredBlock36Block43Value1 recoveredBlock36Block43Value2 recoveredBlock36Block43Value3 |
    recoveredBlock36Block43Value0 := recoveredBlock36Block43Arg1.
    recoveredBlock36Block43Value1 := recoveredArg1.
    recoveredBlock36Block43Value2 := recoveredArg2.
    recoveredBlock36Block43Value3 := (recoveredBlock36Block43Value0) replaceAlias: (recoveredBlock36Block43Value1) with: (recoveredBlock36Block43Value2).
    recoveredBlock36Block43Value3
].
    recoveredBlock36Value2 := (recoveredBlock36Value0) do: (recoveredBlock36Value1).
    recoveredBlock36Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) parameterMappings.
    recoveredValue5 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 |
    recoveredBlock67Value0 := recoveredBlock67Arg1.
    recoveredBlock67Value1 := [:recoveredBlock67Block75Arg1 | 
    | recoveredBlock67Block75Value0 recoveredBlock67Block75Value1 recoveredBlock67Block75Value2 recoveredBlock67Block75Value3 |
    recoveredBlock67Block75Value0 := recoveredBlock67Block75Arg1.
    recoveredBlock67Block75Value1 := recoveredArg1.
    recoveredBlock67Block75Value2 := recoveredArg2.
    recoveredBlock67Block75Value3 := (recoveredBlock67Block75Value0) replaceAlias: (recoveredBlock67Block75Value1) with: (recoveredBlock67Block75Value2).
    recoveredBlock67Block75Value3
].
    recoveredBlock67Value2 := (recoveredBlock67Value0) do: (recoveredBlock67Value1).
    recoveredBlock67Value2
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2041dd50; bytecode file offset 0xd1a644"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableInternalMappingTargetObjects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
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
            recoveredStack0 := (recoveredStack0) allVariables.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280fc2f4Arg1 | 
    | block280fc2f4Value0 block280fc2f4Value1 |
    block280fc2f4Value0 := block280fc2f4Arg1.
    block280fc2f4Value1 := (block280fc2f4Value0) isInterrunnable.
    block280fc2f4Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22Stack6 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isScalar.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 46] ifFalse: [recoveredBlock22PC := 34].
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isEnumeration.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 46] ifFalse: [recoveredBlock22PC := 40].
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isVector.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 46] ifFalse: [recoveredBlock22PC := 55].
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack3 := self.
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) asVariableMappingTargetInSWC: (recoveredBlock22Stack3).
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 56.
        ].
        recoveredBlock22Step = 56 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isRecordWithoutMatrix.
            recoveredBlock22PC := 59.
        ].
        recoveredBlock22Step = 59 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 62] ifFalse: [recoveredBlock22PC := 94].
        ].
        recoveredBlock22Step = 62 ifTrue: [
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 66.
        ].
        recoveredBlock22Step = 66 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            recoveredBlock22Stack3 := self.
            recoveredBlock22PC := 68.
        ].
        recoveredBlock22Step = 68 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) asVariableMappingTargetInSWC: (recoveredBlock22Stack3).
            recoveredBlock22PC := 70.
        ].
        recoveredBlock22Step = 70 ifTrue: [
            (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 72.
        ].
        recoveredBlock22Step = 72 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 76.
        ].
        recoveredBlock22Step = 76 ifTrue: [
            recoveredBlock22Stack3 := OrderedCollection.
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) new.
            recoveredBlock22PC := 79.
        ].
        recoveredBlock22Step = 79 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Stack3.
            recoveredBlock22PC := 80.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            recoveredBlock22Stack5 := self.
            recoveredBlock22PC := 81.
        ].
        recoveredBlock22Step = 81 ifTrue: [
            (recoveredBlock22Stack4) add: (recoveredBlock22Stack5).
            recoveredBlock22Stack4 := recoveredBlock22Stack3.
            recoveredBlock22PC := 84.
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Arg1.
            recoveredBlock22PC := 85.
        ].
        recoveredBlock22Step = 85 ifTrue: [
            (recoveredBlock22Stack4) add: (recoveredBlock22Stack5).
            recoveredBlock22PC := 87.
        ].
        recoveredBlock22Step = 87 ifTrue: [
            recoveredBlock22Stack4 := true.
            recoveredBlock22PC := 88.
        ].
        recoveredBlock22Step = 88 ifTrue: [
            recoveredBlock22Stack5 := false.
            recoveredBlock22PC := 89.
        ].
        recoveredBlock22Step = 89 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) asMappingTargetsForRecordElementsInSwc: (recoveredBlock22Stack3) withArrays: (recoveredBlock22Stack4) withMatrices: (recoveredBlock22Stack5).
            recoveredBlock22PC := 92.
        ].
        recoveredBlock22Step = 92 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) addAll: (recoveredBlock22Stack2).
            recoveredBlock22PC := 94.
        ].
        recoveredBlock22Step = 94 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042b6c8; bytecode file offset 0xd27fa8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
ownerInstanceForMappingElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelOIDChain.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerInstance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock26Value0 |
    recoveredBlock26Value0 := recoveredLocal1.
    ^recoveredBlock26Value0
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) notNil: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelOIDChain.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHierarchicalByteArray.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) modelOIDChain.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) getModelPathFor: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := nil.
            recoveredBlock55PC := 63.
        ].
        recoveredBlock55Step = 63 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 64.
        ].
        recoveredBlock55Step = 64 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) notEmpty.
            recoveredBlock55PC := 66.
        ].
        recoveredBlock55Step = 66 ifTrue: [
            (recoveredBlock55Stack2) ifTrue: [recoveredBlock55PC := 70] ifFalse: [recoveredBlock55PC := 83].
        ].
        recoveredBlock55Step = 70 ifTrue: [
            recoveredBlock55PC := 71.
        ].
        recoveredBlock55Step = 71 ifTrue: [
            recoveredBlock55Stack1 := recoveredArg1.
            recoveredBlock55PC := 74.
        ].
        recoveredBlock55Step = 74 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 75.
        ].
        recoveredBlock55Step = 75 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) first.
            recoveredBlock55PC := 77.
        ].
        recoveredBlock55Step = 77 ifTrue: [
            (recoveredBlock55Stack1) ownerInstance: (recoveredBlock55Stack2).
            recoveredBlock55PC := 79.
        ].
        recoveredBlock55Step = 79 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Arg1.
            recoveredBlock55PC := 80.
        ].
        recoveredBlock55Step = 80 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) first.
            recoveredBlock55PC := 82.
        ].
        recoveredBlock55Step = 82 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 83 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack1.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelOIDChain.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) isByteArray.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2042d1e4; bytecode file offset 0xd29ad8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
parameterForMapping
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) allExportedVariablesDictionary.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) allImportedVariables.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) sgClass.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 33.
        ].
        recoveredBlock22Step = 33 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack3.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            (recoveredBlock22Stack2 == nil) ifTrue: [recoveredBlock22PC := 97] ifFalse: [recoveredBlock22PC := 38].
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) sgClassKey.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isValueStorageType.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 48] ifFalse: [recoveredBlock22PC := 97].
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isParameter.
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 54] ifFalse: [recoveredBlock22PC := 97].
        ].
        recoveredBlock22Step = 54 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isImported.
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 60] ifFalse: [recoveredBlock22PC := 97].
        ].
        recoveredBlock22Step = 60 ifTrue: [
            recoveredBlock22Stack2 := self.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Arg1.
            recoveredBlock22PC := 62.
        ].
        recoveredBlock22Step = 62 ifTrue: [
            recoveredBlock22Stack4 := recoveredLocal3.
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) mappedClassVarFor: (recoveredBlock22Stack3) exportedVariables: (recoveredBlock22Stack4).
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            (recoveredBlock22Stack2 ~~ nil) ifTrue: [recoveredBlock22PC := 97] ifFalse: [recoveredBlock22PC := 70].
        ].
        recoveredBlock22Step = 70 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 71.
        ].
        recoveredBlock22Step = 71 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isSGMatrix.
            recoveredBlock22PC := 73.
        ].
        recoveredBlock22Step = 73 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local1.
            recoveredBlock22PC := 74.
        ].
        recoveredBlock22Step = 74 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) isCharTable.
            recoveredBlock22PC := 76.
        ].
        recoveredBlock22Step = 76 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) | (recoveredBlock22Stack3).
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 97] ifFalse: [recoveredBlock22PC := 82].
        ].
        recoveredBlock22Step = 82 ifTrue: [
            recoveredBlock22PC := 83.
        ].
        recoveredBlock22Step = 83 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 84.
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 85.
        ].
        recoveredBlock22Step = 85 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isRecordWithMatrix.
            recoveredBlock22PC := 87.
        ].
        recoveredBlock22Step = 87 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 97] ifFalse: [recoveredBlock22PC := 90].
        ].
        recoveredBlock22Step = 90 ifTrue: [
            recoveredBlock22PC := 91.
        ].
        recoveredBlock22Step = 91 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 94.
        ].
        recoveredBlock22Step = 94 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 95.
        ].
        recoveredBlock22Step = 95 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 97.
        ].
        recoveredBlock22Step = 97 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20435a7c; bytecode file offset 0xd3235c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsForType: recoveredArg1 ensureIncluded: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappingsAtType: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (recoveredBlock21Value0) sourceObject.
    recoveredBlock21Value2 := (recoveredBlock21Value1) displayName.
    recoveredLocal2 := recoveredBlock21Value2.
    recoveredBlock21Value3 := recoveredLocal3.
    recoveredBlock21Value4 := recoveredLocal2.
    recoveredBlock21Value5 := [
    | recoveredBlock21Block42Value0 recoveredBlock21Block42Value1 recoveredBlock21Block42Value2 recoveredBlock21Block42Value3 recoveredBlock21Block42Value4 |
    recoveredBlock21Block42Value0 := recoveredLocal3.
    recoveredBlock21Block42Value1 := recoveredLocal2.
    recoveredBlock21Block42Value2 := OrderedCollection.
    recoveredBlock21Block42Value3 := (recoveredBlock21Block42Value2) new.
    recoveredBlock21Block42Value4 := (recoveredBlock21Block42Value0) at: (recoveredBlock21Block42Value1) put: (recoveredBlock21Block42Value3).
    recoveredBlock21Block42Value4
].
    recoveredBlock21Value6 := (recoveredBlock21Value3) at: (recoveredBlock21Value4) ifAbsent: (recoveredBlock21Value5).
    recoveredLocal1 := recoveredBlock21Value6.
    recoveredBlock21Value7 := recoveredLocal1.
    recoveredBlock21Value8 := [:recoveredBlock21Block69Arg1 | 
    | recoveredBlock21Block69Value0 recoveredBlock21Block69Value1 recoveredBlock21Block69Value2 |
    recoveredBlock21Block69Value0 := recoveredBlock21Block69Arg1.
    recoveredBlock21Block69Value1 := recoveredBlock21Arg1.
    recoveredBlock21Block69Value2 := (recoveredBlock21Block69Value0) equals: (recoveredBlock21Block69Value1).
    recoveredBlock21Block69Value2
].
    recoveredBlock21Value9 := [
    | recoveredBlock21Block83Value0 recoveredBlock21Block83Value1 recoveredBlock21Block83Value2 |
    recoveredBlock21Block83Value0 := recoveredLocal1.
    recoveredBlock21Block83Value1 := recoveredBlock21Arg1.
    recoveredBlock21Block83Value2 := (recoveredBlock21Block83Value0) add: (recoveredBlock21Block83Value1).
    recoveredBlock21Block83Value2
].
    recoveredBlock21Value10 := (recoveredBlock21Value7) detect: (recoveredBlock21Value8) ifNone: (recoveredBlock21Value9).
    recoveredBlock21Value10
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204429b4; bytecode file offset 0xd3f2ac"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
updateInterfaces
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedInterfaces.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) ownerSGClass.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) allDirectElements.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) includes: (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 34] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := false.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            (recoveredBlock5Stack1) runtimeAssert: (recoveredBlock5Stack2).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) realizedInterfaces.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack3 := [].
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) remove: (recoveredBlock5Stack2) ifAbsent: (recoveredBlock5Stack3).
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedInterfaces.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := (self) updateInterface: (recoveredBlock39Value0).
    recoveredBlock39Value1
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedInterfaces.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:block280fe8fcArg1 | 
    | block280fe8fcValue0 block280fe8fcValue1 |
    block280fe8fcValue0 := block280fe8fcArg1.
    block280fe8fcValue1 := (block280fe8fcValue0) aliasName.
    block280fe8fcValue1
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMethods.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 81.
        ].
        recoveredBlock74Step = 81 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 82.
        ].
        recoveredBlock74Step = 82 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) realizedSignature.
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            (recoveredBlock74Stack2 == nil) ifTrue: [recoveredBlock74PC := 105] ifFalse: [recoveredBlock74PC := 88].
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74Stack2 := recoveredLocal1.
            recoveredBlock74PC := 91.
        ].
        recoveredBlock74Step = 91 ifTrue: [
            recoveredBlock74Stack3 := recoveredBlock74Arg1.
            recoveredBlock74PC := 92.
        ].
        recoveredBlock74Step = 92 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) realizedSignature.
            recoveredBlock74PC := 94.
        ].
        recoveredBlock74Step = 94 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) first.
            recoveredBlock74PC := 96.
        ].
        recoveredBlock74Step = 96 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) includes: (recoveredBlock74Stack3).
            recoveredBlock74PC := 97.
        ].
        recoveredBlock74Step = 97 ifTrue: [
            (recoveredBlock74Stack2) ifTrue: [recoveredBlock74PC := 105] ifFalse: [recoveredBlock74PC := 100].
        ].
        recoveredBlock74Step = 100 ifTrue: [
            recoveredBlock74PC := 101.
        ].
        recoveredBlock74Step = 101 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 102.
        ].
        recoveredBlock74Step = 102 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 103.
        ].
        recoveredBlock74Step = 103 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) removeSignature: (recoveredBlock74Stack2).
            recoveredBlock74PC := 105.
        ].
        recoveredBlock74Step = 105 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20450058; bytecode file offset 0xd4c930"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappedParameterFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:block280ff43cArg1 | 
    | block280ff43cValue0 block280ff43cValue1 block280ff43cValue2 |
    block280ff43cValue0 := block280ff43cArg1.
    block280ff43cValue1 := (block280ff43cValue0) targetObject.
    block280ff43cValue2 := (block280ff43cValue1) notNil.
    block280ff43cValue2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetObject.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMappingTargetObjects.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 recoveredBlock77Value4 |
    recoveredBlock77Value0 := recoveredBlock77Arg1.
    recoveredBlock77Value1 := (recoveredBlock77Value0) displayName.
    recoveredBlock77Value2 := recoveredLocal2.
    recoveredBlock77Value3 := (recoveredBlock77Value2) displayName.
    recoveredBlock77Value4 := (recoveredBlock77Value1) = (recoveredBlock77Value3).
    recoveredBlock77Value4
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20466938; bytecode file offset 0xd63238"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
convertToASDV640_Step1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super convertToASDV640_Step1.
    recoveredValue0 := Array.
    recoveredValue1 := (self) variableInternalMappings.
    recoveredValue2 := (self) variableExternalMappings.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 |
    recoveredBlock17Value0 := Set.
    recoveredBlock17Value1 := (recoveredBlock17Value0) new.
    recoveredLocal1 := recoveredBlock17Value1.
    recoveredBlock17Value2 := recoveredBlock17Arg1.
    recoveredBlock17Value3 := [:recoveredBlock17Block34Arg1 :recoveredBlock17Block34Arg2 | 
    | recoveredBlock17Block34Value0 recoveredBlock17Block34Value1 recoveredBlock17Block34Value2 |
    recoveredBlock17Block34Value0 := recoveredBlock17Block34Arg2.
    recoveredBlock17Block34Value1 := [:recoveredBlock17Block34Block43Arg1 | 
    | recoveredBlock17Block34Block43Stack0 recoveredBlock17Block34Block43Stack1 recoveredBlock17Block34Block43Stack2 recoveredBlock17Block34Block43Stack3 recoveredBlock17Block34Block43PC recoveredBlock17Block34Block43Step recoveredBlock17Block34Block43Done recoveredBlock17Block34Block43Result |
    recoveredBlock17Block34Block43Stack0 := nil.
    recoveredBlock17Block34Block43PC := 50.
    recoveredBlock17Block34Block43Done := false.
    [recoveredBlock17Block34Block43Done not] whileTrue: [
        recoveredBlock17Block34Block43Step := recoveredBlock17Block34Block43PC.
        recoveredBlock17Block34Block43Step = 50 ifTrue: [
            recoveredBlock17Block34Block43Stack1 := nil.
            recoveredBlock17Block34Block43PC := 51.
        ].
        recoveredBlock17Block34Block43Step = 51 ifTrue: [
            recoveredBlock17Block34Block43Stack2 := recoveredBlock17Block34Block43Arg1.
            recoveredBlock17Block34Block43PC := 52.
        ].
        recoveredBlock17Block34Block43Step = 52 ifTrue: [
            recoveredBlock17Block34Block43Stack2 := (recoveredBlock17Block34Block43Stack2) hasDotIncludedInSourceObjectDisplayName.
            recoveredBlock17Block34Block43PC := 54.
        ].
        recoveredBlock17Block34Block43Step = 54 ifTrue: [
            (recoveredBlock17Block34Block43Stack2) ifTrue: [recoveredBlock17Block34Block43PC := 58] ifFalse: [recoveredBlock17Block34Block43PC := 70].
        ].
        recoveredBlock17Block34Block43Step = 58 ifTrue: [
            recoveredBlock17Block34Block43PC := 59.
        ].
        recoveredBlock17Block34Block43Step = 59 ifTrue: [
            recoveredBlock17Block34Block43Stack1 := recoveredBlock17Block34Block43Arg1.
            recoveredBlock17Block34Block43PC := 60.
        ].
        recoveredBlock17Block34Block43Step = 60 ifTrue: [
            (recoveredBlock17Block34Block43Stack1) addSelfToSourceObjectDisplayName.
            recoveredBlock17Block34Block43PC := 62.
        ].
        recoveredBlock17Block34Block43Step = 62 ifTrue: [
            recoveredBlock17Block34Block43Stack1 := recoveredLocal1.
            recoveredBlock17Block34Block43PC := 65.
        ].
        recoveredBlock17Block34Block43Step = 65 ifTrue: [
            recoveredBlock17Block34Block43Stack2 := recoveredBlock17Block34Arg1.
            recoveredBlock17Block34Block43PC := 68.
        ].
        recoveredBlock17Block34Block43Step = 68 ifTrue: [
            recoveredBlock17Block34Block43Stack1 := (recoveredBlock17Block34Block43Stack1) add: (recoveredBlock17Block34Block43Stack2).
            recoveredBlock17Block34Block43PC := 70.
        ].
        recoveredBlock17Block34Block43Step = 70 ifTrue: [
            recoveredBlock17Block34Block43Result := recoveredBlock17Block34Block43Stack1.
            recoveredBlock17Block34Block43Done := true.
        ].
    ].
    recoveredBlock17Block34Block43Result
].
    recoveredBlock17Block34Value2 := (recoveredBlock17Block34Value0) do: (recoveredBlock17Block34Value1).
    recoveredBlock17Block34Value2
].
    (recoveredBlock17Value2) keysAndValuesDo: (recoveredBlock17Value3).
    recoveredBlock17Value4 := recoveredLocal1.
    recoveredBlock17Value5 := [:recoveredBlock17Block79Arg1 | 
    | recoveredBlock17Block79Value0 recoveredBlock17Block79Value1 recoveredBlock17Block79Value2 recoveredBlock17Block79Value3 recoveredBlock17Block79Value4 recoveredBlock17Block79Value5 recoveredBlock17Block79Value6 recoveredBlock17Block79Value7 recoveredBlock17Block79Value8 recoveredBlock17Block79Value9 recoveredBlock17Block79Value10 |
    recoveredBlock17Block79Value0 := recoveredBlock17Arg1.
    recoveredBlock17Block79Value1 := recoveredBlock17Block79Arg1.
    recoveredBlock17Block79Value2 := ('self.') , (recoveredBlock17Block79Value1).
    recoveredBlock17Block79Value3 := recoveredBlock17Arg1.
    recoveredBlock17Block79Value4 := recoveredBlock17Block79Arg1.
    recoveredBlock17Block79Value5 := [].
    recoveredBlock17Block79Value6 := (recoveredBlock17Block79Value3) at: (recoveredBlock17Block79Value4) ifAbsent: (recoveredBlock17Block79Value5).
    (recoveredBlock17Block79Value0) at: (recoveredBlock17Block79Value2) put: (recoveredBlock17Block79Value6).
    recoveredBlock17Block79Value7 := recoveredBlock17Arg1.
    recoveredBlock17Block79Value8 := recoveredBlock17Block79Arg1.
    recoveredBlock17Block79Value9 := [].
    recoveredBlock17Block79Value10 := (recoveredBlock17Block79Value7) removeKey: (recoveredBlock17Block79Value8) ifAbsent: (recoveredBlock17Block79Value9).
    recoveredBlock17Block79Value10
].
    recoveredBlock17Value6 := (recoveredBlock17Value4) do: (recoveredBlock17Value5).
    recoveredBlock17Value6
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2046daec; bytecode file offset 0xd6a3ec"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsInitializeForType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) setElementMappings: (recoveredStack1) forType: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableExternalMappingType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableExternalMappingSourceObjects.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableInternalMappingType.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableInternalMappingSourceObjects.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterMappingType.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMappingSourceObjects.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Stack0 recoveredBlock81Stack1 recoveredBlock81Stack2 recoveredBlock81Stack3 recoveredBlock81Stack4 recoveredBlock81PC recoveredBlock81Step recoveredBlock81Done recoveredBlock81Result |
    recoveredBlock81Stack0 := self.
    recoveredBlock81PC := 88.
    recoveredBlock81Done := false.
    [recoveredBlock81Done not] whileTrue: [
        recoveredBlock81Step := recoveredBlock81PC.
        recoveredBlock81Step = 88 ifTrue: [
            recoveredBlock81Stack1 := recoveredLocal2.
            recoveredBlock81PC := 91.
        ].
        recoveredBlock81Step = 91 ifTrue: [
            recoveredBlock81Stack2 := recoveredBlock81Arg1.
            recoveredBlock81PC := 92.
        ].
        recoveredBlock81Step = 92 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) displayName.
            recoveredBlock81PC := 94.
        ].
        recoveredBlock81Step = 94 ifTrue: [
            recoveredBlock81Stack3 := [
    | block28101374Value0 block28101374Value1 |
    block28101374Value0 := OrderedCollection.
    block28101374Value1 := (block28101374Value0) new.
    block28101374Value1
].
            recoveredBlock81PC := 96.
        ].
        recoveredBlock81Step = 96 ifTrue: [
            recoveredBlock81PC := 104.
        ].
        recoveredBlock81Step = 104 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) at: (recoveredBlock81Stack2) ifAbsentPut: (recoveredBlock81Stack3).
            recoveredBlock81PC := 106.
        ].
        recoveredBlock81Step = 106 ifTrue: [
            recoveredBlock81Stack2 := ASDMappingObject.
            recoveredBlock81PC := 108.
        ].
        recoveredBlock81Step = 108 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) create.
            recoveredBlock81PC := 110.
        ].
        recoveredBlock81Step = 110 ifTrue: [
            recoveredBlock81Stack3 := recoveredBlock81Arg1.
            recoveredBlock81PC := 111.
        ].
        recoveredBlock81Step = 111 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) sourceObject: (recoveredBlock81Stack3).
            recoveredBlock81PC := 113.
        ].
        recoveredBlock81Step = 113 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) add: (recoveredBlock81Stack2).
            recoveredBlock81PC := 115.
        ].
        recoveredBlock81Step = 115 ifTrue: [
            recoveredBlock81Result := recoveredBlock81Stack1.
            recoveredBlock81Done := true.
        ].
    ].
    recoveredBlock81Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047064c; bytecode file offset 0xd6cf3c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
allPrimaryMappings
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) variableInternalMappingType.
    recoveredValue4 := (self) allMappingsCopyForType: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block23Arg1 | 
    | recoveredBlock15Block23Stack0 recoveredBlock15Block23Stack1 recoveredBlock15Block23Stack2 recoveredBlock15Block23Stack3 recoveredBlock15Block23Stack4 recoveredBlock15Block23PC recoveredBlock15Block23Step recoveredBlock15Block23Done recoveredBlock15Block23Result |
    recoveredBlock15Block23Stack0 := nil.
    recoveredBlock15Block23PC := 30.
    recoveredBlock15Block23Done := false.
    [recoveredBlock15Block23Done not] whileTrue: [
        recoveredBlock15Block23Step := recoveredBlock15Block23PC.
        recoveredBlock15Block23Step = 30 ifTrue: [
            recoveredBlock15Block23Stack1 := recoveredLocal1.
            recoveredBlock15Block23PC := 33.
        ].
        recoveredBlock15Block23Step = 33 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 34.
        ].
        recoveredBlock15Block23Step = 34 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) sourceObject.
            recoveredBlock15Block23PC := 36.
        ].
        recoveredBlock15Block23Step = 36 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) qualifiedName.
            recoveredBlock15Block23PC := 38.
        ].
        recoveredBlock15Block23Step = 38 ifTrue: [
            recoveredBlock15Block23Stack3 := [
    | block281015d8Value0 block281015d8Value1 |
    block281015d8Value0 := OrderedCollection.
    block281015d8Value1 := (block281015d8Value0) new.
    block281015d8Value1
].
            recoveredBlock15Block23PC := 40.
        ].
        recoveredBlock15Block23Step = 40 ifTrue: [
            recoveredBlock15Block23PC := 48.
        ].
        recoveredBlock15Block23Step = 48 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) at: (recoveredBlock15Block23Stack2) ifAbsentPut: (recoveredBlock15Block23Stack3).
            recoveredBlock15Block23PC := 50.
        ].
        recoveredBlock15Block23Step = 50 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 51.
        ].
        recoveredBlock15Block23Step = 51 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) add: (recoveredBlock15Block23Stack2).
            recoveredBlock15Block23PC := 53.
        ].
        recoveredBlock15Block23Step = 53 ifTrue: [
            recoveredBlock15Block23Result := recoveredBlock15Block23Stack1.
            recoveredBlock15Block23Done := true.
        ].
    ].
    recoveredBlock15Block23Result
].
    recoveredBlock15Value2 := (recoveredBlock15Value0) do: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) variableExternalMappingType.
    recoveredValue8 := (self) allMappingsCopyForType: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := [:recoveredBlock66Block73Arg1 | 
    | recoveredBlock66Block73Stack0 recoveredBlock66Block73Stack1 recoveredBlock66Block73Stack2 recoveredBlock66Block73Stack3 recoveredBlock66Block73Stack4 recoveredBlock66Block73PC recoveredBlock66Block73Step recoveredBlock66Block73Done recoveredBlock66Block73Result |
    recoveredBlock66Block73Stack0 := nil.
    recoveredBlock66Block73PC := 80.
    recoveredBlock66Block73Done := false.
    [recoveredBlock66Block73Done not] whileTrue: [
        recoveredBlock66Block73Step := recoveredBlock66Block73PC.
        recoveredBlock66Block73Step = 80 ifTrue: [
            recoveredBlock66Block73Stack1 := nil.
            recoveredBlock66Block73PC := 81.
        ].
        recoveredBlock66Block73Step = 81 ifTrue: [
            recoveredBlock66Block73Stack2 := recoveredBlock66Block73Arg1.
            recoveredBlock66Block73PC := 82.
        ].
        recoveredBlock66Block73Step = 82 ifTrue: [
            recoveredBlock66Block73Stack2 := (recoveredBlock66Block73Stack2) sourceObject.
            recoveredBlock66Block73PC := 84.
        ].
        recoveredBlock66Block73Step = 84 ifTrue: [
            recoveredBlock66Block73Stack2 := (recoveredBlock66Block73Stack2) hasModelAccessSendReceive.
            recoveredBlock66Block73PC := 86.
        ].
        recoveredBlock66Block73Step = 86 ifTrue: [
            (recoveredBlock66Block73Stack2) ifTrue: [recoveredBlock66Block73PC := 113] ifFalse: [recoveredBlock66Block73PC := 90].
        ].
        recoveredBlock66Block73Step = 90 ifTrue: [
            recoveredBlock66Block73PC := 91.
        ].
        recoveredBlock66Block73Step = 91 ifTrue: [
            recoveredBlock66Block73Stack1 := recoveredLocal1.
            recoveredBlock66Block73PC := 94.
        ].
        recoveredBlock66Block73Step = 94 ifTrue: [
            recoveredBlock66Block73Stack2 := recoveredBlock66Block73Arg1.
            recoveredBlock66Block73PC := 95.
        ].
        recoveredBlock66Block73Step = 95 ifTrue: [
            recoveredBlock66Block73Stack2 := (recoveredBlock66Block73Stack2) sourceObject.
            recoveredBlock66Block73PC := 97.
        ].
        recoveredBlock66Block73Step = 97 ifTrue: [
            recoveredBlock66Block73Stack2 := (recoveredBlock66Block73Stack2) qualifiedName.
            recoveredBlock66Block73PC := 99.
        ].
        recoveredBlock66Block73Step = 99 ifTrue: [
            recoveredBlock66Block73Stack3 := [
    | block281015fcValue0 block281015fcValue1 |
    block281015fcValue0 := OrderedCollection.
    block281015fcValue1 := (block281015fcValue0) new.
    block281015fcValue1
].
            recoveredBlock66Block73PC := 101.
        ].
        recoveredBlock66Block73Step = 101 ifTrue: [
            recoveredBlock66Block73PC := 108.
        ].
        recoveredBlock66Block73Step = 108 ifTrue: [
            recoveredBlock66Block73Stack1 := (recoveredBlock66Block73Stack1) at: (recoveredBlock66Block73Stack2) ifAbsentPut: (recoveredBlock66Block73Stack3).
            recoveredBlock66Block73PC := 110.
        ].
        recoveredBlock66Block73Step = 110 ifTrue: [
            recoveredBlock66Block73Stack2 := recoveredBlock66Block73Arg1.
            recoveredBlock66Block73PC := 111.
        ].
        recoveredBlock66Block73Step = 111 ifTrue: [
            recoveredBlock66Block73Stack1 := (recoveredBlock66Block73Stack1) add: (recoveredBlock66Block73Stack2).
            recoveredBlock66Block73PC := 113.
        ].
        recoveredBlock66Block73Step = 113 ifTrue: [
            recoveredBlock66Block73Result := recoveredBlock66Block73Stack1.
            recoveredBlock66Block73Done := true.
        ].
    ].
    recoveredBlock66Block73Result
].
    recoveredBlock66Value2 := (recoveredBlock66Value0) do: (recoveredBlock66Value1).
    recoveredBlock66Value2
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2047d164; bytecode file offset 0xd79a6c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
getMultiMappingLabels
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappingTypes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (self) mappingsForType: (recoveredBlock12Value0).
    recoveredBlock12Value2 := [:recoveredBlock12Block21Arg1 | 
    | recoveredBlock12Block21Stack0 recoveredBlock12Block21Stack1 recoveredBlock12Block21Stack2 recoveredBlock12Block21Stack3 recoveredBlock12Block21Stack4 recoveredBlock12Block21PC recoveredBlock12Block21Step recoveredBlock12Block21Done recoveredBlock12Block21Result |
    recoveredBlock12Block21Stack0 := nil.
    recoveredBlock12Block21PC := 28.
    recoveredBlock12Block21Done := false.
    [recoveredBlock12Block21Done not] whileTrue: [
        recoveredBlock12Block21Step := recoveredBlock12Block21PC.
        recoveredBlock12Block21Step = 28 ifTrue: [
            recoveredBlock12Block21Stack1 := nil.
            recoveredBlock12Block21PC := 29.
        ].
        recoveredBlock12Block21Step = 29 ifTrue: [
            recoveredBlock12Block21Stack2 := recoveredBlock12Block21Arg1.
            recoveredBlock12Block21PC := 30.
        ].
        recoveredBlock12Block21Step = 30 ifTrue: [
            recoveredBlock12Block21Stack2 := (recoveredBlock12Block21Stack2) size.
            recoveredBlock12Block21PC := 32.
        ].
        recoveredBlock12Block21Step = 32 ifTrue: [
            recoveredBlock12Block21Stack3 := 1.
            recoveredBlock12Block21PC := 34.
        ].
        recoveredBlock12Block21Step = 34 ifTrue: [
            recoveredBlock12Block21Stack2 := (recoveredBlock12Block21Stack2) > (recoveredBlock12Block21Stack3).
            recoveredBlock12Block21PC := 35.
        ].
        recoveredBlock12Block21Step = 35 ifTrue: [
            (recoveredBlock12Block21Stack2) ifTrue: [recoveredBlock12Block21PC := 38] ifFalse: [recoveredBlock12Block21PC := 62].
        ].
        recoveredBlock12Block21Step = 38 ifTrue: [
            recoveredBlock12Block21PC := 39.
        ].
        recoveredBlock12Block21Step = 39 ifTrue: [
            recoveredBlock12Block21Stack1 := recoveredLocal3.
            recoveredBlock12Block21PC := 42.
        ].
        recoveredBlock12Block21Step = 42 ifTrue: [
            recoveredBlock12Block21Stack2 := nil.
            recoveredBlock12Block21PC := 43.
        ].
        recoveredBlock12Block21Step = 43 ifTrue: [
            recoveredBlock12Block21Stack3 := recoveredBlock12Block21Arg1.
            recoveredBlock12Block21PC := 44.
        ].
        recoveredBlock12Block21Step = 44 ifTrue: [
            recoveredBlock12Block21Stack3 := (recoveredBlock12Block21Stack3) first.
            recoveredBlock12Block21PC := 46.
        ].
        recoveredBlock12Block21Step = 46 ifTrue: [
            recoveredBlock12Block21Stack3 := (recoveredBlock12Block21Stack3) sourceObject.
            recoveredBlock12Block21PC := 48.
        ].
        recoveredBlock12Block21Step = 48 ifTrue: [
            (recoveredBlock12Block21Stack3 == nil) ifTrue: [recoveredBlock12Block21PC := 60] ifFalse: [recoveredBlock12Block21PC := 52].
        ].
        recoveredBlock12Block21Step = 52 ifTrue: [
            recoveredBlock12Block21PC := 53.
        ].
        recoveredBlock12Block21Step = 53 ifTrue: [
            recoveredBlock12Block21Stack2 := recoveredBlock12Block21Arg1.
            recoveredBlock12Block21PC := 54.
        ].
        recoveredBlock12Block21Step = 54 ifTrue: [
            recoveredBlock12Block21Stack2 := (recoveredBlock12Block21Stack2) first.
            recoveredBlock12Block21PC := 56.
        ].
        recoveredBlock12Block21Step = 56 ifTrue: [
            recoveredBlock12Block21Stack2 := (recoveredBlock12Block21Stack2) sourceObject.
            recoveredBlock12Block21PC := 58.
        ].
        recoveredBlock12Block21Step = 58 ifTrue: [
            recoveredBlock12Block21Stack2 := (recoveredBlock12Block21Stack2) displayName.
            recoveredBlock12Block21PC := 60.
        ].
        recoveredBlock12Block21Step = 60 ifTrue: [
            recoveredBlock12Block21Stack1 := (recoveredBlock12Block21Stack1) add: (recoveredBlock12Block21Stack2).
            recoveredBlock12Block21PC := 62.
        ].
        recoveredBlock12Block21Step = 62 ifTrue: [
            recoveredBlock12Block21Result := recoveredBlock12Block21Stack1.
            recoveredBlock12Block21Done := true.
        ].
    ].
    recoveredBlock12Block21Result
].
    recoveredBlock12Value3 := (recoveredBlock12Value1) do: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:block28102238Arg1 :block28102238Arg2 | 
    | block28102238Value0 block28102238Value1 block28102238Value2 block28102238Value3 |
    block28102238Value0 := block28102238Arg1.
    block28102238Value1 := block28102238Arg2.
    block28102238Value2 := (block28102238Value0) , (block28102238Value1).
    block28102238Value3 := (block28102238Value2) , (', ').
    block28102238Value3
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) addLineDelimiters.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20483fbc; bytecode file offset 0xd808ac"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsAsStorageObjects: recoveredArg1 removeInvalid: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) elementMappingsAtType: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := [:recoveredBlock20Arg1 :recoveredBlock20Arg2 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := OrderedCollection.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) new.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg2.
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredBlock20Stack2 := [:recoveredBlock20Block33Arg1 | 
    | recoveredBlock20Block33Stack0 recoveredBlock20Block33Stack1 recoveredBlock20Block33Stack2 recoveredBlock20Block33Stack3 recoveredBlock20Block33PC recoveredBlock20Block33Step recoveredBlock20Block33Done recoveredBlock20Block33Result |
    recoveredBlock20Block33Stack0 := nil.
    recoveredBlock20Block33PC := 40.
    recoveredBlock20Block33Done := false.
    [recoveredBlock20Block33Done not] whileTrue: [
        recoveredBlock20Block33Step := recoveredBlock20Block33PC.
        recoveredBlock20Block33Step = 40 ifTrue: [
            recoveredBlock20Block33Stack1 := recoveredBlock20Block33Arg1.
            recoveredBlock20Block33PC := 41.
        ].
        recoveredBlock20Block33Step = 41 ifTrue: [
            recoveredBlock20Block33Stack2 := nil.
            recoveredBlock20Block33PC := 42.
        ].
        recoveredBlock20Block33Step = 42 ifTrue: [
            (recoveredBlock20Block33Stack1) originalTarget: (recoveredBlock20Block33Stack2).
            recoveredBlock20Block33PC := 44.
        ].
        recoveredBlock20Block33Step = 44 ifTrue: [
            recoveredBlock20Block33Stack1 := nil.
            recoveredBlock20Block33PC := 45.
        ].
        recoveredBlock20Block33Step = 45 ifTrue: [
            recoveredBlock20Block33Stack2 := recoveredBlock20Block33Arg1.
            recoveredBlock20Block33PC := 46.
        ].
        recoveredBlock20Block33Step = 46 ifTrue: [
            recoveredBlock20Block33Stack2 := (recoveredBlock20Block33Stack2) isMapped.
            recoveredBlock20Block33PC := 48.
        ].
        recoveredBlock20Block33Step = 48 ifTrue: [
            (recoveredBlock20Block33Stack2) ifTrue: [recoveredBlock20Block33PC := 52] ifFalse: [recoveredBlock20Block33PC := 90].
        ].
        recoveredBlock20Block33Step = 52 ifTrue: [
            recoveredBlock20Block33PC := 53.
        ].
        recoveredBlock20Block33Step = 53 ifTrue: [
            recoveredBlock20Block33Stack1 := recoveredBlock20Block33Arg1.
            recoveredBlock20Block33PC := 54.
        ].
        recoveredBlock20Block33Step = 54 ifTrue: [
            recoveredBlock20Block33Stack1 := (recoveredBlock20Block33Stack1) sourceObject.
            recoveredBlock20Block33PC := 56.
        ].
        recoveredBlock20Block33Step = 56 ifTrue: [
            recoveredBlock20Block33Stack1 := (recoveredBlock20Block33Stack1) isPropertyUnknown.
            recoveredBlock20Block33PC := 58.
        ].
        recoveredBlock20Block33Step = 58 ifTrue: [
            (recoveredBlock20Block33Stack1) ifTrue: [recoveredBlock20Block33PC := 62] ifFalse: [recoveredBlock20Block33PC := 82].
        ].
        recoveredBlock20Block33Step = 62 ifTrue: [
            recoveredBlock20Block33Stack1 := nil.
            recoveredBlock20Block33PC := 63.
        ].
        recoveredBlock20Block33Step = 63 ifTrue: [
            recoveredBlock20Block33Stack2 := recoveredArg2.
            recoveredBlock20Block33PC := 66.
        ].
        recoveredBlock20Block33Step = 66 ifTrue: [
            (recoveredBlock20Block33Stack2) ifTrue: [recoveredBlock20Block33PC := 79] ifFalse: [recoveredBlock20Block33PC := 70].
        ].
        recoveredBlock20Block33Step = 70 ifTrue: [
            recoveredBlock20Block33PC := 71.
        ].
        recoveredBlock20Block33Step = 71 ifTrue: [
            recoveredBlock20Block33Stack1 := recoveredLocal1.
            recoveredBlock20Block33PC := 74.
        ].
        recoveredBlock20Block33Step = 74 ifTrue: [
            recoveredBlock20Block33Stack2 := recoveredBlock20Block33Arg1.
            recoveredBlock20Block33PC := 75.
        ].
        recoveredBlock20Block33Step = 75 ifTrue: [
            recoveredBlock20Block33Stack2 := (recoveredBlock20Block33Stack2) asStorageObject.
            recoveredBlock20Block33PC := 77.
        ].
        recoveredBlock20Block33Step = 77 ifTrue: [
            recoveredBlock20Block33Stack1 := (recoveredBlock20Block33Stack1) add: (recoveredBlock20Block33Stack2).
            recoveredBlock20Block33PC := 79.
        ].
        recoveredBlock20Block33Step = 79 ifTrue: [
            recoveredBlock20Block33PC := 90.
        ].
        recoveredBlock20Block33Step = 82 ifTrue: [
            recoveredBlock20Block33Stack1 := recoveredLocal1.
            recoveredBlock20Block33PC := 85.
        ].
        recoveredBlock20Block33Step = 85 ifTrue: [
            recoveredBlock20Block33Stack2 := recoveredBlock20Block33Arg1.
            recoveredBlock20Block33PC := 86.
        ].
        recoveredBlock20Block33Step = 86 ifTrue: [
            recoveredBlock20Block33Stack2 := (recoveredBlock20Block33Stack2) asStorageObject.
            recoveredBlock20Block33PC := 88.
        ].
        recoveredBlock20Block33Step = 88 ifTrue: [
            recoveredBlock20Block33Stack1 := (recoveredBlock20Block33Stack1) add: (recoveredBlock20Block33Stack2).
            recoveredBlock20Block33PC := 90.
        ].
        recoveredBlock20Block33Step = 90 ifTrue: [
            recoveredBlock20Block33Result := recoveredBlock20Block33Stack1.
            recoveredBlock20Block33Done := true.
        ].
    ].
    recoveredBlock20Block33Result
].
            recoveredBlock20PC := 91.
        ].
        recoveredBlock20Step = 91 ifTrue: [
            (recoveredBlock20Stack1) do: (recoveredBlock20Stack2).
            recoveredBlock20PC := 93.
        ].
        recoveredBlock20Step = 93 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 94.
        ].
        recoveredBlock20Step = 94 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal1.
            recoveredBlock20PC := 97.
        ].
        recoveredBlock20Step = 97 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) notEmpty.
            recoveredBlock20PC := 99.
        ].
        recoveredBlock20Step = 99 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 102] ifFalse: [recoveredBlock20PC := 112].
        ].
        recoveredBlock20Step = 102 ifTrue: [
            recoveredBlock20PC := 103.
        ].
        recoveredBlock20Step = 103 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal2.
            recoveredBlock20PC := 106.
        ].
        recoveredBlock20Step = 106 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 107.
        ].
        recoveredBlock20Step = 107 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal1.
            recoveredBlock20PC := 110.
        ].
        recoveredBlock20Step = 110 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2) put: (recoveredBlock20Stack3).
            recoveredBlock20PC := 112.
        ].
        recoveredBlock20Step = 112 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredArg1.
    (self) setElementMappings: (recoveredValue6) forType: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x204a0b88; bytecode file offset 0xd9d4b4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
realizeSignature: recoveredArg1 of: recoveredArg2 inSpecification: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_992557019'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodParameters.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block281045f0Arg1 | 
    | block281045f0Stack0 block281045f0Stack1 block281045f0Stack2 block281045f0Stack3 block281045f0PC block281045f0Step block281045f0Done block281045f0Result |
    block281045f0Stack0 := self.
    block281045f0PC := 4.
    block281045f0Done := false.
    [block281045f0Done not] whileTrue: [
        block281045f0Step := block281045f0PC.
        block281045f0Step = 4 ifTrue: [
            block281045f0Stack1 := block281045f0Arg1.
            block281045f0PC := 5.
        ].
        block281045f0Step = 5 ifTrue: [
            block281045f0Stack2 := [:block28104614Arg1 | 
    nil
].
            block281045f0PC := 7.
        ].
        block281045f0Step = 7 ifTrue: [
            block281045f0PC := 12.
        ].
        block281045f0Step = 12 ifTrue: [
            block281045f0Stack1 := (block281045f0Stack1) sgClassIfUndefined: (block281045f0Stack2).
            block281045f0PC := 14.
        ].
        block281045f0Step = 14 ifTrue: [
            block281045f0Stack1 := (block281045f0Stack1) isNil.
            block281045f0PC := 15.
        ].
        block281045f0Step = 15 ifTrue: [
            block281045f0Result := block281045f0Stack1.
            block281045f0Done := true.
        ].
    ].
    block281045f0Result
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'Call_89327'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) allMethods.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := [:block28104638Arg1 | 
    | block28104638Value0 block28104638Value1 |
    block28104638Value0 := block28104638Arg1.
    block28104638Value1 := (block28104638Value0) methodName.
    block28104638Value1
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableNameForSignature: (recoveredStack1) of: (recoveredStack2) usedNames: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := ARRunnable.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithName: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizeSignature: (recoveredStack1) of: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) addMethod: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'Call_88928'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventNameForSignature: (recoveredStack1) of: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpecification.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEventNamed: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := AROperationInvokedEvent.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) specificEvent: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificEvent.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) operationAliasName: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) portAliasName: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) addRunnable: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a492c; bytecode file offset 0xda1228"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableMappingTargetObjects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
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
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block28104bd8Arg1 | 
    | block28104bd8Value0 block28104bd8Value1 |
    block28104bd8Value0 := block28104bd8Arg1.
    block28104bd8Value1 := (block28104bd8Value0) isSenderReceiverInterface.
    block28104bd8Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := [].
    recoveredBlock22Value2 := (recoveredBlock22Value0) sgClassIfUndefined: (recoveredBlock22Value1).
    recoveredBlock22Value3 := [:recoveredBlock22Block35Arg1 | 
    | recoveredBlock22Block35Value0 recoveredBlock22Block35Value1 recoveredBlock22Block35Value2 recoveredBlock22Block35Value3 |
    recoveredBlock22Block35Value0 := recoveredBlock22Block35Arg1.
    recoveredBlock22Block35Value1 := (recoveredBlock22Block35Value0) allVariables.
    recoveredBlock22Block35Value2 := [:recoveredBlock22Block35Block45Arg1 | 
    | recoveredBlock22Block35Block45Stack0 recoveredBlock22Block35Block45Stack1 recoveredBlock22Block35Block45Stack2 recoveredBlock22Block35Block45Stack3 recoveredBlock22Block35Block45Stack4 recoveredBlock22Block35Block45PC recoveredBlock22Block35Block45Step recoveredBlock22Block35Block45Done recoveredBlock22Block35Block45Result |
    recoveredBlock22Block35Block45Stack0 := nil.
    recoveredBlock22Block35Block45PC := 52.
    recoveredBlock22Block35Block45Done := false.
    [recoveredBlock22Block35Block45Done not] whileTrue: [
        recoveredBlock22Block35Block45Step := recoveredBlock22Block35Block45PC.
        recoveredBlock22Block35Block45Step = 52 ifTrue: [
            recoveredBlock22Block35Block45Stack1 := nil.
            recoveredBlock22Block35Block45PC := 53.
        ].
        recoveredBlock22Block35Block45Step = 53 ifTrue: [
            recoveredBlock22Block35Block45Stack2 := recoveredBlock22Block35Block45Arg1.
            recoveredBlock22Block35Block45PC := 54.
        ].
        recoveredBlock22Block35Block45Step = 54 ifTrue: [
            recoveredBlock22Block35Block45Stack2 := (recoveredBlock22Block35Block45Stack2) isScalar.
            recoveredBlock22Block35Block45PC := 56.
        ].
        recoveredBlock22Block35Block45Step = 56 ifTrue: [
            (recoveredBlock22Block35Block45Stack2) ifTrue: [recoveredBlock22Block35Block45PC := 66] ifFalse: [recoveredBlock22Block35Block45PC := 60].
        ].
        recoveredBlock22Block35Block45Step = 60 ifTrue: [
            recoveredBlock22Block35Block45Stack2 := recoveredBlock22Block35Block45Arg1.
            recoveredBlock22Block35Block45PC := 61.
        ].
        recoveredBlock22Block35Block45Step = 61 ifTrue: [
            recoveredBlock22Block35Block45Stack2 := (recoveredBlock22Block35Block45Stack2) isEnumeration.
            recoveredBlock22Block35Block45PC := 63.
        ].
        recoveredBlock22Block35Block45Step = 63 ifTrue: [
            (recoveredBlock22Block35Block45Stack2) ifTrue: [recoveredBlock22Block35Block45PC := 66] ifFalse: [recoveredBlock22Block35Block45PC := 78].
        ].
        recoveredBlock22Block35Block45Step = 66 ifTrue: [
            recoveredBlock22Block35Block45PC := 67.
        ].
        recoveredBlock22Block35Block45Step = 67 ifTrue: [
            recoveredBlock22Block35Block45Stack1 := recoveredLocal1.
            recoveredBlock22Block35Block45PC := 70.
        ].
        recoveredBlock22Block35Block45Step = 70 ifTrue: [
            recoveredBlock22Block35Block45Stack2 := recoveredBlock22Block35Block45Arg1.
            recoveredBlock22Block35Block45PC := 71.
        ].
        recoveredBlock22Block35Block45Step = 71 ifTrue: [
            recoveredBlock22Block35Block45Stack3 := recoveredBlock22Arg1.
            recoveredBlock22Block35Block45PC := 74.
        ].
        recoveredBlock22Block35Block45Step = 74 ifTrue: [
            recoveredBlock22Block35Block45Stack2 := (recoveredBlock22Block35Block45Stack2) asVariableMappingTargetInInterface: (recoveredBlock22Block35Block45Stack3).
            recoveredBlock22Block35Block45PC := 76.
        ].
        recoveredBlock22Block35Block45Step = 76 ifTrue: [
            recoveredBlock22Block35Block45Stack1 := (recoveredBlock22Block35Block45Stack1) add: (recoveredBlock22Block35Block45Stack2).
            recoveredBlock22Block35Block45PC := 78.
        ].
        recoveredBlock22Block35Block45Step = 78 ifTrue: [
            recoveredBlock22Block35Block45Result := recoveredBlock22Block35Block45Stack1.
            recoveredBlock22Block35Block45Done := true.
        ].
    ].
    recoveredBlock22Block35Block45Result
].
    recoveredBlock22Block35Value3 := (recoveredBlock22Block35Value1) do: (recoveredBlock22Block35Value2).
    recoveredBlock22Block35Value3
].
    recoveredBlock22Value4 := (recoveredBlock22Value2) ifNotNil: (recoveredBlock22Value3).
    recoveredBlock22Value4
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariables.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := [:block28104bfcArg1 | 
    | block28104bfcValue0 block28104bfcValue1 |
    block28104bfcValue0 := block28104bfcArg1.
    block28104bfcValue1 := (block28104bfcValue0) isInterrunnable.
    block28104bfcValue1
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Stack0 recoveredBlock102Stack1 recoveredBlock102Stack2 recoveredBlock102Stack3 recoveredBlock102Stack4 recoveredBlock102PC recoveredBlock102Step recoveredBlock102Done recoveredBlock102Result |
    recoveredBlock102Stack0 := self.
    recoveredBlock102PC := 108.
    recoveredBlock102Done := false.
    [recoveredBlock102Done not] whileTrue: [
        recoveredBlock102Step := recoveredBlock102PC.
        recoveredBlock102Step = 108 ifTrue: [
            recoveredBlock102Stack1 := nil.
            recoveredBlock102PC := 109.
        ].
        recoveredBlock102Step = 109 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Arg1.
            recoveredBlock102PC := 110.
        ].
        recoveredBlock102Step = 110 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) isScalar.
            recoveredBlock102PC := 112.
        ].
        recoveredBlock102Step = 112 ifTrue: [
            (recoveredBlock102Stack2) ifTrue: [recoveredBlock102PC := 122] ifFalse: [recoveredBlock102PC := 116].
        ].
        recoveredBlock102Step = 116 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Arg1.
            recoveredBlock102PC := 117.
        ].
        recoveredBlock102Step = 117 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) isEnumeration.
            recoveredBlock102PC := 119.
        ].
        recoveredBlock102Step = 119 ifTrue: [
            (recoveredBlock102Stack2) ifTrue: [recoveredBlock102PC := 122] ifFalse: [recoveredBlock102PC := 132].
        ].
        recoveredBlock102Step = 122 ifTrue: [
            recoveredBlock102PC := 123.
        ].
        recoveredBlock102Step = 123 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal1.
            recoveredBlock102PC := 126.
        ].
        recoveredBlock102Step = 126 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Arg1.
            recoveredBlock102PC := 127.
        ].
        recoveredBlock102Step = 127 ifTrue: [
            recoveredBlock102Stack3 := self.
            recoveredBlock102PC := 128.
        ].
        recoveredBlock102Step = 128 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) asVariableMappingTargetInSWC: (recoveredBlock102Stack3).
            recoveredBlock102PC := 130.
        ].
        recoveredBlock102Step = 130 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) add: (recoveredBlock102Stack2).
            recoveredBlock102PC := 132.
        ].
        recoveredBlock102Step = 132 ifTrue: [
            recoveredBlock102Result := recoveredBlock102Stack1.
            recoveredBlock102Done := true.
        ].
    ].
    recoveredBlock102Result
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b95d8; bytecode file offset 0xdb5ebc"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
runnableNameForSignature: recoveredArg1 of: recoveredArg2 usedNames: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAtomicSoftwareComponentEditorOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionLimitTo32Characters.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 31.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncateTo: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 31.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncateTo: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204b9c34; bytecode file offset 0xdb6530"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
convertToASDV621
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super convertToASDV621.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) convertMappedCalibrationParameter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) convertMappedMessageVariables.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappingTypes.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Local1 recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) elementMappings.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Stack2 := [].
            recoveredBlock35PC := 49.
        ].
        recoveredBlock35Step = 49 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) at: (recoveredBlock35Stack1) ifAbsent: (recoveredBlock35Stack2).
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack0.
            recoveredBlock35PC := 54.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack0 := nil.
            recoveredBlock35PC := 55.
        ].
        recoveredBlock35Step = 55 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 58.
        ].
        recoveredBlock35Step = 58 ifTrue: [
            (recoveredBlock35Stack1 == nil) ifTrue: [recoveredBlock35PC := 142] ifFalse: [recoveredBlock35PC := 62].
        ].
        recoveredBlock35Step = 62 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) notEmpty.
            recoveredBlock35PC := 67.
        ].
        recoveredBlock35Step = 67 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 70] ifFalse: [recoveredBlock35PC := 142].
        ].
        recoveredBlock35Step = 70 ifTrue: [
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35Stack0 := recoveredBlock35Local1.
            recoveredBlock35PC := 74.
        ].
        recoveredBlock35Step = 74 ifTrue: [
            recoveredBlock35Stack1 := [:recoveredBlock35Block74Arg1 :recoveredBlock35Block74Arg2 | 
    | recoveredBlock35Block74Stack0 recoveredBlock35Block74Stack1 recoveredBlock35Block74Stack2 recoveredBlock35Block74Stack3 recoveredBlock35Block74Stack4 recoveredBlock35Block74Stack5 recoveredBlock35Block74PC recoveredBlock35Block74Step recoveredBlock35Block74Done recoveredBlock35Block74Result |
    recoveredBlock35Block74Stack0 := nil.
    recoveredBlock35Block74PC := 80.
    recoveredBlock35Block74Done := false.
    [recoveredBlock35Block74Done not] whileTrue: [
        recoveredBlock35Block74Step := recoveredBlock35Block74PC.
        recoveredBlock35Block74Step = 80 ifTrue: [
            recoveredBlock35Block74Stack1 := recoveredBlock35Block74Arg2.
            recoveredBlock35Block74PC := 83.
        ].
        recoveredBlock35Block74Step = 83 ifTrue: [
            recoveredBlock35Block74Stack1 := (recoveredBlock35Block74Stack1) class.
            recoveredBlock35Block74PC := 85.
        ].
        recoveredBlock35Block74Step = 85 ifTrue: [
            recoveredBlock35Block74Stack2 := ASDMappingObject.
            recoveredBlock35Block74PC := 87.
        ].
        recoveredBlock35Block74Step = 87 ifTrue: [
            recoveredBlock35Block74Stack1 := (recoveredBlock35Block74Stack1) ~= (recoveredBlock35Block74Stack2).
            recoveredBlock35Block74PC := 88.
        ].
        recoveredBlock35Block74Step = 88 ifTrue: [
            (recoveredBlock35Block74Stack1) ifTrue: [recoveredBlock35Block74PC := 92] ifFalse: [recoveredBlock35Block74PC := 96].
        ].
        recoveredBlock35Block74Step = 92 ifTrue: [
            recoveredBlock35Block74PC := 111.
        ].
        recoveredBlock35Block74Step = 96 ifTrue: [
            recoveredBlock35Block74Stack1 := recoveredBlock35Local1.
            recoveredBlock35Block74PC := 99.
        ].
        recoveredBlock35Block74Step = 99 ifTrue: [
            recoveredBlock35Block74Stack2 := recoveredBlock35Block74Arg1.
            recoveredBlock35Block74PC := 102.
        ].
        recoveredBlock35Block74Step = 102 ifTrue: [
            recoveredBlock35Block74Stack3 := OrderedCollection.
            recoveredBlock35Block74PC := 104.
        ].
        recoveredBlock35Block74Step = 104 ifTrue: [
            recoveredBlock35Block74Stack4 := recoveredBlock35Block74Arg2.
            recoveredBlock35Block74PC := 107.
        ].
        recoveredBlock35Block74Step = 107 ifTrue: [
            recoveredBlock35Block74Stack3 := (recoveredBlock35Block74Stack3) with: (recoveredBlock35Block74Stack4).
            recoveredBlock35Block74PC := 109.
        ].
        recoveredBlock35Block74Step = 109 ifTrue: [
            (recoveredBlock35Block74Stack1) at: (recoveredBlock35Block74Stack2) put: (recoveredBlock35Block74Stack3).
            recoveredBlock35Block74PC := 111.
        ].
        recoveredBlock35Block74Step = 111 ifTrue: [
            recoveredBlock35Block74Stack1 := recoveredBlock35Local1.
            recoveredBlock35Block74PC := 114.
        ].
        recoveredBlock35Block74Step = 114 ifTrue: [
            recoveredBlock35Block74Stack2 := recoveredBlock35Block74Arg1.
            recoveredBlock35Block74PC := 117.
        ].
        recoveredBlock35Block74Step = 117 ifTrue: [
            recoveredBlock35Block74Stack3 := [
    | recoveredBlock35Block74Block117Value0 recoveredBlock35Block74Block117Value1 recoveredBlock35Block74Block117Value2 recoveredBlock35Block74Block117Value3 recoveredBlock35Block74Block117Value4 |
    recoveredBlock35Block74Block117Value0 := recoveredBlock35Local1.
    recoveredBlock35Block74Block117Value1 := recoveredBlock35Block74Arg1.
    recoveredBlock35Block74Block117Value2 := OrderedCollection.
    recoveredBlock35Block74Block117Value3 := (recoveredBlock35Block74Block117Value2) new.
    recoveredBlock35Block74Block117Value4 := (recoveredBlock35Block74Block117Value0) at: (recoveredBlock35Block74Block117Value1) put: (recoveredBlock35Block74Block117Value3).
    recoveredBlock35Block74Block117Value4
].
            recoveredBlock35Block74PC := 137.
        ].
        recoveredBlock35Block74Step = 137 ifTrue: [
            recoveredBlock35Block74Stack1 := (recoveredBlock35Block74Stack1) at: (recoveredBlock35Block74Stack2) ifAbsent: (recoveredBlock35Block74Stack3).
            recoveredBlock35Block74PC := 139.
        ].
        recoveredBlock35Block74Step = 139 ifTrue: [
            recoveredBlock35Block74Result := recoveredBlock35Block74Stack1.
            recoveredBlock35Block74Done := true.
        ].
    ].
    recoveredBlock35Block74Result
].
            recoveredBlock35PC := 140.
        ].
        recoveredBlock35Step = 140 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) keysAndValuesDo: (recoveredBlock35Stack1).
            recoveredBlock35PC := 142.
        ].
        recoveredBlock35Step = 142 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack0.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ba0dc; bytecode file offset 0xdb69e0"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableMappingsForType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappedInterrunVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementMappings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableMappingTypeOld.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) convertMappedMessageVariables.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappingsAtType: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) convertToASDV621.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Local1 recoveredBlock73Stack0 recoveredBlock73Stack1 recoveredBlock73Stack2 recoveredBlock73Stack3 recoveredBlock73Stack4 recoveredBlock73Stack5 recoveredBlock73Stack6 recoveredBlock73PC recoveredBlock73Step recoveredBlock73Done recoveredBlock73Result |
    recoveredBlock73Stack0 := self.
    recoveredBlock73PC := 80.
    recoveredBlock73Done := false.
    [recoveredBlock73Done not] whileTrue: [
        recoveredBlock73Step := recoveredBlock73PC.
        recoveredBlock73Step = 80 ifTrue: [
            recoveredBlock73Stack1 := recoveredBlock73Arg1.
            recoveredBlock73PC := 81.
        ].
        recoveredBlock73Step = 81 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) isCollection.
            recoveredBlock73PC := 83.
        ].
        recoveredBlock73Step = 83 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 86] ifFalse: [recoveredBlock73PC := 106].
        ].
        recoveredBlock73Step = 86 ifTrue: [
            recoveredBlock73Stack1 := recoveredBlock73Arg1.
            recoveredBlock73PC := 87.
        ].
        recoveredBlock73Step = 87 ifTrue: [
            recoveredBlock73Stack2 := [:block28105f88Arg1 | 
    | block28105f88Value0 block28105f88Value1 block28105f88Value2 |
    block28105f88Value0 := block28105f88Arg1.
    block28105f88Value1 := (block28105f88Value0) hasProperties.
    block28105f88Value2 := (block28105f88Value1) not.
    block28105f88Value2
].
            recoveredBlock73PC := 89.
        ].
        recoveredBlock73Step = 89 ifTrue: [
            recoveredBlock73PC := 97.
        ].
        recoveredBlock73Step = 97 ifTrue: [
            recoveredBlock73Stack3 := [].
            recoveredBlock73PC := 99.
        ].
        recoveredBlock73Step = 99 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) detect: (recoveredBlock73Stack2) ifNone: (recoveredBlock73Stack3).
            recoveredBlock73PC := 101.
        ].
        recoveredBlock73Step = 101 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) notNil.
            recoveredBlock73PC := 102.
        ].
        recoveredBlock73Step = 102 ifTrue: [
            recoveredBlock73Local1 := recoveredBlock73Stack1.
            recoveredBlock73PC := 103.
        ].
        recoveredBlock73Step = 103 ifTrue: [
            recoveredBlock73PC := 111.
        ].
        recoveredBlock73Step = 106 ifTrue: [
            recoveredBlock73Stack1 := recoveredBlock73Arg1.
            recoveredBlock73PC := 107.
        ].
        recoveredBlock73Step = 107 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) hasProperties.
            recoveredBlock73PC := 109.
        ].
        recoveredBlock73Step = 109 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) not.
            recoveredBlock73PC := 110.
        ].
        recoveredBlock73Step = 110 ifTrue: [
            recoveredBlock73Local1 := recoveredBlock73Stack1.
            recoveredBlock73PC := 111.
        ].
        recoveredBlock73Step = 111 ifTrue: [
            recoveredBlock73Stack1 := nil.
            recoveredBlock73PC := 112.
        ].
        recoveredBlock73Step = 112 ifTrue: [
            recoveredBlock73Stack2 := recoveredBlock73Local1.
            recoveredBlock73PC := 113.
        ].
        recoveredBlock73Step = 113 ifTrue: [
            (recoveredBlock73Stack2) ifTrue: [recoveredBlock73PC := 116] ifFalse: [recoveredBlock73PC := 140].
        ].
        recoveredBlock73Step = 116 ifTrue: [
            recoveredBlock73PC := 117.
        ].
        recoveredBlock73Step = 117 ifTrue: [
            recoveredBlock73Stack1 := self.
            recoveredBlock73PC := 118.
        ].
        recoveredBlock73Step = 118 ifTrue: [
            recoveredBlock73Stack2 := recoveredLocal1.
            recoveredBlock73PC := 121.
        ].
        recoveredBlock73Step = 121 ifTrue: [
            recoveredBlock73Stack3 := self.
            recoveredBlock73PC := 122.
        ].
        recoveredBlock73Step = 122 ifTrue: [
            recoveredBlock73Stack4 := recoveredArg1.
            recoveredBlock73PC := 125.
        ].
        recoveredBlock73Step = 125 ifTrue: [
            recoveredBlock73Stack3 := (recoveredBlock73Stack3) mappingSourceObjectsForType: (recoveredBlock73Stack4).
            recoveredBlock73PC := 127.
        ].
        recoveredBlock73Step = 127 ifTrue: [
            recoveredBlock73Stack4 := self.
            recoveredBlock73PC := 128.
        ].
        recoveredBlock73Step = 128 ifTrue: [
            recoveredBlock73Stack5 := recoveredArg1.
            recoveredBlock73PC := 131.
        ].
        recoveredBlock73Step = 131 ifTrue: [
            recoveredBlock73Stack4 := (recoveredBlock73Stack4) mappingTargetObjectsForType: (recoveredBlock73Stack5).
            recoveredBlock73PC := 133.
        ].
        recoveredBlock73Step = 133 ifTrue: [
            (recoveredBlock73Stack1) mappingsUpdatePropertiesFor: (recoveredBlock73Stack2) sources: (recoveredBlock73Stack3) targets: (recoveredBlock73Stack4).
            recoveredBlock73PC := 136.
        ].
        recoveredBlock73Step = 136 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal1.
            recoveredBlock73PC := 139.
        ].
        recoveredBlock73Step = 139 ifTrue: [
            ^recoveredBlock73Stack1
        ].
        recoveredBlock73Step = 140 ifTrue: [
            recoveredBlock73Result := recoveredBlock73Stack1.
            recoveredBlock73Done := true.
        ].
    ].
    recoveredBlock73Result
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204efb8c; bytecode file offset 0xdec488"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
eventNameForSignature: recoveredArg1 of: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAtomicSoftwareComponentEditorOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionLimitTo32Characters.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncateTo: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncateTo: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'OpInvEvent_'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) eventSpecification.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) events.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := [:block28109588Arg1 | 
    | block28109588Value0 block28109588Value1 |
    block28109588Value0 := block28109588Arg1.
    block28109588Value1 := (block28109588Value0) name.
    block28109588Value1
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 'OpInvEvent_'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204f2504; bytecode file offset 0xdeee38"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
removeInterface: recoveredArg1 withRequest: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28109978Arg1 | 
    nil
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isClientServerInterface.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 28].
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg2.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 36] ifFalse: [recoveredBlock15PC := 66].
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack1 := EtasUserQuestion.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack2 := 'Removing provide ports will remove all realized operations and events of the port.\This action is not reversible!!\ \Are you sure to delete the interface?'.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) withCrs.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) message: (recoveredBlock15Stack2).
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack3 := 'ASDDeleteInterfaces'.
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            (recoveredBlock15Stack2) prompterID: (recoveredBlock15Stack3).
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack3 := 'OKCANCEL'.
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            (recoveredBlock15Stack2) buttonStyle: (recoveredBlock15Stack3).
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            recoveredBlock15Stack3 := 'warning'.
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            (recoveredBlock15Stack2) type: (recoveredBlock15Stack3).
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) prompt.
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            (recoveredBlock15Stack1 ~~ nil) ifTrue: [recoveredBlock15PC := 66] ifFalse: [recoveredBlock15PC := 64].
        ].
        recoveredBlock15Step = 64 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredBlock15Stack1 := [
    | recoveredBlock15Block66Value0 recoveredBlock15Block66Value1 recoveredBlock15Block66Value2 recoveredBlock15Block66Value3 recoveredBlock15Block66Value4 recoveredBlock15Block66Value5 recoveredBlock15Block66Value6 recoveredBlock15Block66Value7 |
    recoveredBlock15Block66Value0 := (self) allMethods.
    recoveredBlock15Block66Value1 := [:recoveredBlock15Block66Block74Arg1 | 
    | recoveredBlock15Block66Block74Stack0 recoveredBlock15Block66Block74Stack1 recoveredBlock15Block66Block74Stack2 recoveredBlock15Block66Block74Stack3 recoveredBlock15Block66Block74PC recoveredBlock15Block66Block74Step recoveredBlock15Block66Block74Done recoveredBlock15Block66Block74Result |
    recoveredBlock15Block66Block74Stack0 := nil.
    recoveredBlock15Block66Block74PC := 80.
    recoveredBlock15Block66Block74Done := false.
    [recoveredBlock15Block66Block74Done not] whileTrue: [
        recoveredBlock15Block66Block74Step := recoveredBlock15Block66Block74PC.
        recoveredBlock15Block66Block74Step = 80 ifTrue: [
            recoveredBlock15Block66Block74Stack1 := false.
            recoveredBlock15Block66Block74PC := 81.
        ].
        recoveredBlock15Block66Block74Step = 81 ifTrue: [
            recoveredBlock15Block66Block74Stack2 := recoveredBlock15Block66Block74Arg1.
            recoveredBlock15Block66Block74PC := 82.
        ].
        recoveredBlock15Block66Block74Step = 82 ifTrue: [
            recoveredBlock15Block66Block74Stack2 := (recoveredBlock15Block66Block74Stack2) realizedSignature.
            recoveredBlock15Block66Block74PC := 84.
        ].
        recoveredBlock15Block66Block74Step = 84 ifTrue: [
            (recoveredBlock15Block66Block74Stack2 == nil) ifTrue: [recoveredBlock15Block66Block74PC := 100] ifFalse: [recoveredBlock15Block66Block74PC := 88].
        ].
        recoveredBlock15Block66Block74Step = 88 ifTrue: [
            recoveredBlock15Block66Block74PC := 89.
        ].
        recoveredBlock15Block66Block74Step = 89 ifTrue: [
            recoveredBlock15Block66Block74Stack1 := recoveredBlock15Block66Block74Arg1.
            recoveredBlock15Block66Block74PC := 90.
        ].
        recoveredBlock15Block66Block74Step = 90 ifTrue: [
            recoveredBlock15Block66Block74Stack1 := (recoveredBlock15Block66Block74Stack1) realizedSignature.
            recoveredBlock15Block66Block74PC := 92.
        ].
        recoveredBlock15Block66Block74Step = 92 ifTrue: [
            recoveredBlock15Block66Block74Stack1 := (recoveredBlock15Block66Block74Stack1) first.
            recoveredBlock15Block66Block74PC := 94.
        ].
        recoveredBlock15Block66Block74Step = 94 ifTrue: [
            recoveredBlock15Block66Block74Stack2 := recoveredArg1.
            recoveredBlock15Block66Block74PC := 97.
        ].
        recoveredBlock15Block66Block74Step = 97 ifTrue: [
            recoveredBlock15Block66Block74Stack2 := (recoveredBlock15Block66Block74Stack2) aliasName.
            recoveredBlock15Block66Block74PC := 99.
        ].
        recoveredBlock15Block66Block74Step = 99 ifTrue: [
            recoveredBlock15Block66Block74Stack1 := (recoveredBlock15Block66Block74Stack1) = (recoveredBlock15Block66Block74Stack2).
            recoveredBlock15Block66Block74PC := 100.
        ].
        recoveredBlock15Block66Block74Step = 100 ifTrue: [
            recoveredBlock15Block66Block74Result := recoveredBlock15Block66Block74Stack1.
            recoveredBlock15Block66Block74Done := true.
        ].
    ].
    recoveredBlock15Block66Block74Result
].
    recoveredBlock15Block66Value2 := (recoveredBlock15Block66Value0) select: (recoveredBlock15Block66Value1).
    recoveredBlock15Block66Value3 := [:recoveredBlock15Block66Block103Arg1 | 
    | recoveredBlock15Block66Block103Stack0 recoveredBlock15Block66Block103Stack1 recoveredBlock15Block66Block103Stack2 recoveredBlock15Block66Block103PC recoveredBlock15Block66Block103Step recoveredBlock15Block66Block103Done recoveredBlock15Block66Block103Result |
    recoveredBlock15Block66Block103Stack0 := self.
    recoveredBlock15Block66Block103PC := 110.
    recoveredBlock15Block66Block103Done := false.
    [recoveredBlock15Block66Block103Done not] whileTrue: [
        recoveredBlock15Block66Block103Step := recoveredBlock15Block66Block103PC.
        recoveredBlock15Block66Block103Step = 110 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := recoveredBlock15Block66Block103Arg1.
            recoveredBlock15Block66Block103PC := 111.
        ].
        recoveredBlock15Block66Block103Step = 111 ifTrue: [
            (recoveredBlock15Block66Block103Stack0) removeSignature: (recoveredBlock15Block66Block103Stack1).
            recoveredBlock15Block66Block103PC := 113.
        ].
        recoveredBlock15Block66Block103Step = 113 ifTrue: [
            recoveredBlock15Block66Block103Stack0 := nil.
            recoveredBlock15Block66Block103PC := 114.
        ].
        recoveredBlock15Block66Block103Step = 114 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := recoveredBlock15Block66Block103Arg1.
            recoveredBlock15Block66Block103PC := 115.
        ].
        recoveredBlock15Block66Block103Step = 115 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := (recoveredBlock15Block66Block103Stack1) owner.
            recoveredBlock15Block66Block103PC := 117.
        ].
        recoveredBlock15Block66Block103Step = 117 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := (recoveredBlock15Block66Block103Stack1) methods.
            recoveredBlock15Block66Block103PC := 119.
        ].
        recoveredBlock15Block66Block103Step = 119 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := (recoveredBlock15Block66Block103Stack1) isEmpty.
            recoveredBlock15Block66Block103PC := 121.
        ].
        recoveredBlock15Block66Block103Step = 121 ifTrue: [
            (recoveredBlock15Block66Block103Stack1) ifTrue: [recoveredBlock15Block66Block103PC := 124] ifFalse: [recoveredBlock15Block66Block103PC := 149].
        ].
        recoveredBlock15Block66Block103Step = 124 ifTrue: [
            recoveredBlock15Block66Block103PC := 125.
        ].
        recoveredBlock15Block66Block103Step = 125 ifTrue: [
            recoveredBlock15Block66Block103Stack0 := nil.
            recoveredBlock15Block66Block103PC := 126.
        ].
        recoveredBlock15Block66Block103Step = 126 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := recoveredBlock15Block66Block103Arg1.
            recoveredBlock15Block66Block103PC := 127.
        ].
        recoveredBlock15Block66Block103Step = 127 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := (recoveredBlock15Block66Block103Stack1) owner.
            recoveredBlock15Block66Block103PC := 129.
        ].
        recoveredBlock15Block66Block103Step = 129 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := (recoveredBlock15Block66Block103Stack1) specSource.
            recoveredBlock15Block66Block103PC := 131.
        ].
        recoveredBlock15Block66Block103Step = 131 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := (recoveredBlock15Block66Block103Stack1) isEmpty.
            recoveredBlock15Block66Block103PC := 133.
        ].
        recoveredBlock15Block66Block103Step = 133 ifTrue: [
            (recoveredBlock15Block66Block103Stack1) ifTrue: [recoveredBlock15Block66Block103PC := 136] ifFalse: [recoveredBlock15Block66Block103PC := 149].
        ].
        recoveredBlock15Block66Block103Step = 136 ifTrue: [
            recoveredBlock15Block66Block103PC := 137.
        ].
        recoveredBlock15Block66Block103Step = 137 ifTrue: [
            recoveredBlock15Block66Block103Stack0 := self.
            recoveredBlock15Block66Block103PC := 138.
        ].
        recoveredBlock15Block66Block103Step = 138 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := recoveredBlock15Block66Block103Arg1.
            recoveredBlock15Block66Block103PC := 139.
        ].
        recoveredBlock15Block66Block103Step = 139 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := (recoveredBlock15Block66Block103Stack1) owner.
            recoveredBlock15Block66Block103PC := 141.
        ].
        recoveredBlock15Block66Block103Step = 141 ifTrue: [
            (recoveredBlock15Block66Block103Stack0) deletePrivateSpecification: (recoveredBlock15Block66Block103Stack1).
            recoveredBlock15Block66Block103PC := 143.
        ].
        recoveredBlock15Block66Block103Step = 143 ifTrue: [
            recoveredBlock15Block66Block103Stack0 := self.
            recoveredBlock15Block66Block103PC := 144.
        ].
        recoveredBlock15Block66Block103Step = 144 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := recoveredBlock15Block66Block103Arg1.
            recoveredBlock15Block66Block103PC := 145.
        ].
        recoveredBlock15Block66Block103Step = 145 ifTrue: [
            recoveredBlock15Block66Block103Stack1 := (recoveredBlock15Block66Block103Stack1) owner.
            recoveredBlock15Block66Block103PC := 147.
        ].
        recoveredBlock15Block66Block103Step = 147 ifTrue: [
            recoveredBlock15Block66Block103Stack0 := (recoveredBlock15Block66Block103Stack0) deletePublicSpecification: (recoveredBlock15Block66Block103Stack1).
            recoveredBlock15Block66Block103PC := 149.
        ].
        recoveredBlock15Block66Block103Step = 149 ifTrue: [
            recoveredBlock15Block66Block103Result := recoveredBlock15Block66Block103Stack0.
            recoveredBlock15Block66Block103Done := true.
        ].
    ].
    recoveredBlock15Block66Block103Result
].
    (recoveredBlock15Block66Value2) do: (recoveredBlock15Block66Value3).
    recoveredBlock15Block66Value4 := (self) realizedInterfaces.
    recoveredBlock15Block66Value5 := recoveredArg1.
    recoveredBlock15Block66Value6 := [].
    recoveredBlock15Block66Value7 := (recoveredBlock15Block66Value4) remove: (recoveredBlock15Block66Value5) ifAbsent: (recoveredBlock15Block66Value6).
    recoveredBlock15Block66Value7
].
            recoveredBlock15PC := 163.
        ].
        recoveredBlock15Step = 163 ifTrue: [
            recoveredBlock15Stack2 := true.
            recoveredBlock15PC := 164.
        ].
        recoveredBlock15Step = 164 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) suspendObserving: (recoveredBlock15Stack1) notify: (recoveredBlock15Stack2).
            recoveredBlock15PC := 166.
        ].
        recoveredBlock15Step = 166 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050dce0; bytecode file offset 0xe0a610"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
convertMappedCalibrationParameter
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappedCalibrationParameter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMappingSourceObjects.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 |
    recoveredBlock19Value0 := mappedCalibrationParameter.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) displayName.
    recoveredBlock19Value3 := [
    | recoveredBlock19Block32Value0 recoveredBlock19Block32Value1 recoveredBlock19Block32Value2 recoveredBlock19Block32Value3 recoveredBlock19Block32Value4 recoveredBlock19Block32Value5 recoveredBlock19Block32Value6 recoveredBlock19Block32Value7 |
    recoveredBlock19Block32Value0 := recoveredLocal1.
    recoveredBlock19Block32Value1 := recoveredBlock19Arg1.
    recoveredBlock19Block32Value2 := (recoveredBlock19Block32Value1) displayName.
    recoveredBlock19Block32Value3 := ASDMappingObject.
    recoveredBlock19Block32Value4 := (recoveredBlock19Block32Value3) create.
    recoveredBlock19Block32Value5 := recoveredBlock19Arg1.
    recoveredBlock19Block32Value6 := (recoveredBlock19Block32Value4) sourceObject: (recoveredBlock19Block32Value5).
    recoveredBlock19Block32Value7 := (recoveredBlock19Block32Value0) at: (recoveredBlock19Block32Value2) put: (recoveredBlock19Block32Value6).
    recoveredBlock19Block32Value7
].
    recoveredBlock19Value4 := [:recoveredBlock19Block57Arg1 | 
    | recoveredBlock19Block57Local1 recoveredBlock19Block57Local2 recoveredBlock19Block57Local3 recoveredBlock19Block57Stack0 recoveredBlock19Block57Stack1 recoveredBlock19Block57Stack2 recoveredBlock19Block57Stack3 recoveredBlock19Block57PC recoveredBlock19Block57Step recoveredBlock19Block57Done recoveredBlock19Block57Result |
    recoveredBlock19Block57Stack0 := self.
    recoveredBlock19Block57PC := 64.
    recoveredBlock19Block57Done := false.
    [recoveredBlock19Block57Done not] whileTrue: [
        recoveredBlock19Block57Step := recoveredBlock19Block57PC.
        recoveredBlock19Block57Step = 64 ifTrue: [
            recoveredBlock19Block57Stack1 := ASDMappingObject.
            recoveredBlock19Block57PC := 66.
        ].
        recoveredBlock19Block57Step = 66 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) create.
            recoveredBlock19Block57PC := 68.
        ].
        recoveredBlock19Block57Step = 68 ifTrue: [
            recoveredBlock19Block57Stack2 := recoveredBlock19Arg1.
            recoveredBlock19Block57PC := 71.
        ].
        recoveredBlock19Block57Step = 71 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) sourceObject: (recoveredBlock19Block57Stack2).
            recoveredBlock19Block57PC := 73.
        ].
        recoveredBlock19Block57Step = 73 ifTrue: [
            recoveredBlock19Block57Local3 := recoveredBlock19Block57Stack1.
            recoveredBlock19Block57PC := 74.
        ].
        recoveredBlock19Block57Step = 74 ifTrue: [
            recoveredBlock19Block57Stack1 := ASDMappingTargetObject.
            recoveredBlock19Block57PC := 76.
        ].
        recoveredBlock19Block57Step = 76 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) new.
            recoveredBlock19Block57PC := 77.
        ].
        recoveredBlock19Block57Step = 77 ifTrue: [
            recoveredBlock19Block57Local2 := recoveredBlock19Block57Stack1.
            recoveredBlock19Block57PC := 78.
        ].
        recoveredBlock19Block57Step = 78 ifTrue: [
            recoveredBlock19Block57Stack1 := recoveredBlock19Block57Arg1.
            recoveredBlock19Block57PC := 79.
        ].
        recoveredBlock19Block57Step = 79 ifTrue: [
            recoveredBlock19Block57Stack0 := (recoveredBlock19Block57Stack0) getModelPathFor: (recoveredBlock19Block57Stack1).
            recoveredBlock19Block57PC := 81.
        ].
        recoveredBlock19Block57Step = 81 ifTrue: [
            recoveredBlock19Block57Stack1 := recoveredBlock19Block57Stack0.
            recoveredBlock19Block57PC := 82.
        ].
        recoveredBlock19Block57Step = 82 ifTrue: [
            recoveredBlock19Block57Local1 := recoveredBlock19Block57Stack1.
            recoveredBlock19Block57PC := 83.
        ].
        recoveredBlock19Block57Step = 83 ifTrue: [
            recoveredBlock19Block57Stack0 := (recoveredBlock19Block57Stack0) size.
            recoveredBlock19Block57PC := 85.
        ].
        recoveredBlock19Block57Step = 85 ifTrue: [
            recoveredBlock19Block57Stack1 := 2.
            recoveredBlock19Block57PC := 87.
        ].
        recoveredBlock19Block57Step = 87 ifTrue: [
            recoveredBlock19Block57Stack0 := (recoveredBlock19Block57Stack0) = (recoveredBlock19Block57Stack1).
            recoveredBlock19Block57PC := 88.
        ].
        recoveredBlock19Block57Step = 88 ifTrue: [
            (recoveredBlock19Block57Stack0) ifTrue: [recoveredBlock19Block57PC := 92] ifFalse: [recoveredBlock19Block57PC := 134].
        ].
        recoveredBlock19Block57Step = 92 ifTrue: [
            recoveredBlock19Block57Stack0 := recoveredBlock19Block57Local2.
            recoveredBlock19Block57PC := 93.
        ].
        recoveredBlock19Block57Step = 93 ifTrue: [
            recoveredBlock19Block57Stack1 := recoveredBlock19Block57Local1.
            recoveredBlock19Block57PC := 94.
        ].
        recoveredBlock19Block57Step = 94 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) first.
            recoveredBlock19Block57PC := 96.
        ].
        recoveredBlock19Block57Step = 96 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) elementName.
            recoveredBlock19Block57PC := 98.
        ].
        recoveredBlock19Block57Step = 98 ifTrue: [
            recoveredBlock19Block57Stack2 := '.'.
            recoveredBlock19Block57PC := 100.
        ].
        recoveredBlock19Block57Step = 100 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) , (recoveredBlock19Block57Stack2).
            recoveredBlock19Block57PC := 102.
        ].
        recoveredBlock19Block57Step = 102 ifTrue: [
            recoveredBlock19Block57Stack2 := recoveredBlock19Block57Local1.
            recoveredBlock19Block57PC := 103.
        ].
        recoveredBlock19Block57Step = 103 ifTrue: [
            recoveredBlock19Block57Stack2 := (recoveredBlock19Block57Stack2) last.
            recoveredBlock19Block57PC := 105.
        ].
        recoveredBlock19Block57Step = 105 ifTrue: [
            recoveredBlock19Block57Stack2 := (recoveredBlock19Block57Stack2) elementName.
            recoveredBlock19Block57PC := 107.
        ].
        recoveredBlock19Block57Step = 107 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) , (recoveredBlock19Block57Stack2).
            recoveredBlock19Block57PC := 109.
        ].
        recoveredBlock19Block57Step = 109 ifTrue: [
            (recoveredBlock19Block57Stack0) displayName: (recoveredBlock19Block57Stack1).
            recoveredBlock19Block57PC := 111.
        ].
        recoveredBlock19Block57Step = 111 ifTrue: [
            recoveredBlock19Block57Stack0 := recoveredBlock19Block57Local2.
            recoveredBlock19Block57PC := 112.
        ].
        recoveredBlock19Block57Step = 112 ifTrue: [
            recoveredBlock19Block57Stack1 := recoveredBlock19Block57Local1.
            recoveredBlock19Block57PC := 113.
        ].
        recoveredBlock19Block57Step = 113 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) last.
            recoveredBlock19Block57PC := 115.
        ].
        recoveredBlock19Block57Step = 115 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) aliasName.
            recoveredBlock19Block57PC := 117.
        ].
        recoveredBlock19Block57Step = 117 ifTrue: [
            recoveredBlock19Block57Stack2 := recoveredBlock19Block57Local1.
            recoveredBlock19Block57PC := 118.
        ].
        recoveredBlock19Block57Step = 118 ifTrue: [
            recoveredBlock19Block57Stack2 := (recoveredBlock19Block57Stack2) last.
            recoveredBlock19Block57PC := 120.
        ].
        recoveredBlock19Block57Step = 120 ifTrue: [
            recoveredBlock19Block57Stack2 := (recoveredBlock19Block57Stack2) owner.
            recoveredBlock19Block57PC := 122.
        ].
        recoveredBlock19Block57Step = 122 ifTrue: [
            recoveredBlock19Block57Stack2 := (recoveredBlock19Block57Stack2) dbObject.
            recoveredBlock19Block57PC := 124.
        ].
        recoveredBlock19Block57Step = 124 ifTrue: [
            recoveredBlock19Block57Stack2 := (recoveredBlock19Block57Stack2) globalId.
            recoveredBlock19Block57PC := 126.
        ].
        recoveredBlock19Block57Step = 126 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) asHierarchicalOIDWithPreAlias: (recoveredBlock19Block57Stack2).
            recoveredBlock19Block57PC := 128.
        ].
        recoveredBlock19Block57Step = 128 ifTrue: [
            (recoveredBlock19Block57Stack0) elementOIDChain: (recoveredBlock19Block57Stack1).
            recoveredBlock19Block57PC := 130.
        ].
        recoveredBlock19Block57Step = 130 ifTrue: [
            recoveredBlock19Block57PC := 143.
        ].
        recoveredBlock19Block57Step = 134 ifTrue: [
            recoveredBlock19Block57Stack0 := recoveredBlock19Block57Local2.
            recoveredBlock19Block57PC := 135.
        ].
        recoveredBlock19Block57Step = 135 ifTrue: [
            recoveredBlock19Block57Stack1 := '<unknown>'.
            recoveredBlock19Block57PC := 137.
        ].
        recoveredBlock19Block57Step = 137 ifTrue: [
            (recoveredBlock19Block57Stack0) displayName: (recoveredBlock19Block57Stack1).
            recoveredBlock19Block57PC := 139.
        ].
        recoveredBlock19Block57Step = 139 ifTrue: [
            recoveredBlock19Block57Stack0 := recoveredBlock19Block57Local2.
            recoveredBlock19Block57PC := 140.
        ].
        recoveredBlock19Block57Step = 140 ifTrue: [
            recoveredBlock19Block57Stack1 := nil.
            recoveredBlock19Block57PC := 141.
        ].
        recoveredBlock19Block57Step = 141 ifTrue: [
            (recoveredBlock19Block57Stack0) elementOIDChain: (recoveredBlock19Block57Stack1).
            recoveredBlock19Block57PC := 143.
        ].
        recoveredBlock19Block57Step = 143 ifTrue: [
            recoveredBlock19Block57Stack0 := recoveredBlock19Block57Local2.
            recoveredBlock19Block57PC := 144.
        ].
        recoveredBlock19Block57Step = 144 ifTrue: [
            recoveredBlock19Block57Stack1 := recoveredBlock19Block57Arg1.
            recoveredBlock19Block57PC := 145.
        ].
        recoveredBlock19Block57Step = 145 ifTrue: [
            (recoveredBlock19Block57Stack0) modelOIDChain: (recoveredBlock19Block57Stack1).
            recoveredBlock19Block57PC := 147.
        ].
        recoveredBlock19Block57Step = 147 ifTrue: [
            recoveredBlock19Block57Stack0 := recoveredBlock19Block57Local3.
            recoveredBlock19Block57PC := 148.
        ].
        recoveredBlock19Block57Step = 148 ifTrue: [
            recoveredBlock19Block57Stack1 := recoveredBlock19Block57Local2.
            recoveredBlock19Block57PC := 149.
        ].
        recoveredBlock19Block57Step = 149 ifTrue: [
            (recoveredBlock19Block57Stack0) targetObject: (recoveredBlock19Block57Stack1).
            recoveredBlock19Block57PC := 151.
        ].
        recoveredBlock19Block57Step = 151 ifTrue: [
            recoveredBlock19Block57Stack0 := recoveredLocal1.
            recoveredBlock19Block57PC := 154.
        ].
        recoveredBlock19Block57Step = 154 ifTrue: [
            recoveredBlock19Block57Stack1 := recoveredBlock19Arg1.
            recoveredBlock19Block57PC := 157.
        ].
        recoveredBlock19Block57Step = 157 ifTrue: [
            recoveredBlock19Block57Stack1 := (recoveredBlock19Block57Stack1) displayName.
            recoveredBlock19Block57PC := 158.
        ].
        recoveredBlock19Block57Step = 158 ifTrue: [
            recoveredBlock19Block57Stack2 := recoveredBlock19Block57Local3.
            recoveredBlock19Block57PC := 159.
        ].
        recoveredBlock19Block57Step = 159 ifTrue: [
            recoveredBlock19Block57Stack0 := (recoveredBlock19Block57Stack0) at: (recoveredBlock19Block57Stack1) put: (recoveredBlock19Block57Stack2).
            recoveredBlock19Block57PC := 161.
        ].
        recoveredBlock19Block57Step = 161 ifTrue: [
            recoveredBlock19Block57Result := recoveredBlock19Block57Stack0.
            recoveredBlock19Block57Done := true.
        ].
    ].
    recoveredBlock19Block57Result
].
    recoveredBlock19Value5 := (recoveredBlock19Value0) at: (recoveredBlock19Value2) ifAbsent: (recoveredBlock19Value3) ifPresent: (recoveredBlock19Value4).
    recoveredBlock19Value5
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            mappedCalibrationParameter := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterMappingType.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) setElementMappings: (recoveredStack1) forType: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205423f8; bytecode file offset 0xe3ecd4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
isMessageMappingValidForSource: recoveredArg1 forTarget: recoveredArg2 forInterface: recoveredArg3
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessage.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimilarMappingTypeSource: (recoveredStack1) target: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArtificial.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSend.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReceive.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInterrunnable.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSend.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReceive.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInterrunnable.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSend.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReceive.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSgClassInterfaceProvidePort.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReceive.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSend.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSgClassInterfaceRequirePort.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20543d84; bytecode file offset 0xe406a4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
realizeInterface: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block2810e688Arg1 | 
    nil
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isClientServerInterface.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 32] ifFalse: [recoveredBlock15PC := 30].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) realizedInterfaces.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) includes: (recoveredBlock15Stack1).
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            (recoveredBlock15Stack0) ifTrue: [recoveredBlock15PC := 42] ifFalse: [recoveredBlock15PC := 52].
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack0 := self.
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) updateInterface: (recoveredBlock15Stack1).
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15PC := 211.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredBlock15Stack0 := self.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15Stack1 := [
    | recoveredBlock15Block53Local1 recoveredBlock15Block53Stack0 recoveredBlock15Block53Stack1 recoveredBlock15Block53Stack2 recoveredBlock15Block53Stack3 recoveredBlock15Block53Stack4 recoveredBlock15Block53PC recoveredBlock15Block53Step recoveredBlock15Block53Done recoveredBlock15Block53Result |
    recoveredBlock15Block53Stack0 := self.
    recoveredBlock15Block53PC := 60.
    recoveredBlock15Block53Done := false.
    [recoveredBlock15Block53Done not] whileTrue: [
        recoveredBlock15Block53Step := recoveredBlock15Block53PC.
        recoveredBlock15Block53Step = 60 ifTrue: [
            recoveredBlock15Block53Stack0 := (recoveredBlock15Block53Stack0) realizedInterfaces.
            recoveredBlock15Block53PC := 61.
        ].
        recoveredBlock15Block53Step = 61 ifTrue: [
            recoveredBlock15Block53Stack1 := recoveredArg1.
            recoveredBlock15Block53PC := 64.
        ].
        recoveredBlock15Block53Step = 64 ifTrue: [
            (recoveredBlock15Block53Stack0) add: (recoveredBlock15Block53Stack1).
            recoveredBlock15Block53PC := 66.
        ].
        recoveredBlock15Block53Step = 66 ifTrue: [
            recoveredBlock15Block53Stack0 := nil.
            recoveredBlock15Block53PC := 67.
        ].
        recoveredBlock15Block53Step = 67 ifTrue: [
            recoveredBlock15Block53Stack1 := recoveredBlock15Arg1.
            recoveredBlock15Block53PC := 70.
        ].
        recoveredBlock15Block53Step = 70 ifTrue: [
            recoveredBlock15Block53Stack1 := (recoveredBlock15Block53Stack1) specifications.
            recoveredBlock15Block53PC := 72.
        ].
        recoveredBlock15Block53Step = 72 ifTrue: [
            recoveredBlock15Block53Stack1 := (recoveredBlock15Block53Stack1) notEmpty.
            recoveredBlock15Block53PC := 74.
        ].
        recoveredBlock15Block53Step = 74 ifTrue: [
            (recoveredBlock15Block53Stack1) ifTrue: [recoveredBlock15Block53PC := 78] ifFalse: [recoveredBlock15Block53PC := 207].
        ].
        recoveredBlock15Block53Step = 78 ifTrue: [
            recoveredBlock15Block53PC := 79.
        ].
        recoveredBlock15Block53Step = 79 ifTrue: [
            recoveredBlock15Block53Stack0 := self.
            recoveredBlock15Block53PC := 80.
        ].
        recoveredBlock15Block53Step = 80 ifTrue: [
            recoveredBlock15Block53Stack0 := (recoveredBlock15Block53Stack0) specifications.
            recoveredBlock15Block53PC := 82.
        ].
        recoveredBlock15Block53Step = 82 ifTrue: [
            recoveredBlock15Block53Stack1 := [:recoveredBlock15Block53Block82Arg1 | 
    | recoveredBlock15Block53Block82Value0 recoveredBlock15Block53Block82Value1 recoveredBlock15Block53Block82Value2 recoveredBlock15Block53Block82Value3 recoveredBlock15Block53Block82Value4 recoveredBlock15Block53Block82Value5 recoveredBlock15Block53Block82Value6 recoveredBlock15Block53Block82Value7 recoveredBlock15Block53Block82Value8 |
    recoveredBlock15Block53Block82Value0 := recoveredBlock15Block53Block82Arg1.
    recoveredBlock15Block53Block82Value1 := (recoveredBlock15Block53Block82Value0) specificationName.
    recoveredBlock15Block53Block82Value2 := recoveredArg1.
    recoveredBlock15Block53Block82Value3 := (recoveredBlock15Block53Block82Value2) label.
    recoveredBlock15Block53Block82Value4 := (recoveredBlock15Block53Block82Value3) , ('_').
    recoveredBlock15Block53Block82Value5 := recoveredBlock15Arg1.
    recoveredBlock15Block53Block82Value6 := (recoveredBlock15Block53Block82Value5) label.
    recoveredBlock15Block53Block82Value7 := (recoveredBlock15Block53Block82Value4) , (recoveredBlock15Block53Block82Value6).
    recoveredBlock15Block53Block82Value8 := (recoveredBlock15Block53Block82Value1) = (recoveredBlock15Block53Block82Value7).
    recoveredBlock15Block53Block82Value8
].
            recoveredBlock15Block53PC := 109.
        ].
        recoveredBlock15Block53Step = 109 ifTrue: [
            recoveredBlock15Block53Stack2 := [:recoveredBlock15Block53Block109Arg1 | 
    | recoveredBlock15Block53Block109Value0 recoveredBlock15Block53Block109Value1 |
    recoveredBlock15Block53Block109Value0 := recoveredBlock15Block53Block109Arg1.
    recoveredBlock15Block53Block109Value1 := recoveredBlock15Block53Block109Value0.
    recoveredBlock15Block53Local1 := recoveredBlock15Block53Block109Value1.
    recoveredBlock15Block53Block109Value0
].
            recoveredBlock15Block53PC := 122.
        ].
        recoveredBlock15Block53Step = 122 ifTrue: [
            recoveredBlock15Block53Stack3 := [
    | recoveredBlock15Block53Block122Value0 recoveredBlock15Block53Block122Value1 recoveredBlock15Block53Block122Value2 recoveredBlock15Block53Block122Value3 recoveredBlock15Block53Block122Value4 recoveredBlock15Block53Block122Value5 recoveredBlock15Block53Block122Value6 recoveredBlock15Block53Block122Value7 recoveredBlock15Block53Block122Value8 recoveredBlock15Block53Block122Value9 recoveredBlock15Block53Block122Value10 recoveredBlock15Block53Block122Value11 recoveredBlock15Block53Block122Value12 recoveredBlock15Block53Block122Value13 |
    recoveredBlock15Block53Block122Value0 := ARBdSpecification.
    recoveredBlock15Block53Block122Value1 := (self) isCTClass.
    recoveredBlock15Block53Block122Value2 := (self) isProcessClass.
    recoveredBlock15Block53Block122Value3 := (recoveredBlock15Block53Block122Value0) createCT: (recoveredBlock15Block53Block122Value1) module: (recoveredBlock15Block53Block122Value2) forClass: (self).
    recoveredBlock15Block53Local1 := recoveredBlock15Block53Block122Value3.
    recoveredBlock15Block53Block122Value4 := recoveredBlock15Block53Local1.
    (self) addPublicSpecification: (recoveredBlock15Block53Block122Value4).
    recoveredBlock15Block53Block122Value5 := recoveredBlock15Block53Local1.
    recoveredBlock15Block53Block122Value6 := recoveredArg1.
    recoveredBlock15Block53Block122Value7 := (recoveredBlock15Block53Block122Value6) label.
    recoveredBlock15Block53Block122Value8 := (recoveredBlock15Block53Block122Value7) , ('_').
    recoveredBlock15Block53Block122Value9 := recoveredBlock15Arg1.
    recoveredBlock15Block53Block122Value10 := (recoveredBlock15Block53Block122Value9) label.
    recoveredBlock15Block53Block122Value11 := (recoveredBlock15Block53Block122Value8) , (recoveredBlock15Block53Block122Value10).
    recoveredBlock15Block53Block122Value12 := (self) uniqueSpecName: (recoveredBlock15Block53Block122Value11).
    recoveredBlock15Block53Block122Value13 := (recoveredBlock15Block53Block122Value5) specificationName: (recoveredBlock15Block53Block122Value12).
    recoveredBlock15Block53Block122Value13
].
            recoveredBlock15Block53PC := 173.
        ].
        recoveredBlock15Block53Step = 173 ifTrue: [
            (recoveredBlock15Block53Stack0) detect: (recoveredBlock15Block53Stack1) ifOne: (recoveredBlock15Block53Stack2) ifNone: (recoveredBlock15Block53Stack3).
            recoveredBlock15Block53PC := 176.
        ].
        recoveredBlock15Block53Step = 176 ifTrue: [
            recoveredBlock15Block53Stack0 := recoveredBlock15Arg1.
            recoveredBlock15Block53PC := 179.
        ].
        recoveredBlock15Block53Step = 179 ifTrue: [
            recoveredBlock15Block53Stack0 := (recoveredBlock15Block53Stack0) specification.
            recoveredBlock15Block53PC := 181.
        ].
        recoveredBlock15Block53Step = 181 ifTrue: [
            recoveredBlock15Block53Stack0 := (recoveredBlock15Block53Stack0) allMethods.
            recoveredBlock15Block53PC := 183.
        ].
        recoveredBlock15Block53Step = 183 ifTrue: [
            recoveredBlock15Block53Stack1 := [:recoveredBlock15Block53Block183Arg1 | 
    | recoveredBlock15Block53Block183Value0 recoveredBlock15Block53Block183Value1 recoveredBlock15Block53Block183Value2 recoveredBlock15Block53Block183Value3 |
    recoveredBlock15Block53Block183Value0 := recoveredBlock15Block53Block183Arg1.
    recoveredBlock15Block53Block183Value1 := recoveredArg1.
    recoveredBlock15Block53Block183Value2 := recoveredBlock15Block53Local1.
    recoveredBlock15Block53Block183Value3 := (self) realizeSignature: (recoveredBlock15Block53Block183Value0) of: (recoveredBlock15Block53Block183Value1) inSpecification: (recoveredBlock15Block53Block183Value2).
    recoveredBlock15Block53Block183Value3
].
            recoveredBlock15Block53PC := 201.
        ].
        recoveredBlock15Block53Step = 201 ifTrue: [
            recoveredBlock15Block53Stack0 := (recoveredBlock15Block53Stack0) do: (recoveredBlock15Block53Stack1).
            recoveredBlock15Block53PC := 203.
        ].
        recoveredBlock15Block53Step = 203 ifTrue: [
            recoveredBlock15Block53Stack1 := nil.
            recoveredBlock15Block53PC := 204.
        ].
        recoveredBlock15Block53Step = 204 ifTrue: [
            recoveredBlock15Block53Local1 := recoveredBlock15Block53Stack1.
            recoveredBlock15Block53PC := 207.
        ].
        recoveredBlock15Block53Step = 207 ifTrue: [
            recoveredBlock15Block53Result := recoveredBlock15Block53Stack0.
            recoveredBlock15Block53Done := true.
        ].
    ].
    recoveredBlock15Block53Result
].
            recoveredBlock15PC := 208.
        ].
        recoveredBlock15Step = 208 ifTrue: [
            recoveredBlock15Stack2 := true.
            recoveredBlock15PC := 209.
        ].
        recoveredBlock15Step = 209 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) suspendObserving: (recoveredBlock15Stack1) notify: (recoveredBlock15Stack2).
            recoveredBlock15PC := 211.
        ].
        recoveredBlock15Step = 211 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054bccc; bytecode file offset 0xe485c0"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappedVariableFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableInternalMappingType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsCopyForType: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:block2810f084Arg1 | 
    | block2810f084Value0 block2810f084Value1 block2810f084Value2 |
    block2810f084Value0 := block2810f084Arg1.
    block2810f084Value1 := (block2810f084Value0) targetObject.
    block2810f084Value2 := (block2810f084Value1) notNil.
    block2810f084Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetObject.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableInternalMappingTargetObjects.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 recoveredBlock77Value4 |
    recoveredBlock77Value0 := recoveredBlock77Arg1.
    recoveredBlock77Value1 := (recoveredBlock77Value0) displayName.
    recoveredBlock77Value2 := recoveredLocal2.
    recoveredBlock77Value3 := (recoveredBlock77Value2) displayName.
    recoveredBlock77Value4 := (recoveredBlock77Value1) = (recoveredBlock77Value3).
    recoveredBlock77Value4
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 |
    recoveredBlock98Value0 := recoveredBlock98Arg1.
    recoveredBlock98Value1 := (recoveredBlock98Value0) item.
    ^recoveredBlock98Value1
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableExternalMappingType.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsCopyForType: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := [:block2810f0a8Arg1 | 
    | block2810f0a8Value0 block2810f0a8Value1 block2810f0a8Value2 |
    block2810f0a8Value0 := block2810f0a8Arg1.
    block2810f0a8Value1 := (block2810f0a8Value0) targetObject.
    block2810f0a8Value2 := (block2810f0a8Value1) notNil.
    block2810f0a8Value2
].
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetObject.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableExternalMappingTargetObjects.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := [:recoveredBlock185Arg1 | 
    | recoveredBlock185Value0 recoveredBlock185Value1 recoveredBlock185Value2 recoveredBlock185Value3 recoveredBlock185Value4 |
    recoveredBlock185Value0 := recoveredBlock185Arg1.
    recoveredBlock185Value1 := (recoveredBlock185Value0) displayName.
    recoveredBlock185Value2 := recoveredLocal2.
    recoveredBlock185Value3 := (recoveredBlock185Value2) displayName.
    recoveredBlock185Value4 := (recoveredBlock185Value1) = (recoveredBlock185Value3).
    recoveredBlock185Value4
].
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := [:recoveredBlock206Arg1 | 
    | recoveredBlock206Value0 recoveredBlock206Value1 |
    recoveredBlock206Value0 := recoveredBlock206Arg1.
    recoveredBlock206Value1 := (recoveredBlock206Value0) item.
    ^recoveredBlock206Value1
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058b1b4; bytecode file offset 0xe87aac"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingsUpdatePropertiesFor: recoveredArg1 sources: recoveredArg2 targets: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredArg2.
    recoveredBlock15Value2 := recoveredArg3.
    recoveredBlock15Value3 := (self) mappingsUpdatePropertiesFor: (recoveredBlock15Value0) sources: (recoveredBlock15Value1) targets: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 270.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := (recoveredBlock49Value0) displayName.
    recoveredBlock49Value2 := recoveredArg1.
    recoveredBlock49Value3 := (recoveredBlock49Value2) sourceObject.
    recoveredBlock49Value4 := (recoveredBlock49Value3) displayName.
    recoveredBlock49Value5 := (recoveredBlock49Value1) = (recoveredBlock49Value4).
    recoveredBlock49Value5
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) properties.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) modelOIDChain.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) modelOIDChain: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementOIDChain.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) elementOIDChain: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) properties.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) properties: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) missing: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := [:recoveredBlock163Arg1 | 
    | recoveredBlock163Value0 recoveredBlock163Value1 recoveredBlock163Value2 recoveredBlock163Value3 recoveredBlock163Value4 recoveredBlock163Value5 |
    recoveredBlock163Value0 := recoveredBlock163Arg1.
    recoveredBlock163Value1 := (recoveredBlock163Value0) displayName.
    recoveredBlock163Value2 := recoveredArg1.
    recoveredBlock163Value3 := (recoveredBlock163Value2) targetObject.
    recoveredBlock163Value4 := (recoveredBlock163Value3) displayName.
    recoveredBlock163Value5 := (recoveredBlock163Value1) = (recoveredBlock163Value4).
    recoveredBlock163Value5
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) properties.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := (recoveredStack2) modelOIDChain.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) modelOIDChain: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementOIDChain.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) elementOIDChain: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) properties.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) properties: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack1) missing: (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20595ab0; bytecode file offset 0xe923d4"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableMappingsType: recoveredArg1 updatePropertiesForSourceObjects: recoveredArg2 targetObjects: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappedInterrunVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementMappings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableMappingTypeOld.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) convertMappedMessageVariables.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingsForType: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 recoveredBlock62Value4 recoveredBlock62Value5 recoveredBlock62Value6 recoveredBlock62Value7 recoveredBlock62Value8 recoveredBlock62Value9 |
    recoveredBlock62Value0 := recoveredLocal1.
    recoveredBlock62Value1 := recoveredBlock62Arg1.
    recoveredBlock62Value2 := (recoveredBlock62Value1) displayName.
    recoveredBlock62Value3 := OrderedCollection.
    recoveredBlock62Value4 := ASDMappingObject.
    recoveredBlock62Value5 := (recoveredBlock62Value4) create.
    recoveredBlock62Value6 := recoveredBlock62Arg1.
    recoveredBlock62Value7 := (recoveredBlock62Value5) sourceObject: (recoveredBlock62Value6).
    recoveredBlock62Value8 := (recoveredBlock62Value3) with: (recoveredBlock62Value7).
    recoveredBlock62Value9 := (recoveredBlock62Value0) at: (recoveredBlock62Value2) put: (recoveredBlock62Value8).
    recoveredBlock62Value9
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkConversionToMultiMappingNeeded.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) convertToASDV621.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsCopyForType: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Value0 recoveredBlock117Value1 recoveredBlock117Value2 |
    recoveredBlock117Value0 := recoveredBlock117Arg1.
    recoveredBlock117Value1 := [:recoveredBlock117Block125Arg1 | 
    | recoveredBlock117Block125Stack0 recoveredBlock117Block125Stack1 recoveredBlock117Block125Stack2 recoveredBlock117Block125Stack3 recoveredBlock117Block125Stack4 recoveredBlock117Block125PC recoveredBlock117Block125Step recoveredBlock117Block125Done recoveredBlock117Block125Result |
    recoveredBlock117Block125Stack0 := self.
    recoveredBlock117Block125PC := 132.
    recoveredBlock117Block125Done := false.
    [recoveredBlock117Block125Done not] whileTrue: [
        recoveredBlock117Block125Step := recoveredBlock117Block125PC.
        recoveredBlock117Block125Step = 132 ifTrue: [
            recoveredBlock117Block125Stack1 := nil.
            recoveredBlock117Block125PC := 133.
        ].
        recoveredBlock117Block125Step = 133 ifTrue: [
            recoveredBlock117Block125Stack2 := recoveredArg2.
            recoveredBlock117Block125PC := 136.
        ].
        recoveredBlock117Block125Step = 136 ifTrue: [
            recoveredBlock117Block125Stack3 := [:recoveredBlock117Block125Block136Arg1 | 
    | recoveredBlock117Block125Block136Value0 recoveredBlock117Block125Block136Value1 recoveredBlock117Block125Block136Value2 recoveredBlock117Block125Block136Value3 recoveredBlock117Block125Block136Value4 recoveredBlock117Block125Block136Value5 |
    recoveredBlock117Block125Block136Value0 := recoveredBlock117Block125Block136Arg1.
    recoveredBlock117Block125Block136Value1 := (recoveredBlock117Block125Block136Value0) displayName.
    recoveredBlock117Block125Block136Value2 := recoveredBlock117Block125Arg1.
    recoveredBlock117Block125Block136Value3 := (recoveredBlock117Block125Block136Value2) sourceObject.
    recoveredBlock117Block125Block136Value4 := (recoveredBlock117Block125Block136Value3) displayName.
    recoveredBlock117Block125Block136Value5 := (recoveredBlock117Block125Block136Value1) = (recoveredBlock117Block125Block136Value4).
    recoveredBlock117Block125Block136Value5
].
            recoveredBlock117Block125PC := 154.
        ].
        recoveredBlock117Block125Step = 154 ifTrue: [
            recoveredBlock117Block125Stack2 := (recoveredBlock117Block125Stack2) anySatisfy: (recoveredBlock117Block125Stack3).
            recoveredBlock117Block125PC := 156.
        ].
        recoveredBlock117Block125Step = 156 ifTrue: [
            (recoveredBlock117Block125Stack2) ifTrue: [recoveredBlock117Block125PC := 183] ifFalse: [recoveredBlock117Block125PC := 160].
        ].
        recoveredBlock117Block125Step = 160 ifTrue: [
            recoveredBlock117Block125PC := 161.
        ].
        recoveredBlock117Block125Step = 161 ifTrue: [
            recoveredBlock117Block125Stack1 := recoveredBlock117Block125Arg1.
            recoveredBlock117Block125PC := 164.
        ].
        recoveredBlock117Block125Step = 164 ifTrue: [
            recoveredBlock117Block125Stack1 := (recoveredBlock117Block125Stack1) sourceObject.
            recoveredBlock117Block125PC := 166.
        ].
        recoveredBlock117Block125Step = 166 ifTrue: [
            (recoveredBlock117Block125Stack1) fillPropertiesUnknown.
            recoveredBlock117Block125PC := 168.
        ].
        recoveredBlock117Block125Step = 168 ifTrue: [
            recoveredBlock117Block125Stack1 := recoveredBlock117Block125Arg1.
            recoveredBlock117Block125PC := 171.
        ].
        recoveredBlock117Block125Step = 171 ifTrue: [
            recoveredBlock117Block125Stack2 := recoveredArg3.
            recoveredBlock117Block125PC := 174.
        ].
        recoveredBlock117Block125Step = 174 ifTrue: [
            recoveredBlock117Block125Stack3 := self.
            recoveredBlock117Block125PC := 175.
        ].
        recoveredBlock117Block125Step = 175 ifTrue: [
            (recoveredBlock117Block125Stack1) fillTargetObjectProperties: (recoveredBlock117Block125Stack2) asc: (recoveredBlock117Block125Stack3).
            recoveredBlock117Block125PC := 177.
        ].
        recoveredBlock117Block125Step = 177 ifTrue: [
            recoveredBlock117Block125Stack1 := recoveredBlock117Block125Arg1.
            recoveredBlock117Block125PC := 180.
        ].
        recoveredBlock117Block125Step = 180 ifTrue: [
            recoveredBlock117Block125Stack2 := false.
            recoveredBlock117Block125PC := 181.
        ].
        recoveredBlock117Block125Step = 181 ifTrue: [
            recoveredBlock117Block125Stack1 := (recoveredBlock117Block125Stack1) mappingState: (recoveredBlock117Block125Stack2).
            recoveredBlock117Block125PC := 183.
        ].
        recoveredBlock117Block125Step = 183 ifTrue: [
            recoveredBlock117Block125Result := recoveredBlock117Block125Stack1.
            recoveredBlock117Block125Done := true.
        ].
    ].
    recoveredBlock117Block125Result
].
    recoveredBlock117Value2 := (recoveredBlock117Value0) do: (recoveredBlock117Value1).
    recoveredBlock117Value2
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := [:recoveredBlock192Arg1 | 
    | recoveredBlock192Local1 recoveredBlock192Stack0 recoveredBlock192Stack1 recoveredBlock192Stack2 recoveredBlock192Stack3 recoveredBlock192Stack4 recoveredBlock192Stack5 recoveredBlock192Stack6 recoveredBlock192PC recoveredBlock192Step recoveredBlock192Done recoveredBlock192Result |
    recoveredBlock192Stack0 := self.
    recoveredBlock192PC := 198.
    recoveredBlock192Done := false.
    [recoveredBlock192Done not] whileTrue: [
        recoveredBlock192Step := recoveredBlock192PC.
        recoveredBlock192Step = 198 ifTrue: [
            recoveredBlock192Stack1 := recoveredLocal1.
            recoveredBlock192PC := 201.
        ].
        recoveredBlock192Step = 201 ifTrue: [
            recoveredBlock192Stack2 := recoveredBlock192Arg1.
            recoveredBlock192PC := 204.
        ].
        recoveredBlock192Step = 204 ifTrue: [
            recoveredBlock192Stack2 := (recoveredBlock192Stack2) displayName.
            recoveredBlock192PC := 206.
        ].
        recoveredBlock192Step = 206 ifTrue: [
            recoveredBlock192Stack3 := [].
            recoveredBlock192PC := 208.
        ].
        recoveredBlock192Step = 208 ifTrue: [
            recoveredBlock192Stack1 := (recoveredBlock192Stack1) at: (recoveredBlock192Stack2) ifAbsent: (recoveredBlock192Stack3).
            recoveredBlock192PC := 210.
        ].
        recoveredBlock192Step = 210 ifTrue: [
            recoveredBlock192Local1 := recoveredBlock192Stack1.
            recoveredBlock192PC := 213.
        ].
        recoveredBlock192Step = 213 ifTrue: [
            recoveredBlock192Stack1 := recoveredBlock192Local1.
            recoveredBlock192PC := 216.
        ].
        recoveredBlock192Step = 216 ifTrue: [
            (recoveredBlock192Stack1 ~~ nil) ifTrue: [recoveredBlock192PC := 246] ifFalse: [recoveredBlock192PC := 220].
        ].
        recoveredBlock192Step = 220 ifTrue: [
            recoveredBlock192Stack1 := recoveredLocal1.
            recoveredBlock192PC := 223.
        ].
        recoveredBlock192Step = 223 ifTrue: [
            recoveredBlock192Stack2 := recoveredBlock192Arg1.
            recoveredBlock192PC := 226.
        ].
        recoveredBlock192Step = 226 ifTrue: [
            recoveredBlock192Stack2 := (recoveredBlock192Stack2) displayName.
            recoveredBlock192PC := 228.
        ].
        recoveredBlock192Step = 228 ifTrue: [
            recoveredBlock192Stack3 := OrderedCollection.
            recoveredBlock192PC := 230.
        ].
        recoveredBlock192Step = 230 ifTrue: [
            recoveredBlock192Stack4 := ASDMappingObject.
            recoveredBlock192PC := 232.
        ].
        recoveredBlock192Step = 232 ifTrue: [
            recoveredBlock192Stack4 := (recoveredBlock192Stack4) create.
            recoveredBlock192PC := 234.
        ].
        recoveredBlock192Step = 234 ifTrue: [
            recoveredBlock192Stack5 := recoveredBlock192Arg1.
            recoveredBlock192PC := 237.
        ].
        recoveredBlock192Step = 237 ifTrue: [
            recoveredBlock192Stack4 := (recoveredBlock192Stack4) sourceObject: (recoveredBlock192Stack5).
            recoveredBlock192PC := 239.
        ].
        recoveredBlock192Step = 239 ifTrue: [
            recoveredBlock192Stack3 := (recoveredBlock192Stack3) with: (recoveredBlock192Stack4).
            recoveredBlock192PC := 241.
        ].
        recoveredBlock192Step = 241 ifTrue: [
            recoveredBlock192Stack1 := (recoveredBlock192Stack1) at: (recoveredBlock192Stack2) put: (recoveredBlock192Stack3).
            recoveredBlock192PC := 243.
        ].
        recoveredBlock192Step = 243 ifTrue: [
            recoveredBlock192PC := 276.
        ].
        recoveredBlock192Step = 246 ifTrue: [
            recoveredBlock192Stack1 := recoveredBlock192Local1.
            recoveredBlock192PC := 249.
        ].
        recoveredBlock192Step = 249 ifTrue: [
            recoveredBlock192Stack2 := [:recoveredBlock192Block249Arg1 | 
    | recoveredBlock192Block249Value0 recoveredBlock192Block249Value1 recoveredBlock192Block249Value2 recoveredBlock192Block249Value3 recoveredBlock192Block249Value4 recoveredBlock192Block249Value5 |
    recoveredBlock192Block249Value0 := recoveredBlock192Block249Arg1.
    recoveredBlock192Block249Value1 := recoveredBlock192Arg1.
    (recoveredBlock192Block249Value0) fillSourceObjectProperties: (recoveredBlock192Block249Value1).
    recoveredBlock192Block249Value2 := recoveredBlock192Block249Arg1.
    (recoveredBlock192Block249Value2) mappingState: (nil).
    recoveredBlock192Block249Value3 := recoveredBlock192Block249Arg1.
    recoveredBlock192Block249Value4 := recoveredArg3.
    recoveredBlock192Block249Value5 := (recoveredBlock192Block249Value3) fillTargetObjectProperties: (recoveredBlock192Block249Value4) asc: (self).
    recoveredBlock192Block249Value5
].
            recoveredBlock192PC := 274.
        ].
        recoveredBlock192Step = 274 ifTrue: [
            recoveredBlock192Stack1 := (recoveredBlock192Stack1) do: (recoveredBlock192Stack2).
            recoveredBlock192PC := 276.
        ].
        recoveredBlock192Step = 276 ifTrue: [
            recoveredBlock192Result := recoveredBlock192Stack1.
            recoveredBlock192Done := true.
        ].
    ].
    recoveredBlock192Result
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20597688; bytecode file offset 0xe93fbc"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
specialReferencedElements
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedInterfaces.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block28114e08Arg1 | 
    | block28114e08Value0 block28114e08Value1 |
    block28114e08Value0 := block28114e08Arg1.
    block28114e08Value1 := (block28114e08Value0) aliasName.
    block28114e08Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedInterfaces.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) allMethods.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack1 := [:recoveredBlock27Block36Arg1 | 
    | recoveredBlock27Block36Stack0 recoveredBlock27Block36Stack1 recoveredBlock27Block36Stack2 recoveredBlock27Block36Stack3 recoveredBlock27Block36PC recoveredBlock27Block36Step recoveredBlock27Block36Done recoveredBlock27Block36Result |
    recoveredBlock27Block36Stack0 := nil.
    recoveredBlock27Block36PC := 42.
    recoveredBlock27Block36Done := false.
    [recoveredBlock27Block36Done not] whileTrue: [
        recoveredBlock27Block36Step := recoveredBlock27Block36PC.
        recoveredBlock27Block36Step = 42 ifTrue: [
            recoveredBlock27Block36Stack1 := false.
            recoveredBlock27Block36PC := 43.
        ].
        recoveredBlock27Block36Step = 43 ifTrue: [
            recoveredBlock27Block36Stack2 := recoveredBlock27Block36Arg1.
            recoveredBlock27Block36PC := 44.
        ].
        recoveredBlock27Block36Step = 44 ifTrue: [
            recoveredBlock27Block36Stack2 := (recoveredBlock27Block36Stack2) isRunnable.
            recoveredBlock27Block36PC := 46.
        ].
        recoveredBlock27Block36Step = 46 ifTrue: [
            (recoveredBlock27Block36Stack2) ifTrue: [recoveredBlock27Block36PC := 50] ifFalse: [recoveredBlock27Block36PC := 70].
        ].
        recoveredBlock27Block36Step = 50 ifTrue: [
            recoveredBlock27Block36PC := 51.
        ].
        recoveredBlock27Block36Step = 51 ifTrue: [
            recoveredBlock27Block36Stack1 := false.
            recoveredBlock27Block36PC := 52.
        ].
        recoveredBlock27Block36Step = 52 ifTrue: [
            recoveredBlock27Block36Stack2 := recoveredBlock27Block36Arg1.
            recoveredBlock27Block36PC := 53.
        ].
        recoveredBlock27Block36Step = 53 ifTrue: [
            recoveredBlock27Block36Stack2 := (recoveredBlock27Block36Stack2) realizedSignature.
            recoveredBlock27Block36PC := 55.
        ].
        recoveredBlock27Block36Step = 55 ifTrue: [
            (recoveredBlock27Block36Stack2 == nil) ifTrue: [recoveredBlock27Block36PC := 70] ifFalse: [recoveredBlock27Block36PC := 58].
        ].
        recoveredBlock27Block36Step = 58 ifTrue: [
            recoveredBlock27Block36PC := 59.
        ].
        recoveredBlock27Block36Step = 59 ifTrue: [
            recoveredBlock27Block36Stack1 := recoveredBlock27Arg1.
            recoveredBlock27Block36PC := 62.
        ].
        recoveredBlock27Block36Step = 62 ifTrue: [
            recoveredBlock27Block36Stack1 := (recoveredBlock27Block36Stack1) aliasName.
            recoveredBlock27Block36PC := 64.
        ].
        recoveredBlock27Block36Step = 64 ifTrue: [
            recoveredBlock27Block36Stack2 := recoveredBlock27Block36Arg1.
            recoveredBlock27Block36PC := 65.
        ].
        recoveredBlock27Block36Step = 65 ifTrue: [
            recoveredBlock27Block36Stack2 := (recoveredBlock27Block36Stack2) realizedSignature.
            recoveredBlock27Block36PC := 67.
        ].
        recoveredBlock27Block36Step = 67 ifTrue: [
            recoveredBlock27Block36Stack2 := (recoveredBlock27Block36Stack2) first.
            recoveredBlock27Block36PC := 69.
        ].
        recoveredBlock27Block36Step = 69 ifTrue: [
            recoveredBlock27Block36Stack1 := (recoveredBlock27Block36Stack1) = (recoveredBlock27Block36Stack2).
            recoveredBlock27Block36PC := 70.
        ].
        recoveredBlock27Block36Step = 70 ifTrue: [
            recoveredBlock27Block36Result := recoveredBlock27Block36Stack1.
            recoveredBlock27Block36Done := true.
        ].
    ].
    recoveredBlock27Block36Result
].
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) select: (recoveredBlock27Stack1).
            recoveredBlock27PC := 73.
        ].
        recoveredBlock27Step = 73 ifTrue: [
            recoveredLocal3 := recoveredBlock27Stack0.
            recoveredBlock27PC := 76.
        ].
        recoveredBlock27Step = 76 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal3.
            recoveredBlock27PC := 79.
        ].
        recoveredBlock27Step = 79 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) notEmpty.
            recoveredBlock27PC := 81.
        ].
        recoveredBlock27Step = 81 ifTrue: [
            (recoveredBlock27Stack0) ifTrue: [recoveredBlock27PC := 84] ifFalse: [recoveredBlock27PC := 112].
        ].
        recoveredBlock27Step = 84 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal3.
            recoveredBlock27PC := 87.
        ].
        recoveredBlock27Step = 87 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) first.
            recoveredBlock27PC := 89.
        ].
        recoveredBlock27Step = 89 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) owner.
            recoveredBlock27PC := 91.
        ].
        recoveredBlock27Step = 91 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) logicModel.
            recoveredBlock27PC := 93.
        ].
        recoveredBlock27Step = 93 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) sequences.
            recoveredBlock27PC := 95.
        ].
        recoveredBlock27Step = 95 ifTrue: [
            recoveredBlock27Stack1 := [:block28114e2cArg1 | 
    | block28114e2cValue0 block28114e2cValue1 block28114e2cValue2 |
    block28114e2cValue0 := block28114e2cArg1.
    block28114e2cValue1 := (block28114e2cValue0) number.
    block28114e2cValue2 := (block28114e2cValue1) ~= (0).
    block28114e2cValue2
].
            recoveredBlock27PC := 97.
        ].
        recoveredBlock27Step = 97 ifTrue: [
            recoveredBlock27PC := 107.
        ].
        recoveredBlock27Step = 107 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) select: (recoveredBlock27Stack1).
            recoveredBlock27PC := 109.
        ].
        recoveredBlock27Step = 109 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack0.
            recoveredBlock27PC := 112.
        ].
        recoveredBlock27Step = 112 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal3.
            recoveredBlock27PC := 115.
        ].
        recoveredBlock27Step = 115 ifTrue: [
            recoveredBlock27Stack1 := [:recoveredBlock27Block115Arg1 | 
    | recoveredBlock27Block115Value0 recoveredBlock27Block115Value1 recoveredBlock27Block115Value2 |
    recoveredBlock27Block115Value0 := recoveredBlock27Local1.
    recoveredBlock27Block115Value1 := [:recoveredBlock27Block115Block125Arg1 | 
    | recoveredBlock27Block115Block125Value0 recoveredBlock27Block115Block125Value1 recoveredBlock27Block115Block125Value2 recoveredBlock27Block115Block125Value3 recoveredBlock27Block115Block125Value4 |
    recoveredBlock27Block115Block125Value0 := recoveredBlock27Block115Block125Arg1.
    recoveredBlock27Block115Block125Value1 := (recoveredBlock27Block115Block125Value0) methodAliasName.
    recoveredBlock27Block115Block125Value2 := recoveredBlock27Block115Arg1.
    recoveredBlock27Block115Block125Value3 := (recoveredBlock27Block115Block125Value2) aliasName.
    recoveredBlock27Block115Block125Value4 := (recoveredBlock27Block115Block125Value1) = (recoveredBlock27Block115Block125Value3).
    recoveredBlock27Block115Block125Value4
].
    recoveredBlock27Block115Value2 := (recoveredBlock27Block115Value0) anySatisfy: (recoveredBlock27Block115Value1).
    recoveredBlock27Block115Value2
].
            recoveredBlock27PC := 145.
        ].
        recoveredBlock27Step = 145 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) anySatisfy: (recoveredBlock27Stack1).
            recoveredBlock27PC := 147.
        ].
        recoveredBlock27Step = 147 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack0.
            recoveredBlock27PC := 150.
        ].
        recoveredBlock27Step = 150 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal3.
            recoveredBlock27PC := 153.
        ].
        recoveredBlock27Step = 153 ifTrue: [
            recoveredBlock27Stack1 := [:recoveredBlock27Block153Arg1 | 
    | recoveredBlock27Block153Stack0 recoveredBlock27Block153Stack1 recoveredBlock27Block153Stack2 recoveredBlock27Block153Stack3 recoveredBlock27Block153PC recoveredBlock27Block153Step recoveredBlock27Block153Done recoveredBlock27Block153Result |
    recoveredBlock27Block153Stack0 := nil.
    recoveredBlock27Block153PC := 160.
    recoveredBlock27Block153Done := false.
    [recoveredBlock27Block153Done not] whileTrue: [
        recoveredBlock27Block153Step := recoveredBlock27Block153PC.
        recoveredBlock27Block153Step = 160 ifTrue: [
            recoveredBlock27Block153Stack1 := recoveredBlock27Block153Arg1.
            recoveredBlock27Block153PC := 161.
        ].
        recoveredBlock27Block153Step = 161 ifTrue: [
            recoveredBlock27Block153Stack1 := (recoveredBlock27Block153Stack1) arguments.
            recoveredBlock27Block153PC := 163.
        ].
        recoveredBlock27Block153Step = 163 ifTrue: [
            recoveredBlock27Block153Stack2 := [:recoveredBlock27Block153Block163Arg1 | 
    | recoveredBlock27Block153Block163Value0 recoveredBlock27Block153Block163Value1 recoveredBlock27Block153Block163Value2 recoveredBlock27Block153Block163Value3 |
    recoveredBlock27Block153Block163Value0 := recoveredLocal4.
    recoveredBlock27Block153Block163Value1 := recoveredBlock27Block153Block163Arg1.
    recoveredBlock27Block153Block163Value2 := (recoveredBlock27Block153Block163Value1) aliasName.
    recoveredBlock27Block153Block163Value3 := (recoveredBlock27Block153Block163Value0) add: (recoveredBlock27Block153Block163Value2).
    recoveredBlock27Block153Block163Value3
].
            recoveredBlock27Block153PC := 179.
        ].
        recoveredBlock27Block153Step = 179 ifTrue: [
            (recoveredBlock27Block153Stack1) do: (recoveredBlock27Block153Stack2).
            recoveredBlock27Block153PC := 181.
        ].
        recoveredBlock27Block153Step = 181 ifTrue: [
            recoveredBlock27Block153Stack1 := nil.
            recoveredBlock27Block153PC := 182.
        ].
        recoveredBlock27Block153Step = 182 ifTrue: [
            recoveredBlock27Block153Stack2 := recoveredBlock27Block153Arg1.
            recoveredBlock27Block153PC := 183.
        ].
        recoveredBlock27Block153Step = 183 ifTrue: [
            recoveredBlock27Block153Stack2 := (recoveredBlock27Block153Stack2) hasReturnValue.
            recoveredBlock27Block153PC := 185.
        ].
        recoveredBlock27Block153Step = 185 ifTrue: [
            (recoveredBlock27Block153Stack2) ifTrue: [recoveredBlock27Block153PC := 188] ifFalse: [recoveredBlock27Block153PC := 199].
        ].
        recoveredBlock27Block153Step = 188 ifTrue: [
            recoveredBlock27Block153PC := 189.
        ].
        recoveredBlock27Block153Step = 189 ifTrue: [
            recoveredBlock27Block153Stack1 := recoveredLocal4.
            recoveredBlock27Block153PC := 192.
        ].
        recoveredBlock27Block153Step = 192 ifTrue: [
            recoveredBlock27Block153Stack2 := recoveredBlock27Block153Arg1.
            recoveredBlock27Block153PC := 193.
        ].
        recoveredBlock27Block153Step = 193 ifTrue: [
            recoveredBlock27Block153Stack2 := (recoveredBlock27Block153Stack2) returnValue.
            recoveredBlock27Block153PC := 195.
        ].
        recoveredBlock27Block153Step = 195 ifTrue: [
            recoveredBlock27Block153Stack2 := (recoveredBlock27Block153Stack2) aliasName.
            recoveredBlock27Block153PC := 197.
        ].
        recoveredBlock27Block153Step = 197 ifTrue: [
            recoveredBlock27Block153Stack1 := (recoveredBlock27Block153Stack1) add: (recoveredBlock27Block153Stack2).
            recoveredBlock27Block153PC := 199.
        ].
        recoveredBlock27Block153Step = 199 ifTrue: [
            recoveredBlock27Block153Result := recoveredBlock27Block153Stack1.
            recoveredBlock27Block153Done := true.
        ].
    ].
    recoveredBlock27Block153Result
].
            recoveredBlock27PC := 200.
        ].
        recoveredBlock27Step = 200 ifTrue: [
            (recoveredBlock27Stack0) do: (recoveredBlock27Stack1).
            recoveredBlock27PC := 202.
        ].
        recoveredBlock27Step = 202 ifTrue: [
            recoveredBlock27Stack0 := nil.
            recoveredBlock27PC := 203.
        ].
        recoveredBlock27Step = 203 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal1.
            recoveredBlock27PC := 206.
        ].
        recoveredBlock27Step = 206 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 210] ifFalse: [recoveredBlock27PC := 221].
        ].
        recoveredBlock27Step = 210 ifTrue: [
            recoveredBlock27PC := 211.
        ].
        recoveredBlock27Step = 211 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal4.
            recoveredBlock27PC := 214.
        ].
        recoveredBlock27Step = 214 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 217.
        ].
        recoveredBlock27Step = 217 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) aliasName.
            recoveredBlock27PC := 219.
        ].
        recoveredBlock27Step = 219 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) add: (recoveredBlock27Stack1).
            recoveredBlock27PC := 221.
        ].
        recoveredBlock27Step = 221 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack0.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingReferencedElements.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpecification.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) events.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := [:recoveredBlock237Arg1 | 
    | recoveredBlock237Stack0 recoveredBlock237Stack1 recoveredBlock237Stack2 recoveredBlock237Stack3 recoveredBlock237PC recoveredBlock237Step recoveredBlock237Done recoveredBlock237Result |
    recoveredBlock237Stack0 := self.
    recoveredBlock237PC := 244.
    recoveredBlock237Done := false.
    [recoveredBlock237Done not] whileTrue: [
        recoveredBlock237Step := recoveredBlock237PC.
        recoveredBlock237Step = 244 ifTrue: [
            recoveredBlock237Stack1 := nil.
            recoveredBlock237PC := 245.
        ].
        recoveredBlock237Step = 245 ifTrue: [
            recoveredBlock237Stack2 := recoveredBlock237Arg1.
            recoveredBlock237PC := 246.
        ].
        recoveredBlock237Step = 246 ifTrue: [
            recoveredBlock237Stack2 := (recoveredBlock237Stack2) specificEvent.
            recoveredBlock237PC := 248.
        ].
        recoveredBlock237Step = 248 ifTrue: [
            recoveredBlock237Stack2 := (recoveredBlock237Stack2) isModeSwitch.
            recoveredBlock237PC := 250.
        ].
        recoveredBlock237Step = 250 ifTrue: [
            (recoveredBlock237Stack2) ifTrue: [recoveredBlock237PC := 254] ifFalse: [recoveredBlock237PC := 277].
        ].
        recoveredBlock237Step = 254 ifTrue: [
            recoveredBlock237Stack2 := recoveredBlock237Arg1.
            recoveredBlock237PC := 255.
        ].
        recoveredBlock237Step = 255 ifTrue: [
            recoveredBlock237Stack2 := (recoveredBlock237Stack2) specificEvent.
            recoveredBlock237PC := 257.
        ].
        recoveredBlock237Step = 257 ifTrue: [
            recoveredBlock237Stack2 := (recoveredBlock237Stack2) assignedMode.
            recoveredBlock237PC := 259.
        ].
        recoveredBlock237Step = 259 ifTrue: [
            (recoveredBlock237Stack2 == nil) ifTrue: [recoveredBlock237PC := 277] ifFalse: [recoveredBlock237PC := 262].
        ].
        recoveredBlock237Step = 262 ifTrue: [
            recoveredBlock237PC := 263.
        ].
        recoveredBlock237Step = 263 ifTrue: [
            recoveredBlock237Stack1 := recoveredLocal4.
            recoveredBlock237PC := 266.
        ].
        recoveredBlock237Step = 266 ifTrue: [
            recoveredBlock237Stack2 := recoveredBlock237Arg1.
            recoveredBlock237PC := 267.
        ].
        recoveredBlock237Step = 267 ifTrue: [
            recoveredBlock237Stack2 := (recoveredBlock237Stack2) specificEvent.
            recoveredBlock237PC := 269.
        ].
        recoveredBlock237Step = 269 ifTrue: [
            recoveredBlock237Stack2 := (recoveredBlock237Stack2) assignedMode.
            recoveredBlock237PC := 271.
        ].
        recoveredBlock237Step = 271 ifTrue: [
            recoveredBlock237Stack2 := (recoveredBlock237Stack2) instVarAliasList.
            recoveredBlock237PC := 273.
        ].
        recoveredBlock237Step = 273 ifTrue: [
            recoveredBlock237Stack2 := (recoveredBlock237Stack2) first.
            recoveredBlock237PC := 275.
        ].
        recoveredBlock237Step = 275 ifTrue: [
            recoveredBlock237Stack1 := (recoveredBlock237Stack1) add: (recoveredBlock237Stack2).
            recoveredBlock237PC := 277.
        ].
        recoveredBlock237Step = 277 ifTrue: [
            recoveredBlock237Result := recoveredBlock237Stack1.
            recoveredBlock237Done := true.
        ].
    ].
    recoveredBlock237Result
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a32cc; bytecode file offset 0xe9fbdc"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
autoMapping: recoveredArg1 source: recoveredArg2 target: recoveredArg3 overwrite: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := Set.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [:block28115948Arg1 :block28115948Arg2 | 
    | block28115948Value0 block28115948Value1 block28115948Value2 block28115948Value3 |
    block28115948Value0 := block28115948Arg1.
    block28115948Value1 := block28115948Value0.
    block28115948Value2 := block28115948Arg2.
    block28115948Value3 := (block28115948Value2) targetObject.
    (block28115948Value1) add: (block28115948Value3).
    block28115948Value0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Local1 recoveredBlock39Local2 recoveredBlock39Local3 recoveredBlock39Local4 recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := OrderedCollection.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) new.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Local1 := recoveredBlock39Stack1.
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg3.
            recoveredBlock39PC := 55.
        ].
        recoveredBlock39Step = 55 ifTrue: [
            recoveredBlock39Stack2 := [:recoveredBlock39Block55Arg1 | 
    | recoveredBlock39Block55Stack0 recoveredBlock39Block55Stack1 recoveredBlock39Block55Stack2 recoveredBlock39Block55Stack3 recoveredBlock39Block55Stack4 recoveredBlock39Block55PC recoveredBlock39Block55Step recoveredBlock39Block55Done recoveredBlock39Block55Result |
    recoveredBlock39Block55Stack0 := self.
    recoveredBlock39Block55PC := 62.
    recoveredBlock39Block55Done := false.
    [recoveredBlock39Block55Done not] whileTrue: [
        recoveredBlock39Block55Step := recoveredBlock39Block55PC.
        recoveredBlock39Block55Step = 62 ifTrue: [
            recoveredBlock39Block55Stack1 := false.
            recoveredBlock39Block55PC := 63.
        ].
        recoveredBlock39Block55Step = 63 ifTrue: [
            recoveredBlock39Block55Stack2 := recoveredBlock39Block55Arg1.
            recoveredBlock39Block55PC := 64.
        ].
        recoveredBlock39Block55Step = 64 ifTrue: [
            recoveredBlock39Block55Stack2 := (recoveredBlock39Block55Stack2) item.
            recoveredBlock39Block55PC := 66.
        ].
        recoveredBlock39Block55Step = 66 ifTrue: [
            (recoveredBlock39Block55Stack2 == nil) ifTrue: [recoveredBlock39Block55PC := 94] ifFalse: [recoveredBlock39Block55PC := 70].
        ].
        recoveredBlock39Block55Step = 70 ifTrue: [
            recoveredBlock39Block55Stack2 := recoveredBlock39Block55Arg1.
            recoveredBlock39Block55PC := 71.
        ].
        recoveredBlock39Block55Step = 71 ifTrue: [
            recoveredBlock39Block55Stack2 := (recoveredBlock39Block55Stack2) item.
            recoveredBlock39Block55PC := 73.
        ].
        recoveredBlock39Block55Step = 73 ifTrue: [
            recoveredBlock39Block55Stack2 := (recoveredBlock39Block55Stack2) elementName.
            recoveredBlock39Block55PC := 75.
        ].
        recoveredBlock39Block55Step = 75 ifTrue: [
            recoveredBlock39Block55Stack3 := recoveredBlock39Arg1.
            recoveredBlock39Block55PC := 78.
        ].
        recoveredBlock39Block55Step = 78 ifTrue: [
            recoveredBlock39Block55Stack3 := (recoveredBlock39Block55Stack3) item.
            recoveredBlock39Block55PC := 80.
        ].
        recoveredBlock39Block55Step = 80 ifTrue: [
            recoveredBlock39Block55Stack3 := (recoveredBlock39Block55Stack3) elementName.
            recoveredBlock39Block55PC := 82.
        ].
        recoveredBlock39Block55Step = 82 ifTrue: [
            recoveredBlock39Block55Stack2 := (recoveredBlock39Block55Stack2) = (recoveredBlock39Block55Stack3).
            recoveredBlock39Block55PC := 83.
        ].
        recoveredBlock39Block55Step = 83 ifTrue: [
            (recoveredBlock39Block55Stack2) ifTrue: [recoveredBlock39Block55PC := 86] ifFalse: [recoveredBlock39Block55PC := 94].
        ].
        recoveredBlock39Block55Step = 86 ifTrue: [
            recoveredBlock39Block55PC := 87.
        ].
        recoveredBlock39Block55Step = 87 ifTrue: [
            recoveredBlock39Block55Stack1 := self.
            recoveredBlock39Block55PC := 88.
        ].
        recoveredBlock39Block55Step = 88 ifTrue: [
            recoveredBlock39Block55Stack2 := recoveredBlock39Arg1.
            recoveredBlock39Block55PC := 91.
        ].
        recoveredBlock39Block55Step = 91 ifTrue: [
            recoveredBlock39Block55Stack3 := recoveredBlock39Block55Arg1.
            recoveredBlock39Block55PC := 92.
        ].
        recoveredBlock39Block55Step = 92 ifTrue: [
            recoveredBlock39Block55Stack1 := (recoveredBlock39Block55Stack1) isMappingValidForSource: (recoveredBlock39Block55Stack2) forTarget: (recoveredBlock39Block55Stack3).
            recoveredBlock39Block55PC := 94.
        ].
        recoveredBlock39Block55Step = 94 ifTrue: [
            recoveredBlock39Block55Result := recoveredBlock39Block55Stack1.
            recoveredBlock39Block55Done := true.
        ].
    ].
    recoveredBlock39Block55Result
].
            recoveredBlock39PC := 95.
        ].
        recoveredBlock39Step = 95 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) select: (recoveredBlock39Stack2).
            recoveredBlock39PC := 97.
        ].
        recoveredBlock39Step = 97 ifTrue: [
            recoveredBlock39Local2 := recoveredBlock39Stack1.
            recoveredBlock39PC := 100.
        ].
        recoveredBlock39Step = 100 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local2.
            recoveredBlock39PC := 103.
        ].
        recoveredBlock39Step = 103 ifTrue: [
            recoveredBlock39Stack2 := [:recoveredBlock39Block103Arg1 | 
    | recoveredBlock39Block103Value0 recoveredBlock39Block103Value1 recoveredBlock39Block103Value2 recoveredBlock39Block103Value3 recoveredBlock39Block103Value4 |
    recoveredBlock39Block103Value0 := recoveredLocal1.
    recoveredBlock39Block103Value1 := [:recoveredBlock39Block103Block113Arg1 | 
    | recoveredBlock39Block103Block113Value0 recoveredBlock39Block103Block113Value1 recoveredBlock39Block103Block113Value2 recoveredBlock39Block103Block113Value3 recoveredBlock39Block103Block113Value4 |
    recoveredBlock39Block103Block113Value0 := recoveredBlock39Block103Block113Arg1.
    recoveredBlock39Block103Block113Value1 := (recoveredBlock39Block103Block113Value0) elementOIDChain.
    recoveredBlock39Block103Block113Value2 := recoveredBlock39Block103Arg1.
    recoveredBlock39Block103Block113Value3 := (recoveredBlock39Block103Block113Value2) elementOIDChain.
    recoveredBlock39Block103Block113Value4 := (recoveredBlock39Block103Block113Value1) = (recoveredBlock39Block103Block113Value3).
    recoveredBlock39Block103Block113Value4
].
    recoveredBlock39Block103Value2 := [].
    recoveredBlock39Block103Value3 := (recoveredBlock39Block103Value0) detect: (recoveredBlock39Block103Value1) ifNone: (recoveredBlock39Block103Value2).
    recoveredBlock39Block103Value4 := (recoveredBlock39Block103Value3) isNil.
    recoveredBlock39Block103Value4
].
            recoveredBlock39PC := 136.
        ].
        recoveredBlock39Step = 136 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) select: (recoveredBlock39Stack2).
            recoveredBlock39PC := 138.
        ].
        recoveredBlock39Step = 138 ifTrue: [
            recoveredBlock39Local1 := recoveredBlock39Stack1.
            recoveredBlock39PC := 141.
        ].
        recoveredBlock39Step = 141 ifTrue: [
            recoveredBlock39Stack1 := Set.
            recoveredBlock39PC := 143.
        ].
        recoveredBlock39Step = 143 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) new.
            recoveredBlock39PC := 144.
        ].
        recoveredBlock39Step = 144 ifTrue: [
            recoveredBlock39Local3 := recoveredBlock39Stack1.
            recoveredBlock39PC := 147.
        ].
        recoveredBlock39Step = 147 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 150.
        ].
        recoveredBlock39Step = 150 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) isMultiMappable.
            recoveredBlock39PC := 152.
        ].
        recoveredBlock39Step = 152 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 156] ifFalse: [recoveredBlock39PC := 166].
        ].
        recoveredBlock39Step = 156 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local1.
            recoveredBlock39PC := 159.
        ].
        recoveredBlock39Step = 159 ifTrue: [
            recoveredBlock39Local3 := recoveredBlock39Stack1.
            recoveredBlock39PC := 162.
        ].
        recoveredBlock39Step = 162 ifTrue: [
            recoveredBlock39PC := 238.
        ].
        recoveredBlock39Step = 166 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local1.
            recoveredBlock39PC := 169.
        ].
        recoveredBlock39Step = 169 ifTrue: [
            recoveredBlock39Stack2 := [:recoveredBlock39Block169Arg1 | 
    | recoveredBlock39Block169Value0 recoveredBlock39Block169Value1 recoveredBlock39Block169Value2 recoveredBlock39Block169Value3 recoveredBlock39Block169Value4 recoveredBlock39Block169Value5 recoveredBlock39Block169Value6 recoveredBlock39Block169Value7 recoveredBlock39Block169Value8 |
    recoveredBlock39Block169Value0 := recoveredBlock39Arg1.
    recoveredBlock39Block169Value1 := (recoveredBlock39Block169Value0) item.
    recoveredBlock39Block169Value2 := (recoveredBlock39Block169Value1) sgClass.
    recoveredBlock39Block169Value3 := (recoveredBlock39Block169Value2) class.
    recoveredBlock39Block169Value4 := recoveredBlock39Block169Arg1.
    recoveredBlock39Block169Value5 := (recoveredBlock39Block169Value4) item.
    recoveredBlock39Block169Value6 := (recoveredBlock39Block169Value5) sgClass.
    recoveredBlock39Block169Value7 := (recoveredBlock39Block169Value6) class.
    recoveredBlock39Block169Value8 := (recoveredBlock39Block169Value3) = (recoveredBlock39Block169Value7).
    recoveredBlock39Block169Value8
].
            recoveredBlock39PC := 194.
        ].
        recoveredBlock39Step = 194 ifTrue: [
            recoveredBlock39Stack3 := [].
            recoveredBlock39PC := 196.
        ].
        recoveredBlock39Step = 196 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) detect: (recoveredBlock39Stack2) ifNone: (recoveredBlock39Stack3).
            recoveredBlock39PC := 198.
        ].
        recoveredBlock39Step = 198 ifTrue: [
            recoveredBlock39Local4 := recoveredBlock39Stack1.
            recoveredBlock39PC := 201.
        ].
        recoveredBlock39Step = 201 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local1.
            recoveredBlock39PC := 204.
        ].
        recoveredBlock39Step = 204 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) notEmpty.
            recoveredBlock39PC := 206.
        ].
        recoveredBlock39Step = 206 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 210] ifFalse: [recoveredBlock39PC := 224].
        ].
        recoveredBlock39Step = 210 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local4.
            recoveredBlock39PC := 213.
        ].
        recoveredBlock39Step = 213 ifTrue: [
            (recoveredBlock39Stack1 ~~ nil) ifTrue: [recoveredBlock39PC := 224] ifFalse: [recoveredBlock39PC := 216].
        ].
        recoveredBlock39Step = 216 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local1.
            recoveredBlock39PC := 219.
        ].
        recoveredBlock39Step = 219 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) someElement.
            recoveredBlock39PC := 221.
        ].
        recoveredBlock39Step = 221 ifTrue: [
            recoveredBlock39Local4 := recoveredBlock39Stack1.
            recoveredBlock39PC := 224.
        ].
        recoveredBlock39Step = 224 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local4.
            recoveredBlock39PC := 227.
        ].
        recoveredBlock39Step = 227 ifTrue: [
            (recoveredBlock39Stack1 == nil) ifTrue: [recoveredBlock39PC := 238] ifFalse: [recoveredBlock39PC := 230].
        ].
        recoveredBlock39Step = 230 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local3.
            recoveredBlock39PC := 233.
        ].
        recoveredBlock39Step = 233 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Local4.
            recoveredBlock39PC := 236.
        ].
        recoveredBlock39Step = 236 ifTrue: [
            (recoveredBlock39Stack1) add: (recoveredBlock39Stack2).
            recoveredBlock39PC := 238.
        ].
        recoveredBlock39Step = 238 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Local3.
            recoveredBlock39PC := 241.
        ].
        recoveredBlock39Step = 241 ifTrue: [
            recoveredBlock39Stack2 := [:recoveredBlock39Block241Arg1 | 
    | recoveredBlock39Block241Local1 recoveredBlock39Block241Value0 recoveredBlock39Block241Value1 recoveredBlock39Block241Value2 recoveredBlock39Block241Value3 recoveredBlock39Block241Value4 recoveredBlock39Block241Value5 recoveredBlock39Block241Value6 recoveredBlock39Block241Value7 recoveredBlock39Block241Value8 |
    recoveredBlock39Block241Value0 := recoveredLocal2.
    recoveredBlock39Block241Value1 := recoveredBlock39Arg1.
    recoveredBlock39Block241Value2 := [
    | recoveredBlock39Block241Block254Value0 recoveredBlock39Block241Block254Value1 recoveredBlock39Block241Block254Value2 recoveredBlock39Block241Block254Value3 recoveredBlock39Block241Block254Value4 |
    recoveredBlock39Block241Block254Value0 := recoveredLocal2.
    recoveredBlock39Block241Block254Value1 := recoveredBlock39Arg1.
    recoveredBlock39Block241Block254Value2 := Set.
    recoveredBlock39Block241Block254Value3 := (recoveredBlock39Block241Block254Value2) new.
    recoveredBlock39Block241Block254Value4 := (recoveredBlock39Block241Block254Value0) at: (recoveredBlock39Block241Block254Value1) put: (recoveredBlock39Block241Block254Value3).
    recoveredBlock39Block241Block254Value4
].
    recoveredBlock39Block241Value3 := (recoveredBlock39Block241Value0) at: (recoveredBlock39Block241Value1) ifAbsent: (recoveredBlock39Block241Value2).
    recoveredBlock39Block241Local1 := recoveredBlock39Block241Value3.
    recoveredBlock39Block241Value4 := recoveredBlock39Block241Local1.
    recoveredBlock39Block241Value5 := recoveredBlock39Block241Arg1.
    (recoveredBlock39Block241Value4) add: (recoveredBlock39Block241Value5).
    recoveredBlock39Block241Value6 := recoveredLocal1.
    recoveredBlock39Block241Value7 := recoveredBlock39Block241Arg1.
    recoveredBlock39Block241Value8 := (recoveredBlock39Block241Value6) add: (recoveredBlock39Block241Value7).
    recoveredBlock39Block241Value8
].
            recoveredBlock39PC := 286.
        ].
        recoveredBlock39Step = 286 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) do: (recoveredBlock39Stack2).
            recoveredBlock39PC := 288.
        ].
        recoveredBlock39Step = 288 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205bb5d0; bytecode file offset 0xeb7ed8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
mappingReferencedElements
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) variableExternalMappingsUpdateProperties.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := [:recoveredBlock11Block19Arg1 | 
    | recoveredBlock11Block19Local1 recoveredBlock11Block19Stack0 recoveredBlock11Block19Stack1 recoveredBlock11Block19Stack2 recoveredBlock11Block19Stack3 recoveredBlock11Block19Stack4 recoveredBlock11Block19PC recoveredBlock11Block19Step recoveredBlock11Block19Done recoveredBlock11Block19Result |
    recoveredBlock11Block19Stack0 := self.
    recoveredBlock11Block19PC := 26.
    recoveredBlock11Block19Done := false.
    [recoveredBlock11Block19Done not] whileTrue: [
        recoveredBlock11Block19Step := recoveredBlock11Block19PC.
        recoveredBlock11Block19Step = 26 ifTrue: [
            recoveredBlock11Block19Stack1 := nil.
            recoveredBlock11Block19PC := 27.
        ].
        recoveredBlock11Block19Step = 27 ifTrue: [
            recoveredBlock11Block19Stack2 := recoveredBlock11Block19Arg1.
            recoveredBlock11Block19PC := 30.
        ].
        recoveredBlock11Block19Step = 30 ifTrue: [
            recoveredBlock11Block19Stack2 := (recoveredBlock11Block19Stack2) isUsedForUnusedElements.
            recoveredBlock11Block19PC := 31.
        ].
        recoveredBlock11Block19Step = 31 ifTrue: [
            (recoveredBlock11Block19Stack2) ifTrue: [recoveredBlock11Block19PC := 34] ifFalse: [recoveredBlock11Block19PC := 101].
        ].
        recoveredBlock11Block19Step = 34 ifTrue: [
            recoveredBlock11Block19PC := 35.
        ].
        recoveredBlock11Block19Step = 35 ifTrue: [
            recoveredBlock11Block19Stack1 := self.
            recoveredBlock11Block19PC := 36.
        ].
        recoveredBlock11Block19Step = 36 ifTrue: [
            recoveredBlock11Block19Stack1 := (recoveredBlock11Block19Stack1) variableExternalMappingTargetObjects.
            recoveredBlock11Block19PC := 38.
        ].
        recoveredBlock11Block19Step = 38 ifTrue: [
            recoveredBlock11Block19Stack2 := [:recoveredBlock11Block19Block38Arg1 | 
    | recoveredBlock11Block19Block38Value0 recoveredBlock11Block19Block38Value1 recoveredBlock11Block19Block38Value2 recoveredBlock11Block19Block38Value3 recoveredBlock11Block19Block38Value4 recoveredBlock11Block19Block38Value5 recoveredBlock11Block19Block38Value6 recoveredBlock11Block19Block38Value7 recoveredBlock11Block19Block38Value8 recoveredBlock11Block19Block38Value9 |
    recoveredBlock11Block19Block38Value0 := recoveredBlock11Block19Block38Arg1.
    recoveredBlock11Block19Block38Value1 := (recoveredBlock11Block19Block38Value0) displayName.
    recoveredBlock11Block19Block38Value2 := (recoveredBlock11Block19Block38Value1) asArrayOfSubstringsSeparatedBy: ('.').
    recoveredBlock11Block19Block38Value3 := (recoveredBlock11Block19Block38Value2) first.
    recoveredBlock11Block19Block38Value4 := recoveredBlock11Block19Arg1.
    recoveredBlock11Block19Block38Value5 := (recoveredBlock11Block19Block38Value4) targetObject.
    recoveredBlock11Block19Block38Value6 := (recoveredBlock11Block19Block38Value5) displayName.
    recoveredBlock11Block19Block38Value7 := (recoveredBlock11Block19Block38Value6) asArrayOfSubstringsSeparatedBy: ('.').
    recoveredBlock11Block19Block38Value8 := (recoveredBlock11Block19Block38Value7) first.
    recoveredBlock11Block19Block38Value9 := (recoveredBlock11Block19Block38Value3) = (recoveredBlock11Block19Block38Value8).
    recoveredBlock11Block19Block38Value9
].
            recoveredBlock11Block19PC := 68.
        ].
        recoveredBlock11Block19Step = 68 ifTrue: [
            recoveredBlock11Block19Stack3 := [].
            recoveredBlock11Block19PC := 70.
        ].
        recoveredBlock11Block19Step = 70 ifTrue: [
            recoveredBlock11Block19Stack1 := (recoveredBlock11Block19Stack1) detect: (recoveredBlock11Block19Stack2) ifNone: (recoveredBlock11Block19Stack3).
            recoveredBlock11Block19PC := 72.
        ].
        recoveredBlock11Block19Step = 72 ifTrue: [
            recoveredBlock11Block19Local1 := recoveredBlock11Block19Stack1.
            recoveredBlock11Block19PC := 75.
        ].
        recoveredBlock11Block19Step = 75 ifTrue: [
            recoveredBlock11Block19Stack1 := nil.
            recoveredBlock11Block19PC := 76.
        ].
        recoveredBlock11Block19Step = 76 ifTrue: [
            recoveredBlock11Block19Stack2 := recoveredBlock11Block19Local1.
            recoveredBlock11Block19PC := 79.
        ].
        recoveredBlock11Block19Step = 79 ifTrue: [
            (recoveredBlock11Block19Stack2 == nil) ifTrue: [recoveredBlock11Block19PC := 97] ifFalse: [recoveredBlock11Block19PC := 82].
        ].
        recoveredBlock11Block19Step = 82 ifTrue: [
            recoveredBlock11Block19PC := 83.
        ].
        recoveredBlock11Block19Step = 83 ifTrue: [
            recoveredBlock11Block19Stack1 := recoveredLocal1.
            recoveredBlock11Block19PC := 86.
        ].
        recoveredBlock11Block19Step = 86 ifTrue: [
            recoveredBlock11Block19Stack2 := recoveredBlock11Block19Local1.
            recoveredBlock11Block19PC := 89.
        ].
        recoveredBlock11Block19Step = 89 ifTrue: [
            recoveredBlock11Block19Stack2 := (recoveredBlock11Block19Stack2) modelOIDChain.
            recoveredBlock11Block19PC := 91.
        ].
        recoveredBlock11Block19Step = 91 ifTrue: [
            recoveredBlock11Block19Stack2 := (recoveredBlock11Block19Stack2) parts.
            recoveredBlock11Block19PC := 93.
        ].
        recoveredBlock11Block19Step = 93 ifTrue: [
            recoveredBlock11Block19Stack2 := (recoveredBlock11Block19Stack2) first.
            recoveredBlock11Block19PC := 95.
        ].
        recoveredBlock11Block19Step = 95 ifTrue: [
            recoveredBlock11Block19Stack1 := (recoveredBlock11Block19Stack1) add: (recoveredBlock11Block19Stack2).
            recoveredBlock11Block19PC := 97.
        ].
        recoveredBlock11Block19Step = 97 ifTrue: [
            recoveredBlock11Block19Stack2 := nil.
            recoveredBlock11Block19PC := 98.
        ].
        recoveredBlock11Block19Step = 98 ifTrue: [
            recoveredBlock11Block19Local1 := recoveredBlock11Block19Stack2.
            recoveredBlock11Block19PC := 101.
        ].
        recoveredBlock11Block19Step = 101 ifTrue: [
            recoveredBlock11Block19Result := recoveredBlock11Block19Stack1.
            recoveredBlock11Block19Done := true.
        ].
    ].
    recoveredBlock11Block19Result
].
    recoveredBlock11Value2 := (recoveredBlock11Value0) do: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) variableInternalMappingsUpdateProperties.
    recoveredValue5 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 |
    recoveredBlock110Value0 := recoveredBlock110Arg1.
    recoveredBlock110Value1 := [:recoveredBlock110Block117Arg1 | 
    | recoveredBlock110Block117Local1 recoveredBlock110Block117Stack0 recoveredBlock110Block117Stack1 recoveredBlock110Block117Stack2 recoveredBlock110Block117Stack3 recoveredBlock110Block117Stack4 recoveredBlock110Block117PC recoveredBlock110Block117Step recoveredBlock110Block117Done recoveredBlock110Block117Result |
    recoveredBlock110Block117Stack0 := self.
    recoveredBlock110Block117PC := 124.
    recoveredBlock110Block117Done := false.
    [recoveredBlock110Block117Done not] whileTrue: [
        recoveredBlock110Block117Step := recoveredBlock110Block117PC.
        recoveredBlock110Block117Step = 124 ifTrue: [
            recoveredBlock110Block117Stack1 := nil.
            recoveredBlock110Block117PC := 125.
        ].
        recoveredBlock110Block117Step = 125 ifTrue: [
            recoveredBlock110Block117Stack2 := recoveredBlock110Block117Arg1.
            recoveredBlock110Block117PC := 128.
        ].
        recoveredBlock110Block117Step = 128 ifTrue: [
            recoveredBlock110Block117Stack2 := (recoveredBlock110Block117Stack2) isUsedForUnusedElements.
            recoveredBlock110Block117PC := 129.
        ].
        recoveredBlock110Block117Step = 129 ifTrue: [
            (recoveredBlock110Block117Stack2) ifTrue: [recoveredBlock110Block117PC := 132] ifFalse: [recoveredBlock110Block117PC := 212].
        ].
        recoveredBlock110Block117Step = 132 ifTrue: [
            recoveredBlock110Block117PC := 133.
        ].
        recoveredBlock110Block117Step = 133 ifTrue: [
            recoveredBlock110Block117Stack1 := self.
            recoveredBlock110Block117PC := 134.
        ].
        recoveredBlock110Block117Step = 134 ifTrue: [
            recoveredBlock110Block117Stack1 := (recoveredBlock110Block117Stack1) variableInternalMappingTargetObjects.
            recoveredBlock110Block117PC := 136.
        ].
        recoveredBlock110Block117Step = 136 ifTrue: [
            recoveredBlock110Block117Stack2 := [:recoveredBlock110Block117Block136Arg1 | 
    | recoveredBlock110Block117Block136Value0 recoveredBlock110Block117Block136Value1 recoveredBlock110Block117Block136Value2 recoveredBlock110Block117Block136Value3 recoveredBlock110Block117Block136Value4 recoveredBlock110Block117Block136Value5 |
    recoveredBlock110Block117Block136Value0 := recoveredBlock110Block117Block136Arg1.
    recoveredBlock110Block117Block136Value1 := (recoveredBlock110Block117Block136Value0) displayName.
    recoveredBlock110Block117Block136Value2 := recoveredBlock110Block117Arg1.
    recoveredBlock110Block117Block136Value3 := (recoveredBlock110Block117Block136Value2) targetObject.
    recoveredBlock110Block117Block136Value4 := (recoveredBlock110Block117Block136Value3) displayName.
    recoveredBlock110Block117Block136Value5 := (recoveredBlock110Block117Block136Value1) = (recoveredBlock110Block117Block136Value4).
    recoveredBlock110Block117Block136Value5
].
            recoveredBlock110Block117PC := 154.
        ].
        recoveredBlock110Block117Step = 154 ifTrue: [
            recoveredBlock110Block117Stack3 := [].
            recoveredBlock110Block117PC := 156.
        ].
        recoveredBlock110Block117Step = 156 ifTrue: [
            recoveredBlock110Block117Stack1 := (recoveredBlock110Block117Stack1) detect: (recoveredBlock110Block117Stack2) ifNone: (recoveredBlock110Block117Stack3).
            recoveredBlock110Block117PC := 158.
        ].
        recoveredBlock110Block117Step = 158 ifTrue: [
            recoveredBlock110Block117Local1 := recoveredBlock110Block117Stack1.
            recoveredBlock110Block117PC := 161.
        ].
        recoveredBlock110Block117Step = 161 ifTrue: [
            recoveredBlock110Block117Stack1 := nil.
            recoveredBlock110Block117PC := 162.
        ].
        recoveredBlock110Block117Step = 162 ifTrue: [
            recoveredBlock110Block117Stack2 := recoveredBlock110Block117Local1.
            recoveredBlock110Block117PC := 165.
        ].
        recoveredBlock110Block117Step = 165 ifTrue: [
            (recoveredBlock110Block117Stack2 == nil) ifTrue: [recoveredBlock110Block117PC := 208] ifFalse: [recoveredBlock110Block117PC := 168].
        ].
        recoveredBlock110Block117Step = 168 ifTrue: [
            recoveredBlock110Block117PC := 169.
        ].
        recoveredBlock110Block117Step = 169 ifTrue: [
            recoveredBlock110Block117Stack1 := recoveredBlock110Block117Local1.
            recoveredBlock110Block117PC := 172.
        ].
        recoveredBlock110Block117Step = 172 ifTrue: [
            recoveredBlock110Block117Stack1 := (recoveredBlock110Block117Stack1) modelOIDChain.
            recoveredBlock110Block117PC := 174.
        ].
        recoveredBlock110Block117Step = 174 ifTrue: [
            recoveredBlock110Block117Stack1 := (recoveredBlock110Block117Stack1) isHierarchicalByteArray.
            recoveredBlock110Block117PC := 176.
        ].
        recoveredBlock110Block117Step = 176 ifTrue: [
            (recoveredBlock110Block117Stack1) ifTrue: [recoveredBlock110Block117PC := 180] ifFalse: [recoveredBlock110Block117PC := 198].
        ].
        recoveredBlock110Block117Step = 180 ifTrue: [
            recoveredBlock110Block117Stack1 := recoveredLocal1.
            recoveredBlock110Block117PC := 183.
        ].
        recoveredBlock110Block117Step = 183 ifTrue: [
            recoveredBlock110Block117Stack2 := recoveredBlock110Block117Local1.
            recoveredBlock110Block117PC := 186.
        ].
        recoveredBlock110Block117Step = 186 ifTrue: [
            recoveredBlock110Block117Stack2 := (recoveredBlock110Block117Stack2) modelOIDChain.
            recoveredBlock110Block117PC := 188.
        ].
        recoveredBlock110Block117Step = 188 ifTrue: [
            recoveredBlock110Block117Stack2 := (recoveredBlock110Block117Stack2) parts.
            recoveredBlock110Block117PC := 190.
        ].
        recoveredBlock110Block117Step = 190 ifTrue: [
            recoveredBlock110Block117Stack2 := (recoveredBlock110Block117Stack2) first.
            recoveredBlock110Block117PC := 192.
        ].
        recoveredBlock110Block117Step = 192 ifTrue: [
            recoveredBlock110Block117Stack1 := (recoveredBlock110Block117Stack1) add: (recoveredBlock110Block117Stack2).
            recoveredBlock110Block117PC := 194.
        ].
        recoveredBlock110Block117Step = 194 ifTrue: [
            recoveredBlock110Block117PC := 208.
        ].
        recoveredBlock110Block117Step = 198 ifTrue: [
            recoveredBlock110Block117Stack1 := recoveredLocal1.
            recoveredBlock110Block117PC := 201.
        ].
        recoveredBlock110Block117Step = 201 ifTrue: [
            recoveredBlock110Block117Stack2 := recoveredBlock110Block117Local1.
            recoveredBlock110Block117PC := 204.
        ].
        recoveredBlock110Block117Step = 204 ifTrue: [
            recoveredBlock110Block117Stack2 := (recoveredBlock110Block117Stack2) modelOIDChain.
            recoveredBlock110Block117PC := 206.
        ].
        recoveredBlock110Block117Step = 206 ifTrue: [
            recoveredBlock110Block117Stack1 := (recoveredBlock110Block117Stack1) add: (recoveredBlock110Block117Stack2).
            recoveredBlock110Block117PC := 208.
        ].
        recoveredBlock110Block117Step = 208 ifTrue: [
            recoveredBlock110Block117Stack2 := nil.
            recoveredBlock110Block117PC := 209.
        ].
        recoveredBlock110Block117Step = 209 ifTrue: [
            recoveredBlock110Block117Local1 := recoveredBlock110Block117Stack2.
            recoveredBlock110Block117PC := 212.
        ].
        recoveredBlock110Block117Step = 212 ifTrue: [
            recoveredBlock110Block117Result := recoveredBlock110Block117Stack1.
            recoveredBlock110Block117Done := true.
        ].
    ].
    recoveredBlock110Block117Result
].
    recoveredBlock110Value2 := (recoveredBlock110Value0) do: (recoveredBlock110Value1).
    recoveredBlock110Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) parameterMappingsUpdateProperties.
    recoveredValue7 := [:recoveredBlock221Arg1 | 
    | recoveredBlock221Value0 recoveredBlock221Value1 recoveredBlock221Value2 |
    recoveredBlock221Value0 := recoveredBlock221Arg1.
    recoveredBlock221Value1 := [:recoveredBlock221Block229Arg1 | 
    | recoveredBlock221Block229Local1 recoveredBlock221Block229Stack0 recoveredBlock221Block229Stack1 recoveredBlock221Block229Stack2 recoveredBlock221Block229Stack3 recoveredBlock221Block229Stack4 recoveredBlock221Block229PC recoveredBlock221Block229Step recoveredBlock221Block229Done recoveredBlock221Block229Result |
    recoveredBlock221Block229Stack0 := self.
    recoveredBlock221Block229PC := 236.
    recoveredBlock221Block229Done := false.
    [recoveredBlock221Block229Done not] whileTrue: [
        recoveredBlock221Block229Step := recoveredBlock221Block229PC.
        recoveredBlock221Block229Step = 236 ifTrue: [
            recoveredBlock221Block229Stack1 := nil.
            recoveredBlock221Block229PC := 237.
        ].
        recoveredBlock221Block229Step = 237 ifTrue: [
            recoveredBlock221Block229Stack2 := recoveredBlock221Block229Arg1.
            recoveredBlock221Block229PC := 240.
        ].
        recoveredBlock221Block229Step = 240 ifTrue: [
            recoveredBlock221Block229Stack2 := (recoveredBlock221Block229Stack2) isUsedForUnusedElements.
            recoveredBlock221Block229PC := 241.
        ].
        recoveredBlock221Block229Step = 241 ifTrue: [
            (recoveredBlock221Block229Stack2) ifTrue: [recoveredBlock221Block229PC := 244] ifFalse: [recoveredBlock221Block229PC := 311].
        ].
        recoveredBlock221Block229Step = 244 ifTrue: [
            recoveredBlock221Block229PC := 245.
        ].
        recoveredBlock221Block229Step = 245 ifTrue: [
            recoveredBlock221Block229Stack1 := self.
            recoveredBlock221Block229PC := 246.
        ].
        recoveredBlock221Block229Step = 246 ifTrue: [
            recoveredBlock221Block229Stack1 := (recoveredBlock221Block229Stack1) parameterMappingTargetObjects.
            recoveredBlock221Block229PC := 248.
        ].
        recoveredBlock221Block229Step = 248 ifTrue: [
            recoveredBlock221Block229Stack2 := [:recoveredBlock221Block229Block248Arg1 | 
    | recoveredBlock221Block229Block248Value0 recoveredBlock221Block229Block248Value1 recoveredBlock221Block229Block248Value2 recoveredBlock221Block229Block248Value3 recoveredBlock221Block229Block248Value4 recoveredBlock221Block229Block248Value5 recoveredBlock221Block229Block248Value6 recoveredBlock221Block229Block248Value7 recoveredBlock221Block229Block248Value8 recoveredBlock221Block229Block248Value9 |
    recoveredBlock221Block229Block248Value0 := recoveredBlock221Block229Block248Arg1.
    recoveredBlock221Block229Block248Value1 := (recoveredBlock221Block229Block248Value0) displayName.
    recoveredBlock221Block229Block248Value2 := (recoveredBlock221Block229Block248Value1) asArrayOfSubstringsSeparatedBy: ('.').
    recoveredBlock221Block229Block248Value3 := (recoveredBlock221Block229Block248Value2) first.
    recoveredBlock221Block229Block248Value4 := recoveredBlock221Block229Arg1.
    recoveredBlock221Block229Block248Value5 := (recoveredBlock221Block229Block248Value4) targetObject.
    recoveredBlock221Block229Block248Value6 := (recoveredBlock221Block229Block248Value5) displayName.
    recoveredBlock221Block229Block248Value7 := (recoveredBlock221Block229Block248Value6) asArrayOfSubstringsSeparatedBy: ('.').
    recoveredBlock221Block229Block248Value8 := (recoveredBlock221Block229Block248Value7) first.
    recoveredBlock221Block229Block248Value9 := (recoveredBlock221Block229Block248Value3) = (recoveredBlock221Block229Block248Value8).
    recoveredBlock221Block229Block248Value9
].
            recoveredBlock221Block229PC := 278.
        ].
        recoveredBlock221Block229Step = 278 ifTrue: [
            recoveredBlock221Block229Stack3 := [].
            recoveredBlock221Block229PC := 280.
        ].
        recoveredBlock221Block229Step = 280 ifTrue: [
            recoveredBlock221Block229Stack1 := (recoveredBlock221Block229Stack1) detect: (recoveredBlock221Block229Stack2) ifNone: (recoveredBlock221Block229Stack3).
            recoveredBlock221Block229PC := 282.
        ].
        recoveredBlock221Block229Step = 282 ifTrue: [
            recoveredBlock221Block229Local1 := recoveredBlock221Block229Stack1.
            recoveredBlock221Block229PC := 285.
        ].
        recoveredBlock221Block229Step = 285 ifTrue: [
            recoveredBlock221Block229Stack1 := nil.
            recoveredBlock221Block229PC := 286.
        ].
        recoveredBlock221Block229Step = 286 ifTrue: [
            recoveredBlock221Block229Stack2 := recoveredBlock221Block229Local1.
            recoveredBlock221Block229PC := 289.
        ].
        recoveredBlock221Block229Step = 289 ifTrue: [
            (recoveredBlock221Block229Stack2 == nil) ifTrue: [recoveredBlock221Block229PC := 307] ifFalse: [recoveredBlock221Block229PC := 292].
        ].
        recoveredBlock221Block229Step = 292 ifTrue: [
            recoveredBlock221Block229PC := 293.
        ].
        recoveredBlock221Block229Step = 293 ifTrue: [
            recoveredBlock221Block229Stack1 := recoveredLocal1.
            recoveredBlock221Block229PC := 296.
        ].
        recoveredBlock221Block229Step = 296 ifTrue: [
            recoveredBlock221Block229Stack2 := recoveredBlock221Block229Local1.
            recoveredBlock221Block229PC := 299.
        ].
        recoveredBlock221Block229Step = 299 ifTrue: [
            recoveredBlock221Block229Stack2 := (recoveredBlock221Block229Stack2) modelOIDChain.
            recoveredBlock221Block229PC := 301.
        ].
        recoveredBlock221Block229Step = 301 ifTrue: [
            recoveredBlock221Block229Stack2 := (recoveredBlock221Block229Stack2) parts.
            recoveredBlock221Block229PC := 303.
        ].
        recoveredBlock221Block229Step = 303 ifTrue: [
            recoveredBlock221Block229Stack2 := (recoveredBlock221Block229Stack2) first.
            recoveredBlock221Block229PC := 305.
        ].
        recoveredBlock221Block229Step = 305 ifTrue: [
            recoveredBlock221Block229Stack1 := (recoveredBlock221Block229Stack1) add: (recoveredBlock221Block229Stack2).
            recoveredBlock221Block229PC := 307.
        ].
        recoveredBlock221Block229Step = 307 ifTrue: [
            recoveredBlock221Block229Stack2 := nil.
            recoveredBlock221Block229PC := 308.
        ].
        recoveredBlock221Block229Step = 308 ifTrue: [
            recoveredBlock221Block229Local1 := recoveredBlock221Block229Stack2.
            recoveredBlock221Block229PC := 311.
        ].
        recoveredBlock221Block229Step = 311 ifTrue: [
            recoveredBlock221Block229Result := recoveredBlock221Block229Stack1.
            recoveredBlock221Block229Done := true.
        ].
    ].
    recoveredBlock221Block229Result
].
    recoveredBlock221Value2 := (recoveredBlock221Value0) do: (recoveredBlock221Value1).
    recoveredBlock221Value2
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x205c4ec4; bytecode file offset 0xec1810"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
minToolVersion: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) destVersion.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super minToolVersion: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 'V6.0.0'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'AUTOSAR Software Components only supported with ASCET V6.0.0 or higher. (%1)'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'V6.0.0'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'V6.2.0'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableInternalMappingsEmpty.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableExternalMappingsEmpty.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'Variable Mapping is only supported with ASCET V6.2.0 or higher. (%1)'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 'V6.2.0'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := 'V6.2.0'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := [:block28118450Arg1 | 
    | block28118450Value0 block28118450Value1 |
    block28118450Value0 := block28118450Arg1.
    block28118450Value1 := (block28118450Value0) isInterrunnable.
    block28118450Value1
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := 'V6.2.0'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 'AUTOSAR Interrunnable Variables only supported with ASCET V6.2.0 or higher. (%1)'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 'V6.2.0'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := 'V6.4.0'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := [:block28118474Arg1 | 
    | block28118474Stack0 block28118474Stack1 block28118474Stack2 block28118474Stack3 block28118474Stack4 block28118474PC block28118474Step block28118474Done block28118474Result |
    block28118474Stack0 := self.
    block28118474PC := 4.
    block28118474Done := false.
    [block28118474Done not] whileTrue: [
        block28118474Step := block28118474PC.
        block28118474Step = 4 ifTrue: [
            block28118474Stack1 := false.
            block28118474PC := 5.
        ].
        block28118474Step = 5 ifTrue: [
            block28118474Stack2 := block28118474Arg1.
            block28118474PC := 6.
        ].
        block28118474Step = 6 ifTrue: [
            block28118474Stack2 := (block28118474Stack2) isInterrunnable.
            block28118474PC := 8.
        ].
        block28118474Step = 8 ifTrue: [
            (block28118474Stack2) ifTrue: [block28118474PC := 12] ifFalse: [block28118474PC := 36].
        ].
        block28118474Step = 12 ifTrue: [
            block28118474PC := 13.
        ].
        block28118474Step = 13 ifTrue: [
            block28118474Stack1 := block28118474Arg1.
            block28118474PC := 14.
        ].
        block28118474Step = 14 ifTrue: [
            block28118474Stack1 := (block28118474Stack1) sgClass.
            block28118474PC := 16.
        ].
        block28118474Step = 16 ifTrue: [
            block28118474Stack2 := [:block28118498Arg1 | 
    | block28118498Value0 block28118498Value1 |
    block28118498Value0 := block28118498Arg1.
    block28118498Value1 := (block28118498Value0) isSGVector.
    block28118498Value1
].
            block28118474PC := 18.
        ].
        block28118474Step = 18 ifTrue: [
            block28118474PC := 26.
        ].
        block28118474Step = 26 ifTrue: [
            block28118474Stack3 := [
    false
].
            block28118474PC := 28.
        ].
        block28118474Step = 28 ifTrue: [
            block28118474PC := 34.
        ].
        block28118474Step = 34 ifTrue: [
            block28118474Stack1 := (block28118474Stack1) ifNotNil: (block28118474Stack2) ifNil: (block28118474Stack3).
            block28118474PC := 36.
        ].
        block28118474Step = 36 ifTrue: [
            block28118474Result := block28118474Stack1.
            block28118474Done := true.
        ].
    ].
    block28118474Result
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := 'V6.4.0'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := 'AUTOSAR Interrunnable Variables of Type Array only supported with ASCET V6.4.0 or higher. (%1)'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := 'V6.4.0'.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := [:recoveredBlock275Arg1 | 
    | recoveredBlock275Stack0 recoveredBlock275Stack1 recoveredBlock275Stack2 recoveredBlock275Stack3 recoveredBlock275PC recoveredBlock275Step recoveredBlock275Done recoveredBlock275Result |
    recoveredBlock275Stack0 := self.
    recoveredBlock275PC := 282.
    recoveredBlock275Done := false.
    [recoveredBlock275Done not] whileTrue: [
        recoveredBlock275Step := recoveredBlock275PC.
        recoveredBlock275Step = 282 ifTrue: [
            recoveredBlock275Stack1 := nil.
            recoveredBlock275PC := 283.
        ].
        recoveredBlock275Step = 283 ifTrue: [
            recoveredBlock275Stack2 := recoveredBlock275Arg1.
            recoveredBlock275PC := 284.
        ].
        recoveredBlock275Step = 284 ifTrue: [
            recoveredBlock275Stack2 := (recoveredBlock275Stack2) isGraphicSpecification.
            recoveredBlock275PC := 286.
        ].
        recoveredBlock275Step = 286 ifTrue: [
            (recoveredBlock275Stack2) ifTrue: [recoveredBlock275PC := 290] ifFalse: [recoveredBlock275PC := 327].
        ].
        recoveredBlock275Step = 290 ifTrue: [
            recoveredBlock275PC := 291.
        ].
        recoveredBlock275Step = 291 ifTrue: [
            recoveredBlock275Stack1 := recoveredBlock275Arg1.
            recoveredBlock275PC := 292.
        ].
        recoveredBlock275Step = 292 ifTrue: [
            recoveredBlock275Stack1 := (recoveredBlock275Stack1) sourceKey.
            recoveredBlock275PC := 294.
        ].
        recoveredBlock275Step = 294 ifTrue: [
            recoveredBlock275Stack2 := [:block281184e0Arg1 | 
    nil
].
            recoveredBlock275PC := 296.
        ].
        recoveredBlock275Step = 296 ifTrue: [
            recoveredBlock275PC := 302.
        ].
        recoveredBlock275Step = 302 ifTrue: [
            recoveredBlock275Stack1 := (recoveredBlock275Stack1) getObjectIfUndefined: (recoveredBlock275Stack2).
            recoveredBlock275PC := 304.
        ].
        recoveredBlock275Step = 304 ifTrue: [
            recoveredBlock275Stack2 := [:recoveredBlock275Block304Arg1 | 
    | recoveredBlock275Block304Value0 recoveredBlock275Block304Value1 recoveredBlock275Block304Value2 recoveredBlock275Block304Value3 recoveredBlock275Block304Value4 recoveredBlock275Block304Value5 |
    recoveredBlock275Block304Value0 := recoveredLocal2.
    recoveredBlock275Block304Value1 := recoveredBlock275Block304Arg1.
    recoveredBlock275Block304Value2 := recoveredArg1.
    recoveredBlock275Block304Value3 := (recoveredBlock275Block304Value1) minToolVersion: (recoveredBlock275Block304Value2).
    recoveredBlock275Block304Value4 := (recoveredBlock275Block304Value0) max: (recoveredBlock275Block304Value3).
    recoveredBlock275Block304Value5 := recoveredBlock275Block304Value4.
    recoveredLocal2 := recoveredBlock275Block304Value5.
    recoveredBlock275Block304Value4
].
            recoveredBlock275PC := 325.
        ].
        recoveredBlock275Step = 325 ifTrue: [
            recoveredBlock275Stack1 := (recoveredBlock275Stack1) ifNotNil: (recoveredBlock275Stack2).
            recoveredBlock275PC := 327.
        ].
        recoveredBlock275Step = 327 ifTrue: [
            recoveredBlock275Result := recoveredBlock275Stack1.
            recoveredBlock275Done := true.
        ].
    ].
    recoveredBlock275Result
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cf85c; bytecode file offset 0xecc14c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
hasMappedRecordElements
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) variableInternalMappingTargetObjects.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) variableInternalMappings.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := [:recoveredBlock10Block17Arg1 | 
    | recoveredBlock10Block17Stack0 recoveredBlock10Block17Stack1 recoveredBlock10Block17Stack2 recoveredBlock10Block17Stack3 recoveredBlock10Block17Stack4 recoveredBlock10Block17PC recoveredBlock10Block17Step recoveredBlock10Block17Done recoveredBlock10Block17Result |
    recoveredBlock10Block17Stack0 := self.
    recoveredBlock10Block17PC := 24.
    recoveredBlock10Block17Done := false.
    [recoveredBlock10Block17Done not] whileTrue: [
        recoveredBlock10Block17Step := recoveredBlock10Block17PC.
        recoveredBlock10Block17Step = 24 ifTrue: [
            recoveredBlock10Block17Stack1 := nil.
            recoveredBlock10Block17PC := 25.
        ].
        recoveredBlock10Block17Step = 25 ifTrue: [
            recoveredBlock10Block17Stack2 := recoveredBlock10Block17Arg1.
            recoveredBlock10Block17PC := 28.
        ].
        recoveredBlock10Block17Step = 28 ifTrue: [
            recoveredBlock10Block17Stack2 := (recoveredBlock10Block17Stack2) targetObject.
            recoveredBlock10Block17PC := 29.
        ].
        recoveredBlock10Block17Step = 29 ifTrue: [
            (recoveredBlock10Block17Stack2 == nil) ifTrue: [recoveredBlock10Block17PC := 111] ifFalse: [recoveredBlock10Block17PC := 32].
        ].
        recoveredBlock10Block17Step = 32 ifTrue: [
            recoveredBlock10Block17PC := 33.
        ].
        recoveredBlock10Block17Step = 33 ifTrue: [
            recoveredBlock10Block17Stack1 := recoveredBlock10Block17Arg1.
            recoveredBlock10Block17PC := 36.
        ].
        recoveredBlock10Block17Step = 36 ifTrue: [
            recoveredBlock10Block17Stack1 := (recoveredBlock10Block17Stack1) targetObject.
            recoveredBlock10Block17PC := 37.
        ].
        recoveredBlock10Block17Step = 37 ifTrue: [
            recoveredBlock10Block17Stack1 := (recoveredBlock10Block17Stack1) item.
            recoveredBlock10Block17PC := 38.
        ].
        recoveredBlock10Block17Step = 38 ifTrue: [
            recoveredLocal2 := recoveredBlock10Block17Stack1.
            recoveredBlock10Block17PC := 41.
        ].
        recoveredBlock10Block17Step = 41 ifTrue: [
            recoveredBlock10Block17Stack1 := recoveredLocal2.
            recoveredBlock10Block17PC := 44.
        ].
        recoveredBlock10Block17Step = 44 ifTrue: [
            (recoveredBlock10Block17Stack1 ~~ nil) ifTrue: [recoveredBlock10Block17PC := 89] ifFalse: [recoveredBlock10Block17PC := 48].
        ].
        recoveredBlock10Block17Step = 48 ifTrue: [
            recoveredBlock10Block17Stack1 := recoveredLocal3.
            recoveredBlock10Block17PC := 51.
        ].
        recoveredBlock10Block17Step = 51 ifTrue: [
            recoveredBlock10Block17Stack2 := [:recoveredBlock10Block17Block51Arg1 | 
    | recoveredBlock10Block17Block51Value0 recoveredBlock10Block17Block51Value1 recoveredBlock10Block17Block51Value2 recoveredBlock10Block17Block51Value3 recoveredBlock10Block17Block51Value4 recoveredBlock10Block17Block51Value5 |
    recoveredBlock10Block17Block51Value0 := recoveredBlock10Block17Block51Arg1.
    recoveredBlock10Block17Block51Value1 := (recoveredBlock10Block17Block51Value0) displayName.
    recoveredBlock10Block17Block51Value2 := recoveredBlock10Block17Arg1.
    recoveredBlock10Block17Block51Value3 := (recoveredBlock10Block17Block51Value2) targetObject.
    recoveredBlock10Block17Block51Value4 := (recoveredBlock10Block17Block51Value3) displayName.
    recoveredBlock10Block17Block51Value5 := (recoveredBlock10Block17Block51Value1) = (recoveredBlock10Block17Block51Value4).
    recoveredBlock10Block17Block51Value5
].
            recoveredBlock10Block17PC := 69.
        ].
        recoveredBlock10Block17Step = 69 ifTrue: [
            recoveredBlock10Block17Stack3 := [].
            recoveredBlock10Block17PC := 71.
        ].
        recoveredBlock10Block17Step = 71 ifTrue: [
            recoveredBlock10Block17Stack1 := (recoveredBlock10Block17Stack1) detect: (recoveredBlock10Block17Stack2) ifNone: (recoveredBlock10Block17Stack3).
            recoveredBlock10Block17PC := 73.
        ].
        recoveredBlock10Block17Step = 73 ifTrue: [
            recoveredLocal1 := recoveredBlock10Block17Stack1.
            recoveredBlock10Block17PC := 76.
        ].
        recoveredBlock10Block17Step = 76 ifTrue: [
            recoveredBlock10Block17Stack1 := recoveredLocal1.
            recoveredBlock10Block17PC := 79.
        ].
        recoveredBlock10Block17Step = 79 ifTrue: [
            (recoveredBlock10Block17Stack1 == nil) ifTrue: [recoveredBlock10Block17PC := 89] ifFalse: [recoveredBlock10Block17PC := 82].
        ].
        recoveredBlock10Block17Step = 82 ifTrue: [
            recoveredBlock10Block17Stack1 := recoveredLocal1.
            recoveredBlock10Block17PC := 85.
        ].
        recoveredBlock10Block17Step = 85 ifTrue: [
            recoveredBlock10Block17Stack1 := (recoveredBlock10Block17Stack1) item.
            recoveredBlock10Block17PC := 86.
        ].
        recoveredBlock10Block17Step = 86 ifTrue: [
            recoveredLocal2 := recoveredBlock10Block17Stack1.
            recoveredBlock10Block17PC := 89.
        ].
        recoveredBlock10Block17Step = 89 ifTrue: [
            recoveredBlock10Block17Stack1 := nil.
            recoveredBlock10Block17PC := 90.
        ].
        recoveredBlock10Block17Step = 90 ifTrue: [
            recoveredBlock10Block17Stack2 := recoveredLocal2.
            recoveredBlock10Block17PC := 93.
        ].
        recoveredBlock10Block17Step = 93 ifTrue: [
            (recoveredBlock10Block17Stack2 == nil) ifTrue: [recoveredBlock10Block17PC := 111] ifFalse: [recoveredBlock10Block17PC := 96].
        ].
        recoveredBlock10Block17Step = 96 ifTrue: [
            recoveredBlock10Block17Stack2 := recoveredLocal2.
            recoveredBlock10Block17PC := 99.
        ].
        recoveredBlock10Block17Step = 99 ifTrue: [
            recoveredBlock10Block17Stack2 := (recoveredBlock10Block17Stack2) owner.
            recoveredBlock10Block17PC := 101.
        ].
        recoveredBlock10Block17Step = 101 ifTrue: [
            recoveredBlock10Block17Stack2 := (recoveredBlock10Block17Stack2) class.
            recoveredBlock10Block17PC := 103.
        ].
        recoveredBlock10Block17Step = 103 ifTrue: [
            recoveredBlock10Block17Stack3 := ASDRecord.
            recoveredBlock10Block17PC := 105.
        ].
        recoveredBlock10Block17Step = 105 ifTrue: [
            (recoveredBlock10Block17Stack2 ~~ recoveredBlock10Block17Stack3) ifTrue: [recoveredBlock10Block17PC := 111] ifFalse: [recoveredBlock10Block17PC := 108].
        ].
        recoveredBlock10Block17Step = 108 ifTrue: [
            recoveredBlock10Block17PC := 109.
        ].
        recoveredBlock10Block17Step = 109 ifTrue: [
            recoveredBlock10Block17Stack1 := true.
            recoveredBlock10Block17PC := 110.
        ].
        recoveredBlock10Block17Step = 110 ifTrue: [
            ^recoveredBlock10Block17Stack1
        ].
        recoveredBlock10Block17Step = 111 ifTrue: [
            recoveredBlock10Block17Result := recoveredBlock10Block17Stack1.
            recoveredBlock10Block17Done := true.
        ].
    ].
    recoveredBlock10Block17Result
].
    recoveredBlock10Value2 := (recoveredBlock10Value0) do: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) variableExternalMappingTargetObjects.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := (self) variableExternalMappings.
    recoveredValue5 := [:recoveredBlock126Arg1 | 
    | recoveredBlock126Value0 recoveredBlock126Value1 recoveredBlock126Value2 |
    recoveredBlock126Value0 := recoveredBlock126Arg1.
    recoveredBlock126Value1 := [:recoveredBlock126Block133Arg1 | 
    | recoveredBlock126Block133Stack0 recoveredBlock126Block133Stack1 recoveredBlock126Block133Stack2 recoveredBlock126Block133Stack3 recoveredBlock126Block133Stack4 recoveredBlock126Block133PC recoveredBlock126Block133Step recoveredBlock126Block133Done recoveredBlock126Block133Result |
    recoveredBlock126Block133Stack0 := self.
    recoveredBlock126Block133PC := 140.
    recoveredBlock126Block133Done := false.
    [recoveredBlock126Block133Done not] whileTrue: [
        recoveredBlock126Block133Step := recoveredBlock126Block133PC.
        recoveredBlock126Block133Step = 140 ifTrue: [
            recoveredBlock126Block133Stack1 := nil.
            recoveredBlock126Block133PC := 141.
        ].
        recoveredBlock126Block133Step = 141 ifTrue: [
            recoveredBlock126Block133Stack2 := recoveredBlock126Block133Arg1.
            recoveredBlock126Block133PC := 144.
        ].
        recoveredBlock126Block133Step = 144 ifTrue: [
            recoveredBlock126Block133Stack2 := (recoveredBlock126Block133Stack2) targetObject.
            recoveredBlock126Block133PC := 145.
        ].
        recoveredBlock126Block133Step = 145 ifTrue: [
            (recoveredBlock126Block133Stack2 == nil) ifTrue: [recoveredBlock126Block133PC := 227] ifFalse: [recoveredBlock126Block133PC := 148].
        ].
        recoveredBlock126Block133Step = 148 ifTrue: [
            recoveredBlock126Block133PC := 149.
        ].
        recoveredBlock126Block133Step = 149 ifTrue: [
            recoveredBlock126Block133Stack1 := recoveredBlock126Block133Arg1.
            recoveredBlock126Block133PC := 152.
        ].
        recoveredBlock126Block133Step = 152 ifTrue: [
            recoveredBlock126Block133Stack1 := (recoveredBlock126Block133Stack1) targetObject.
            recoveredBlock126Block133PC := 153.
        ].
        recoveredBlock126Block133Step = 153 ifTrue: [
            recoveredBlock126Block133Stack1 := (recoveredBlock126Block133Stack1) item.
            recoveredBlock126Block133PC := 154.
        ].
        recoveredBlock126Block133Step = 154 ifTrue: [
            recoveredLocal2 := recoveredBlock126Block133Stack1.
            recoveredBlock126Block133PC := 157.
        ].
        recoveredBlock126Block133Step = 157 ifTrue: [
            recoveredBlock126Block133Stack1 := recoveredLocal2.
            recoveredBlock126Block133PC := 160.
        ].
        recoveredBlock126Block133Step = 160 ifTrue: [
            (recoveredBlock126Block133Stack1 ~~ nil) ifTrue: [recoveredBlock126Block133PC := 205] ifFalse: [recoveredBlock126Block133PC := 164].
        ].
        recoveredBlock126Block133Step = 164 ifTrue: [
            recoveredBlock126Block133Stack1 := recoveredLocal3.
            recoveredBlock126Block133PC := 167.
        ].
        recoveredBlock126Block133Step = 167 ifTrue: [
            recoveredBlock126Block133Stack2 := [:recoveredBlock126Block133Block167Arg1 | 
    | recoveredBlock126Block133Block167Value0 recoveredBlock126Block133Block167Value1 recoveredBlock126Block133Block167Value2 recoveredBlock126Block133Block167Value3 recoveredBlock126Block133Block167Value4 recoveredBlock126Block133Block167Value5 |
    recoveredBlock126Block133Block167Value0 := recoveredBlock126Block133Block167Arg1.
    recoveredBlock126Block133Block167Value1 := (recoveredBlock126Block133Block167Value0) displayName.
    recoveredBlock126Block133Block167Value2 := recoveredBlock126Block133Arg1.
    recoveredBlock126Block133Block167Value3 := (recoveredBlock126Block133Block167Value2) targetObject.
    recoveredBlock126Block133Block167Value4 := (recoveredBlock126Block133Block167Value3) displayName.
    recoveredBlock126Block133Block167Value5 := (recoveredBlock126Block133Block167Value1) = (recoveredBlock126Block133Block167Value4).
    recoveredBlock126Block133Block167Value5
].
            recoveredBlock126Block133PC := 185.
        ].
        recoveredBlock126Block133Step = 185 ifTrue: [
            recoveredBlock126Block133Stack3 := [].
            recoveredBlock126Block133PC := 187.
        ].
        recoveredBlock126Block133Step = 187 ifTrue: [
            recoveredBlock126Block133Stack1 := (recoveredBlock126Block133Stack1) detect: (recoveredBlock126Block133Stack2) ifNone: (recoveredBlock126Block133Stack3).
            recoveredBlock126Block133PC := 189.
        ].
        recoveredBlock126Block133Step = 189 ifTrue: [
            recoveredLocal1 := recoveredBlock126Block133Stack1.
            recoveredBlock126Block133PC := 192.
        ].
        recoveredBlock126Block133Step = 192 ifTrue: [
            recoveredBlock126Block133Stack1 := recoveredLocal1.
            recoveredBlock126Block133PC := 195.
        ].
        recoveredBlock126Block133Step = 195 ifTrue: [
            (recoveredBlock126Block133Stack1 == nil) ifTrue: [recoveredBlock126Block133PC := 205] ifFalse: [recoveredBlock126Block133PC := 198].
        ].
        recoveredBlock126Block133Step = 198 ifTrue: [
            recoveredBlock126Block133Stack1 := recoveredLocal1.
            recoveredBlock126Block133PC := 201.
        ].
        recoveredBlock126Block133Step = 201 ifTrue: [
            recoveredBlock126Block133Stack1 := (recoveredBlock126Block133Stack1) item.
            recoveredBlock126Block133PC := 202.
        ].
        recoveredBlock126Block133Step = 202 ifTrue: [
            recoveredLocal2 := recoveredBlock126Block133Stack1.
            recoveredBlock126Block133PC := 205.
        ].
        recoveredBlock126Block133Step = 205 ifTrue: [
            recoveredBlock126Block133Stack1 := nil.
            recoveredBlock126Block133PC := 206.
        ].
        recoveredBlock126Block133Step = 206 ifTrue: [
            recoveredBlock126Block133Stack2 := recoveredLocal2.
            recoveredBlock126Block133PC := 209.
        ].
        recoveredBlock126Block133Step = 209 ifTrue: [
            (recoveredBlock126Block133Stack2 == nil) ifTrue: [recoveredBlock126Block133PC := 227] ifFalse: [recoveredBlock126Block133PC := 212].
        ].
        recoveredBlock126Block133Step = 212 ifTrue: [
            recoveredBlock126Block133Stack2 := recoveredLocal2.
            recoveredBlock126Block133PC := 215.
        ].
        recoveredBlock126Block133Step = 215 ifTrue: [
            recoveredBlock126Block133Stack2 := (recoveredBlock126Block133Stack2) owner.
            recoveredBlock126Block133PC := 217.
        ].
        recoveredBlock126Block133Step = 217 ifTrue: [
            recoveredBlock126Block133Stack2 := (recoveredBlock126Block133Stack2) class.
            recoveredBlock126Block133PC := 219.
        ].
        recoveredBlock126Block133Step = 219 ifTrue: [
            recoveredBlock126Block133Stack3 := ASDRecord.
            recoveredBlock126Block133PC := 221.
        ].
        recoveredBlock126Block133Step = 221 ifTrue: [
            (recoveredBlock126Block133Stack2 ~~ recoveredBlock126Block133Stack3) ifTrue: [recoveredBlock126Block133PC := 227] ifFalse: [recoveredBlock126Block133PC := 224].
        ].
        recoveredBlock126Block133Step = 224 ifTrue: [
            recoveredBlock126Block133PC := 225.
        ].
        recoveredBlock126Block133Step = 225 ifTrue: [
            recoveredBlock126Block133Stack1 := true.
            recoveredBlock126Block133PC := 226.
        ].
        recoveredBlock126Block133Step = 226 ifTrue: [
            ^recoveredBlock126Block133Stack1
        ].
        recoveredBlock126Block133Step = 227 ifTrue: [
            recoveredBlock126Block133Result := recoveredBlock126Block133Stack1.
            recoveredBlock126Block133Done := true.
        ].
    ].
    recoveredBlock126Block133Result
].
    recoveredBlock126Value2 := (recoveredBlock126Value0) do: (recoveredBlock126Value1).
    recoveredBlock126Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) parameterMappingTargetObjects.
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := (self) parameterMappings.
    recoveredValue8 := [:recoveredBlock242Arg1 | 
    | recoveredBlock242Value0 recoveredBlock242Value1 recoveredBlock242Value2 |
    recoveredBlock242Value0 := recoveredBlock242Arg1.
    recoveredBlock242Value1 := [:recoveredBlock242Block249Arg1 | 
    | recoveredBlock242Block249Stack0 recoveredBlock242Block249Stack1 recoveredBlock242Block249Stack2 recoveredBlock242Block249Stack3 recoveredBlock242Block249Stack4 recoveredBlock242Block249PC recoveredBlock242Block249Step recoveredBlock242Block249Done recoveredBlock242Block249Result |
    recoveredBlock242Block249Stack0 := self.
    recoveredBlock242Block249PC := 256.
    recoveredBlock242Block249Done := false.
    [recoveredBlock242Block249Done not] whileTrue: [
        recoveredBlock242Block249Step := recoveredBlock242Block249PC.
        recoveredBlock242Block249Step = 256 ifTrue: [
            recoveredBlock242Block249Stack1 := nil.
            recoveredBlock242Block249PC := 257.
        ].
        recoveredBlock242Block249Step = 257 ifTrue: [
            recoveredBlock242Block249Stack2 := recoveredBlock242Block249Arg1.
            recoveredBlock242Block249PC := 260.
        ].
        recoveredBlock242Block249Step = 260 ifTrue: [
            recoveredBlock242Block249Stack2 := (recoveredBlock242Block249Stack2) targetObject.
            recoveredBlock242Block249PC := 261.
        ].
        recoveredBlock242Block249Step = 261 ifTrue: [
            (recoveredBlock242Block249Stack2 == nil) ifTrue: [recoveredBlock242Block249PC := 343] ifFalse: [recoveredBlock242Block249PC := 264].
        ].
        recoveredBlock242Block249Step = 264 ifTrue: [
            recoveredBlock242Block249PC := 265.
        ].
        recoveredBlock242Block249Step = 265 ifTrue: [
            recoveredBlock242Block249Stack1 := recoveredBlock242Block249Arg1.
            recoveredBlock242Block249PC := 268.
        ].
        recoveredBlock242Block249Step = 268 ifTrue: [
            recoveredBlock242Block249Stack1 := (recoveredBlock242Block249Stack1) targetObject.
            recoveredBlock242Block249PC := 269.
        ].
        recoveredBlock242Block249Step = 269 ifTrue: [
            recoveredBlock242Block249Stack1 := (recoveredBlock242Block249Stack1) item.
            recoveredBlock242Block249PC := 270.
        ].
        recoveredBlock242Block249Step = 270 ifTrue: [
            recoveredLocal2 := recoveredBlock242Block249Stack1.
            recoveredBlock242Block249PC := 273.
        ].
        recoveredBlock242Block249Step = 273 ifTrue: [
            recoveredBlock242Block249Stack1 := recoveredLocal2.
            recoveredBlock242Block249PC := 276.
        ].
        recoveredBlock242Block249Step = 276 ifTrue: [
            (recoveredBlock242Block249Stack1 ~~ nil) ifTrue: [recoveredBlock242Block249PC := 321] ifFalse: [recoveredBlock242Block249PC := 280].
        ].
        recoveredBlock242Block249Step = 280 ifTrue: [
            recoveredBlock242Block249Stack1 := recoveredLocal3.
            recoveredBlock242Block249PC := 283.
        ].
        recoveredBlock242Block249Step = 283 ifTrue: [
            recoveredBlock242Block249Stack2 := [:recoveredBlock242Block249Block283Arg1 | 
    | recoveredBlock242Block249Block283Value0 recoveredBlock242Block249Block283Value1 recoveredBlock242Block249Block283Value2 recoveredBlock242Block249Block283Value3 recoveredBlock242Block249Block283Value4 recoveredBlock242Block249Block283Value5 |
    recoveredBlock242Block249Block283Value0 := recoveredBlock242Block249Block283Arg1.
    recoveredBlock242Block249Block283Value1 := (recoveredBlock242Block249Block283Value0) displayName.
    recoveredBlock242Block249Block283Value2 := recoveredBlock242Block249Arg1.
    recoveredBlock242Block249Block283Value3 := (recoveredBlock242Block249Block283Value2) targetObject.
    recoveredBlock242Block249Block283Value4 := (recoveredBlock242Block249Block283Value3) displayName.
    recoveredBlock242Block249Block283Value5 := (recoveredBlock242Block249Block283Value1) = (recoveredBlock242Block249Block283Value4).
    recoveredBlock242Block249Block283Value5
].
            recoveredBlock242Block249PC := 301.
        ].
        recoveredBlock242Block249Step = 301 ifTrue: [
            recoveredBlock242Block249Stack3 := [].
            recoveredBlock242Block249PC := 303.
        ].
        recoveredBlock242Block249Step = 303 ifTrue: [
            recoveredBlock242Block249Stack1 := (recoveredBlock242Block249Stack1) detect: (recoveredBlock242Block249Stack2) ifNone: (recoveredBlock242Block249Stack3).
            recoveredBlock242Block249PC := 305.
        ].
        recoveredBlock242Block249Step = 305 ifTrue: [
            recoveredLocal1 := recoveredBlock242Block249Stack1.
            recoveredBlock242Block249PC := 308.
        ].
        recoveredBlock242Block249Step = 308 ifTrue: [
            recoveredBlock242Block249Stack1 := recoveredLocal1.
            recoveredBlock242Block249PC := 311.
        ].
        recoveredBlock242Block249Step = 311 ifTrue: [
            (recoveredBlock242Block249Stack1 == nil) ifTrue: [recoveredBlock242Block249PC := 321] ifFalse: [recoveredBlock242Block249PC := 314].
        ].
        recoveredBlock242Block249Step = 314 ifTrue: [
            recoveredBlock242Block249Stack1 := recoveredLocal1.
            recoveredBlock242Block249PC := 317.
        ].
        recoveredBlock242Block249Step = 317 ifTrue: [
            recoveredBlock242Block249Stack1 := (recoveredBlock242Block249Stack1) item.
            recoveredBlock242Block249PC := 318.
        ].
        recoveredBlock242Block249Step = 318 ifTrue: [
            recoveredLocal2 := recoveredBlock242Block249Stack1.
            recoveredBlock242Block249PC := 321.
        ].
        recoveredBlock242Block249Step = 321 ifTrue: [
            recoveredBlock242Block249Stack1 := nil.
            recoveredBlock242Block249PC := 322.
        ].
        recoveredBlock242Block249Step = 322 ifTrue: [
            recoveredBlock242Block249Stack2 := recoveredLocal2.
            recoveredBlock242Block249PC := 325.
        ].
        recoveredBlock242Block249Step = 325 ifTrue: [
            (recoveredBlock242Block249Stack2 == nil) ifTrue: [recoveredBlock242Block249PC := 343] ifFalse: [recoveredBlock242Block249PC := 328].
        ].
        recoveredBlock242Block249Step = 328 ifTrue: [
            recoveredBlock242Block249Stack2 := recoveredLocal2.
            recoveredBlock242Block249PC := 331.
        ].
        recoveredBlock242Block249Step = 331 ifTrue: [
            recoveredBlock242Block249Stack2 := (recoveredBlock242Block249Stack2) owner.
            recoveredBlock242Block249PC := 333.
        ].
        recoveredBlock242Block249Step = 333 ifTrue: [
            recoveredBlock242Block249Stack2 := (recoveredBlock242Block249Stack2) class.
            recoveredBlock242Block249PC := 335.
        ].
        recoveredBlock242Block249Step = 335 ifTrue: [
            recoveredBlock242Block249Stack3 := ASDRecord.
            recoveredBlock242Block249PC := 337.
        ].
        recoveredBlock242Block249Step = 337 ifTrue: [
            (recoveredBlock242Block249Stack2 ~~ recoveredBlock242Block249Stack3) ifTrue: [recoveredBlock242Block249PC := 343] ifFalse: [recoveredBlock242Block249PC := 340].
        ].
        recoveredBlock242Block249Step = 340 ifTrue: [
            recoveredBlock242Block249PC := 341.
        ].
        recoveredBlock242Block249Step = 341 ifTrue: [
            recoveredBlock242Block249Stack1 := true.
            recoveredBlock242Block249PC := 342.
        ].
        recoveredBlock242Block249Step = 342 ifTrue: [
            ^recoveredBlock242Block249Stack1
        ].
        recoveredBlock242Block249Step = 343 ifTrue: [
            recoveredBlock242Block249Result := recoveredBlock242Block249Stack1.
            recoveredBlock242Block249Done := true.
        ].
    ].
    recoveredBlock242Block249Result
].
    recoveredBlock242Value2 := (recoveredBlock242Value0) do: (recoveredBlock242Value1).
    recoveredBlock242Value2
].
    (recoveredValue7) do: (recoveredValue8).
    ^false
! !

"ASDBase.ic method 0x205dd56c; bytecode file offset 0xed9ea8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
updateInterface: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_89128'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block2811a094Arg1 | 
    nil
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Local2 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) isClientServerInterface.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 44] ifFalse: [recoveredBlock28PC := 42].
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            ^recoveredBlock28Stack1
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) complexVariables.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) includes: (recoveredBlock28Stack1).
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            (recoveredBlock28Stack0) ifTrue: [recoveredBlock28PC := 56] ifFalse: [recoveredBlock28PC := 54].
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack0 := nil.
            recoveredBlock28PC := 55.
        ].
        recoveredBlock28Step = 55 ifTrue: [
            ^recoveredBlock28Stack0
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Stack1 := [
    | recoveredBlock28Block57Value0 recoveredBlock28Block57Value1 recoveredBlock28Block57Value2 recoveredBlock28Block57Value3 recoveredBlock28Block57Value4 recoveredBlock28Block57Value5 recoveredBlock28Block57Value6 recoveredBlock28Block57Value7 recoveredBlock28Block57Value8 recoveredBlock28Block57Value9 recoveredBlock28Block57Value10 recoveredBlock28Block57Value11 recoveredBlock28Block57Value12 |
    recoveredBlock28Block57Value0 := recoveredBlock28Arg1.
    recoveredBlock28Block57Value1 := (recoveredBlock28Block57Value0) allMethods.
    recoveredBlock28Local2 := recoveredBlock28Block57Value1.
    recoveredBlock28Block57Value2 := (self) allMethods.
    recoveredBlock28Block57Value3 := [:recoveredBlock28Block57Block74Arg1 | 
    | recoveredBlock28Block57Block74Stack0 recoveredBlock28Block57Block74Stack1 recoveredBlock28Block57Block74Stack2 recoveredBlock28Block57Block74Stack3 recoveredBlock28Block57Block74PC recoveredBlock28Block57Block74Step recoveredBlock28Block57Block74Done recoveredBlock28Block57Block74Result |
    recoveredBlock28Block57Block74Stack0 := nil.
    recoveredBlock28Block57Block74PC := 80.
    recoveredBlock28Block57Block74Done := false.
    [recoveredBlock28Block57Block74Done not] whileTrue: [
        recoveredBlock28Block57Block74Step := recoveredBlock28Block57Block74PC.
        recoveredBlock28Block57Block74Step = 80 ifTrue: [
            recoveredBlock28Block57Block74Stack1 := false.
            recoveredBlock28Block57Block74PC := 81.
        ].
        recoveredBlock28Block57Block74Step = 81 ifTrue: [
            recoveredBlock28Block57Block74Stack2 := recoveredBlock28Block57Block74Arg1.
            recoveredBlock28Block57Block74PC := 82.
        ].
        recoveredBlock28Block57Block74Step = 82 ifTrue: [
            recoveredBlock28Block57Block74Stack2 := (recoveredBlock28Block57Block74Stack2) realizedSignature.
            recoveredBlock28Block57Block74PC := 84.
        ].
        recoveredBlock28Block57Block74Step = 84 ifTrue: [
            (recoveredBlock28Block57Block74Stack2 == nil) ifTrue: [recoveredBlock28Block57Block74PC := 100] ifFalse: [recoveredBlock28Block57Block74PC := 88].
        ].
        recoveredBlock28Block57Block74Step = 88 ifTrue: [
            recoveredBlock28Block57Block74PC := 89.
        ].
        recoveredBlock28Block57Block74Step = 89 ifTrue: [
            recoveredBlock28Block57Block74Stack1 := recoveredBlock28Block57Block74Arg1.
            recoveredBlock28Block57Block74PC := 90.
        ].
        recoveredBlock28Block57Block74Step = 90 ifTrue: [
            recoveredBlock28Block57Block74Stack1 := (recoveredBlock28Block57Block74Stack1) realizedSignature.
            recoveredBlock28Block57Block74PC := 92.
        ].
        recoveredBlock28Block57Block74Step = 92 ifTrue: [
            recoveredBlock28Block57Block74Stack1 := (recoveredBlock28Block57Block74Stack1) first.
            recoveredBlock28Block57Block74PC := 94.
        ].
        recoveredBlock28Block57Block74Step = 94 ifTrue: [
            recoveredBlock28Block57Block74Stack2 := recoveredArg1.
            recoveredBlock28Block57Block74PC := 97.
        ].
        recoveredBlock28Block57Block74Step = 97 ifTrue: [
            recoveredBlock28Block57Block74Stack2 := (recoveredBlock28Block57Block74Stack2) aliasName.
            recoveredBlock28Block57Block74PC := 99.
        ].
        recoveredBlock28Block57Block74Step = 99 ifTrue: [
            recoveredBlock28Block57Block74Stack1 := (recoveredBlock28Block57Block74Stack1) = (recoveredBlock28Block57Block74Stack2).
            recoveredBlock28Block57Block74PC := 100.
        ].
        recoveredBlock28Block57Block74Step = 100 ifTrue: [
            recoveredBlock28Block57Block74Result := recoveredBlock28Block57Block74Stack1.
            recoveredBlock28Block57Block74Done := true.
        ].
    ].
    recoveredBlock28Block57Block74Result
].
    recoveredBlock28Block57Value4 := (recoveredBlock28Block57Value2) select: (recoveredBlock28Block57Value3).
    recoveredBlock28Local1 := recoveredBlock28Block57Value4.
    recoveredBlock28Block57Value5 := recoveredBlock28Local1.
    recoveredBlock28Block57Value6 := [:recoveredBlock28Block57Block109Arg1 | 
    | recoveredBlock28Block57Block109Local1 recoveredBlock28Block57Block109Stack0 recoveredBlock28Block57Block109Stack1 recoveredBlock28Block57Block109Stack2 recoveredBlock28Block57Block109Stack3 recoveredBlock28Block57Block109Stack4 recoveredBlock28Block57Block109Stack5 recoveredBlock28Block57Block109PC recoveredBlock28Block57Block109Step recoveredBlock28Block57Block109Done recoveredBlock28Block57Block109Result |
    recoveredBlock28Block57Block109Stack0 := self.
    recoveredBlock28Block57Block109PC := 116.
    recoveredBlock28Block57Block109Done := false.
    [recoveredBlock28Block57Block109Done not] whileTrue: [
        recoveredBlock28Block57Block109Step := recoveredBlock28Block57Block109PC.
        recoveredBlock28Block57Block109Step = 116 ifTrue: [
            recoveredBlock28Block57Block109Stack1 := recoveredBlock28Local2.
            recoveredBlock28Block57Block109PC := 119.
        ].
        recoveredBlock28Block57Block109Step = 119 ifTrue: [
            recoveredBlock28Block57Block109Stack2 := [:recoveredBlock28Block57Block109Block119Arg1 | 
    | recoveredBlock28Block57Block109Block119Value0 recoveredBlock28Block57Block109Block119Value1 recoveredBlock28Block57Block109Block119Value2 recoveredBlock28Block57Block109Block119Value3 recoveredBlock28Block57Block109Block119Value4 recoveredBlock28Block57Block109Block119Value5 |
    recoveredBlock28Block57Block109Block119Value0 := recoveredBlock28Block57Block109Block119Arg1.
    recoveredBlock28Block57Block109Block119Value1 := (recoveredBlock28Block57Block109Block119Value0) aliasName.
    recoveredBlock28Block57Block109Block119Value2 := recoveredBlock28Block57Block109Arg1.
    recoveredBlock28Block57Block109Block119Value3 := (recoveredBlock28Block57Block109Block119Value2) realizedSignature.
    recoveredBlock28Block57Block109Block119Value4 := (recoveredBlock28Block57Block109Block119Value3) last.
    recoveredBlock28Block57Block109Block119Value5 := (recoveredBlock28Block57Block109Block119Value1) = (recoveredBlock28Block57Block109Block119Value4).
    recoveredBlock28Block57Block109Block119Value5
].
            recoveredBlock28Block57Block109PC := 138.
        ].
        recoveredBlock28Block57Block109Step = 138 ifTrue: [
            recoveredBlock28Block57Block109Stack3 := [].
            recoveredBlock28Block57Block109PC := 140.
        ].
        recoveredBlock28Block57Block109Step = 140 ifTrue: [
            recoveredBlock28Block57Block109Stack1 := (recoveredBlock28Block57Block109Stack1) detect: (recoveredBlock28Block57Block109Stack2) ifNone: (recoveredBlock28Block57Block109Stack3).
            recoveredBlock28Block57Block109PC := 142.
        ].
        recoveredBlock28Block57Block109Step = 142 ifTrue: [
            recoveredBlock28Block57Block109Local1 := recoveredBlock28Block57Block109Stack1.
            recoveredBlock28Block57Block109PC := 145.
        ].
        recoveredBlock28Block57Block109Step = 145 ifTrue: [
            recoveredBlock28Block57Block109Stack1 := recoveredBlock28Block57Block109Local1.
            recoveredBlock28Block57Block109PC := 148.
        ].
        recoveredBlock28Block57Block109Step = 148 ifTrue: [
            (recoveredBlock28Block57Block109Stack1 == nil) ifTrue: [recoveredBlock28Block57Block109PC := 168] ifFalse: [recoveredBlock28Block57Block109PC := 152].
        ].
        recoveredBlock28Block57Block109Step = 152 ifTrue: [
            recoveredBlock28Block57Block109Stack1 := self.
            recoveredBlock28Block57Block109PC := 153.
        ].
        recoveredBlock28Block57Block109Step = 153 ifTrue: [
            recoveredBlock28Block57Block109Stack2 := recoveredBlock28Block57Block109Local1.
            recoveredBlock28Block57Block109PC := 156.
        ].
        recoveredBlock28Block57Block109Step = 156 ifTrue: [
            recoveredBlock28Block57Block109Stack3 := recoveredArg1.
            recoveredBlock28Block57Block109PC := 159.
        ].
        recoveredBlock28Block57Block109Step = 159 ifTrue: [
            recoveredBlock28Block57Block109Stack4 := recoveredBlock28Block57Block109Arg1.
            recoveredBlock28Block57Block109PC := 162.
        ].
        recoveredBlock28Block57Block109Step = 162 ifTrue: [
            recoveredBlock28Block57Block109Stack1 := (recoveredBlock28Block57Block109Stack1) updateSignature: (recoveredBlock28Block57Block109Stack2) of: (recoveredBlock28Block57Block109Stack3) for: (recoveredBlock28Block57Block109Stack4).
            recoveredBlock28Block57Block109PC := 165.
        ].
        recoveredBlock28Block57Block109Step = 165 ifTrue: [
            recoveredBlock28Block57Block109PC := 174.
        ].
        recoveredBlock28Block57Block109Step = 168 ifTrue: [
            recoveredBlock28Block57Block109Stack1 := self.
            recoveredBlock28Block57Block109PC := 169.
        ].
        recoveredBlock28Block57Block109Step = 169 ifTrue: [
            recoveredBlock28Block57Block109Stack2 := recoveredBlock28Block57Block109Arg1.
            recoveredBlock28Block57Block109PC := 172.
        ].
        recoveredBlock28Block57Block109Step = 172 ifTrue: [
            recoveredBlock28Block57Block109Stack1 := (recoveredBlock28Block57Block109Stack1) removeSignature: (recoveredBlock28Block57Block109Stack2).
            recoveredBlock28Block57Block109PC := 174.
        ].
        recoveredBlock28Block57Block109Step = 174 ifTrue: [
            recoveredBlock28Block57Block109Result := recoveredBlock28Block57Block109Stack1.
            recoveredBlock28Block57Block109Done := true.
        ].
    ].
    recoveredBlock28Block57Block109Result
].
    (recoveredBlock28Block57Value5) do: (recoveredBlock28Block57Value6).
    recoveredBlock28Block57Value7 := (self) allMethods.
    recoveredBlock28Block57Value8 := [:recoveredBlock28Block57Block180Arg1 | 
    | recoveredBlock28Block57Block180Stack0 recoveredBlock28Block57Block180Stack1 recoveredBlock28Block57Block180Stack2 recoveredBlock28Block57Block180Stack3 recoveredBlock28Block57Block180PC recoveredBlock28Block57Block180Step recoveredBlock28Block57Block180Done recoveredBlock28Block57Block180Result |
    recoveredBlock28Block57Block180Stack0 := nil.
    recoveredBlock28Block57Block180PC := 186.
    recoveredBlock28Block57Block180Done := false.
    [recoveredBlock28Block57Block180Done not] whileTrue: [
        recoveredBlock28Block57Block180Step := recoveredBlock28Block57Block180PC.
        recoveredBlock28Block57Block180Step = 186 ifTrue: [
            recoveredBlock28Block57Block180Stack1 := false.
            recoveredBlock28Block57Block180PC := 187.
        ].
        recoveredBlock28Block57Block180Step = 187 ifTrue: [
            recoveredBlock28Block57Block180Stack2 := recoveredBlock28Block57Block180Arg1.
            recoveredBlock28Block57Block180PC := 188.
        ].
        recoveredBlock28Block57Block180Step = 188 ifTrue: [
            recoveredBlock28Block57Block180Stack2 := (recoveredBlock28Block57Block180Stack2) realizedSignature.
            recoveredBlock28Block57Block180PC := 190.
        ].
        recoveredBlock28Block57Block180Step = 190 ifTrue: [
            (recoveredBlock28Block57Block180Stack2 == nil) ifTrue: [recoveredBlock28Block57Block180PC := 206] ifFalse: [recoveredBlock28Block57Block180PC := 194].
        ].
        recoveredBlock28Block57Block180Step = 194 ifTrue: [
            recoveredBlock28Block57Block180PC := 195.
        ].
        recoveredBlock28Block57Block180Step = 195 ifTrue: [
            recoveredBlock28Block57Block180Stack1 := recoveredBlock28Block57Block180Arg1.
            recoveredBlock28Block57Block180PC := 196.
        ].
        recoveredBlock28Block57Block180Step = 196 ifTrue: [
            recoveredBlock28Block57Block180Stack1 := (recoveredBlock28Block57Block180Stack1) realizedSignature.
            recoveredBlock28Block57Block180PC := 198.
        ].
        recoveredBlock28Block57Block180Step = 198 ifTrue: [
            recoveredBlock28Block57Block180Stack1 := (recoveredBlock28Block57Block180Stack1) first.
            recoveredBlock28Block57Block180PC := 200.
        ].
        recoveredBlock28Block57Block180Step = 200 ifTrue: [
            recoveredBlock28Block57Block180Stack2 := recoveredArg1.
            recoveredBlock28Block57Block180PC := 203.
        ].
        recoveredBlock28Block57Block180Step = 203 ifTrue: [
            recoveredBlock28Block57Block180Stack2 := (recoveredBlock28Block57Block180Stack2) aliasName.
            recoveredBlock28Block57Block180PC := 205.
        ].
        recoveredBlock28Block57Block180Step = 205 ifTrue: [
            recoveredBlock28Block57Block180Stack1 := (recoveredBlock28Block57Block180Stack1) = (recoveredBlock28Block57Block180Stack2).
            recoveredBlock28Block57Block180PC := 206.
        ].
        recoveredBlock28Block57Block180Step = 206 ifTrue: [
            recoveredBlock28Block57Block180Result := recoveredBlock28Block57Block180Stack1.
            recoveredBlock28Block57Block180Done := true.
        ].
    ].
    recoveredBlock28Block57Block180Result
].
    recoveredBlock28Block57Value9 := (recoveredBlock28Block57Value7) select: (recoveredBlock28Block57Value8).
    recoveredBlock28Local1 := recoveredBlock28Block57Value9.
    recoveredBlock28Block57Value10 := recoveredBlock28Local2.
    recoveredBlock28Block57Value11 := [:recoveredBlock28Block57Block215Arg1 | 
    | recoveredBlock28Block57Block215Local1 recoveredBlock28Block57Block215Stack0 recoveredBlock28Block57Block215Stack1 recoveredBlock28Block57Block215Stack2 recoveredBlock28Block57Block215Stack3 recoveredBlock28Block57Block215Stack4 recoveredBlock28Block57Block215Stack5 recoveredBlock28Block57Block215PC recoveredBlock28Block57Block215Step recoveredBlock28Block57Block215Done recoveredBlock28Block57Block215Result |
    recoveredBlock28Block57Block215Stack0 := self.
    recoveredBlock28Block57Block215PC := 222.
    recoveredBlock28Block57Block215Done := false.
    [recoveredBlock28Block57Block215Done not] whileTrue: [
        recoveredBlock28Block57Block215Step := recoveredBlock28Block57Block215PC.
        recoveredBlock28Block57Block215Step = 222 ifTrue: [
            recoveredBlock28Block57Block215Stack1 := nil.
            recoveredBlock28Block57Block215PC := 223.
        ].
        recoveredBlock28Block57Block215Step = 223 ifTrue: [
            recoveredBlock28Block57Block215Stack2 := recoveredBlock28Local1.
            recoveredBlock28Block57Block215PC := 226.
        ].
        recoveredBlock28Block57Block215Step = 226 ifTrue: [
            recoveredBlock28Block57Block215Stack3 := [:recoveredBlock28Block57Block215Block226Arg1 | 
    | recoveredBlock28Block57Block215Block226Value0 recoveredBlock28Block57Block215Block226Value1 recoveredBlock28Block57Block215Block226Value2 recoveredBlock28Block57Block215Block226Value3 recoveredBlock28Block57Block215Block226Value4 recoveredBlock28Block57Block215Block226Value5 |
    recoveredBlock28Block57Block215Block226Value0 := recoveredBlock28Block57Block215Arg1.
    recoveredBlock28Block57Block215Block226Value1 := (recoveredBlock28Block57Block215Block226Value0) aliasName.
    recoveredBlock28Block57Block215Block226Value2 := recoveredBlock28Block57Block215Block226Arg1.
    recoveredBlock28Block57Block215Block226Value3 := (recoveredBlock28Block57Block215Block226Value2) realizedSignature.
    recoveredBlock28Block57Block215Block226Value4 := (recoveredBlock28Block57Block215Block226Value3) last.
    recoveredBlock28Block57Block215Block226Value5 := (recoveredBlock28Block57Block215Block226Value1) = (recoveredBlock28Block57Block215Block226Value4).
    recoveredBlock28Block57Block215Block226Value5
].
            recoveredBlock28Block57Block215PC := 244.
        ].
        recoveredBlock28Block57Block215Step = 244 ifTrue: [
            recoveredBlock28Block57Block215Stack2 := (recoveredBlock28Block57Block215Stack2) anySatisfy: (recoveredBlock28Block57Block215Stack3).
            recoveredBlock28Block57Block215PC := 246.
        ].
        recoveredBlock28Block57Block215Step = 246 ifTrue: [
            (recoveredBlock28Block57Block215Stack2) ifTrue: [recoveredBlock28Block57Block215PC := 358] ifFalse: [recoveredBlock28Block57Block215PC := 250].
        ].
        recoveredBlock28Block57Block215Step = 250 ifTrue: [
            recoveredBlock28Block57Block215PC := 251.
        ].
        recoveredBlock28Block57Block215Step = 251 ifTrue: [
            recoveredBlock28Block57Block215Stack1 := self.
            recoveredBlock28Block57Block215PC := 252.
        ].
        recoveredBlock28Block57Block215Step = 252 ifTrue: [
            recoveredBlock28Block57Block215Stack1 := (recoveredBlock28Block57Block215Stack1) specifications.
            recoveredBlock28Block57Block215PC := 254.
        ].
        recoveredBlock28Block57Block215Step = 254 ifTrue: [
            recoveredBlock28Block57Block215Stack2 := [:recoveredBlock28Block57Block215Block254Arg1 | 
    | recoveredBlock28Block57Block215Block254Value0 recoveredBlock28Block57Block215Block254Value1 recoveredBlock28Block57Block215Block254Value2 recoveredBlock28Block57Block215Block254Value3 recoveredBlock28Block57Block215Block254Value4 recoveredBlock28Block57Block215Block254Value5 recoveredBlock28Block57Block215Block254Value6 recoveredBlock28Block57Block215Block254Value7 recoveredBlock28Block57Block215Block254Value8 |
    recoveredBlock28Block57Block215Block254Value0 := recoveredBlock28Block57Block215Block254Arg1.
    recoveredBlock28Block57Block215Block254Value1 := (recoveredBlock28Block57Block215Block254Value0) label.
    recoveredBlock28Block57Block215Block254Value2 := recoveredArg1.
    recoveredBlock28Block57Block215Block254Value3 := (recoveredBlock28Block57Block215Block254Value2) label.
    recoveredBlock28Block57Block215Block254Value4 := (recoveredBlock28Block57Block215Block254Value3) , ('_').
    recoveredBlock28Block57Block215Block254Value5 := recoveredBlock28Arg1.
    recoveredBlock28Block57Block215Block254Value6 := (recoveredBlock28Block57Block215Block254Value5) label.
    recoveredBlock28Block57Block215Block254Value7 := (recoveredBlock28Block57Block215Block254Value4) , (recoveredBlock28Block57Block215Block254Value6).
    recoveredBlock28Block57Block215Block254Value8 := (recoveredBlock28Block57Block215Block254Value1) = (recoveredBlock28Block57Block215Block254Value7).
    recoveredBlock28Block57Block215Block254Value8
].
            recoveredBlock28Block57Block215PC := 281.
        ].
        recoveredBlock28Block57Block215Step = 281 ifTrue: [
            recoveredBlock28Block57Block215Stack3 := [
    | recoveredBlock28Block57Block215Block281Value0 recoveredBlock28Block57Block215Block281Value1 recoveredBlock28Block57Block215Block281Value2 recoveredBlock28Block57Block215Block281Value3 recoveredBlock28Block57Block215Block281Value4 recoveredBlock28Block57Block215Block281Value5 recoveredBlock28Block57Block215Block281Value6 recoveredBlock28Block57Block215Block281Value7 recoveredBlock28Block57Block215Block281Value8 recoveredBlock28Block57Block215Block281Value9 recoveredBlock28Block57Block215Block281Value10 recoveredBlock28Block57Block215Block281Value11 recoveredBlock28Block57Block215Block281Value12 recoveredBlock28Block57Block215Block281Value13 |
    recoveredBlock28Block57Block215Block281Value0 := ARBdSpecification.
    recoveredBlock28Block57Block215Block281Value1 := (self) isCTClass.
    recoveredBlock28Block57Block215Block281Value2 := (self) isProcessClass.
    recoveredBlock28Block57Block215Block281Value3 := (recoveredBlock28Block57Block215Block281Value0) createCT: (recoveredBlock28Block57Block215Block281Value1) module: (recoveredBlock28Block57Block215Block281Value2) forClass: (self).
    recoveredBlock28Block57Block215Local1 := recoveredBlock28Block57Block215Block281Value3.
    recoveredBlock28Block57Block215Block281Value4 := recoveredBlock28Block57Block215Local1.
    (self) addPublicSpecification: (recoveredBlock28Block57Block215Block281Value4).
    recoveredBlock28Block57Block215Block281Value5 := recoveredBlock28Block57Block215Local1.
    recoveredBlock28Block57Block215Block281Value6 := recoveredArg1.
    recoveredBlock28Block57Block215Block281Value7 := (recoveredBlock28Block57Block215Block281Value6) label.
    recoveredBlock28Block57Block215Block281Value8 := (recoveredBlock28Block57Block215Block281Value7) , ('_').
    recoveredBlock28Block57Block215Block281Value9 := recoveredBlock28Arg1.
    recoveredBlock28Block57Block215Block281Value10 := (recoveredBlock28Block57Block215Block281Value9) label.
    recoveredBlock28Block57Block215Block281Value11 := (recoveredBlock28Block57Block215Block281Value8) , (recoveredBlock28Block57Block215Block281Value10).
    recoveredBlock28Block57Block215Block281Value12 := (self) uniqueSpecName: (recoveredBlock28Block57Block215Block281Value11).
    (recoveredBlock28Block57Block215Block281Value5) specificationName: (recoveredBlock28Block57Block215Block281Value12).
    recoveredBlock28Block57Block215Block281Value13 := recoveredBlock28Block57Block215Local1.
    recoveredBlock28Block57Block215Block281Value13
].
            recoveredBlock28Block57Block215PC := 336.
        ].
        recoveredBlock28Block57Block215Step = 336 ifTrue: [
            recoveredBlock28Block57Block215Stack1 := (recoveredBlock28Block57Block215Stack1) detect: (recoveredBlock28Block57Block215Stack2) ifNone: (recoveredBlock28Block57Block215Stack3).
            recoveredBlock28Block57Block215PC := 338.
        ].
        recoveredBlock28Block57Block215Step = 338 ifTrue: [
            recoveredBlock28Block57Block215Local1 := recoveredBlock28Block57Block215Stack1.
            recoveredBlock28Block57Block215PC := 341.
        ].
        recoveredBlock28Block57Block215Step = 341 ifTrue: [
            recoveredBlock28Block57Block215Stack1 := self.
            recoveredBlock28Block57Block215PC := 342.
        ].
        recoveredBlock28Block57Block215Step = 342 ifTrue: [
            recoveredBlock28Block57Block215Stack2 := recoveredBlock28Block57Block215Arg1.
            recoveredBlock28Block57Block215PC := 345.
        ].
        recoveredBlock28Block57Block215Step = 345 ifTrue: [
            recoveredBlock28Block57Block215Stack3 := recoveredArg1.
            recoveredBlock28Block57Block215PC := 348.
        ].
        recoveredBlock28Block57Block215Step = 348 ifTrue: [
            recoveredBlock28Block57Block215Stack4 := recoveredBlock28Block57Block215Local1.
            recoveredBlock28Block57Block215PC := 351.
        ].
        recoveredBlock28Block57Block215Step = 351 ifTrue: [
            recoveredBlock28Block57Block215Stack1 := (recoveredBlock28Block57Block215Stack1) realizeSignature: (recoveredBlock28Block57Block215Stack2) of: (recoveredBlock28Block57Block215Stack3) inSpecification: (recoveredBlock28Block57Block215Stack4).
            recoveredBlock28Block57Block215PC := 354.
        ].
        recoveredBlock28Block57Block215Step = 354 ifTrue: [
            recoveredBlock28Block57Block215Stack2 := nil.
            recoveredBlock28Block57Block215PC := 355.
        ].
        recoveredBlock28Block57Block215Step = 355 ifTrue: [
            recoveredBlock28Block57Block215Local1 := recoveredBlock28Block57Block215Stack2.
            recoveredBlock28Block57Block215PC := 358.
        ].
        recoveredBlock28Block57Block215Step = 358 ifTrue: [
            recoveredBlock28Block57Block215Result := recoveredBlock28Block57Block215Stack1.
            recoveredBlock28Block57Block215Done := true.
        ].
    ].
    recoveredBlock28Block57Block215Result
].
    recoveredBlock28Block57Value12 := (recoveredBlock28Block57Value10) do: (recoveredBlock28Block57Value11).
    recoveredBlock28Block57Value12
].
            recoveredBlock28PC := 362.
        ].
        recoveredBlock28Step = 362 ifTrue: [
            recoveredBlock28Stack2 := true.
            recoveredBlock28PC := 363.
        ].
        recoveredBlock28Step = 363 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) suspendObserving: (recoveredBlock28Stack1) notify: (recoveredBlock28Stack2).
            recoveredBlock28PC := 365.
        ].
        recoveredBlock28Step = 365 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack0.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205df244; bytecode file offset 0xedbb6c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
writeXMLElementMapping: recoveredArg1 writer: recoveredArg2 includeOIDs: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asSortedCollection.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isMapped.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 28] ifFalse: [recoveredBlock13PC := 365].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack2 := 'ElementMapping'.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            (recoveredBlock13Stack1) openComplex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack2 := 'elementName'.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) sourceObject.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) displayName.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) nmToken: (recoveredBlock13Stack3).
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) + (1).
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) needsSource.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 227] ifFalse: [recoveredBlock13PC := 66].
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceObject.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getElementPathFor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block76Arg1 | 
    | recoveredBlock13Block76Value0 recoveredBlock13Block76Value1 recoveredBlock13Block76Value2 recoveredBlock13Block76Value3 recoveredBlock13Block76Value4 |
    recoveredBlock13Block76Value0 := recoveredBlock13Block76Arg1.
    recoveredBlock13Block76Value1 := (recoveredBlock13Block76Value0) first.
    recoveredBlock13Local1 := recoveredBlock13Block76Value1.
    recoveredBlock13Block76Value2 := recoveredBlock13Block76Arg1.
    recoveredBlock13Block76Value3 := (recoveredBlock13Block76Value2) last.
    recoveredBlock13Block76Value4 := recoveredBlock13Block76Value3.
    recoveredBlock13Local2 := recoveredBlock13Block76Value4.
    recoveredBlock13Block76Value3
].
            recoveredBlock13PC := 96.
        ].
        recoveredBlock13Step = 96 ifTrue: [
            (recoveredBlock13Stack1) ifNotNil: (recoveredBlock13Stack2).
            recoveredBlock13PC := 98.
        ].
        recoveredBlock13Step = 98 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 101.
        ].
        recoveredBlock13Step = 101 ifTrue: [
            recoveredBlock13Stack2 := 'SourceObject'.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            (recoveredBlock13Stack1) openComplex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 105.
        ].
        recoveredBlock13Step = 105 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 108.
        ].
        recoveredBlock13Step = 108 ifTrue: [
            recoveredBlock13Stack2 := 'displayName'.
            recoveredBlock13PC := 110.
        ].
        recoveredBlock13Step = 110 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 113.
        ].
        recoveredBlock13Step = 113 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) sourceObject.
            recoveredBlock13PC := 115.
        ].
        recoveredBlock13Step = 115 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) displayName.
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) nmToken: (recoveredBlock13Stack3).
            recoveredBlock13PC := 119.
        ].
        recoveredBlock13Step = 119 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 122.
        ].
        recoveredBlock13Step = 122 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sourceObject.
            recoveredBlock13PC := 124.
        ].
        recoveredBlock13Step = 124 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) elementOIDChain.
            recoveredBlock13PC := 126.
        ].
        recoveredBlock13Step = 126 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 149] ifFalse: [recoveredBlock13PC := 130].
        ].
        recoveredBlock13Step = 130 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 133.
        ].
        recoveredBlock13Step = 133 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 136.
        ].
        recoveredBlock13Step = 136 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceObject.
            recoveredBlock13PC := 138.
        ].
        recoveredBlock13Step = 138 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 140.
        ].
        recoveredBlock13Step = 140 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 143.
        ].
        recoveredBlock13Step = 143 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 146.
        ].
        recoveredBlock13Step = 146 ifTrue: [
            (recoveredBlock13Stack1) elementIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 149.
        ].
        recoveredBlock13Step = 149 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 152.
        ].
        recoveredBlock13Step = 152 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sourceObject.
            recoveredBlock13PC := 154.
        ].
        recoveredBlock13Step = 154 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) modelOIDChain.
            recoveredBlock13PC := 156.
        ].
        recoveredBlock13Step = 156 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 177] ifFalse: [recoveredBlock13PC := 160].
        ].
        recoveredBlock13Step = 160 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 163.
        ].
        recoveredBlock13Step = 163 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 166.
        ].
        recoveredBlock13Step = 166 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceObject.
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 168 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) modelOIDChain.
            recoveredBlock13PC := 170.
        ].
        recoveredBlock13Step = 170 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 171.
        ].
        recoveredBlock13Step = 171 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 174.
        ].
        recoveredBlock13Step = 174 ifTrue: [
            (recoveredBlock13Stack1) modelIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 177.
        ].
        recoveredBlock13Step = 177 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 180.
        ].
        recoveredBlock13Step = 180 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sourceObject.
            recoveredBlock13PC := 182.
        ].
        recoveredBlock13Step = 182 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isExternalSourceObject.
            recoveredBlock13PC := 184.
        ].
        recoveredBlock13Step = 184 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 188] ifFalse: [recoveredBlock13PC := 214].
        ].
        recoveredBlock13Step = 188 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 191.
        ].
        recoveredBlock13Step = 191 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sourceObject.
            recoveredBlock13PC := 193.
        ].
        recoveredBlock13Step = 193 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) internalAccess.
            recoveredBlock13PC := 195.
        ].
        recoveredBlock13Step = 195 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 214] ifFalse: [recoveredBlock13PC := 198].
        ].
        recoveredBlock13Step = 198 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 201.
        ].
        recoveredBlock13Step = 201 ifTrue: [
            recoveredBlock13Stack2 := 'internalAccess'.
            recoveredBlock13PC := 203.
        ].
        recoveredBlock13Step = 203 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 206.
        ].
        recoveredBlock13Step = 206 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) sourceObject.
            recoveredBlock13PC := 208.
        ].
        recoveredBlock13Step = 208 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) internalAccess.
            recoveredBlock13PC := 210.
        ].
        recoveredBlock13Step = 210 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) asString.
            recoveredBlock13PC := 212.
        ].
        recoveredBlock13Step = 212 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) string: (recoveredBlock13Stack3).
            recoveredBlock13PC := 214.
        ].
        recoveredBlock13Step = 214 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 217.
        ].
        recoveredBlock13Step = 217 ifTrue: [
            (recoveredBlock13Stack1) closeComplex.
            recoveredBlock13PC := 219.
        ].
        recoveredBlock13Step = 219 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 220.
        ].
        recoveredBlock13Step = 220 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 221.
        ].
        recoveredBlock13Step = 221 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 224.
        ].
        recoveredBlock13Step = 224 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 227.
        ].
        recoveredBlock13Step = 227 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 230.
        ].
        recoveredBlock13Step = 230 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) needsTarget.
            recoveredBlock13PC := 232.
        ].
        recoveredBlock13Step = 232 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 360] ifFalse: [recoveredBlock13PC := 236].
        ].
        recoveredBlock13Step = 236 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 237.
        ].
        recoveredBlock13Step = 237 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 240.
        ].
        recoveredBlock13Step = 240 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) targetObject.
            recoveredBlock13PC := 242.
        ].
        recoveredBlock13Step = 242 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 244.
        ].
        recoveredBlock13Step = 244 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getElementPathFor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 246.
        ].
        recoveredBlock13Step = 246 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block246Arg1 | 
    | recoveredBlock13Block246Value0 recoveredBlock13Block246Value1 recoveredBlock13Block246Value2 recoveredBlock13Block246Value3 recoveredBlock13Block246Value4 |
    recoveredBlock13Block246Value0 := recoveredBlock13Block246Arg1.
    recoveredBlock13Block246Value1 := (recoveredBlock13Block246Value0) first.
    recoveredBlock13Local1 := recoveredBlock13Block246Value1.
    recoveredBlock13Block246Value2 := recoveredBlock13Block246Arg1.
    recoveredBlock13Block246Value3 := (recoveredBlock13Block246Value2) last.
    recoveredBlock13Block246Value4 := recoveredBlock13Block246Value3.
    recoveredBlock13Local2 := recoveredBlock13Block246Value4.
    recoveredBlock13Block246Value3
].
            recoveredBlock13PC := 266.
        ].
        recoveredBlock13Step = 266 ifTrue: [
            (recoveredBlock13Stack1) ifNotNil: (recoveredBlock13Stack2).
            recoveredBlock13PC := 268.
        ].
        recoveredBlock13Step = 268 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 271.
        ].
        recoveredBlock13Step = 271 ifTrue: [
            recoveredBlock13Stack2 := 'TargetObject'.
            recoveredBlock13PC := 273.
        ].
        recoveredBlock13Step = 273 ifTrue: [
            (recoveredBlock13Stack1) openComplex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 275.
        ].
        recoveredBlock13Step = 275 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 278.
        ].
        recoveredBlock13Step = 278 ifTrue: [
            recoveredBlock13Stack2 := 'displayName'.
            recoveredBlock13PC := 280.
        ].
        recoveredBlock13Step = 280 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 283.
        ].
        recoveredBlock13Step = 283 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) targetObject.
            recoveredBlock13PC := 285.
        ].
        recoveredBlock13Step = 285 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) displayName.
            recoveredBlock13PC := 287.
        ].
        recoveredBlock13Step = 287 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) nmToken: (recoveredBlock13Stack3).
            recoveredBlock13PC := 289.
        ].
        recoveredBlock13Step = 289 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 292.
        ].
        recoveredBlock13Step = 292 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 294.
        ].
        recoveredBlock13Step = 294 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) elementOIDChain.
            recoveredBlock13PC := 296.
        ].
        recoveredBlock13Step = 296 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 319] ifFalse: [recoveredBlock13PC := 300].
        ].
        recoveredBlock13Step = 300 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 303.
        ].
        recoveredBlock13Step = 303 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 306.
        ].
        recoveredBlock13Step = 306 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) targetObject.
            recoveredBlock13PC := 308.
        ].
        recoveredBlock13Step = 308 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 310.
        ].
        recoveredBlock13Step = 310 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 313.
        ].
        recoveredBlock13Step = 313 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 316.
        ].
        recoveredBlock13Step = 316 ifTrue: [
            (recoveredBlock13Stack1) elementIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 319.
        ].
        recoveredBlock13Step = 319 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 322.
        ].
        recoveredBlock13Step = 322 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 324.
        ].
        recoveredBlock13Step = 324 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) modelOIDChain.
            recoveredBlock13PC := 326.
        ].
        recoveredBlock13Step = 326 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 347] ifFalse: [recoveredBlock13PC := 330].
        ].
        recoveredBlock13Step = 330 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 333.
        ].
        recoveredBlock13Step = 333 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 336.
        ].
        recoveredBlock13Step = 336 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) targetObject.
            recoveredBlock13PC := 338.
        ].
        recoveredBlock13Step = 338 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) modelOIDChain.
            recoveredBlock13PC := 340.
        ].
        recoveredBlock13Step = 340 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 341.
        ].
        recoveredBlock13Step = 341 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 344.
        ].
        recoveredBlock13Step = 344 ifTrue: [
            (recoveredBlock13Stack1) modelIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 347.
        ].
        recoveredBlock13Step = 347 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 350.
        ].
        recoveredBlock13Step = 350 ifTrue: [
            (recoveredBlock13Stack1) closeComplex.
            recoveredBlock13PC := 352.
        ].
        recoveredBlock13Step = 352 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 353.
        ].
        recoveredBlock13Step = 353 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 354.
        ].
        recoveredBlock13Step = 354 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 357.
        ].
        recoveredBlock13Step = 357 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 360.
        ].
        recoveredBlock13Step = 360 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 363.
        ].
        recoveredBlock13Step = 363 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) closeComplex.
            recoveredBlock13PC := 365.
        ].
        recoveredBlock13Step = 365 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x205f6da4; bytecode file offset 0xef36f8"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
readMappingFromCSVFile: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal12 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 401] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 387.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := $#.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 379.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := $,.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 379].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := -4.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'Import Error: Line read format does not include 3 elements (<Type>,<Source>,<Target>).'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) allMappingCSVprefixes.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Value0 recoveredBlock179Value1 recoveredBlock179Value2 recoveredBlock179Value3 recoveredBlock179Value4 recoveredBlock179Value5 |
    recoveredBlock179Value0 := recoveredLocal1.
    recoveredBlock179Value1 := (recoveredBlock179Value0) , (' ').
    recoveredBlock179Value2 := recoveredBlock179Arg1.
    recoveredBlock179Value3 := (recoveredBlock179Value2) asString.
    recoveredBlock179Value4 := (recoveredBlock179Value1) , (recoveredBlock179Value3).
    recoveredBlock179Value5 := recoveredBlock179Value4.
    recoveredLocal1 := recoveredBlock179Value5.
    recoveredBlock179Value4
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) allMappingCSVprefixes.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 249] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := -5.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := 'Import Error: Mapping type <'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := '> is not in allowed. Allowed are: '.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := '.'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredPC := 299.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 299].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := -5.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := 'Import Error: Mapping type <'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := '> is not <'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := '>.'.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText: (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := ASDMappingObject.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack5 := 3.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := (recoveredStack1) newType: (recoveredStack2) sourceString: (recoveredStack3) targetString: (recoveredStack4).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMappingTypeForCSVprefixLabel: (recoveredStack3).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock339Local1 recoveredBlock339Value0 recoveredBlock339Value1 recoveredBlock339Value2 recoveredBlock339Value3 recoveredBlock339Value4 recoveredBlock339Value5 recoveredBlock339Value6 recoveredBlock339Value7 |
    recoveredBlock339Value0 := OrderedCollection.
    recoveredBlock339Value1 := (recoveredBlock339Value0) new.
    recoveredBlock339Local1 := recoveredBlock339Value1.
    recoveredBlock339Value2 := recoveredLocal8.
    recoveredBlock339Value3 := (self) class.
    recoveredBlock339Value4 := recoveredLocal6.
    recoveredBlock339Value5 := (recoveredBlock339Value3) getMappingTypeForCSVprefixLabel: (recoveredBlock339Value4).
    recoveredBlock339Value6 := recoveredBlock339Local1.
    (recoveredBlock339Value2) at: (recoveredBlock339Value5) put: (recoveredBlock339Value6).
    recoveredBlock339Value7 := recoveredBlock339Local1.
    recoveredBlock339Value7
].
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 396] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsCsvConversionTo640: (recoveredStack1).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 410] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) convertCsvMappingTo640: (recoveredStack1).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205fea88; bytecode file offset 0xefb41c"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
importMappingsFrom: recoveredArg1 toTableWidgets: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'CSV'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) readMappingFromCSVFile: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'XML'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) readMappingFromXMLFile: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'No import reader found for file format: '.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := -3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := 'Error while reading mappings from file: '.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) messageText.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorNumber.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappingTypes.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [:recoveredBlock140Arg1 | 
    | recoveredBlock140Local1 recoveredBlock140Local2 recoveredBlock140Local3 recoveredBlock140Stack0 recoveredBlock140Stack1 recoveredBlock140Stack2 recoveredBlock140Stack3 recoveredBlock140Stack4 recoveredBlock140Stack5 recoveredBlock140PC recoveredBlock140Step recoveredBlock140Done recoveredBlock140Result |
    recoveredBlock140Stack0 := self.
    recoveredBlock140PC := 146.
    recoveredBlock140Done := false.
    [recoveredBlock140Done not] whileTrue: [
        recoveredBlock140Step := recoveredBlock140PC.
        recoveredBlock140Step = 146 ifTrue: [
            recoveredBlock140Stack1 := recoveredArg2.
            recoveredBlock140PC := 149.
        ].
        recoveredBlock140Step = 149 ifTrue: [
            recoveredBlock140Stack2 := [:recoveredBlock140Block149Arg1 | 
    | recoveredBlock140Block149Value0 recoveredBlock140Block149Value1 recoveredBlock140Block149Value2 recoveredBlock140Block149Value3 |
    recoveredBlock140Block149Value0 := recoveredBlock140Block149Arg1.
    recoveredBlock140Block149Value1 := (recoveredBlock140Block149Value0) mappingType.
    recoveredBlock140Block149Value2 := recoveredBlock140Arg1.
    recoveredBlock140Block149Value3 := (recoveredBlock140Block149Value1) = (recoveredBlock140Block149Value2).
    recoveredBlock140Block149Value3
].
            recoveredBlock140PC := 164.
        ].
        recoveredBlock140Step = 164 ifTrue: [
            recoveredBlock140Stack3 := [].
            recoveredBlock140PC := 166.
        ].
        recoveredBlock140Step = 166 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) detect: (recoveredBlock140Stack2) ifNone: (recoveredBlock140Stack3).
            recoveredBlock140PC := 168.
        ].
        recoveredBlock140Step = 168 ifTrue: [
            recoveredBlock140Local3 := recoveredBlock140Stack1.
            recoveredBlock140PC := 171.
        ].
        recoveredBlock140Step = 171 ifTrue: [
            recoveredBlock140Stack1 := recoveredBlock140Local3.
            recoveredBlock140PC := 174.
        ].
        recoveredBlock140Step = 174 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) notNil.
            recoveredBlock140PC := 175.
        ].
        recoveredBlock140Step = 175 ifTrue: [
            recoveredLocal1 := recoveredBlock140Stack1.
            recoveredBlock140PC := 178.
        ].
        recoveredBlock140Step = 178 ifTrue: [
            recoveredBlock140Stack1 := recoveredLocal1.
            recoveredBlock140PC := 181.
        ].
        recoveredBlock140Step = 181 ifTrue: [
            (recoveredBlock140Stack1) ifTrue: [recoveredBlock140PC := 184] ifFalse: [recoveredBlock140PC := 197].
        ].
        recoveredBlock140Step = 184 ifTrue: [
            recoveredBlock140Stack1 := recoveredBlock140Local3.
            recoveredBlock140PC := 187.
        ].
        recoveredBlock140Step = 187 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) mappingObjects.
            recoveredBlock140PC := 189.
        ].
        recoveredBlock140Step = 189 ifTrue: [
            (recoveredBlock140Stack1 ~~ nil) ifTrue: [recoveredBlock140PC := 197] ifFalse: [recoveredBlock140PC := 192].
        ].
        recoveredBlock140Step = 192 ifTrue: [
            recoveredBlock140Stack1 := recoveredBlock140Local3.
            recoveredBlock140PC := 195.
        ].
        recoveredBlock140Step = 195 ifTrue: [
            (recoveredBlock140Stack1) updateMapping.
            recoveredBlock140PC := 197.
        ].
        recoveredBlock140Step = 197 ifTrue: [
            recoveredBlock140Stack1 := recoveredLocal6.
            recoveredBlock140PC := 200.
        ].
        recoveredBlock140Step = 200 ifTrue: [
            recoveredBlock140Stack2 := recoveredBlock140Arg1.
            recoveredBlock140PC := 203.
        ].
        recoveredBlock140Step = 203 ifTrue: [
            recoveredBlock140Stack3 := [
    | block2811c4dcValue0 block2811c4dcValue1 |
    block2811c4dcValue0 := OrderedCollection.
    block2811c4dcValue1 := (block2811c4dcValue0) new.
    block2811c4dcValue1
].
            recoveredBlock140PC := 205.
        ].
        recoveredBlock140Step = 205 ifTrue: [
            recoveredBlock140PC := 213.
        ].
        recoveredBlock140Step = 213 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) at: (recoveredBlock140Stack2) ifAbsent: (recoveredBlock140Stack3).
            recoveredBlock140PC := 215.
        ].
        recoveredBlock140Step = 215 ifTrue: [
            recoveredBlock140Local2 := recoveredBlock140Stack1.
            recoveredBlock140PC := 218.
        ].
        recoveredBlock140Step = 218 ifTrue: [
            recoveredBlock140Stack1 := recoveredBlock140Arg1.
            recoveredBlock140PC := 221.
        ].
        recoveredBlock140Step = 221 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) mappingsForType: (recoveredBlock140Stack1).
            recoveredBlock140PC := 223.
        ].
        recoveredBlock140Step = 223 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) values.
            recoveredBlock140PC := 225.
        ].
        recoveredBlock140Step = 225 ifTrue: [
            recoveredBlock140Stack1 := Set.
            recoveredBlock140PC := 227.
        ].
        recoveredBlock140Step = 227 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) new.
            recoveredBlock140PC := 229.
        ].
        recoveredBlock140Step = 229 ifTrue: [
            recoveredBlock140Stack2 := recoveredBlock140Stack1.
            recoveredBlock140PC := 230.
        ].
        recoveredBlock140Step = 230 ifTrue: [
            recoveredBlock140Local1 := recoveredBlock140Stack2.
            recoveredBlock140PC := 233.
        ].
        recoveredBlock140Step = 233 ifTrue: [
            recoveredBlock140Stack2 := [:block2811c500Arg1 :block2811c500Arg2 | 
    | block2811c500Value0 block2811c500Value1 block2811c500Value2 |
    block2811c500Value0 := block2811c500Arg1.
    block2811c500Value1 := block2811c500Arg2.
    (block2811c500Value0) addAll: (block2811c500Value1).
    block2811c500Value2 := block2811c500Arg1.
    block2811c500Value2
].
            recoveredBlock140PC := 235.
        ].
        recoveredBlock140Step = 235 ifTrue: [
            recoveredBlock140PC := 244.
        ].
        recoveredBlock140Step = 244 ifTrue: [
            (recoveredBlock140Stack0) inject: (recoveredBlock140Stack1) into: (recoveredBlock140Stack2).
            recoveredBlock140PC := 246.
        ].
        recoveredBlock140Step = 246 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal8.
            recoveredBlock140PC := 249.
        ].
        recoveredBlock140Step = 249 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) class.
            recoveredBlock140PC := 251.
        ].
        recoveredBlock140Step = 251 ifTrue: [
            recoveredBlock140Stack1 := recoveredBlock140Arg1.
            recoveredBlock140PC := 254.
        ].
        recoveredBlock140Step = 254 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) exportLabelNameForMappingType: (recoveredBlock140Stack1).
            recoveredBlock140PC := 256.
        ].
        recoveredBlock140Step = 256 ifTrue: [
            recoveredLocal7 := recoveredBlock140Stack0.
            recoveredBlock140PC := 259.
        ].
        recoveredBlock140Step = 259 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal5.
            recoveredBlock140PC := 262.
        ].
        recoveredBlock140Step = 262 ifTrue: [
            recoveredBlock140Stack1 := [
    | recoveredBlock140Block262Value0 recoveredBlock140Block262Value1 |
    recoveredBlock140Block262Value0 := recoveredArg1.
    recoveredBlock140Block262Value1 := ('Import from file: ') , (recoveredBlock140Block262Value0).
    recoveredBlock140Block262Value1
].
            recoveredBlock140PC := 276.
        ].
        recoveredBlock140Step = 276 ifTrue: [
            (recoveredBlock140Stack0) addImportantInfoTextBlock: (recoveredBlock140Stack1).
            recoveredBlock140PC := 278.
        ].
        recoveredBlock140Step = 278 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal5.
            recoveredBlock140PC := 281.
        ].
        recoveredBlock140Step = 281 ifTrue: [
            recoveredBlock140Stack1 := 'Import of '.
            recoveredBlock140PC := 283.
        ].
        recoveredBlock140Step = 283 ifTrue: [
            recoveredBlock140Stack2 := recoveredLocal7.
            recoveredBlock140PC := 286.
        ].
        recoveredBlock140Step = 286 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) , (recoveredBlock140Stack2).
            recoveredBlock140PC := 288.
        ].
        recoveredBlock140Step = 288 ifTrue: [
            recoveredBlock140Stack2 := ' started'.
            recoveredBlock140PC := 290.
        ].
        recoveredBlock140Step = 290 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) , (recoveredBlock140Stack2).
            recoveredBlock140PC := 292.
        ].
        recoveredBlock140Step = 292 ifTrue: [
            (recoveredBlock140Stack0) addImportantInfoText: (recoveredBlock140Stack1).
            recoveredBlock140PC := 294.
        ].
        recoveredBlock140Step = 294 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal8.
            recoveredBlock140PC := 297.
        ].
        recoveredBlock140Step = 297 ifTrue: [
            recoveredBlock140Stack1 := recoveredBlock140Local2.
            recoveredBlock140PC := 300.
        ].
        recoveredBlock140Step = 300 ifTrue: [
            recoveredBlock140Stack2 := recoveredLocal8.
            recoveredBlock140PC := 303.
        ].
        recoveredBlock140Step = 303 ifTrue: [
            recoveredBlock140Stack3 := recoveredBlock140Arg1.
            recoveredBlock140PC := 306.
        ].
        recoveredBlock140Step = 306 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) mappingSourceObjectsForType: (recoveredBlock140Stack3).
            recoveredBlock140PC := 308.
        ].
        recoveredBlock140Step = 308 ifTrue: [
            recoveredBlock140Stack3 := recoveredLocal8.
            recoveredBlock140PC := 311.
        ].
        recoveredBlock140Step = 311 ifTrue: [
            recoveredBlock140Stack4 := recoveredBlock140Arg1.
            recoveredBlock140PC := 314.
        ].
        recoveredBlock140Step = 314 ifTrue: [
            recoveredBlock140Stack3 := (recoveredBlock140Stack3) mappingTargetObjectsForType: (recoveredBlock140Stack4).
            recoveredBlock140PC := 316.
        ].
        recoveredBlock140Step = 316 ifTrue: [
            (recoveredBlock140Stack0) mappingsUpdatePropertiesFor: (recoveredBlock140Stack1) sources: (recoveredBlock140Stack2) targets: (recoveredBlock140Stack3).
            recoveredBlock140PC := 319.
        ].
        recoveredBlock140Step = 319 ifTrue: [
            recoveredBlock140Stack0 := recoveredBlock140Local2.
            recoveredBlock140PC := 322.
        ].
        recoveredBlock140Step = 322 ifTrue: [
            recoveredBlock140Stack1 := [:recoveredBlock140Block322Arg1 | 
    | recoveredBlock140Block322Stack0 recoveredBlock140Block322Stack1 recoveredBlock140Block322Stack2 recoveredBlock140Block322Stack3 recoveredBlock140Block322Stack4 recoveredBlock140Block322Stack5 recoveredBlock140Block322PC recoveredBlock140Block322Step recoveredBlock140Block322Done recoveredBlock140Block322Result |
    recoveredBlock140Block322Stack0 := self.
    recoveredBlock140Block322PC := 328.
    recoveredBlock140Block322Done := false.
    [recoveredBlock140Block322Done not] whileTrue: [
        recoveredBlock140Block322Step := recoveredBlock140Block322PC.
        recoveredBlock140Block322Step = 328 ifTrue: [
            recoveredBlock140Block322Stack1 := recoveredLocal1.
            recoveredBlock140Block322PC := 331.
        ].
        recoveredBlock140Block322Step = 331 ifTrue: [
            (recoveredBlock140Block322Stack1) ifTrue: [recoveredBlock140Block322PC := 334] ifFalse: [recoveredBlock140Block322PC := 350].
        ].
        recoveredBlock140Block322Step = 334 ifTrue: [
            recoveredBlock140Block322Stack1 := recoveredBlock140Local3.
            recoveredBlock140Block322PC := 337.
        ].
        recoveredBlock140Block322Step = 337 ifTrue: [
            recoveredBlock140Block322Stack2 := recoveredBlock140Block322Arg1.
            recoveredBlock140Block322PC := 338.
        ].
        recoveredBlock140Block322Step = 338 ifTrue: [
            recoveredBlock140Block322Stack2 := (recoveredBlock140Block322Stack2) sourceObject.
            recoveredBlock140Block322PC := 340.
        ].
        recoveredBlock140Block322Step = 340 ifTrue: [
            recoveredBlock140Block322Stack3 := recoveredBlock140Block322Arg1.
            recoveredBlock140Block322PC := 341.
        ].
        recoveredBlock140Block322Step = 341 ifTrue: [
            recoveredBlock140Block322Stack3 := (recoveredBlock140Block322Stack3) targetObject.
            recoveredBlock140Block322PC := 343.
        ].
        recoveredBlock140Block322Step = 343 ifTrue: [
            recoveredBlock140Block322Stack4 := false.
            recoveredBlock140Block322PC := 344.
        ].
        recoveredBlock140Block322Step = 344 ifTrue: [
            recoveredBlock140Block322Stack1 := (recoveredBlock140Block322Stack1) mapSource: (recoveredBlock140Block322Stack2) toTarget: (recoveredBlock140Block322Stack3) notify: (recoveredBlock140Block322Stack4).
            recoveredBlock140Block322PC := 347.
        ].
        recoveredBlock140Block322Step = 347 ifTrue: [
            recoveredBlock140Block322PC := 363.
        ].
        recoveredBlock140Block322Step = 350 ifTrue: [
            recoveredBlock140Block322Stack1 := self.
            recoveredBlock140Block322PC := 351.
        ].
        recoveredBlock140Block322Step = 351 ifTrue: [
            recoveredBlock140Block322Stack2 := recoveredBlock140Block322Arg1.
            recoveredBlock140Block322PC := 352.
        ].
        recoveredBlock140Block322Step = 352 ifTrue: [
            recoveredBlock140Block322Stack2 := (recoveredBlock140Block322Stack2) sourceObject.
            recoveredBlock140Block322PC := 354.
        ].
        recoveredBlock140Block322Step = 354 ifTrue: [
            recoveredBlock140Block322Stack3 := recoveredBlock140Block322Arg1.
            recoveredBlock140Block322PC := 355.
        ].
        recoveredBlock140Block322Step = 355 ifTrue: [
            recoveredBlock140Block322Stack3 := (recoveredBlock140Block322Stack3) targetObject.
            recoveredBlock140Block322PC := 357.
        ].
        recoveredBlock140Block322Step = 357 ifTrue: [
            recoveredBlock140Block322Stack4 := recoveredBlock140Local1.
            recoveredBlock140Block322PC := 360.
        ].
        recoveredBlock140Block322Step = 360 ifTrue: [
            recoveredBlock140Block322Stack1 := (recoveredBlock140Block322Stack1) mapSource: (recoveredBlock140Block322Stack2) toTarget: (recoveredBlock140Block322Stack3) inMapping: (recoveredBlock140Block322Stack4).
            recoveredBlock140Block322PC := 363.
        ].
        recoveredBlock140Block322Step = 363 ifTrue: [
            recoveredBlock140Block322Result := recoveredBlock140Block322Stack1.
            recoveredBlock140Block322Done := true.
        ].
    ].
    recoveredBlock140Block322Result
].
            recoveredBlock140PC := 364.
        ].
        recoveredBlock140Step = 364 ifTrue: [
            (recoveredBlock140Stack0) do: (recoveredBlock140Stack1).
            recoveredBlock140PC := 366.
        ].
        recoveredBlock140Step = 366 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal1.
            recoveredBlock140PC := 369.
        ].
        recoveredBlock140Step = 369 ifTrue: [
            (recoveredBlock140Stack0) ifTrue: [recoveredBlock140PC := 372] ifFalse: [recoveredBlock140PC := 380].
        ].
        recoveredBlock140Step = 372 ifTrue: [
            recoveredBlock140Stack0 := recoveredBlock140Local3.
            recoveredBlock140PC := 375.
        ].
        recoveredBlock140Step = 375 ifTrue: [
            (recoveredBlock140Stack0) updateListsWithChanged.
            recoveredBlock140PC := 377.
        ].
        recoveredBlock140Step = 377 ifTrue: [
            recoveredBlock140PC := 389.
        ].
        recoveredBlock140Step = 380 ifTrue: [
            recoveredBlock140Stack0 := self.
            recoveredBlock140PC := 381.
        ].
        recoveredBlock140Step = 381 ifTrue: [
            recoveredBlock140Stack1 := recoveredBlock140Arg1.
            recoveredBlock140PC := 384.
        ].
        recoveredBlock140Step = 384 ifTrue: [
            recoveredBlock140Stack2 := recoveredBlock140Local1.
            recoveredBlock140PC := 387.
        ].
        recoveredBlock140Step = 387 ifTrue: [
            (recoveredBlock140Stack0) mappingsForType: (recoveredBlock140Stack1) ensureIncluded: (recoveredBlock140Stack2).
            recoveredBlock140PC := 389.
        ].
        recoveredBlock140Step = 389 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal5.
            recoveredBlock140PC := 392.
        ].
        recoveredBlock140Step = 392 ifTrue: [
            recoveredBlock140Stack1 := [
    | recoveredBlock140Block392Value0 recoveredBlock140Block392Value1 recoveredBlock140Block392Value2 recoveredBlock140Block392Value3 |
    recoveredBlock140Block392Value0 := recoveredBlock140Local2.
    recoveredBlock140Block392Value1 := (recoveredBlock140Block392Value0) size.
    recoveredBlock140Block392Value2 := (recoveredBlock140Block392Value1) printString.
    recoveredBlock140Block392Value3 := (recoveredBlock140Block392Value2) , (' Mappings imported.').
    recoveredBlock140Block392Value3
].
            recoveredBlock140PC := 410.
        ].
        recoveredBlock140Step = 410 ifTrue: [
            (recoveredBlock140Stack0) addImportantInfoTextBlock: (recoveredBlock140Stack1).
            recoveredBlock140PC := 412.
        ].
        recoveredBlock140Step = 412 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal5.
            recoveredBlock140PC := 415.
        ].
        recoveredBlock140Step = 415 ifTrue: [
            recoveredBlock140Stack1 := 'Import of '.
            recoveredBlock140PC := 417.
        ].
        recoveredBlock140Step = 417 ifTrue: [
            recoveredBlock140Stack2 := recoveredLocal7.
            recoveredBlock140PC := 420.
        ].
        recoveredBlock140Step = 420 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) , (recoveredBlock140Stack2).
            recoveredBlock140PC := 422.
        ].
        recoveredBlock140Step = 422 ifTrue: [
            recoveredBlock140Stack2 := ' completed'.
            recoveredBlock140PC := 424.
        ].
        recoveredBlock140Step = 424 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) , (recoveredBlock140Stack2).
            recoveredBlock140PC := 426.
        ].
        recoveredBlock140Step = 426 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) addImportantInfoText: (recoveredBlock140Stack1).
            recoveredBlock140PC := 428.
        ].
        recoveredBlock140Step = 428 ifTrue: [
            recoveredBlock140Result := recoveredBlock140Stack0.
            recoveredBlock140Done := true.
        ].
    ].
    recoveredBlock140Result
].
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20623e60; bytecode file offset 0xf207c0"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
parameterMappingsType: recoveredArg1 updatePropertiesForSourceObjects: recoveredArg2 targetObjects: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappedCalibrationParameter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) convertMappedCalibrationParameter.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkConversionToMultiMappingNeeded.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) convertToASDV621.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterMappingType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsCopyForType: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 recoveredBlock60Value8 recoveredBlock60Value9 |
    recoveredBlock60Value0 := recoveredLocal2.
    recoveredBlock60Value1 := recoveredBlock60Arg1.
    recoveredBlock60Value2 := (recoveredBlock60Value1) displayName.
    recoveredBlock60Value3 := OrderedCollection.
    recoveredBlock60Value4 := ASDMappingObject.
    recoveredBlock60Value5 := (recoveredBlock60Value4) create.
    recoveredBlock60Value6 := recoveredBlock60Arg1.
    recoveredBlock60Value7 := (recoveredBlock60Value5) sourceObject: (recoveredBlock60Value6).
    recoveredBlock60Value8 := (recoveredBlock60Value3) with: (recoveredBlock60Value7).
    recoveredBlock60Value9 := (recoveredBlock60Value0) at: (recoveredBlock60Value2) put: (recoveredBlock60Value8).
    recoveredBlock60Value9
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 559.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappingsAtType: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) convertToASDV621.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsCopyForType: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := [:recoveredBlock141Arg1 | 
    | recoveredBlock141Value0 recoveredBlock141Value1 recoveredBlock141Value2 |
    recoveredBlock141Value0 := recoveredBlock141Arg1.
    recoveredBlock141Value1 := [:recoveredBlock141Block149Arg1 | 
    | recoveredBlock141Block149Stack0 recoveredBlock141Block149Stack1 recoveredBlock141Block149Stack2 recoveredBlock141Block149Stack3 recoveredBlock141Block149Stack4 recoveredBlock141Block149PC recoveredBlock141Block149Step recoveredBlock141Block149Done recoveredBlock141Block149Result |
    recoveredBlock141Block149Stack0 := nil.
    recoveredBlock141Block149PC := 156.
    recoveredBlock141Block149Done := false.
    [recoveredBlock141Block149Done not] whileTrue: [
        recoveredBlock141Block149Step := recoveredBlock141Block149PC.
        recoveredBlock141Block149Step = 156 ifTrue: [
            recoveredBlock141Block149Stack1 := nil.
            recoveredBlock141Block149PC := 157.
        ].
        recoveredBlock141Block149Step = 157 ifTrue: [
            recoveredBlock141Block149Stack2 := recoveredArg2.
            recoveredBlock141Block149PC := 160.
        ].
        recoveredBlock141Block149Step = 160 ifTrue: [
            recoveredBlock141Block149Stack3 := [:recoveredBlock141Block149Block160Arg1 | 
    | recoveredBlock141Block149Block160Value0 recoveredBlock141Block149Block160Value1 recoveredBlock141Block149Block160Value2 recoveredBlock141Block149Block160Value3 recoveredBlock141Block149Block160Value4 recoveredBlock141Block149Block160Value5 |
    recoveredBlock141Block149Block160Value0 := recoveredBlock141Block149Block160Arg1.
    recoveredBlock141Block149Block160Value1 := (recoveredBlock141Block149Block160Value0) displayName.
    recoveredBlock141Block149Block160Value2 := recoveredBlock141Block149Arg1.
    recoveredBlock141Block149Block160Value3 := (recoveredBlock141Block149Block160Value2) sourceObject.
    recoveredBlock141Block149Block160Value4 := (recoveredBlock141Block149Block160Value3) displayName.
    recoveredBlock141Block149Block160Value5 := (recoveredBlock141Block149Block160Value1) = (recoveredBlock141Block149Block160Value4).
    recoveredBlock141Block149Block160Value5
].
            recoveredBlock141Block149PC := 178.
        ].
        recoveredBlock141Block149Step = 178 ifTrue: [
            recoveredBlock141Block149Stack2 := (recoveredBlock141Block149Stack2) anySatisfy: (recoveredBlock141Block149Stack3).
            recoveredBlock141Block149PC := 180.
        ].
        recoveredBlock141Block149Step = 180 ifTrue: [
            (recoveredBlock141Block149Stack2) ifTrue: [recoveredBlock141Block149PC := 217] ifFalse: [recoveredBlock141Block149PC := 184].
        ].
        recoveredBlock141Block149Step = 184 ifTrue: [
            recoveredBlock141Block149PC := 185.
        ].
        recoveredBlock141Block149Step = 185 ifTrue: [
            recoveredBlock141Block149Stack1 := recoveredBlock141Block149Arg1.
            recoveredBlock141Block149PC := 188.
        ].
        recoveredBlock141Block149Step = 188 ifTrue: [
            recoveredBlock141Block149Stack1 := (recoveredBlock141Block149Stack1) sourceObject.
            recoveredBlock141Block149PC := 190.
        ].
        recoveredBlock141Block149Step = 190 ifTrue: [
            recoveredBlock141Block149Stack2 := 'GeneralUnknown'.
            recoveredBlock141Block149PC := 192.
        ].
        recoveredBlock141Block149Step = 192 ifTrue: [
            (recoveredBlock141Block149Stack1) visualCallBackImageType: (recoveredBlock141Block149Stack2).
            recoveredBlock141Block149PC := 194.
        ].
        recoveredBlock141Block149Step = 194 ifTrue: [
            recoveredBlock141Block149Stack1 := recoveredBlock141Block149Arg1.
            recoveredBlock141Block149PC := 197.
        ].
        recoveredBlock141Block149Step = 197 ifTrue: [
            recoveredBlock141Block149Stack1 := (recoveredBlock141Block149Stack1) sourceObject.
            recoveredBlock141Block149PC := 199.
        ].
        recoveredBlock141Block149Step = 199 ifTrue: [
            recoveredBlock141Block149Stack2 := 'GeneralUnknown'.
            recoveredBlock141Block149PC := 201.
        ].
        recoveredBlock141Block149Step = 201 ifTrue: [
            (recoveredBlock141Block149Stack1) visualCallBackImageElement: (recoveredBlock141Block149Stack2).
            recoveredBlock141Block149PC := 203.
        ].
        recoveredBlock141Block149Step = 203 ifTrue: [
            recoveredBlock141Block149Stack1 := recoveredBlock141Block149Arg1.
            recoveredBlock141Block149PC := 206.
        ].
        recoveredBlock141Block149Step = 206 ifTrue: [
            recoveredBlock141Block149Stack1 := (recoveredBlock141Block149Stack1) sourceObject.
            recoveredBlock141Block149PC := 208.
        ].
        recoveredBlock141Block149Step = 208 ifTrue: [
            recoveredBlock141Block149Stack2 := true.
            recoveredBlock141Block149PC := 209.
        ].
        recoveredBlock141Block149Step = 209 ifTrue: [
            (recoveredBlock141Block149Stack1) missing: (recoveredBlock141Block149Stack2).
            recoveredBlock141Block149PC := 211.
        ].
        recoveredBlock141Block149Step = 211 ifTrue: [
            recoveredBlock141Block149Stack1 := recoveredBlock141Block149Arg1.
            recoveredBlock141Block149PC := 214.
        ].
        recoveredBlock141Block149Step = 214 ifTrue: [
            recoveredBlock141Block149Stack2 := false.
            recoveredBlock141Block149PC := 215.
        ].
        recoveredBlock141Block149Step = 215 ifTrue: [
            recoveredBlock141Block149Stack1 := (recoveredBlock141Block149Stack1) mappingState: (recoveredBlock141Block149Stack2).
            recoveredBlock141Block149PC := 217.
        ].
        recoveredBlock141Block149Step = 217 ifTrue: [
            recoveredBlock141Block149Result := recoveredBlock141Block149Stack1.
            recoveredBlock141Block149Done := true.
        ].
    ].
    recoveredBlock141Block149Result
].
    recoveredBlock141Value2 := (recoveredBlock141Value0) do: (recoveredBlock141Value1).
    recoveredBlock141Value2
].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := [:recoveredBlock226Arg1 | 
    | recoveredBlock226Local1 recoveredBlock226Stack0 recoveredBlock226Stack1 recoveredBlock226Stack2 recoveredBlock226Stack3 recoveredBlock226Stack4 recoveredBlock226Stack5 recoveredBlock226Stack6 recoveredBlock226PC recoveredBlock226Step recoveredBlock226Done recoveredBlock226Result |
    recoveredBlock226Stack0 := self.
    recoveredBlock226PC := 232.
    recoveredBlock226Done := false.
    [recoveredBlock226Done not] whileTrue: [
        recoveredBlock226Step := recoveredBlock226PC.
        recoveredBlock226Step = 232 ifTrue: [
            recoveredBlock226Stack1 := recoveredLocal2.
            recoveredBlock226PC := 235.
        ].
        recoveredBlock226Step = 235 ifTrue: [
            recoveredBlock226Stack2 := recoveredBlock226Arg1.
            recoveredBlock226PC := 238.
        ].
        recoveredBlock226Step = 238 ifTrue: [
            recoveredBlock226Stack2 := (recoveredBlock226Stack2) displayName.
            recoveredBlock226PC := 240.
        ].
        recoveredBlock226Step = 240 ifTrue: [
            recoveredBlock226Stack3 := [].
            recoveredBlock226PC := 242.
        ].
        recoveredBlock226Step = 242 ifTrue: [
            recoveredBlock226Stack1 := (recoveredBlock226Stack1) at: (recoveredBlock226Stack2) ifAbsent: (recoveredBlock226Stack3).
            recoveredBlock226PC := 244.
        ].
        recoveredBlock226Step = 244 ifTrue: [
            recoveredBlock226Local1 := recoveredBlock226Stack1.
            recoveredBlock226PC := 247.
        ].
        recoveredBlock226Step = 247 ifTrue: [
            recoveredBlock226Stack1 := recoveredBlock226Local1.
            recoveredBlock226PC := 250.
        ].
        recoveredBlock226Step = 250 ifTrue: [
            (recoveredBlock226Stack1 ~~ nil) ifTrue: [recoveredBlock226PC := 280] ifFalse: [recoveredBlock226PC := 254].
        ].
        recoveredBlock226Step = 254 ifTrue: [
            recoveredBlock226Stack1 := recoveredLocal2.
            recoveredBlock226PC := 257.
        ].
        recoveredBlock226Step = 257 ifTrue: [
            recoveredBlock226Stack2 := recoveredBlock226Arg1.
            recoveredBlock226PC := 260.
        ].
        recoveredBlock226Step = 260 ifTrue: [
            recoveredBlock226Stack2 := (recoveredBlock226Stack2) displayName.
            recoveredBlock226PC := 262.
        ].
        recoveredBlock226Step = 262 ifTrue: [
            recoveredBlock226Stack3 := OrderedCollection.
            recoveredBlock226PC := 264.
        ].
        recoveredBlock226Step = 264 ifTrue: [
            recoveredBlock226Stack4 := ASDMappingObject.
            recoveredBlock226PC := 266.
        ].
        recoveredBlock226Step = 266 ifTrue: [
            recoveredBlock226Stack4 := (recoveredBlock226Stack4) create.
            recoveredBlock226PC := 268.
        ].
        recoveredBlock226Step = 268 ifTrue: [
            recoveredBlock226Stack5 := recoveredBlock226Arg1.
            recoveredBlock226PC := 271.
        ].
        recoveredBlock226Step = 271 ifTrue: [
            recoveredBlock226Stack4 := (recoveredBlock226Stack4) sourceObject: (recoveredBlock226Stack5).
            recoveredBlock226PC := 273.
        ].
        recoveredBlock226Step = 273 ifTrue: [
            recoveredBlock226Stack3 := (recoveredBlock226Stack3) with: (recoveredBlock226Stack4).
            recoveredBlock226PC := 275.
        ].
        recoveredBlock226Step = 275 ifTrue: [
            recoveredBlock226Stack1 := (recoveredBlock226Stack1) at: (recoveredBlock226Stack2) put: (recoveredBlock226Stack3).
            recoveredBlock226PC := 277.
        ].
        recoveredBlock226Step = 277 ifTrue: [
            recoveredBlock226PC := 552.
        ].
        recoveredBlock226Step = 280 ifTrue: [
            recoveredBlock226Stack1 := recoveredBlock226Local1.
            recoveredBlock226PC := 283.
        ].
        recoveredBlock226Step = 283 ifTrue: [
            recoveredBlock226Stack2 := [:recoveredBlock226Block283Arg1 | 
    | recoveredBlock226Block283Stack0 recoveredBlock226Block283Stack1 recoveredBlock226Block283Stack2 recoveredBlock226Block283Stack3 recoveredBlock226Block283Stack4 recoveredBlock226Block283Stack5 recoveredBlock226Block283PC recoveredBlock226Block283Step recoveredBlock226Block283Done recoveredBlock226Block283Result |
    recoveredBlock226Block283Stack0 := self.
    recoveredBlock226Block283PC := 290.
    recoveredBlock226Block283Done := false.
    [recoveredBlock226Block283Done not] whileTrue: [
        recoveredBlock226Block283Step := recoveredBlock226Block283PC.
        recoveredBlock226Block283Step = 290 ifTrue: [
            recoveredBlock226Block283Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283PC := 293.
        ].
        recoveredBlock226Block283Step = 293 ifTrue: [
            recoveredBlock226Block283Stack1 := (recoveredBlock226Block283Stack1) sourceObject.
            recoveredBlock226Block283PC := 295.
        ].
        recoveredBlock226Block283Step = 295 ifTrue: [
            recoveredBlock226Block283Stack1 := (recoveredBlock226Block283Stack1) elementOIDChain.
            recoveredBlock226Block283PC := 297.
        ].
        recoveredBlock226Block283Step = 297 ifTrue: [
            recoveredBlock226Block283Stack2 := [
    | recoveredBlock226Block283Block297Value0 recoveredBlock226Block283Block297Value1 recoveredBlock226Block283Block297Value2 recoveredBlock226Block283Block297Value3 recoveredBlock226Block283Block297Value4 |
    recoveredBlock226Block283Block297Value0 := recoveredBlock226Block283Arg1.
    recoveredBlock226Block283Block297Value1 := (recoveredBlock226Block283Block297Value0) sourceObject.
    recoveredBlock226Block283Block297Value2 := recoveredBlock226Arg1.
    recoveredBlock226Block283Block297Value3 := (recoveredBlock226Block283Block297Value2) elementOIDChain.
    recoveredBlock226Block283Block297Value4 := (recoveredBlock226Block283Block297Value1) elementOIDChain: (recoveredBlock226Block283Block297Value3).
    recoveredBlock226Block283Block297Value4
].
            recoveredBlock226Block283PC := 317.
        ].
        recoveredBlock226Block283Step = 317 ifTrue: [
            (recoveredBlock226Block283Stack1) ifNil: (recoveredBlock226Block283Stack2).
            recoveredBlock226Block283PC := 319.
        ].
        recoveredBlock226Block283Step = 319 ifTrue: [
            recoveredBlock226Block283Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283PC := 322.
        ].
        recoveredBlock226Block283Step = 322 ifTrue: [
            recoveredBlock226Block283Stack1 := (recoveredBlock226Block283Stack1) sourceObject.
            recoveredBlock226Block283PC := 324.
        ].
        recoveredBlock226Block283Step = 324 ifTrue: [
            recoveredBlock226Block283Stack2 := recoveredBlock226Arg1.
            recoveredBlock226Block283PC := 327.
        ].
        recoveredBlock226Block283Step = 327 ifTrue: [
            recoveredBlock226Block283Stack2 := (recoveredBlock226Block283Stack2) item.
            recoveredBlock226Block283PC := 329.
        ].
        recoveredBlock226Block283Step = 329 ifTrue: [
            (recoveredBlock226Block283Stack1) item: (recoveredBlock226Block283Stack2).
            recoveredBlock226Block283PC := 331.
        ].
        recoveredBlock226Block283Step = 331 ifTrue: [
            recoveredBlock226Block283Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283PC := 334.
        ].
        recoveredBlock226Block283Step = 334 ifTrue: [
            recoveredBlock226Block283Stack1 := (recoveredBlock226Block283Stack1) sourceObject.
            recoveredBlock226Block283PC := 336.
        ].
        recoveredBlock226Block283Step = 336 ifTrue: [
            recoveredBlock226Block283Stack2 := recoveredBlock226Arg1.
            recoveredBlock226Block283PC := 339.
        ].
        recoveredBlock226Block283Step = 339 ifTrue: [
            recoveredBlock226Block283Stack2 := (recoveredBlock226Block283Stack2) modelType.
            recoveredBlock226Block283PC := 341.
        ].
        recoveredBlock226Block283Step = 341 ifTrue: [
            (recoveredBlock226Block283Stack1) modelType: (recoveredBlock226Block283Stack2).
            recoveredBlock226Block283PC := 343.
        ].
        recoveredBlock226Block283Step = 343 ifTrue: [
            recoveredBlock226Block283Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283PC := 346.
        ].
        recoveredBlock226Block283Step = 346 ifTrue: [
            recoveredBlock226Block283Stack1 := (recoveredBlock226Block283Stack1) sourceObject.
            recoveredBlock226Block283PC := 348.
        ].
        recoveredBlock226Block283Step = 348 ifTrue: [
            recoveredBlock226Block283Stack2 := recoveredBlock226Arg1.
            recoveredBlock226Block283PC := 351.
        ].
        recoveredBlock226Block283Step = 351 ifTrue: [
            recoveredBlock226Block283Stack2 := (recoveredBlock226Block283Stack2) visualCallBackImageType.
            recoveredBlock226Block283PC := 353.
        ].
        recoveredBlock226Block283Step = 353 ifTrue: [
            (recoveredBlock226Block283Stack1) visualCallBackImageType: (recoveredBlock226Block283Stack2).
            recoveredBlock226Block283PC := 355.
        ].
        recoveredBlock226Block283Step = 355 ifTrue: [
            recoveredBlock226Block283Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283PC := 358.
        ].
        recoveredBlock226Block283Step = 358 ifTrue: [
            recoveredBlock226Block283Stack1 := (recoveredBlock226Block283Stack1) sourceObject.
            recoveredBlock226Block283PC := 360.
        ].
        recoveredBlock226Block283Step = 360 ifTrue: [
            recoveredBlock226Block283Stack2 := recoveredBlock226Arg1.
            recoveredBlock226Block283PC := 363.
        ].
        recoveredBlock226Block283Step = 363 ifTrue: [
            recoveredBlock226Block283Stack2 := (recoveredBlock226Block283Stack2) visualCallBackImageElement.
            recoveredBlock226Block283PC := 365.
        ].
        recoveredBlock226Block283Step = 365 ifTrue: [
            (recoveredBlock226Block283Stack1) visualCallBackImageElement: (recoveredBlock226Block283Stack2).
            recoveredBlock226Block283PC := 367.
        ].
        recoveredBlock226Block283Step = 367 ifTrue: [
            recoveredBlock226Block283Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283PC := 370.
        ].
        recoveredBlock226Block283Step = 370 ifTrue: [
            recoveredBlock226Block283Stack1 := (recoveredBlock226Block283Stack1) sourceObject.
            recoveredBlock226Block283PC := 372.
        ].
        recoveredBlock226Block283Step = 372 ifTrue: [
            recoveredBlock226Block283Stack2 := false.
            recoveredBlock226Block283PC := 373.
        ].
        recoveredBlock226Block283Step = 373 ifTrue: [
            (recoveredBlock226Block283Stack1) missing: (recoveredBlock226Block283Stack2).
            recoveredBlock226Block283PC := 375.
        ].
        recoveredBlock226Block283Step = 375 ifTrue: [
            recoveredBlock226Block283Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283PC := 378.
        ].
        recoveredBlock226Block283Step = 378 ifTrue: [
            recoveredBlock226Block283Stack2 := nil.
            recoveredBlock226Block283PC := 379.
        ].
        recoveredBlock226Block283Step = 379 ifTrue: [
            (recoveredBlock226Block283Stack1) mappingState: (recoveredBlock226Block283Stack2).
            recoveredBlock226Block283PC := 381.
        ].
        recoveredBlock226Block283Step = 381 ifTrue: [
            recoveredBlock226Block283Stack1 := nil.
            recoveredBlock226Block283PC := 382.
        ].
        recoveredBlock226Block283Step = 382 ifTrue: [
            recoveredBlock226Block283Stack2 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283PC := 385.
        ].
        recoveredBlock226Block283Step = 385 ifTrue: [
            recoveredBlock226Block283Stack2 := (recoveredBlock226Block283Stack2) targetObject.
            recoveredBlock226Block283PC := 387.
        ].
        recoveredBlock226Block283Step = 387 ifTrue: [
            (recoveredBlock226Block283Stack2 == nil) ifTrue: [recoveredBlock226Block283PC := 549] ifFalse: [recoveredBlock226Block283PC := 390].
        ].
        recoveredBlock226Block283Step = 390 ifTrue: [
            recoveredBlock226Block283PC := 391.
        ].
        recoveredBlock226Block283Step = 391 ifTrue: [
            recoveredBlock226Block283Stack1 := recoveredArg3.
            recoveredBlock226Block283PC := 394.
        ].
        recoveredBlock226Block283Step = 394 ifTrue: [
            recoveredBlock226Block283Stack2 := [:recoveredBlock226Block283Block394Arg1 | 
    | recoveredBlock226Block283Block394Value0 recoveredBlock226Block283Block394Value1 recoveredBlock226Block283Block394Value2 recoveredBlock226Block283Block394Value3 recoveredBlock226Block283Block394Value4 recoveredBlock226Block283Block394Value5 |
    recoveredBlock226Block283Block394Value0 := recoveredBlock226Block283Block394Arg1.
    recoveredBlock226Block283Block394Value1 := (recoveredBlock226Block283Block394Value0) displayName.
    recoveredBlock226Block283Block394Value2 := recoveredBlock226Block283Arg1.
    recoveredBlock226Block283Block394Value3 := (recoveredBlock226Block283Block394Value2) targetObject.
    recoveredBlock226Block283Block394Value4 := (recoveredBlock226Block283Block394Value3) displayName.
    recoveredBlock226Block283Block394Value5 := (recoveredBlock226Block283Block394Value1) = (recoveredBlock226Block283Block394Value4).
    recoveredBlock226Block283Block394Value5
].
            recoveredBlock226Block283PC := 412.
        ].
        recoveredBlock226Block283Step = 412 ifTrue: [
            recoveredBlock226Block283Stack3 := [
    | recoveredBlock226Block283Block412Stack0 recoveredBlock226Block283Block412Stack1 recoveredBlock226Block283Block412Stack2 recoveredBlock226Block283Block412Stack3 recoveredBlock226Block283Block412PC recoveredBlock226Block283Block412Step recoveredBlock226Block283Block412Done recoveredBlock226Block283Block412Result |
    recoveredBlock226Block283Block412Stack0 := nil.
    recoveredBlock226Block283Block412PC := 418.
    recoveredBlock226Block283Block412Done := false.
    [recoveredBlock226Block283Block412Done not] whileTrue: [
        recoveredBlock226Block283Block412Step := recoveredBlock226Block283Block412PC.
        recoveredBlock226Block283Block412Step = 418 ifTrue: [
            recoveredBlock226Block283Block412Stack1 := nil.
            recoveredBlock226Block283Block412PC := 419.
        ].
        recoveredBlock226Block283Block412Step = 419 ifTrue: [
            recoveredBlock226Block283Block412Stack2 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block412PC := 422.
        ].
        recoveredBlock226Block283Block412Step = 422 ifTrue: [
            recoveredBlock226Block283Block412Stack2 := (recoveredBlock226Block283Block412Stack2) targetObject.
            recoveredBlock226Block283Block412PC := 424.
        ].
        recoveredBlock226Block283Block412Step = 424 ifTrue: [
            (recoveredBlock226Block283Block412Stack2 == nil) ifTrue: [recoveredBlock226Block283Block412PC := 461] ifFalse: [recoveredBlock226Block283Block412PC := 428].
        ].
        recoveredBlock226Block283Block412Step = 428 ifTrue: [
            recoveredBlock226Block283Block412PC := 429.
        ].
        recoveredBlock226Block283Block412Step = 429 ifTrue: [
            recoveredBlock226Block283Block412Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block412PC := 432.
        ].
        recoveredBlock226Block283Block412Step = 432 ifTrue: [
            recoveredBlock226Block283Block412Stack1 := (recoveredBlock226Block283Block412Stack1) targetObject.
            recoveredBlock226Block283Block412PC := 434.
        ].
        recoveredBlock226Block283Block412Step = 434 ifTrue: [
            recoveredBlock226Block283Block412Stack2 := 'GeneralUnknown'.
            recoveredBlock226Block283Block412PC := 436.
        ].
        recoveredBlock226Block283Block412Step = 436 ifTrue: [
            (recoveredBlock226Block283Block412Stack1) visualCallBackImageType: (recoveredBlock226Block283Block412Stack2).
            recoveredBlock226Block283Block412PC := 438.
        ].
        recoveredBlock226Block283Block412Step = 438 ifTrue: [
            recoveredBlock226Block283Block412Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block412PC := 441.
        ].
        recoveredBlock226Block283Block412Step = 441 ifTrue: [
            recoveredBlock226Block283Block412Stack1 := (recoveredBlock226Block283Block412Stack1) targetObject.
            recoveredBlock226Block283Block412PC := 443.
        ].
        recoveredBlock226Block283Block412Step = 443 ifTrue: [
            recoveredBlock226Block283Block412Stack2 := 'GeneralUnknown'.
            recoveredBlock226Block283Block412PC := 445.
        ].
        recoveredBlock226Block283Block412Step = 445 ifTrue: [
            (recoveredBlock226Block283Block412Stack1) visualCallBackImageElement: (recoveredBlock226Block283Block412Stack2).
            recoveredBlock226Block283Block412PC := 447.
        ].
        recoveredBlock226Block283Block412Step = 447 ifTrue: [
            recoveredBlock226Block283Block412Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block412PC := 450.
        ].
        recoveredBlock226Block283Block412Step = 450 ifTrue: [
            recoveredBlock226Block283Block412Stack1 := (recoveredBlock226Block283Block412Stack1) targetObject.
            recoveredBlock226Block283Block412PC := 452.
        ].
        recoveredBlock226Block283Block412Step = 452 ifTrue: [
            recoveredBlock226Block283Block412Stack2 := true.
            recoveredBlock226Block283Block412PC := 453.
        ].
        recoveredBlock226Block283Block412Step = 453 ifTrue: [
            (recoveredBlock226Block283Block412Stack1) missing: (recoveredBlock226Block283Block412Stack2).
            recoveredBlock226Block283Block412PC := 455.
        ].
        recoveredBlock226Block283Block412Step = 455 ifTrue: [
            recoveredBlock226Block283Block412Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block412PC := 458.
        ].
        recoveredBlock226Block283Block412Step = 458 ifTrue: [
            recoveredBlock226Block283Block412Stack2 := false.
            recoveredBlock226Block283Block412PC := 459.
        ].
        recoveredBlock226Block283Block412Step = 459 ifTrue: [
            recoveredBlock226Block283Block412Stack1 := (recoveredBlock226Block283Block412Stack1) mappingState: (recoveredBlock226Block283Block412Stack2).
            recoveredBlock226Block283Block412PC := 461.
        ].
        recoveredBlock226Block283Block412Step = 461 ifTrue: [
            recoveredBlock226Block283Block412Result := recoveredBlock226Block283Block412Stack1.
            recoveredBlock226Block283Block412Done := true.
        ].
    ].
    recoveredBlock226Block283Block412Result
].
            recoveredBlock226Block283PC := 462.
        ].
        recoveredBlock226Block283Step = 462 ifTrue: [
            recoveredBlock226Block283Stack4 := [:recoveredBlock226Block283Block462Arg1 | 
    | recoveredBlock226Block283Block462Stack0 recoveredBlock226Block283Block462Stack1 recoveredBlock226Block283Block462Stack2 recoveredBlock226Block283Block462Stack3 recoveredBlock226Block283Block462Stack4 recoveredBlock226Block283Block462Stack5 recoveredBlock226Block283Block462PC recoveredBlock226Block283Block462Step recoveredBlock226Block283Block462Done recoveredBlock226Block283Block462Result |
    recoveredBlock226Block283Block462Stack0 := self.
    recoveredBlock226Block283Block462PC := 468.
    recoveredBlock226Block283Block462Done := false.
    [recoveredBlock226Block283Block462Done not] whileTrue: [
        recoveredBlock226Block283Block462Step := recoveredBlock226Block283Block462PC.
        recoveredBlock226Block283Block462Step = 468 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := nil.
            recoveredBlock226Block283Block462PC := 469.
        ].
        recoveredBlock226Block283Block462Step = 469 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block462PC := 472.
        ].
        recoveredBlock226Block283Block462Step = 472 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := (recoveredBlock226Block283Block462Stack2) targetObject.
            recoveredBlock226Block283Block462PC := 474.
        ].
        recoveredBlock226Block283Block462Step = 474 ifTrue: [
            (recoveredBlock226Block283Block462Stack2 == nil) ifTrue: [recoveredBlock226Block283Block462PC := 545] ifFalse: [recoveredBlock226Block283Block462PC := 478].
        ].
        recoveredBlock226Block283Block462Step = 478 ifTrue: [
            recoveredBlock226Block283Block462PC := 479.
        ].
        recoveredBlock226Block283Block462Step = 479 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block462PC := 482.
        ].
        recoveredBlock226Block283Block462Step = 482 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := (recoveredBlock226Block283Block462Stack1) targetObject.
            recoveredBlock226Block283Block462PC := 484.
        ].
        recoveredBlock226Block283Block462Step = 484 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := recoveredBlock226Block283Block462Arg1.
            recoveredBlock226Block283Block462PC := 485.
        ].
        recoveredBlock226Block283Block462Step = 485 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := (recoveredBlock226Block283Block462Stack2) item.
            recoveredBlock226Block283Block462PC := 487.
        ].
        recoveredBlock226Block283Block462Step = 487 ifTrue: [
            (recoveredBlock226Block283Block462Stack1) item: (recoveredBlock226Block283Block462Stack2).
            recoveredBlock226Block283Block462PC := 489.
        ].
        recoveredBlock226Block283Block462Step = 489 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block462PC := 492.
        ].
        recoveredBlock226Block283Block462Step = 492 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := (recoveredBlock226Block283Block462Stack1) targetObject.
            recoveredBlock226Block283Block462PC := 494.
        ].
        recoveredBlock226Block283Block462Step = 494 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := recoveredBlock226Block283Block462Arg1.
            recoveredBlock226Block283Block462PC := 495.
        ].
        recoveredBlock226Block283Block462Step = 495 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := (recoveredBlock226Block283Block462Stack2) modelType.
            recoveredBlock226Block283Block462PC := 497.
        ].
        recoveredBlock226Block283Block462Step = 497 ifTrue: [
            (recoveredBlock226Block283Block462Stack1) modelType: (recoveredBlock226Block283Block462Stack2).
            recoveredBlock226Block283Block462PC := 499.
        ].
        recoveredBlock226Block283Block462Step = 499 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block462PC := 502.
        ].
        recoveredBlock226Block283Block462Step = 502 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := (recoveredBlock226Block283Block462Stack1) targetObject.
            recoveredBlock226Block283Block462PC := 504.
        ].
        recoveredBlock226Block283Block462Step = 504 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := recoveredBlock226Block283Block462Arg1.
            recoveredBlock226Block283Block462PC := 505.
        ].
        recoveredBlock226Block283Block462Step = 505 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := (recoveredBlock226Block283Block462Stack2) visualCallBackImageType.
            recoveredBlock226Block283Block462PC := 507.
        ].
        recoveredBlock226Block283Block462Step = 507 ifTrue: [
            (recoveredBlock226Block283Block462Stack1) visualCallBackImageType: (recoveredBlock226Block283Block462Stack2).
            recoveredBlock226Block283Block462PC := 509.
        ].
        recoveredBlock226Block283Block462Step = 509 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block462PC := 512.
        ].
        recoveredBlock226Block283Block462Step = 512 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := (recoveredBlock226Block283Block462Stack1) targetObject.
            recoveredBlock226Block283Block462PC := 514.
        ].
        recoveredBlock226Block283Block462Step = 514 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := recoveredBlock226Block283Block462Arg1.
            recoveredBlock226Block283Block462PC := 515.
        ].
        recoveredBlock226Block283Block462Step = 515 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := (recoveredBlock226Block283Block462Stack2) visualCallBackImageElement.
            recoveredBlock226Block283Block462PC := 517.
        ].
        recoveredBlock226Block283Block462Step = 517 ifTrue: [
            (recoveredBlock226Block283Block462Stack1) visualCallBackImageElement: (recoveredBlock226Block283Block462Stack2).
            recoveredBlock226Block283Block462PC := 519.
        ].
        recoveredBlock226Block283Block462Step = 519 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block462PC := 522.
        ].
        recoveredBlock226Block283Block462Step = 522 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := (recoveredBlock226Block283Block462Stack1) targetObject.
            recoveredBlock226Block283Block462PC := 524.
        ].
        recoveredBlock226Block283Block462Step = 524 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := false.
            recoveredBlock226Block283Block462PC := 525.
        ].
        recoveredBlock226Block283Block462Step = 525 ifTrue: [
            (recoveredBlock226Block283Block462Stack1) missing: (recoveredBlock226Block283Block462Stack2).
            recoveredBlock226Block283Block462PC := 527.
        ].
        recoveredBlock226Block283Block462Step = 527 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block462PC := 530.
        ].
        recoveredBlock226Block283Block462Step = 530 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := self.
            recoveredBlock226Block283Block462PC := 531.
        ].
        recoveredBlock226Block283Block462Step = 531 ifTrue: [
            recoveredBlock226Block283Block462Stack3 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block462PC := 534.
        ].
        recoveredBlock226Block283Block462Step = 534 ifTrue: [
            recoveredBlock226Block283Block462Stack3 := (recoveredBlock226Block283Block462Stack3) sourceObject.
            recoveredBlock226Block283Block462PC := 536.
        ].
        recoveredBlock226Block283Block462Step = 536 ifTrue: [
            recoveredBlock226Block283Block462Stack4 := recoveredBlock226Block283Arg1.
            recoveredBlock226Block283Block462PC := 539.
        ].
        recoveredBlock226Block283Block462Step = 539 ifTrue: [
            recoveredBlock226Block283Block462Stack4 := (recoveredBlock226Block283Block462Stack4) targetObject.
            recoveredBlock226Block283Block462PC := 541.
        ].
        recoveredBlock226Block283Block462Step = 541 ifTrue: [
            recoveredBlock226Block283Block462Stack2 := (recoveredBlock226Block283Block462Stack2) isMappingValidForSource: (recoveredBlock226Block283Block462Stack3) forTarget: (recoveredBlock226Block283Block462Stack4).
            recoveredBlock226Block283Block462PC := 543.
        ].
        recoveredBlock226Block283Block462Step = 543 ifTrue: [
            recoveredBlock226Block283Block462Stack1 := (recoveredBlock226Block283Block462Stack1) mappingState: (recoveredBlock226Block283Block462Stack2).
            recoveredBlock226Block283Block462PC := 545.
        ].
        recoveredBlock226Block283Block462Step = 545 ifTrue: [
            recoveredBlock226Block283Block462Result := recoveredBlock226Block283Block462Stack1.
            recoveredBlock226Block283Block462Done := true.
        ].
    ].
    recoveredBlock226Block283Block462Result
].
            recoveredBlock226Block283PC := 546.
        ].
        recoveredBlock226Block283Step = 546 ifTrue: [
            recoveredBlock226Block283Stack1 := (recoveredBlock226Block283Stack1) detect: (recoveredBlock226Block283Stack2) ifNone: (recoveredBlock226Block283Stack3) ifOne: (recoveredBlock226Block283Stack4).
            recoveredBlock226Block283PC := 549.
        ].
        recoveredBlock226Block283Step = 549 ifTrue: [
            recoveredBlock226Block283Result := recoveredBlock226Block283Stack1.
            recoveredBlock226Block283Done := true.
        ].
    ].
    recoveredBlock226Block283Result
].
            recoveredBlock226PC := 550.
        ].
        recoveredBlock226Step = 550 ifTrue: [
            recoveredBlock226Stack1 := (recoveredBlock226Stack1) do: (recoveredBlock226Stack2).
            recoveredBlock226PC := 552.
        ].
        recoveredBlock226Step = 552 ifTrue: [
            recoveredBlock226Result := recoveredBlock226Stack1.
            recoveredBlock226Done := true.
        ].
    ].
    recoveredBlock226Result
].
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20627938; bytecode file offset 0xf242d0"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
convertMappedMessageVariables
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappedInterrunVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableMappingSourceObjects.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 |
    recoveredBlock18Value0 := mappedInterrunVariables.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value1) displayName.
    recoveredBlock18Value3 := [
    | recoveredBlock18Block30Value0 recoveredBlock18Block30Value1 recoveredBlock18Block30Value2 recoveredBlock18Block30Value3 recoveredBlock18Block30Value4 recoveredBlock18Block30Value5 recoveredBlock18Block30Value6 recoveredBlock18Block30Value7 |
    recoveredBlock18Block30Value0 := recoveredLocal8.
    recoveredBlock18Block30Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block30Value2 := (recoveredBlock18Block30Value1) displayName.
    recoveredBlock18Block30Value3 := ASDMappingObject.
    recoveredBlock18Block30Value4 := (recoveredBlock18Block30Value3) create.
    recoveredBlock18Block30Value5 := recoveredBlock18Arg1.
    recoveredBlock18Block30Value6 := (recoveredBlock18Block30Value4) sourceObject: (recoveredBlock18Block30Value5).
    recoveredBlock18Block30Value7 := (recoveredBlock18Block30Value0) at: (recoveredBlock18Block30Value2) put: (recoveredBlock18Block30Value6).
    recoveredBlock18Block30Value7
].
    recoveredBlock18Value4 := [:recoveredBlock18Block55Arg1 | 
    | recoveredBlock18Block55Local1 recoveredBlock18Block55Local2 recoveredBlock18Block55Local3 recoveredBlock18Block55Stack0 recoveredBlock18Block55Stack1 recoveredBlock18Block55Stack2 recoveredBlock18Block55Stack3 recoveredBlock18Block55PC recoveredBlock18Block55Step recoveredBlock18Block55Done recoveredBlock18Block55Result |
    recoveredBlock18Block55Stack0 := self.
    recoveredBlock18Block55PC := 62.
    recoveredBlock18Block55Done := false.
    [recoveredBlock18Block55Done not] whileTrue: [
        recoveredBlock18Block55Step := recoveredBlock18Block55PC.
        recoveredBlock18Block55Step = 62 ifTrue: [
            recoveredBlock18Block55Stack1 := ASDMappingObject.
            recoveredBlock18Block55PC := 64.
        ].
        recoveredBlock18Block55Step = 64 ifTrue: [
            recoveredBlock18Block55Stack1 := (recoveredBlock18Block55Stack1) create.
            recoveredBlock18Block55PC := 66.
        ].
        recoveredBlock18Block55Step = 66 ifTrue: [
            recoveredBlock18Block55Stack2 := recoveredBlock18Arg1.
            recoveredBlock18Block55PC := 69.
        ].
        recoveredBlock18Block55Step = 69 ifTrue: [
            recoveredBlock18Block55Stack1 := (recoveredBlock18Block55Stack1) sourceObject: (recoveredBlock18Block55Stack2).
            recoveredBlock18Block55PC := 71.
        ].
        recoveredBlock18Block55Step = 71 ifTrue: [
            recoveredBlock18Block55Local3 := recoveredBlock18Block55Stack1.
            recoveredBlock18Block55PC := 72.
        ].
        recoveredBlock18Block55Step = 72 ifTrue: [
            recoveredBlock18Block55Stack1 := ASDMappingTargetObject.
            recoveredBlock18Block55PC := 74.
        ].
        recoveredBlock18Block55Step = 74 ifTrue: [
            recoveredBlock18Block55Stack1 := (recoveredBlock18Block55Stack1) new.
            recoveredBlock18Block55PC := 75.
        ].
        recoveredBlock18Block55Step = 75 ifTrue: [
            recoveredBlock18Block55Local2 := recoveredBlock18Block55Stack1.
            recoveredBlock18Block55PC := 76.
        ].
        recoveredBlock18Block55Step = 76 ifTrue: [
            recoveredBlock18Block55Stack1 := recoveredBlock18Block55Arg1.
            recoveredBlock18Block55PC := 77.
        ].
        recoveredBlock18Block55Step = 77 ifTrue: [
            recoveredBlock18Block55Stack0 := (recoveredBlock18Block55Stack0) getModelPathFor: (recoveredBlock18Block55Stack1).
            recoveredBlock18Block55PC := 79.
        ].
        recoveredBlock18Block55Step = 79 ifTrue: [
            recoveredBlock18Block55Stack1 := recoveredBlock18Block55Stack0.
            recoveredBlock18Block55PC := 80.
        ].
        recoveredBlock18Block55Step = 80 ifTrue: [
            recoveredBlock18Block55Local1 := recoveredBlock18Block55Stack1.
            recoveredBlock18Block55PC := 81.
        ].
        recoveredBlock18Block55Step = 81 ifTrue: [
            recoveredBlock18Block55Stack0 := (recoveredBlock18Block55Stack0) size.
            recoveredBlock18Block55PC := 83.
        ].
        recoveredBlock18Block55Step = 83 ifTrue: [
            recoveredBlock18Block55Stack1 := 2.
            recoveredBlock18Block55PC := 85.
        ].
        recoveredBlock18Block55Step = 85 ifTrue: [
            recoveredBlock18Block55Stack0 := (recoveredBlock18Block55Stack0) = (recoveredBlock18Block55Stack1).
            recoveredBlock18Block55PC := 86.
        ].
        recoveredBlock18Block55Step = 86 ifTrue: [
            (recoveredBlock18Block55Stack0) ifTrue: [recoveredBlock18Block55PC := 90] ifFalse: [recoveredBlock18Block55PC := 120].
        ].
        recoveredBlock18Block55Step = 90 ifTrue: [
            recoveredBlock18Block55Stack0 := recoveredBlock18Block55Local2.
            recoveredBlock18Block55PC := 91.
        ].
        recoveredBlock18Block55Step = 91 ifTrue: [
            recoveredBlock18Block55Stack1 := recoveredBlock18Block55Local1.
            recoveredBlock18Block55PC := 92.
        ].
        recoveredBlock18Block55Step = 92 ifTrue: [
            recoveredBlock18Block55Stack1 := (recoveredBlock18Block55Stack1) last.
            recoveredBlock18Block55PC := 94.
        ].
        recoveredBlock18Block55Step = 94 ifTrue: [
            recoveredBlock18Block55Stack1 := (recoveredBlock18Block55Stack1) mappingDisplayName.
            recoveredBlock18Block55PC := 96.
        ].
        recoveredBlock18Block55Step = 96 ifTrue: [
            (recoveredBlock18Block55Stack0) displayName: (recoveredBlock18Block55Stack1).
            recoveredBlock18Block55PC := 98.
        ].
        recoveredBlock18Block55Step = 98 ifTrue: [
            recoveredBlock18Block55Stack0 := recoveredBlock18Block55Local2.
            recoveredBlock18Block55PC := 99.
        ].
        recoveredBlock18Block55Step = 99 ifTrue: [
            recoveredBlock18Block55Stack1 := recoveredBlock18Block55Local1.
            recoveredBlock18Block55PC := 100.
        ].
        recoveredBlock18Block55Step = 100 ifTrue: [
            recoveredBlock18Block55Stack1 := (recoveredBlock18Block55Stack1) last.
            recoveredBlock18Block55PC := 102.
        ].
        recoveredBlock18Block55Step = 102 ifTrue: [
            recoveredBlock18Block55Stack1 := (recoveredBlock18Block55Stack1) aliasName.
            recoveredBlock18Block55PC := 104.
        ].
        recoveredBlock18Block55Step = 104 ifTrue: [
            recoveredBlock18Block55Stack2 := recoveredBlock18Block55Local1.
            recoveredBlock18Block55PC := 105.
        ].
        recoveredBlock18Block55Step = 105 ifTrue: [
            recoveredBlock18Block55Stack2 := (recoveredBlock18Block55Stack2) last.
            recoveredBlock18Block55PC := 107.
        ].
        recoveredBlock18Block55Step = 107 ifTrue: [
            recoveredBlock18Block55Stack2 := (recoveredBlock18Block55Stack2) owner.
            recoveredBlock18Block55PC := 109.
        ].
        recoveredBlock18Block55Step = 109 ifTrue: [
            recoveredBlock18Block55Stack2 := (recoveredBlock18Block55Stack2) dbObject.
            recoveredBlock18Block55PC := 111.
        ].
        recoveredBlock18Block55Step = 111 ifTrue: [
            recoveredBlock18Block55Stack2 := (recoveredBlock18Block55Stack2) globalId.
            recoveredBlock18Block55PC := 113.
        ].
        recoveredBlock18Block55Step = 113 ifTrue: [
            recoveredBlock18Block55Stack1 := (recoveredBlock18Block55Stack1) asHierarchicalOIDWithPreAlias: (recoveredBlock18Block55Stack2).
            recoveredBlock18Block55PC := 115.
        ].
        recoveredBlock18Block55Step = 115 ifTrue: [
            (recoveredBlock18Block55Stack0) elementOIDChain: (recoveredBlock18Block55Stack1).
            recoveredBlock18Block55PC := 117.
        ].
        recoveredBlock18Block55Step = 117 ifTrue: [
            recoveredBlock18Block55PC := 129.
        ].
        recoveredBlock18Block55Step = 120 ifTrue: [
            recoveredBlock18Block55Stack0 := recoveredBlock18Block55Local2.
            recoveredBlock18Block55PC := 121.
        ].
        recoveredBlock18Block55Step = 121 ifTrue: [
            recoveredBlock18Block55Stack1 := '<unknown>'.
            recoveredBlock18Block55PC := 123.
        ].
        recoveredBlock18Block55Step = 123 ifTrue: [
            (recoveredBlock18Block55Stack0) displayName: (recoveredBlock18Block55Stack1).
            recoveredBlock18Block55PC := 125.
        ].
        recoveredBlock18Block55Step = 125 ifTrue: [
            recoveredBlock18Block55Stack0 := recoveredBlock18Block55Local2.
            recoveredBlock18Block55PC := 126.
        ].
        recoveredBlock18Block55Step = 126 ifTrue: [
            recoveredBlock18Block55Stack1 := nil.
            recoveredBlock18Block55PC := 127.
        ].
        recoveredBlock18Block55Step = 127 ifTrue: [
            (recoveredBlock18Block55Stack0) elementOIDChain: (recoveredBlock18Block55Stack1).
            recoveredBlock18Block55PC := 129.
        ].
        recoveredBlock18Block55Step = 129 ifTrue: [
            recoveredBlock18Block55Stack0 := recoveredBlock18Block55Local2.
            recoveredBlock18Block55PC := 130.
        ].
        recoveredBlock18Block55Step = 130 ifTrue: [
            recoveredBlock18Block55Stack1 := recoveredBlock18Block55Arg1.
            recoveredBlock18Block55PC := 131.
        ].
        recoveredBlock18Block55Step = 131 ifTrue: [
            (recoveredBlock18Block55Stack0) modelOIDChain: (recoveredBlock18Block55Stack1).
            recoveredBlock18Block55PC := 133.
        ].
        recoveredBlock18Block55Step = 133 ifTrue: [
            recoveredBlock18Block55Stack0 := recoveredBlock18Block55Local3.
            recoveredBlock18Block55PC := 134.
        ].
        recoveredBlock18Block55Step = 134 ifTrue: [
            recoveredBlock18Block55Stack1 := recoveredBlock18Block55Local2.
            recoveredBlock18Block55PC := 135.
        ].
        recoveredBlock18Block55Step = 135 ifTrue: [
            (recoveredBlock18Block55Stack0) targetObject: (recoveredBlock18Block55Stack1).
            recoveredBlock18Block55PC := 137.
        ].
        recoveredBlock18Block55Step = 137 ifTrue: [
            recoveredBlock18Block55Stack0 := recoveredLocal8.
            recoveredBlock18Block55PC := 140.
        ].
        recoveredBlock18Block55Step = 140 ifTrue: [
            recoveredBlock18Block55Stack1 := recoveredBlock18Arg1.
            recoveredBlock18Block55PC := 143.
        ].
        recoveredBlock18Block55Step = 143 ifTrue: [
            recoveredBlock18Block55Stack1 := (recoveredBlock18Block55Stack1) displayName.
            recoveredBlock18Block55PC := 144.
        ].
        recoveredBlock18Block55Step = 144 ifTrue: [
            recoveredBlock18Block55Stack2 := recoveredBlock18Block55Local3.
            recoveredBlock18Block55PC := 145.
        ].
        recoveredBlock18Block55Step = 145 ifTrue: [
            recoveredBlock18Block55Stack0 := (recoveredBlock18Block55Stack0) at: (recoveredBlock18Block55Stack1) put: (recoveredBlock18Block55Stack2).
            recoveredBlock18Block55PC := 147.
        ].
        recoveredBlock18Block55Step = 147 ifTrue: [
            recoveredBlock18Block55Result := recoveredBlock18Block55Stack0.
            recoveredBlock18Block55Done := true.
        ].
    ].
    recoveredBlock18Block55Result
].
    recoveredBlock18Value5 := (recoveredBlock18Value0) at: (recoveredBlock18Value2) ifAbsent: (recoveredBlock18Value3) ifPresent: (recoveredBlock18Value4).
    recoveredBlock18Value5
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            mappedInterrunVariables := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) variableMappingTypeOld.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) setElementMappings: (recoveredStack2) forType: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableMappingTypeOld.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 447] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableInternalMappingSourceObjects.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableExternalMappingSourceObjects.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableInternalMappingType.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsInitializeForType: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableExternalMappingType.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsInitializeForType: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableMappings.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := [:recoveredBlock223Arg1 | 
    | recoveredBlock223Local1 recoveredBlock223Local2 recoveredBlock223Stack0 recoveredBlock223Stack1 recoveredBlock223Stack2 recoveredBlock223Stack3 recoveredBlock223Stack4 recoveredBlock223PC recoveredBlock223Step recoveredBlock223Done recoveredBlock223Result |
    recoveredBlock223Stack0 := self.
    recoveredBlock223PC := 230.
    recoveredBlock223Done := false.
    [recoveredBlock223Done not] whileTrue: [
        recoveredBlock223Step := recoveredBlock223PC.
        recoveredBlock223Step = 230 ifTrue: [
            recoveredBlock223Stack1 := nil.
            recoveredBlock223PC := 231.
        ].
        recoveredBlock223Step = 231 ifTrue: [
            recoveredBlock223Stack2 := recoveredBlock223Arg1.
            recoveredBlock223PC := 234.
        ].
        recoveredBlock223Step = 234 ifTrue: [
            recoveredBlock223Stack2 := (recoveredBlock223Stack2) targetObject.
            recoveredBlock223PC := 236.
        ].
        recoveredBlock223Step = 236 ifTrue: [
            (recoveredBlock223Stack2 == nil) ifTrue: [recoveredBlock223PC := 415] ifFalse: [recoveredBlock223PC := 240].
        ].
        recoveredBlock223Step = 240 ifTrue: [
            recoveredBlock223PC := 241.
        ].
        recoveredBlock223Step = 241 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal2.
            recoveredBlock223PC := 244.
        ].
        recoveredBlock223Step = 244 ifTrue: [
            recoveredBlock223Stack2 := [:recoveredBlock223Block244Arg1 | 
    | recoveredBlock223Block244Value0 recoveredBlock223Block244Value1 recoveredBlock223Block244Value2 recoveredBlock223Block244Value3 recoveredBlock223Block244Value4 recoveredBlock223Block244Value5 |
    recoveredBlock223Block244Value0 := recoveredBlock223Block244Arg1.
    recoveredBlock223Block244Value1 := (recoveredBlock223Block244Value0) displayName.
    recoveredBlock223Block244Value2 := recoveredBlock223Arg1.
    recoveredBlock223Block244Value3 := (recoveredBlock223Block244Value2) sourceObject.
    recoveredBlock223Block244Value4 := (recoveredBlock223Block244Value3) displayName.
    recoveredBlock223Block244Value5 := (recoveredBlock223Block244Value1) = (recoveredBlock223Block244Value4).
    recoveredBlock223Block244Value5
].
            recoveredBlock223PC := 260.
        ].
        recoveredBlock223Step = 260 ifTrue: [
            recoveredBlock223Stack3 := [].
            recoveredBlock223PC := 262.
        ].
        recoveredBlock223Step = 262 ifTrue: [
            recoveredBlock223Stack1 := (recoveredBlock223Stack1) detect: (recoveredBlock223Stack2) ifNone: (recoveredBlock223Stack3).
            recoveredBlock223PC := 264.
        ].
        recoveredBlock223Step = 264 ifTrue: [
            recoveredLocal5 := recoveredBlock223Stack1.
            recoveredBlock223PC := 267.
        ].
        recoveredBlock223Step = 267 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal1.
            recoveredBlock223PC := 270.
        ].
        recoveredBlock223Step = 270 ifTrue: [
            recoveredBlock223Stack2 := [:recoveredBlock223Block270Arg1 | 
    | recoveredBlock223Block270Value0 recoveredBlock223Block270Value1 recoveredBlock223Block270Value2 recoveredBlock223Block270Value3 recoveredBlock223Block270Value4 recoveredBlock223Block270Value5 |
    recoveredBlock223Block270Value0 := recoveredBlock223Block270Arg1.
    recoveredBlock223Block270Value1 := (recoveredBlock223Block270Value0) displayName.
    recoveredBlock223Block270Value2 := recoveredBlock223Arg1.
    recoveredBlock223Block270Value3 := (recoveredBlock223Block270Value2) sourceObject.
    recoveredBlock223Block270Value4 := (recoveredBlock223Block270Value3) displayName.
    recoveredBlock223Block270Value5 := (recoveredBlock223Block270Value1) = (recoveredBlock223Block270Value4).
    recoveredBlock223Block270Value5
].
            recoveredBlock223PC := 286.
        ].
        recoveredBlock223Step = 286 ifTrue: [
            recoveredBlock223Stack3 := [].
            recoveredBlock223PC := 288.
        ].
        recoveredBlock223Step = 288 ifTrue: [
            recoveredBlock223Stack1 := (recoveredBlock223Stack1) detect: (recoveredBlock223Stack2) ifNone: (recoveredBlock223Stack3).
            recoveredBlock223PC := 290.
        ].
        recoveredBlock223Step = 290 ifTrue: [
            recoveredLocal4 := recoveredBlock223Stack1.
            recoveredBlock223PC := 293.
        ].
        recoveredBlock223Step = 293 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal4.
            recoveredBlock223PC := 296.
        ].
        recoveredBlock223Step = 296 ifTrue: [
            (recoveredBlock223Stack1 == nil) ifTrue: [recoveredBlock223PC := 324] ifFalse: [recoveredBlock223PC := 300].
        ].
        recoveredBlock223Step = 300 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal5.
            recoveredBlock223PC := 303.
        ].
        recoveredBlock223Step = 303 ifTrue: [
            (recoveredBlock223Stack1 ~~ nil) ifTrue: [recoveredBlock223PC := 324] ifFalse: [recoveredBlock223PC := 306].
        ].
        recoveredBlock223Step = 306 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal6.
            recoveredBlock223PC := 309.
        ].
        recoveredBlock223Step = 309 ifTrue: [
            recoveredBlock223Stack2 := recoveredBlock223Arg1.
            recoveredBlock223PC := 312.
        ].
        recoveredBlock223Step = 312 ifTrue: [
            recoveredBlock223Stack2 := (recoveredBlock223Stack2) sourceObject.
            recoveredBlock223PC := 314.
        ].
        recoveredBlock223Step = 314 ifTrue: [
            recoveredBlock223Stack2 := (recoveredBlock223Stack2) displayName.
            recoveredBlock223PC := 315.
        ].
        recoveredBlock223Step = 315 ifTrue: [
            recoveredBlock223Stack3 := recoveredBlock223Arg1.
            recoveredBlock223PC := 318.
        ].
        recoveredBlock223Step = 318 ifTrue: [
            recoveredBlock223Stack1 := (recoveredBlock223Stack1) at: (recoveredBlock223Stack2) put: (recoveredBlock223Stack3).
            recoveredBlock223PC := 320.
        ].
        recoveredBlock223Step = 320 ifTrue: [
            recoveredBlock223PC := 415.
        ].
        recoveredBlock223Step = 324 ifTrue: [
            recoveredBlock223Stack1 := false.
            recoveredBlock223PC := 325.
        ].
        recoveredBlock223Step = 325 ifTrue: [
            recoveredBlock223Local2 := recoveredBlock223Stack1.
            recoveredBlock223PC := 328.
        ].
        recoveredBlock223Step = 328 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal4.
            recoveredBlock223PC := 331.
        ].
        recoveredBlock223Step = 331 ifTrue: [
            (recoveredBlock223Stack1 == nil) ifTrue: [recoveredBlock223PC := 388] ifFalse: [recoveredBlock223PC := 334].
        ].
        recoveredBlock223Step = 334 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal5.
            recoveredBlock223PC := 337.
        ].
        recoveredBlock223Step = 337 ifTrue: [
            (recoveredBlock223Stack1 == nil) ifTrue: [recoveredBlock223PC := 388] ifFalse: [recoveredBlock223PC := 340].
        ].
        recoveredBlock223Step = 340 ifTrue: [
            recoveredBlock223Stack1 := self.
            recoveredBlock223PC := 341.
        ].
        recoveredBlock223Step = 341 ifTrue: [
            recoveredBlock223Stack2 := recoveredBlock223Arg1.
            recoveredBlock223PC := 344.
        ].
        recoveredBlock223Step = 344 ifTrue: [
            recoveredBlock223Stack2 := (recoveredBlock223Stack2) targetObject.
            recoveredBlock223PC := 346.
        ].
        recoveredBlock223Step = 346 ifTrue: [
            recoveredBlock223Stack1 := (recoveredBlock223Stack1) ownerInstanceForMappingElement: (recoveredBlock223Stack2).
            recoveredBlock223PC := 348.
        ].
        recoveredBlock223Step = 348 ifTrue: [
            recoveredBlock223Local1 := recoveredBlock223Stack1.
            recoveredBlock223PC := 351.
        ].
        recoveredBlock223Step = 351 ifTrue: [
            recoveredBlock223Stack1 := recoveredBlock223Local1.
            recoveredBlock223PC := 354.
        ].
        recoveredBlock223Step = 354 ifTrue: [
            (recoveredBlock223Stack1 == nil) ifTrue: [recoveredBlock223PC := 384] ifFalse: [recoveredBlock223PC := 358].
        ].
        recoveredBlock223Step = 358 ifTrue: [
            recoveredBlock223Stack1 := recoveredBlock223Local1.
            recoveredBlock223PC := 361.
        ].
        recoveredBlock223Step = 361 ifTrue: [
            recoveredBlock223Stack1 := (recoveredBlock223Stack1) isSenderReceiverInterface.
            recoveredBlock223PC := 363.
        ].
        recoveredBlock223Step = 363 ifTrue: [
            (recoveredBlock223Stack1) ifTrue: [recoveredBlock223PC := 366] ifFalse: [recoveredBlock223PC := 384].
        ].
        recoveredBlock223Step = 366 ifTrue: [
            recoveredBlock223Stack1 := true.
            recoveredBlock223PC := 367.
        ].
        recoveredBlock223Step = 367 ifTrue: [
            recoveredBlock223Local2 := recoveredBlock223Stack1.
            recoveredBlock223PC := 370.
        ].
        recoveredBlock223Step = 370 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal6.
            recoveredBlock223PC := 373.
        ].
        recoveredBlock223Step = 373 ifTrue: [
            recoveredBlock223Stack2 := recoveredBlock223Arg1.
            recoveredBlock223PC := 376.
        ].
        recoveredBlock223Step = 376 ifTrue: [
            recoveredBlock223Stack2 := (recoveredBlock223Stack2) sourceObject.
            recoveredBlock223PC := 378.
        ].
        recoveredBlock223Step = 378 ifTrue: [
            recoveredBlock223Stack2 := (recoveredBlock223Stack2) displayName.
            recoveredBlock223PC := 379.
        ].
        recoveredBlock223Step = 379 ifTrue: [
            recoveredBlock223Stack3 := recoveredBlock223Arg1.
            recoveredBlock223PC := 382.
        ].
        recoveredBlock223Step = 382 ifTrue: [
            (recoveredBlock223Stack1) at: (recoveredBlock223Stack2) put: (recoveredBlock223Stack3).
            recoveredBlock223PC := 384.
        ].
        recoveredBlock223Step = 384 ifTrue: [
            recoveredBlock223Stack1 := nil.
            recoveredBlock223PC := 385.
        ].
        recoveredBlock223Step = 385 ifTrue: [
            recoveredBlock223Local1 := recoveredBlock223Stack1.
            recoveredBlock223PC := 388.
        ].
        recoveredBlock223Step = 388 ifTrue: [
            recoveredBlock223Stack1 := nil.
            recoveredBlock223PC := 389.
        ].
        recoveredBlock223Step = 389 ifTrue: [
            recoveredBlock223Stack2 := recoveredBlock223Local2.
            recoveredBlock223PC := 392.
        ].
        recoveredBlock223Step = 392 ifTrue: [
            (recoveredBlock223Stack2) ifTrue: [recoveredBlock223PC := 411] ifFalse: [recoveredBlock223PC := 396].
        ].
        recoveredBlock223Step = 396 ifTrue: [
            recoveredBlock223PC := 397.
        ].
        recoveredBlock223Step = 397 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal7.
            recoveredBlock223PC := 400.
        ].
        recoveredBlock223Step = 400 ifTrue: [
            recoveredBlock223Stack2 := recoveredBlock223Arg1.
            recoveredBlock223PC := 403.
        ].
        recoveredBlock223Step = 403 ifTrue: [
            recoveredBlock223Stack2 := (recoveredBlock223Stack2) sourceObject.
            recoveredBlock223PC := 405.
        ].
        recoveredBlock223Step = 405 ifTrue: [
            recoveredBlock223Stack2 := (recoveredBlock223Stack2) displayName.
            recoveredBlock223PC := 406.
        ].
        recoveredBlock223Step = 406 ifTrue: [
            recoveredBlock223Stack3 := recoveredBlock223Arg1.
            recoveredBlock223PC := 409.
        ].
        recoveredBlock223Step = 409 ifTrue: [
            recoveredBlock223Stack1 := (recoveredBlock223Stack1) at: (recoveredBlock223Stack2) put: (recoveredBlock223Stack3).
            recoveredBlock223PC := 411.
        ].
        recoveredBlock223Step = 411 ifTrue: [
            recoveredBlock223Stack2 := nil.
            recoveredBlock223PC := 412.
        ].
        recoveredBlock223Step = 412 ifTrue: [
            recoveredBlock223Local2 := recoveredBlock223Stack2.
            recoveredBlock223PC := 415.
        ].
        recoveredBlock223Step = 415 ifTrue: [
            recoveredBlock223Result := recoveredBlock223Stack1.
            recoveredBlock223Done := true.
        ].
    ].
    recoveredBlock223Result
].
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementMappings.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableMappingTypeOld.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 436] ifFalse: [recoveredPC := 439].
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableExternalMappings.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := [:recoveredBlock452Arg1 | 
    | recoveredBlock452Local1 recoveredBlock452Stack0 recoveredBlock452Stack1 recoveredBlock452Stack2 recoveredBlock452Stack3 recoveredBlock452PC recoveredBlock452Step recoveredBlock452Done recoveredBlock452Result |
    recoveredBlock452Stack0 := self.
    recoveredBlock452PC := 458.
    recoveredBlock452Done := false.
    [recoveredBlock452Done not] whileTrue: [
        recoveredBlock452Step := recoveredBlock452PC.
        recoveredBlock452Step = 458 ifTrue: [
            recoveredBlock452Stack1 := [:recoveredBlock452Block458Arg1 | 
    | recoveredBlock452Block458Local1 recoveredBlock452Block458Local2 recoveredBlock452Block458Stack0 recoveredBlock452Block458Stack1 recoveredBlock452Block458Stack2 recoveredBlock452Block458Stack3 recoveredBlock452Block458Stack4 recoveredBlock452Block458PC recoveredBlock452Block458Step recoveredBlock452Block458Done recoveredBlock452Block458Result |
    recoveredBlock452Block458Stack0 := self.
    recoveredBlock452Block458PC := 464.
    recoveredBlock452Block458Done := false.
    [recoveredBlock452Block458Done not] whileTrue: [
        recoveredBlock452Block458Step := recoveredBlock452Block458PC.
        recoveredBlock452Block458Step = 464 ifTrue: [
            recoveredBlock452Block458Stack1 := nil.
            recoveredBlock452Block458PC := 465.
        ].
        recoveredBlock452Block458Step = 465 ifTrue: [
            recoveredBlock452Block458Stack2 := recoveredBlock452Block458Arg1.
            recoveredBlock452Block458PC := 466.
        ].
        recoveredBlock452Block458Step = 466 ifTrue: [
            recoveredBlock452Block458Stack2 := (recoveredBlock452Block458Stack2) sourceObject.
            recoveredBlock452Block458PC := 468.
        ].
        recoveredBlock452Block458Step = 468 ifTrue: [
            (recoveredBlock452Block458Stack2 == nil) ifTrue: [recoveredBlock452Block458PC := 532] ifFalse: [recoveredBlock452Block458PC := 472].
        ].
        recoveredBlock452Block458Step = 472 ifTrue: [
            recoveredBlock452Block458Stack2 := recoveredBlock452Block458Arg1.
            recoveredBlock452Block458PC := 473.
        ].
        recoveredBlock452Block458Step = 473 ifTrue: [
            recoveredBlock452Block458Stack2 := (recoveredBlock452Block458Stack2) sourceObject.
            recoveredBlock452Block458PC := 475.
        ].
        recoveredBlock452Block458Step = 475 ifTrue: [
            recoveredBlock452Block458Stack2 := (recoveredBlock452Block458Stack2) isExternalSourceObject.
            recoveredBlock452Block458PC := 477.
        ].
        recoveredBlock452Block458Step = 477 ifTrue: [
            (recoveredBlock452Block458Stack2) ifTrue: [recoveredBlock452Block458PC := 532] ifFalse: [recoveredBlock452Block458PC := 480].
        ].
        recoveredBlock452Block458Step = 480 ifTrue: [
            recoveredBlock452Block458PC := 481.
        ].
        recoveredBlock452Block458Step = 481 ifTrue: [
            recoveredBlock452Block458Stack1 := ASDMappingExternalSourceObject.
            recoveredBlock452Block458PC := 483.
        ].
        recoveredBlock452Block458Step = 483 ifTrue: [
            recoveredBlock452Block458Stack2 := recoveredBlock452Block458Arg1.
            recoveredBlock452Block458PC := 484.
        ].
        recoveredBlock452Block458Step = 484 ifTrue: [
            recoveredBlock452Block458Stack2 := (recoveredBlock452Block458Stack2) sourceObject.
            recoveredBlock452Block458PC := 486.
        ].
        recoveredBlock452Block458Step = 486 ifTrue: [
            recoveredBlock452Block458Stack1 := (recoveredBlock452Block458Stack1) copyFrom: (recoveredBlock452Block458Stack2).
            recoveredBlock452Block458PC := 488.
        ].
        recoveredBlock452Block458Step = 488 ifTrue: [
            recoveredBlock452Block458Local2 := recoveredBlock452Block458Stack1.
            recoveredBlock452Block458PC := 489.
        ].
        recoveredBlock452Block458Step = 489 ifTrue: [
            recoveredBlock452Block458Stack1 := recoveredBlock452Block458Local2.
            recoveredBlock452Block458PC := 490.
        ].
        recoveredBlock452Block458Step = 490 ifTrue: [
            recoveredBlock452Block458Stack1 := (recoveredBlock452Block458Stack1) properties.
            recoveredBlock452Block458PC := 492.
        ].
        recoveredBlock452Block458Step = 492 ifTrue: [
            recoveredBlock452Block458Stack2 := 'element'.
            recoveredBlock452Block458PC := 494.
        ].
        recoveredBlock452Block458Step = 494 ifTrue: [
            recoveredBlock452Block458Stack3 := [].
            recoveredBlock452Block458PC := 496.
        ].
        recoveredBlock452Block458Step = 496 ifTrue: [
            recoveredBlock452Block458Stack1 := (recoveredBlock452Block458Stack1) at: (recoveredBlock452Block458Stack2) ifAbsent: (recoveredBlock452Block458Stack3).
            recoveredBlock452Block458PC := 498.
        ].
        recoveredBlock452Block458Step = 498 ifTrue: [
            recoveredBlock452Block458Local1 := recoveredBlock452Block458Stack1.
            recoveredBlock452Block458PC := 499.
        ].
        recoveredBlock452Block458Step = 499 ifTrue: [
            recoveredBlock452Block458Stack1 := recoveredBlock452Block458Local1.
            recoveredBlock452Block458PC := 500.
        ].
        recoveredBlock452Block458Step = 500 ifTrue: [
            (recoveredBlock452Block458Stack1 == nil) ifTrue: [recoveredBlock452Block458PC := 513] ifFalse: [recoveredBlock452Block458PC := 504].
        ].
        recoveredBlock452Block458Step = 504 ifTrue: [
            recoveredBlock452Block458Stack1 := recoveredBlock452Block458Local2.
            recoveredBlock452Block458PC := 505.
        ].
        recoveredBlock452Block458Step = 505 ifTrue: [
            recoveredBlock452Block458Stack2 := recoveredBlock452Block458Local1.
            recoveredBlock452Block458PC := 506.
        ].
        recoveredBlock452Block458Step = 506 ifTrue: [
            recoveredBlock452Block458Stack2 := (recoveredBlock452Block458Stack2) isSend.
            recoveredBlock452Block458PC := 508.
        ].
        recoveredBlock452Block458Step = 508 ifTrue: [
            recoveredBlock452Block458Stack3 := recoveredBlock452Block458Local1.
            recoveredBlock452Block458PC := 509.
        ].
        recoveredBlock452Block458Step = 509 ifTrue: [
            recoveredBlock452Block458Stack3 := (recoveredBlock452Block458Stack3) isReceive.
            recoveredBlock452Block458PC := 511.
        ].
        recoveredBlock452Block458Step = 511 ifTrue: [
            (recoveredBlock452Block458Stack1) setInternalAccessFromSend: (recoveredBlock452Block458Stack2) recive: (recoveredBlock452Block458Stack3).
            recoveredBlock452Block458PC := 513.
        ].
        recoveredBlock452Block458Step = 513 ifTrue: [
            recoveredBlock452Block458Stack1 := recoveredBlock452Block458Arg1.
            recoveredBlock452Block458PC := 514.
        ].
        recoveredBlock452Block458Step = 514 ifTrue: [
            recoveredBlock452Block458Stack2 := recoveredBlock452Block458Local2.
            recoveredBlock452Block458PC := 515.
        ].
        recoveredBlock452Block458Step = 515 ifTrue: [
            (recoveredBlock452Block458Stack1) sourceObject: (recoveredBlock452Block458Stack2).
            recoveredBlock452Block458PC := 517.
        ].
        recoveredBlock452Block458Step = 517 ifTrue: [
            recoveredBlock452Block458Stack1 := nil.
            recoveredBlock452Block458PC := 518.
        ].
        recoveredBlock452Block458Step = 518 ifTrue: [
            recoveredBlock452Block458Stack2 := self.
            recoveredBlock452Block458PC := 519.
        ].
        recoveredBlock452Block458Step = 519 ifTrue: [
            recoveredBlock452Block458Stack2 := (recoveredBlock452Block458Stack2) modifiable.
            recoveredBlock452Block458PC := 521.
        ].
        recoveredBlock452Block458Step = 521 ifTrue: [
            (recoveredBlock452Block458Stack2) ifTrue: [recoveredBlock452Block458PC := 524] ifFalse: [recoveredBlock452Block458PC := 528].
        ].
        recoveredBlock452Block458Step = 524 ifTrue: [
            recoveredBlock452Block458PC := 525.
        ].
        recoveredBlock452Block458Step = 525 ifTrue: [
            recoveredBlock452Block458Stack1 := self.
            recoveredBlock452Block458PC := 526.
        ].
        recoveredBlock452Block458Step = 526 ifTrue: [
            recoveredBlock452Block458Stack1 := (recoveredBlock452Block458Stack1) modified.
            recoveredBlock452Block458PC := 528.
        ].
        recoveredBlock452Block458Step = 528 ifTrue: [
            recoveredBlock452Block458Stack2 := nil.
            recoveredBlock452Block458PC := 529.
        ].
        recoveredBlock452Block458Step = 529 ifTrue: [
            recoveredBlock452Block458Stack3 := recoveredBlock452Block458Stack2.
            recoveredBlock452Block458PC := 530.
        ].
        recoveredBlock452Block458Step = 530 ifTrue: [
            recoveredBlock452Block458Local2 := recoveredBlock452Block458Stack3.
            recoveredBlock452Block458PC := 531.
        ].
        recoveredBlock452Block458Step = 531 ifTrue: [
            recoveredBlock452Block458Local1 := recoveredBlock452Block458Stack2.
            recoveredBlock452Block458PC := 532.
        ].
        recoveredBlock452Block458Step = 532 ifTrue: [
            recoveredBlock452Block458Result := recoveredBlock452Block458Stack1.
            recoveredBlock452Block458Done := true.
        ].
    ].
    recoveredBlock452Block458Result
].
            recoveredBlock452PC := 533.
        ].
        recoveredBlock452Step = 533 ifTrue: [
            recoveredBlock452Local1 := recoveredBlock452Stack1.
            recoveredBlock452PC := 536.
        ].
        recoveredBlock452Step = 536 ifTrue: [
            recoveredBlock452Stack1 := recoveredBlock452Arg1.
            recoveredBlock452PC := 539.
        ].
        recoveredBlock452Step = 539 ifTrue: [
            recoveredBlock452Stack1 := (recoveredBlock452Stack1) isCollection.
            recoveredBlock452PC := 541.
        ].
        recoveredBlock452Step = 541 ifTrue: [
            (recoveredBlock452Stack1) ifTrue: [recoveredBlock452PC := 544] ifFalse: [recoveredBlock452PC := 566].
        ].
        recoveredBlock452Step = 544 ifTrue: [
            recoveredBlock452Stack1 := recoveredBlock452Arg1.
            recoveredBlock452PC := 547.
        ].
        recoveredBlock452Step = 547 ifTrue: [
            recoveredBlock452Stack2 := [:recoveredBlock452Block547Arg1 | 
    | recoveredBlock452Block547Value0 recoveredBlock452Block547Value1 recoveredBlock452Block547Value2 |
    recoveredBlock452Block547Value0 := recoveredBlock452Local1.
    recoveredBlock452Block547Value1 := recoveredBlock452Block547Arg1.
    recoveredBlock452Block547Value2 := (recoveredBlock452Block547Value0) value: (recoveredBlock452Block547Value1).
    recoveredBlock452Block547Value2
].
            recoveredBlock452PC := 561.
        ].
        recoveredBlock452Step = 561 ifTrue: [
            recoveredBlock452Stack1 := (recoveredBlock452Stack1) do: (recoveredBlock452Stack2).
            recoveredBlock452PC := 563.
        ].
        recoveredBlock452Step = 563 ifTrue: [
            recoveredBlock452PC := 574.
        ].
        recoveredBlock452Step = 566 ifTrue: [
            recoveredBlock452Stack1 := recoveredBlock452Local1.
            recoveredBlock452PC := 569.
        ].
        recoveredBlock452Step = 569 ifTrue: [
            recoveredBlock452Stack2 := recoveredBlock452Arg1.
            recoveredBlock452PC := 572.
        ].
        recoveredBlock452Step = 572 ifTrue: [
            recoveredBlock452Stack1 := (recoveredBlock452Stack1) value: (recoveredBlock452Stack2).
            recoveredBlock452PC := 574.
        ].
        recoveredBlock452Step = 574 ifTrue: [
            recoveredBlock452Result := recoveredBlock452Stack1.
            recoveredBlock452Done := true.
        ].
    ].
    recoveredBlock452Result
].
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20633c50; bytecode file offset 0xf30594"
!ARAtomicSoftwareComponent methodsFor: 'recovered'!
variableMappingSourceObjects: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) variablesForMapping.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 |
    recoveredBlock33Value0 := recoveredLocal5.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (recoveredBlock33Value1) mappingDisplayName.
    recoveredBlock33Value3 := [
    | recoveredBlock33Block48Value0 recoveredBlock33Block48Value1 recoveredBlock33Block48Value2 recoveredBlock33Block48Value3 recoveredBlock33Block48Value4 recoveredBlock33Block48Value5 recoveredBlock33Block48Value6 |
    recoveredBlock33Block48Value0 := recoveredLocal5.
    recoveredBlock33Block48Value1 := recoveredBlock33Arg1.
    recoveredBlock33Block48Value2 := (recoveredBlock33Block48Value1) mappingDisplayName.
    recoveredBlock33Block48Value3 := OrderedCollection.
    recoveredBlock33Block48Value4 := recoveredBlock33Arg1.
    recoveredBlock33Block48Value5 := (recoveredBlock33Block48Value3) with: (recoveredBlock33Block48Value4).
    recoveredBlock33Block48Value6 := (recoveredBlock33Block48Value0) at: (recoveredBlock33Block48Value2) put: (recoveredBlock33Block48Value5).
    recoveredBlock33Block48Value6
].
    recoveredBlock33Value4 := [:recoveredBlock33Block72Arg1 | 
    | recoveredBlock33Block72Value0 recoveredBlock33Block72Value1 recoveredBlock33Block72Value2 |
    recoveredBlock33Block72Value0 := recoveredBlock33Block72Arg1.
    recoveredBlock33Block72Value1 := recoveredBlock33Arg1.
    recoveredBlock33Block72Value2 := (recoveredBlock33Block72Value0) add: (recoveredBlock33Block72Value1).
    recoveredBlock33Block72Value2
].
    recoveredBlock33Value5 := (recoveredBlock33Value0) at: (recoveredBlock33Value2) ifAbsent: (recoveredBlock33Value3) ifPresent: (recoveredBlock33Value4).
    recoveredBlock33Value5
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Local1 recoveredBlock94Stack0 recoveredBlock94Stack1 recoveredBlock94Stack2 recoveredBlock94Stack3 recoveredBlock94Stack4 recoveredBlock94Stack5 recoveredBlock94PC recoveredBlock94Step recoveredBlock94Done recoveredBlock94Result |
    recoveredBlock94Stack0 := self.
    recoveredBlock94PC := 100.
    recoveredBlock94Done := false.
    [recoveredBlock94Done not] whileTrue: [
        recoveredBlock94Step := recoveredBlock94PC.
        recoveredBlock94Step = 100 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 103.
        ].
        recoveredBlock94Step = 103 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isMessage.
            recoveredBlock94PC := 105.
        ].
        recoveredBlock94Step = 105 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 108] ifFalse: [recoveredBlock94PC := 390].
        ].
        recoveredBlock94Step = 108 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 111.
        ].
        recoveredBlock94Step = 111 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isLocal.
            recoveredBlock94PC := 113.
        ].
        recoveredBlock94Step = 113 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 132] ifFalse: [recoveredBlock94PC := 116].
        ].
        recoveredBlock94Step = 116 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 119.
        ].
        recoveredBlock94Step = 119 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isSend.
            recoveredBlock94PC := 121.
        ].
        recoveredBlock94Step = 121 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 124] ifFalse: [recoveredBlock94PC := 144].
        ].
        recoveredBlock94Step = 124 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 127.
        ].
        recoveredBlock94Step = 127 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isReceive.
            recoveredBlock94PC := 129.
        ].
        recoveredBlock94Step = 129 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 132] ifFalse: [recoveredBlock94PC := 144].
        ].
        recoveredBlock94Step = 132 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal2.
            recoveredBlock94PC := 135.
        ].
        recoveredBlock94Step = 135 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 138.
        ].
        recoveredBlock94Step = 138 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) add: (recoveredBlock94Stack2).
            recoveredBlock94PC := 140.
        ].
        recoveredBlock94Step = 140 ifTrue: [
            recoveredBlock94PC := 386.
        ].
        recoveredBlock94Step = 144 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal5.
            recoveredBlock94PC := 147.
        ].
        recoveredBlock94Step = 147 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 150.
        ].
        recoveredBlock94Step = 150 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) mappingDisplayName.
            recoveredBlock94PC := 152.
        ].
        recoveredBlock94Step = 152 ifTrue: [
            recoveredBlock94Stack3 := [].
            recoveredBlock94PC := 154.
        ].
        recoveredBlock94Step = 154 ifTrue: [
            recoveredBlock94Stack4 := [:recoveredBlock94Block154Arg1 | 
    | recoveredBlock94Block154Stack0 recoveredBlock94Block154Stack1 recoveredBlock94Block154Stack2 recoveredBlock94Block154Stack3 recoveredBlock94Block154PC recoveredBlock94Block154Step recoveredBlock94Block154Done recoveredBlock94Block154Result |
    recoveredBlock94Block154Stack0 := nil.
    recoveredBlock94Block154PC := 160.
    recoveredBlock94Block154Done := false.
    [recoveredBlock94Block154Done not] whileTrue: [
        recoveredBlock94Block154Step := recoveredBlock94Block154PC.
        recoveredBlock94Block154Step = 160 ifTrue: [
            recoveredBlock94Block154Stack1 := recoveredBlock94Block154Arg1.
            recoveredBlock94Block154PC := 161.
        ].
        recoveredBlock94Block154Step = 161 ifTrue: [
            recoveredBlock94Block154Stack2 := [:block281205b0Arg1 | 
    | block281205b0Value0 block281205b0Value1 |
    block281205b0Value0 := block281205b0Arg1.
    block281205b0Value1 := (block281205b0Value0) isSend.
    block281205b0Value1
].
            recoveredBlock94Block154PC := 163.
        ].
        recoveredBlock94Block154Step = 163 ifTrue: [
            recoveredBlock94Block154PC := 170.
        ].
        recoveredBlock94Block154Step = 170 ifTrue: [
            recoveredBlock94Block154Stack1 := (recoveredBlock94Block154Stack1) anySatisfy: (recoveredBlock94Block154Stack2).
            recoveredBlock94Block154PC := 172.
        ].
        recoveredBlock94Block154Step = 172 ifTrue: [
            (recoveredBlock94Block154Stack1) ifTrue: [recoveredBlock94Block154PC := 176] ifFalse: [recoveredBlock94Block154PC := 184].
        ].
        recoveredBlock94Block154Step = 176 ifTrue: [
            recoveredBlock94Block154Stack1 := recoveredBlock94Arg1.
            recoveredBlock94Block154PC := 179.
        ].
        recoveredBlock94Block154Step = 179 ifTrue: [
            recoveredBlock94Block154Stack1 := (recoveredBlock94Block154Stack1) isReceive.
            recoveredBlock94Block154PC := 181.
        ].
        recoveredBlock94Block154Step = 181 ifTrue: [
            (recoveredBlock94Block154Stack1) ifTrue: [recoveredBlock94Block154PC := 208] ifFalse: [recoveredBlock94Block154PC := 184].
        ].
        recoveredBlock94Block154Step = 184 ifTrue: [
            recoveredBlock94Block154Stack1 := recoveredBlock94Block154Arg1.
            recoveredBlock94Block154PC := 185.
        ].
        recoveredBlock94Block154Step = 185 ifTrue: [
            recoveredBlock94Block154Stack2 := [:block281205d4Arg1 | 
    | block281205d4Value0 block281205d4Value1 |
    block281205d4Value0 := block281205d4Arg1.
    block281205d4Value1 := (block281205d4Value0) isReceive.
    block281205d4Value1
].
            recoveredBlock94Block154PC := 187.
        ].
        recoveredBlock94Block154Step = 187 ifTrue: [
            recoveredBlock94Block154PC := 194.
        ].
        recoveredBlock94Block154Step = 194 ifTrue: [
            recoveredBlock94Block154Stack1 := (recoveredBlock94Block154Stack1) anySatisfy: (recoveredBlock94Block154Stack2).
            recoveredBlock94Block154PC := 196.
        ].
        recoveredBlock94Block154Step = 196 ifTrue: [
            (recoveredBlock94Block154Stack1) ifTrue: [recoveredBlock94Block154PC := 200] ifFalse: [recoveredBlock94Block154PC := 214].
        ].
        recoveredBlock94Block154Step = 200 ifTrue: [
            recoveredBlock94Block154Stack1 := recoveredBlock94Arg1.
            recoveredBlock94Block154PC := 203.
        ].
        recoveredBlock94Block154Step = 203 ifTrue: [
            recoveredBlock94Block154Stack1 := (recoveredBlock94Block154Stack1) isSend.
            recoveredBlock94Block154PC := 205.
        ].
        recoveredBlock94Block154Step = 205 ifTrue: [
            (recoveredBlock94Block154Stack1) ifTrue: [recoveredBlock94Block154PC := 208] ifFalse: [recoveredBlock94Block154PC := 214].
        ].
        recoveredBlock94Block154Step = 208 ifTrue: [
            recoveredBlock94Block154Stack1 := 1.
            recoveredBlock94Block154PC := 210.
        ].
        recoveredBlock94Block154Step = 210 ifTrue: [
            recoveredBlock94Block154PC := 215.
        ].
        recoveredBlock94Block154Step = 214 ifTrue: [
            recoveredBlock94Block154Stack1 := nil.
            recoveredBlock94Block154PC := 215.
        ].
        recoveredBlock94Block154Step = 215 ifTrue: [
            recoveredBlock94Block154Result := recoveredBlock94Block154Stack1.
            recoveredBlock94Block154Done := true.
        ].
    ].
    recoveredBlock94Block154Result
].
            recoveredBlock94PC := 216.
        ].
        recoveredBlock94Step = 216 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) at: (recoveredBlock94Stack2) ifAbsent: (recoveredBlock94Stack3) ifPresent: (recoveredBlock94Stack4).
            recoveredBlock94PC := 219.
        ].
        recoveredBlock94Step = 219 ifTrue: [
            (recoveredBlock94Stack1 == nil) ifTrue: [recoveredBlock94PC := 304] ifFalse: [recoveredBlock94PC := 222].
        ].
        recoveredBlock94Step = 222 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 225.
        ].
        recoveredBlock94Step = 225 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isImported.
            recoveredBlock94PC := 227.
        ].
        recoveredBlock94Step = 227 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 230] ifFalse: [recoveredBlock94PC := 292].
        ].
        recoveredBlock94Step = 230 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal5.
            recoveredBlock94PC := 233.
        ].
        recoveredBlock94Step = 233 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 236.
        ].
        recoveredBlock94Step = 236 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) mappingDisplayName.
            recoveredBlock94PC := 238.
        ].
        recoveredBlock94Step = 238 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) at: (recoveredBlock94Stack2).
            recoveredBlock94PC := 240.
        ].
        recoveredBlock94Step = 240 ifTrue: [
            recoveredBlock94Stack2 := [:recoveredBlock94Block240Arg1 | 
    | recoveredBlock94Block240Stack0 recoveredBlock94Block240Stack1 recoveredBlock94Block240Stack2 recoveredBlock94Block240Stack3 recoveredBlock94Block240PC recoveredBlock94Block240Step recoveredBlock94Block240Done recoveredBlock94Block240Result |
    recoveredBlock94Block240Stack0 := nil.
    recoveredBlock94Block240PC := 246.
    recoveredBlock94Block240Done := false.
    [recoveredBlock94Block240Done not] whileTrue: [
        recoveredBlock94Block240Step := recoveredBlock94Block240PC.
        recoveredBlock94Block240Step = 246 ifTrue: [
            recoveredBlock94Block240Stack1 := nil.
            recoveredBlock94Block240PC := 247.
        ].
        recoveredBlock94Block240Step = 247 ifTrue: [
            recoveredBlock94Block240Stack2 := recoveredBlock94Block240Arg1.
            recoveredBlock94Block240PC := 248.
        ].
        recoveredBlock94Block240Step = 248 ifTrue: [
            recoveredBlock94Block240Stack2 := (recoveredBlock94Block240Stack2) isExported.
            recoveredBlock94Block240PC := 250.
        ].
        recoveredBlock94Block240Step = 250 ifTrue: [
            (recoveredBlock94Block240Stack2) ifTrue: [recoveredBlock94Block240PC := 254] ifFalse: [recoveredBlock94Block240PC := 265].
        ].
        recoveredBlock94Block240Step = 254 ifTrue: [
            recoveredBlock94Block240PC := 255.
        ].
        recoveredBlock94Block240Step = 255 ifTrue: [
            recoveredBlock94Block240Stack1 := recoveredBlock94Block240Arg1.
            recoveredBlock94Block240PC := 256.
        ].
        recoveredBlock94Block240Step = 256 ifTrue: [
            recoveredBlock94Local1 := recoveredBlock94Block240Stack1.
            recoveredBlock94Block240PC := 259.
        ].
        recoveredBlock94Block240Step = 259 ifTrue: [
            recoveredBlock94Block240Stack1 := recoveredLocal2.
            recoveredBlock94Block240PC := 262.
        ].
        recoveredBlock94Block240Step = 262 ifTrue: [
            recoveredBlock94Block240Stack2 := recoveredBlock94Block240Arg1.
            recoveredBlock94Block240PC := 263.
        ].
        recoveredBlock94Block240Step = 263 ifTrue: [
            recoveredBlock94Block240Stack1 := (recoveredBlock94Block240Stack1) add: (recoveredBlock94Block240Stack2).
            recoveredBlock94Block240PC := 265.
        ].
        recoveredBlock94Block240Step = 265 ifTrue: [
            recoveredBlock94Block240Result := recoveredBlock94Block240Stack1.
            recoveredBlock94Block240Done := true.
        ].
    ].
    recoveredBlock94Block240Result
].
            recoveredBlock94PC := 266.
        ].
        recoveredBlock94Step = 266 ifTrue: [
            (recoveredBlock94Stack1) do: (recoveredBlock94Stack2).
            recoveredBlock94PC := 268.
        ].
        recoveredBlock94Step = 268 ifTrue: [
            recoveredBlock94Stack1 := nil.
            recoveredBlock94PC := 269.
        ].
        recoveredBlock94Step = 269 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Local1.
            recoveredBlock94PC := 272.
        ].
        recoveredBlock94Step = 272 ifTrue: [
            (recoveredBlock94Stack2 ~~ nil) ifTrue: [recoveredBlock94PC := 285] ifFalse: [recoveredBlock94PC := 276].
        ].
        recoveredBlock94Step = 276 ifTrue: [
            recoveredBlock94PC := 277.
        ].
        recoveredBlock94Step = 277 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal2.
            recoveredBlock94PC := 280.
        ].
        recoveredBlock94Step = 280 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 283.
        ].
        recoveredBlock94Step = 283 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) add: (recoveredBlock94Stack2).
            recoveredBlock94PC := 285.
        ].
        recoveredBlock94Step = 285 ifTrue: [
            recoveredBlock94Stack2 := nil.
            recoveredBlock94PC := 286.
        ].
        recoveredBlock94Step = 286 ifTrue: [
            recoveredBlock94Local1 := recoveredBlock94Stack2.
            recoveredBlock94PC := 289.
        ].
        recoveredBlock94Step = 289 ifTrue: [
            recoveredBlock94PC := 300.
        ].
        recoveredBlock94Step = 292 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal2.
            recoveredBlock94PC := 295.
        ].
        recoveredBlock94Step = 295 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 298.
        ].
        recoveredBlock94Step = 298 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) add: (recoveredBlock94Stack2).
            recoveredBlock94PC := 300.
        ].
        recoveredBlock94Step = 300 ifTrue: [
            recoveredBlock94PC := 386.
        ].
        recoveredBlock94Step = 304 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 307.
        ].
        recoveredBlock94Step = 307 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isSend.
            recoveredBlock94PC := 309.
        ].
        recoveredBlock94Step = 309 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 312] ifFalse: [recoveredBlock94PC := 320].
        ].
        recoveredBlock94Step = 312 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 315.
        ].
        recoveredBlock94Step = 315 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isGetAccessEnabled.
            recoveredBlock94PC := 317.
        ].
        recoveredBlock94Step = 317 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 336] ifFalse: [recoveredBlock94PC := 320].
        ].
        recoveredBlock94Step = 320 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 323.
        ].
        recoveredBlock94Step = 323 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isReceive.
            recoveredBlock94PC := 325.
        ].
        recoveredBlock94Step = 325 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 328] ifFalse: [recoveredBlock94PC := 378].
        ].
        recoveredBlock94Step = 328 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 331.
        ].
        recoveredBlock94Step = 331 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isSetAccessEnabled.
            recoveredBlock94PC := 333.
        ].
        recoveredBlock94Step = 333 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 336] ifFalse: [recoveredBlock94PC := 378].
        ].
        recoveredBlock94Step = 336 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal2.
            recoveredBlock94PC := 339.
        ].
        recoveredBlock94Step = 339 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 342.
        ].
        recoveredBlock94Step = 342 ifTrue: [
            (recoveredBlock94Stack1) add: (recoveredBlock94Stack2).
            recoveredBlock94PC := 344.
        ].
        recoveredBlock94Step = 344 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal3.
            recoveredBlock94PC := 347.
        ].
        recoveredBlock94Step = 347 ifTrue: [
            recoveredBlock94Stack2 := recoveredLocal3.
            recoveredBlock94PC := 350.
        ].
        recoveredBlock94Step = 350 ifTrue: [
            recoveredBlock94Stack3 := [:recoveredBlock94Block350Arg1 | 
    | recoveredBlock94Block350Value0 recoveredBlock94Block350Value1 recoveredBlock94Block350Value2 recoveredBlock94Block350Value3 recoveredBlock94Block350Value4 |
    recoveredBlock94Block350Value0 := recoveredBlock94Block350Arg1.
    recoveredBlock94Block350Value1 := (recoveredBlock94Block350Value0) mappingDisplayName.
    recoveredBlock94Block350Value2 := recoveredBlock94Arg1.
    recoveredBlock94Block350Value3 := (recoveredBlock94Block350Value2) mappingDisplayName.
    recoveredBlock94Block350Value4 := (recoveredBlock94Block350Value1) = (recoveredBlock94Block350Value3).
    recoveredBlock94Block350Value4
].
            recoveredBlock94PC := 366.
        ].
        recoveredBlock94Step = 366 ifTrue: [
            recoveredBlock94Stack4 := [].
            recoveredBlock94PC := 368.
        ].
        recoveredBlock94Step = 368 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) detect: (recoveredBlock94Stack3) ifNone: (recoveredBlock94Stack4).
            recoveredBlock94PC := 370.
        ].
        recoveredBlock94Step = 370 ifTrue: [
            recoveredBlock94Stack3 := [].
            recoveredBlock94PC := 372.
        ].
        recoveredBlock94Step = 372 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) remove: (recoveredBlock94Stack2) ifAbsent: (recoveredBlock94Stack3).
            recoveredBlock94PC := 374.
        ].
        recoveredBlock94Step = 374 ifTrue: [
            recoveredBlock94PC := 386.
        ].
        recoveredBlock94Step = 378 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal3.
            recoveredBlock94PC := 381.
        ].
        recoveredBlock94Step = 381 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 384.
        ].
        recoveredBlock94Step = 384 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) add: (recoveredBlock94Stack2).
            recoveredBlock94PC := 386.
        ].
        recoveredBlock94Step = 386 ifTrue: [
            recoveredBlock94PC := 398.
        ].
        recoveredBlock94Step = 390 ifTrue: [
            recoveredBlock94Stack1 := recoveredLocal3.
            recoveredBlock94PC := 393.
        ].
        recoveredBlock94Step = 393 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Arg1.
            recoveredBlock94PC := 396.
        ].
        recoveredBlock94Step = 396 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) add: (recoveredBlock94Stack2).
            recoveredBlock94PC := 398.
        ].
        recoveredBlock94Step = 398 ifTrue: [
            recoveredBlock94Result := recoveredBlock94Stack1.
            recoveredBlock94Done := true.
        ].
    ].
    recoveredBlock94Result
].
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := ASDMappingSourceObject.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredPC := 416.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := ASDMappingExternalSourceObject.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := [:recoveredBlock422Arg1 | 
    | recoveredBlock422Local1 recoveredBlock422Value0 recoveredBlock422Value1 recoveredBlock422Value2 recoveredBlock422Value3 recoveredBlock422Value4 recoveredBlock422Value5 recoveredBlock422Value6 recoveredBlock422Value7 recoveredBlock422Value8 recoveredBlock422Value9 |
    recoveredBlock422Value0 := recoveredLocal1.
    recoveredBlock422Value1 := recoveredBlock422Arg1.
    recoveredBlock422Value2 := (recoveredBlock422Value0) newFor: (recoveredBlock422Value1) artificial: (false).
    recoveredBlock422Local1 := recoveredBlock422Value2.
    recoveredBlock422Value3 := recoveredBlock422Arg1.
    recoveredBlock422Value4 := recoveredBlock422Local1.
    recoveredBlock422Value5 := (recoveredBlock422Value3) asVariableMappingSource: (recoveredBlock422Value4) inSWC: (self) artificial: (false).
    recoveredBlock422Local1 := recoveredBlock422Value5.
    recoveredBlock422Value6 := recoveredLocal6.
    recoveredBlock422Value7 := [:recoveredBlock422Block457Arg1 | 
    | recoveredBlock422Block457Value0 recoveredBlock422Block457Value1 recoveredBlock422Block457Value2 recoveredBlock422Block457Value3 recoveredBlock422Block457Value4 |
    recoveredBlock422Block457Value0 := recoveredBlock422Block457Arg1.
    recoveredBlock422Block457Value1 := (recoveredBlock422Block457Value0) displayName.
    recoveredBlock422Block457Value2 := recoveredBlock422Local1.
    recoveredBlock422Block457Value3 := (recoveredBlock422Block457Value2) displayName.
    recoveredBlock422Block457Value4 := (recoveredBlock422Block457Value1) = (recoveredBlock422Block457Value3).
    recoveredBlock422Block457Value4
].
    recoveredBlock422Value8 := [
    | recoveredBlock422Block474Value0 recoveredBlock422Block474Value1 recoveredBlock422Block474Value2 |
    recoveredBlock422Block474Value0 := recoveredLocal6.
    recoveredBlock422Block474Value1 := recoveredBlock422Local1.
    recoveredBlock422Block474Value2 := (recoveredBlock422Block474Value0) add: (recoveredBlock422Block474Value1).
    recoveredBlock422Block474Value2
].
    recoveredBlock422Value9 := (recoveredBlock422Value6) detect: (recoveredBlock422Value7) ifNone: (recoveredBlock422Value8).
    recoveredBlock422Value9
].
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := [:recoveredBlock497Arg1 | 
    | recoveredBlock497Local1 recoveredBlock497Local2 recoveredBlock497Stack0 recoveredBlock497Stack1 recoveredBlock497Stack2 recoveredBlock497Stack3 recoveredBlock497Stack4 recoveredBlock497Stack5 recoveredBlock497PC recoveredBlock497Step recoveredBlock497Done recoveredBlock497Result |
    recoveredBlock497Stack0 := self.
    recoveredBlock497PC := 504.
    recoveredBlock497Done := false.
    [recoveredBlock497Done not] whileTrue: [
        recoveredBlock497Step := recoveredBlock497PC.
        recoveredBlock497Step = 504 ifTrue: [
            recoveredBlock497Stack1 := recoveredLocal1.
            recoveredBlock497PC := 507.
        ].
        recoveredBlock497Step = 507 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Arg1.
            recoveredBlock497PC := 510.
        ].
        recoveredBlock497Step = 510 ifTrue: [
            recoveredBlock497Stack3 := true.
            recoveredBlock497PC := 511.
        ].
        recoveredBlock497Step = 511 ifTrue: [
            recoveredBlock497Stack1 := (recoveredBlock497Stack1) newFor: (recoveredBlock497Stack2) artificial: (recoveredBlock497Stack3).
            recoveredBlock497PC := 513.
        ].
        recoveredBlock497Step = 513 ifTrue: [
            recoveredBlock497Local2 := recoveredBlock497Stack1.
            recoveredBlock497PC := 516.
        ].
        recoveredBlock497Step = 516 ifTrue: [
            recoveredBlock497Stack1 := recoveredBlock497Arg1.
            recoveredBlock497PC := 519.
        ].
        recoveredBlock497Step = 519 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Local2.
            recoveredBlock497PC := 522.
        ].
        recoveredBlock497Step = 522 ifTrue: [
            recoveredBlock497Stack3 := self.
            recoveredBlock497PC := 523.
        ].
        recoveredBlock497Step = 523 ifTrue: [
            recoveredBlock497Stack4 := true.
            recoveredBlock497PC := 524.
        ].
        recoveredBlock497Step = 524 ifTrue: [
            recoveredBlock497Stack1 := (recoveredBlock497Stack1) asVariableMappingSource: (recoveredBlock497Stack2) inSWC: (recoveredBlock497Stack3) artificial: (recoveredBlock497Stack4).
            recoveredBlock497PC := 527.
        ].
        recoveredBlock497Step = 527 ifTrue: [
            recoveredBlock497Local2 := recoveredBlock497Stack1.
            recoveredBlock497PC := 530.
        ].
        recoveredBlock497Step = 530 ifTrue: [
            recoveredBlock497Stack1 := recoveredLocal6.
            recoveredBlock497PC := 533.
        ].
        recoveredBlock497Step = 533 ifTrue: [
            recoveredBlock497Stack2 := [:recoveredBlock497Block533Arg1 | 
    | recoveredBlock497Block533Value0 recoveredBlock497Block533Value1 recoveredBlock497Block533Value2 recoveredBlock497Block533Value3 recoveredBlock497Block533Value4 |
    recoveredBlock497Block533Value0 := recoveredBlock497Block533Arg1.
    recoveredBlock497Block533Value1 := (recoveredBlock497Block533Value0) displayName.
    recoveredBlock497Block533Value2 := recoveredBlock497Local2.
    recoveredBlock497Block533Value3 := (recoveredBlock497Block533Value2) displayName.
    recoveredBlock497Block533Value4 := (recoveredBlock497Block533Value1) = (recoveredBlock497Block533Value3).
    recoveredBlock497Block533Value4
].
            recoveredBlock497PC := 550.
        ].
        recoveredBlock497Step = 550 ifTrue: [
            recoveredBlock497Stack3 := [].
            recoveredBlock497PC := 552.
        ].
        recoveredBlock497Step = 552 ifTrue: [
            recoveredBlock497Stack1 := (recoveredBlock497Stack1) detect: (recoveredBlock497Stack2) ifNone: (recoveredBlock497Stack3).
            recoveredBlock497PC := 554.
        ].
        recoveredBlock497Step = 554 ifTrue: [
            recoveredBlock497Local1 := recoveredBlock497Stack1.
            recoveredBlock497PC := 557.
        ].
        recoveredBlock497Step = 557 ifTrue: [
            recoveredBlock497Stack1 := recoveredBlock497Local1.
            recoveredBlock497PC := 560.
        ].
        recoveredBlock497Step = 560 ifTrue: [
            (recoveredBlock497Stack1 ~~ nil) ifTrue: [recoveredBlock497PC := 576] ifFalse: [recoveredBlock497PC := 564].
        ].
        recoveredBlock497Step = 564 ifTrue: [
            recoveredBlock497Stack1 := recoveredLocal6.
            recoveredBlock497PC := 567.
        ].
        recoveredBlock497Step = 567 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Local2.
            recoveredBlock497PC := 570.
        ].
        recoveredBlock497Step = 570 ifTrue: [
            recoveredBlock497Stack1 := (recoveredBlock497Stack1) add: (recoveredBlock497Stack2).
            recoveredBlock497PC := 572.
        ].
        recoveredBlock497Step = 572 ifTrue: [
            recoveredBlock497PC := 631.
        ].
        recoveredBlock497Step = 576 ifTrue: [
            recoveredBlock497Stack1 := recoveredBlock497Local1.
            recoveredBlock497PC := 579.
        ].
        recoveredBlock497Step = 579 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Local2.
            recoveredBlock497PC := 582.
        ].
        recoveredBlock497Step = 582 ifTrue: [
            recoveredBlock497Stack2 := (recoveredBlock497Stack2) modelScope.
            recoveredBlock497PC := 584.
        ].
        recoveredBlock497Step = 584 ifTrue: [
            (recoveredBlock497Stack1) modelScopeAdd: (recoveredBlock497Stack2).
            recoveredBlock497PC := 586.
        ].
        recoveredBlock497Step = 586 ifTrue: [
            recoveredBlock497Stack1 := nil.
            recoveredBlock497PC := 587.
        ].
        recoveredBlock497Step = 587 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Local1.
            recoveredBlock497PC := 590.
        ].
        recoveredBlock497Step = 590 ifTrue: [
            recoveredBlock497Stack2 := (recoveredBlock497Stack2) hasModelAccessSend.
            recoveredBlock497PC := 592.
        ].
        recoveredBlock497Step = 592 ifTrue: [
            (recoveredBlock497Stack2) ifTrue: [recoveredBlock497PC := 604] ifFalse: [recoveredBlock497PC := 596].
        ].
        recoveredBlock497Step = 596 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Local1.
            recoveredBlock497PC := 599.
        ].
        recoveredBlock497Step = 599 ifTrue: [
            recoveredBlock497Stack2 := (recoveredBlock497Stack2) hasModelAccessReceive.
            recoveredBlock497PC := 601.
        ].
        recoveredBlock497Step = 601 ifTrue: [
            (recoveredBlock497Stack2) ifTrue: [recoveredBlock497PC := 604] ifFalse: [recoveredBlock497PC := 631].
        ].
        recoveredBlock497Step = 604 ifTrue: [
            recoveredBlock497PC := 605.
        ].
        recoveredBlock497Step = 605 ifTrue: [
            recoveredBlock497Stack1 := nil.
            recoveredBlock497PC := 606.
        ].
        recoveredBlock497Step = 606 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Local2.
            recoveredBlock497PC := 609.
        ].
        recoveredBlock497Step = 609 ifTrue: [
            recoveredBlock497Stack2 := (recoveredBlock497Stack2) hasModelAccessSendReceive.
            recoveredBlock497PC := 611.
        ].
        recoveredBlock497Step = 611 ifTrue: [
            (recoveredBlock497Stack2) ifTrue: [recoveredBlock497PC := 614] ifFalse: [recoveredBlock497PC := 631].
        ].
        recoveredBlock497Step = 614 ifTrue: [
            recoveredBlock497PC := 615.
        ].
        recoveredBlock497Step = 615 ifTrue: [
            recoveredBlock497Stack1 := recoveredLocal6.
            recoveredBlock497PC := 618.
        ].
        recoveredBlock497Step = 618 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Local1.
            recoveredBlock497PC := 621.
        ].
        recoveredBlock497Step = 621 ifTrue: [
            (recoveredBlock497Stack1) remove: (recoveredBlock497Stack2).
            recoveredBlock497PC := 623.
        ].
        recoveredBlock497Step = 623 ifTrue: [
            recoveredBlock497Stack1 := recoveredLocal6.
            recoveredBlock497PC := 626.
        ].
        recoveredBlock497Step = 626 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Local2.
            recoveredBlock497PC := 629.
        ].
        recoveredBlock497Step = 629 ifTrue: [
            recoveredBlock497Stack1 := (recoveredBlock497Stack1) add: (recoveredBlock497Stack2).
            recoveredBlock497PC := 631.
        ].
        recoveredBlock497Step = 631 ifTrue: [
            recoveredBlock497Result := recoveredBlock497Stack1.
            recoveredBlock497Done := true.
        ].
    ].
    recoveredBlock497Result
].
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

