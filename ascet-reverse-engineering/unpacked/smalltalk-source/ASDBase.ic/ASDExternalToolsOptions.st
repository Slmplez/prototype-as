"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012a74; bytecode file offset 0x912098"
!ASDExternalToolsOptions methodsFor: 'recovered'!
targetClass
    | recoveredValue0 |
    recoveredValue0 := TGTarget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019f64; bytecode file offset 0x92209c"
!ASDExternalToolsOptions methodsFor: 'recovered'!
editorBeginRegionAttribute
    ^'ASCIIEditorBeginRegion'
! !

"ASDBase.ic method 0x2001a078; bytecode file offset 0x92209c"
!ASDExternalToolsOptions methodsFor: 'recovered'!
editorArgumentsAttribute
    ^'ASCIIEditorArguments'
! !

"ASDBase.ic method 0x2001deac; bytecode file offset 0x92209c"
!ASDExternalToolsOptions methodsFor: 'recovered'!
editorEndRegionAttribute
    ^'ASCIIEditorEndRegion'
! !

"ASDBase.ic method 0x200cbbc8; bytecode file offset 0x9c8654"
!ASDExternalToolsOptions methodsFor: 'recovered'!
editorEndRegionValueCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('/* end region %1 */') with: ('#pragma endregion').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cbcd0; bytecode file offset 0x9c8654"
!ASDExternalToolsOptions methodsFor: 'recovered'!
editorEndRegionStringCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('default: /* end region %1 */') with: ('Visual Studio .NET: #pragma endregion').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cbce8; bytecode file offset 0x9c8654"
!ASDExternalToolsOptions methodsFor: 'recovered'!
editorBeginRegionValueCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('/* begin region %1 */') with: ('#pragma region %1').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cbd48; bytecode file offset 0x9c8654"
!ASDExternalToolsOptions methodsFor: 'recovered'!
editorBeginRegionStringCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('default: /* begin region %1 */') with: ('Visual Studio .NET: #pragma region %1').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cdac; bytecode file offset 0xa19708"
!ASDExternalToolsOptions methodsFor: 'recovered'!
optionUseASCIIEditor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('UseASCIIEditor') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014c208; bytecode file offset 0xa48afc"
!ASDExternalToolsOptions methodsFor: 'recovered'!
editorArgumentsValueCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('%1 %2') with: ('-n%2 "%1"') with: ('"%1"(%2)') with: ('"%1/%2"') with: ('"%1" /Command "Edit.GoTo %2"').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014c22c; bytecode file offset 0xa48afc"
!ASDExternalToolsOptions methodsFor: 'recovered'!
editorArgumentsStringCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('default: %1 %2') with: ('Notepad++ -n%2 "%1"') with: ('TextPad: "%1"(%2)') with: ('UltraEdit: "%1/%2"') with: ('Visual Studio .NET: "%1" /Command "Edit.GoTo %2"').
    ^recoveredValue1
! !

"ASDBase.ic method 0x201cb134; bytecode file offset 0xac7a10"
!ASDExternalToolsOptions methodsFor: 'recovered'!
optionASCIIEditorEndRegionMarker
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionUseASCIIEditor.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) editorEndRegionAttribute.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [
    ^''
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cb14c; bytecode file offset 0xac7a10"
!ASDExternalToolsOptions methodsFor: 'recovered'!
optionASCIIEditorBeginRegionMarker
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionUseASCIIEditor.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) editorBeginRegionAttribute.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [
    ^''
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eb528; bytecode file offset 0xae7e1c"
!ASDExternalToolsOptions methodsFor: 'recovered'!
getDefaultPath
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
            recoveredStack1 := (recoveredStack1) getAppProgramPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getcwd.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020c68c; bytecode file offset 0xb08f88"
!ASDExternalToolsOptions methodsFor: 'recovered'!
optionAscetDiffVersion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da0e8Arg1 | 
    | block280da0e8Value0 block280da0e8Value1 block280da0e8Value2 |
    block280da0e8Value0 := block280da0e8Arg1.
    block280da0e8Value1 := (block280da0e8Value0) attributeName.
    block280da0e8Value2 := (block280da0e8Value1) = ('AscetDiffVersion').
    block280da0e8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^''
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226190; bytecode file offset 0xb22a68"
!ASDExternalToolsOptions methodsFor: 'recovered'!
optionASCIIEditorPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc3ecArg1 | 
    | block280dc3ecValue0 block280dc3ecValue1 block280dc3ecValue2 |
    block280dc3ecValue0 := block280dc3ecArg1.
    block280dc3ecValue1 := (block280dc3ecValue0) attributeName.
    block280dc3ecValue2 := (block280dc3ecValue1) = ('ASCIIEditor').
    block280dc3ecValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^''
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022671c; bytecode file offset 0xb22fec"
!ASDExternalToolsOptions methodsFor: 'recovered'!
optionASCIIEditorArguments
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) editorArgumentsAttribute.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^''
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    recoveredValue5 := (recoveredValue4) value.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202375c8; bytecode file offset 0xb33e98"
!ASDExternalToolsOptions methodsFor: 'recovered'!
externalToolPaths
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) targetClass.
    recoveredValue3 := (recoveredValue2) availableExternalToolsKeys.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := (self) optionExternalToolPathForKey: (recoveredBlock12Value2).
    recoveredBlock12Value4 := (recoveredBlock12Value0) at: (recoveredBlock12Value1) put: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2028fb74; bytecode file offset 0xb8c44c"
