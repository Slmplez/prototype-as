"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200013b0; bytecode file offset 0x8ffcfc"
!SGAbstractAPICommand methodsFor: 'recovered'!
checkAPICommandRestrictions
    ^self
! !

"ASDBase.ic method 0x200013c8; bytecode file offset 0x8ffcfc"
!SGAbstractAPICommand methodsFor: 'recovered'!
apiCommand
    ^self
! !

"ASDBase.ic method 0x20003510; bytecode file offset 0x90206c"
!SGAbstractAPICommand methodsFor: 'recovered'!
selectBasicCommand: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003c58; bytecode file offset 0x90206c"
!SGAbstractAPICommand methodsFor: 'recovered'!
prepareCodeGenerationIfFail: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001f490; bytecode file offset 0x92209c"
!SGAbstractAPICommand methodsFor: 'recovered'!
label
    ^'Abstract API command'
! !

"ASDBase.ic method 0x2003c968; bytecode file offset 0x93bf94"
!SGAbstractAPICommand methodsFor: 'recovered'!
allBasicCommands
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGAbstractBasicCommand.
    recoveredValue1 := (recoveredValue0) allSubclasses.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005fed8; bytecode file offset 0x95c79c"
!SGAbstractAPICommand methodsFor: 'recovered'!
execute
    (self) executeWithCheck: (true).
    ^self
! !

"ASDBase.ic method 0x200617e4; bytecode file offset 0x95e838"
!SGAbstractAPICommand methodsFor: 'recovered'!
asapFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectLabel.
    recoveredValue1 := (recoveredValue0) , ('.a2l').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062f28; bytecode file offset 0x95f8b0"
!SGAbstractAPICommand methodsFor: 'recovered'!
asapFullPathFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) destinationPath.
    recoveredValue1 := (self) asapFileName.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006bc80; bytecode file offset 0x96873c"
!SGAbstractAPICommand methodsFor: 'recovered'!
requiredCommand
    | recoveredValue0 |
    recoveredValue0 := requiredCommand.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c3e4; bytecode file offset 0x9692b0"
!SGAbstractAPICommand methodsFor: 'recovered'!
getCurrentExportFileIndex
    | recoveredValue0 |
    recoveredValue0 := exportFileIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073338; bytecode file offset 0x970b34"
!SGAbstractAPICommand methodsFor: 'recovered'!
createRequiredCommand
    ^nil
! !

"ASDBase.ic method 0x200759f4; bytecode file offset 0x9757c8"
!SGAbstractAPICommand methodsFor: 'recovered'!
requiresAPICommandExecution
    ^true
! !

"ASDBase.ic method 0x2007c6f4; bytecode file offset 0x97c330"
!SGAbstractAPICommand methodsFor: 'recovered'!
isTransferCommand
    ^false
! !

"ASDBase.ic method 0x2007e724; bytecode file offset 0x97c330"
!SGAbstractAPICommand methodsFor: 'recovered'!
isExportCommand
    ^false
! !

"ASDBase.ic method 0x20095508; bytecode file offset 0x991fb4"
!SGAbstractAPICommand methodsFor: 'recovered'!
collectActiveBasicCommands: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) basicCommands.
    (recoveredValue0) addAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097bc4; bytecode file offset 0x995850"
!SGAbstractAPICommand methodsFor: 'recovered'!
addPreCommandBasicCommand: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) basicCommands.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addFirst: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097d64; bytecode file offset 0x995850"
!SGAbstractAPICommand methodsFor: 'recovered'!
addBasicCommand: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) basicCommands.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a001c; bytecode file offset 0x99c9e0"
!SGAbstractAPICommand methodsFor: 'recovered'!
setAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (recoveredValue0) getWorkingPath.
    (self) destinationPath: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b19a4; bytecode file offset 0x9ae258"
!SGAbstractAPICommand methodsFor: 'recovered'!
currentExportFileIndex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := exportFileIndex.
    recoveredValue1 := (recoveredValue0) + (1).
    exportFileIndex := recoveredValue1.
    recoveredValue2 := exportFileIndex.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c2358; bytecode file offset 0x9bf474"
