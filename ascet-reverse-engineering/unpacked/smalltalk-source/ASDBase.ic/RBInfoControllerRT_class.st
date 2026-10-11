"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000b10; bytecode file offset 0x8ffcfc"
!RBInfoControllerRT class methodsFor: 'recovered'!
_PRAGMA_RBInfoControllerRTNlsPool
    ^self
! !

"ASDBase.ic method 0x2004e57c; bytecode file offset 0x94d048"
!RBInfoControllerRT class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x2004ec90; bytecode file offset 0x94d048"
!RBInfoControllerRT class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x2005c1f4; bytecode file offset 0x958ab0"
!RBInfoControllerRT class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := GlobalInfoController.
    (recoveredValue0) removeInstance.
    ^self
! !

"ASDBase.ic method 0x20281e94; bytecode file offset 0xb7e7b0"
!RBInfoControllerRT class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) InstanceCreationSelector.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e13ccArg1 | 
    | block280e13ccStack0 block280e13ccStack1 block280e13ccStack2 block280e13ccStack3 block280e13ccStack4 block280e13ccPC block280e13ccStep block280e13ccDone block280e13ccResult |
    block280e13ccStack0 := self.
    block280e13ccPC := 4.
    block280e13ccDone := false.
    [block280e13ccDone not] whileTrue: [
        block280e13ccStep := block280e13ccPC.
        block280e13ccStep = 4 ifTrue: [
            block280e13ccStack1 := nil.
            block280e13ccPC := 5.
        ].
        block280e13ccStep = 5 ifTrue: [
            block280e13ccStack2 := block280e13ccArg1.
            block280e13ccPC := 6.
        ].
        block280e13ccStep = 6 ifTrue: [
            block280e13ccStack3 := 'createUIInstance'.
            block280e13ccPC := 8.
        ].
        block280e13ccStep = 8 ifTrue: [
            block280e13ccStack2 := (block280e13ccStack2) equals: (block280e13ccStack3).
            block280e13ccPC := 10.
        ].
        block280e13ccStep = 10 ifTrue: [
            (block280e13ccStack2) ifTrue: [block280e13ccPC := 14] ifFalse: [block280e13ccPC := 24].
        ].
        block280e13ccStep = 14 ifTrue: [
            block280e13ccPC := 15.
        ].
        block280e13ccStep = 15 ifTrue: [
            block280e13ccStack1 := Transcript.
            block280e13ccPC := 17.
        ].
        block280e13ccStep = 17 ifTrue: [
            block280e13ccStack2 := block280e13ccStack1.
            block280e13ccPC := 18.
        ].
        block280e13ccStep = 18 ifTrue: [
            (block280e13ccStack2) cr.
            block280e13ccPC := 20.
        ].
        block280e13ccStep = 20 ifTrue: [
            block280e13ccStack2 := 'ATTENTION: Redefined Info Controller''s InstanceCreationSelector: from #createUIInstance to #createInstance.'.
            block280e13ccPC := 22.
        ].
        block280e13ccStep = 22 ifTrue: [
            block280e13ccStack1 := (block280e13ccStack1) show: (block280e13ccStack2).
            block280e13ccPC := 24.
        ].
        block280e13ccStep = 24 ifTrue: [
            block280e13ccResult := block280e13ccStack1.
            block280e13ccDone := true.
        ].
    ].
    block280e13ccResult
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'createInstance'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) InstanceCreationSelector: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

