"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200014b8; bytecode file offset 0x8ffcfc"
!AbtEwAdditionsApp class methodsFor: 'recovered'!
_PRAGMA_AbtEwAdditionsConstants
    ^self
! !

"ASDBase.ic method 0x20049204; bytecode file offset 0x945ab8"
!AbtEwAdditionsApp class methodsFor: 'recovered'!
resetImageEventDependents
    imageEventDependents := nil.
    ^self
! !

"ASDBase.ic method 0x2004f1ac; bytecode file offset 0x94d048"
!AbtEwAdditionsApp class methodsFor: 'recovered'!
removing
    (self) exiting.
    ^self
! !

"ASDBase.ic method 0x2004f7d0; bytecode file offset 0x94d048"
!AbtEwAdditionsApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x20164934; bytecode file offset 0xa6121c"
!AbtEwAdditionsApp class methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2017e500; bytecode file offset 0xa7adcc"
!AbtEwAdditionsApp class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) resetImageEventDependents.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := AbtIconHierarchyPolicy.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) imageEventDependent: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageStarted.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) startUp.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd864; bytecode file offset 0xafa19c"
!AbtEwAdditionsApp class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block280d87bcArg1 | 
    | block280d87bcStack0 block280d87bcStack1 block280d87bcStack2 block280d87bcStack3 block280d87bcPC block280d87bcStep block280d87bcDone block280d87bcResult |
    block280d87bcStack0 := self.
    block280d87bcPC := 4.
    block280d87bcDone := false.
    [block280d87bcDone not] whileTrue: [
        block280d87bcStep := block280d87bcPC.
        block280d87bcStep = 4 ifTrue: [
            block280d87bcStack1 := nil.
            block280d87bcPC := 5.
        ].
        block280d87bcStep = 5 ifTrue: [
            block280d87bcStack2 := block280d87bcArg1.
            block280d87bcPC := 6.
        ].
        block280d87bcStep = 6 ifTrue: [
            (block280d87bcStack2 == nil) ifTrue: [block280d87bcPC := 13] ifFalse: [block280d87bcPC := 10].
        ].
        block280d87bcStep = 10 ifTrue: [
            block280d87bcPC := 11.
        ].
        block280d87bcStep = 11 ifTrue: [
            block280d87bcStack1 := block280d87bcArg1.
            block280d87bcPC := 12.
        ].
        block280d87bcStep = 12 ifTrue: [
            block280d87bcStack1 := (block280d87bcStack1) startUp.
            block280d87bcPC := 13.
        ].
        block280d87bcStep = 13 ifTrue: [
            block280d87bcResult := block280d87bcStack1.
            block280d87bcDone := true.
        ].
    ].
    block280d87bcResult
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

"ASDBase.ic method 0x201fd88c; bytecode file offset 0xafa19c"
!AbtEwAdditionsApp class methodsFor: 'recovered'!
exiting
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
            recoveredStack2 := [:block280d8804Arg1 | 
    | block280d8804Stack0 block280d8804Stack1 block280d8804Stack2 block280d8804Stack3 block280d8804PC block280d8804Step block280d8804Done block280d8804Result |
    block280d8804Stack0 := self.
    block280d8804PC := 4.
    block280d8804Done := false.
    [block280d8804Done not] whileTrue: [
        block280d8804Step := block280d8804PC.
        block280d8804Step = 4 ifTrue: [
            block280d8804Stack1 := nil.
            block280d8804PC := 5.
        ].
        block280d8804Step = 5 ifTrue: [
            block280d8804Stack2 := block280d8804Arg1.
            block280d8804PC := 6.
        ].
        block280d8804Step = 6 ifTrue: [
            (block280d8804Stack2 == nil) ifTrue: [block280d8804PC := 13] ifFalse: [block280d8804PC := 10].
        ].
        block280d8804Step = 10 ifTrue: [
            block280d8804PC := 11.
        ].
        block280d8804Step = 11 ifTrue: [
            block280d8804Stack1 := block280d8804Arg1.
            block280d8804PC := 12.
        ].
        block280d8804Step = 12 ifTrue: [
            block280d8804Stack1 := (block280d8804Stack1) exiting.
            block280d8804PC := 13.
        ].
        block280d8804Step = 13 ifTrue: [
            block280d8804Result := block280d8804Stack1.
            block280d8804Done := true.
        ].
    ].
    block280d8804Result
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

