"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000660; bytecode file offset 0x8ffcfc"
!EtasXMLBasedOptions methodsFor: 'recovered'!
optionsDialogCancelled
    ^self
! !

"ASDBase.ic method 0x20001010; bytecode file offset 0x8ffcfc"
!EtasXMLBasedOptions methodsFor: 'recovered'!
optionsDialogConfirmed
    ^self
! !

"ASDBase.ic method 0x20021a64; bytecode file offset 0x92209c"
!EtasXMLBasedOptions methodsFor: 'recovered'!
xmlBuildCategory
    ^'Build'
! !

"ASDBase.ic method 0x20022100; bytecode file offset 0x92209c"
!EtasXMLBasedOptions methodsFor: 'recovered'!
declarationFilenamePattern
    ^'*.*'
! !

"ASDBase.ic method 0x20023f78; bytecode file offset 0x92209c"
!EtasXMLBasedOptions methodsFor: 'recovered'!
optionGroupExternalTools
    ^'External Tools'
! !

"ASDBase.ic method 0x20025214; bytecode file offset 0x92209c"
!EtasXMLBasedOptions methodsFor: 'recovered'!
xmlNameTemplates
    ^'Templates'
! !

"ASDBase.ic method 0x2003a364; bytecode file offset 0x938608"
!EtasXMLBasedOptions methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e668; bytecode file offset 0x93bf94"
!EtasXMLBasedOptions methodsFor: 'recovered'!
fontManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBFontGlobal.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200896c8; bytecode file offset 0x985fa4"
!EtasXMLBasedOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    dict := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008a100; bytecode file offset 0x9869dc"
!EtasXMLBasedOptions methodsFor: 'recovered'!
getDeclarationFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppProgramPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := (self) getDeclarationFilesInRootPath: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20093890; bytecode file offset 0x9904ac"
!EtasXMLBasedOptions methodsFor: 'recovered'!
readOptionsFromXMLFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) readOptions: (recoveredValue0) fromXMLFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093b90; bytecode file offset 0x9904ac"
!EtasXMLBasedOptions methodsFor: 'recovered'!
importOptionsFromXMLFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) readOptions: (recoveredValue0) fromXMLFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a52bc; bytecode file offset 0x9a1dc8"
!EtasXMLBasedOptions methodsFor: 'recovered'!
exportOptionsToXMLFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := recoveredArg1.
    (self) writeOptions: (recoveredValue0) toXMLFile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ad2c0; bytecode file offset 0x9a9b78"
!EtasXMLBasedOptions methodsFor: 'recovered'!
readOptions: recoveredArg1 fromXMLFile: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) readOptions: (recoveredValue0) overrideFixed: (false) fromXMLFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be42c; bytecode file offset 0x9bb178"
!EtasXMLBasedOptions methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8068; bytecode file offset 0x9c4924"
!EtasXMLBasedOptions methodsFor: 'recovered'!
readOptionsFromXMLFile: recoveredArg1 overrideFixed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) readOptions: (recoveredValue0) overrideFixed: (recoveredValue1) fromXMLFile: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cd1f8; bytecode file offset 0x9c9b84"
!EtasXMLBasedOptions methodsFor: 'recovered'!
externalOptionFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppDataPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := (recoveredValue2) , ('\externalSettings.xml').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cd230; bytecode file offset 0x9c9b84"
!EtasXMLBasedOptions methodsFor: 'recovered'!
userDefaultsOptionFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppDataPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := (recoveredValue2) , ('userDefaultSettings.xml').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cd284; bytecode file offset 0x9c9b84"
!EtasXMLBasedOptions methodsFor: 'recovered'!
stationOptionFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppDataPath.
    recoveredValue2 := (recoveredValue1) asUnresolvedPathname.
    recoveredValue3 := (recoveredValue2) , ('stationSettings.xml').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cd2a0; bytecode file offset 0x9c9b84"
!EtasXMLBasedOptions methodsFor: 'recovered'!
externalToolsOptionFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppDataPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := (recoveredValue2) , ('\externalToolsSettings.xml').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dcaa0; bytecode file offset 0x9d937c"
!EtasXMLBasedOptions methodsFor: 'recovered'!
addOption: recoveredArg1 toXMLDocument: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) rootTag.
    (self) addOption: (recoveredValue0) toXMLDocument: (recoveredValue1) rootTag: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200dcab0; bytecode file offset 0x9d937c"
!EtasXMLBasedOptions methodsFor: 'recovered'!
addOptionDeclaration: recoveredArg1 toXMLDocument: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) rootTag.
    (self) addOptionDeclaration: (recoveredValue0) toXMLDocument: (recoveredValue1) rootTag: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200dcac0; bytecode file offset 0x9d937c"
!EtasXMLBasedOptions methodsFor: 'recovered'!
addOptionStructure: recoveredArg1 toXMLDocument: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) rootTag.
    (self) addOptionStructure: (recoveredValue0) toXMLDocument: (recoveredValue1) rootTag: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20110c68; bytecode file offset 0xa0d524"
!EtasXMLBasedOptions methodsFor: 'recovered'!
availableToolTypes: recoveredArg1 currentType: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
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
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20128fe0; bytecode file offset 0xa258cc"
!EtasXMLBasedOptions methodsFor: 'recovered'!
options
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            options := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201347d0; bytecode file offset 0xa31090"
!EtasXMLBasedOptions methodsFor: 'recovered'!
availableToolLabels: recoveredArg1 currentLabel: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '*[*]'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) match: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20152bf4; bytecode file offset 0xa4f4c4"
!EtasXMLBasedOptions methodsFor: 'recovered'!
promptAccessError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('Unable to access options in file ') , (recoveredValue1).
    recoveredValue3 := ('.\Either the file is read only or some tool or software is accessing this file at the same time\while ASCET tries to access its settings.') withCrs.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue0) errorMessage: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) prompt.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201a8c3c; bytecode file offset 0xaa5500"
!EtasXMLBasedOptions methodsFor: 'recovered'!
optionAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) basicOptionAt: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) optionClass.
    recoveredBlock8Value2 := (recoveredBlock8Value1) value.
    ^recoveredBlock8Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) value.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201eae04; bytecode file offset 0xae76cc"
!EtasXMLBasedOptions methodsFor: 'recovered'!
optionAt: recoveredArg1 putValue: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) basicOptionAt: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) optionClass.
    recoveredBlock8Value2 := recoveredArg2.
    recoveredBlock8Value3 := (recoveredBlock8Value1) basicValue: (recoveredBlock8Value2).
    ^recoveredBlock8Value3
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) value.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f4ca4; bytecode file offset 0xaf1564"
!EtasXMLBasedOptions methodsFor: 'recovered'!
readOptionsFromINIFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) readOptionFromINIFiles: (recoveredBlock5Stack3).
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 26] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) xmlValue: (recoveredBlock5Stack2).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202394b0; bytecode file offset 0xb35d6c"
!EtasXMLBasedOptions methodsFor: 'recovered'!
getDOMFromXMLFile: recoveredArg1 rootTagName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) getStreamFromXMLFile: (recoveredValue0) ifFail: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) getDOMFromStream: (recoveredValue3) fileName: (recoveredValue4) rootTagName: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202500b8; bytecode file offset 0xb4c984"
!EtasXMLBasedOptions methodsFor: 'recovered'!
getDeclarationFilesInRootPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (self) declarationFilenamePattern.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) findFiles: (recoveredValue1) in: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) dName.
    recoveredBlock19Value3 := (recoveredBlock19Value0) , (recoveredBlock19Value2).
    recoveredBlock19Value3
].
    recoveredValue6 := (recoveredValue4) collect: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2025043c; bytecode file offset 0xb4cd00"
!EtasXMLBasedOptions methodsFor: 'recovered'!
editExternalToolOptions: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) optionGroupExternalTools.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) optionGroup.
    recoveredBlock11Value2 := recoveredBlock11Value1.
    recoveredLocal1 := recoveredBlock11Value2.
    recoveredBlock11Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (self) editStationOptions: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20285d94; bytecode file offset 0xb82660"
!EtasXMLBasedOptions methodsFor: 'recovered'!
collectAllOptions: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack1) add: (recoveredBlock7Stack2).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) optionClass.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isContainerOption.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 28] ifFalse: [recoveredBlock7PC := 38].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) optionClass.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) options.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) collectAllOptions: (recoveredBlock7Stack2) in: (recoveredBlock7Stack3).
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202aaa94; bytecode file offset 0xba7358"
!EtasXMLBasedOptions methodsFor: 'recovered'!
basicOptionAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := dict.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := (self) allOptions.
    recoveredBlock9Value1 := [:recoveredBlock9Block17Arg1 | 
    | recoveredBlock9Block17Value0 recoveredBlock9Block17Value1 recoveredBlock9Block17Value2 recoveredBlock9Block17Value3 |
    recoveredBlock9Block17Value0 := recoveredBlock9Block17Arg1.
    recoveredBlock9Block17Value1 := (recoveredBlock9Block17Value0) attributeName.
    recoveredBlock9Block17Value2 := recoveredArg1.
    recoveredBlock9Block17Value3 := (recoveredBlock9Block17Value1) = (recoveredBlock9Block17Value2).
    recoveredBlock9Block17Value3
].
    recoveredBlock9Value2 := [
    ^nil
].
    recoveredBlock9Value3 := (recoveredBlock9Value0) detect: (recoveredBlock9Value1) ifNone: (recoveredBlock9Value2).
    recoveredBlock9Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202e131c; bytecode file offset 0xbddbf4"
!EtasXMLBasedOptions methodsFor: 'recovered'!
readOptionsFromXMLFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e6c88Arg1 | 
    | block280e6c88Value0 block280e6c88Value1 |
    block280e6c88Value0 := block280e6c88Arg1.
    block280e6c88Value1 := (block280e6c88Value0) optionFile.
    block280e6c88Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 |
    recoveredBlock16Value0 := (self) allOptions.
    recoveredBlock16Value1 := [:recoveredBlock16Block24Arg1 | 
    | recoveredBlock16Block24Value0 recoveredBlock16Block24Value1 recoveredBlock16Block24Value2 recoveredBlock16Block24Value3 |
    recoveredBlock16Block24Value0 := recoveredBlock16Block24Arg1.
    recoveredBlock16Block24Value1 := (recoveredBlock16Block24Value0) optionFile.
    recoveredBlock16Block24Value2 := recoveredBlock16Arg1.
    recoveredBlock16Block24Value3 := (recoveredBlock16Block24Value1) = (recoveredBlock16Block24Value2).
    recoveredBlock16Block24Value3
].
    recoveredBlock16Value2 := (recoveredBlock16Value0) select: (recoveredBlock16Value1).
    recoveredBlock16Value3 := recoveredBlock16Arg1.
    recoveredBlock16Value4 := (recoveredBlock16Value3) removeDoubleBackslashes.
    recoveredBlock16Value5 := (self) readOptions: (recoveredBlock16Value2) fromXMLFile: (recoveredBlock16Value4).
    recoveredBlock16Value5
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030f3a0; bytecode file offset 0xc0bc78"
!EtasXMLBasedOptions methodsFor: 'recovered'!
allOptions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280ea654Arg1 | 
    | block280ea654Value0 block280ea654Value1 block280ea654Value2 |
    block280ea654Value0 := block280ea654Arg1.
    block280ea654Value1 := (block280ea654Value0) optionClass.
    block280ea654Value2 := (block280ea654Value1) isContainerOption.
    block280ea654Value2
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := (recoveredBlock34Value0) optionClass.
    recoveredBlock34Value2 := (recoveredBlock34Value1) options.
    recoveredBlock34Value3 := recoveredLocal1.
    recoveredBlock34Value4 := (self) collectAllOptions: (recoveredBlock34Value2) in: (recoveredBlock34Value3).
    recoveredBlock34Value4
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20354fac; bytecode file offset 0xc51894"
!EtasXMLBasedOptions methodsFor: 'recovered'!
userOptionFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAppDataPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := false.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal1.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            (recoveredBlock10Stack2 == nil) ifTrue: [recoveredBlock10PC := 29] ifFalse: [recoveredBlock10PC := 24].
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) notEmpty.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    'The options are created before the SGMainView>>#registerApplication has been executed'
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'User\'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := ASDInitializeToolOptions.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCurrentUser.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'userSettings.xml'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20372460; bytecode file offset 0xc6ed48"
!EtasXMLBasedOptions methodsFor: 'recovered'!
getStreamFromXMLFile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Unable to read in file\'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := '.\The file does not exists.'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'Unable to read in file\'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := '.\The file could not been opened.'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2038ba0c; bytecode file offset 0xc882f8"
!EtasXMLBasedOptions methodsFor: 'recovered'!
getStreamFromXMLFile: recoveredArg1 ifFail: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Unable to read in file\'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := '.\The file does not exists.'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'Unable to read in file\'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := '.\The file could not been opened.'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c40c0; bytecode file offset 0xcc09b4"
!EtasXMLBasedOptions methodsFor: 'recovered'!
editStationOptions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('*') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('*').
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := MainController.
    recoveredValue4 := (recoveredValue3) allToolOptions.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := recoveredLocal3.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) optionClass.
    recoveredBlock19Value3 := (recoveredBlock19Value2) group.
    recoveredBlock19Value4 := (recoveredBlock19Value0) match: (recoveredBlock19Value3).
    recoveredBlock19Value4
].
    recoveredValue6 := (recoveredValue4) select: (recoveredValue5).
    recoveredLocal4 := recoveredValue6.
    recoveredValue7 := ASDOptionDialog.
    recoveredValue8 := (recoveredValue7) create.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredLocal4.
    (recoveredValue10) options: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) rootNodeName.
    recoveredValue15 := (recoveredValue14) , ('\').
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue15) , (recoveredValue16).
    (recoveredValue12) firstSelection: (recoveredValue17).
    (recoveredValue9) readOnly: (false).
    recoveredValue18 := recoveredLocal1.
    (recoveredValue18) prompt.
    ^self
