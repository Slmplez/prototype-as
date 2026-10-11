"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002da8; bytecode file offset 0x8ffcfc"
!SGAbstractBasicCommand methodsFor: 'recovered'!
executeBasicCommand
    ^self
! !

"ASDBase.ic method 0x200035c0; bytecode file offset 0x90206c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
writeExportContentsTableOn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003658; bytecode file offset 0x90206c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
selectForAPICommandCompile: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004170; bytecode file offset 0x90206c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
selectForAPICommandCompileExternalCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004318; bytecode file offset 0x90206c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
selectForAPIPreviewCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200047f8; bytecode file offset 0x90206c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
selectForAPICommandTransferEHooks: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004978; bytecode file offset 0x90206c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
selectForAPICommandExportCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005048; bytecode file offset 0x90206c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
selectForAPICommandCustomCompile: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005120; bytecode file offset 0x90206c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
collectExportedFiles: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200057b0; bytecode file offset 0x90206c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
selectForAPICommandTransferIntecrio: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20037074; bytecode file offset 0x934580"
!SGAbstractBasicCommand methodsFor: 'recovered'!
currentExportFileIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) apiCommand.
    recoveredValue1 := (recoveredValue0) currentExportFileIndex.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200520dc; bytecode file offset 0x94f0e0"
!SGAbstractBasicCommand methodsFor: 'recovered'!
requiresSCOOPIXGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) scoopixSettings.
    recoveredValue2 := (recoveredValue1) mustPerformScoopixGeneration.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ec74; bytecode file offset 0x95b5ec"
!SGAbstractBasicCommand methodsFor: 'recovered'!
disable
    (self) enabled: (false).
    ^self
! !

"ASDBase.ic method 0x2005fdf4; bytecode file offset 0x95c79c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
enable
    (self) enabled: (true).
    ^self
! !

"ASDBase.ic method 0x2006a9bc; bytecode file offset 0x967a18"
!SGAbstractBasicCommand methodsFor: 'recovered'!
isEnabled
    | recoveredValue0 |
    recoveredValue0 := enabled.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bc40; bytecode file offset 0x96873c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
apiCommand
    | recoveredValue0 |
    recoveredValue0 := apiCommand.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200740d0; bytecode file offset 0x970b34"
!SGAbstractBasicCommand methodsFor: 'recovered'!
compileSourceCollector
    ^nil
! !

"ASDBase.ic method 0x20074fec; bytecode file offset 0x9757c8"
!SGAbstractBasicCommand methodsFor: 'recovered'!
requiresAPICommandCompile
    ^true
! !

"ASDBase.ic method 0x20075fdc; bytecode file offset 0x9757c8"
!SGAbstractBasicCommand methodsFor: 'recovered'!
checkRestrictions
    ^true
! !

"ASDBase.ic method 0x20078364; bytecode file offset 0x9757c8"
!SGAbstractBasicCommand methodsFor: 'recovered'!
requiresBasicCommandExecution
    ^true
! !

"ASDBase.ic method 0x200c175c; bytecode file offset 0x9beac8"
!SGAbstractBasicCommand methodsFor: 'recovered'!
enabled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    enabled := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b28; bytecode file offset 0x9bf474"
!SGAbstractBasicCommand methodsFor: 'recovered'!
apiCommand: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    apiCommand := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6908; bytecode file offset 0x9d31d4"
!SGAbstractBasicCommand methodsFor: 'recovered'!
initialize
    super initialize.
    enabled := true.
    ^self
! !

"ASDBase.ic method 0x200e21a4; bytecode file offset 0x9dec60"
!SGAbstractBasicCommand methodsFor: 'recovered'!
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
            recoveredStack2 := (recoveredStack2) isEnabled.
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
            recoveredStack1 := (recoveredStack1) requiresBasicCommandExecution.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e42ac; bytecode file offset 0x9e0b6c"
!SGAbstractBasicCommand methodsFor: 'recovered'!
execute
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresExecution.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) executeBasicCommand.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) continue.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010ace0; bytecode file offset 0xa075a0"
!SGAbstractBasicCommand methodsFor: 'recovered'!
requiresRTEInputFiles
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20183804; bytecode file offset 0xa800c8"
!SGAbstractBasicCommand methodsFor: 'recovered'!
initializeCodeStorageManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) apiCommand.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := (self) apiCommand.
    recoveredBlock5Value1 := (recoveredBlock5Value0) initializeCodeStorageManager.
    ^recoveredBlock5Value1
].
    (recoveredValue0) notNil: (recoveredValue1).
    recoveredValue2 := super initializeCodeStorageManager.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20195e30; bytecode file offset 0xa926f4"
!SGAbstractBasicCommand methodsFor: 'recovered'!
selectForAPICommandBuild: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEHooksTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) selectForAPICommandTransferEHooks: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) selectForAPICommandCompile: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c690c; bytecode file offset 0xbc31d4"
!SGAbstractBasicCommand methodsFor: 'recovered'!
initializeFileStructureForMakeGraph: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) apiCommand.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) apiCommand.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) initializeFileStructureForMakeGraph: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) notNil: (recoveredValue1).
    recoveredValue2 := (self) codeManager.
    recoveredValue3 := (recoveredValue2) apiCommand.
    recoveredValue4 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := (self) codeManager.
    recoveredBlock23Value1 := (recoveredBlock23Value0) apiCommand.
    recoveredBlock23Value2 := recoveredArg1.
    recoveredBlock23Value3 := (recoveredBlock23Value1) initializeFileStructureForMakeGraph: (recoveredBlock23Value2).
    ^recoveredBlock23Value3
].
    (recoveredValue3) notNil: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := super initializeFileStructureForMakeGraph: (recoveredValue5).
    ^recoveredValue6
! !

