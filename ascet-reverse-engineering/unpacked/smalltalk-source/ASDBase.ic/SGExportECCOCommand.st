"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a600; bytecode file offset 0x92209c"
!SGExportECCOCommand methodsFor: 'recovered'!
fileTypeLabel
    ^'ECCO'
! !

"ASDBase.ic method 0x20026a88; bytecode file offset 0x923928"
!SGExportECCOCommand methodsFor: 'recovered'!
singleDBFileName
    ^'ecco.db'
! !

"ASDBase.ic method 0x2002e7b4; bytecode file offset 0x934580"
!SGExportECCOCommand methodsFor: 'recovered'!
exportCodeOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) apiCommand.
    recoveredValue1 := (recoveredValue0) isExportCommand.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200780e4; bytecode file offset 0x9757c8"
!SGExportECCOCommand methodsFor: 'recovered'!
useSingleDBFile
    ^true
! !

"ASDBase.ic method 0x200fdf28; bytecode file offset 0x9fa7e4"
!SGExportECCOCommand methodsFor: 'recovered'!
selectForAPICommandExportCode: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCodeNatureECCO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) addBasicCommand: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d6d64; bytecode file offset 0xad362c"
!SGExportECCOCommand methodsFor: 'recovered'!
collectCommandSources
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) recursive.
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
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) make.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) allGenericSourceObjects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) sourceCollector: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) make.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) topNode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) allGenericSourceObjects.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) sourceCollector: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20253b80; bytecode file offset 0xb50458"
!SGExportECCOCommand methodsFor: 'recovered'!
numOfFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) useSingleDBFile.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceCollector.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameMap.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280df0ecArg1 | 
    | block280df0ecValue0 block280df0ecValue1 block280df0ecValue2 |
    block280df0ecValue0 := block280df0ecArg1.
    block280df0ecValue1 := (block280df0ecValue0) endsWith: ('.DB').
    block280df0ecValue2 := (block280df0ecValue1) not.
    block280df0ecValue2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceCollector.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameMap.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204328e8; bytecode file offset 0xd2f1dc"
