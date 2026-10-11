"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003a28; bytecode file offset 0x90206c"
!TGExperimentalTarget methodsFor: 'recovered'!
executeFileOut: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200070e8; bytecode file offset 0x908be4"
!TGExperimentalTarget methodsFor: 'recovered'!
getTargetIntpolIncludePath
    | recoveredValue0 |
    recoveredValue0 := (self) getTargetIncludePath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008990; bytecode file offset 0x908be4"
!TGExperimentalTarget methodsFor: 'recovered'!
sectionName
    | recoveredValue0 |
    recoveredValue0 := (self) iniSectionName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cd34; bytecode file offset 0x909658"
!TGExperimentalTarget methodsFor: 'recovered'!
includeVatPhaseCompile: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cd64; bytecode file offset 0x909658"
!TGExperimentalTarget methodsFor: 'recovered'!
includeVatPhaseLink: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000f4dc; bytecode file offset 0x90bd90"
!TGExperimentalTarget methodsFor: 'recovered'!
maxPossibleTaskPrio: recoveredArg1 default: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013d34; bytecode file offset 0x912098"
!TGExperimentalTarget methodsFor: 'recovered'!
pseudoAddressClass
    | recoveredValue0 |
    recoveredValue0 := EtasETPseudoAddress.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025538; bytecode file offset 0x92209c"
!TGExperimentalTarget methodsFor: 'recovered'!
categoryDescription
    ^'simulation target'
! !

"ASDBase.ic method 0x2002b164; bytecode file offset 0x934580"
!TGExperimentalTarget methodsFor: 'recovered'!
matchingCompilerTools
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) matchingCompilerTools.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d244; bytecode file offset 0x934580"
!TGExperimentalTarget methodsFor: 'recovered'!
defaultOSType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultOSType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f654; bytecode file offset 0x934580"
!TGExperimentalTarget methodsFor: 'recovered'!
isVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032614; bytecode file offset 0x934580"
!TGExperimentalTarget methodsFor: 'recovered'!
relativeTargetPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) relativeTargetPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034644; bytecode file offset 0x934580"
!TGExperimentalTarget methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) targetLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200348b4; bytecode file offset 0x934580"
!TGExperimentalTarget methodsFor: 'recovered'!
matchingOSTools
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) matchingOSTools.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037e9c; bytecode file offset 0x934768"
!TGExperimentalTarget methodsFor: 'recovered'!
compilerToolTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) compilerToolTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004de74; bytecode file offset 0x94d048"
!TGExperimentalTarget methodsFor: 'recovered'!
iniSectionName
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050700; bytecode file offset 0x94d048"
!TGExperimentalTarget methodsFor: 'recovered'!
placePreLinkedDLL
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059ca4; bytecode file offset 0x9566ac"
!TGExperimentalTarget methodsFor: 'recovered'!
loadCodeSpecific: recoveredArg1 monitorStream: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006162c; bytecode file offset 0x95e838"
!TGExperimentalTarget methodsFor: 'recovered'!
targetIniFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getTargetSpecificPath.
    recoveredValue1 := (recoveredValue0) , ('target.ini').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007588c; bytecode file offset 0x9757c8"
!TGExperimentalTarget methodsFor: 'recovered'!
supportsScoopixGeneration
    ^true
! !

"ASDBase.ic method 0x200761c4; bytecode file offset 0x9757c8"
!TGExperimentalTarget methodsFor: 'recovered'!
supportsFlashing
    ^true
! !

"ASDBase.ic method 0x20078044; bytecode file offset 0x9757c8"
!TGExperimentalTarget methodsFor: 'recovered'!
externalMakeToolRequiresEscapedBlanks
    ^true
! !

"ASDBase.ic method 0x2007abb4; bytecode file offset 0x97c330"
!TGExperimentalTarget methodsFor: 'recovered'!
supportsNVRAM
    ^false
! !

"ASDBase.ic method 0x2007ac24; bytecode file offset 0x97c330"
!TGExperimentalTarget methodsFor: 'recovered'!
checkSpecification
    ^false
! !

"ASDBase.ic method 0x2007e78c; bytecode file offset 0x97c330"
!TGExperimentalTarget methodsFor: 'recovered'!
supportsCacheLocking
    ^false
