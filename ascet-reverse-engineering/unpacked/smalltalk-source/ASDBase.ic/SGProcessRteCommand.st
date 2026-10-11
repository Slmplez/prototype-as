"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002132c; bytecode file offset 0x92209c"
!SGProcessRteCommand methodsFor: 'recovered'!
label
    ^'Process RTE code'
! !

"ASDBase.ic method 0x20025700; bytecode file offset 0x92209c"
!SGProcessRteCommand methodsFor: 'recovered'!
makeRuleName
    ^'ASDprocessRTE'
! !

"ASDBase.ic method 0x200262e4; bytecode file offset 0x923928"
!SGProcessRteCommand methodsFor: 'recovered'!
makeFilename
    ^'processRTE.mk'
! !

"ASDBase.ic method 0x20034e84; bytecode file offset 0x934580"
!SGProcessRteCommand methodsFor: 'recovered'!
sources
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportCommand.
    recoveredValue1 := (recoveredValue0) sources.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fbb0; bytecode file offset 0x93c75c"
!SGProcessRteCommand methodsFor: 'recovered'!
createExportCommand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGExportAutosarXmlCommand.
    recoveredValue1 := (self) createBasicCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d6e4; bytecode file offset 0x96a390"
!SGProcessRteCommand methodsFor: 'recovered'!
fileBasedOperation
    | recoveredValue0 |
    recoveredValue0 := fileBasedOperation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20085b2c; bytecode file offset 0x982408"
!SGProcessRteCommand methodsFor: 'recovered'!
prepareProcessing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) codeManager.
    (recoveredValue0) updateTargetMakefileInfos.
    ^self
! !

"ASDBase.ic method 0x200e2284; bytecode file offset 0x9dec60"
!SGProcessRteCommand methodsFor: 'recovered'!
checkRestrictions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkOSTool.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkExisitingMakeFile.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015f0dc; bytecode file offset 0xa5b9a4"
!SGProcessRteCommand methodsFor: 'recovered'!
executeBasicCommand
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
            recoveredStack1 := (recoveredStack1) exportCommand.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) execute.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) status: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) continue.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportCommand.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) processSources: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20177450; bytecode file offset 0xa73d14"
!SGProcessRteCommand methodsFor: 'recovered'!
selectForAPICommandCompile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsARProcessRteInGenerate.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresRTEInputFiles.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) addPreCommandBasicCommand: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d25f4; bytecode file offset 0xaceec4"
!SGProcessRteCommand methodsFor: 'recovered'!
generateMakefile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) createMakefileStream.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) target.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) destinationPath.
    (recoveredValue1) writeGeneralPathDefinitions: (recoveredValue2) cgen: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (self) generateMakefile: (recoveredValue4) on: (recoveredValue5).
    recoveredValue6 := (self) target.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) writeGeneralMakefileDefinitions: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) contents.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2021fa84; bytecode file offset 0xb1c35c"
