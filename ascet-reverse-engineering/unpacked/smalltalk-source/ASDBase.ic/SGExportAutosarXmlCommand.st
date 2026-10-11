"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017c60; bytecode file offset 0x92209c"
!SGExportAutosarXmlCommand methodsFor: 'recovered'!
fileTypeLabel
    ^'AUTOSAR XML'
! !

"ASDBase.ic method 0x2001eef0; bytecode file offset 0x92209c"
!SGExportAutosarXmlCommand methodsFor: 'recovered'!
label
    ^'Export AUTOSAR XML'
! !

"ASDBase.ic method 0x20028f04; bytecode file offset 0x934580"
!SGExportAutosarXmlCommand methodsFor: 'recovered'!
sourceExtension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (recoveredValue0) autosarFileExtension.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b28ec; bytecode file offset 0x9af1ac"
!SGExportAutosarXmlCommand methodsFor: 'recovered'!
collectCommandSources
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeGraph.
    recoveredValue1 := (recoveredValue0) sourcesForRTECodeGeneration: (true).
    (self) sourceCollector: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201554a0; bytecode file offset 0xa51d64"
!SGExportAutosarXmlCommand methodsFor: 'recovered'!
selectForAPICommandExportCode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresRTEInputFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsARProcessRteInGenerate.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addBasicCommand: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1504; bytecode file offset 0xaaddd0"
!SGExportAutosarXmlCommand methodsFor: 'recovered'!
requiresBasicCommandExecution
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProjectNode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isARNode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := super requiresBasicCommandExecution.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d05bc; bytecode file offset 0xbcce94"
!SGExportAutosarXmlCommand methodsFor: 'recovered'!
writeExportContentsTableOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    (recoveredValue0) nextPutAll: ('ASD_AUTOSAR_FILES = ').
    recoveredValue2 := (self) sources.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) rteSourceHandle.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isRTESourceEmpty.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 44] ifFalse: [recoveredBlock15PC := 32].
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) fileName.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            (recoveredBlock15Stack2) nextPutAll: (recoveredBlock15Stack3).
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) space.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2051193c; bytecode file offset 0xe0e25c"
!SGExportAutosarXmlCommand methodsFor: 'recovered'!
exportSources
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) autosarSettings.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) externalFiles.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) destinationPath.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) asUppercaseFileNameOnly.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) , (recoveredBlock13Stack1).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) hostAccess.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            (recoveredBlock13Stack0) removeFileOnExistence: (recoveredBlock13Stack1).
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) apiCommand.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            (recoveredBlock13Stack0 == nil) ifTrue: [recoveredBlock13PC := 60] ifFalse: [recoveredBlock13PC := 40].
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) apiCommand.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCompileCommand.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 48] ifFalse: [recoveredBlock13PC := 60].
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) hostAccess.
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) destinationPath.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) ensureFile: (recoveredBlock13Stack1) inPath: (recoveredBlock13Stack2).
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) hostAccess.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) checkForExistency: (recoveredBlock13Stack2).
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 70] ifFalse: [recoveredBlock13PC := 79].
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) hostAccess.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) destinationPath.
            recoveredBlock13PC := 77.
        ].
        recoveredBlock13Step = 77 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) ensureFile: (recoveredBlock13Stack1) inPath: (recoveredBlock13Stack2).
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 79 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredLocal2 := 0.
    recoveredValue5 := (self) sources.
    recoveredValue6 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Local1 recoveredBlock90Local2 recoveredBlock90Stack0 recoveredBlock90Stack1 recoveredBlock90Stack2 recoveredBlock90Stack3 recoveredBlock90Stack4 recoveredBlock90Stack5 recoveredBlock90Stack6 recoveredBlock90PC recoveredBlock90Step recoveredBlock90Done recoveredBlock90Result |
    recoveredBlock90Stack0 := self.
    recoveredBlock90PC := 96.
    recoveredBlock90Done := false.
    [recoveredBlock90Done not] whileTrue: [
        recoveredBlock90Step := recoveredBlock90PC.
        recoveredBlock90Step = 96 ifTrue: [
            recoveredBlock90Stack1 := nil.
            recoveredBlock90PC := 97.
        ].
        recoveredBlock90Step = 97 ifTrue: [
            recoveredBlock90Stack2 := self.
            recoveredBlock90PC := 98.
        ].
        recoveredBlock90Step = 98 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) monitorManager.
            recoveredBlock90PC := 100.
        ].
        recoveredBlock90Step = 100 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) progressReporter.
            recoveredBlock90PC := 102.
        ].
        recoveredBlock90Step = 102 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) isCancelled.
            recoveredBlock90PC := 104.
        ].
        recoveredBlock90Step = 104 ifTrue: [
            (recoveredBlock90Stack2) ifTrue: [recoveredBlock90PC := 181] ifFalse: [recoveredBlock90PC := 108].
        ].
        recoveredBlock90Step = 108 ifTrue: [
            recoveredBlock90PC := 109.
        ].
        recoveredBlock90Step = 109 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Arg1.
            recoveredBlock90PC := 110.
        ].
        recoveredBlock90Step = 110 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) completeRTESource.
            recoveredBlock90PC := 112.
        ].
        recoveredBlock90Step = 112 ifTrue: [
            recoveredBlock90Local2 := recoveredBlock90Stack1.
            recoveredBlock90PC := 113.
        ].
        recoveredBlock90Step = 113 ifTrue: [
            recoveredBlock90Stack1 := nil.
            recoveredBlock90PC := 114.
        ].
        recoveredBlock90Step = 114 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Local2.
            recoveredBlock90PC := 115.
        ].
        recoveredBlock90Step = 115 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) notEmpty.
            recoveredBlock90PC := 117.
        ].
        recoveredBlock90Step = 117 ifTrue: [
            (recoveredBlock90Stack2) ifTrue: [recoveredBlock90PC := 120] ifFalse: [recoveredBlock90PC := 181].
        ].
        recoveredBlock90Step = 120 ifTrue: [
            recoveredBlock90PC := 121.
        ].
        recoveredBlock90Step = 121 ifTrue: [
            recoveredBlock90Stack1 := self.
            recoveredBlock90PC := 122.
        ].
        recoveredBlock90Step = 122 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) monitorManager.
            recoveredBlock90PC := 124.
        ].
        recoveredBlock90Step = 124 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg1.
            recoveredBlock90PC := 125.
        ].
        recoveredBlock90Step = 125 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) description.
            recoveredBlock90PC := 127.
        ].
        recoveredBlock90Step = 127 ifTrue: [
            (recoveredBlock90Stack1) openSourceObject: (recoveredBlock90Stack2).
            recoveredBlock90PC := 129.
        ].
        recoveredBlock90Step = 129 ifTrue: [
            recoveredBlock90Stack1 := self.
            recoveredBlock90PC := 130.
        ].
        recoveredBlock90Step = 130 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) destinationPath.
            recoveredBlock90PC := 131.
        ].
        recoveredBlock90Step = 131 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg1.
            recoveredBlock90PC := 132.
        ].
        recoveredBlock90Step = 132 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) fileName.
            recoveredBlock90PC := 134.
        ].
        recoveredBlock90Step = 134 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) , (recoveredBlock90Stack2).
            recoveredBlock90PC := 136.
        ].
        recoveredBlock90Step = 136 ifTrue: [
            recoveredBlock90Stack2 := self.
            recoveredBlock90PC := 137.
        ].
        recoveredBlock90Step = 137 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) sourceExtension.
            recoveredBlock90PC := 139.
        ].
        recoveredBlock90Step = 139 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) , (recoveredBlock90Stack2).
            recoveredBlock90PC := 141.
        ].
        recoveredBlock90Step = 141 ifTrue: [
            recoveredBlock90Local1 := recoveredBlock90Stack1.
            recoveredBlock90PC := 142.
        ].
        recoveredBlock90Step = 142 ifTrue: [
            recoveredBlock90Stack1 := self.
            recoveredBlock90PC := 143.
        ].
        recoveredBlock90Step = 143 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) hostAccess.
            recoveredBlock90PC := 145.
        ].
        recoveredBlock90Step = 145 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Local1.
            recoveredBlock90PC := 146.
        ].
        recoveredBlock90Step = 146 ifTrue: [
            recoveredBlock90Stack3 := recoveredBlock90Local2.
            recoveredBlock90PC := 147.
        ].
        recoveredBlock90Step = 147 ifTrue: [
            (recoveredBlock90Stack1) writeFile: (recoveredBlock90Stack2) contents: (recoveredBlock90Stack3).
            recoveredBlock90PC := 149.
        ].
        recoveredBlock90Step = 149 ifTrue: [
            recoveredBlock90Stack1 := self.
            recoveredBlock90PC := 150.
        ].
        recoveredBlock90Step = 150 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) monitorManager.
            recoveredBlock90PC := 152.
        ].
        recoveredBlock90Step = 152 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg1.
            recoveredBlock90PC := 153.
        ].
        recoveredBlock90Step = 153 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) fileName.
            recoveredBlock90PC := 155.
        ].
        recoveredBlock90Step = 155 ifTrue: [
            recoveredBlock90Stack3 := self.
            recoveredBlock90PC := 156.
        ].
        recoveredBlock90Step = 156 ifTrue: [
            recoveredBlock90Stack3 := (recoveredBlock90Stack3) sourceExtension.
            recoveredBlock90PC := 158.
        ].
        recoveredBlock90Step = 158 ifTrue: [
            recoveredBlock90Stack4 := recoveredLocal2.
            recoveredBlock90PC := 161.
        ].
        recoveredBlock90Step = 161 ifTrue: [
            recoveredBlock90Stack4 := (recoveredBlock90Stack4) + (1).
            recoveredBlock90PC := 162.
        ].
        recoveredBlock90Step = 162 ifTrue: [
            recoveredBlock90Stack5 := recoveredBlock90Stack4.
            recoveredBlock90PC := 163.
        ].
        recoveredBlock90Step = 163 ifTrue: [
            recoveredLocal2 := recoveredBlock90Stack5.
            recoveredBlock90PC := 166.
        ].
        recoveredBlock90Step = 166 ifTrue: [
            (recoveredBlock90Stack1) fileName: (recoveredBlock90Stack2) extension: (recoveredBlock90Stack3) index: (recoveredBlock90Stack4).
            recoveredBlock90PC := 169.
        ].
        recoveredBlock90Step = 169 ifTrue: [
            recoveredBlock90Stack1 := self.
            recoveredBlock90PC := 170.
        ].
        recoveredBlock90Step = 170 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) monitorManager.
            recoveredBlock90PC := 172.
        ].
        recoveredBlock90Step = 172 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) progressReporter.
            recoveredBlock90PC := 174.
        ].
        recoveredBlock90Step = 174 ifTrue: [
            (recoveredBlock90Stack1) step.
            recoveredBlock90PC := 176.
        ].
        recoveredBlock90Step = 176 ifTrue: [
            recoveredBlock90Stack1 := self.
            recoveredBlock90PC := 177.
        ].
        recoveredBlock90Step = 177 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) monitorManager.
            recoveredBlock90PC := 179.
        ].
        recoveredBlock90Step = 179 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) closeSourceObject.
            recoveredBlock90PC := 181.
        ].
        recoveredBlock90Step = 181 ifTrue: [
            recoveredBlock90Result := recoveredBlock90Stack1.
            recoveredBlock90Done := true.
        ].
    ].
    recoveredBlock90Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

