"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008c30; bytecode file offset 0x908be4"
!SGCgCCodeSettings methodsFor: 'recovered'!
cCodeValidFilenameTemplateParameter
    | recoveredValue0 |
    recoveredValue0 := (self) valueComponentInfoTemplateParameter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021f80; bytecode file offset 0x92209c"
!SGCgCCodeSettings methodsFor: 'recovered'!
ileEccoKeyComponentTemplate
    ^'%^COMPONENT.NAME^%%_?^COMPONENT.IMPL.NAME^?%'
! !

"ASDBase.ic method 0x2002cd24; bytecode file offset 0x934580"
!SGCgCCodeSettings methodsFor: 'recovered'!
filenameOperatingSystemKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) filenameOperatingSystemKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f5c4; bytecode file offset 0x934580"
!SGCgCCodeSettings methodsFor: 'recovered'!
filenameTemplateKeys
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) filenameTemplateKeys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037c14; bytecode file offset 0x934580"
!SGCgCCodeSettings methodsFor: 'recovered'!
cTypeTemplateKeys
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) cTypeTemplateKeys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200582c8; bytecode file offset 0x956284"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameExportedElementObsolete: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) globalElementPrefix.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f11c; bytecode file offset 0x95c4f4"
!SGCgCCodeSettings methodsFor: 'recovered'!
osFilename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) filenameOperatingSystemKey.
    recoveredValue2 := (self) baseFilename: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006a5f4; bytecode file offset 0x967a18"
!SGCgCCodeSettings methodsFor: 'recovered'!
targetSpecificOptionSource
    | recoveredValue0 |
    recoveredValue0 := targetSpecificOptionSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008547c; bytecode file offset 0x981d40"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameTemplateElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) nameTemplateElement: (recoveredValue0) method: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b06a8; bytecode file offset 0x9acf6c"
!SGCgCCodeSettings methodsFor: 'recovered'!
globalNamePrefix
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue1 := (recoveredValue0) globalNamePrefixKey.
    recoveredValue2 := [].
    recoveredValue3 := (self) template: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c19ec; bytecode file offset 0x9beac8"
!SGCgCCodeSettings methodsFor: 'recovered'!
targetSpecificOptionSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetSpecificOptionSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dbb14; bytecode file offset 0x9d8438"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameExportedCharacteristic: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) nameExportedCharacteristicKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) nameTemplateKey: (recoveredValue1) elementName: (recoveredValue2) componentInfo: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dbb28; bytecode file offset 0x9d8438"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameExportedElement: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) nameExportedElementKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) nameTemplateKey: (recoveredValue1) elementName: (recoveredValue2) componentInfo: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dbb64; bytecode file offset 0x9d8438"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameLocalElement: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) nameLocalElementKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) nameTemplateKey: (recoveredValue1) elementName: (recoveredValue2) componentInfo: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dbb78; bytecode file offset 0x9d8438"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameLocalCharacteristic: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) nameLocalCharacteristicKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) nameTemplateKey: (recoveredValue1) elementName: (recoveredValue2) componentInfo: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dd65c; bytecode file offset 0x9d9f18"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameTemplateKey: recoveredArg1 elementName: recoveredArg2 componentInfo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) template: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) nameTemplate: (recoveredValue1) elementName: (recoveredValue2) componentInfo: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eca28; bytecode file offset 0x9e92e8"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameMsgCopyElement: recoveredArg1 methodName: recoveredArg2 componentInfo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) messageCopyLocalTemplateKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) nameTemplateKey: (recoveredValue1) elementName: (recoveredValue2) methodName: (recoveredValue3) componentInfo: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed024; bytecode file offset 0x9e98e4"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameTemplate: recoveredArg1 elementName: recoveredArg2 componentInfo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) nameTemplateElement: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) cTypeInfo.
    recoveredValue5 := (self) template: (recoveredValue0) specialArgs: (recoveredValue2) generalArgs: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201003c4; bytecode file offset 0x9fcca0"