!ASDExternalToolsOptions methodsFor: 'recovered'!
optionExternalToolPathForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := ('ExternalToolPath') , (recoveredBlock5Value2).
    recoveredBlock5Value4 := (recoveredBlock5Value1) = (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    recoveredValue2 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := (self) targetClass.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) defaultForKey: (recoveredBlock22Value1).
    ^recoveredBlock22Value2
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    recoveredValue5 := (recoveredValue4) asFilename.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202a09b4; bytecode file offset 0xb9d290"
!ASDExternalToolsOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super initialize.
    recoveredValue0 := (self) targetClass.
    recoveredValue1 := (recoveredValue0) availableExternalToolsKeys.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := (self) options.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (self) initializeExternalToolPathForKey: (recoveredBlock11Value1).
    recoveredBlock11Value3 := (recoveredBlock11Value0) add: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) initializeUseASCIIEditor.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := (self) initializeAscetDiffVersion.
    (recoveredValue3) add: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20349968; bytecode file offset 0xc46264"
!ASDExternalToolsOptions methodsFor: 'recovered'!
initializeAscetDiffVersion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'AscetDiffVersion'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'ASCET-DIFF Version'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Specify which version of ASCET-DIFF shall be used when comparing components.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'ASCET-DIFF Version to be used'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := '<undefined>'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := '<undefined>'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := 'Integration\ASCET-DIFF'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack6 := (recoveredStack6) getAscetDiffVersions.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack5) valueCollection: (recoveredStack6).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) getAscetDiffVersions.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20361714; bytecode file offset 0xc5e078"
!ASDExternalToolsOptions methodsFor: 'recovered'!
initializeASCIIEditorEndRegion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) editorEndRegionAttribute.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasExtendableEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'End Region Marker'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'This is the marker for the ASCII editor to identify the end of a region. It can take one argument of the form %1 which is automatically replaced with the name of the region.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Mark end of region for the ASCII Editor'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) editorEndRegionValueCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack8 := (recoveredStack8) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack9 := (recoveredStack9) editorEndRegionValueCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack9 := (recoveredStack9) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack10 := 'External Tools\ASCII Editor'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack11 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack12 := [
    | block280f0780Value0 block280f0780Value1 block280f0780Value2 |
    block280f0780Value0 := ASDExternalToolsOptions.
    block280f0780Value1 := (block280f0780Value0) instance.
    block280f0780Value2 := (block280f0780Value1) optionUseASCIIEditor.
    block280f0780Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack6 := (recoveredStack6) editorEndRegionValueCollection.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack5) valueCollection: (recoveredStack6).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := (recoveredStack5) editorEndRegionStringCollection.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20361770; bytecode file offset 0xc5e078"
!ASDExternalToolsOptions methodsFor: 'recovered'!
initializeASCIIEditorBeginRegion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) editorBeginRegionAttribute.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasExtendableEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Begin Region Marker'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'This is the marker for the ASCII editor to identify the beginning of a region. It can take one argument of the form %1 which is automatically replaced with the name of the region.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Mark begin of region for the ASCII Editor'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) editorBeginRegionValueCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack8 := (recoveredStack8) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack9 := (recoveredStack9) editorBeginRegionValueCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack9 := (recoveredStack9) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack10 := 'External Tools\ASCII Editor'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack11 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack12 := [
    | block280f07a4Value0 block280f07a4Value1 block280f07a4Value2 |
    block280f07a4Value0 := ASDExternalToolsOptions.
    block280f07a4Value1 := (block280f07a4Value0) instance.
    block280f07a4Value2 := (block280f07a4Value1) optionUseASCIIEditor.
    block280f07a4Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack6 := (recoveredStack6) editorBeginRegionValueCollection.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack5) valueCollection: (recoveredStack6).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := (recoveredStack5) editorBeginRegionStringCollection.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204493e0; bytecode file offset 0xd45d0c"
