"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008e88; bytecode file offset 0x908be4"
!TGCompilerTool methodsFor: 'recovered'!
compilerToolType
    | recoveredValue0 |
    recoveredValue0 := (self) identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ab50; bytecode file offset 0x908be4"
!TGCompilerTool methodsFor: 'recovered'!
isUseLongNamesValid
    | recoveredValue0 |
    recoveredValue0 := (self) supportsLongFileNames.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002a884; bytecode file offset 0x934580"
!TGCompilerTool methodsFor: 'recovered'!
supportsInlining
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) inlinePhrase.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008661c; bytecode file offset 0x982ee0"
!TGCompilerTool methodsFor: 'recovered'!
updateWithRootPath: recoveredArg1 target: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    (self) setTarget: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008bee0; bytecode file offset 0x9887bc"
!TGCompilerTool methodsFor: 'recovered'!
supportsIncrementalLinking
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('supportsIncrementalLinking') default: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008bef0; bytecode file offset 0x9887bc"
!TGCompilerTool methodsFor: 'recovered'!
supportsPreCompiledHeader
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('supportsPreCompiledHeader') default: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008c2c8; bytecode file offset 0x988bc4"
!TGCompilerTool methodsFor: 'recovered'!
supportsCompiling
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('supportsCompiling') default: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008c2d8; bytecode file offset 0x988bc4"
!TGCompilerTool methodsFor: 'recovered'!
supportsLongFileNames
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('supportsLongFileNames') default: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d880; bytecode file offset 0x99a2e4"
!TGCompilerTool methodsFor: 'recovered'!
publicPhrase
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('public') default: ('').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d894; bytecode file offset 0x99a2e4"
!TGCompilerTool methodsFor: 'recovered'!
inlinePhrase
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('inline') default: ('').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d8f8; bytecode file offset 0x99a2e4"
!TGCompilerTool methodsFor: 'recovered'!
getIncrementalLinkStatusExtension
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('incrementalLinkStatusExt') default: ('.ilk').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d920; bytecode file offset 0x99a2e4"
!TGCompilerTool methodsFor: 'recovered'!
getPPCROMFileName
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('PPCROMFileName') default: ('').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d9ac; bytecode file offset 0x99a2e4"
!TGCompilerTool methodsFor: 'recovered'!
privatePhrase
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('private') default: ('').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009da60; bytecode file offset 0x99a3d4"
!TGCompilerTool methodsFor: 'recovered'!
getLinkExtension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getDefaultLinkExtension.
    recoveredValue1 := (self) getAttributeValue: ('resultExt') default: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009dac4; bytecode file offset 0x99a3d4"
!TGCompilerTool methodsFor: 'recovered'!
getObjectExtension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getDefaultObjectExtension.
    recoveredValue1 := (self) getAttributeValue: ('objectExt') default: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009daec; bytecode file offset 0x99a3d4"
!TGCompilerTool methodsFor: 'recovered'!
getLibraryExtension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getDefaultLibraryExtension.
    recoveredValue1 := (self) getAttributeValue: ('libraryExt') default: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20104d58; bytecode file offset 0xa01644"
!TGCompilerTool methodsFor: 'recovered'!
getWorkingDirectoryFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) getTarget.
    recoveredValue2 := (recoveredValue1) getTargetBasePath.
    recoveredValue3 := (recoveredValue2) , ('\redir.com').
    recoveredValue4 := (recoveredValue0) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201077b0; bytecode file offset 0xa0408c"
!TGCompilerTool methodsFor: 'recovered'!
includePaths
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getAttributeValue: ('includePath') default: ('').
    recoveredValue1 := (recoveredValue0) subStrings: ($;).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201077c8; bytecode file offset 0xa0408c"
!TGCompilerTool methodsFor: 'recovered'!
libraryPaths
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getAttributeValue: ('libraryPath') default: ('').
    recoveredValue1 := (recoveredValue0) subStrings: ($;).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20107f78; bytecode file offset 0xa04844"
!TGCompilerTool methodsFor: 'recovered'!
getBasePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) basePathKeyName.
    recoveredValue1 := (self) label.
    recoveredValue2 := ('c:\') , (recoveredValue1).
    recoveredValue3 := (self) getAttributeValue: (recoveredValue0) default: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asPathname.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201ec8e4; bytecode file offset 0xae91a8"
!TGCompilerTool methodsFor: 'recovered'!
twoPhaseLinkingThreshold
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getAttributeValue: ('twoPhaseLinkingThreshold') default: (nil).
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asNumber.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20220b54; bytecode file offset 0xb1d42c"
!TGCompilerTool methodsFor: 'recovered'!
evaluatePreCompilerOutput: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) cSources.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280dbd08Arg1 | 
    | block280dbd08Value0 block280dbd08Value1 |
    block280dbd08Value0 := block280dbd08Arg1.
    block280dbd08Value1 := (block280dbd08Value0) fileName.
    block280dbd08Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'fileout'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) makeKeywords.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := LookupTable.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) evaluateMakeOutput: (recoveredStack1) phase: (recoveredStack2) keywords: (recoveredStack3) modelFiles: (recoveredStack4) fileMap: (recoveredStack5).
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

"ASDBase.ic method 0x20239520; bytecode file offset 0xb35de0"
!TGCompilerTool methodsFor: 'recovered'!
putAttribute: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredArg2.
    ^recoveredBlock8Value0
].
    recoveredValue3 := (recoveredValue0) optionForKey: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) value: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    ^recoveredValue6
! !