!SGCgCCodeSettings methodsFor: 'recovered'!
cTypeTemplateKey: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) template: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) cTypeInfo.
    recoveredValue4 := [].
    recoveredValue5 := (self) template: (recoveredValue1) binding: (recoveredValue3) ifFail: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20103c5c; bytecode file offset 0xa00520"
!SGCgCCodeSettings methodsFor: 'recovered'!
addTemplate: recoveredArg1 key: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (recoveredValue1) asAtom.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) templates.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20103db0; bytecode file offset 0xa00674"
!SGCgCCodeSettings methodsFor: 'recovered'!
template: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (recoveredValue1) asAtom.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) templates.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asAtom.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue3) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2010db8c; bytecode file offset 0xa0a474"
!SGCgCCodeSettings methodsFor: 'recovered'!
templateOrEmptyString: recoveredArg1
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
            recoveredStack2 := [
    ''
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) template: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011c468; bytecode file offset 0xa18d54"
!SGCgCCodeSettings methodsFor: 'recovered'!
validNameTemplateParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super validNameTemplateParameter.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) componentTypeNameKey.
    (recoveredValue1) at: (recoveredValue3) put: ('X').
    ^recoveredValue0
! !

"ASDBase.ic method 0x201295e0; bytecode file offset 0xa25f5c"
!SGCgCCodeSettings methodsFor: 'recovered'!
templates
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := templates.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            templates := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := templates.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129878; bytecode file offset 0xa261a4"
!SGCgCCodeSettings methodsFor: 'recovered'!
fileNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fileNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            fileNames := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := fileNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012bfdc; bytecode file offset 0xa288a0"
!SGCgCCodeSettings methodsFor: 'recovered'!
globalElementPrefix
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
            recoveredStack1 := (recoveredStack1) projectPropertiesGlobalElementPrefixKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) template: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012c090; bytecode file offset 0xa28974"
!SGCgCCodeSettings methodsFor: 'recovered'!
globalComponentNamePrefix
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectPropertiesComponentPrefixKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) template: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012c0ac; bytecode file offset 0xa28974"
!SGCgCCodeSettings methodsFor: 'recovered'!
componentPrefix
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectPropertiesComponentPrefixKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) template: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012f41c; bytecode file offset 0xa2bd08"
!SGCgCCodeSettings methodsFor: 'recovered'!
validGeneralNameTemplateParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super validGeneralNameTemplateParameter.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) targetPropertiesGlobalNamespacePrefixKey.
    recoveredValue4 := (self) globalNamePrefix.
    (recoveredValue1) at: (recoveredValue3) put: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20132050; bytecode file offset 0xa2e918"
!SGCgCCodeSettings methodsFor: 'recovered'!
defaultFilenameTemplate: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) filenameOperatingSystemKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'conf'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '%COMPONENT.NAME%'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20136674; bytecode file offset 0xa32f38"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameTemplateKey: recoveredArg1 elementName: recoveredArg2 methodName: recoveredArg3 componentInfo: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) template: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) nameTemplateElement: (recoveredValue2) method: (recoveredValue3).
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue5) bannerInfos.
    recoveredValue7 := (self) template: (recoveredValue1) specialArgs: (recoveredValue4) generalArgs: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20157048; bytecode file offset 0xa53914"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameTemplateElement: recoveredArg1 method: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super nameTemplateElement: (recoveredValue0) method: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) targetPropertiesGlobalNamespacePrefixKey.
    recoveredValue6 := (self) globalNamePrefix.
    (recoveredValue3) at: (recoveredValue5) put: (recoveredValue6).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20157b40; bytecode file offset 0xa5441c"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameServiceRoutine: recoveredArg1 symbol: recoveredArg2 componentInfo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) nameMethodKey.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) checkSymbol: (recoveredValue0) modelName: (recoveredValue1) defaultTemplateKey: (recoveredValue3) componentInfo: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (self) nameServiceRoutineTemplate: (recoveredValue5) elementName: (recoveredValue6) componentInfo: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20157b58; bytecode file offset 0xa5441c"
