"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016ba4; bytecode file offset 0x92209c"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
phaseName
    ^'build'
! !

"ASDBase.ic method 0x200252c8; bytecode file offset 0x92209c"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
commandLabel
    ^'Process EHOOKS build'
! !

"ASDBase.ic method 0x2003fb10; bytecode file offset 0x93c75c"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
createExportCommand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGExportAnsiCCommand.
    recoveredValue1 := (self) createBasicCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050bd0; bytecode file offset 0x94d4ec"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
checkRestrictions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) checkToolEHooksDriverExistency: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200617bc; bytecode file offset 0x95e838"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
makeFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) phaseName.
    recoveredValue1 := (recoveredValue0) , ('.mk').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200628c0; bytecode file offset 0x95f8b0"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
generateMakefile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (self) fileBasedOperation.
    recoveredValue2 := (recoveredValue0) generateMakefileCompile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083a8c; bytecode file offset 0x9804b8"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
selectForAPICommandTransferEHooks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) addBasicCommand: (self).
    ^self
! !

"ASDBase.ic method 0x20085b0c; bytecode file offset 0x982408"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
prepareProcessing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) codeManager.
    (recoveredValue0) updateTargetMakefileInfos.
    ^self
! !

"ASDBase.ic method 0x2008c118; bytecode file offset 0x988b68"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
makeRuleName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) phaseName.
    recoveredValue1 := ('ASD') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201601d4; bytecode file offset 0xa5ca9c"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
executeBasicCommand
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) continue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sources.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
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

"ASDBase.ic method 0x2030b50c; bytecode file offset 0xc07de8"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
exportCommand
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := exportCommand.
    recoveredValue1 := [
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) apiCommand.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) basicCommands.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := [:block280ea240Arg1 | 
    | block280ea240Value0 block280ea240Value1 |
    block280ea240Value0 := block280ea240Arg1.
    block280ea240Value1 := (block280ea240Value0) isANSICCommand.
    block280ea240Value1
].
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) select: (recoveredBlock6Stack1).
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) notEmpty.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 32] ifFalse: [recoveredBlock6PC := 42].
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local1.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) first.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            exportCommand := recoveredBlock6Stack1.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack0 := super exportCommand.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            exportCommand := recoveredBlock6Stack1.
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := exportCommand.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203e4cec; bytecode file offset 0xce15f8"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
executeMakeFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := SGFileOutObject.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) sources.
    recoveredValue3 := (recoveredValue0) createInfo: ('Writing files to directory for EHOOKs transfer') cSources: (recoveredValue2).
    fileBasedOperation := recoveredValue3.
    recoveredValue4 := fileBasedOperation.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := (self) useCGen.
    (recoveredValue5) useCGen: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) linkOnly: (false).
    recoveredValue8 := (self) destinationPath.
    (recoveredValue4) destinationPath: (recoveredValue8).
    recoveredValue9 := (self) hostAccess.
    recoveredValue10 := (self) destinationPath.
    recoveredValue11 := (self) hostAccess.
    recoveredValue12 := (recoveredValue11) xmlBuildResultFileName.
    recoveredValue13 := (recoveredValue10) , (recoveredValue12).
    (recoveredValue9) removeFileOnExistence: (recoveredValue13).
    recoveredValue14 := (self) hostAccess.
    recoveredValue15 := (self) destinationPath.
    recoveredValue16 := (self) target.
    recoveredValue17 := (recoveredValue16) makeFileName.
    recoveredValue18 := (recoveredValue15) , (recoveredValue17).
    recoveredValue19 := (self) generateMakefile.
    (recoveredValue14) writeFile: (recoveredValue18) contents: (recoveredValue19).
    recoveredValue20 := (self) makeFilename.
    recoveredValue21 := (self) makeRuleName.
    (self) writeBatchFile: (recoveredValue20) makeRule: (recoveredValue21).
    recoveredValue22 := (self) hostAccess.
    recoveredValue23 := (self) destinationPath.
    recoveredValue24 := (self) label.
    recoveredValue25 := (self) target.
    (recoveredValue22) executeMakeIn: (recoveredValue23) description: (recoveredValue24) target: (recoveredValue25).
    ^self
! !

"ASDBase.ic method 0x20455a50; bytecode file offset 0xd5237c"
!SGTransferEHOOKSCommand methodsFor: 'recovered'!
getProcessingResults: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compilerTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileBasedOperation.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) phaseName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) makeKeywords.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := #().
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := LookupTable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) evaluateMakeOutput: (recoveredStack1) phase: (recoveredStack2) keywords: (recoveredStack3) modelFiles: (recoveredStack4) fileMap: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) destinationPath.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := '_ehooks.log'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFileContents: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52Stack5 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            recoveredBlock52Stack3 := 'FATAL-ERROR'.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) includesSubstring: (recoveredBlock52Stack3).
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 68] ifFalse: [recoveredBlock52PC := 93].
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack1 := self.
            recoveredBlock52PC := 70.
        ].
        recoveredBlock52Step = 70 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) fileBasedOperation.
            recoveredBlock52PC := 71.
        ].
        recoveredBlock52Step = 71 ifTrue: [
            recoveredBlock52Stack2 := TGReturnMessage.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Stack3 := '*** FATAL ERROR reported by EHOOKS backend ***'.
            recoveredBlock52PC := 75.
        ].
        recoveredBlock52Step = 75 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) createMessage: (recoveredBlock52Stack3).
            recoveredBlock52PC := 77.
        ].
        recoveredBlock52Step = 77 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Stack2.
            recoveredBlock52PC := 78.
        ].
        recoveredBlock52Step = 78 ifTrue: [
            recoveredBlock52Stack4 := ''.
            recoveredBlock52PC := 80.
        ].
        recoveredBlock52Step = 80 ifTrue: [
            (recoveredBlock52Stack3) lineString: (recoveredBlock52Stack4).
            recoveredBlock52Stack3 := recoveredBlock52Stack2.
            recoveredBlock52PC := 83.
        ].
        recoveredBlock52Step = 83 ifTrue: [
            recoveredBlock52Stack4 := recoveredLocal1.
            recoveredBlock52PC := 86.
        ].
        recoveredBlock52Step = 86 ifTrue: [
            (recoveredBlock52Stack3) fileName: (recoveredBlock52Stack4).
            recoveredBlock52Stack3 := recoveredBlock52Stack2.
            recoveredBlock52PC := 89.
        ].
        recoveredBlock52Step = 89 ifTrue: [
            (recoveredBlock52Stack3) setValidFileReference.
            recoveredBlock52PC := 91.
        ].
        recoveredBlock52Step = 91 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) addError: (recoveredBlock52Stack2).
            recoveredBlock52PC := 93.
        ].
        recoveredBlock52Step = 93 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileBasedOperation.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) addErrorsAndWarningsFrom: (recoveredStack1) allSources: (recoveredStack2) createUnit: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileBasedOperation.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) noErrors.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) status: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