!SGProcessRteCommand methodsFor: 'recovered'!
checkExisitingMakeFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTargetSpecificPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'FileMissing'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'compilation of AUTOSAR components requires RTE to be run'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d02c8; bytecode file offset 0xbccbb8"
!SGProcessRteCommand methodsFor: 'recovered'!
getProcessingResults: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) compilerTool.
    recoveredValue1 := (self) fileBasedOperation.
    recoveredValue2 := (self) makeRuleName.
    recoveredValue3 := (self) makeKeywords.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    (recoveredValue0) evaluateMakeOutput: (recoveredValue1) phase: (recoveredValue2) keywords: (recoveredValue3) modelFiles: (#()) fileMap: (recoveredValue5).
    recoveredValue6 := (self) hostAccess.
    recoveredValue7 := (recoveredValue6) osConfigErrFilename.
    recoveredValue8 := (self) fileBasedOperation.
    (self) checkErrorFile: (recoveredValue7) operation: (recoveredValue8).
    recoveredValue9 := (self) codeManager.
    recoveredValue10 := (self) fileBasedOperation.
    (recoveredValue9) addErrorsAndWarningsFrom: (recoveredValue10) allSources: (nil) createUnit: (false).
    recoveredValue11 := (self) fileBasedOperation.
    recoveredValue12 := (recoveredValue11) noErrors.
    (self) status: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x203fe4f4; bytecode file offset 0xcfae00"
!SGProcessRteCommand methodsFor: 'recovered'!
executeMakeFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := ('Rl') == ('Rl_ToDo').
    recoveredValue1 := TGPostGenerateOperation.
    recoveredValue2 := (self) label.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) sources.
    recoveredValue5 := (recoveredValue1) createInfo: (recoveredValue2) cSources: (recoveredValue4).
    fileBasedOperation := recoveredValue5.
    recoveredValue6 := fileBasedOperation.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) useCGen: (false).
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) linkOnly: (false).
    recoveredValue9 := (self) destinationPath.
    (recoveredValue6) destinationPath: (recoveredValue9).
    recoveredValue10 := (self) hostAccess.
    recoveredValue11 := (self) destinationPath.
    recoveredValue12 := (self) hostAccess.
    recoveredValue13 := (recoveredValue12) xmlBuildResultFileName.
    recoveredValue14 := (recoveredValue11) , (recoveredValue13).
    (recoveredValue10) removeFileOnExistence: (recoveredValue14).
    recoveredValue15 := (self) hostAccess.
    recoveredValue16 := (self) destinationPath.
    recoveredValue17 := (self) target.
    recoveredValue18 := (recoveredValue17) makeFileName.
    recoveredValue19 := (recoveredValue16) , (recoveredValue18).
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (self) generateMakefile: (recoveredValue20).
    (recoveredValue15) writeFile: (recoveredValue19) contents: (recoveredValue21).
    recoveredValue22 := (self) makeFilename.
    recoveredValue23 := (self) makeRuleName.
    (self) writeBatchFile: (recoveredValue22) makeRule: (recoveredValue23).
    recoveredValue24 := (self) hostAccess.
    recoveredValue25 := (self) destinationPath.
    recoveredValue26 := (self) label.
    recoveredValue27 := (self) target.
    (recoveredValue24) executeMakeIn: (recoveredValue25) description: (recoveredValue26) target: (recoveredValue27).
    ^self
! !

"ASDBase.ic method 0x2044110c; bytecode file offset 0xd3da1c"
!SGProcessRteCommand methodsFor: 'recovered'!
generateMakefile: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) autosarSettings.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := (recoveredValue2) arPackageNameSwComponent.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (recoveredValue4) arFilenameSwComponent.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) newline.
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) bannerSectionRowLabel: ('Variable definitions').
    recoveredValue9 := recoveredValue6.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue9) varNamed: ('ASD_AUTOSAR_SWC') value: (recoveredValue10).
    recoveredValue11 := recoveredValue6.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) varNamed: ('ASD_SWC_FILE') value: (recoveredValue12).
    (recoveredValue6) varNamed: ('OS_CONFIG_ERR') value: ('os_config.err').
    recoveredValue13 := (self) exportCommand.
    recoveredValue14 := recoveredArg2.
    (recoveredValue13) writeExportContentsTableOn: (recoveredValue14).
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := (recoveredValue15) externalFiles.
    recoveredValue17 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := nil.
            recoveredBlock69PC := 77.
        ].
        recoveredBlock69Step = 77 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Arg1.
            recoveredBlock69PC := 78.
        ].
        recoveredBlock69Step = 78 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) fileExtension.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            recoveredBlock69Stack3 := 'arxml'.
            recoveredBlock69PC := 82.
        ].
        recoveredBlock69Step = 82 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) equals: (recoveredBlock69Stack3).
            recoveredBlock69PC := 84.
        ].
        recoveredBlock69Step = 84 ifTrue: [
            (recoveredBlock69Stack2) ifTrue: [recoveredBlock69PC := 88] ifFalse: [recoveredBlock69PC := 100].
        ].
        recoveredBlock69Step = 88 ifTrue: [
            recoveredBlock69PC := 89.
        ].
        recoveredBlock69Step = 89 ifTrue: [
            recoveredBlock69Stack1 := recoveredArg2.
            recoveredBlock69PC := 92.
        ].
        recoveredBlock69Step = 92 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Arg1.
            recoveredBlock69PC := 94.
        ].
        recoveredBlock69Step = 94 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) fileNameOnly.
            recoveredBlock69PC := 96.
        ].
        recoveredBlock69Step = 96 ifTrue: [
            (recoveredBlock69Stack2) nextPutAll: (recoveredBlock69Stack3).
            recoveredBlock69PC := 98.
        ].
        recoveredBlock69Step = 98 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) space.
            recoveredBlock69PC := 100.
        ].
        recoveredBlock69Step = 100 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
    (recoveredValue16) do: (recoveredValue17).
    recoveredValue18 := recoveredArg2.
    recoveredValue19 := (recoveredValue18) contents.
    ^recoveredValue19
! !