!SGCgCCodeSettings methodsFor: 'recovered'!
namePrototype: recoveredArg1 symbol: recoveredArg2 componentInfo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) namePrototypeKey.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) checkSymbol: (recoveredValue0) modelName: (recoveredValue1) defaultTemplateKey: (recoveredValue3) componentInfo: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (self) nameTemplate: (recoveredValue5) elementName: (recoveredValue6) componentInfo: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2016a0e8; bytecode file offset 0xa669c4"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameProcess: recoveredArg1 symbol: recoveredArg2 genNameComponent: recoveredArg3 componentInfo: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) nameProcessKey.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) checkSymbol: (recoveredValue0) modelName: (recoveredValue1) defaultTemplateKey: (recoveredValue3) componentInfo: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := (self) nameTemplate: (recoveredValue5) elementName: (recoveredValue6) genNameComponent: (recoveredValue7) componentInfo: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2016a100; bytecode file offset 0xa669c4"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameMethod: recoveredArg1 symbol: recoveredArg2 genNameComponent: recoveredArg3 componentInfo: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) nameMethodKey.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) checkSymbol: (recoveredValue0) modelName: (recoveredValue1) defaultTemplateKey: (recoveredValue3) componentInfo: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := (self) nameTemplate: (recoveredValue5) elementName: (recoveredValue6) genNameComponent: (recoveredValue7) componentInfo: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20179b3c; bytecode file offset 0xa76408"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameTemplate: recoveredArg1 elementName: recoveredArg2 genNameComponent: recoveredArg3 componentInfo: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) nameTemplateElement: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) componentTypeNameKey.
    recoveredValue6 := recoveredArg3.
    (recoveredValue3) at: (recoveredValue5) put: (recoveredValue6).
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := (recoveredValue7) cTypeInfo.
    recoveredValue9 := (self) template: (recoveredValue0) specialArgs: (recoveredValue2) generalArgs: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2017d844; bytecode file offset 0xa7a114"
!SGCgCCodeSettings methodsFor: 'recovered'!
accessMacro: recoveredArg1 name: recoveredArg2 componentInfo: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) cTypeInfo.
    recoveredValue2 := (recoveredValue1) copy.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) elementNameKey.
    recoveredValue6 := recoveredArg2.
    (recoveredValue3) at: (recoveredValue5) put: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) template: (recoveredValue7).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) bindWithGeneralArguments: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20198350; bytecode file offset 0xa94c44"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameTemplateKey: recoveredArg1 elementName: recoveredArg2 instancePath: recoveredArg3 componentInfo: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) template: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) nameTemplateSpecificArgs: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) elementInstancePathKey.
    recoveredValue7 := recoveredArg3.
    (recoveredValue4) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := (recoveredValue8) bannerInfos.
    recoveredValue10 := (self) template: (recoveredValue1) specialArgs: (recoveredValue3) generalArgs: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201db310; bytecode file offset 0xad7bd0"
!SGCgCCodeSettings methodsFor: 'recovered'!
template: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) asString.
    recoveredBlock7Value2 := (self) fatalNo: (85) with: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (self) template: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e1900; bytecode file offset 0xade230"
!SGCgCCodeSettings methodsFor: 'recovered'!
obsoleteNameTemplateParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('name') put: ('%METHOD.NAME%').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('class') put: ('%^COMPONENT.NAME^%').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: ('impl') put: ('%^COMPONENT.IMPL.NAME^%').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20237348; bytecode file offset 0xb33c3c"
!SGCgCCodeSettings methodsFor: 'recovered'!
validFilenameTemplateParameter
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGCgComponentInfo.
    recoveredValue3 := (recoveredValue2) validFilenameTemplateParameter.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) at: (recoveredBlock13Value1) put: ('X').
    recoveredBlock13Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203e2a84; bytecode file offset 0xcdf374"