!ASDExternalToolsOptions methodsFor: 'recovered'!
initializeASCIIEditorArguments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) editorArgumentsAttribute.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasExtendableEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Command Line Arguments'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Command line arguments for the ASCII Editor, where the first argument is the filename and the second argument the line number (if possible).<br/>
				The line number will be used with the "View generated code" menu item, so that the editor can immediately scroll to the code of the current diagram and skip all the file header.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Command line arguments for the ASCII Editor'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := '%1 %2'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := '%1 %2'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := 'External Tools\ASCII Editor'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack12 := [
    | block280fede8Value0 block280fede8Value1 block280fede8Value2 |
    block280fede8Value0 := ASDExternalToolsOptions.
    block280fede8Value1 := (block280fede8Value0) instance.
    block280fede8Value2 := (block280fede8Value1) optionUseASCIIEditor.
    block280fede8Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack14 := [:block280fee0cArg1 | 
    | block280fee0cStack0 block280fee0cStack1 block280fee0cStack2 block280fee0cStack3 block280fee0cPC block280fee0cStep block280fee0cDone block280fee0cResult |
    block280fee0cStack0 := self.
    block280fee0cPC := 4.
    block280fee0cDone := false.
    [block280fee0cDone not] whileTrue: [
        block280fee0cStep := block280fee0cPC.
        block280fee0cStep = 4 ifTrue: [
            block280fee0cStack1 := 'Kli'.
            block280fee0cPC := 6.
        ].
        block280fee0cStep = 6 ifTrue: [
            block280fee0cStack2 := 'Call_71059'.
            block280fee0cPC := 8.
        ].
        block280fee0cStep = 8 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) == (block280fee0cStack2).
            block280fee0cPC := 9.
        ].
        block280fee0cStep = 9 ifTrue: [
            block280fee0cPC := 10.
        ].
        block280fee0cStep = 10 ifTrue: [
            block280fee0cStack1 := block280fee0cArg1.
            block280fee0cPC := 11.
        ].
        block280fee0cStep = 11 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) optionClass.
            block280fee0cPC := 13.
        ].
        block280fee0cStep = 13 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) value.
            block280fee0cPC := 15.
        ].
        block280fee0cStep = 15 ifTrue: [
            block280fee0cStack2 := '%1'.
            block280fee0cPC := 17.
        ].
        block280fee0cStep = 17 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) includesSubstring: (block280fee0cStack2).
            block280fee0cPC := 19.
        ].
        block280fee0cStep = 19 ifTrue: [
            (block280fee0cStack1) ifTrue: [block280fee0cPC := 22] ifFalse: [block280fee0cPC := 44].
        ].
        block280fee0cStep = 22 ifTrue: [
            block280fee0cStack1 := block280fee0cArg1.
            block280fee0cPC := 23.
        ].
        block280fee0cStep = 23 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) optionClass.
            block280fee0cPC := 25.
        ].
        block280fee0cStep = 25 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) value.
            block280fee0cPC := 27.
        ].
        block280fee0cStep = 27 ifTrue: [
            block280fee0cStack2 := '%2'.
            block280fee0cPC := 29.
        ].
        block280fee0cStep = 29 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) includesSubstring: (block280fee0cStack2).
            block280fee0cPC := 31.
        ].
        block280fee0cStep = 31 ifTrue: [
            (block280fee0cStack1) ifTrue: [block280fee0cPC := 34] ifFalse: [block280fee0cPC := 44].
        ].
        block280fee0cStep = 34 ifTrue: [
            block280fee0cStack1 := block280fee0cArg1.
            block280fee0cPC := 35.
        ].
        block280fee0cStep = 35 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) optionClass.
            block280fee0cPC := 37.
        ].
        block280fee0cStep = 37 ifTrue: [
            block280fee0cStack2 := false.
            block280fee0cPC := 38.
        ].
        block280fee0cStep = 38 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) invalid: (block280fee0cStack2).
            block280fee0cPC := 40.
        ].
        block280fee0cStep = 40 ifTrue: [
            block280fee0cPC := 50.
        ].
        block280fee0cStep = 44 ifTrue: [
            block280fee0cStack1 := block280fee0cArg1.
            block280fee0cPC := 45.
        ].
        block280fee0cStep = 45 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) optionClass.
            block280fee0cPC := 47.
        ].
        block280fee0cStep = 47 ifTrue: [
            block280fee0cStack2 := true.
            block280fee0cPC := 48.
        ].
        block280fee0cStep = 48 ifTrue: [
            block280fee0cStack1 := (block280fee0cStack1) invalid: (block280fee0cStack2).
            block280fee0cPC := 50.
        ].
        block280fee0cStep = 50 ifTrue: [
            block280fee0cResult := block280fee0cStack1.
            block280fee0cDone := true.
        ].
    ].
    block280fee0cResult
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack6 := (recoveredStack6) editorArgumentsValueCollection.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack5) valueCollection: (recoveredStack6).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack5 := (recoveredStack5) editorArgumentsStringCollection.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20498910; bytecode file offset 0xd95240"
!ASDExternalToolsOptions methodsFor: 'recovered'!
initializeUseASCIIEditor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings\ExternalTools'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'UseASCIIEditor'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Use External ASCII Editor'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Some editors and dialogs provide to view the content in an external editor.\With this option you can specify if the external editor or the build in text editor shall be used.\'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Hint: C-Code/ESDL - external editor is not affected with this option!! The standard editor assigned to corresponding file remains unchainged!!'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack7 := (recoveredStack7) withCrs.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack7 := 'Use external ASCII Editor'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack10 := 'External Tools\ASCII Editor'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack14 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) allOptions.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack1 := [:block28103ec4Arg1 | 
    | block28103ec4Value0 block28103ec4Value1 block28103ec4Value2 |
    block28103ec4Value0 := block28103ec4Arg1.
    block28103ec4Value1 := (block28103ec4Value0) attributeName.
    block28103ec4Value2 := (block28103ec4Value1) = ('ASCIIEditor').
    block28103ec4Value2
].
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            recoveredBlock46PC := 67.
        ].
        recoveredBlock46Step = 67 ifTrue: [
            recoveredBlock46Stack2 := [
    ^nil
].
            recoveredBlock46PC := 76.
        ].
        recoveredBlock46Step = 76 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) detect: (recoveredBlock46Stack1) ifNone: (recoveredBlock46Stack2).
            recoveredBlock46PC := 78.
        ].
        recoveredBlock46Step = 78 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) optionClass.
            recoveredBlock46PC := 80.
        ].
        recoveredBlock46Step = 80 ifTrue: [
            recoveredBlock46Stack1 := true.
            recoveredBlock46PC := 81.
        ].
        recoveredBlock46Step = 81 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) needsUpdate: (recoveredBlock46Stack1).
            recoveredBlock46PC := 83.
        ].
        recoveredBlock46Step = 83 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack0.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := (recoveredStack4) changeable: (recoveredStack5).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeASCIIEditorPath.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeASCIIEditorArguments.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeASCIIEditorBeginRegion.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeASCIIEditorEndRegion.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204b6ecc; bytecode file offset 0xdb3828"
