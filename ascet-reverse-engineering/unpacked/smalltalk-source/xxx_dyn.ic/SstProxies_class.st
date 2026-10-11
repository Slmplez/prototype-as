"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001198; bytecode file offset 0x626a4"
!SstProxies class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001390; bytecode file offset 0x626a4"
!SstProxies class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200029a0; bytecode file offset 0x63b1c"
!SstProxies class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x2000b81c; bytecode file offset 0x6c8f4"
!SstProxies class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) includeClassNamed: ('SstRemoteReference').
    (recoveredValue0) includeMethod: ('basicClass') inClassNamed: ('SstObject').
    ^self
! !

"xxx_dyn.ic method 0x200187a4; bytecode file offset 0x79c2c"
!SstProxies class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b208Arg1 | 
    | block2800b208Stack0 block2800b208Stack1 block2800b208Stack2 block2800b208Stack3 block2800b208Stack4 block2800b208PC block2800b208Step block2800b208Done block2800b208Result |
    block2800b208Stack0 := self.
    block2800b208PC := 4.
    block2800b208Done := false.
    [block2800b208Done not] whileTrue: [
        block2800b208Step := block2800b208PC.
        block2800b208Step = 4 ifTrue: [
            block2800b208Stack1 := block2800b208Arg1.
            block2800b208PC := 5.
        ].
        block2800b208Step = 5 ifTrue: [
            block2800b208Stack2 := 'setupAfterLoad'.
            block2800b208PC := 7.
        ].
        block2800b208Step = 7 ifTrue: [
            block2800b208Stack1 := (block2800b208Stack1) respondsTo: (block2800b208Stack2).
            block2800b208PC := 8.
        ].
        block2800b208Step = 8 ifTrue: [
            (block2800b208Stack1) ifTrue: [block2800b208PC := 12] ifFalse: [block2800b208PC := 15].
        ].
        block2800b208Step = 12 ifTrue: [
            block2800b208Stack1 := block2800b208Arg1.
            block2800b208PC := 13.
        ].
        block2800b208Step = 13 ifTrue: [
            (block2800b208Stack1) setupAfterLoad.
            block2800b208PC := 15.
        ].
        block2800b208Step = 15 ifTrue: [
            block2800b208Stack1 := nil.
            block2800b208PC := 16.
        ].
        block2800b208Step = 16 ifTrue: [
            block2800b208Stack2 := block2800b208Arg1.
            block2800b208PC := 17.
        ].
        block2800b208Step = 17 ifTrue: [
            block2800b208Stack2 := (block2800b208Stack2) class.
            block2800b208PC := 18.
        ].
        block2800b208Step = 18 ifTrue: [
            block2800b208Stack3 := 'setupAfterLoadNonInherited'.
            block2800b208PC := 20.
        ].
        block2800b208Step = 20 ifTrue: [
            block2800b208Stack2 := (block2800b208Stack2) includesSelector: (block2800b208Stack3).
            block2800b208PC := 22.
        ].
        block2800b208Step = 22 ifTrue: [
            (block2800b208Stack2) ifTrue: [block2800b208PC := 26] ifFalse: [block2800b208PC := 30].
        ].
        block2800b208Step = 26 ifTrue: [
            block2800b208PC := 27.
        ].
        block2800b208Step = 27 ifTrue: [
            block2800b208Stack1 := block2800b208Arg1.
            block2800b208PC := 28.
        ].
        block2800b208Step = 28 ifTrue: [
            block2800b208Stack1 := (block2800b208Stack1) setupAfterLoadNonInherited.
            block2800b208PC := 30.
        ].
        block2800b208Step = 30 ifTrue: [
            block2800b208Result := block2800b208Stack1.
            block2800b208Done := true.
        ].
    ].
    block2800b208Result
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

"xxx_dyn.ic method 0x200189e4; bytecode file offset 0x79c2c"
!SstProxies class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b448Arg1 | 
    | block2800b448Stack0 block2800b448Stack1 block2800b448Stack2 block2800b448Stack3 block2800b448Stack4 block2800b448PC block2800b448Step block2800b448Done block2800b448Result |
    block2800b448Stack0 := self.
    block2800b448PC := 4.
    block2800b448Done := false.
    [block2800b448Done not] whileTrue: [
        block2800b448Step := block2800b448PC.
        block2800b448Step = 4 ifTrue: [
            block2800b448Stack1 := block2800b448Arg1.
            block2800b448PC := 5.
        ].
        block2800b448Step = 5 ifTrue: [
            block2800b448Stack2 := 'cleanUpBeforeRemove'.
            block2800b448PC := 7.
        ].
        block2800b448Step = 7 ifTrue: [
            block2800b448Stack1 := (block2800b448Stack1) respondsTo: (block2800b448Stack2).
            block2800b448PC := 8.
        ].
        block2800b448Step = 8 ifTrue: [
            (block2800b448Stack1) ifTrue: [block2800b448PC := 12] ifFalse: [block2800b448PC := 15].
        ].
        block2800b448Step = 12 ifTrue: [
            block2800b448Stack1 := block2800b448Arg1.
            block2800b448PC := 13.
        ].
        block2800b448Step = 13 ifTrue: [
            (block2800b448Stack1) cleanUpBeforeRemove.
            block2800b448PC := 15.
        ].
        block2800b448Step = 15 ifTrue: [
            block2800b448Stack1 := nil.
            block2800b448PC := 16.
        ].
        block2800b448Step = 16 ifTrue: [
            block2800b448Stack2 := block2800b448Arg1.
            block2800b448PC := 17.
        ].
        block2800b448Step = 17 ifTrue: [
            block2800b448Stack2 := (block2800b448Stack2) class.
            block2800b448PC := 18.
        ].
        block2800b448Step = 18 ifTrue: [
            block2800b448Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b448PC := 20.
        ].
        block2800b448Step = 20 ifTrue: [
            block2800b448Stack2 := (block2800b448Stack2) includesSelector: (block2800b448Stack3).
            block2800b448PC := 22.
        ].
        block2800b448Step = 22 ifTrue: [
            (block2800b448Stack2) ifTrue: [block2800b448PC := 26] ifFalse: [block2800b448PC := 30].
        ].
        block2800b448Step = 26 ifTrue: [
            block2800b448PC := 27.
        ].
        block2800b448Step = 27 ifTrue: [
            block2800b448Stack1 := block2800b448Arg1.
            block2800b448PC := 28.
        ].
        block2800b448Step = 28 ifTrue: [
            block2800b448Stack1 := (block2800b448Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b448PC := 30.
        ].
        block2800b448Step = 30 ifTrue: [
            block2800b448Result := block2800b448Stack1.
            block2800b448Done := true.
        ].
    ].
    block2800b448Result
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

