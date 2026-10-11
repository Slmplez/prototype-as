"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200030b8; bytecode file offset 0x8ffcfc"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
createExportCommand
    ^self
! !

"ASDBase.ic method 0x20003840; bytecode file offset 0x90206c"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
getProcessingResults: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200041b8; bytecode file offset 0x90206c"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
executeMakeFile: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005760; bytecode file offset 0x90206c"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
prepareProcessing: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20027d04; bytecode file offset 0x934580"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
compilerTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) compilerTool.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029014; bytecode file offset 0x934580"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
sources
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportCommand.
    recoveredValue1 := (recoveredValue0) sources.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ae64; bytecode file offset 0x934580"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
makeKeywords
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) compilerTool.
    recoveredValue1 := (recoveredValue0) makeKeywords.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d8ac; bytecode file offset 0x96a390"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
fileBasedOperation
    | recoveredValue0 |
    recoveredValue0 := fileBasedOperation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c3a40; bytecode file offset 0x9c058c"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
exportCommand: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exportCommand := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2016f8e8; bytecode file offset 0xa6c1a4"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
exportCommand
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := exportCommand.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) createExportCommand.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    exportCommand := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := exportCommand.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202cadb0; bytecode file offset 0xbc7698"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
writeBatchFile: recoveredArg1 makeRule: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) target.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('$(P_TARGET)/') , (recoveredValue2).
    recoveredValue4 := (recoveredValue0) generateBatch: (nil) phase: (recoveredValue1) file: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) hostAccess.
    recoveredValue6 := (self) destinationPath.
    recoveredValue7 := (self) target.
    recoveredValue8 := (recoveredValue7) batchFileName.
    recoveredValue9 := (recoveredValue6) , (recoveredValue8).
    recoveredValue10 := recoveredLocal1.
    (recoveredValue5) writeFile: (recoveredValue9) contents: (recoveredValue10).
    recoveredValue11 := (self) codeManager.
    recoveredValue12 := (recoveredValue11) monitorManager.
    recoveredValue13 := (self) target.
    recoveredValue14 := (recoveredValue13) batchFileName.
    recoveredValue15 := (self) currentExportFileIndex.
    (recoveredValue12) makeFileName: (recoveredValue14) extension: ('') index: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x2037f43c; bytecode file offset 0xc7bd20"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
processSources: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) asSymbol.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) monitorManager.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) commandLabel.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) sources.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := [
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            (recoveredBlock25Stack0) prepareProcessing: (recoveredBlock25Stack1).
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) continue.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 44] ifFalse: [recoveredBlock25PC := 50].
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 48.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            (recoveredBlock25Stack0) executeMakeFile: (recoveredBlock25Stack1).
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Stack0 := nil.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) continue.
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 58] ifFalse: [recoveredBlock25PC := 65].
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 63.
        ].
        recoveredBlock25Step = 63 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) getProcessingResults: (recoveredBlock25Stack1).
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack0.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    (recoveredValue3) doTiming: (recoveredValue4) title: (recoveredValue5) max: (recoveredValue8) for: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x203b9240; bytecode file offset 0xcb5b44"
!SGAbstractExternalMakeCommand methodsFor: 'recovered'!
checkErrorFile: recoveredArg1 operation: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) destinationPath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLocaleFileString: (recoveredStack1) onError: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := '.backup'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) writeFile: (recoveredStack1) contents: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := TGReturnMessage.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'Results from '.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMessage: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) lineString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) fileName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) setValidFileReference.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) addInfo: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