! !

"ASDBase.ic method 0x203ce338; bytecode file offset 0xccac10"
!EtasXMLBasedOptions methodsFor: 'recovered'!
addOptionDeclaration: recoveredArg1 toXMLDocument: recoveredArg2 rootTag: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) getAttribute: ('name').
    recoveredBlock14Value2 := recoveredArg1.
    recoveredBlock14Value3 := (recoveredBlock14Value2) attributeName.
    recoveredBlock14Value4 := (recoveredBlock14Value1) = (recoveredBlock14Value3).
    recoveredBlock14Value4
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock30Local1 recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 recoveredBlock30Value5 recoveredBlock30Value6 |
    recoveredBlock30Value0 := recoveredArg2.
    recoveredBlock30Value1 := (recoveredBlock30Value0) createElement: ('OptionDeclaration').
    recoveredBlock30Local1 := recoveredBlock30Value1.
    recoveredBlock30Value2 := recoveredArg1.
    recoveredBlock30Value3 := recoveredArg2.
    recoveredBlock30Value4 := recoveredBlock30Local1.
    (recoveredBlock30Value2) writeDeclarationToXMLDocument: (recoveredBlock30Value3) optionTag: (recoveredBlock30Value4).
    recoveredBlock30Value5 := recoveredLocal1.
    recoveredBlock30Value6 := recoveredBlock30Local1.
    (recoveredBlock30Value5) appendChild: (recoveredBlock30Value6).
    ^self
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) writeDeclarationToXMLDocument: (recoveredStack2) optionTag: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fcbec; bytecode file offset 0xcf94dc"
!EtasXMLBasedOptions methodsFor: 'recovered'!
writeOptionsToXMLFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Kk'.
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
            recoveredStack1 := ASDAscetController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMultiInstanceMode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:block280f9eacArg1 | 
    | block280f9eacValue0 block280f9eacValue1 |
    block280f9eacValue0 := block280f9eacArg1.
    block280f9eacValue1 := (block280f9eacValue0) optionFile.
    block280f9eacValue1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            (recoveredBlock36Stack2 == nil) ifTrue: [recoveredBlock36PC := 89] ifFalse: [recoveredBlock36PC := 50].
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36Stack2 := self.
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) allOptions.
            recoveredBlock36PC := 55.
        ].
        recoveredBlock36Step = 55 ifTrue: [
            recoveredBlock36Stack3 := [:recoveredBlock36Block55Arg1 | 
    | recoveredBlock36Block55Stack0 recoveredBlock36Block55Stack1 recoveredBlock36Block55Stack2 recoveredBlock36Block55Stack3 recoveredBlock36Block55Stack4 recoveredBlock36Block55PC recoveredBlock36Block55Step recoveredBlock36Block55Done recoveredBlock36Block55Result |
    recoveredBlock36Block55Stack0 := nil.
    recoveredBlock36Block55PC := 62.
    recoveredBlock36Block55Done := false.
    [recoveredBlock36Block55Done not] whileTrue: [
        recoveredBlock36Block55Step := recoveredBlock36Block55PC.
        recoveredBlock36Block55Step = 62 ifTrue: [
            recoveredBlock36Block55Stack1 := false.
            recoveredBlock36Block55PC := 63.
        ].
        recoveredBlock36Block55Step = 63 ifTrue: [
            recoveredBlock36Block55Stack2 := recoveredBlock36Block55Arg1.
            recoveredBlock36Block55PC := 64.
        ].
        recoveredBlock36Block55Step = 64 ifTrue: [
            recoveredBlock36Block55Stack2 := (recoveredBlock36Block55Stack2) optionFile.
            recoveredBlock36Block55PC := 66.
        ].
        recoveredBlock36Block55Step = 66 ifTrue: [
            recoveredBlock36Block55Stack3 := recoveredBlock36Arg1.
            recoveredBlock36Block55PC := 69.
        ].
        recoveredBlock36Block55Step = 69 ifTrue: [
            recoveredBlock36Block55Stack2 := (recoveredBlock36Block55Stack2) = (recoveredBlock36Block55Stack3).
            recoveredBlock36Block55PC := 70.
        ].
        recoveredBlock36Block55Step = 70 ifTrue: [
            (recoveredBlock36Block55Stack2) ifTrue: [recoveredBlock36Block55PC := 74] ifFalse: [recoveredBlock36Block55PC := 81].
        ].
        recoveredBlock36Block55Step = 74 ifTrue: [
            recoveredBlock36Block55PC := 75.
        ].
        recoveredBlock36Block55Step = 75 ifTrue: [
            recoveredBlock36Block55Stack1 := recoveredBlock36Block55Arg1.
            recoveredBlock36Block55PC := 76.
        ].
        recoveredBlock36Block55Step = 76 ifTrue: [
            recoveredBlock36Block55Stack1 := (recoveredBlock36Block55Stack1) optionCategory.
            recoveredBlock36Block55PC := 78.
        ].
        recoveredBlock36Block55Step = 78 ifTrue: [
            recoveredBlock36Block55Stack2 := 'FILE'.
            recoveredBlock36Block55PC := 80.
        ].
        recoveredBlock36Block55Step = 80 ifTrue: [
            recoveredBlock36Block55Stack1 := (recoveredBlock36Block55Stack1) = (recoveredBlock36Block55Stack2).
            recoveredBlock36Block55PC := 81.
        ].
        recoveredBlock36Block55Step = 81 ifTrue: [
            recoveredBlock36Block55Result := recoveredBlock36Block55Stack1.
            recoveredBlock36Block55Done := true.
        ].
    ].
    recoveredBlock36Block55Result
].
            recoveredBlock36PC := 82.
        ].
        recoveredBlock36Step = 82 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) select: (recoveredBlock36Stack3).
            recoveredBlock36PC := 84.
        ].
        recoveredBlock36Step = 84 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 87.
        ].
        recoveredBlock36Step = 87 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) writeOptions: (recoveredBlock36Stack2) toXMLFile: (recoveredBlock36Stack3).
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040d850; bytecode file offset 0xd0a194"
!EtasXMLBasedOptions methodsFor: 'recovered'!
getDOMFromStream: recoveredArg1 fileName: recoveredArg2 rootTagName: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasOptionsDOMDocument.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) parseStream: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 |
    recoveredBlock25Value0 := RBUserInfo.
    recoveredBlock25Value1 := ('Unable to read in file\') withCrs.
    recoveredBlock25Value2 := recoveredArg2.
    recoveredBlock25Value3 := (recoveredBlock25Value1) , (recoveredBlock25Value2).
    recoveredBlock25Value4 := ('.\A parser error occured.') withCrs.
    recoveredBlock25Value5 := (recoveredBlock25Value3) , (recoveredBlock25Value4).
    recoveredBlock25Value6 := (recoveredBlock25Value0) errorMessage: (recoveredBlock25Value5).
    (recoveredBlock25Value6) prompt.
    ^nil
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootTag.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'XML file is not valid.\Root Tag <'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := '> expected.'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20452144; bytecode file offset 0xd4ea38"
!EtasXMLBasedOptions methodsFor: 'recovered'!
writeOptions: recoveredArg1 toXMLStream: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasOptionsDOMDocument.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNodeName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) createElement: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) addTag: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:block280ff70cArg1 | 
    | block280ff70cValue0 block280ff70cValue1 |
    block280ff70cValue0 := block280ff70cArg1.
    block280ff70cValue1 := (block280ff70cValue0) isXMLOption.
    block280ff70cValue1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Local1 recoveredBlock40Local2 recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) optionClass.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) isContainerOption.
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 54] ifFalse: [recoveredBlock40PC := 92].
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 55.
        ].
        recoveredBlock40Step = 55 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) optionClass.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) changeable.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 62] ifFalse: [recoveredBlock40PC := 69].
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 64.
        ].
        recoveredBlock40Step = 64 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal1.
            recoveredBlock40PC := 67.
        ].
        recoveredBlock40Step = 67 ifTrue: [
            (recoveredBlock40Stack1) addOption: (recoveredBlock40Stack2) toXMLDocument: (recoveredBlock40Stack3).
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 70.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) optionClass.
            recoveredBlock40PC := 72.
        ].
        recoveredBlock40Step = 72 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) options.
            recoveredBlock40PC := 74.
        ].
        recoveredBlock40Step = 74 ifTrue: [
            recoveredBlock40Stack2 := [:recoveredBlock40Block74Arg1 | 
    | recoveredBlock40Block74Value0 recoveredBlock40Block74Value1 recoveredBlock40Block74Value2 |
    recoveredBlock40Block74Value0 := recoveredBlock40Block74Arg1.
    recoveredBlock40Block74Value1 := recoveredLocal1.
    recoveredBlock40Block74Value2 := (self) addOption: (recoveredBlock40Block74Value0) toXMLDocument: (recoveredBlock40Block74Value1).
    recoveredBlock40Block74Value2
].
            recoveredBlock40PC := 87.
        ].
        recoveredBlock40Step = 87 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) do: (recoveredBlock40Stack2).
            recoveredBlock40PC := 89.
        ].
        recoveredBlock40Step = 89 ifTrue: [
            recoveredBlock40PC := 99.
        ].
        recoveredBlock40Step = 92 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 93.
        ].
        recoveredBlock40Step = 93 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 94.
        ].
        recoveredBlock40Step = 94 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal1.
            recoveredBlock40PC := 97.
        ].
        recoveredBlock40Step = 97 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) addOption: (recoveredBlock40Stack2) toXMLDocument: (recoveredBlock40Stack3).
            recoveredBlock40PC := 99.
        ].
        recoveredBlock40Step = 99 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) abtXmlPrintOn: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20527ee8; bytecode file offset 0xe247e4"