!SGExportECCOCommand methodsFor: 'recovered'!
writeExportContentsTableOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'FILES_ANA_PROJ	= '.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) useSingleDBFile.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) singleDBFileName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) sources.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:block280fd7a0Arg1 | 
    | block280fd7a0Value0 block280fd7a0Value1 |
    block280fd7a0Value0 := block280fd7a0Arg1.
    block280fd7a0Value1 := (block280fd7a0Value0) hasDbSource.
    block280fd7a0Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (recoveredBlock40Value1) fileName.
    recoveredBlock40Value3 := (recoveredBlock40Value2) , (' ').
    recoveredBlock40Value4 := (recoveredBlock40Value0) nextPutAll: (recoveredBlock40Value3).
    recoveredBlock40Value4
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'FILES_SYN_PROJ	= '.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) sources.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:block280fd7c4Arg1 | 
    | block280fd7c4Value0 block280fd7c4Value1 |
    block280fd7c4Value0 := block280fd7c4Arg1.
    block280fd7c4Value1 := (block280fd7c4Value0) hasBemSources.
    block280fd7c4Value1
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 recoveredBlock84Value4 |
    recoveredBlock84Value0 := recoveredArg1.
    recoveredBlock84Value1 := recoveredBlock84Arg1.
    recoveredBlock84Value2 := (recoveredBlock84Value1) fileName.
    recoveredBlock84Value3 := (recoveredBlock84Value2) , (' ').
    recoveredBlock84Value4 := (recoveredBlock84Value0) nextPutAll: (recoveredBlock84Value3).
    recoveredBlock84Value4
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206093c0; bytecode file offset 0xf05d44"
!SGExportECCOCommand methodsFor: 'recovered'!
exportSources
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sources.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Local3 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) description.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack0) openSourceObject: (recoveredBlock5Stack1).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hasDbSource.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 117].
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) useSingleDBFile.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 34] ifFalse: [recoveredBlock5PC := 68].
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack0 := recoveredLocal1.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            (recoveredBlock5Stack0 ~~ nil) ifTrue: [recoveredBlock5PC := 55] ifFalse: [recoveredBlock5PC := 40].
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack0 := CfsWriteFileStream.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) destinationPath.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) singleDBFileName.
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) , (recoveredBlock5Stack2).
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) openEmpty: (recoveredBlock5Stack1).
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack0.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack0 := recoveredLocal1.
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 61.
        ].
        recoveredBlock5Step = 61 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) dbSource.
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            (recoveredBlock5Stack0) nextPutAll: (recoveredBlock5Stack1).
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5PC := 117.
        ].
        recoveredBlock5Step = 68 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 69.
        ].
        recoveredBlock5Step = 69 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) destinationPath.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) eccoDbFileName.
            recoveredBlock5PC := 76.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) , (recoveredBlock5Stack1).
            recoveredBlock5PC := 78.
        ].
        recoveredBlock5Step = 78 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack0.
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 81 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 82.
        ].
        recoveredBlock5Step = 82 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hostAccess.
            recoveredBlock5PC := 84.
        ].
        recoveredBlock5Step = 84 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 87.
        ].
        recoveredBlock5Step = 87 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 90.
        ].
        recoveredBlock5Step = 90 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) dbSource.
            recoveredBlock5PC := 92.
        ].
        recoveredBlock5Step = 92 ifTrue: [
            (recoveredBlock5Stack0) writeFile: (recoveredBlock5Stack1) contents: (recoveredBlock5Stack2).
            recoveredBlock5PC := 94.
        ].
        recoveredBlock5Step = 94 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 95.
        ].
        recoveredBlock5Step = 95 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 96.
        ].
        recoveredBlock5Step = 96 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 97.
        ].
        recoveredBlock5Step = 97 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 100.
        ].
        recoveredBlock5Step = 100 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) fileName.
            recoveredBlock5PC := 102.
        ].
        recoveredBlock5Step = 102 ifTrue: [
            recoveredBlock5Stack2 := '.db'.
            recoveredBlock5PC := 104.
        ].
        recoveredBlock5Step = 104 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 105.
        ].
        recoveredBlock5Step = 105 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) currentExportFileIndex.
            recoveredBlock5PC := 107.
        ].
        recoveredBlock5Step = 107 ifTrue: [
            (recoveredBlock5Stack0) fileName: (recoveredBlock5Stack1) extension: (recoveredBlock5Stack2) index: (recoveredBlock5Stack3).
            recoveredBlock5PC := 110.
        ].
        recoveredBlock5Step = 110 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 111.
        ].
        recoveredBlock5Step = 111 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 112.
        ].
        recoveredBlock5Step = 112 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 113.
        ].
        recoveredBlock5Step = 113 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) progressReporter.
            recoveredBlock5PC := 115.
        ].
        recoveredBlock5Step = 115 ifTrue: [
            (recoveredBlock5Stack0) step.
            recoveredBlock5PC := 117.
        ].
        recoveredBlock5Step = 117 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 120.
        ].
        recoveredBlock5Step = 120 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hasBemSources.
            recoveredBlock5PC := 122.
        ].
        recoveredBlock5Step = 122 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 126] ifFalse: [recoveredBlock5PC := 449].
        ].
        recoveredBlock5Step = 126 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 129.
        ].
        recoveredBlock5Step = 129 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hasGenericCSource.
            recoveredBlock5PC := 131.
        ].
        recoveredBlock5Step = 131 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 134] ifFalse: [recoveredBlock5PC := 207].
        ].
        recoveredBlock5Step = 134 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 135.
        ].
        recoveredBlock5Step = 135 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) exportCodeOnly.
            recoveredBlock5PC := 137.
        ].
        recoveredBlock5Step = 137 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 140] ifFalse: [recoveredBlock5PC := 152].
        ].
        recoveredBlock5Step = 140 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 143.
        ].
        recoveredBlock5Step = 143 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) bemSourceCWithIncludes.
            recoveredBlock5PC := 145.
        ].
        recoveredBlock5Step = 145 ifTrue: [
            recoveredBlock5Local3 := recoveredBlock5Stack0.
            recoveredBlock5PC := 148.
        ].
        recoveredBlock5Step = 148 ifTrue: [
            recoveredBlock5PC := 160.
        ].
        recoveredBlock5Step = 152 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 155.
        ].
        recoveredBlock5Step = 155 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) bemSourceC.
            recoveredBlock5PC := 157.
        ].
        recoveredBlock5Step = 157 ifTrue: [
            recoveredBlock5Local3 := recoveredBlock5Stack0.
            recoveredBlock5PC := 160.
        ].
        recoveredBlock5Step = 160 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 161.
        ].
        recoveredBlock5Step = 161 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) destinationPath.
            recoveredBlock5PC := 163.
        ].
        recoveredBlock5Step = 163 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 166.
        ].
        recoveredBlock5Step = 166 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) eccoCFileName.
            recoveredBlock5PC := 168.
        ].
        recoveredBlock5Step = 168 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) , (recoveredBlock5Stack1).
            recoveredBlock5PC := 170.
        ].
        recoveredBlock5Step = 170 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack0.
            recoveredBlock5PC := 173.
        ].
        recoveredBlock5Step = 173 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 174.
        ].
        recoveredBlock5Step = 174 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hostAccess.
            recoveredBlock5PC := 176.
        ].
        recoveredBlock5Step = 176 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 179.
        ].
        recoveredBlock5Step = 179 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local3.
            recoveredBlock5PC := 182.
        ].
        recoveredBlock5Step = 182 ifTrue: [
            (recoveredBlock5Stack0) writeFile: (recoveredBlock5Stack1) contents: (recoveredBlock5Stack2).
            recoveredBlock5PC := 184.
        ].
        recoveredBlock5Step = 184 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 185.
        ].
        recoveredBlock5Step = 185 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 186.
        ].
        recoveredBlock5Step = 186 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 187.
        ].
        recoveredBlock5Step = 187 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 190.
        ].
        recoveredBlock5Step = 190 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) fileName.
            recoveredBlock5PC := 192.
        ].
        recoveredBlock5Step = 192 ifTrue: [
            recoveredBlock5Stack2 := '.c.pl'.
            recoveredBlock5PC := 194.
        ].
        recoveredBlock5Step = 194 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 195.
        ].
        recoveredBlock5Step = 195 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) currentExportFileIndex.
            recoveredBlock5PC := 197.
        ].
        recoveredBlock5Step = 197 ifTrue: [
            (recoveredBlock5Stack0) fileName: (recoveredBlock5Stack1) extension: (recoveredBlock5Stack2) index: (recoveredBlock5Stack3).
            recoveredBlock5PC := 200.
        ].
        recoveredBlock5Step = 200 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 201.
        ].
        recoveredBlock5Step = 201 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 202.
        ].
        recoveredBlock5Step = 202 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 203.
        ].
        recoveredBlock5Step = 203 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) progressReporter.
            recoveredBlock5PC := 205.
        ].
        recoveredBlock5Step = 205 ifTrue: [
            (recoveredBlock5Stack0) step.
            recoveredBlock5PC := 207.
        ].
        recoveredBlock5Step = 207 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 208.
        ].
        recoveredBlock5Step = 208 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) destinationPath.
            recoveredBlock5PC := 210.
        ].
        recoveredBlock5Step = 210 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 213.
        ].
        recoveredBlock5Step = 213 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) eccoHFileName.
            recoveredBlock5PC := 215.
        ].
        recoveredBlock5Step = 215 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) , (recoveredBlock5Stack1).
            recoveredBlock5PC := 217.
        ].
        recoveredBlock5Step = 217 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack0.
            recoveredBlock5PC := 220.
        ].
        recoveredBlock5Step = 220 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 221.
        ].
        recoveredBlock5Step = 221 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hostAccess.
            recoveredBlock5PC := 223.
        ].
        recoveredBlock5Step = 223 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 226.
        ].
        recoveredBlock5Step = 226 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 229.
        ].
        recoveredBlock5Step = 229 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) bemSourceH.
            recoveredBlock5PC := 231.
        ].
        recoveredBlock5Step = 231 ifTrue: [
            (recoveredBlock5Stack0) writeFile: (recoveredBlock5Stack1) contents: (recoveredBlock5Stack2).
            recoveredBlock5PC := 233.
        ].
        recoveredBlock5Step = 233 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 234.
        ].
        recoveredBlock5Step = 234 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 235.
        ].
        recoveredBlock5Step = 235 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 236.
        ].
        recoveredBlock5Step = 236 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 239.
        ].
        recoveredBlock5Step = 239 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) fileName.
            recoveredBlock5PC := 241.
        ].
        recoveredBlock5Step = 241 ifTrue: [
            recoveredBlock5Stack2 := '.h.pl'.
            recoveredBlock5PC := 243.
        ].
        recoveredBlock5Step = 243 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 244.
        ].
        recoveredBlock5Step = 244 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) currentExportFileIndex.
            recoveredBlock5PC := 246.
        ].
        recoveredBlock5Step = 246 ifTrue: [
            (recoveredBlock5Stack0) fileName: (recoveredBlock5Stack1) extension: (recoveredBlock5Stack2) index: (recoveredBlock5Stack3).
            recoveredBlock5PC := 249.
        ].
        recoveredBlock5Step = 249 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 250.
        ].
        recoveredBlock5Step = 250 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 251.
        ].
        recoveredBlock5Step = 251 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 252.
        ].
        recoveredBlock5Step = 252 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) progressReporter.
            recoveredBlock5PC := 254.
        ].
        recoveredBlock5Step = 254 ifTrue: [
            (recoveredBlock5Stack0) step.
            recoveredBlock5PC := 256.
        ].
        recoveredBlock5Step = 256 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 259.
        ].
        recoveredBlock5Step = 259 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hasInlineGenericHeaderSource.
            recoveredBlock5PC := 261.
        ].
        recoveredBlock5Step = 261 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 264] ifFalse: [recoveredBlock5PC := 313].
        ].
        recoveredBlock5Step = 264 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 265.
        ].
        recoveredBlock5Step = 265 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) destinationPath.
            recoveredBlock5PC := 267.
        ].
        recoveredBlock5Step = 267 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 270.
        ].
        recoveredBlock5Step = 270 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) eccoInlineHFileName.
            recoveredBlock5PC := 272.
        ].
        recoveredBlock5Step = 272 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) , (recoveredBlock5Stack1).
            recoveredBlock5PC := 274.
        ].
        recoveredBlock5Step = 274 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack0.
            recoveredBlock5PC := 277.
        ].
        recoveredBlock5Step = 277 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 278.
        ].
        recoveredBlock5Step = 278 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hostAccess.
            recoveredBlock5PC := 280.
        ].
        recoveredBlock5Step = 280 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 283.
        ].
        recoveredBlock5Step = 283 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 286.
        ].
        recoveredBlock5Step = 286 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) bemSourceInline.
            recoveredBlock5PC := 288.
        ].
        recoveredBlock5Step = 288 ifTrue: [
            (recoveredBlock5Stack0) writeFile: (recoveredBlock5Stack1) contents: (recoveredBlock5Stack2).
            recoveredBlock5PC := 290.
        ].
        recoveredBlock5Step = 290 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 291.
        ].
        recoveredBlock5Step = 291 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 292.
        ].
        recoveredBlock5Step = 292 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 293.
        ].
        recoveredBlock5Step = 293 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 296.
        ].
        recoveredBlock5Step = 296 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) inlineHeaderFileName.
            recoveredBlock5PC := 298.
        ].
        recoveredBlock5Step = 298 ifTrue: [
            recoveredBlock5Stack2 := '.h.pl'.
            recoveredBlock5PC := 300.
        ].
        recoveredBlock5Step = 300 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 301.
        ].
        recoveredBlock5Step = 301 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) currentExportFileIndex.
            recoveredBlock5PC := 303.
        ].
        recoveredBlock5Step = 303 ifTrue: [
            (recoveredBlock5Stack0) fileName: (recoveredBlock5Stack1) extension: (recoveredBlock5Stack2) index: (recoveredBlock5Stack3).
            recoveredBlock5PC := 306.
        ].
        recoveredBlock5Step = 306 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 307.
        ].
        recoveredBlock5Step = 307 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 308.
        ].
        recoveredBlock5Step = 308 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 309.
        ].
        recoveredBlock5Step = 309 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) progressReporter.
            recoveredBlock5PC := 311.
        ].
        recoveredBlock5Step = 311 ifTrue: [
            (recoveredBlock5Stack0) step.
            recoveredBlock5PC := 313.
        ].
        recoveredBlock5Step = 313 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 316.
        ].
        recoveredBlock5Step = 316 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hasInternalGenericHeaderSource.
            recoveredBlock5PC := 318.
        ].
        recoveredBlock5Step = 318 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 322] ifFalse: [recoveredBlock5PC := 371].
        ].
        recoveredBlock5Step = 322 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 323.
        ].
        recoveredBlock5Step = 323 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) destinationPath.
            recoveredBlock5PC := 325.
        ].
        recoveredBlock5Step = 325 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 328.
        ].
        recoveredBlock5Step = 328 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) eccoInternalHFileName.
            recoveredBlock5PC := 330.
        ].
        recoveredBlock5Step = 330 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) , (recoveredBlock5Stack1).
            recoveredBlock5PC := 332.
        ].
        recoveredBlock5Step = 332 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack0.
            recoveredBlock5PC := 335.
        ].
        recoveredBlock5Step = 335 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 336.
        ].
        recoveredBlock5Step = 336 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hostAccess.
            recoveredBlock5PC := 338.
        ].
        recoveredBlock5Step = 338 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 341.
        ].
        recoveredBlock5Step = 341 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 344.
        ].
        recoveredBlock5Step = 344 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) bemSourceIH.
            recoveredBlock5PC := 346.
        ].
        recoveredBlock5Step = 346 ifTrue: [
            (recoveredBlock5Stack0) writeFile: (recoveredBlock5Stack1) contents: (recoveredBlock5Stack2).
            recoveredBlock5PC := 348.
        ].
        recoveredBlock5Step = 348 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 349.
        ].
        recoveredBlock5Step = 349 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 350.
        ].
        recoveredBlock5Step = 350 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 351.
        ].
        recoveredBlock5Step = 351 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 354.
        ].
        recoveredBlock5Step = 354 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) internalHeaderFileNameNoExtension.
            recoveredBlock5PC := 356.
        ].
        recoveredBlock5Step = 356 ifTrue: [
            recoveredBlock5Stack2 := '.h.pl'.
            recoveredBlock5PC := 358.
        ].
        recoveredBlock5Step = 358 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 359.
        ].
        recoveredBlock5Step = 359 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) currentExportFileIndex.
            recoveredBlock5PC := 361.
        ].
        recoveredBlock5Step = 361 ifTrue: [
            (recoveredBlock5Stack0) fileName: (recoveredBlock5Stack1) extension: (recoveredBlock5Stack2) index: (recoveredBlock5Stack3).
            recoveredBlock5PC := 364.
        ].
        recoveredBlock5Step = 364 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 365.
        ].
        recoveredBlock5Step = 365 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 366.
        ].
        recoveredBlock5Step = 366 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 367.
        ].
        recoveredBlock5Step = 367 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) progressReporter.
            recoveredBlock5PC := 369.
        ].
        recoveredBlock5Step = 369 ifTrue: [
            (recoveredBlock5Stack0) step.
            recoveredBlock5PC := 371.
        ].
        recoveredBlock5Step = 371 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 374.
        ].
        recoveredBlock5Step = 374 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hasGenericSCOOPIXSource.
            recoveredBlock5PC := 376.
        ].
        recoveredBlock5Step = 376 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 380] ifFalse: [recoveredBlock5PC := 449].
        ].
        recoveredBlock5Step = 380 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 381.
        ].
        recoveredBlock5Step = 381 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) destinationPath.
            recoveredBlock5PC := 383.
        ].
        recoveredBlock5Step = 383 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 386.
        ].
        recoveredBlock5Step = 386 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) eccoSixFileName.
            recoveredBlock5PC := 388.
        ].
        recoveredBlock5Step = 388 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) , (recoveredBlock5Stack1).
            recoveredBlock5PC := 390.
        ].
        recoveredBlock5Step = 390 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack0.
            recoveredBlock5PC := 393.
        ].
        recoveredBlock5Step = 393 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 394.
        ].
        recoveredBlock5Step = 394 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) hostAccess.
            recoveredBlock5PC := 396.
        ].
        recoveredBlock5Step = 396 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 399.
        ].
        recoveredBlock5Step = 399 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block399Arg1 | 
    | recoveredBlock5Block399Value0 recoveredBlock5Block399Value1 recoveredBlock5Block399Value2 recoveredBlock5Block399Value3 recoveredBlock5Block399Value4 recoveredBlock5Block399Value5 recoveredBlock5Block399Value6 recoveredBlock5Block399Value7 recoveredBlock5Block399Value8 |
    recoveredBlock5Block399Value0 := recoveredBlock5Block399Arg1.
    recoveredBlock5Block399Value1 := recoveredBlock5Block399Value0.
    recoveredBlock5Block399Value2 := recoveredBlock5Arg1.
    recoveredBlock5Block399Value3 := (recoveredBlock5Block399Value2) bemSourceHandle.
    recoveredBlock5Block399Value4 := (recoveredBlock5Block399Value3) bemSourceSIX.
    (recoveredBlock5Block399Value1) nextPutStream: (recoveredBlock5Block399Value4).
    recoveredBlock5Block399Value5 := recoveredBlock5Block399Value0.
    (recoveredBlock5Block399Value5) cr.
    recoveredBlock5Block399Value6 := recoveredBlock5Block399Value0.
    (recoveredBlock5Block399Value6) nextPutAll: ('1;').
    recoveredBlock5Block399Value7 := recoveredBlock5Block399Value0.
    (recoveredBlock5Block399Value7) cr.
    recoveredBlock5Block399Value8 := (recoveredBlock5Block399Value0) cr.
    recoveredBlock5Block399Value8
].
            recoveredBlock5PC := 431.
        ].
        recoveredBlock5Step = 431 ifTrue: [
            (recoveredBlock5Stack0) writeFile: (recoveredBlock5Stack1) contents: (recoveredBlock5Stack2).
            recoveredBlock5PC := 433.
        ].
        recoveredBlock5Step = 433 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 434.
        ].
        recoveredBlock5Step = 434 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 435.
        ].
        recoveredBlock5Step = 435 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 436.
        ].
        recoveredBlock5Step = 436 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 439.
        ].
        recoveredBlock5Step = 439 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) fileName.
            recoveredBlock5PC := 441.
        ].
        recoveredBlock5Step = 441 ifTrue: [
            recoveredBlock5Stack2 := '.six.pl'.
            recoveredBlock5PC := 443.
        ].
        recoveredBlock5Step = 443 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 444.
        ].
        recoveredBlock5Step = 444 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) currentExportFileIndex.
            recoveredBlock5PC := 446.
        ].
        recoveredBlock5Step = 446 ifTrue: [
            (recoveredBlock5Stack0) fileName: (recoveredBlock5Stack1) extension: (recoveredBlock5Stack2) index: (recoveredBlock5Stack3).
            recoveredBlock5PC := 449.
        ].
        recoveredBlock5Step = 449 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 450.
        ].
        recoveredBlock5Step = 450 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) codeManager.
            recoveredBlock5PC := 451.
        ].
        recoveredBlock5Step = 451 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) monitorManager.
            recoveredBlock5PC := 452.
        ].
        recoveredBlock5Step = 452 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) closeSourceObject.
            recoveredBlock5PC := 454.
        ].
        recoveredBlock5Step = 454 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 469] ifFalse: [recoveredPC := 464].
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

