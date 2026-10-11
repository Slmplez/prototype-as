"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e4af0; bytecode file offset 0x9e13e4"
!SGExportAutosarXmlDuringGenerateCommand methodsFor: 'recovered'!
executeBasicCommand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) destinationPath.
    (recoveredValue0) createHostDirectory: (recoveredValue1).
    (self) exportSources.
    ^self
! !

"ASDBase.ic method 0x20152710; bytecode file offset 0xa4efd0"
!SGExportAutosarXmlDuringGenerateCommand methodsFor: 'recovered'!
collectSources
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sourceCollector.
    recoveredValue1 := [
    ^self
].
    (recoveredValue0) notNil: (recoveredValue1).
    (self) collectCommandSources.
    ^self
! !

"ASDBase.ic method 0x20155474; bytecode file offset 0xa51d38"
!SGExportAutosarXmlDuringGenerateCommand methodsFor: 'recovered'!
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
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
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

