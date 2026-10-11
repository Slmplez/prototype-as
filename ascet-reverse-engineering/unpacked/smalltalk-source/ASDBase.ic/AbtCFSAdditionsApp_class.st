"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200baebc; bytecode file offset 0x9b7790"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('Timestamp') inClassNamed: ('AbtFileSpec').
    ^self
! !

"ASDBase.ic method 0x20139ec4; bytecode file offset 0xa3678c"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtFileSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) imageEventDependent: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageStarted.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) startUp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20164920; bytecode file offset 0xa6121c"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
imageEventDependent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            imageEventDependents := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd878; bytecode file offset 0xafa19c"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d87e0Arg1 | 
    | block280d87e0Stack0 block280d87e0Stack1 block280d87e0Stack2 block280d87e0Stack3 block280d87e0PC block280d87e0Step block280d87e0Done block280d87e0Result |
    block280d87e0Stack0 := self.
    block280d87e0PC := 4.
    block280d87e0Done := false.
    [block280d87e0Done not] whileTrue: [
        block280d87e0Step := block280d87e0PC.
        block280d87e0Step = 4 ifTrue: [
            block280d87e0Stack1 := nil.
            block280d87e0PC := 5.
        ].
        block280d87e0Step = 5 ifTrue: [
            block280d87e0Stack2 := block280d87e0Arg1.
            block280d87e0PC := 6.
        ].
        block280d87e0Step = 6 ifTrue: [
            (block280d87e0Stack2 == nil) ifTrue: [block280d87e0PC := 13] ifFalse: [block280d87e0PC := 10].
        ].
        block280d87e0Step = 10 ifTrue: [
            block280d87e0PC := 11.
        ].
        block280d87e0Step = 11 ifTrue: [
            block280d87e0Stack1 := block280d87e0Arg1.
            block280d87e0PC := 12.
        ].
        block280d87e0Step = 12 ifTrue: [
            block280d87e0Stack1 := (block280d87e0Stack1) resetTimestamp.
            block280d87e0PC := 13.
        ].
        block280d87e0Step = 13 ifTrue: [
            block280d87e0Result := block280d87e0Stack1.
            block280d87e0Done := true.
        ].
    ].
    block280d87e0Result
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd8dc; bytecode file offset 0xafa19c"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
saving
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d8894Arg1 | 
    | block280d8894Stack0 block280d8894Stack1 block280d8894Stack2 block280d8894Stack3 block280d8894PC block280d8894Step block280d8894Done block280d8894Result |
    block280d8894Stack0 := self.
    block280d8894PC := 4.
    block280d8894Done := false.
    [block280d8894Done not] whileTrue: [
        block280d8894Step := block280d8894PC.
        block280d8894Step = 4 ifTrue: [
            block280d8894Stack1 := nil.
            block280d8894PC := 5.
        ].
        block280d8894Step = 5 ifTrue: [
            block280d8894Stack2 := block280d8894Arg1.
            block280d8894PC := 6.
        ].
        block280d8894Step = 6 ifTrue: [
            (block280d8894Stack2 == nil) ifTrue: [block280d8894PC := 13] ifFalse: [block280d8894PC := 10].
        ].
        block280d8894Step = 10 ifTrue: [
            block280d8894PC := 11.
        ].
        block280d8894Step = 11 ifTrue: [
            block280d8894Stack1 := block280d8894Arg1.
            block280d8894PC := 12.
        ].
        block280d8894Step = 12 ifTrue: [
            block280d8894Stack1 := (block280d8894Stack1) abtAboutToSaveImage.
            block280d8894PC := 13.
        ].
        block280d8894Step = 13 ifTrue: [
            block280d8894Result := block280d8894Stack1.
            block280d8894Done := true.
        ].
    ].
    block280d8894Result
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

