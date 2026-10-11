"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001444; bytecode file offset 0x626a4"
!SstServerSupport class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200014bc; bytecode file offset 0x626a4"
!SstServerSupport class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20002850; bytecode file offset 0x63b1c"
!SstServerSupport class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x2000d498; bytecode file offset 0x6e570"
!SstServerSupport class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) doNotReduceClassNamed: ('SstBasicServer').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) ignoreNoImplementorErrorsForMessageSend: ('configureResponseForRequest:') inMethod: ('processClientRequest:') inClassNamed: ('SstBasicServer').
    ^self
! !

"xxx_dyn.ic method 0x20018780; bytecode file offset 0x79c2c"
!SstServerSupport class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b1e4Arg1 | 
    | block2800b1e4Stack0 block2800b1e4Stack1 block2800b1e4Stack2 block2800b1e4Stack3 block2800b1e4Stack4 block2800b1e4PC block2800b1e4Step block2800b1e4Done block2800b1e4Result |
    block2800b1e4Stack0 := self.
    block2800b1e4PC := 4.
    block2800b1e4Done := false.
    [block2800b1e4Done not] whileTrue: [
        block2800b1e4Step := block2800b1e4PC.
        block2800b1e4Step = 4 ifTrue: [
            block2800b1e4Stack1 := block2800b1e4Arg1.
            block2800b1e4PC := 5.
        ].
        block2800b1e4Step = 5 ifTrue: [
            block2800b1e4Stack2 := 'setupAfterLoad'.
            block2800b1e4PC := 7.
        ].
        block2800b1e4Step = 7 ifTrue: [
            block2800b1e4Stack1 := (block2800b1e4Stack1) respondsTo: (block2800b1e4Stack2).
            block2800b1e4PC := 8.
        ].
        block2800b1e4Step = 8 ifTrue: [
            (block2800b1e4Stack1) ifTrue: [block2800b1e4PC := 12] ifFalse: [block2800b1e4PC := 15].
        ].
        block2800b1e4Step = 12 ifTrue: [
            block2800b1e4Stack1 := block2800b1e4Arg1.
            block2800b1e4PC := 13.
        ].
        block2800b1e4Step = 13 ifTrue: [
            (block2800b1e4Stack1) setupAfterLoad.
            block2800b1e4PC := 15.
        ].
        block2800b1e4Step = 15 ifTrue: [
            block2800b1e4Stack1 := nil.
            block2800b1e4PC := 16.
        ].
        block2800b1e4Step = 16 ifTrue: [
            block2800b1e4Stack2 := block2800b1e4Arg1.
            block2800b1e4PC := 17.
        ].
        block2800b1e4Step = 17 ifTrue: [
            block2800b1e4Stack2 := (block2800b1e4Stack2) class.
            block2800b1e4PC := 18.
        ].
        block2800b1e4Step = 18 ifTrue: [
            block2800b1e4Stack3 := 'setupAfterLoadNonInherited'.
            block2800b1e4PC := 20.
        ].
        block2800b1e4Step = 20 ifTrue: [
            block2800b1e4Stack2 := (block2800b1e4Stack2) includesSelector: (block2800b1e4Stack3).
            block2800b1e4PC := 22.
        ].
        block2800b1e4Step = 22 ifTrue: [
            (block2800b1e4Stack2) ifTrue: [block2800b1e4PC := 26] ifFalse: [block2800b1e4PC := 30].
        ].
        block2800b1e4Step = 26 ifTrue: [
            block2800b1e4PC := 27.
        ].
        block2800b1e4Step = 27 ifTrue: [
            block2800b1e4Stack1 := block2800b1e4Arg1.
            block2800b1e4PC := 28.
        ].
        block2800b1e4Step = 28 ifTrue: [
            block2800b1e4Stack1 := (block2800b1e4Stack1) setupAfterLoadNonInherited.
            block2800b1e4PC := 30.
        ].
        block2800b1e4Step = 30 ifTrue: [
            block2800b1e4Result := block2800b1e4Stack1.
            block2800b1e4Done := true.
        ].
    ].
    block2800b1e4Result
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

"xxx_dyn.ic method 0x20018b4c; bytecode file offset 0x79c2c"
!SstServerSupport class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b5b0Arg1 | 
    | block2800b5b0Stack0 block2800b5b0Stack1 block2800b5b0Stack2 block2800b5b0Stack3 block2800b5b0Stack4 block2800b5b0PC block2800b5b0Step block2800b5b0Done block2800b5b0Result |
    block2800b5b0Stack0 := self.
    block2800b5b0PC := 4.
    block2800b5b0Done := false.
    [block2800b5b0Done not] whileTrue: [
        block2800b5b0Step := block2800b5b0PC.
        block2800b5b0Step = 4 ifTrue: [
            block2800b5b0Stack1 := block2800b5b0Arg1.
            block2800b5b0PC := 5.
        ].
        block2800b5b0Step = 5 ifTrue: [
            block2800b5b0Stack2 := 'cleanUpBeforeRemove'.
            block2800b5b0PC := 7.
        ].
        block2800b5b0Step = 7 ifTrue: [
            block2800b5b0Stack1 := (block2800b5b0Stack1) respondsTo: (block2800b5b0Stack2).
            block2800b5b0PC := 8.
        ].
        block2800b5b0Step = 8 ifTrue: [
            (block2800b5b0Stack1) ifTrue: [block2800b5b0PC := 12] ifFalse: [block2800b5b0PC := 15].
        ].
        block2800b5b0Step = 12 ifTrue: [
            block2800b5b0Stack1 := block2800b5b0Arg1.
            block2800b5b0PC := 13.
        ].
        block2800b5b0Step = 13 ifTrue: [
            (block2800b5b0Stack1) cleanUpBeforeRemove.
            block2800b5b0PC := 15.
        ].
        block2800b5b0Step = 15 ifTrue: [
            block2800b5b0Stack1 := nil.
            block2800b5b0PC := 16.
        ].
        block2800b5b0Step = 16 ifTrue: [
            block2800b5b0Stack2 := block2800b5b0Arg1.
            block2800b5b0PC := 17.
        ].
        block2800b5b0Step = 17 ifTrue: [
            block2800b5b0Stack2 := (block2800b5b0Stack2) class.
            block2800b5b0PC := 18.
        ].
        block2800b5b0Step = 18 ifTrue: [
            block2800b5b0Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b5b0PC := 20.
        ].
        block2800b5b0Step = 20 ifTrue: [
            block2800b5b0Stack2 := (block2800b5b0Stack2) includesSelector: (block2800b5b0Stack3).
            block2800b5b0PC := 22.
        ].
        block2800b5b0Step = 22 ifTrue: [
            (block2800b5b0Stack2) ifTrue: [block2800b5b0PC := 26] ifFalse: [block2800b5b0PC := 30].
        ].
        block2800b5b0Step = 26 ifTrue: [
            block2800b5b0PC := 27.
        ].
        block2800b5b0Step = 27 ifTrue: [
            block2800b5b0Stack1 := block2800b5b0Arg1.
            block2800b5b0PC := 28.
        ].
        block2800b5b0Step = 28 ifTrue: [
            block2800b5b0Stack1 := (block2800b5b0Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b5b0PC := 30.
        ].
        block2800b5b0Step = 30 ifTrue: [
            block2800b5b0Result := block2800b5b0Stack1.
            block2800b5b0Done := true.
        ].
    ].
    block2800b5b0Result
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

