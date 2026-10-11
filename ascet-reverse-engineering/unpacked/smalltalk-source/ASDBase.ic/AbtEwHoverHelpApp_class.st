"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200022b8; bytecode file offset 0x8ffcfc"
!AbtEwHoverHelpApp class methodsFor: 'recovered'!
_PRAGMA_AbtEwHoverHelpConstants
    ^self
! !

"ASDBase.ic method 0x201074c8; bytecode file offset 0xa03d8c"
!AbtEwHoverHelpApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('PTR') = ('PACKAGERREDUCTION').
    recoveredValue1 := AbtEwHoverHelpManager.
    (self) abtAddImageEventDependent: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201cb828; bytecode file offset 0xac80f0"
!AbtEwHoverHelpApp class methodsFor: 'recovered'!
abtAddImageEventDependent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PACKAGERREDUCTION'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            abtImageEventDependents := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20247e00; bytecode file offset 0xb4471c"
!AbtEwHoverHelpApp class methodsFor: 'recovered'!
relocalize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PACKAGERREDUCTION'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280de5d0Arg1 | 
    | block280de5d0Stack0 block280de5d0Stack1 block280de5d0Stack2 block280de5d0Stack3 block280de5d0PC block280de5d0Step block280de5d0Done block280de5d0Result |
    block280de5d0Stack0 := self.
    block280de5d0PC := 4.
    block280de5d0Done := false.
    [block280de5d0Done not] whileTrue: [
        block280de5d0Step := block280de5d0PC.
        block280de5d0Step = 4 ifTrue: [
            block280de5d0Stack1 := nil.
            block280de5d0PC := 5.
        ].
        block280de5d0Step = 5 ifTrue: [
            block280de5d0Stack2 := block280de5d0Arg1.
            block280de5d0PC := 6.
        ].
        block280de5d0Step = 6 ifTrue: [
            (block280de5d0Stack2 == nil) ifTrue: [block280de5d0PC := 13] ifFalse: [block280de5d0PC := 10].
        ].
        block280de5d0Step = 10 ifTrue: [
            block280de5d0PC := 11.
        ].
        block280de5d0Step = 11 ifTrue: [
            block280de5d0Stack1 := block280de5d0Arg1.
            block280de5d0PC := 12.
        ].
        block280de5d0Step = 12 ifTrue: [
            block280de5d0Stack1 := (block280de5d0Stack1) abtRelocalize.
            block280de5d0PC := 13.
        ].
        block280de5d0Step = 13 ifTrue: [
            block280de5d0Result := block280de5d0Stack1.
            block280de5d0Done := true.
        ].
    ].
    block280de5d0Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20247e1c; bytecode file offset 0xb4471c"
!AbtEwHoverHelpApp class methodsFor: 'recovered'!
preStartUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PACKAGERREDUCTION'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280de5f4Arg1 | 
    | block280de5f4Stack0 block280de5f4Stack1 block280de5f4Stack2 block280de5f4Stack3 block280de5f4PC block280de5f4Step block280de5f4Done block280de5f4Result |
    block280de5f4Stack0 := self.
    block280de5f4PC := 4.
    block280de5f4Done := false.
    [block280de5f4Done not] whileTrue: [
        block280de5f4Step := block280de5f4PC.
        block280de5f4Step = 4 ifTrue: [
            block280de5f4Stack1 := nil.
            block280de5f4PC := 5.
        ].
        block280de5f4Step = 5 ifTrue: [
            block280de5f4Stack2 := block280de5f4Arg1.
            block280de5f4PC := 6.
        ].
        block280de5f4Step = 6 ifTrue: [
            (block280de5f4Stack2 == nil) ifTrue: [block280de5f4PC := 13] ifFalse: [block280de5f4PC := 10].
        ].
        block280de5f4Step = 10 ifTrue: [
            block280de5f4PC := 11.
        ].
        block280de5f4Step = 11 ifTrue: [
            block280de5f4Stack1 := block280de5f4Arg1.
            block280de5f4PC := 12.
        ].
        block280de5f4Step = 12 ifTrue: [
            block280de5f4Stack1 := (block280de5f4Stack1) abtPreStartUp.
            block280de5f4PC := 13.
        ].
        block280de5f4Step = 13 ifTrue: [
            block280de5f4Result := block280de5f4Stack1.
            block280de5f4Done := true.
        ].
    ].
    block280de5f4Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20247e38; bytecode file offset 0xb4471c"
