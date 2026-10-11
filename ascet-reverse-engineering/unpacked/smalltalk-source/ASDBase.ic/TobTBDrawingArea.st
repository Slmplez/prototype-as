"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c7a68; bytecode file offset 0x9c432c"
!TobTBDrawingArea methodsFor: 'recovered'!
processMnemonicAndAcceleratorsBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    processMnemonicAndAcceleratorsBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e65b8; bytecode file offset 0x9e30bc"
!TobTBDrawingArea methodsFor: 'recovered'!
realizeAndMap
    | recoveredValue0 |
    super realizeAndMap.
    recoveredValue0 := (self) shell.
    (recoveredValue0) hookKeyDown.
    ^self
! !

"ASDBase.ic method 0x20168f30; bytecode file offset 0xa657f4"
!TobTBDrawingArea methodsFor: 'recovered'!
processMnemonicsAndAccelerators: recoveredArg1 excluding: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := super processMnemonicsAndAccelerators: (recoveredStack1) excluding: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) processMnemonicAndAcceleratorsBlock.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x2016fdec; bytecode file offset 0xa6c6a4"
!TobTBDrawingArea methodsFor: 'recovered'!
processMnemonicAndAcceleratorsBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := processMnemonicAndAcceleratorsBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280cea84Arg1 | 
    false
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := processMnemonicAndAcceleratorsBlock.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