!EtasXMLBasedOptions methodsFor: 'recovered'!
getOption: recoveredArg1 fromXMLDocument: recoveredArg2 overrideFixed: recoveredArg3 ifFail: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootTag.
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
            recoveredStack1 := (recoveredStack1) xmlCategory.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := (recoveredBlock24Value0) contents.
    recoveredBlock24Value2 := [:recoveredBlock24Block35Arg1 | 
    | recoveredBlock24Block35Stack0 recoveredBlock24Block35Stack1 recoveredBlock24Block35Stack2 recoveredBlock24Block35Stack3 recoveredBlock24Block35Stack4 recoveredBlock24Block35PC recoveredBlock24Block35Step recoveredBlock24Block35Done recoveredBlock24Block35Result |
    recoveredBlock24Block35Stack0 := nil.
    recoveredBlock24Block35PC := 42.
    recoveredBlock24Block35Done := false.
    [recoveredBlock24Block35Done not] whileTrue: [
        recoveredBlock24Block35Step := recoveredBlock24Block35PC.
        recoveredBlock24Block35Step = 42 ifTrue: [
            recoveredBlock24Block35Stack1 := false.
            recoveredBlock24Block35PC := 43.
        ].
        recoveredBlock24Block35Step = 43 ifTrue: [
            recoveredBlock24Block35Stack2 := recoveredBlock24Block35Arg1.
            recoveredBlock24Block35PC := 44.
        ].
        recoveredBlock24Block35Step = 44 ifTrue: [
            recoveredBlock24Block35Stack2 := (recoveredBlock24Block35Stack2) name.
            recoveredBlock24Block35PC := 46.
        ].
        recoveredBlock24Block35Step = 46 ifTrue: [
            recoveredBlock24Block35Stack3 := 'Group'.
            recoveredBlock24Block35PC := 48.
        ].
        recoveredBlock24Block35Step = 48 ifTrue: [
            recoveredBlock24Block35Stack2 := (recoveredBlock24Block35Stack2) = (recoveredBlock24Block35Stack3).
            recoveredBlock24Block35PC := 49.
        ].
        recoveredBlock24Block35Step = 49 ifTrue: [
            (recoveredBlock24Block35Stack2) ifTrue: [recoveredBlock24Block35PC := 52] ifFalse: [recoveredBlock24Block35PC := 62].
        ].
        recoveredBlock24Block35Step = 52 ifTrue: [
            recoveredBlock24Block35PC := 53.
        ].
        recoveredBlock24Block35Step = 53 ifTrue: [
            recoveredBlock24Block35Stack1 := recoveredBlock24Block35Arg1.
            recoveredBlock24Block35PC := 54.
        ].
        recoveredBlock24Block35Step = 54 ifTrue: [
            recoveredBlock24Block35Stack2 := 'name'.
            recoveredBlock24Block35PC := 56.
        ].
        recoveredBlock24Block35Step = 56 ifTrue: [
            recoveredBlock24Block35Stack1 := (recoveredBlock24Block35Stack1) getAttribute: (recoveredBlock24Block35Stack2).
            recoveredBlock24Block35PC := 58.
        ].
        recoveredBlock24Block35Step = 58 ifTrue: [
            recoveredBlock24Block35Stack2 := recoveredBlock24Arg1.
            recoveredBlock24Block35PC := 61.
        ].
        recoveredBlock24Block35Step = 61 ifTrue: [
            recoveredBlock24Block35Stack1 := (recoveredBlock24Block35Stack1) = (recoveredBlock24Block35Stack2).
            recoveredBlock24Block35PC := 62.
        ].
        recoveredBlock24Block35Step = 62 ifTrue: [
            recoveredBlock24Block35Result := recoveredBlock24Block35Stack1.
            recoveredBlock24Block35Done := true.
        ].
    ].
    recoveredBlock24Block35Result
].
    recoveredBlock24Value3 := [
    ^nil
].
    recoveredBlock24Value4 := (recoveredBlock24Value1) detect: (recoveredBlock24Value2) ifNone: (recoveredBlock24Value3).
    recoveredBlock24Value5 := recoveredBlock24Value4.
    recoveredLocal1 := recoveredBlock24Value5.
    recoveredBlock24Value4
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Stack0 recoveredBlock86Stack1 recoveredBlock86Stack2 recoveredBlock86Stack3 recoveredBlock86Stack4 recoveredBlock86PC recoveredBlock86Step recoveredBlock86Done recoveredBlock86Result |
    recoveredBlock86Stack0 := self.
    recoveredBlock86PC := 92.
    recoveredBlock86Done := false.
    [recoveredBlock86Done not] whileTrue: [
        recoveredBlock86Step := recoveredBlock86PC.
        recoveredBlock86Step = 92 ifTrue: [
            recoveredBlock86Stack1 := false.
            recoveredBlock86PC := 93.
        ].
        recoveredBlock86Step = 93 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Arg1.
            recoveredBlock86PC := 94.
        ].
        recoveredBlock86Step = 94 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) name.
            recoveredBlock86PC := 96.
        ].
        recoveredBlock86Step = 96 ifTrue: [
            recoveredBlock86Stack3 := 'Option'.
            recoveredBlock86PC := 98.
        ].
        recoveredBlock86Step = 98 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) = (recoveredBlock86Stack3).
            recoveredBlock86PC := 99.
        ].
        recoveredBlock86Step = 99 ifTrue: [
            (recoveredBlock86Stack2) ifTrue: [recoveredBlock86PC := 102] ifFalse: [recoveredBlock86PC := 114].
        ].
        recoveredBlock86Step = 102 ifTrue: [
            recoveredBlock86PC := 103.
        ].
        recoveredBlock86Step = 103 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Arg1.
            recoveredBlock86PC := 104.
        ].
        recoveredBlock86Step = 104 ifTrue: [
            recoveredBlock86Stack2 := 'name'.
            recoveredBlock86PC := 106.
        ].
        recoveredBlock86Step = 106 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) getAttribute: (recoveredBlock86Stack2).
            recoveredBlock86PC := 108.
        ].
        recoveredBlock86Step = 108 ifTrue: [
            recoveredBlock86Stack2 := recoveredArg1.
            recoveredBlock86PC := 111.
        ].
        recoveredBlock86Step = 111 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) attributeName.
            recoveredBlock86PC := 113.
        ].
        recoveredBlock86Step = 113 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) = (recoveredBlock86Stack2).
            recoveredBlock86PC := 114.
        ].
        recoveredBlock86Step = 114 ifTrue: [
            recoveredBlock86Result := recoveredBlock86Stack1.
            recoveredBlock86Done := true.
        ].
    ].
    recoveredBlock86Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) readOptionFromTag: (recoveredStack2) overrideFixed: (recoveredStack3) ifFail: (recoveredStack4).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastDefault.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 197] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Stack0 recoveredBlock162Stack1 recoveredBlock162Stack2 recoveredBlock162Stack3 recoveredBlock162Stack4 recoveredBlock162PC recoveredBlock162Step recoveredBlock162Done recoveredBlock162Result |
    recoveredBlock162Stack0 := self.
    recoveredBlock162PC := 168.
    recoveredBlock162Done := false.
    [recoveredBlock162Done not] whileTrue: [
        recoveredBlock162Step := recoveredBlock162PC.
        recoveredBlock162Step = 168 ifTrue: [
            recoveredBlock162Stack1 := false.
            recoveredBlock162PC := 169.
        ].
        recoveredBlock162Step = 169 ifTrue: [
            recoveredBlock162Stack2 := recoveredBlock162Arg1.
            recoveredBlock162PC := 170.
        ].
        recoveredBlock162Step = 170 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) name.
            recoveredBlock162PC := 172.
        ].
        recoveredBlock162Step = 172 ifTrue: [
            recoveredBlock162Stack3 := 'LastDefault'.
            recoveredBlock162PC := 174.
        ].
        recoveredBlock162Step = 174 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) = (recoveredBlock162Stack3).
            recoveredBlock162PC := 175.
        ].
        recoveredBlock162Step = 175 ifTrue: [
            (recoveredBlock162Stack2) ifTrue: [recoveredBlock162PC := 178] ifFalse: [recoveredBlock162PC := 190].
        ].
        recoveredBlock162Step = 178 ifTrue: [
            recoveredBlock162PC := 179.
        ].
        recoveredBlock162Step = 179 ifTrue: [
            recoveredBlock162Stack1 := recoveredBlock162Arg1.
            recoveredBlock162PC := 180.
        ].
        recoveredBlock162Step = 180 ifTrue: [
            recoveredBlock162Stack2 := 'name'.
            recoveredBlock162PC := 182.
        ].
        recoveredBlock162Step = 182 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) getAttribute: (recoveredBlock162Stack2).
            recoveredBlock162PC := 184.
        ].
        recoveredBlock162Step = 184 ifTrue: [
            recoveredBlock162Stack2 := recoveredArg1.
            recoveredBlock162PC := 187.
        ].
        recoveredBlock162Step = 187 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) attributeName.
            recoveredBlock162PC := 189.
        ].
        recoveredBlock162Step = 189 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) = (recoveredBlock162Stack2).
            recoveredBlock162PC := 190.
        ].
        recoveredBlock162Step = 190 ifTrue: [
            recoveredBlock162Result := recoveredBlock162Stack1.
            recoveredBlock162Done := true.
        ].
    ].
    recoveredBlock162Result
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) readLastDefaultFromTag: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20534a94; bytecode file offset 0xe313a4"
!EtasXMLBasedOptions methodsFor: 'recovered'!
addOptionStructure: recoveredArg1 toXMLDocument: recoveredArg2 rootTag: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) group.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArrayOfSubstringsSeparatedBy: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 54.
        ].
        recoveredBlock44Step = 54 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) notEmpty.
            recoveredBlock44PC := 56.
        ].
        recoveredBlock44Step = 56 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 60] ifFalse: [recoveredBlock44PC := 131].
        ].
        recoveredBlock44Step = 60 ifTrue: [
            recoveredBlock44PC := 61.
        ].
        recoveredBlock44Step = 61 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) contents.
            recoveredBlock44PC := 66.
        ].
        recoveredBlock44Step = 66 ifTrue: [
            recoveredBlock44Stack2 := [:recoveredBlock44Block66Arg1 | 
    | recoveredBlock44Block66Stack0 recoveredBlock44Block66Stack1 recoveredBlock44Block66Stack2 recoveredBlock44Block66Stack3 recoveredBlock44Block66Stack4 recoveredBlock44Block66PC recoveredBlock44Block66Step recoveredBlock44Block66Done recoveredBlock44Block66Result |
    recoveredBlock44Block66Stack0 := nil.
    recoveredBlock44Block66PC := 72.
    recoveredBlock44Block66Done := false.
    [recoveredBlock44Block66Done not] whileTrue: [
        recoveredBlock44Block66Step := recoveredBlock44Block66PC.
        recoveredBlock44Block66Step = 72 ifTrue: [
            recoveredBlock44Block66Stack1 := false.
            recoveredBlock44Block66PC := 73.
        ].
        recoveredBlock44Block66Step = 73 ifTrue: [
            recoveredBlock44Block66Stack2 := recoveredBlock44Block66Arg1.
            recoveredBlock44Block66PC := 74.
        ].
        recoveredBlock44Block66Step = 74 ifTrue: [
            recoveredBlock44Block66Stack2 := (recoveredBlock44Block66Stack2) name.
            recoveredBlock44Block66PC := 75.
        ].
        recoveredBlock44Block66Step = 75 ifTrue: [
            recoveredBlock44Block66Stack3 := 'Group'.
            recoveredBlock44Block66PC := 77.
        ].
        recoveredBlock44Block66Step = 77 ifTrue: [
            recoveredBlock44Block66Stack2 := (recoveredBlock44Block66Stack2) = (recoveredBlock44Block66Stack3).
            recoveredBlock44Block66PC := 78.
        ].
        recoveredBlock44Block66Step = 78 ifTrue: [
            (recoveredBlock44Block66Stack2) ifTrue: [recoveredBlock44Block66PC := 82] ifFalse: [recoveredBlock44Block66PC := 92].
        ].
        recoveredBlock44Block66Step = 82 ifTrue: [
            recoveredBlock44Block66PC := 83.
        ].
        recoveredBlock44Block66Step = 83 ifTrue: [
            recoveredBlock44Block66Stack1 := recoveredBlock44Block66Arg1.
            recoveredBlock44Block66PC := 84.
        ].
        recoveredBlock44Block66Step = 84 ifTrue: [
            recoveredBlock44Block66Stack2 := 'name'.
            recoveredBlock44Block66PC := 86.
        ].
        recoveredBlock44Block66Step = 86 ifTrue: [
            recoveredBlock44Block66Stack1 := (recoveredBlock44Block66Stack1) getAttribute: (recoveredBlock44Block66Stack2).
            recoveredBlock44Block66PC := 88.
        ].
        recoveredBlock44Block66Step = 88 ifTrue: [
            recoveredBlock44Block66Stack2 := recoveredBlock44Arg1.
            recoveredBlock44Block66PC := 91.
        ].
        recoveredBlock44Block66Step = 91 ifTrue: [
            recoveredBlock44Block66Stack1 := (recoveredBlock44Block66Stack1) = (recoveredBlock44Block66Stack2).
            recoveredBlock44Block66PC := 92.
        ].
        recoveredBlock44Block66Step = 92 ifTrue: [
            recoveredBlock44Block66Result := recoveredBlock44Block66Stack1.
            recoveredBlock44Block66Done := true.
        ].
    ].
    recoveredBlock44Block66Result
].
            recoveredBlock44PC := 93.
        ].
        recoveredBlock44Step = 93 ifTrue: [
            recoveredBlock44Stack3 := [
    | recoveredBlock44Block93Local1 recoveredBlock44Block93Value0 recoveredBlock44Block93Value1 recoveredBlock44Block93Value2 recoveredBlock44Block93Value3 recoveredBlock44Block93Value4 recoveredBlock44Block93Value5 recoveredBlock44Block93Value6 recoveredBlock44Block93Value7 |
    recoveredBlock44Block93Value0 := recoveredArg2.
    recoveredBlock44Block93Value1 := (recoveredBlock44Block93Value0) createElement: ('Group').
    recoveredBlock44Block93Local1 := recoveredBlock44Block93Value1.
    recoveredBlock44Block93Value2 := recoveredBlock44Block93Local1.
    recoveredBlock44Block93Value3 := recoveredBlock44Arg1.
    recoveredBlock44Block93Value4 := (recoveredBlock44Block93Value3) abtXmlPrintString.
    (recoveredBlock44Block93Value2) setAttribute: ('name') value: (recoveredBlock44Block93Value4).
    recoveredBlock44Block93Value5 := recoveredLocal1.
    recoveredBlock44Block93Value6 := recoveredBlock44Block93Local1.
    recoveredBlock44Block93Value7 := (recoveredBlock44Block93Value5) appendChild: (recoveredBlock44Block93Value6).
    recoveredBlock44Block93Value7
].
            recoveredBlock44PC := 125.
        ].
        recoveredBlock44Step = 125 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) detect: (recoveredBlock44Stack2) ifNone: (recoveredBlock44Stack3).
            recoveredBlock44PC := 127.
        ].
        recoveredBlock44Step = 127 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Stack1.
            recoveredBlock44PC := 128.
        ].
        recoveredBlock44Step = 128 ifTrue: [
            recoveredLocal1 := recoveredBlock44Stack2.
            recoveredBlock44PC := 131.
        ].
        recoveredBlock44Step = 131 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 recoveredBlock139Value4 |
    recoveredBlock139Value0 := recoveredBlock139Arg1.
    recoveredBlock139Value1 := (recoveredBlock139Value0) getAttribute: ('name').
    recoveredBlock139Value2 := recoveredArg1.
    recoveredBlock139Value3 := (recoveredBlock139Value2) attributeName.
    recoveredBlock139Value4 := (recoveredBlock139Value1) = (recoveredBlock139Value3).
    recoveredBlock139Value4
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock158Local1 recoveredBlock158Value0 recoveredBlock158Value1 recoveredBlock158Value2 recoveredBlock158Value3 recoveredBlock158Value4 recoveredBlock158Value5 |
    recoveredBlock158Value0 := recoveredArg2.
    recoveredBlock158Value1 := (recoveredBlock158Value0) createElement: ('Option').
    recoveredBlock158Local1 := recoveredBlock158Value1.
    recoveredBlock158Value2 := recoveredArg1.
    recoveredBlock158Value3 := recoveredBlock158Local1.
    (recoveredBlock158Value2) writeOptionStructureToTag: (recoveredBlock158Value3).
    recoveredBlock158Value4 := recoveredLocal1.
    recoveredBlock158Value5 := recoveredBlock158Local1.
    (recoveredBlock158Value4) appendChild: (recoveredBlock158Value5).
    ^self
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) writeOptionStructureToTag: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20565b38; bytecode file offset 0xe62488"
!EtasXMLBasedOptions methodsFor: 'recovered'!
addOptionDeclaration: recoveredArg1 toXMLFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := EtasOptionsDOMDocument.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNodeNameDeclarations.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) createElement: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) addTag: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'Unable to read in options from file\'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := '.\The file could not been opened.'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootTag.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := 'xmlns:xsi'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := 'http://www.w3.org/2001/XMLSchema-instance'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack2) setAttribute: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'xsi:noNamespaceSchemaLocation'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := 'externalOptions.xsd'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := [:block2811116cArg1 | 
    | block2811116cValue0 block2811116cValue1 |
    block2811116cValue0 := block2811116cArg1.
    block2811116cValue1 := (block2811116cValue0) isXMLOption.
    block2811116cValue1
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [:block28111190Arg1 :block28111190Arg2 | 
    | block28111190Stack0 block28111190Stack1 block28111190Stack2 block28111190Stack3 block28111190Stack4 block28111190PC block28111190Step block28111190Done block28111190Result |
    block28111190Stack0 := self.
    block28111190PC := 4.
    block28111190Done := false.
    [block28111190Done not] whileTrue: [
        block28111190Step := block28111190PC.
        block28111190Step = 4 ifTrue: [
            block28111190Stack1 := false.
            block28111190PC := 5.
        ].
        block28111190Step = 5 ifTrue: [
            block28111190Stack2 := block28111190Arg1.
            block28111190PC := 6.
        ].
        block28111190Step = 6 ifTrue: [
            block28111190Stack2 := (block28111190Stack2) optionClass.
            block28111190PC := 8.
        ].
        block28111190Step = 8 ifTrue: [
            block28111190Stack2 := (block28111190Stack2) group.
            block28111190PC := 10.
        ].
        block28111190Step = 10 ifTrue: [
            block28111190Stack3 := block28111190Arg2.
            block28111190PC := 11.
        ].
        block28111190Step = 11 ifTrue: [
            block28111190Stack3 := (block28111190Stack3) optionClass.
            block28111190PC := 13.
        ].
        block28111190Step = 13 ifTrue: [
            block28111190Stack3 := (block28111190Stack3) group.
            block28111190PC := 15.
        ].
        block28111190Step = 15 ifTrue: [
            block28111190Stack2 := (block28111190Stack2) <= (block28111190Stack3).
            block28111190PC := 16.
        ].
        block28111190Step = 16 ifTrue: [
            (block28111190Stack2) ifTrue: [block28111190PC := 20] ifFalse: [block28111190PC := 36].
        ].
        block28111190Step = 20 ifTrue: [
            block28111190PC := 21.
        ].
        block28111190Step = 21 ifTrue: [
            block28111190Stack1 := block28111190Arg1.
            block28111190PC := 22.
        ].
        block28111190Step = 22 ifTrue: [
            block28111190Stack1 := (block28111190Stack1) optionClass.
            block28111190PC := 24.
        ].
        block28111190Step = 24 ifTrue: [
            block28111190Stack1 := (block28111190Stack1) group.
            block28111190PC := 26.
        ].
        block28111190Step = 26 ifTrue: [
            block28111190Stack1 := (block28111190Stack1) size.
            block28111190PC := 28.
        ].
        block28111190Step = 28 ifTrue: [
            block28111190Stack2 := block28111190Arg2.
            block28111190PC := 29.
        ].
        block28111190Step = 29 ifTrue: [
            block28111190Stack2 := (block28111190Stack2) optionClass.
            block28111190PC := 31.
        ].
        block28111190Step = 31 ifTrue: [
            block28111190Stack2 := (block28111190Stack2) group.
            block28111190PC := 33.
        ].
        block28111190Step = 33 ifTrue: [
            block28111190Stack2 := (block28111190Stack2) size.
            block28111190PC := 35.
        ].
        block28111190Step = 35 ifTrue: [
            block28111190Stack1 := (block28111190Stack1) <= (block28111190Stack2).
            block28111190PC := 36.
        ].
        block28111190Step = 36 ifTrue: [
            block28111190Result := block28111190Stack1.
            block28111190Done := true.
        ].
    ].
    block28111190Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Local1 recoveredBlock161Local2 recoveredBlock161Stack0 recoveredBlock161Stack1 recoveredBlock161Stack2 recoveredBlock161Stack3 recoveredBlock161Stack4 recoveredBlock161PC recoveredBlock161Step recoveredBlock161Done recoveredBlock161Result |
    recoveredBlock161Stack0 := self.
    recoveredBlock161PC := 168.
    recoveredBlock161Done := false.
    [recoveredBlock161Done not] whileTrue: [
        recoveredBlock161Step := recoveredBlock161PC.
        recoveredBlock161Step = 168 ifTrue: [
            recoveredBlock161Stack1 := recoveredBlock161Arg1.
            recoveredBlock161PC := 169.
        ].
        recoveredBlock161Step = 169 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) optionClass.
            recoveredBlock161PC := 171.
        ].
        recoveredBlock161Step = 171 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) isContainerOption.
            recoveredBlock161PC := 173.
        ].
        recoveredBlock161Step = 173 ifTrue: [
            (recoveredBlock161Stack1) ifTrue: [recoveredBlock161PC := 176] ifFalse: [recoveredBlock161PC := 214].
        ].
        recoveredBlock161Step = 176 ifTrue: [
            recoveredBlock161Stack1 := recoveredBlock161Arg1.
            recoveredBlock161PC := 177.
        ].
        recoveredBlock161Step = 177 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) optionClass.
            recoveredBlock161PC := 179.
        ].
        recoveredBlock161Step = 179 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) changeable.
            recoveredBlock161PC := 181.
        ].
        recoveredBlock161Step = 181 ifTrue: [
            (recoveredBlock161Stack1) ifTrue: [recoveredBlock161PC := 184] ifFalse: [recoveredBlock161PC := 191].
        ].
        recoveredBlock161Step = 184 ifTrue: [
            recoveredBlock161Stack1 := self.
            recoveredBlock161PC := 185.
        ].
        recoveredBlock161Step = 185 ifTrue: [
            recoveredBlock161Stack2 := recoveredBlock161Arg1.
            recoveredBlock161PC := 186.
        ].
        recoveredBlock161Step = 186 ifTrue: [
            recoveredBlock161Stack3 := recoveredLocal2.
            recoveredBlock161PC := 189.
        ].
        recoveredBlock161Step = 189 ifTrue: [
            (recoveredBlock161Stack1) addOptionDeclaration: (recoveredBlock161Stack2) toXMLDocument: (recoveredBlock161Stack3).
            recoveredBlock161PC := 191.
        ].
        recoveredBlock161Step = 191 ifTrue: [
            recoveredBlock161Stack1 := recoveredBlock161Arg1.
            recoveredBlock161PC := 192.
        ].
        recoveredBlock161Step = 192 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) optionClass.
            recoveredBlock161PC := 194.
        ].
        recoveredBlock161Step = 194 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) options.
            recoveredBlock161PC := 196.
        ].
        recoveredBlock161Step = 196 ifTrue: [
            recoveredBlock161Stack2 := [:recoveredBlock161Block196Arg1 | 
    | recoveredBlock161Block196Value0 recoveredBlock161Block196Value1 recoveredBlock161Block196Value2 |
    recoveredBlock161Block196Value0 := recoveredBlock161Block196Arg1.
    recoveredBlock161Block196Value1 := recoveredLocal2.
    recoveredBlock161Block196Value2 := (self) addOptionDeclaration: (recoveredBlock161Block196Value0) toXMLDocument: (recoveredBlock161Block196Value1).
    recoveredBlock161Block196Value2
].
            recoveredBlock161PC := 209.
        ].
        recoveredBlock161Step = 209 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) do: (recoveredBlock161Stack2).
            recoveredBlock161PC := 211.
        ].
        recoveredBlock161Step = 211 ifTrue: [
            recoveredBlock161PC := 221.
        ].
        recoveredBlock161Step = 214 ifTrue: [
            recoveredBlock161Stack1 := self.
            recoveredBlock161PC := 215.
        ].
        recoveredBlock161Step = 215 ifTrue: [
            recoveredBlock161Stack2 := recoveredBlock161Arg1.
            recoveredBlock161PC := 216.
        ].
        recoveredBlock161Step = 216 ifTrue: [
            recoveredBlock161Stack3 := recoveredLocal2.
            recoveredBlock161PC := 219.
        ].
        recoveredBlock161Step = 219 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) addOptionDeclaration: (recoveredBlock161Stack2) toXMLDocument: (recoveredBlock161Stack3).
            recoveredBlock161PC := 221.
        ].
        recoveredBlock161Step = 221 ifTrue: [
            recoveredBlock161Result := recoveredBlock161Stack1.
            recoveredBlock161Done := true.
        ].
    ].
    recoveredBlock161Result
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) abtXmlPrintOn: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20588ca8; bytecode file offset 0xe855b0"
!EtasXMLBasedOptions methodsFor: 'recovered'!
addOption: recoveredArg1 toXMLDocument: recoveredArg2 rootTag: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) contents.
    recoveredBlock23Value2 := [:recoveredBlock23Block34Arg1 | 
    | recoveredBlock23Block34Stack0 recoveredBlock23Block34Stack1 recoveredBlock23Block34Stack2 recoveredBlock23Block34Stack3 recoveredBlock23Block34Stack4 recoveredBlock23Block34PC recoveredBlock23Block34Step recoveredBlock23Block34Done recoveredBlock23Block34Result |
    recoveredBlock23Block34Stack0 := nil.
    recoveredBlock23Block34PC := 40.
    recoveredBlock23Block34Done := false.
    [recoveredBlock23Block34Done not] whileTrue: [
        recoveredBlock23Block34Step := recoveredBlock23Block34PC.
        recoveredBlock23Block34Step = 40 ifTrue: [
            recoveredBlock23Block34Stack1 := false.
            recoveredBlock23Block34PC := 41.
        ].
        recoveredBlock23Block34Step = 41 ifTrue: [
            recoveredBlock23Block34Stack2 := recoveredBlock23Block34Arg1.
            recoveredBlock23Block34PC := 42.
        ].
        recoveredBlock23Block34Step = 42 ifTrue: [
            recoveredBlock23Block34Stack2 := (recoveredBlock23Block34Stack2) name.
            recoveredBlock23Block34PC := 44.
        ].
        recoveredBlock23Block34Step = 44 ifTrue: [
            recoveredBlock23Block34Stack3 := 'Group'.
            recoveredBlock23Block34PC := 46.
        ].
        recoveredBlock23Block34Step = 46 ifTrue: [
            recoveredBlock23Block34Stack2 := (recoveredBlock23Block34Stack2) = (recoveredBlock23Block34Stack3).
            recoveredBlock23Block34PC := 47.
        ].
        recoveredBlock23Block34Step = 47 ifTrue: [
            (recoveredBlock23Block34Stack2) ifTrue: [recoveredBlock23Block34PC := 50] ifFalse: [recoveredBlock23Block34PC := 60].
        ].
        recoveredBlock23Block34Step = 50 ifTrue: [
            recoveredBlock23Block34PC := 51.
        ].
        recoveredBlock23Block34Step = 51 ifTrue: [
            recoveredBlock23Block34Stack1 := recoveredBlock23Block34Arg1.
            recoveredBlock23Block34PC := 52.
        ].
        recoveredBlock23Block34Step = 52 ifTrue: [
            recoveredBlock23Block34Stack2 := 'name'.
            recoveredBlock23Block34PC := 54.
        ].
        recoveredBlock23Block34Step = 54 ifTrue: [
            recoveredBlock23Block34Stack1 := (recoveredBlock23Block34Stack1) getAttribute: (recoveredBlock23Block34Stack2).
            recoveredBlock23Block34PC := 56.
        ].
        recoveredBlock23Block34Step = 56 ifTrue: [
            recoveredBlock23Block34Stack2 := recoveredBlock23Arg1.
            recoveredBlock23Block34PC := 59.
        ].
        recoveredBlock23Block34Step = 59 ifTrue: [
            recoveredBlock23Block34Stack1 := (recoveredBlock23Block34Stack1) = (recoveredBlock23Block34Stack2).
            recoveredBlock23Block34PC := 60.
        ].
        recoveredBlock23Block34Step = 60 ifTrue: [
            recoveredBlock23Block34Result := recoveredBlock23Block34Stack1.
            recoveredBlock23Block34Done := true.
        ].
    ].
    recoveredBlock23Block34Result
].
    recoveredBlock23Value3 := [
    | recoveredBlock23Block61Local1 recoveredBlock23Block61Value0 recoveredBlock23Block61Value1 recoveredBlock23Block61Value2 recoveredBlock23Block61Value3 recoveredBlock23Block61Value4 recoveredBlock23Block61Value5 recoveredBlock23Block61Value6 recoveredBlock23Block61Value7 |
    recoveredBlock23Block61Value0 := recoveredArg2.
    recoveredBlock23Block61Value1 := (recoveredBlock23Block61Value0) createElement: ('Group').
    recoveredBlock23Block61Local1 := recoveredBlock23Block61Value1.
    recoveredBlock23Block61Value2 := recoveredBlock23Block61Local1.
    recoveredBlock23Block61Value3 := recoveredBlock23Arg1.
    recoveredBlock23Block61Value4 := (recoveredBlock23Block61Value3) abtXmlPrintString.
    (recoveredBlock23Block61Value2) setAttribute: ('name') value: (recoveredBlock23Block61Value4).
    recoveredBlock23Block61Value5 := recoveredLocal1.
    recoveredBlock23Block61Value6 := recoveredBlock23Block61Local1.
    recoveredBlock23Block61Value7 := (recoveredBlock23Block61Value5) appendChild: (recoveredBlock23Block61Value6).
    recoveredBlock23Block61Value7
].
    recoveredBlock23Value4 := (recoveredBlock23Value1) detect: (recoveredBlock23Value2) ifNone: (recoveredBlock23Value3).
    recoveredBlock23Value5 := recoveredBlock23Value4.
    recoveredLocal1 := recoveredBlock23Value5.
    recoveredBlock23Value4
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := [:recoveredBlock106Arg1 | 
    | recoveredBlock106Stack0 recoveredBlock106Stack1 recoveredBlock106Stack2 recoveredBlock106Stack3 recoveredBlock106Stack4 recoveredBlock106PC recoveredBlock106Step recoveredBlock106Done recoveredBlock106Result |
    recoveredBlock106Stack0 := self.
    recoveredBlock106PC := 112.
    recoveredBlock106Done := false.
    [recoveredBlock106Done not] whileTrue: [
        recoveredBlock106Step := recoveredBlock106PC.
        recoveredBlock106Step = 112 ifTrue: [
            recoveredBlock106Stack1 := false.
            recoveredBlock106PC := 113.
        ].
        recoveredBlock106Step = 113 ifTrue: [
            recoveredBlock106Stack2 := recoveredBlock106Arg1.
            recoveredBlock106PC := 114.
        ].
        recoveredBlock106Step = 114 ifTrue: [
            recoveredBlock106Stack2 := (recoveredBlock106Stack2) name.
            recoveredBlock106PC := 116.
        ].
        recoveredBlock106Step = 116 ifTrue: [
            recoveredBlock106Stack3 := 'Option'.
            recoveredBlock106PC := 118.
        ].
        recoveredBlock106Step = 118 ifTrue: [
            recoveredBlock106Stack2 := (recoveredBlock106Stack2) = (recoveredBlock106Stack3).
            recoveredBlock106PC := 119.
        ].
        recoveredBlock106Step = 119 ifTrue: [
            (recoveredBlock106Stack2) ifTrue: [recoveredBlock106PC := 122] ifFalse: [recoveredBlock106PC := 134].
        ].
        recoveredBlock106Step = 122 ifTrue: [
            recoveredBlock106PC := 123.
        ].
        recoveredBlock106Step = 123 ifTrue: [
            recoveredBlock106Stack1 := recoveredBlock106Arg1.
            recoveredBlock106PC := 124.
        ].
        recoveredBlock106Step = 124 ifTrue: [
            recoveredBlock106Stack2 := 'name'.
            recoveredBlock106PC := 126.
        ].
        recoveredBlock106Step = 126 ifTrue: [
            recoveredBlock106Stack1 := (recoveredBlock106Stack1) getAttribute: (recoveredBlock106Stack2).
            recoveredBlock106PC := 128.
        ].
        recoveredBlock106Step = 128 ifTrue: [
            recoveredBlock106Stack2 := recoveredArg1.
            recoveredBlock106PC := 131.
        ].
        recoveredBlock106Step = 131 ifTrue: [
            recoveredBlock106Stack2 := (recoveredBlock106Stack2) attributeName.
            recoveredBlock106PC := 133.
        ].
        recoveredBlock106Step = 133 ifTrue: [
            recoveredBlock106Stack1 := (recoveredBlock106Stack1) = (recoveredBlock106Stack2).
            recoveredBlock106PC := 134.
        ].
        recoveredBlock106Step = 134 ifTrue: [
            recoveredBlock106Result := recoveredBlock106Stack1.
            recoveredBlock106Done := true.
        ].
    ].
    recoveredBlock106Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock135Local1 recoveredBlock135Value0 recoveredBlock135Value1 recoveredBlock135Value2 recoveredBlock135Value3 recoveredBlock135Value4 recoveredBlock135Value5 recoveredBlock135Value6 |
    recoveredBlock135Value0 := recoveredArg2.
    recoveredBlock135Value1 := (recoveredBlock135Value0) createElement: ('Option').
    recoveredBlock135Local1 := recoveredBlock135Value1.
    recoveredBlock135Value2 := recoveredArg1.
    recoveredBlock135Value3 := recoveredBlock135Local1.
    (recoveredBlock135Value2) writeOptionToTag: (recoveredBlock135Value3).
    recoveredBlock135Value4 := recoveredLocal1.
    recoveredBlock135Value5 := recoveredBlock135Local1.
    recoveredBlock135Value6 := (recoveredBlock135Value4) appendChild: (recoveredBlock135Value5).
    recoveredBlock135Value6
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := [:recoveredBlock163Arg1 | 
    | recoveredBlock163Value0 recoveredBlock163Value1 recoveredBlock163Value2 |
    recoveredBlock163Value0 := recoveredArg1.
    recoveredBlock163Value1 := recoveredBlock163Arg1.
    recoveredBlock163Value2 := (recoveredBlock163Value0) writeOptionToTag: (recoveredBlock163Value1).
    recoveredBlock163Value2
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3) ifOne: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastDefault.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := [:recoveredBlock194Arg1 | 
    | recoveredBlock194Stack0 recoveredBlock194Stack1 recoveredBlock194Stack2 recoveredBlock194Stack3 recoveredBlock194Stack4 recoveredBlock194PC recoveredBlock194Step recoveredBlock194Done recoveredBlock194Result |
    recoveredBlock194Stack0 := self.
    recoveredBlock194PC := 200.
    recoveredBlock194Done := false.
    [recoveredBlock194Done not] whileTrue: [
        recoveredBlock194Step := recoveredBlock194PC.
        recoveredBlock194Step = 200 ifTrue: [
            recoveredBlock194Stack1 := false.
            recoveredBlock194PC := 201.
        ].
        recoveredBlock194Step = 201 ifTrue: [
            recoveredBlock194Stack2 := recoveredBlock194Arg1.
            recoveredBlock194PC := 202.
        ].
        recoveredBlock194Step = 202 ifTrue: [
            recoveredBlock194Stack2 := (recoveredBlock194Stack2) name.
            recoveredBlock194PC := 204.
        ].
        recoveredBlock194Step = 204 ifTrue: [
            recoveredBlock194Stack3 := 'LastDefault'.
            recoveredBlock194PC := 206.
        ].
        recoveredBlock194Step = 206 ifTrue: [
            recoveredBlock194Stack2 := (recoveredBlock194Stack2) = (recoveredBlock194Stack3).
            recoveredBlock194PC := 207.
        ].
        recoveredBlock194Step = 207 ifTrue: [
            (recoveredBlock194Stack2) ifTrue: [recoveredBlock194PC := 210] ifFalse: [recoveredBlock194PC := 222].
        ].
        recoveredBlock194Step = 210 ifTrue: [
            recoveredBlock194PC := 211.
        ].
        recoveredBlock194Step = 211 ifTrue: [
            recoveredBlock194Stack1 := recoveredBlock194Arg1.
            recoveredBlock194PC := 212.
        ].
        recoveredBlock194Step = 212 ifTrue: [
            recoveredBlock194Stack2 := 'name'.
            recoveredBlock194PC := 214.
        ].
        recoveredBlock194Step = 214 ifTrue: [
            recoveredBlock194Stack1 := (recoveredBlock194Stack1) getAttribute: (recoveredBlock194Stack2).
            recoveredBlock194PC := 216.
        ].
        recoveredBlock194Step = 216 ifTrue: [
            recoveredBlock194Stack2 := recoveredArg1.
            recoveredBlock194PC := 219.
        ].
        recoveredBlock194Step = 219 ifTrue: [
            recoveredBlock194Stack2 := (recoveredBlock194Stack2) attributeName.
            recoveredBlock194PC := 221.
        ].
        recoveredBlock194Step = 221 ifTrue: [
            recoveredBlock194Stack1 := (recoveredBlock194Stack1) = (recoveredBlock194Stack2).
            recoveredBlock194PC := 222.
        ].
        recoveredBlock194Step = 222 ifTrue: [
            recoveredBlock194Result := recoveredBlock194Stack1.
            recoveredBlock194Done := true.
        ].
    ].
    recoveredBlock194Result
].
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock223Local1 recoveredBlock223Value0 recoveredBlock223Value1 recoveredBlock223Value2 recoveredBlock223Value3 recoveredBlock223Value4 recoveredBlock223Value5 recoveredBlock223Value6 |
    recoveredBlock223Value0 := recoveredArg2.
    recoveredBlock223Value1 := (recoveredBlock223Value0) createElement: ('LastDefault').
    recoveredBlock223Local1 := recoveredBlock223Value1.
    recoveredBlock223Value2 := recoveredArg1.
    recoveredBlock223Value3 := recoveredBlock223Local1.
    (recoveredBlock223Value2) writeLastDefaultToTag: (recoveredBlock223Value3).
    recoveredBlock223Value4 := recoveredLocal1.
    recoveredBlock223Value5 := recoveredBlock223Local1.
    recoveredBlock223Value6 := (recoveredBlock223Value4) appendChild: (recoveredBlock223Value5).
    recoveredBlock223Value6
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack4 := [:recoveredBlock251Arg1 | 
    | recoveredBlock251Value0 recoveredBlock251Value1 recoveredBlock251Value2 |
    recoveredBlock251Value0 := recoveredArg1.
    recoveredBlock251Value1 := recoveredBlock251Arg1.
    recoveredBlock251Value2 := (recoveredBlock251Value0) writeLastDefaultToTag: (recoveredBlock251Value1).
    recoveredBlock251Value2
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3) ifOne: (recoveredStack4).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205db3c8; bytecode file offset 0xed7d20"
!EtasXMLBasedOptions methodsFor: 'recovered'!
writeOptionStructure: recoveredArg1 toXMLFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'Unable to read in options from file\'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := '.\The file could not been opened.'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) prompt.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := EtasOptionsDOMDocument.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) parseStream: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootTag.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) rootNodeName.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'XML file\'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := '\is not valid.\Root Tag <'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNodeName.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := '> expected but not found.\Root Tag will be created!!'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNodeName.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) createElement: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) addTag: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 219.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := EtasOptionsDOMDocument.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNodeName.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) createElement: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) addTag: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 219].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := 'Unable to read in options from file\'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := '.\The file could not been opened.'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := [:block28119f98Arg1 | 
    | block28119f98Value0 block28119f98Value1 |
    block28119f98Value0 := block28119f98Arg1.
    block28119f98Value1 := (block28119f98Value0) isXMLOption.
    block28119f98Value1
].
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := [:block28119fbcArg1 :block28119fbcArg2 | 
    | block28119fbcStack0 block28119fbcStack1 block28119fbcStack2 block28119fbcStack3 block28119fbcStack4 block28119fbcPC block28119fbcStep block28119fbcDone block28119fbcResult |
    block28119fbcStack0 := self.
    block28119fbcPC := 4.
    block28119fbcDone := false.
    [block28119fbcDone not] whileTrue: [
        block28119fbcStep := block28119fbcPC.
        block28119fbcStep = 4 ifTrue: [
            block28119fbcStack1 := false.
            block28119fbcPC := 5.
        ].
        block28119fbcStep = 5 ifTrue: [
            block28119fbcStack2 := block28119fbcArg1.
            block28119fbcPC := 6.
        ].
        block28119fbcStep = 6 ifTrue: [
            block28119fbcStack2 := (block28119fbcStack2) optionClass.
            block28119fbcPC := 8.
        ].
        block28119fbcStep = 8 ifTrue: [
            block28119fbcStack2 := (block28119fbcStack2) group.
            block28119fbcPC := 10.
        ].
        block28119fbcStep = 10 ifTrue: [
            block28119fbcStack3 := block28119fbcArg2.
            block28119fbcPC := 11.
        ].
        block28119fbcStep = 11 ifTrue: [
            block28119fbcStack3 := (block28119fbcStack3) optionClass.
            block28119fbcPC := 13.
        ].
        block28119fbcStep = 13 ifTrue: [
            block28119fbcStack3 := (block28119fbcStack3) group.
            block28119fbcPC := 15.
        ].
        block28119fbcStep = 15 ifTrue: [
            block28119fbcStack2 := (block28119fbcStack2) <= (block28119fbcStack3).
            block28119fbcPC := 16.
        ].
        block28119fbcStep = 16 ifTrue: [
            (block28119fbcStack2) ifTrue: [block28119fbcPC := 20] ifFalse: [block28119fbcPC := 36].
        ].
        block28119fbcStep = 20 ifTrue: [
            block28119fbcPC := 21.
        ].
        block28119fbcStep = 21 ifTrue: [
            block28119fbcStack1 := block28119fbcArg1.
            block28119fbcPC := 22.
        ].
        block28119fbcStep = 22 ifTrue: [
            block28119fbcStack1 := (block28119fbcStack1) optionClass.
            block28119fbcPC := 24.
        ].
        block28119fbcStep = 24 ifTrue: [
            block28119fbcStack1 := (block28119fbcStack1) group.
            block28119fbcPC := 26.
        ].
        block28119fbcStep = 26 ifTrue: [
            block28119fbcStack1 := (block28119fbcStack1) size.
            block28119fbcPC := 28.
        ].
        block28119fbcStep = 28 ifTrue: [
            block28119fbcStack2 := block28119fbcArg2.
            block28119fbcPC := 29.
        ].
        block28119fbcStep = 29 ifTrue: [
            block28119fbcStack2 := (block28119fbcStack2) optionClass.
            block28119fbcPC := 31.
        ].
        block28119fbcStep = 31 ifTrue: [
            block28119fbcStack2 := (block28119fbcStack2) group.
            block28119fbcPC := 33.
        ].
        block28119fbcStep = 33 ifTrue: [
            block28119fbcStack2 := (block28119fbcStack2) size.
            block28119fbcPC := 35.
        ].
        block28119fbcStep = 35 ifTrue: [
            block28119fbcStack1 := (block28119fbcStack1) <= (block28119fbcStack2).
            block28119fbcPC := 36.
        ].
        block28119fbcStep = 36 ifTrue: [
            block28119fbcResult := block28119fbcStack1.
            block28119fbcDone := true.
        ].
    ].
    block28119fbcResult
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := [:recoveredBlock289Arg1 | 
    | recoveredBlock289Local1 recoveredBlock289Local2 recoveredBlock289Stack0 recoveredBlock289Stack1 recoveredBlock289Stack2 recoveredBlock289Stack3 recoveredBlock289Stack4 recoveredBlock289PC recoveredBlock289Step recoveredBlock289Done recoveredBlock289Result |
    recoveredBlock289Stack0 := self.
    recoveredBlock289PC := 296.
    recoveredBlock289Done := false.
    [recoveredBlock289Done not] whileTrue: [
        recoveredBlock289Step := recoveredBlock289PC.
        recoveredBlock289Step = 296 ifTrue: [
            recoveredBlock289Stack1 := recoveredBlock289Arg1.
            recoveredBlock289PC := 297.
        ].
        recoveredBlock289Step = 297 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) optionClass.
            recoveredBlock289PC := 299.
        ].
        recoveredBlock289Step = 299 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) isContainerOption.
            recoveredBlock289PC := 301.
        ].
        recoveredBlock289Step = 301 ifTrue: [
            (recoveredBlock289Stack1) ifTrue: [recoveredBlock289PC := 304] ifFalse: [recoveredBlock289PC := 342].
        ].
        recoveredBlock289Step = 304 ifTrue: [
            recoveredBlock289Stack1 := recoveredBlock289Arg1.
            recoveredBlock289PC := 305.
        ].
        recoveredBlock289Step = 305 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) optionClass.
            recoveredBlock289PC := 307.
        ].
        recoveredBlock289Step = 307 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) changeable.
            recoveredBlock289PC := 309.
        ].
        recoveredBlock289Step = 309 ifTrue: [
            (recoveredBlock289Stack1) ifTrue: [recoveredBlock289PC := 312] ifFalse: [recoveredBlock289PC := 319].
        ].
        recoveredBlock289Step = 312 ifTrue: [
            recoveredBlock289Stack1 := self.
            recoveredBlock289PC := 313.
        ].
        recoveredBlock289Step = 313 ifTrue: [
            recoveredBlock289Stack2 := recoveredBlock289Arg1.
            recoveredBlock289PC := 314.
        ].
        recoveredBlock289Step = 314 ifTrue: [
            recoveredBlock289Stack3 := recoveredLocal2.
            recoveredBlock289PC := 317.
        ].
        recoveredBlock289Step = 317 ifTrue: [
            (recoveredBlock289Stack1) addOptionStructure: (recoveredBlock289Stack2) toXMLDocument: (recoveredBlock289Stack3).
            recoveredBlock289PC := 319.
        ].
        recoveredBlock289Step = 319 ifTrue: [
            recoveredBlock289Stack1 := recoveredBlock289Arg1.
            recoveredBlock289PC := 320.
        ].
        recoveredBlock289Step = 320 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) optionClass.
            recoveredBlock289PC := 322.
        ].
        recoveredBlock289Step = 322 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) options.
            recoveredBlock289PC := 324.
        ].
        recoveredBlock289Step = 324 ifTrue: [
            recoveredBlock289Stack2 := [:recoveredBlock289Block324Arg1 | 
    | recoveredBlock289Block324Value0 recoveredBlock289Block324Value1 recoveredBlock289Block324Value2 |
    recoveredBlock289Block324Value0 := recoveredBlock289Block324Arg1.
    recoveredBlock289Block324Value1 := recoveredLocal2.
    recoveredBlock289Block324Value2 := (self) addOptionStructure: (recoveredBlock289Block324Value0) toXMLDocument: (recoveredBlock289Block324Value1).
    recoveredBlock289Block324Value2
].
            recoveredBlock289PC := 337.
        ].
        recoveredBlock289Step = 337 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) do: (recoveredBlock289Stack2).
            recoveredBlock289PC := 339.
        ].
        recoveredBlock289Step = 339 ifTrue: [
            recoveredBlock289PC := 349.
        ].
        recoveredBlock289Step = 342 ifTrue: [
            recoveredBlock289Stack1 := self.
            recoveredBlock289PC := 343.
        ].
        recoveredBlock289Step = 343 ifTrue: [
            recoveredBlock289Stack2 := recoveredBlock289Arg1.
            recoveredBlock289PC := 344.
        ].
        recoveredBlock289Step = 344 ifTrue: [
            recoveredBlock289Stack3 := recoveredLocal2.
            recoveredBlock289PC := 347.
        ].
        recoveredBlock289Step = 347 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) addOptionStructure: (recoveredBlock289Stack2) toXMLDocument: (recoveredBlock289Stack3).
            recoveredBlock289PC := 349.
        ].
        recoveredBlock289Step = 349 ifTrue: [
            recoveredBlock289Result := recoveredBlock289Stack1.
            recoveredBlock289Done := true.
        ].
    ].
    recoveredBlock289Result
].
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack1) abtXmlPrintOn: (recoveredStack2).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f1344; bytecode file offset 0xeedcd4"
!EtasXMLBasedOptions methodsFor: 'recovered'!
writeOptions: recoveredArg1 toXMLFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) promptAccessError: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 |
    recoveredBlock44Value0 := EtasOptionsDOMDocument.
    recoveredBlock44Value1 := (recoveredBlock44Value0) new.
    recoveredBlock44Value2 := recoveredLocal6.
    recoveredBlock44Value3 := [
    | recoveredBlock44Block57Value0 recoveredBlock44Block57Value1 recoveredBlock44Block57Value2 recoveredBlock44Block57Value3 recoveredBlock44Block57Value4 recoveredBlock44Block57Value5 |
    recoveredBlock44Block57Value0 := RBUserInfo.
    recoveredBlock44Block57Value1 := recoveredLocal7.
    recoveredBlock44Block57Value2 := ('Could not parse options in ') , (recoveredBlock44Block57Value1).
    recoveredBlock44Block57Value3 := ('.') withCrs.
    recoveredBlock44Block57Value4 := (recoveredBlock44Block57Value2) , (recoveredBlock44Block57Value3).
    recoveredBlock44Block57Value5 := (recoveredBlock44Block57Value0) errorMessage: (recoveredBlock44Block57Value4).
    (recoveredBlock44Block57Value5) prompt.
    ^nil
].
    recoveredBlock44Value4 := (recoveredBlock44Value1) parseStream: (recoveredBlock44Value2) ifFail: (recoveredBlock44Value3).
    recoveredBlock44Value5 := recoveredBlock44Value4.
    recoveredLocal3 := recoveredBlock44Value5.
    recoveredBlock44Value4
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock92Value0 recoveredBlock92Value1 |
    recoveredBlock92Value0 := recoveredLocal6.
    recoveredBlock92Value1 := (recoveredBlock92Value0) close.
    recoveredBlock92Value1
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootTag.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) rootNodeName.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 225].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'XML file\'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := '\is not valid.\Root Tag <'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNodeName.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := '> expected but not found.\Root Tag will be created!!'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 recoveredBlock166Value4 recoveredBlock166Value5 recoveredBlock166Value6 |
    recoveredBlock166Value0 := recoveredLocal3.
    recoveredBlock166Value1 := recoveredLocal3.
    recoveredBlock166Value2 := recoveredLocal3.
    recoveredBlock166Value3 := (recoveredBlock166Value2) class.
    recoveredBlock166Value4 := (recoveredBlock166Value3) rootNodeName.
    recoveredBlock166Value5 := (recoveredBlock166Value1) createElement: (recoveredBlock166Value4).
    recoveredBlock166Value6 := (recoveredBlock166Value0) addTag: (recoveredBlock166Value5).
    recoveredBlock166Value6
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := [:recoveredBlock192Arg1 | 
    | recoveredBlock192Value0 recoveredBlock192Value1 recoveredBlock192Value2 recoveredBlock192Value3 recoveredBlock192Value4 recoveredBlock192Value5 recoveredBlock192Value6 recoveredBlock192Value7 |
    recoveredBlock192Value0 := RBUserInfo.
    recoveredBlock192Value1 := recoveredLocal3.
    recoveredBlock192Value2 := (recoveredBlock192Value1) class.
    recoveredBlock192Value3 := (recoveredBlock192Value2) rootNodeName.
    recoveredBlock192Value4 := ('Could not create root tag <') , (recoveredBlock192Value3).
    recoveredBlock192Value5 := ('>.\Storage aborted!!') withCrs.
    recoveredBlock192Value6 := (recoveredBlock192Value4) , (recoveredBlock192Value5).
    recoveredBlock192Value7 := (recoveredBlock192Value0) errorMessage: (recoveredBlock192Value6).
    (recoveredBlock192Value7) prompt.
    ^nil
].
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredPC := 252.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := EtasOptionsDOMDocument.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNodeName.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := (recoveredStack2) createElement: (recoveredStack3).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack1) addTag: (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := [:block2811b9c0Arg1 | 
    | block2811b9c0Value0 block2811b9c0Value1 |
    block2811b9c0Value0 := block2811b9c0Arg1.
    block2811b9c0Value1 := (block2811b9c0Value0) isXMLOption.
    block2811b9c0Value1
].
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := [:recoveredBlock266Arg1 | 
    | recoveredBlock266Local1 recoveredBlock266Local2 recoveredBlock266Stack0 recoveredBlock266Stack1 recoveredBlock266Stack2 recoveredBlock266Stack3 recoveredBlock266Stack4 recoveredBlock266PC recoveredBlock266Step recoveredBlock266Done recoveredBlock266Result |
    recoveredBlock266Stack0 := self.
    recoveredBlock266PC := 272.
    recoveredBlock266Done := false.
    [recoveredBlock266Done not] whileTrue: [
        recoveredBlock266Step := recoveredBlock266PC.
        recoveredBlock266Step = 272 ifTrue: [
            recoveredBlock266Stack1 := recoveredBlock266Arg1.
            recoveredBlock266PC := 273.
        ].
        recoveredBlock266Step = 273 ifTrue: [
            recoveredBlock266Stack1 := (recoveredBlock266Stack1) optionClass.
            recoveredBlock266PC := 275.
        ].
        recoveredBlock266Step = 275 ifTrue: [
            recoveredBlock266Stack1 := (recoveredBlock266Stack1) isContainerOption.
            recoveredBlock266PC := 277.
        ].
        recoveredBlock266Step = 277 ifTrue: [
            (recoveredBlock266Stack1) ifTrue: [recoveredBlock266PC := 280] ifFalse: [recoveredBlock266PC := 318].
        ].
        recoveredBlock266Step = 280 ifTrue: [
            recoveredBlock266Stack1 := recoveredBlock266Arg1.
            recoveredBlock266PC := 281.
        ].
        recoveredBlock266Step = 281 ifTrue: [
            recoveredBlock266Stack1 := (recoveredBlock266Stack1) optionClass.
            recoveredBlock266PC := 283.
        ].
        recoveredBlock266Step = 283 ifTrue: [
            recoveredBlock266Stack1 := (recoveredBlock266Stack1) changeable.
            recoveredBlock266PC := 285.
        ].
        recoveredBlock266Step = 285 ifTrue: [
            (recoveredBlock266Stack1) ifTrue: [recoveredBlock266PC := 288] ifFalse: [recoveredBlock266PC := 295].
        ].
        recoveredBlock266Step = 288 ifTrue: [
            recoveredBlock266Stack1 := self.
            recoveredBlock266PC := 289.
        ].
        recoveredBlock266Step = 289 ifTrue: [
            recoveredBlock266Stack2 := recoveredBlock266Arg1.
            recoveredBlock266PC := 290.
        ].
        recoveredBlock266Step = 290 ifTrue: [
            recoveredBlock266Stack3 := recoveredLocal3.
            recoveredBlock266PC := 293.
        ].
        recoveredBlock266Step = 293 ifTrue: [
            (recoveredBlock266Stack1) addOption: (recoveredBlock266Stack2) toXMLDocument: (recoveredBlock266Stack3).
            recoveredBlock266PC := 295.
        ].
        recoveredBlock266Step = 295 ifTrue: [
            recoveredBlock266Stack1 := recoveredBlock266Arg1.
            recoveredBlock266PC := 296.
        ].
        recoveredBlock266Step = 296 ifTrue: [
            recoveredBlock266Stack1 := (recoveredBlock266Stack1) optionClass.
            recoveredBlock266PC := 298.
        ].
        recoveredBlock266Step = 298 ifTrue: [
            recoveredBlock266Stack1 := (recoveredBlock266Stack1) options.
            recoveredBlock266PC := 300.
        ].
        recoveredBlock266Step = 300 ifTrue: [
            recoveredBlock266Stack2 := [:recoveredBlock266Block300Arg1 | 
    | recoveredBlock266Block300Value0 recoveredBlock266Block300Value1 recoveredBlock266Block300Value2 |
    recoveredBlock266Block300Value0 := recoveredBlock266Block300Arg1.
    recoveredBlock266Block300Value1 := recoveredLocal3.
    recoveredBlock266Block300Value2 := (self) addOption: (recoveredBlock266Block300Value0) toXMLDocument: (recoveredBlock266Block300Value1).
    recoveredBlock266Block300Value2
].
            recoveredBlock266PC := 313.
        ].
        recoveredBlock266Step = 313 ifTrue: [
            recoveredBlock266Stack1 := (recoveredBlock266Stack1) do: (recoveredBlock266Stack2).
            recoveredBlock266PC := 315.
        ].
        recoveredBlock266Step = 315 ifTrue: [
            recoveredBlock266PC := 325.
        ].
        recoveredBlock266Step = 318 ifTrue: [
            recoveredBlock266Stack1 := self.
            recoveredBlock266PC := 319.
        ].
        recoveredBlock266Step = 319 ifTrue: [
            recoveredBlock266Stack2 := recoveredBlock266Arg1.
            recoveredBlock266PC := 320.
        ].
        recoveredBlock266Step = 320 ifTrue: [
            recoveredBlock266Stack3 := recoveredLocal3.
            recoveredBlock266PC := 323.
        ].
        recoveredBlock266Step = 323 ifTrue: [
            recoveredBlock266Stack1 := (recoveredBlock266Stack1) addOption: (recoveredBlock266Stack2) toXMLDocument: (recoveredBlock266Stack3).
            recoveredBlock266PC := 325.
        ].
        recoveredBlock266Step = 325 ifTrue: [
            recoveredBlock266Result := recoveredBlock266Stack1.
            recoveredBlock266Done := true.
        ].
    ].
    recoveredBlock266Result
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack3 := 20000.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack1) abtXmlPrintOn: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := 'BOSCH_CC'.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 395].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := 'Unable to write options to file\'.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := '.\Please check that the file is writable.'.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206184bc; bytecode file offset 0xf14e58"
!EtasXMLBasedOptions methodsFor: 'recovered'!
readOptions: recoveredArg1 overrideFixed: recoveredArg2 fromXMLFile: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := OptionsFileCache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OptionsFileCache.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 334] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := EtasOptionsDOMDocument.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNodeName.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) createElement: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) addTag: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) extractPathNameFromDosPath: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := 'User specific path'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) mkdirRecursive: (recoveredStack2) errorLabel: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppDataPath.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := 'User\'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) userDefaultsOptionFile.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := (recoveredStack2) userDefaultsOptionFile.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) abtXmlPrintOn: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) promptAccessError: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock207Value0 recoveredBlock207Value1 recoveredBlock207Value2 recoveredBlock207Value3 recoveredBlock207Value4 recoveredBlock207Value5 |
    recoveredBlock207Value0 := EtasOptionsDOMDocument.
    recoveredBlock207Value1 := (recoveredBlock207Value0) new.
    recoveredBlock207Value2 := recoveredLocal7.
    recoveredBlock207Value3 := [
    | recoveredBlock207Block221Value0 recoveredBlock207Block221Value1 recoveredBlock207Block221Value2 recoveredBlock207Block221Value3 recoveredBlock207Block221Value4 recoveredBlock207Block221Value5 |
    recoveredBlock207Block221Value0 := RBUserInfo.
    recoveredBlock207Block221Value1 := recoveredLocal8.
    recoveredBlock207Block221Value2 := ('Could not parse options in ') , (recoveredBlock207Block221Value1).
    recoveredBlock207Block221Value3 := ('.') withCrs.
    recoveredBlock207Block221Value4 := (recoveredBlock207Block221Value2) , (recoveredBlock207Block221Value3).
    recoveredBlock207Block221Value5 := (recoveredBlock207Block221Value0) errorMessage: (recoveredBlock207Block221Value4).
    (recoveredBlock207Block221Value5) prompt.
    ^-2
].
    recoveredBlock207Value4 := (recoveredBlock207Value1) parseStream: (recoveredBlock207Value2) ifFail: (recoveredBlock207Value3).
    recoveredBlock207Value5 := recoveredBlock207Value4.
    recoveredLocal4 := recoveredBlock207Value5.
    recoveredBlock207Value4
].
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock257Value0 recoveredBlock257Value1 |
    recoveredBlock257Value0 := recoveredLocal7.
    recoveredBlock257Value1 := (recoveredBlock257Value0) close.
    recoveredBlock257Value1
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 281] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := -2.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootTag.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := 'Settings'.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := 'XML file\'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := '\is not valid.\Root Tag <Settings> expected.'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := -3.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := OptionsFileCache.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 334] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := OptionsFileCache.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := [:recoveredBlock334Arg1 :recoveredBlock334Arg2 :recoveredBlock334Arg3 | 
    | recoveredBlock334Value0 recoveredBlock334Value1 recoveredBlock334Value2 recoveredBlock334Value3 recoveredBlock334Value4 recoveredBlock334Value5 recoveredBlock334Value6 recoveredBlock334Value7 recoveredBlock334Value8 recoveredBlock334Value9 recoveredBlock334Value10 recoveredBlock334Value11 recoveredBlock334Value12 recoveredBlock334Value13 recoveredBlock334Value14 recoveredBlock334Value15 |
    recoveredBlock334Value0 := RBUserInfo.
    recoveredBlock334Value1 := recoveredBlock334Arg2.
    recoveredBlock334Value2 := ('Invalid value "') , (recoveredBlock334Value1).
    recoveredBlock334Value3 := (recoveredBlock334Value2) , ('" for option "').
    recoveredBlock334Value4 := recoveredBlock334Arg1.
    recoveredBlock334Value5 := (recoveredBlock334Value4) name.
    recoveredBlock334Value6 := (recoveredBlock334Value3) , (recoveredBlock334Value5).
    recoveredBlock334Value7 := (recoveredBlock334Value6) , ('".\Reason: ').
    recoveredBlock334Value8 := recoveredBlock334Arg3.
    recoveredBlock334Value9 := (recoveredBlock334Value7) , (recoveredBlock334Value8).
    recoveredBlock334Value10 := (recoveredBlock334Value9) , ('.\Import of file ').
    recoveredBlock334Value11 := (recoveredBlock334Value10) withCrs.
    recoveredBlock334Value12 := recoveredLocal8.
    recoveredBlock334Value13 := (recoveredBlock334Value11) , (recoveredBlock334Value12).
    recoveredBlock334Value14 := (recoveredBlock334Value13) , (' aborted.').
    recoveredBlock334Value15 := (recoveredBlock334Value0) errorMessage: (recoveredBlock334Value14).
    (recoveredBlock334Value15) prompt.
    ^-4
].
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack2 := [:recoveredBlock391Arg1 | 
    | recoveredBlock391Stack0 recoveredBlock391Stack1 recoveredBlock391Stack2 recoveredBlock391Stack3 recoveredBlock391Stack4 recoveredBlock391Stack5 recoveredBlock391Stack6 recoveredBlock391PC recoveredBlock391Step recoveredBlock391Done recoveredBlock391Result |
    recoveredBlock391Stack0 := self.
    recoveredBlock391PC := 398.
    recoveredBlock391Done := false.
    [recoveredBlock391Done not] whileTrue: [
        recoveredBlock391Step := recoveredBlock391PC.
        recoveredBlock391Step = 398 ifTrue: [
            recoveredBlock391Stack1 := recoveredBlock391Arg1.
            recoveredBlock391PC := 399.
        ].
        recoveredBlock391Step = 399 ifTrue: [
            recoveredBlock391Stack1 := (recoveredBlock391Stack1) optionClass.
            recoveredBlock391PC := 401.
        ].
        recoveredBlock391Step = 401 ifTrue: [
            recoveredBlock391Stack1 := (recoveredBlock391Stack1) isContainerOption.
            recoveredBlock391PC := 403.
        ].
        recoveredBlock391Step = 403 ifTrue: [
            (recoveredBlock391Stack1) ifTrue: [recoveredBlock391PC := 406] ifFalse: [recoveredBlock391PC := 460].
        ].
        recoveredBlock391Step = 406 ifTrue: [
            recoveredBlock391Stack1 := recoveredBlock391Arg1.
            recoveredBlock391PC := 407.
        ].
        recoveredBlock391Step = 407 ifTrue: [
            recoveredBlock391Stack1 := (recoveredBlock391Stack1) optionClass.
            recoveredBlock391PC := 409.
        ].
        recoveredBlock391Step = 409 ifTrue: [
            recoveredBlock391Stack1 := (recoveredBlock391Stack1) changeable.
            recoveredBlock391PC := 411.
        ].
        recoveredBlock391Step = 411 ifTrue: [
            (recoveredBlock391Stack1) ifTrue: [recoveredBlock391PC := 414] ifFalse: [recoveredBlock391PC := 428].
        ].
        recoveredBlock391Step = 414 ifTrue: [
            recoveredBlock391Stack1 := self.
            recoveredBlock391PC := 415.
        ].
        recoveredBlock391Step = 415 ifTrue: [
            recoveredBlock391Stack2 := recoveredBlock391Arg1.
            recoveredBlock391PC := 416.
        ].
        recoveredBlock391Step = 416 ifTrue: [
            recoveredBlock391Stack3 := recoveredLocal4.
            recoveredBlock391PC := 419.
        ].
        recoveredBlock391Step = 419 ifTrue: [
            recoveredBlock391Stack4 := recoveredArg2.
            recoveredBlock391PC := 422.
        ].
        recoveredBlock391Step = 422 ifTrue: [
            recoveredBlock391Stack5 := recoveredLocal2.
            recoveredBlock391PC := 425.
        ].
        recoveredBlock391Step = 425 ifTrue: [
            (recoveredBlock391Stack1) getOption: (recoveredBlock391Stack2) fromXMLDocument: (recoveredBlock391Stack3) overrideFixed: (recoveredBlock391Stack4) ifFail: (recoveredBlock391Stack5).
            recoveredBlock391PC := 428.
        ].
        recoveredBlock391Step = 428 ifTrue: [
            recoveredBlock391Stack1 := recoveredBlock391Arg1.
            recoveredBlock391PC := 429.
        ].
        recoveredBlock391Step = 429 ifTrue: [
            recoveredBlock391Stack1 := (recoveredBlock391Stack1) optionClass.
            recoveredBlock391PC := 431.
        ].
        recoveredBlock391Step = 431 ifTrue: [
            recoveredBlock391Stack1 := (recoveredBlock391Stack1) options.
            recoveredBlock391PC := 433.
        ].
        recoveredBlock391Step = 433 ifTrue: [
            recoveredBlock391Stack2 := [:recoveredBlock391Block433Arg1 | 
    | recoveredBlock391Block433Value0 recoveredBlock391Block433Value1 recoveredBlock391Block433Value2 recoveredBlock391Block433Value3 recoveredBlock391Block433Value4 |
    recoveredBlock391Block433Value0 := recoveredBlock391Block433Arg1.
    recoveredBlock391Block433Value1 := recoveredLocal4.
    recoveredBlock391Block433Value2 := recoveredArg2.
    recoveredBlock391Block433Value3 := recoveredLocal2.
    recoveredBlock391Block433Value4 := (self) getOption: (recoveredBlock391Block433Value0) fromXMLDocument: (recoveredBlock391Block433Value1) overrideFixed: (recoveredBlock391Block433Value2) ifFail: (recoveredBlock391Block433Value3).
    recoveredBlock391Block433Value4
].
            recoveredBlock391PC := 454.
        ].
        recoveredBlock391Step = 454 ifTrue: [
            recoveredBlock391Stack1 := (recoveredBlock391Stack1) do: (recoveredBlock391Stack2).
            recoveredBlock391PC := 456.
        ].
        recoveredBlock391Step = 456 ifTrue: [
            recoveredBlock391PC := 508.
        ].
        recoveredBlock391Step = 460 ifTrue: [
            recoveredBlock391Stack1 := self.
            recoveredBlock391PC := 461.
        ].
        recoveredBlock391Step = 461 ifTrue: [
            recoveredBlock391Stack2 := recoveredBlock391Arg1.
            recoveredBlock391PC := 462.
        ].
        recoveredBlock391Step = 462 ifTrue: [
            recoveredBlock391Stack3 := recoveredLocal4.
            recoveredBlock391PC := 465.
        ].
        recoveredBlock391Step = 465 ifTrue: [
            recoveredBlock391Stack4 := recoveredArg2.
            recoveredBlock391PC := 468.
        ].
        recoveredBlock391Step = 468 ifTrue: [
            recoveredBlock391Stack5 := recoveredLocal2.
            recoveredBlock391PC := 471.
        ].
        recoveredBlock391Step = 471 ifTrue: [
            (recoveredBlock391Stack1) getOption: (recoveredBlock391Stack2) fromXMLDocument: (recoveredBlock391Stack3) overrideFixed: (recoveredBlock391Stack4) ifFail: (recoveredBlock391Stack5).
            recoveredBlock391PC := 474.
        ].
        recoveredBlock391Step = 474 ifTrue: [
            recoveredBlock391Stack1 := recoveredArg1.
            recoveredBlock391PC := 477.
        ].
        recoveredBlock391Step = 477 ifTrue: [
            recoveredBlock391Stack2 := [:block2811e5c4Arg1 | 
    | block2811e5c4Stack0 block2811e5c4Stack1 block2811e5c4Stack2 block2811e5c4Stack3 block2811e5c4PC block2811e5c4Step block2811e5c4Done block2811e5c4Result |
    block2811e5c4Stack0 := self.
    block2811e5c4PC := 4.
    block2811e5c4Done := false.
    [block2811e5c4Done not] whileTrue: [
        block2811e5c4Step := block2811e5c4PC.
        block2811e5c4Step = 4 ifTrue: [
            block2811e5c4Stack1 := nil.
            block2811e5c4PC := 5.
        ].
        block2811e5c4Step = 5 ifTrue: [
            block2811e5c4Stack2 := block2811e5c4Arg1.
            block2811e5c4PC := 6.
        ].
        block2811e5c4Step = 6 ifTrue: [
            block2811e5c4Stack2 := (block2811e5c4Stack2) optionClass.
            block2811e5c4PC := 8.
        ].
        block2811e5c4Step = 8 ifTrue: [
            block2811e5c4Stack2 := (block2811e5c4Stack2) updateField.
            block2811e5c4PC := 10.
        ].
        block2811e5c4Step = 10 ifTrue: [
            (block2811e5c4Stack2 == nil) ifTrue: [block2811e5c4PC := 27] ifFalse: [block2811e5c4PC := 14].
        ].
        block2811e5c4Step = 14 ifTrue: [
            block2811e5c4PC := 15.
        ].
        block2811e5c4Step = 15 ifTrue: [
            block2811e5c4Stack1 := block2811e5c4Arg1.
            block2811e5c4PC := 16.
        ].
        block2811e5c4Step = 16 ifTrue: [
            block2811e5c4Stack1 := (block2811e5c4Stack1) optionClass.
            block2811e5c4PC := 18.
        ].
        block2811e5c4Step = 18 ifTrue: [
            block2811e5c4Stack1 := (block2811e5c4Stack1) updateField.
            block2811e5c4PC := 20.
        ].
        block2811e5c4Step = 20 ifTrue: [
            block2811e5c4Stack2 := block2811e5c4Arg1.
            block2811e5c4PC := 21.
        ].
        block2811e5c4Step = 21 ifTrue: [
            block2811e5c4Stack2 := (block2811e5c4Stack2) optionClass.
            block2811e5c4PC := 23.
        ].
        block2811e5c4Step = 23 ifTrue: [
            block2811e5c4Stack1 := (block2811e5c4Stack1) value: (block2811e5c4Stack2).
            block2811e5c4PC := 27.
        ].
        block2811e5c4Step = 27 ifTrue: [
            block2811e5c4Result := block2811e5c4Stack1.
            block2811e5c4Done := true.
        ].
    ].
    block2811e5c4Result
].
            recoveredBlock391PC := 479.
        ].
        recoveredBlock391Step = 479 ifTrue: [
            recoveredBlock391PC := 506.
        ].
        recoveredBlock391Step = 506 ifTrue: [
            recoveredBlock391Stack1 := (recoveredBlock391Stack1) do: (recoveredBlock391Stack2).
            recoveredBlock391PC := 508.
        ].
        recoveredBlock391Step = 508 ifTrue: [
            recoveredBlock391Result := recoveredBlock391Stack1.
            recoveredBlock391Done := true.
        ].
    ].
    recoveredBlock391Result
].
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

