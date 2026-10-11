"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200011bc; bytecode file offset 0x626a4"
!SstCommunications class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200013b4; bytecode file offset 0x626a4"
!SstCommunications class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200029f4; bytecode file offset 0x63b1c"
!SstCommunications class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x20005304; bytecode file offset 0x663d4"
!SstCommunications class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstOSObjectManager.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) preStartUp.
    ^self
! !

"xxx_dyn.ic method 0x200188e8; bytecode file offset 0x79c2c"
!SstCommunications class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b34cArg1 | 
    | block2800b34cStack0 block2800b34cStack1 block2800b34cStack2 block2800b34cStack3 block2800b34cStack4 block2800b34cPC block2800b34cStep block2800b34cDone block2800b34cResult |
    block2800b34cStack0 := self.
    block2800b34cPC := 4.
    block2800b34cDone := false.
    [block2800b34cDone not] whileTrue: [
        block2800b34cStep := block2800b34cPC.
        block2800b34cStep = 4 ifTrue: [
            block2800b34cStack1 := block2800b34cArg1.
            block2800b34cPC := 5.
        ].
        block2800b34cStep = 5 ifTrue: [
            block2800b34cStack2 := 'setupAfterLoad'.
            block2800b34cPC := 7.
        ].
        block2800b34cStep = 7 ifTrue: [
            block2800b34cStack1 := (block2800b34cStack1) respondsTo: (block2800b34cStack2).
            block2800b34cPC := 8.
        ].
        block2800b34cStep = 8 ifTrue: [
            (block2800b34cStack1) ifTrue: [block2800b34cPC := 12] ifFalse: [block2800b34cPC := 15].
        ].
        block2800b34cStep = 12 ifTrue: [
            block2800b34cStack1 := block2800b34cArg1.
            block2800b34cPC := 13.
        ].
        block2800b34cStep = 13 ifTrue: [
            (block2800b34cStack1) setupAfterLoad.
            block2800b34cPC := 15.
        ].
        block2800b34cStep = 15 ifTrue: [
            block2800b34cStack1 := nil.
            block2800b34cPC := 16.
        ].
        block2800b34cStep = 16 ifTrue: [
            block2800b34cStack2 := block2800b34cArg1.
            block2800b34cPC := 17.
        ].
        block2800b34cStep = 17 ifTrue: [
            block2800b34cStack2 := (block2800b34cStack2) class.
            block2800b34cPC := 18.
        ].
        block2800b34cStep = 18 ifTrue: [
            block2800b34cStack3 := 'setupAfterLoadNonInherited'.
            block2800b34cPC := 20.
        ].
        block2800b34cStep = 20 ifTrue: [
            block2800b34cStack2 := (block2800b34cStack2) includesSelector: (block2800b34cStack3).
            block2800b34cPC := 22.
        ].
        block2800b34cStep = 22 ifTrue: [
            (block2800b34cStack2) ifTrue: [block2800b34cPC := 26] ifFalse: [block2800b34cPC := 30].
        ].
        block2800b34cStep = 26 ifTrue: [
            block2800b34cPC := 27.
        ].
        block2800b34cStep = 27 ifTrue: [
            block2800b34cStack1 := block2800b34cArg1.
            block2800b34cPC := 28.
        ].
        block2800b34cStep = 28 ifTrue: [
            block2800b34cStack1 := (block2800b34cStack1) setupAfterLoadNonInherited.
            block2800b34cPC := 30.
        ].
        block2800b34cStep = 30 ifTrue: [
            block2800b34cResult := block2800b34cStack1.
            block2800b34cDone := true.
        ].
    ].
    block2800b34cResult
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

