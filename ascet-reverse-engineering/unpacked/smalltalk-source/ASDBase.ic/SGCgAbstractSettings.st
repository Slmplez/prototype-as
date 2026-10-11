"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f268; bytecode file offset 0x92209c"
!SGCgAbstractSettings methodsFor: 'recovered'!
relPathFormats
    ^'Formats'
! !

"ASDBase.ic method 0x2002a634; bytecode file offset 0x934580"
!SGCgAbstractSettings methodsFor: 'recovered'!
missingFilenameString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) missingFilenameString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b684; bytecode file offset 0x934580"
!SGCgAbstractSettings methodsFor: 'recovered'!
nameTemplateKeys
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) nameTemplateKeys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c054; bytecode file offset 0x934580"
!SGCgAbstractSettings methodsFor: 'recovered'!
asapNameTemplateKeys
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) asapNameTemplateKeys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fb64; bytecode file offset 0x934580"
!SGCgAbstractSettings methodsFor: 'recovered'!
projectPropertiesComponentPrefixKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) projectPropertiesComponentPrefixKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037654; bytecode file offset 0x934580"
!SGCgAbstractSettings methodsFor: 'recovered'!
projectPropertiesGlobalElementPrefixKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) projectPropertiesGlobalElementPrefixKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dab8; bytecode file offset 0x93bf94"
!SGCgAbstractSettings methodsFor: 'recovered'!
fileNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057398; bytecode file offset 0x956284"
!SGCgAbstractSettings methodsFor: 'recovered'!
defaultASAPNameTemplate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) defaultASAPNameTemplate: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f4f0; bytecode file offset 0x95c4f4"
!SGCgAbstractSettings methodsFor: 'recovered'!
versionString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) versionStringKey.
    recoveredValue2 := (self) getString: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fb1c; bytecode file offset 0x95c4f4"
!SGCgAbstractSettings methodsFor: 'recovered'!
settingsCRCValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) settingsCrcValueKey.
    recoveredValue2 := (self) getString: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065b9c; bytecode file offset 0x963428"
!SGCgAbstractSettings methodsFor: 'recovered'!
buildEnvironmentInfo
    | recoveredValue0 |
    recoveredValue0 := buildEnvironmentInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200835dc; bytecode file offset 0x97ff54"
!SGCgAbstractSettings methodsFor: 'recovered'!
getBoolean: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getSetting: (recoveredValue0) default: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20095a20; bytecode file offset 0x9922e4"
!SGCgAbstractSettings methodsFor: 'recovered'!
getNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getSetting: (recoveredValue0) default: (-1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009a1e8; bytecode file offset 0x997194"
!SGCgAbstractSettings methodsFor: 'recovered'!
set: recoveredArg1 boolOption: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009d86c; bytecode file offset 0x99a2e4"
!SGCgAbstractSettings methodsFor: 'recovered'!
keywords
    | recoveredValue0 |
    recoveredValue0 := (self) getSetting: ('keywords') default: (#()).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aa02c; bytecode file offset 0x9a69f0"
!SGCgAbstractSettings methodsFor: 'recovered'!
getString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) unknownKey.
    recoveredValue3 := (self) getSetting: (recoveredValue0) default: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae5c8; bytecode file offset 0x9ab034"
!SGCgAbstractSettings methodsFor: 'recovered'!
set: recoveredArg1 stringOption: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae618; bytecode file offset 0x9ab034"
!SGCgAbstractSettings methodsFor: 'recovered'!
setting: recoveredArg1 putString: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae708; bytecode file offset 0x9ab034"
!SGCgAbstractSettings methodsFor: 'recovered'!
set: recoveredArg1 option: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9bf8; bytecode file offset 0x9b6c88"
!SGCgAbstractSettings methodsFor: 'recovered'!
versionString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) versionStringKey.
    recoveredValue2 := recoveredArg1.
    (self) setting: (recoveredValue1) putString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9fb8; bytecode file offset 0x9b6c88"
!SGCgAbstractSettings methodsFor: 'recovered'!
settingsCRCValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) settingsCrcValueKey.
    recoveredValue2 := recoveredArg1.
    (self) setting: (recoveredValue1) putString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bdc3c; bytecode file offset 0x9bb178"
!SGCgAbstractSettings methodsFor: 'recovered'!
buildEnvironmentInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buildEnvironmentInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eb5fc; bytecode file offset 0x9e7ee4"
!SGCgAbstractSettings methodsFor: 'recovered'!
baseFilenameCategory: recoveredArg1 binding: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) baseFilename: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) template: (recoveredValue1) binding: (recoveredValue2) ifFail: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20103d88; bytecode file offset 0xa0064c"
!SGCgAbstractSettings methodsFor: 'recovered'!
baseFilename: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (recoveredValue1) asAtom.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) fileNames.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20125d94; bytecode file offset 0xa2265c"
!SGCgAbstractSettings methodsFor: 'recovered'!
nameTemplateSpecificArgs: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) elementNameKey.
    recoveredValue5 := recoveredArg1.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20129338; bytecode file offset 0xa25c54"
!SGCgAbstractSettings methodsFor: 'recovered'!
settings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := settings.
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
            settings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := settings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20169538; bytecode file offset 0xa65e04"
