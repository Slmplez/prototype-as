"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200097e8; bytecode file offset 0x908be4"
!SGCgEHooksSettings methodsFor: 'recovered'!
isCurrentlyActive
    | recoveredValue0 |
    recoveredValue0 := (self) mustPerformExternalBuildTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000af4c; bytecode file offset 0x908be4"
!SGCgEHooksSettings methodsFor: 'recovered'!
requiresSingleInstanceClasses
    | recoveredValue0 |
    recoveredValue0 := (self) supportLocalElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b774; bytecode file offset 0x908be4"
!SGCgEHooksSettings methodsFor: 'recovered'!
considerSingleInstanceClasses
    | recoveredValue0 |
    recoveredValue0 := (self) requiresSingleInstanceClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200167e4; bytecode file offset 0x92209c"
!SGCgEHooksSettings methodsFor: 'recovered'!
ehooksGetTemplateKey
    ^'EHOOKS.TEMPLATE.GET'
! !

"ASDBase.ic method 0x2001cd3c; bytecode file offset 0x92209c"
!SGCgEHooksSettings methodsFor: 'recovered'!
ehooksSetTemplateKey
    ^'EHOOKS.TEMPLATE.SET'
! !

"ASDBase.ic method 0x20022fb8; bytecode file offset 0x92209c"
!SGCgEHooksSettings methodsFor: 'recovered'!
bypassFilename
    ^'asd_bypass_func.c'
! !

"ASDBase.ic method 0x20031384; bytecode file offset 0x934580"
!SGCgEHooksSettings methodsFor: 'recovered'!
supportsPasswordPathname
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) buildTool.
    recoveredValue1 := (recoveredValue0) supportsPasswordPathname.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004386c; bytecode file offset 0x9451f8"
!SGCgEHooksSettings methodsFor: 'recovered'!
mustPerformExternalBuildTool
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolean: ('mustPerformScoopixGeneration').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043e6c; bytecode file offset 0x9451f8"
!SGCgEHooksSettings methodsFor: 'recovered'!
externalToolBuildCommands
    | recoveredValue0 |
    recoveredValue0 := (self) getString: ('externalToolBuildCommands').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200450bc; bytecode file offset 0x9451f8"
!SGCgEHooksSettings methodsFor: 'recovered'!
applicationServerRunning
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolean: ('applicationServerRunning').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200450dc; bytecode file offset 0x9451f8"
!SGCgEHooksSettings methodsFor: 'recovered'!
configId
    | recoveredValue0 |
    recoveredValue0 := (self) getString: ('configId').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046dec; bytecode file offset 0x9451f8"
!SGCgEHooksSettings methodsFor: 'recovered'!
mustCloseApplicationServer
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolean: ('closeApplicationServer').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047a7c; bytecode file offset 0x9451f8"
!SGCgEHooksSettings methodsFor: 'recovered'!
bypassFunctionUseCriticalSection
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolean: ('bypassFunctionUseCriticalSection').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004995c; bytecode file offset 0x947128"
!SGCgEHooksSettings methodsFor: 'recovered'!
ehooksGetTemplate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksGetTemplateKey.
    recoveredValue1 := (self) template: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a3ec; bytecode file offset 0x947128"
!SGCgEHooksSettings methodsFor: 'recovered'!
ehooksSetTemplate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksSetTemplateKey.
    recoveredValue1 := (self) template: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005cf20; bytecode file offset 0x9599ac"
!SGCgEHooksSettings methodsFor: 'recovered'!
globalNamePrefix
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue1 := (recoveredValue0) globalNamePrefixKey.
    recoveredValue2 := (self) template: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069db8; bytecode file offset 0x966bdc"
!SGCgEHooksSettings methodsFor: 'recovered'!
toolChainDriver
    | recoveredValue0 |
    recoveredValue0 := toolChainDriver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a3d4; bytecode file offset 0x967a18"
!SGCgEHooksSettings methodsFor: 'recovered'!
templateFile
    | recoveredValue0 |
    recoveredValue0 := templateFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b748; bytecode file offset 0x96873c"
!SGCgEHooksSettings methodsFor: 'recovered'!
buildTool
    | recoveredValue0 |
    recoveredValue0 := buildTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c204; bytecode file offset 0x9692b0"
!SGCgEHooksSettings methodsFor: 'recovered'!
ehConfigFilename
    | recoveredValue0 |
    recoveredValue0 := ehConfigFilename.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ca88; bytecode file offset 0x969c04"
!SGCgEHooksSettings methodsFor: 'recovered'!
includePaths
    | recoveredValue0 |
    recoveredValue0 := includePaths.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d6f4; bytecode file offset 0x96a390"
!SGCgEHooksSettings methodsFor: 'recovered'!
libraryFiles
    | recoveredValue0 |
    recoveredValue0 := libraryFiles.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e028; bytecode file offset 0x96a9dc"
!SGCgEHooksSettings methodsFor: 'recovered'!
backendId
    | recoveredValue0 |
    recoveredValue0 := backendId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007e49c; bytecode file offset 0x97c330"
!SGCgEHooksSettings methodsFor: 'recovered'!
supportLocalElementsNEW
    ^false
! !

"ASDBase.ic method 0x2007ee44; bytecode file offset 0x97c330"
!SGCgEHooksSettings methodsFor: 'recovered'!
useTemplates
    ^false