! !

"ASDBase.ic method 0x20087e00; bytecode file offset 0x984bc0"
!TGExperimentalTarget methodsFor: 'recovered'!
validScoopixSchemaVersions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('SIX12').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008cd9c; bytecode file offset 0x9896b8"
!TGExperimentalTarget methodsFor: 'recovered'!
supportsDeadlineCheck
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) supportsDeadlineCheckKey.
    recoveredValue1 := (self) boolFeatureAt: (recoveredValue0) default: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008cdfc; bytecode file offset 0x9896b8"
!TGExperimentalTarget methodsFor: 'recovered'!
supportsDtOnlyHooks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) supportsDtOnlyHooksKey.
    recoveredValue1 := (self) boolFeatureAt: (recoveredValue0) default: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008f544; bytecode file offset 0x98c228"
!TGExperimentalTarget methodsFor: 'recovered'!
hexFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (self) compilerTool.
    recoveredValue2 := (recoveredValue1) getLinkExtension.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f934; bytecode file offset 0x98c228"
!TGExperimentalTarget methodsFor: 'recovered'!
loadableFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (self) compilerTool.
    recoveredValue2 := (recoveredValue1) getLoadableExtension.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c88ec; bytecode file offset 0x9c51bc"
!TGExperimentalTarget methodsFor: 'recovered'!
placeCAndHeaderSources: recoveredArg1 monitorManager: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) placeCAndHeaderSources: (recoveredValue0) complete: (true) monitorManager: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d0734; bytecode file offset 0x9cd3a0"
!TGExperimentalTarget methodsFor: 'recovered'!
supportsVariableStepSolvers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rnz') == ('EHI_79372').
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) supportsVariableStepSolvers.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d51b8; bytecode file offset 0x9d1a80"
!TGExperimentalTarget methodsFor: 'recovered'!
supportsInterrupt
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) osTool.
    recoveredValue1 := (recoveredValue0) identifier.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) ercosek43Id.
    recoveredValue4 := (recoveredValue1) equals: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) not.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200dcf4c; bytecode file offset 0x9d9818"
!TGExperimentalTarget methodsFor: 'recovered'!
executeCompile: recoveredArg1 intermediate: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) buildManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) executeCompile: (recoveredValue1) intermediate: (recoveredValue2) target: (self).
    ^self
! !

"ASDBase.ic method 0x2012d6d0; bytecode file offset 0xa29fbc"
!TGExperimentalTarget methodsFor: 'recovered'!
updateOSTools
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) osToolsKey.
    recoveredValue2 := (self) featureAt: (recoveredValue1) default: ('').
    recoveredValue3 := (recoveredValue2) subStrings.
    (recoveredValue0) updateOSTools: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012d6f0; bytecode file offset 0xa29fbc"
!TGExperimentalTarget methodsFor: 'recovered'!
updateCompilerTools
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) compilerToolsKey.
    recoveredValue2 := (self) featureAt: (recoveredValue1) default: ('').
    recoveredValue3 := (recoveredValue2) subStrings.
    (recoveredValue0) updateCompilerTools: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a1f5c; bytecode file offset 0xa9e824"
!TGExperimentalTarget methodsFor: 'recovered'!
prepareServerUsage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRegisteringPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'noRegisteringPossible'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionallyPlacePreLinkedDLL.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'noPlacingPossible'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b68b0; bytecode file offset 0xab3170"
!TGExperimentalTarget methodsFor: 'recovered'!
placeOnlySOs: recoveredArg1 monitorManager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := (self) placeCAndHeaderSources: (recoveredBlock4Value0) monitorManager: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) errorHandler.
    recoveredValue3 := (self) handleFatals: (recoveredValue0) errorHandler: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201cc900; bytecode file offset 0xac91c8"