!SGAbstractAPICommand methodsFor: 'recovered'!
requiredCommand: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    requiredCommand := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c33ac; bytecode file offset 0x9bfde0"
!SGAbstractAPICommand methodsFor: 'recovered'!
setCurrentExportFileIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exportFileIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d3cb0; bytecode file offset 0x9d058c"
!SGAbstractAPICommand methodsFor: 'recovered'!
fatalAPICommandAborted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (self) label.
    (recoveredValue0) fatalError: ('CommandAborted') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e21b4; bytecode file offset 0x9dec60"
!SGAbstractAPICommand methodsFor: 'recovered'!
requiresExecution
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
            recoveredStack2 := (recoveredStack2) continue.
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
            recoveredStack1 := (recoveredStack1) requiresAPICommandExecution.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e68f0; bytecode file offset 0x9e31ac"
!SGAbstractAPICommand methodsFor: 'recovered'!
initialize
    super initialize.
    exportFileIndex := 0.
    ^self
! !

"ASDBase.ic method 0x201615b8; bytecode file offset 0xa5de7c"
!SGAbstractAPICommand methodsFor: 'recovered'!
selectBasicCommands
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allBasicCommands.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) createBasicCommand: (recoveredBlock5Value0).
    recoveredBlock5Value2 := (self) selectBasicCommand: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2018dd70; bytecode file offset 0xa8a644"
!SGAbstractAPICommand methodsFor: 'recovered'!
basicCommands
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := basicCommands.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := OrderedCollection.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    basicCommands := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := basicCommands.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018f268; bytecode file offset 0xa8bb2c"
!SGAbstractAPICommand methodsFor: 'recovered'!
checkRestrictions
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) checkAPICommandRestrictions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) continue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkBasicCommandRestrictions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) fatalAPICommandAborted.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) continue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d77c4; bytecode file offset 0xad408c"
!SGAbstractAPICommand methodsFor: 'recovered'!
executeAPICommand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) basicCommands.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) continue.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 23].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) execute.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) status: (recoveredBlock5Stack2).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201e449c; bytecode file offset 0xae0d64"
!SGAbstractAPICommand methodsFor: 'recovered'!
checkBasicCommandRestrictions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) basicCommands.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) continue.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 23].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) checkRestrictions.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) status: (recoveredBlock5Stack2).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) continue.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f64dc; bytecode file offset 0xaf2db8"
!SGAbstractAPICommand methodsFor: 'recovered'!
codeManager: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super codeManager: (recoveredValue0).
    recoveredValue1 := (self) requiredCommand.
    recoveredValue2 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := (self) requiredCommand.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) codeManager: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201f64f4; bytecode file offset 0xaf2db8"
!SGAbstractAPICommand methodsFor: 'recovered'!
make: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super make: (recoveredValue0).
    recoveredValue1 := (self) requiredCommand.
    recoveredValue2 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := (self) requiredCommand.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) make: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201f9634; bytecode file offset 0xaf5f34"
!SGAbstractAPICommand methodsFor: 'recovered'!
collectExportedFiles
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) basicCommands.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) collectExportedFiles: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20243178; bytecode file offset 0xb3fa40"
!SGAbstractAPICommand methodsFor: 'recovered'!
allActiveBasicCommands
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) requiredCommand.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) requiredCommand.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) collectActiveBasicCommands: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) notNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) collectActiveBasicCommands: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202651b8; bytecode file offset 0xb61a84"
!SGAbstractAPICommand methodsFor: 'recovered'!
compileSourceCollector
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allActiveBasicCommands.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) compileSourceCollector.
    recoveredLocal1 := recoveredBlock5Value1.
    recoveredBlock5Value2 := recoveredLocal1.
    recoveredBlock5Value3 := [
    | recoveredBlock5Block20Value0 |
    recoveredBlock5Block20Value0 := recoveredLocal1.
    ^recoveredBlock5Block20Value0
].
    recoveredBlock5Value4 := (recoveredBlock5Value2) notNil: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := SGANSICSourceCollector.
    recoveredValue3 := (recoveredValue2) create.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202f5084; bytecode file offset 0xbf1960"