! !

"ASDBase.ic method 0x20093414; bytecode file offset 0x98fed0"
!SGCgEHooksSettings methodsFor: 'recovered'!
applicationServerRunning: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) set: ('applicationServerRunning') boolOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093454; bytecode file offset 0x98fed0"
!SGCgEHooksSettings methodsFor: 'recovered'!
externalToolBuildCommands: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) set: ('externalToolBuildCommands') stringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200934d4; bytecode file offset 0x98fed0"
!SGCgEHooksSettings methodsFor: 'recovered'!
mustPerformExternalBuildTool: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) set: ('mustPerformScoopixGeneration') boolOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a3a10; bytecode file offset 0x9a0b4c"
!SGCgEHooksSettings methodsFor: 'recovered'!
bypassFunctionUseCriticalSection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) set: ('bypassFunctionUseCriticalSection') boolOption: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3e70; bytecode file offset 0x9a0b4c"
!SGCgEHooksSettings methodsFor: 'recovered'!
configId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setting: ('configId') putString: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4150; bytecode file offset 0x9a0b4c"
!SGCgEHooksSettings methodsFor: 'recovered'!
mustCloseApplicationServer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) set: ('closeApplicationServer') boolOption: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c1b8c; bytecode file offset 0x9beac8"
!SGCgEHooksSettings methodsFor: 'recovered'!
templateFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    templateFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b10; bytecode file offset 0x9bf474"
!SGCgEHooksSettings methodsFor: 'recovered'!
buildTool: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buildTool := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2fb4; bytecode file offset 0x9bfde0"
!SGCgEHooksSettings methodsFor: 'recovered'!
ehConfigFilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ehConfigFilename := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c37d0; bytecode file offset 0x9c058c"
!SGCgEHooksSettings methodsFor: 'recovered'!
includePaths: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    includePaths := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f5c; bytecode file offset 0x9c0bf0"
!SGCgEHooksSettings methodsFor: 'recovered'!
libraryFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    libraryFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20103c44; bytecode file offset 0xa00520"
!SGCgEHooksSettings methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2010accc; bytecode file offset 0xa075a0"
!SGCgEHooksSettings methodsFor: 'recovered'!
supportLocalElements
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExistingTool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportLocalElements.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20111554; bytecode file offset 0xa0de18"
!SGCgEHooksSettings methodsFor: 'recovered'!
nameTemplateKey: recoveredArg1 elementName: recoveredArg2 componentInfo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) template: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) nameTemplateSpecificArgs: (recoveredValue2).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) bannerInfos.
    recoveredValue6 := (self) template: (recoveredValue1) specialArgs: (recoveredValue3) generalArgs: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2011bef0; bytecode file offset 0xa187b4"
!SGCgEHooksSettings methodsFor: 'recovered'!
ehooksClientName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExistingTool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) clientName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'NONE'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011c488; bytecode file offset 0xa18d54"
!SGCgEHooksSettings methodsFor: 'recovered'!
validNameTemplateParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super validNameTemplateParameter.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) elementInstancePathKey.
    (recoveredValue1) at: (recoveredValue3) put: ('X').
    ^recoveredValue0
! !

"ASDBase.ic method 0x201296a0; bytecode file offset 0xa25f5c"
!SGCgEHooksSettings methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2012f43c; bytecode file offset 0xa2bd08"
!SGCgEHooksSettings methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20198374; bytecode file offset 0xa94c44"
!SGCgEHooksSettings methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201ab6c4; bytecode file offset 0xaa7f98"
!SGCgEHooksSettings methodsFor: 'recovered'!
filenameTemplate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) ehooksBackendKey.
    recoveredValue5 := (self) backendId.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [].
    recoveredValue9 := (self) template: (recoveredValue6) binding: (recoveredValue7) ifFail: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201d182c; bytecode file offset 0xace0fc"
!SGCgEHooksSettings methodsFor: 'recovered'!
nameTemplateSpecificArgs: recoveredArg1
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
    recoveredValue8 := (recoveredValue7) targetPropertiesGlobalNamespacePrefixKey.
    recoveredValue9 := (self) globalNamePrefix.
    (recoveredValue6) at: (recoveredValue8) put: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20229454; bytecode file offset 0xb25d24"
!SGCgEHooksSettings methodsFor: 'recovered'!
ehDisplayIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) templates.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asAtom.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) asString.
    recoveredBlock9Value2 := (recoveredBlock9Value1) , (' display identifier').
    recoveredBlock9Value3 := (self) fatalNo: (85) with: (recoveredBlock9Value2).
    recoveredBlock9Value3
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025b998; bytecode file offset 0xb58264"
!SGCgEHooksSettings methodsFor: 'recovered'!
template: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (recoveredValue1) asAtom.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) templates.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asAtom.
    recoveredValue6 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredArg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) asString.
    recoveredBlock17Value2 := (self) fatalNo: (85) with: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    recoveredValue7 := (recoveredValue3) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2028a170; bytecode file offset 0xb86a38"
!SGCgEHooksSettings methodsFor: 'recovered'!
toolChainDriver: recoveredArg1
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
            toolChainDriver := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 'unknown'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            backendId := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            backendId := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

