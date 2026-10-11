"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b87c; bytecode file offset 0x908be4"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
checkRestrictions
    | recoveredValue0 |
    recoveredValue0 := (self) checkCompilerTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022f4c; bytecode file offset 0x92209c"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
label
    ^'Compile ANSI Code'
! !

"ASDBase.ic method 0x200317f4; bytecode file offset 0x934580"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
compileSourceCollector
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportCommand.
    recoveredValue1 := (recoveredValue0) compileSourceCollector.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fad0; bytecode file offset 0x93c75c"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
createExportCommand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGExportAnsiCCommand.
    recoveredValue1 := (self) createBasicCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007f3fc; bytecode file offset 0x97c330"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
linkOnly
    ^false
! !

"ASDBase.ic method 0x20083b04; bytecode file offset 0x9804b8"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
selectForAPICommandCompile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) addBasicCommand: (self).
    ^self
! !

"ASDBase.ic method 0x2008e534; bytecode file offset 0x98aef8"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
requiresAPICommandCompile
    | recoveredValue0 recoveredValue1 |
    (self) collectCommandSources.
    recoveredValue0 := (self) sources.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bb3ec; bytecode file offset 0x9b7cc8"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
collectExportedFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) compileSourceCollector.
    recoveredValue2 := (recoveredValue1) fileNameMap.
    recoveredValue3 := (recoveredValue2) keys.
    (recoveredValue0) addAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2015e940; bytecode file offset 0xa5b208"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
executeBasicCommand
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Rl_ToDo'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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

"ASDBase.ic method 0x20307530; bytecode file offset 0xc03e1c"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
collectCommandSources
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'AnalyzeCompile'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Analyzing compile step'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 |
    recoveredBlock9Value0 := (self) monitorManager.
    (recoveredBlock9Value0) setCompileLinkPhase.
    recoveredBlock9Value1 := (self) codeManager.
    (recoveredBlock9Value1) upToDate: (true).
    recoveredBlock9Value2 := (self) exportCommand.
    recoveredBlock9Value3 := (self) makeGraph.
    recoveredBlock9Value4 := (recoveredBlock9Value3) collectToBeCompiledSOs.
    recoveredBlock9Value5 := (recoveredBlock9Value2) sourceCollector: (recoveredBlock9Value4).
    recoveredBlock9Value5
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) doTiming: (recoveredStack1) title: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) sources.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorManager.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) endCommandBlock: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a5bf0; bytecode file offset 0xea257c"
!SGCompileAnsiCCommand methodsFor: 'recovered'!
processSources: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Compiling'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'compiler tool'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) target.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) compilerTool.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) compilerToolLabel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) beginCommandBlock: (recoveredStack1) description: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) upToDate: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sources.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) writeTempCFileTableFor: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Rl_ToDo'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := TGCompileObject.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'Compiling'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) sources.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInfo: (recoveredStack1) cSources: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            fileBasedOperation := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := fileBasedOperation.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) useCGen.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) useCGen: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) linkOnly: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportCommand.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceCollector.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNameMap.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) fileNameMap: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) destinationPath.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) destinationPath: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) destinationPath.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) hostAccess.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlBuildResultFileName.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) removeFileOnExistence: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 'Rl_ToDo'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeManager.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := fileBasedOperation.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) placeAndCompileSOs: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) status: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := fileBasedOperation.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameMap.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := [:block28115ee8Arg1 | 
    | block28115ee8Stack0 block28115ee8Stack1 block28115ee8Stack2 block28115ee8Stack3 block28115ee8PC block28115ee8Step block28115ee8Done block28115ee8Result |
    block28115ee8Stack0 := self.
    block28115ee8PC := 4.
    block28115ee8Done := false.
    [block28115ee8Done not] whileTrue: [
        block28115ee8Step := block28115ee8PC.
        block28115ee8Step = 4 ifTrue: [
            block28115ee8Stack1 := block28115ee8Arg1.
            block28115ee8PC := 5.
        ].
        block28115ee8Step = 5 ifTrue: [
            block28115ee8Stack1 := (block28115ee8Stack1) errors.
            block28115ee8PC := 7.
        ].
        block28115ee8Step = 7 ifTrue: [
            block28115ee8Stack2 := [:block28115f0cArg1 | 
    | block28115f0cValue0 block28115f0cValue1 block28115f0cValue2 block28115f0cValue3 |
    block28115f0cValue0 := block28115f0cArg1.
    block28115f0cValue1 := (block28115f0cValue0) message.
    block28115f0cValue2 := (block28115f0cValue1) indexOfString: ('caught signal 1').
    block28115f0cValue3 := (block28115f0cValue2) > (0).
    block28115f0cValue3
].
            block28115ee8PC := 9.
        ].
        block28115ee8Step = 9 ifTrue: [
            block28115ee8PC := 23.
        ].
        block28115ee8Step = 23 ifTrue: [
            block28115ee8Stack1 := (block28115ee8Stack1) anySatisfy: (block28115ee8Stack2).
            block28115ee8PC := 25.
        ].
        block28115ee8Step = 25 ifTrue: [
            block28115ee8Result := block28115ee8Stack1.
            block28115ee8Done := true.
        ].
    ].
    block28115ee8Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := TGCompileObject.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := 'Compiling again after compiler crash'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) sources.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInfo: (recoveredStack1) cSources: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            fileBasedOperation := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := fileBasedOperation.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) useCGen.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) useCGen: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) linkOnly: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportCommand.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceCollector.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNameMap.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) fileNameMap: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) destinationPath.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) destinationPath: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := fileBasedOperation.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameMap.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := [:block28115f30Arg1 | 
    | block28115f30Value0 block28115f30Value1 block28115f30Value2 block28115f30Value3 block28115f30Value4 block28115f30Value5 block28115f30Value6 |
    block28115f30Value0 := block28115f30Arg1.
    block28115f30Value1 := OrderedCollection.
    block28115f30Value2 := (block28115f30Value1) new.
    (block28115f30Value0) errors: (block28115f30Value2).
    block28115f30Value3 := block28115f30Arg1.
    block28115f30Value4 := OrderedCollection.
    block28115f30Value5 := (block28115f30Value4) new.
    block28115f30Value6 := (block28115f30Value3) warnings: (block28115f30Value5).
    block28115f30Value6
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) destinationPath.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := (recoveredStack2) hostAccess.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlBuildResultFileName.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) removeFileOnExistence: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeManager.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := fileBasedOperation.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) placeAndCompileSOs: (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) status: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := fileBasedOperation.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCompileResults: (recoveredStack1).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 283] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) make.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeSettings.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateMapFile.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 283].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerTarget.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 283].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) readVatFile.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) make.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) storeVatFile: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := (recoveredStack2) continue.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) status: (recoveredStack1).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