!TGExperimentalTarget methodsFor: 'recovered'!
selectMatchingSystems: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) typeString.
    recoveredBlock5Value2 := (self) targetType.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value4 := recoveredBlock5Arg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) typeString.
    recoveredBlock5Value6 := (recoveredBlock5Value5) = ('ES1120').
    recoveredBlock5Value7 := (recoveredBlock5Value3) | (recoveredBlock5Value6).
    recoveredBlock5Value7
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20203d58; bytecode file offset 0xb00628"
!TGExperimentalTarget methodsFor: 'recovered'!
collectOSLogicKeys: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) matchingOSTools.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (self) variantKey.
    recoveredBlock5Value2 := (recoveredBlock5Value1) , ('.').
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value3) identifier.
    recoveredBlock5Value5 := (recoveredBlock5Value2) , (recoveredBlock5Value4).
    recoveredBlock5Value6 := (recoveredBlock5Value0) add: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2022a248; bytecode file offset 0xb26b10"
!TGExperimentalTarget methodsFor: 'recovered'!
loadCode: recoveredArg1 monitorStream: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := ('Kra') == ('Call_69722').
    (self) prepareServerUsage.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    (self) loadCodeSpecific: (recoveredBlock4Value1) monitorStream: (recoveredBlock4Value2).
    recoveredBlock4Value3 := recoveredArg1.
    ^recoveredBlock4Value3
].
    recoveredValue1 := (self) handleFatals: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2025f968; bytecode file offset 0xb5c230"
!TGExperimentalTarget methodsFor: 'recovered'!
optionallyPlacePreLinkedDLL
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidPreLinkedDll.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) preLinkedDllCopyIsPossible.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) placePreLinkedDLL.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setValidPreLinkedDll.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) initPreLinkedDll.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b401c; bytecode file offset 0xbb08f4"
!TGExperimentalTarget methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('Experimental Target... ').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: ('     label : ').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) targetLabel.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) nextPutAll: (' identifier: ').
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := (self) targetType.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    (recoveredValue0) cr.
    recoveredValue10 := recoveredArg1.
    super printOn: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2031e6dc; bytecode file offset 0xc1afd0"
!TGExperimentalTarget methodsFor: 'recovered'!
getTargetIncludePath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryLegacy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ASDPathOptions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionTargetRootPath.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'legacy\'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) relativeTargetPath.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeAllDoubleBackslashes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'TARGETRELPATH'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) relativeTargetPath.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) asPathname.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := ASDXMLEtcOptions.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPathTargetDirectory.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWithGeneralArguments: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeAllDoubleBackslashes.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032bbc4; bytecode file offset 0xc28498"
!TGExperimentalTarget methodsFor: 'recovered'!
updateFeatures: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
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
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isString.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 56].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) notEmpty.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 56].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := $;.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) allSubStrings: (recoveredBlock5Stack2).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) first.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := $,.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) subStrings: (recoveredBlock5Stack2).
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) size.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack2 := 1.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            (recoveredBlock5Stack1 ~~ recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 51] ifFalse: [recoveredBlock5PC := 48].
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) first.
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local1.
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) featureAt: (recoveredBlock5Stack2) put: (recoveredBlock5Stack3).
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203aecc4; bytecode file offset 0xcab5cc"
!TGExperimentalTarget methodsFor: 'recovered'!
updateStartupLog
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) hostAccess.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) targetIniFile.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) checkForExistency: (recoveredBlock4Stack1).
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 38].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := WinProfile.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) new.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) initialize.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) categoryTarget.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack3 := self.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) targetIniFile.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) getSectionEntries: (recoveredBlock4Stack2) from: (recoveredBlock4Stack3).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            (recoveredBlock4Stack0) updateFeatures: (recoveredBlock4Stack1).
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) startupLog.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) targetType.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack3 := self.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) targetLabel.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack4 := self.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) class.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) addOnLabel.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            (recoveredBlock4Stack1) startDeclIdentifier: (recoveredBlock4Stack2) label: (recoveredBlock4Stack3) addOn: (recoveredBlock4Stack4).
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) productVersion.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            (recoveredBlock4Stack0) versionInfo: (recoveredBlock4Stack1).
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            (recoveredBlock4Stack0) updateCompilerTools.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            (recoveredBlock4Stack0) updateOSTools.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 70.
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) startupLog.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) endDecl.
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) handleFatals: (recoveredValue0).
    ^self
! !