!AbtEwHoverHelpApp class methodsFor: 'recovered'!
exiting
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PACKAGERREDUCTION'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280de618Arg1 | 
    | block280de618Stack0 block280de618Stack1 block280de618Stack2 block280de618Stack3 block280de618PC block280de618Step block280de618Done block280de618Result |
    block280de618Stack0 := self.
    block280de618PC := 4.
    block280de618Done := false.
    [block280de618Done not] whileTrue: [
        block280de618Step := block280de618PC.
        block280de618Step = 4 ifTrue: [
            block280de618Stack1 := nil.
            block280de618PC := 5.
        ].
        block280de618Step = 5 ifTrue: [
            block280de618Stack2 := block280de618Arg1.
            block280de618PC := 6.
        ].
        block280de618Step = 6 ifTrue: [
            (block280de618Stack2 == nil) ifTrue: [block280de618PC := 13] ifFalse: [block280de618PC := 10].
        ].
        block280de618Step = 10 ifTrue: [
            block280de618PC := 11.
        ].
        block280de618Step = 11 ifTrue: [
            block280de618Stack1 := block280de618Arg1.
            block280de618PC := 12.
        ].
        block280de618Step = 12 ifTrue: [
            block280de618Stack1 := (block280de618Stack1) abtExiting.
            block280de618PC := 13.
        ].
        block280de618Step = 13 ifTrue: [
            block280de618Result := block280de618Stack1.
            block280de618Done := true.
        ].
    ].
    block280de618Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20247e54; bytecode file offset 0xb4471c"
!AbtEwHoverHelpApp class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PACKAGERREDUCTION'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := abtImageEventDependents.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280de63cArg1 | 
    | block280de63cStack0 block280de63cStack1 block280de63cStack2 block280de63cStack3 block280de63cPC block280de63cStep block280de63cDone block280de63cResult |
    block280de63cStack0 := self.
    block280de63cPC := 4.
    block280de63cDone := false.
    [block280de63cDone not] whileTrue: [
        block280de63cStep := block280de63cPC.
        block280de63cStep = 4 ifTrue: [
            block280de63cStack1 := nil.
            block280de63cPC := 5.
        ].
        block280de63cStep = 5 ifTrue: [
            block280de63cStack2 := block280de63cArg1.
            block280de63cPC := 6.
        ].
        block280de63cStep = 6 ifTrue: [
            (block280de63cStack2 == nil) ifTrue: [block280de63cPC := 13] ifFalse: [block280de63cPC := 10].
        ].
        block280de63cStep = 10 ifTrue: [
            block280de63cPC := 11.
        ].
        block280de63cStep = 11 ifTrue: [
            block280de63cStack1 := block280de63cArg1.
            block280de63cPC := 12.
        ].
        block280de63cStep = 12 ifTrue: [
            block280de63cStack1 := (block280de63cStack1) abtRemoving.
            block280de63cPC := 13.
        ].
        block280de63cStep = 13 ifTrue: [
            block280de63cResult := block280de63cStack1.
            block280de63cDone := true.
        ].
    ].
    block280de63cResult
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202eb25c; bytecode file offset 0xbe7b40"
!AbtEwHoverHelpApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'default'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'AbtEwHoverHelpManager'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) excludeClassInstanceVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e7bb8Arg1 | 
    | block280e7bb8Value0 block280e7bb8Value1 block280e7bb8Value2 |
    block280e7bb8Value0 := block280e7bb8Arg1.
    block280e7bb8Value1 := (block280e7bb8Value0) reductionPolicy.
    block280e7bb8Value2 := (block280e7bb8Value1) isRuntimeReductionPolicy.
    block280e7bb8Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:block280e7bdcArg1 | 
    | block280e7bdcValue0 block280e7bdcValue1 |
    block280e7bdcValue0 := block280e7bdcArg1.
    block280e7bdcValue1 := (block280e7bdcValue0) ignoreNoImplementorErrorsForMessageSend: ('shellWidget') inMethod: ('cleanupRegistries') inClassNamed: ('AbtEwHoverHelpManager').
    block280e7bdcValue1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := [:block280e7c00Arg1 | 
    nil
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) condition: (recoveredStack2) ifTrue: (recoveredStack3) ifFalse: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

