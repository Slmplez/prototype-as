"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001258; bytecode file offset 0x626a4"
!SstEnhancedSelectWIN class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API' 'SST-Infrastructure' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001324; bytecode file offset 0x626a4"
!SstEnhancedSelectWIN class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API' 'SST-Infrastructure' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200029c4; bytecode file offset 0x63b1c"
!SstEnhancedSelectWIN class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x2000a3a0; bytecode file offset 0x6b470"
!SstEnhancedSelectWIN class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) includeClassNamed: ('SstWinSockSocketDemultiplexor').
    (recoveredValue0) includeClassNamed: ('SstPollingWinSockSocketDemultiplexor').
    ^self
! !

"xxx_dyn.ic method 0x200186cc; bytecode file offset 0x79c2c"
!SstEnhancedSelectWIN class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b130Arg1 | 
    | block2800b130Stack0 block2800b130Stack1 block2800b130Stack2 block2800b130Stack3 block2800b130Stack4 block2800b130PC block2800b130Step block2800b130Done block2800b130Result |
    block2800b130Stack0 := self.
    block2800b130PC := 4.
    block2800b130Done := false.
    [block2800b130Done not] whileTrue: [
        block2800b130Step := block2800b130PC.
        block2800b130Step = 4 ifTrue: [
            block2800b130Stack1 := block2800b130Arg1.
            block2800b130PC := 5.
        ].
        block2800b130Step = 5 ifTrue: [
            block2800b130Stack2 := 'cleanUpBeforeRemove'.
            block2800b130PC := 7.
        ].
        block2800b130Step = 7 ifTrue: [
            block2800b130Stack1 := (block2800b130Stack1) respondsTo: (block2800b130Stack2).
            block2800b130PC := 8.
        ].
        block2800b130Step = 8 ifTrue: [
            (block2800b130Stack1) ifTrue: [block2800b130PC := 12] ifFalse: [block2800b130PC := 15].
        ].
        block2800b130Step = 12 ifTrue: [
            block2800b130Stack1 := block2800b130Arg1.
            block2800b130PC := 13.
        ].
        block2800b130Step = 13 ifTrue: [
            (block2800b130Stack1) cleanUpBeforeRemove.
            block2800b130PC := 15.
        ].
        block2800b130Step = 15 ifTrue: [
            block2800b130Stack1 := nil.
            block2800b130PC := 16.
        ].
        block2800b130Step = 16 ifTrue: [
            block2800b130Stack2 := block2800b130Arg1.
            block2800b130PC := 17.
        ].
        block2800b130Step = 17 ifTrue: [
            block2800b130Stack2 := (block2800b130Stack2) class.
            block2800b130PC := 18.
        ].
        block2800b130Step = 18 ifTrue: [
            block2800b130Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b130PC := 20.
        ].
        block2800b130Step = 20 ifTrue: [
            block2800b130Stack2 := (block2800b130Stack2) includesSelector: (block2800b130Stack3).
            block2800b130PC := 22.
        ].
        block2800b130Step = 22 ifTrue: [
            (block2800b130Stack2) ifTrue: [block2800b130PC := 26] ifFalse: [block2800b130PC := 30].
        ].
        block2800b130Step = 26 ifTrue: [
            block2800b130PC := 27.
        ].
        block2800b130Step = 27 ifTrue: [
            block2800b130Stack1 := block2800b130Arg1.
            block2800b130PC := 28.
        ].
        block2800b130Step = 28 ifTrue: [
            block2800b130Stack1 := (block2800b130Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b130PC := 30.
        ].
        block2800b130Step = 30 ifTrue: [
            block2800b130Result := block2800b130Stack1.
            block2800b130Done := true.
        ].
    ].
    block2800b130Result
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

"xxx_dyn.ic method 0x2001887c; bytecode file offset 0x79c2c"
!SstEnhancedSelectWIN class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b2e0Arg1 | 
    | block2800b2e0Stack0 block2800b2e0Stack1 block2800b2e0Stack2 block2800b2e0Stack3 block2800b2e0Stack4 block2800b2e0PC block2800b2e0Step block2800b2e0Done block2800b2e0Result |
    block2800b2e0Stack0 := self.
    block2800b2e0PC := 4.
    block2800b2e0Done := false.
    [block2800b2e0Done not] whileTrue: [
        block2800b2e0Step := block2800b2e0PC.
        block2800b2e0Step = 4 ifTrue: [
            block2800b2e0Stack1 := block2800b2e0Arg1.
            block2800b2e0PC := 5.
        ].
        block2800b2e0Step = 5 ifTrue: [
            block2800b2e0Stack2 := 'setupAfterLoad'.
            block2800b2e0PC := 7.
        ].
        block2800b2e0Step = 7 ifTrue: [
            block2800b2e0Stack1 := (block2800b2e0Stack1) respondsTo: (block2800b2e0Stack2).
            block2800b2e0PC := 8.
        ].
        block2800b2e0Step = 8 ifTrue: [
            (block2800b2e0Stack1) ifTrue: [block2800b2e0PC := 12] ifFalse: [block2800b2e0PC := 15].
        ].
        block2800b2e0Step = 12 ifTrue: [
            block2800b2e0Stack1 := block2800b2e0Arg1.
            block2800b2e0PC := 13.
        ].
        block2800b2e0Step = 13 ifTrue: [
            (block2800b2e0Stack1) setupAfterLoad.
            block2800b2e0PC := 15.
        ].
        block2800b2e0Step = 15 ifTrue: [
            block2800b2e0Stack1 := nil.
            block2800b2e0PC := 16.
        ].
        block2800b2e0Step = 16 ifTrue: [
            block2800b2e0Stack2 := block2800b2e0Arg1.
            block2800b2e0PC := 17.
        ].
        block2800b2e0Step = 17 ifTrue: [
            block2800b2e0Stack2 := (block2800b2e0Stack2) class.
            block2800b2e0PC := 18.
        ].
        block2800b2e0Step = 18 ifTrue: [
            block2800b2e0Stack3 := 'setupAfterLoadNonInherited'.
            block2800b2e0PC := 20.
        ].
        block2800b2e0Step = 20 ifTrue: [
            block2800b2e0Stack2 := (block2800b2e0Stack2) includesSelector: (block2800b2e0Stack3).
            block2800b2e0PC := 22.
        ].
        block2800b2e0Step = 22 ifTrue: [
            (block2800b2e0Stack2) ifTrue: [block2800b2e0PC := 26] ifFalse: [block2800b2e0PC := 30].
        ].
        block2800b2e0Step = 26 ifTrue: [
            block2800b2e0PC := 27.
        ].
        block2800b2e0Step = 27 ifTrue: [
            block2800b2e0Stack1 := block2800b2e0Arg1.
            block2800b2e0PC := 28.
        ].
        block2800b2e0Step = 28 ifTrue: [
            block2800b2e0Stack1 := (block2800b2e0Stack1) setupAfterLoadNonInherited.
            block2800b2e0PC := 30.
        ].
        block2800b2e0Step = 30 ifTrue: [
            block2800b2e0Result := block2800b2e0Stack1.
            block2800b2e0Done := true.
        ].
    ].
    block2800b2e0Result
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