"xxx_dyn.ic method 0x20018a98; bytecode file offset 0x79c2c"
!SstCommunications class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b4fcArg1 | 
    | block2800b4fcStack0 block2800b4fcStack1 block2800b4fcStack2 block2800b4fcStack3 block2800b4fcStack4 block2800b4fcPC block2800b4fcStep block2800b4fcDone block2800b4fcResult |
    block2800b4fcStack0 := self.
    block2800b4fcPC := 4.
    block2800b4fcDone := false.
    [block2800b4fcDone not] whileTrue: [
        block2800b4fcStep := block2800b4fcPC.
        block2800b4fcStep = 4 ifTrue: [
            block2800b4fcStack1 := block2800b4fcArg1.
            block2800b4fcPC := 5.
        ].
        block2800b4fcStep = 5 ifTrue: [
            block2800b4fcStack2 := 'cleanUpBeforeRemove'.
            block2800b4fcPC := 7.
        ].
        block2800b4fcStep = 7 ifTrue: [
            block2800b4fcStack1 := (block2800b4fcStack1) respondsTo: (block2800b4fcStack2).
            block2800b4fcPC := 8.
        ].
        block2800b4fcStep = 8 ifTrue: [
            (block2800b4fcStack1) ifTrue: [block2800b4fcPC := 12] ifFalse: [block2800b4fcPC := 15].
        ].
        block2800b4fcStep = 12 ifTrue: [
            block2800b4fcStack1 := block2800b4fcArg1.
            block2800b4fcPC := 13.
        ].
        block2800b4fcStep = 13 ifTrue: [
            (block2800b4fcStack1) cleanUpBeforeRemove.
            block2800b4fcPC := 15.
        ].
        block2800b4fcStep = 15 ifTrue: [
            block2800b4fcStack1 := nil.
            block2800b4fcPC := 16.
        ].
        block2800b4fcStep = 16 ifTrue: [
            block2800b4fcStack2 := block2800b4fcArg1.
            block2800b4fcPC := 17.
        ].
        block2800b4fcStep = 17 ifTrue: [
            block2800b4fcStack2 := (block2800b4fcStack2) class.
            block2800b4fcPC := 18.
        ].
        block2800b4fcStep = 18 ifTrue: [
            block2800b4fcStack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b4fcPC := 20.
        ].
        block2800b4fcStep = 20 ifTrue: [
            block2800b4fcStack2 := (block2800b4fcStack2) includesSelector: (block2800b4fcStack3).
            block2800b4fcPC := 22.
        ].
        block2800b4fcStep = 22 ifTrue: [
            (block2800b4fcStack2) ifTrue: [block2800b4fcPC := 26] ifFalse: [block2800b4fcPC := 30].
        ].
        block2800b4fcStep = 26 ifTrue: [
            block2800b4fcPC := 27.
        ].
        block2800b4fcStep = 27 ifTrue: [
            block2800b4fcStack1 := block2800b4fcArg1.
            block2800b4fcPC := 28.
        ].
        block2800b4fcStep = 28 ifTrue: [
            block2800b4fcStack1 := (block2800b4fcStack1) cleanUpBeforeRemoveNonInherited.
            block2800b4fcPC := 30.
        ].
        block2800b4fcStep = 30 ifTrue: [
            block2800b4fcResult := block2800b4fcStack1.
            block2800b4fcDone := true.
        ].
    ].
    block2800b4fcResult
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

"xxx_dyn.ic method 0x2001a960; bytecode file offset 0x7ba58"
!SstCommunications class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) excludeMethod: ('connectTo:') inClassNamed: ('SstConnectiveTransport').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) excludeMethod: ('findReadyConnection') inClassNamed: ('SstConnectiveTransport').
    (recoveredValue0) excludeMethod: ('makeConnectionAvailable:') inClassNamed: ('SstConnectiveTransport').
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) ignoreNoImplementorErrorsForMessageSend: ('sstEmail:to:') inMethod: ('sstEmailTo:') inClassNamed: ('String').
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) ignoreNoImplementorErrorsForMessageSend: ('sstGenerateAddress:configuration:') inClassMethod: ('fromUrl:') inClassNamed: ('SstEndpoint').
    ^self
! !

