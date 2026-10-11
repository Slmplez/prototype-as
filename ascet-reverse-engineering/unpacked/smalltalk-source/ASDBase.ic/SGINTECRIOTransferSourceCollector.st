"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20120444; bytecode file offset 0xa1cd04"
!SGINTECRIOTransferSourceCollector methodsFor: 'recovered'!
toBeCompiledAdditionalFiles: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isHWCModuleNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            super toBeCompiledAdditionalFiles: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017c41c; bytecode file offset 0xa78ce0"
!SGINTECRIOTransferSourceCollector methodsFor: 'recovered'!
makeProjectNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) additionalFilesStorageHandle.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) additionalFilesStorageHandle: (nil).
    recoveredValue3 := recoveredArg1.
    super makeProjectNode: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) additionalFilesStorageHandle: (recoveredValue5).
    ^self
! !