!ASDExternalToolsOptions methodsFor: 'recovered'!
initializeASCIIEditorPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings\ExternalTools'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ASCIIEditor'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasFileOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'ASCII Editor'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Some ASCET editors provide the ability to view the content in an external program.\With this option you can specify the editor that shall be used for ASCII content.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := (recoveredStack6) withCrs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack7 := 'Editor to be used for editing ASCII Text'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := 'External Tools\ASCII Editor'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    | block28105d48Value0 block28105d48Value1 block28105d48Value2 |
    block28105d48Value0 := ASDExternalToolsOptions.
    block28105d48Value1 := (block28105d48Value0) instance.
    block28105d48Value2 := (block28105d48Value1) optionUseASCIIEditor.
    block28105d48Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack14 := [:block28105d6cArg1 | 
    | block28105d6cStack0 block28105d6cStack1 block28105d6cStack2 block28105d6cStack3 block28105d6cPC block28105d6cStep block28105d6cDone block28105d6cResult |
    block28105d6cStack0 := self.
    block28105d6cPC := 4.
    block28105d6cDone := false.
    [block28105d6cDone not] whileTrue: [
        block28105d6cStep := block28105d6cPC.
        block28105d6cStep = 4 ifTrue: [
            block28105d6cStack1 := 'Kli'.
            block28105d6cPC := 6.
        ].
        block28105d6cStep = 6 ifTrue: [
            block28105d6cStack2 := 'Call_71117'.
            block28105d6cPC := 8.
        ].
        block28105d6cStep = 8 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) == (block28105d6cStack2).
            block28105d6cPC := 9.
        ].
        block28105d6cStep = 9 ifTrue: [
            block28105d6cPC := 10.
        ].
        block28105d6cStep = 10 ifTrue: [
            block28105d6cStack1 := block28105d6cArg1.
            block28105d6cPC := 11.
        ].
        block28105d6cStep = 11 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) value.
            block28105d6cPC := 13.
        ].
        block28105d6cStep = 13 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) fileNameOnly.
            block28105d6cPC := 15.
        ].
        block28105d6cStep = 15 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) isEmpty.
            block28105d6cPC := 17.
        ].
        block28105d6cStep = 17 ifTrue: [
            (block28105d6cStack1) ifTrue: [block28105d6cPC := 34] ifFalse: [block28105d6cPC := 20].
        ].
        block28105d6cStep = 20 ifTrue: [
            block28105d6cStack1 := block28105d6cArg1.
            block28105d6cPC := 21.
        ].
        block28105d6cStep = 21 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) value.
            block28105d6cPC := 23.
        ].
        block28105d6cStep = 23 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) fileExtension.
            block28105d6cPC := 25.
        ].
        block28105d6cStep = 25 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) asLowercase.
            block28105d6cPC := 27.
        ].
        block28105d6cStep = 27 ifTrue: [
            block28105d6cStack2 := 'exe'.
            block28105d6cPC := 29.
        ].
        block28105d6cStep = 29 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) ~= (block28105d6cStack2).
            block28105d6cPC := 30.
        ].
        block28105d6cStep = 30 ifTrue: [
            (block28105d6cStack1) ifTrue: [block28105d6cPC := 34] ifFalse: [block28105d6cPC := 44].
        ].
        block28105d6cStep = 34 ifTrue: [
            block28105d6cStack1 := block28105d6cArg1.
            block28105d6cPC := 35.
        ].
        block28105d6cStep = 35 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) optionClass.
            block28105d6cPC := 37.
        ].
        block28105d6cStep = 37 ifTrue: [
            block28105d6cStack2 := true.
            block28105d6cPC := 38.
        ].
        block28105d6cStep = 38 ifTrue: [
            (block28105d6cStack1) invalid: (block28105d6cStack2).
            block28105d6cPC := 40.
        ].
        block28105d6cStep = 40 ifTrue: [
            block28105d6cPC := 50.
        ].
        block28105d6cStep = 44 ifTrue: [
            block28105d6cStack1 := block28105d6cArg1.
            block28105d6cPC := 45.
        ].
        block28105d6cStep = 45 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) optionClass.
            block28105d6cPC := 47.
        ].
        block28105d6cStep = 47 ifTrue: [
            block28105d6cStack2 := false.
            block28105d6cPC := 48.
        ].
        block28105d6cStep = 48 ifTrue: [
            (block28105d6cStack1) invalid: (block28105d6cStack2).
            block28105d6cPC := 50.
        ].
        block28105d6cStep = 50 ifTrue: [
            block28105d6cStack1 := block28105d6cArg1.
            block28105d6cPC := 51.
        ].
        block28105d6cStep = 51 ifTrue: [
            block28105d6cStack2 := block28105d6cArg1.
            block28105d6cPC := 52.
        ].
        block28105d6cStep = 52 ifTrue: [
            block28105d6cStack2 := (block28105d6cStack2) value.
            block28105d6cPC := 54.
        ].
        block28105d6cStep = 54 ifTrue: [
            block28105d6cStack1 := (block28105d6cStack1) default: (block28105d6cStack2).
            block28105d6cPC := 56.
        ].
        block28105d6cStep = 56 ifTrue: [
            block28105d6cResult := block28105d6cStack1.
            block28105d6cDone := true.
        ].
    ].
    block28105d6cResult
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack6 := Dictionary.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack6 := (recoveredStack6) new.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack8 := '*.exe'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack9 := 'Executables'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack7) at: (recoveredStack8) put: (recoveredStack9).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack8 := '*.*'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack9 := 'All Files'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack7) at: (recoveredStack8) put: (recoveredStack9).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack5) filterDictionary: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack6 := 'Select ASCII Editor'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack5) dialogTitle: (recoveredStack6).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := (recoveredStack4) requiredFile: (recoveredStack5).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204ebd5c; bytecode file offset 0xde8660"
!ASDExternalToolsOptions methodsFor: 'recovered'!
getAscetDiffVersions
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
            recoveredStack2 := '<undefined>'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := HkeyLocalMachineHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := HkeyLocalMachineHandle.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Software\ETAS\ASCET-DIFF'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) regEnumKey.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 |
    recoveredBlock55Value0 := recoveredLocal3.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := (recoveredBlock55Value0) regOpenKey: (recoveredBlock55Value1).
    recoveredBlock55Value3 := [:recoveredBlock55Block68Arg1 | 
    | recoveredBlock55Block68Local1 recoveredBlock55Block68Local2 recoveredBlock55Block68Stack0 recoveredBlock55Block68Stack1 recoveredBlock55Block68Stack2 recoveredBlock55Block68Stack3 recoveredBlock55Block68Stack4 recoveredBlock55Block68PC recoveredBlock55Block68Step recoveredBlock55Block68Done recoveredBlock55Block68Result |
    recoveredBlock55Block68Stack0 := nil.
    recoveredBlock55Block68PC := 74.
    recoveredBlock55Block68Done := false.
    [recoveredBlock55Block68Done not] whileTrue: [
        recoveredBlock55Block68Step := recoveredBlock55Block68PC.
        recoveredBlock55Block68Step = 74 ifTrue: [
            recoveredBlock55Block68Stack1 := nil.
            recoveredBlock55Block68PC := 75.
        ].
        recoveredBlock55Block68Step = 75 ifTrue: [
            recoveredBlock55Block68Stack2 := recoveredBlock55Block68Arg1.
            recoveredBlock55Block68PC := 76.
        ].
        recoveredBlock55Block68Step = 76 ifTrue: [
            recoveredBlock55Block68Stack2 := (recoveredBlock55Block68Stack2) isError.
            recoveredBlock55Block68PC := 78.
        ].
        recoveredBlock55Block68Step = 78 ifTrue: [
            (recoveredBlock55Block68Stack2) ifTrue: [recoveredBlock55Block68PC := 149] ifFalse: [recoveredBlock55Block68PC := 82].
        ].
        recoveredBlock55Block68Step = 82 ifTrue: [
            recoveredBlock55Block68PC := 83.
        ].
        recoveredBlock55Block68Step = 83 ifTrue: [
            recoveredBlock55Block68Stack1 := 'Kli'.
            recoveredBlock55Block68PC := 85.
        ].
        recoveredBlock55Block68Step = 85 ifTrue: [
            recoveredBlock55Block68Stack2 := 'Call_386577'.
            recoveredBlock55Block68PC := 87.
        ].
        recoveredBlock55Block68Step = 87 ifTrue: [
            recoveredBlock55Block68Stack1 := (recoveredBlock55Block68Stack1) == (recoveredBlock55Block68Stack2).
            recoveredBlock55Block68PC := 88.
        ].
        recoveredBlock55Block68Step = 88 ifTrue: [
            recoveredBlock55Block68PC := 89.
        ].
        recoveredBlock55Block68Step = 89 ifTrue: [
            recoveredBlock55Block68Stack1 := recoveredBlock55Block68Arg1.
            recoveredBlock55Block68PC := 90.
        ].
        recoveredBlock55Block68Step = 90 ifTrue: [
            recoveredBlock55Block68Stack2 := 'Path'.
            recoveredBlock55Block68PC := 92.
        ].
        recoveredBlock55Block68Step = 92 ifTrue: [
            recoveredBlock55Block68Stack1 := (recoveredBlock55Block68Stack1) regQueryValueEx: (recoveredBlock55Block68Stack2).
            recoveredBlock55Block68PC := 94.
        ].
        recoveredBlock55Block68Step = 94 ifTrue: [
            recoveredBlock55Block68Stack2 := recoveredBlock55Block68Stack1.
            recoveredBlock55Block68PC := 95.
        ].
        recoveredBlock55Block68Step = 95 ifTrue: [
            recoveredBlock55Block68Local1 := recoveredBlock55Block68Stack2.
            recoveredBlock55Block68PC := 96.
        ].
        recoveredBlock55Block68Step = 96 ifTrue: [
            (recoveredBlock55Block68Stack1 == nil) ifTrue: [recoveredBlock55Block68PC := 142] ifFalse: [recoveredBlock55Block68PC := 100].
        ].
        recoveredBlock55Block68Step = 100 ifTrue: [
            recoveredBlock55Block68Stack1 := recoveredBlock55Block68Local1.
            recoveredBlock55Block68PC := 101.
        ].
        recoveredBlock55Block68Step = 101 ifTrue: [
            recoveredBlock55Block68Stack1 := (recoveredBlock55Block68Stack1) notEmpty.
            recoveredBlock55Block68PC := 103.
        ].
        recoveredBlock55Block68Step = 103 ifTrue: [
            (recoveredBlock55Block68Stack1) ifTrue: [recoveredBlock55Block68PC := 106] ifFalse: [recoveredBlock55Block68PC := 142].
        ].
        recoveredBlock55Block68Step = 106 ifTrue: [
            recoveredBlock55Block68Stack1 := recoveredBlock55Block68Arg1.
            recoveredBlock55Block68PC := 107.
        ].
        recoveredBlock55Block68Step = 107 ifTrue: [
            recoveredBlock55Block68Stack2 := 'ProductVersion'.
            recoveredBlock55Block68PC := 109.
        ].
        recoveredBlock55Block68Step = 109 ifTrue: [
            recoveredBlock55Block68Stack1 := (recoveredBlock55Block68Stack1) regQueryValueEx: (recoveredBlock55Block68Stack2).
            recoveredBlock55Block68PC := 111.
        ].
        recoveredBlock55Block68Step = 111 ifTrue: [
            recoveredBlock55Block68Stack2 := recoveredBlock55Block68Stack1.
            recoveredBlock55Block68PC := 112.
        ].
        recoveredBlock55Block68Step = 112 ifTrue: [
            recoveredBlock55Block68Local2 := recoveredBlock55Block68Stack2.
            recoveredBlock55Block68PC := 113.
        ].
        recoveredBlock55Block68Step = 113 ifTrue: [
            (recoveredBlock55Block68Stack1 ~~ nil) ifTrue: [recoveredBlock55Block68PC := 136] ifFalse: [recoveredBlock55Block68PC := 116].
        ].
        recoveredBlock55Block68Step = 116 ifTrue: [
            recoveredBlock55Block68Stack1 := recoveredBlock55Block68Arg1.
            recoveredBlock55Block68PC := 117.
        ].
        recoveredBlock55Block68Step = 117 ifTrue: [
            recoveredBlock55Block68Stack2 := 'Version'.
            recoveredBlock55Block68PC := 119.
        ].
        recoveredBlock55Block68Step = 119 ifTrue: [
            recoveredBlock55Block68Stack1 := (recoveredBlock55Block68Stack1) regQueryValueEx: (recoveredBlock55Block68Stack2).
            recoveredBlock55Block68PC := 121.
        ].
        recoveredBlock55Block68Step = 121 ifTrue: [
            recoveredBlock55Block68Stack2 := recoveredBlock55Block68Stack1.
            recoveredBlock55Block68PC := 122.
        ].
        recoveredBlock55Block68Step = 122 ifTrue: [
            recoveredBlock55Block68Local2 := recoveredBlock55Block68Stack2.
            recoveredBlock55Block68PC := 123.
        ].
        recoveredBlock55Block68Step = 123 ifTrue: [
            (recoveredBlock55Block68Stack1 == nil) ifTrue: [recoveredBlock55Block68PC := 132] ifFalse: [recoveredBlock55Block68PC := 126].
        ].
        recoveredBlock55Block68Step = 126 ifTrue: [
            recoveredBlock55Block68Stack1 := recoveredLocal1.
            recoveredBlock55Block68PC := 129.
        ].
        recoveredBlock55Block68Step = 129 ifTrue: [
            recoveredBlock55Block68Stack2 := recoveredBlock55Block68Local2.
            recoveredBlock55Block68PC := 130.
        ].
        recoveredBlock55Block68Step = 130 ifTrue: [
            (recoveredBlock55Block68Stack1) add: (recoveredBlock55Block68Stack2).
            recoveredBlock55Block68PC := 132.
        ].
        recoveredBlock55Block68Step = 132 ifTrue: [
            recoveredBlock55Block68PC := 142.
        ].
        recoveredBlock55Block68Step = 136 ifTrue: [
            recoveredBlock55Block68Stack1 := recoveredLocal1.
            recoveredBlock55Block68PC := 139.
        ].
        recoveredBlock55Block68Step = 139 ifTrue: [
            recoveredBlock55Block68Stack2 := recoveredBlock55Block68Local2.
            recoveredBlock55Block68PC := 140.
        ].
        recoveredBlock55Block68Step = 140 ifTrue: [
            (recoveredBlock55Block68Stack1) add: (recoveredBlock55Block68Stack2).
            recoveredBlock55Block68PC := 142.
        ].
        recoveredBlock55Block68Step = 142 ifTrue: [
            recoveredBlock55Block68Stack1 := recoveredBlock55Block68Arg1.
            recoveredBlock55Block68PC := 143.
        ].
        recoveredBlock55Block68Step = 143 ifTrue: [
            recoveredBlock55Block68Stack1 := (recoveredBlock55Block68Stack1) regCloseKey.
            recoveredBlock55Block68PC := 145.
        ].
        recoveredBlock55Block68Step = 145 ifTrue: [
            recoveredBlock55Block68Stack2 := nil.
            recoveredBlock55Block68PC := 146.
        ].
        recoveredBlock55Block68Step = 146 ifTrue: [
            recoveredBlock55Block68Stack3 := recoveredBlock55Block68Stack2.
            recoveredBlock55Block68PC := 147.
        ].
        recoveredBlock55Block68Step = 147 ifTrue: [
            recoveredBlock55Block68Local2 := recoveredBlock55Block68Stack3.
            recoveredBlock55Block68PC := 148.
        ].
        recoveredBlock55Block68Step = 148 ifTrue: [
            recoveredBlock55Block68Local1 := recoveredBlock55Block68Stack2.
            recoveredBlock55Block68PC := 149.
        ].
        recoveredBlock55Block68Step = 149 ifTrue: [
            recoveredBlock55Block68Result := recoveredBlock55Block68Stack1.
            recoveredBlock55Block68Done := true.
        ].
    ].
    recoveredBlock55Block68Result
].
    recoveredBlock55Value4 := (recoveredBlock55Value2) ifNotNil: (recoveredBlock55Value3).
    recoveredBlock55Value4
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) regCloseKey.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2051336c; bytecode file offset 0xe0fca4"
!ASDExternalToolsOptions methodsFor: 'recovered'!
initializeExternalToolPathForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings\ExternalTools'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ExternalToolPath'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := EtasFileOption.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := (recoveredStack6) targetClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := (recoveredStack6) labelForKey: (recoveredStack7).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := (recoveredStack7) targetClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := (recoveredStack7) descriptionForKey: (recoveredStack8).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack8 := (recoveredStack8) targetClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack9 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack8 := (recoveredStack8) toolTipForKey: (recoveredStack9).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack9 := (recoveredStack9) externalToolPaths.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack11 := [
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 |
    recoveredBlock49Value0 := (self) targetClass.
    recoveredBlock49Value1 := recoveredArg1.
    recoveredBlock49Value2 := (recoveredBlock49Value0) defaultForKey: (recoveredBlock49Value1).
    recoveredBlock49Value2
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack9 := (recoveredStack9) at: (recoveredStack10) ifAbsent: (recoveredStack11).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack10 := (recoveredStack10) externalToolPaths.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack11 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack12 := [
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := (self) targetClass.
    recoveredBlock72Value1 := recoveredArg1.
    recoveredBlock72Value2 := (recoveredBlock72Value0) defaultForKey: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack10 := (recoveredStack10) at: (recoveredStack11) ifAbsent: (recoveredStack12).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack11 := (recoveredStack11) targetClass.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack12 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack11 := (recoveredStack11) groupForKey: (recoveredStack12).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack14 := 'STATION'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack15 := [:block2810b604Arg1 | 
    | block2810b604Value0 block2810b604Value1 block2810b604Value2 block2810b604Value3 |
    block2810b604Value0 := block2810b604Arg1.
    block2810b604Value1 := block2810b604Arg1.
    block2810b604Value2 := (block2810b604Value1) value.
    block2810b604Value3 := (block2810b604Value0) default: (block2810b604Value2).
    block2810b604Value3
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack7 := Dictionary.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack7 := (recoveredStack7) new.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack8 := recoveredStack7.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack9 := '*.exe'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack10 := 'Executables'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack8) at: (recoveredStack9) put: (recoveredStack10).
            recoveredStack8 := recoveredStack7.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack9 := '*.*'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack10 := 'All Files'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack8) at: (recoveredStack9) put: (recoveredStack10).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack6) filterDictionary: (recoveredStack7).
            recoveredStack6 := recoveredStack5.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack7 := 'Select External Tool'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack6) dialogTitle: (recoveredStack7).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack6 := (recoveredStack6) externalToolPaths.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack8 := [
    | recoveredBlock162Value0 recoveredBlock162Value1 recoveredBlock162Value2 |
    recoveredBlock162Value0 := (self) targetClass.
    recoveredBlock162Value1 := recoveredArg1.
    recoveredBlock162Value2 := (recoveredBlock162Value0) defaultForKey: (recoveredBlock162Value1).
    recoveredBlock162Value2
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7) ifAbsent: (recoveredStack8).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack5 := (recoveredStack5) searchPath: (recoveredStack6).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack6 := (recoveredStack6) externalToolsOptionFile.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