!SGCgCCodeSettings methodsFor: 'recovered'!
asIleEccoKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredLocal1 := ''.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implName.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (self) convertToValidIdentifier: (recoveredBlock13Value0).
    recoveredBlock13Value2 := recoveredBlock13Value1.
    recoveredLocal1 := recoveredBlock13Value2.
    recoveredBlock13Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := LookupTable.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := SGCgComponentInfo.
    recoveredValue7 := (recoveredValue6) componentImplementationKey.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue5) at: (recoveredValue7) put: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := SGCgComponentInfo.
    recoveredValue11 := (recoveredValue10) componentImplNameKey.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue9) at: (recoveredValue11) put: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := SGCgComponentInfo.
    recoveredValue15 := (recoveredValue14) componentNameKey.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) className.
    recoveredValue18 := (self) convertToValidIdentifier: (recoveredValue17).
    (recoveredValue13) at: (recoveredValue15) put: (recoveredValue18).
    recoveredValue19 := (self) ileEccoKeyComponentTemplate.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := [].
    recoveredValue22 := (self) template: (recoveredValue19) binding: (recoveredValue20) ifFail: (recoveredValue21).
    ^recoveredValue22
! !

"ASDBase.ic method 0x204c30a4; bytecode file offset 0xdbf9bc"
!SGCgCCodeSettings methodsFor: 'recovered'!
nameServiceRoutineTemplate: recoveredArg1 elementName: recoveredArg2 componentInfo: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asModuleIdentifier.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) implementation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := $_.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
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
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) cTypeInfo.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := SGCgComponentInfo.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) componentImplementationKey.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := SGCgComponentInfo.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) componentImplNameKey.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := SGCgComponentInfo.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) componentNameKey.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) componentTypeNameKey.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := '_'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) asUppercase.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementNameKey.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodNameKey.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 'class'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'impl'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) asUppercase.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) template: (recoveredStack1) binding: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c2a78; bytecode file offset 0xebf38c"
!SGCgCCodeSettings methodsFor: 'recovered'!
checkSymbol: recoveredArg1 modelName: recoveredArg2 defaultTemplateKey: recoveredArg3 componentInfo: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) obsoleteNameTemplateParameter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := Set.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal6 := recoveredStack6.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) ifAbsentContinue: (recoveredStack3) allowUppercase: (recoveredStack4) unknownArguments: (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 |
    recoveredBlock41Value0 := recoveredLocal4.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := (recoveredBlock41Value0) includesKey: (recoveredBlock41Value1).
    recoveredBlock41Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 |
    recoveredBlock78Value0 := recoveredLocal1.
    recoveredBlock78Value1 := recoveredBlock78Arg1.
    recoveredBlock78Value2 := (recoveredBlock78Value0) nextPutAll: (recoveredBlock78Value1).
    recoveredBlock78Value2
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock91Value0 recoveredBlock91Value1 |
    recoveredBlock91Value0 := recoveredLocal1.
    recoveredBlock91Value1 := (recoveredBlock91Value0) nextPutAll: (', ').
    recoveredBlock91Value1
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) separatedBy: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := (recoveredStack4) contents.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) warningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := Set.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal6 := recoveredStack6.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) ifAbsentContinue: (recoveredStack3) allowUppercase: (recoveredStack4) unknownArguments: (recoveredStack5).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) bannerInfos.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) template: (recoveredStack2) binding: (recoveredStack3) ifFail: (recoveredStack4).
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
            recoveredStack2 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameTemplateElement: (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack5 := Set.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal6 := recoveredStack6.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) ifAbsentContinue: (recoveredStack3) allowUppercase: (recoveredStack4) unknownArguments: (recoveredStack5).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 85.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) errorNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredPC := 300.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := [:recoveredBlock250Arg1 | 
    | recoveredBlock250Value0 recoveredBlock250Value1 recoveredBlock250Value2 |
    recoveredBlock250Value0 := recoveredLocal1.
    recoveredBlock250Value1 := recoveredBlock250Arg1.
    recoveredBlock250Value2 := (recoveredBlock250Value0) nextPutAll: (recoveredBlock250Value1).
    recoveredBlock250Value2
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock263Value0 recoveredBlock263Value1 |
    recoveredBlock263Value0 := recoveredLocal1.
    recoveredBlock263Value1 := (recoveredBlock263Value0) nextPutAll: (', ').
    recoveredBlock263Value1
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) separatedBy: (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := 84.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := (recoveredStack3) contents.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1) errorNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) template: (recoveredStack1).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