!SGCgAbstractSettings methodsFor: 'recovered'!
getSetting: recoveredArg1 default: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredArg2.
    recoveredBlock8Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2016d3b8; bytecode file offset 0xa69c74"
!SGCgAbstractSettings methodsFor: 'recovered'!
template: recoveredArg1 specialArgs: recoveredArg2 generalArgs: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := [].
    recoveredValue3 := (self) template: (recoveredValue0) binding: (recoveredValue1) ifFail: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := [].
    recoveredValue7 := (self) template: (recoveredValue4) binding: (recoveredValue5) ifFail: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20194804; bytecode file offset 0xa910cc"
!SGCgAbstractSettings methodsFor: 'recovered'!
convertToValidIdentifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
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
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a7be0; bytecode file offset 0xaa44a4"
!SGCgAbstractSettings methodsFor: 'recovered'!
isValidANSICIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) startsWithReservedName: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    ^false
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) isValidANSICIdentifier.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201ac5a4; bytecode file offset 0xaa8e70"
!SGCgAbstractSettings methodsFor: 'recovered'!
nameTemplateElement: recoveredArg1 method: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) elementNameKey.
    recoveredValue5 := recoveredArg1.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) methodNameKey.
    recoveredValue9 := recoveredArg2.
    (recoveredValue6) at: (recoveredValue8) put: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201bf7a8; bytecode file offset 0xabc06c"
!SGCgAbstractSettings methodsFor: 'recovered'!
template: recoveredArg1 binding: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack5 := Set.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack6.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) ifAbsentContinue: (recoveredStack3) allowUppercase: (recoveredStack4) unknownArguments: (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023736c; bytecode file offset 0xb33c3c"
!SGCgAbstractSettings methodsFor: 'recovered'!
validGeneralTemplateParameter
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGCgComponentInfo.
    recoveredValue3 := (recoveredValue2) validNamingTemplateParameter.
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

"ASDBase.ic method 0x20271838; bytecode file offset 0xb6e10c"
!SGCgAbstractSettings methodsFor: 'recovered'!
baseFilename: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (recoveredValue1) asAtom.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) fileNames.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) asString.
    recoveredBlock16Value2 := (recoveredBlock16Value1) , (' for base file name').
    recoveredBlock16Value3 := (self) fatalNo: (85) with: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    recoveredValue6 := (recoveredValue3) at: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202fecb0; bytecode file offset 0xbfb58c"
!SGCgAbstractSettings methodsFor: 'recovered'!
valueComponentInfoTemplateParameter
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGCgComponentInfo.
    recoveredValue4 := (recoveredValue3) componentNameKey.
    (recoveredValue2) at: (recoveredValue4) put: ('X').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := SGCgComponentInfo.
    recoveredValue7 := (recoveredValue6) componentImplNameKey.
    (recoveredValue5) at: (recoveredValue7) put: ('X').
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := SGCgComponentInfo.
    recoveredValue10 := (recoveredValue9) componentImplementationKey.
    (recoveredValue8) at: (recoveredValue10) put: ('X').
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := SGCgComponentInfo.
    recoveredValue13 := (recoveredValue12) componentIdKey.
    (recoveredValue11) at: (recoveredValue13) put: ('X').
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := SGCgComponentInfo.
    recoveredValue16 := (recoveredValue15) componentLibraryPathKey.
    (recoveredValue14) at: (recoveredValue16) put: ('X').
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x20302180; bytecode file offset 0xbfea60"
!SGCgAbstractSettings methodsFor: 'recovered'!
validGeneralNameTemplateParameter
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) buildEnvironmentInfo.
    recoveredValue3 := (recoveredValue2) bannerInfos.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := SGCgAbstractInfo.
    recoveredValue5 := (recoveredValue4) validFilenameTemplateParameter.
    recoveredValue6 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19Stack6 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack3 := recoveredLocal1.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack5 := [
    ''
].
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) at: (recoveredBlock19Stack4) ifAbsentPut: (recoveredBlock19Stack5).
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) put: (recoveredBlock19Stack3).
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20317254; bytecode file offset 0xc13b30"
!SGCgAbstractSettings methodsFor: 'recovered'!
validNameTemplateParameter
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) elementNameKey.
    (recoveredValue2) at: (recoveredValue4) put: ('X').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) methodNameKey.
    (recoveredValue5) at: (recoveredValue7) put: ('X').
    recoveredValue8 := SGCgComponentInfo.
    recoveredValue9 := (recoveredValue8) validFilenameTemplateParameter.
    recoveredValue10 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredLocal1.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (recoveredBlock35Value0) at: (recoveredBlock35Value1) put: ('X').
    recoveredBlock35Value2
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x203374c8; bytecode file offset 0xc33da0"
!SGCgAbstractSettings methodsFor: 'recovered'!
baseFilenameCategory: recoveredArg1 componentInfo: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) bannerInfos.
    recoveredValue4 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg2.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) notApplicableString.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) equals: (recoveredBlock14Stack2).
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 30] ifFalse: [recoveredBlock14PC := 42].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack3 := ''.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2) put: (recoveredBlock14Stack3).
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg2.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2) put: (recoveredBlock14Stack3).
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) baseFilenameCategory: (recoveredValue5) binding: (recoveredValue6).
    ^recoveredValue7
! !

