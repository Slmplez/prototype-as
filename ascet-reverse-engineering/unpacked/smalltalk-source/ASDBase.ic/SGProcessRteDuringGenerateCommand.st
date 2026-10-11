"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009914; bytecode file offset 0x908be4"
!SGProcessRteDuringGenerateCommand methodsFor: 'recovered'!
placeSources
    | recoveredValue0 |
    recoveredValue0 := (self) execute.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d224; bytecode file offset 0x909e08"
!SGProcessRteDuringGenerateCommand methodsFor: 'recovered'!
processSources: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2003fc40; bytecode file offset 0x93c75c"
!SGProcessRteDuringGenerateCommand methodsFor: 'recovered'!
createExportCommand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGExportAutosarXmlDuringGenerateCommand.
    recoveredValue1 := (self) createBasicCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009b494; bytecode file offset 0x997d4c"
!SGProcessRteDuringGenerateCommand methodsFor: 'recovered'!
generateMakefileOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredLocal1.
    recoveredValue1 := recoveredArg1.
    (self) generateMakefile: (recoveredValue0) on: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20177378; bytecode file offset 0xa73c3c"
!SGProcessRteDuringGenerateCommand methodsFor: 'recovered'!
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
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
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