!SGAbstractAPICommand methodsFor: 'recovered'!
executeWithCheck: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) checkAPICommandRestrictions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiredCommand.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := (self) requiredCommand.
    recoveredBlock12Value1 := (recoveredBlock12Value0) execute.
    recoveredBlock12Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) selectBasicCommands.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresExecution.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkBasicCommandRestrictions.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) executeAPICommand.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) continue.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) fatalAPICommandAborted.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032c564; bytecode file offset 0xc28e90"
!SGAbstractAPICommand methodsFor: 'recovered'!
initializeFileStructureForMakeGraph: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHeaderStructureModuleBased.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := SGModuleBasedHeaderFileStrategy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) fileStructureStrategy: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeSettings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHeaderStructureProjectBased.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Call_81023'.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := SGProjectBasedHeaderFileStrategy.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) fileStructureStrategy: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            super initializeFileStructureForMakeGraph: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203895c4; bytecode file offset 0xc85ea4"
!SGAbstractAPICommand methodsFor: 'recovered'!
printCommandsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('API Command: ').
    recoveredValue2 := (self) label.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    recoveredValue3 := (self) requiredCommand.
    recoveredValue4 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 |
    recoveredBlock17Value0 := recoveredArg1.
    recoveredBlock17Value1 := recoveredBlock17Value0.
    (recoveredBlock17Value1) cr.
    (recoveredBlock17Value0) nextPutAll: ('required [ ...').
    recoveredBlock17Value2 := (self) requiredCommand.
    recoveredBlock17Value3 := recoveredArg1.
    (recoveredBlock17Value2) printCommandOn: (recoveredBlock17Value3).
    recoveredBlock17Value4 := recoveredArg1.
    recoveredBlock17Value5 := recoveredBlock17Value4.
    (recoveredBlock17Value5) cr.
    recoveredBlock17Value6 := (recoveredBlock17Value4) nextPutAll: ('... ]').
    recoveredBlock17Value6
].
    (recoveredValue3) notNil: (recoveredValue4).
    recoveredValue5 := (self) basicCommands.
    recoveredValue6 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredBlock55Value1 := recoveredArg1.
    recoveredBlock55Value2 := (recoveredBlock55Value0) printCommandOn: (recoveredBlock55Value1).
    recoveredBlock55Value2
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x204641ec; bytecode file offset 0xd60b00"
!SGAbstractAPICommand methodsFor: 'recovered'!
writeExportContentsTable
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := ('Writing') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asSymbol.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) monitorManager.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) getCurrentExportFileIndex.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack3 := 0.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) > (recoveredBlock24Stack3).
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 40] ifFalse: [recoveredBlock24PC := 113].
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) createMakefileStream.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) basicCommands.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack2 := [:recoveredBlock24Block50Arg1 | 
    | recoveredBlock24Block50Stack0 recoveredBlock24Block50Stack1 recoveredBlock24Block50Stack2 recoveredBlock24Block50Stack3 recoveredBlock24Block50PC recoveredBlock24Block50Step recoveredBlock24Block50Done recoveredBlock24Block50Result |
    recoveredBlock24Block50Stack0 := nil.
    recoveredBlock24Block50PC := 56.
    recoveredBlock24Block50Done := false.
    [recoveredBlock24Block50Done not] whileTrue: [
        recoveredBlock24Block50Step := recoveredBlock24Block50PC.
        recoveredBlock24Block50Step = 56 ifTrue: [
            recoveredBlock24Block50Stack1 := nil.
            recoveredBlock24Block50PC := 57.
        ].
        recoveredBlock24Block50Step = 57 ifTrue: [
            recoveredBlock24Block50Stack2 := recoveredBlock24Block50Arg1.
            recoveredBlock24Block50PC := 58.
        ].
        recoveredBlock24Block50Step = 58 ifTrue: [
            recoveredBlock24Block50Stack2 := (recoveredBlock24Block50Stack2) sources.
            recoveredBlock24Block50PC := 60.
        ].
        recoveredBlock24Block50Step = 60 ifTrue: [
            recoveredBlock24Block50Stack2 := (recoveredBlock24Block50Stack2) notEmpty.
            recoveredBlock24Block50PC := 62.
        ].
        recoveredBlock24Block50Step = 62 ifTrue: [
            (recoveredBlock24Block50Stack2) ifTrue: [recoveredBlock24Block50PC := 66] ifFalse: [recoveredBlock24Block50PC := 73].
        ].
        recoveredBlock24Block50Step = 66 ifTrue: [
            recoveredBlock24Block50PC := 67.
        ].
        recoveredBlock24Block50Step = 67 ifTrue: [
            recoveredBlock24Block50Stack1 := recoveredBlock24Block50Arg1.
            recoveredBlock24Block50PC := 68.
        ].
        recoveredBlock24Block50Step = 68 ifTrue: [
            recoveredBlock24Block50Stack2 := recoveredLocal2.
            recoveredBlock24Block50PC := 71.
        ].
        recoveredBlock24Block50Step = 71 ifTrue: [
            recoveredBlock24Block50Stack1 := (recoveredBlock24Block50Stack1) writeExportContentsTableOn: (recoveredBlock24Block50Stack2).
            recoveredBlock24Block50PC := 73.
        ].
        recoveredBlock24Block50Step = 73 ifTrue: [
            recoveredBlock24Block50Result := recoveredBlock24Block50Stack1.
            recoveredBlock24Block50Done := true.
        ].
    ].
    recoveredBlock24Block50Result
].
            recoveredBlock24PC := 74.
        ].
        recoveredBlock24Step = 74 ifTrue: [
            (recoveredBlock24Stack1) do: (recoveredBlock24Stack2).
            recoveredBlock24PC := 76.
        ].
        recoveredBlock24Step = 76 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 77.
        ].
        recoveredBlock24Step = 77 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) hostAccess.
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 80.
        ].
        recoveredBlock24Step = 80 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) destinationPath.
            recoveredBlock24PC := 82.
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24Stack3 := self.
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) hostAccess.
            recoveredBlock24PC := 85.
        ].
        recoveredBlock24Step = 85 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) fileTableFileName.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) , (recoveredBlock24Stack3).
            recoveredBlock24PC := 88.
        ].
        recoveredBlock24Step = 88 ifTrue: [
            recoveredBlock24Stack3 := recoveredLocal2.
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) contents.
            recoveredBlock24PC := 93.
        ].
        recoveredBlock24Step = 93 ifTrue: [
            (recoveredBlock24Stack1) writeFile: (recoveredBlock24Stack2) contents: (recoveredBlock24Stack3).
            recoveredBlock24PC := 95.
        ].
        recoveredBlock24Step = 95 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 96.
        ].
        recoveredBlock24Step = 96 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) codeManager.
            recoveredBlock24PC := 98.
        ].
        recoveredBlock24Step = 98 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) monitorManager.
            recoveredBlock24PC := 100.
        ].
        recoveredBlock24Step = 100 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 101.
        ].
        recoveredBlock24Step = 101 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) hostAccess.
            recoveredBlock24PC := 103.
        ].
        recoveredBlock24Step = 103 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) fileTableFileName.
            recoveredBlock24PC := 105.
        ].
        recoveredBlock24Step = 105 ifTrue: [
            recoveredBlock24Stack3 := ''.
            recoveredBlock24PC := 107.
        ].
        recoveredBlock24Step = 107 ifTrue: [
            recoveredBlock24Stack4 := self.
            recoveredBlock24PC := 108.
        ].
        recoveredBlock24Step = 108 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) currentExportFileIndex.
            recoveredBlock24PC := 110.
        ].
        recoveredBlock24Step = 110 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) makeFileName: (recoveredBlock24Stack2) extension: (recoveredBlock24Stack3) index: (recoveredBlock24Stack4).
            recoveredBlock24PC := 113.
        ].
        recoveredBlock24Step = 113 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue4) doTiming: (recoveredValue5) title: ('Writing Make file to directory') max: (1) for: (recoveredValue6).
    ^self
! !

