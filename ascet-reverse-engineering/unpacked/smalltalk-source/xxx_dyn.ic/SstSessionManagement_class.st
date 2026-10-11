"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000100c; bytecode file offset 0x626a4"
!SstSessionManagement class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API User' 'SST-API Developer' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001024; bytecode file offset 0x626a4"
!SstSessionManagement class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API User' 'SST-API Developer' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20002940; bytecode file offset 0x63b1c"
!SstSessionManagement class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x200187c8; bytecode file offset 0x79c2c"
!SstSessionManagement class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b22cArg1 | 
    | block2800b22cStack0 block2800b22cStack1 block2800b22cStack2 block2800b22cStack3 block2800b22cStack4 block2800b22cPC block2800b22cStep block2800b22cDone block2800b22cResult |
    block2800b22cStack0 := self.
    block2800b22cPC := 4.
    block2800b22cDone := false.
    [block2800b22cDone not] whileTrue: [
        block2800b22cStep := block2800b22cPC.
        block2800b22cStep = 4 ifTrue: [
            block2800b22cStack1 := block2800b22cArg1.
            block2800b22cPC := 5.
        ].
        block2800b22cStep = 5 ifTrue: [
            block2800b22cStack2 := 'setupAfterLoad'.
            block2800b22cPC := 7.
        ].
        block2800b22cStep = 7 ifTrue: [
            block2800b22cStack1 := (block2800b22cStack1) respondsTo: (block2800b22cStack2).
            block2800b22cPC := 8.
        ].
        block2800b22cStep = 8 ifTrue: [
            (block2800b22cStack1) ifTrue: [block2800b22cPC := 12] ifFalse: [block2800b22cPC := 15].
        ].
        block2800b22cStep = 12 ifTrue: [
            block2800b22cStack1 := block2800b22cArg1.
            block2800b22cPC := 13.
        ].
        block2800b22cStep = 13 ifTrue: [
            (block2800b22cStack1) setupAfterLoad.
            block2800b22cPC := 15.
        ].
        block2800b22cStep = 15 ifTrue: [
            block2800b22cStack1 := nil.
            block2800b22cPC := 16.
        ].
        block2800b22cStep = 16 ifTrue: [
            block2800b22cStack2 := block2800b22cArg1.
            block2800b22cPC := 17.
        ].
        block2800b22cStep = 17 ifTrue: [
            block2800b22cStack2 := (block2800b22cStack2) class.
            block2800b22cPC := 18.
        ].
        block2800b22cStep = 18 ifTrue: [
            block2800b22cStack3 := 'setupAfterLoadNonInherited'.
            block2800b22cPC := 20.
        ].
        block2800b22cStep = 20 ifTrue: [
            block2800b22cStack2 := (block2800b22cStack2) includesSelector: (block2800b22cStack3).
            block2800b22cPC := 22.
        ].
        block2800b22cStep = 22 ifTrue: [
            (block2800b22cStack2) ifTrue: [block2800b22cPC := 26] ifFalse: [block2800b22cPC := 30].
        ].
        block2800b22cStep = 26 ifTrue: [
            block2800b22cPC := 27.
        ].
        block2800b22cStep = 27 ifTrue: [
            block2800b22cStack1 := block2800b22cArg1.
            block2800b22cPC := 28.
        ].
        block2800b22cStep = 28 ifTrue: [
            block2800b22cStack1 := (block2800b22cStack1) setupAfterLoadNonInherited.
            block2800b22cPC := 30.
        ].
        block2800b22cStep = 30 ifTrue: [
            block2800b22cResult := block2800b22cStack1.
            block2800b22cDone := true.
        ].
    ].
    block2800b22cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018b28; bytecode file offset 0x79c2c"
!SstSessionManagement class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b58cArg1 | 
    | block2800b58cStack0 block2800b58cStack1 block2800b58cStack2 block2800b58cStack3 block2800b58cStack4 block2800b58cPC block2800b58cStep block2800b58cDone block2800b58cResult |
    block2800b58cStack0 := self.
    block2800b58cPC := 4.
    block2800b58cDone := false.
    [block2800b58cDone not] whileTrue: [
        block2800b58cStep := block2800b58cPC.
        block2800b58cStep = 4 ifTrue: [
            block2800b58cStack1 := block2800b58cArg1.
            block2800b58cPC := 5.
        ].
        block2800b58cStep = 5 ifTrue: [
            block2800b58cStack2 := 'cleanUpBeforeRemove'.
            block2800b58cPC := 7.
        ].
        block2800b58cStep = 7 ifTrue: [
            block2800b58cStack1 := (block2800b58cStack1) respondsTo: (block2800b58cStack2).
            block2800b58cPC := 8.
        ].
        block2800b58cStep = 8 ifTrue: [
            (block2800b58cStack1) ifTrue: [block2800b58cPC := 12] ifFalse: [block2800b58cPC := 15].
        ].
        block2800b58cStep = 12 ifTrue: [
            block2800b58cStack1 := block2800b58cArg1.
            block2800b58cPC := 13.
        ].
        block2800b58cStep = 13 ifTrue: [
            (block2800b58cStack1) cleanUpBeforeRemove.
            block2800b58cPC := 15.
        ].
        block2800b58cStep = 15 ifTrue: [
            block2800b58cStack1 := nil.
            block2800b58cPC := 16.
        ].
        block2800b58cStep = 16 ifTrue: [
            block2800b58cStack2 := block2800b58cArg1.
            block2800b58cPC := 17.
        ].
        block2800b58cStep = 17 ifTrue: [
            block2800b58cStack2 := (block2800b58cStack2) class.
            block2800b58cPC := 18.
        ].
        block2800b58cStep = 18 ifTrue: [
            block2800b58cStack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b58cPC := 20.
        ].
        block2800b58cStep = 20 ifTrue: [
            block2800b58cStack2 := (block2800b58cStack2) includesSelector: (block2800b58cStack3).
            block2800b58cPC := 22.
        ].
        block2800b58cStep = 22 ifTrue: [
            (block2800b58cStack2) ifTrue: [block2800b58cPC := 26] ifFalse: [block2800b58cPC := 30].
        ].
        block2800b58cStep = 26 ifTrue: [
            block2800b58cPC := 27.
        ].
        block2800b58cStep = 27 ifTrue: [
            block2800b58cStack1 := block2800b58cArg1.
            block2800b58cPC := 28.
        ].
        block2800b58cStep = 28 ifTrue: [
            block2800b58cStack1 := (block2800b58cStack1) cleanUpBeforeRemoveNonInherited.
            block2800b58cPC := 30.
        ].
        block2800b58cStep = 30 ifTrue: [
            block2800b58cResult := block2800b58cStack1.
            block2800b58cDone := true.
        ].
    ].
    block2800b58cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

