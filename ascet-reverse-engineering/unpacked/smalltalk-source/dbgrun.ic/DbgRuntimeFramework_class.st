"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x20000010; bytecode file offset 0x75dc"
!DbgRuntimeFramework class methodsFor: 'recovered'!
_PRAGMA_NlsCatDBG
    ^self
! !

"dbgrun.ic method 0x200000bc; bytecode file offset 0x76d0"
!DbgRuntimeFramework class methodsFor: 'recovered'!
stackSearchSelectors
    | recoveredValue0 |
    recoveredValue0 := StackSearchSelectors.
    ^recoveredValue0
! !

"dbgrun.ic method 0x200000c8; bytecode file offset 0x76d0"
!DbgRuntimeFramework class methodsFor: 'recovered'!
stackOverflowPercentage
    | recoveredValue0 |
    recoveredValue0 := StackOverflowPercentage.
    ^recoveredValue0
! !

"dbgrun.ic method 0x200000f8; bytecode file offset 0x76d0"
!DbgRuntimeFramework class methodsFor: 'recovered'!
searchStackForError
    | recoveredValue0 |
    recoveredValue0 := SearchStackForError.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000130; bytecode file offset 0x7708"
!DbgRuntimeFramework class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('addProcess:errorString:selectingFrame:trimFramesAbove:resumable:' 'breakpointEncountered:' 'developer' 'developmentInitialize' 'edition' 'filePointer' 'open:' 'recomputeMethodFor:' 'source')
! !

"dbgrun.ic method 0x2000023c; bytecode file offset 0x77fc"
!DbgRuntimeFramework class methodsFor: 'recovered'!
failedRemove
    (self) registerDebugTools.
    ^self
! !

"dbgrun.ic method 0x2000025c; bytecode file offset 0x7864"
!DbgRuntimeFramework class methodsFor: 'recovered'!
stackOverflowPercentage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    StackOverflowPercentage := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000280; bytecode file offset 0x7864"
!DbgRuntimeFramework class methodsFor: 'recovered'!
searchStackForError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SearchStackForError := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x2000028c; bytecode file offset 0x7864"
!DbgRuntimeFramework class methodsFor: 'recovered'!
toolRegistry: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ToolRegistry := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200002a4; bytecode file offset 0x7864"
!DbgRuntimeFramework class methodsFor: 'recovered'!
stackSearchSelectors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    StackSearchSelectors := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000ba8; bytecode file offset 0x8178"
!DbgRuntimeFramework class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatDBG.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := DbgError.
    (recoveredValue2) initializeMessages.
    ^self
! !

"dbgrun.ic method 0x20000cc8; bytecode file offset 0x828c"
!DbgRuntimeFramework class methodsFor: 'recovered'!
toolRegistry
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ToolRegistry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) rebuildToolRegistry.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ToolRegistry.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x20000d24; bytecode file offset 0x82ec"
!DbgRuntimeFramework class methodsFor: 'recovered'!
deregisterDebugTools
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DbgDebugSession.
    (self) deregister: (recoveredValue0) for: (self).
    recoveredValue1 := DbgSourceManager.
    (self) deregister: (recoveredValue1) for: (self).
    ^self
! !

"dbgrun.ic method 0x20000d74; bytecode file offset 0x8344"
!DbgRuntimeFramework class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 |
    (self) deregisterDebugTools.
    recoveredValue0 := DbgBreakpoint.
    (recoveredValue0) reset.
    recoveredValue1 := DbgBreakpointManager.
    (recoveredValue1) breakpointManagers: (nil).
    ^self
! !

"dbgrun.ic method 0x2000127c; bytecode file offset 0x8858"
!DbgRuntimeFramework class methodsFor: 'recovered'!
rebuildToolRegistry
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) toolRegistry: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadedSubApplications.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block28000460Arg1 | 
    | block28000460Value0 block28000460Value1 |
    block28000460Value0 := block28000460Arg1.
    block28000460Value1 := (block28000460Value0) registerDebugTools.
    block28000460Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x20001b74; bytecode file offset 0x9150"
!DbgRuntimeFramework class methodsFor: 'recovered'!
registerDebugTools
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DbgRuntimeFramework.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := DbgDebugSession.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := 'DebugSession'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack6 := [:block28000514Arg1 | 
    true
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack7 := 10.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) register: (recoveredStack3) for: (recoveredStack4) type: (recoveredStack5) handler: (recoveredStack6) matchValue: (recoveredStack7).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := DbgSourceManager.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := 'SourceManager'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := [:block28000538Arg1 | 
    true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := 10.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) register: (recoveredStack2) for: (recoveredStack3) type: (recoveredStack4) handler: (recoveredStack5) matchValue: (recoveredStack6).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x20001c28; bytecode file offset 0x9208"
!DbgRuntimeFramework class methodsFor: 'recovered'!
register: recoveredArg1 for: recoveredArg2 type: recoveredArg3 handler: recoveredArg4 matchValue: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolRegistry.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block2800055cValue0 block2800055cValue1 |
    block2800055cValue0 := OrderedCollection.
    block2800055cValue1 := (block2800055cValue0) new.
    block2800055cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x20001d28; bytecode file offset 0x92f8"
!DbgRuntimeFramework class methodsFor: 'recovered'!
deregister: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) toolRegistry.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) copy.
    recoveredBlock5Value2 := [:recoveredBlock5Block16Arg1 | 
    | recoveredBlock5Block16Stack0 recoveredBlock5Block16Stack1 recoveredBlock5Block16Stack2 recoveredBlock5Block16Stack3 recoveredBlock5Block16Stack4 recoveredBlock5Block16PC recoveredBlock5Block16Step recoveredBlock5Block16Done recoveredBlock5Block16Result |
    recoveredBlock5Block16Stack0 := nil.
    recoveredBlock5Block16PC := 22.
    recoveredBlock5Block16Done := false.
    [recoveredBlock5Block16Done not] whileTrue: [
        recoveredBlock5Block16Step := recoveredBlock5Block16PC.
        recoveredBlock5Block16Step = 22 ifTrue: [
            recoveredBlock5Block16Stack1 := nil.
            recoveredBlock5Block16PC := 23.
        ].
        recoveredBlock5Block16Step = 23 ifTrue: [
            recoveredBlock5Block16Stack2 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 24.
        ].
        recoveredBlock5Block16Step = 24 ifTrue: [
            recoveredBlock5Block16Stack2 := (recoveredBlock5Block16Stack2) first.
            recoveredBlock5Block16PC := 25.
        ].
        recoveredBlock5Block16Step = 25 ifTrue: [
            recoveredBlock5Block16Stack3 := recoveredArg1.
            recoveredBlock5Block16PC := 28.
        ].
        recoveredBlock5Block16Step = 28 ifTrue: [
            (recoveredBlock5Block16Stack2 ~~ recoveredBlock5Block16Stack3) ifTrue: [recoveredBlock5Block16PC := 38] ifFalse: [recoveredBlock5Block16PC := 32].
        ].
        recoveredBlock5Block16Step = 32 ifTrue: [
            recoveredBlock5Block16PC := 33.
        ].
        recoveredBlock5Block16Step = 33 ifTrue: [
            recoveredBlock5Block16Stack1 := recoveredBlock5Arg1.
            recoveredBlock5Block16PC := 36.
        ].
        recoveredBlock5Block16Step = 36 ifTrue: [
            recoveredBlock5Block16Stack2 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 37.
        ].
        recoveredBlock5Block16Step = 37 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) remove: (recoveredBlock5Block16Stack2).
            recoveredBlock5Block16PC := 38.
        ].
        recoveredBlock5Block16Step = 38 ifTrue: [
            recoveredBlock5Block16Result := recoveredBlock5Block16Stack1.
            recoveredBlock5Block16Done := true.
        ].
    ].
    recoveredBlock5Block16Result
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) do: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"dbgrun.ic method 0x2000200c; bytecode file offset 0x95e0"
!DbgRuntimeFramework class methodsFor: 'recovered'!
deregister: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) toolRegistry.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) copy.
    recoveredBlock5Value2 := [:recoveredBlock5Block16Arg1 | 
    | recoveredBlock5Block16Stack0 recoveredBlock5Block16Stack1 recoveredBlock5Block16Stack2 recoveredBlock5Block16Stack3 recoveredBlock5Block16Stack4 recoveredBlock5Block16PC recoveredBlock5Block16Step recoveredBlock5Block16Done recoveredBlock5Block16Result |
    recoveredBlock5Block16Stack0 := nil.
    recoveredBlock5Block16PC := 22.
    recoveredBlock5Block16Done := false.
    [recoveredBlock5Block16Done not] whileTrue: [
        recoveredBlock5Block16Step := recoveredBlock5Block16PC.
        recoveredBlock5Block16Step = 22 ifTrue: [
            recoveredBlock5Block16Stack1 := nil.
            recoveredBlock5Block16PC := 23.
        ].
        recoveredBlock5Block16Step = 23 ifTrue: [
            recoveredBlock5Block16Stack2 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 24.
        ].
        recoveredBlock5Block16Step = 24 ifTrue: [
            recoveredBlock5Block16Stack2 := (recoveredBlock5Block16Stack2) first.
            recoveredBlock5Block16PC := 25.
        ].
        recoveredBlock5Block16Step = 25 ifTrue: [
            recoveredBlock5Block16Stack3 := recoveredArg1.
            recoveredBlock5Block16PC := 28.
        ].
        recoveredBlock5Block16Step = 28 ifTrue: [
            (recoveredBlock5Block16Stack2 ~~ recoveredBlock5Block16Stack3) ifTrue: [recoveredBlock5Block16PC := 47] ifFalse: [recoveredBlock5Block16PC := 32].
        ].
        recoveredBlock5Block16Step = 32 ifTrue: [
            recoveredBlock5Block16Stack2 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 33.
        ].
        recoveredBlock5Block16Step = 33 ifTrue: [
            recoveredBlock5Block16Stack2 := (recoveredBlock5Block16Stack2) last.
            recoveredBlock5Block16PC := 34.
        ].
        recoveredBlock5Block16Step = 34 ifTrue: [
            recoveredBlock5Block16Stack3 := recoveredArg2.
            recoveredBlock5Block16PC := 37.
        ].
        recoveredBlock5Block16Step = 37 ifTrue: [
            (recoveredBlock5Block16Stack2 ~~ recoveredBlock5Block16Stack3) ifTrue: [recoveredBlock5Block16PC := 47] ifFalse: [recoveredBlock5Block16PC := 40].
        ].
        recoveredBlock5Block16Step = 40 ifTrue: [
            recoveredBlock5Block16PC := 41.
        ].
        recoveredBlock5Block16Step = 41 ifTrue: [
            recoveredBlock5Block16Stack1 := recoveredBlock5Arg1.
            recoveredBlock5Block16PC := 44.
        ].
        recoveredBlock5Block16Step = 44 ifTrue: [
            recoveredBlock5Block16Stack2 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 45.
        ].
        recoveredBlock5Block16Step = 45 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) remove: (recoveredBlock5Block16Stack2).
            recoveredBlock5Block16PC := 47.
        ].
        recoveredBlock5Block16Step = 47 ifTrue: [
            recoveredBlock5Block16Result := recoveredBlock5Block16Stack1.
            recoveredBlock5Block16Done := true.
        ].
    ].
    recoveredBlock5Block16Result
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) do: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"dbgrun.ic method 0x2000213c; bytecode file offset 0x9734"
!DbgRuntimeFramework class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) stackSearchSelectors.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := #('doesNotUnderstand:' 'halt' 'halt:' 'breakpointEncountered:' 'primitiveFailed' 'error:').
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) stackSearchSelectors: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchStackForError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) searchStackForError: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) stackOverflowPercentage.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := #[102 102 102 102 102 102 238 63].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) stackOverflowPercentage: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := ToolRegistry.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) toolRegistry: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) deregisterDebugTools.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) registerDebugTools.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x20002724; bytecode file offset 0x9cf4"
!DbgRuntimeFramework class methodsFor: 'recovered'!
locateToolFor: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := (self) toolRegistry.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack3 := 2.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) at: (recoveredBlock28Stack3).
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg1.
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) value: (recoveredBlock28Stack3).
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack3 := true.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            (recoveredBlock28Stack2 ~~ recoveredBlock28Stack3) ifTrue: [recoveredBlock28PC := 75] ifFalse: [recoveredBlock28PC := 48].
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack3 := 3.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) at: (recoveredBlock28Stack3).
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Stack2.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack3.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack3 := recoveredLocal2.
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) > (recoveredBlock28Stack3).
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 62] ifFalse: [recoveredBlock28PC := 75].
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 64.
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 68.
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Stack2 := 1.
            recoveredBlock28PC := 70.
        ].
        recoveredBlock28Step = 70 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2).
            recoveredBlock28PC := 71.
        ].
        recoveredBlock28Step = 71 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 72.
        ].
        recoveredBlock28Step = 72 ifTrue: [
            recoveredLocal1 := recoveredBlock28Stack2.
            recoveredBlock28PC := 75.
        ].
        recoveredBlock28Step = 75 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"dbgrun.ic method 0x20002e88; bytecode file offset 0xa4b8"
!DbgRuntimeFramework class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) includeClassNamed: ('DbgBreakpoint').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) includeClassNamed: ('DbgBreakpointManager').
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) includeClassNamed: ('DbgWatch').
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) includeMethod: ('activeBreakpoints') inClassNamed: ('DbgBreakpointManager').
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) includeMethod: ('breakOnEnter:') inClassNamed: ('Process').
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) includeMethod: ('contextAtFrame:') inClassNamed: ('Process').
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) includeMethod: ('currentFrame') inClassNamed: ('Process').
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) includeClassMethod: ('debug:errorString:startFrame:resumable:') inClassNamed: ('DbgDebugSession').
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) includeMethod: ('debuggingUIProcess') inClassNamed: ('DbgDebugSession').
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) includeMethod: ('dropStackToLastOccurenceOf:') inClassNamed: ('DbgDebugSession').
    recoveredValue10 := recoveredArg1.
    (recoveredValue10) includeMethod: ('errorObject') inClassNamed: ('DbgWatch').
    recoveredValue11 := recoveredArg1.
    (recoveredValue11) includeMethod: ('hasCompilerErrorOccurred') inClassNamed: ('DbgWatch').
    recoveredValue12 := recoveredArg1.
    (recoveredValue12) includeMethod: ('hasDropped') inClassNamed: ('Process').
    recoveredValue13 := recoveredArg1.
    (recoveredValue13) includeMethod: ('hasErrorOccurred') inClassNamed: ('DbgWatch').
    recoveredValue14 := recoveredArg1.
    (recoveredValue14) includeClassMethod: ('lastBreakpointTime') inClassNamed: ('DbgBreakpoint').
    recoveredValue15 := recoveredArg1.
    (recoveredValue15) includeMethod: ('lastVisibleFrame') inClassNamed: ('DbgDebugSession').
    recoveredValue16 := recoveredArg1.
    (recoveredValue16) includeMethod: ('lockToFrame:') inClassNamed: ('DbgWatch').
    recoveredValue17 := recoveredArg1.
    (recoveredValue17) includeClassMethod: ('null') inClassNamed: ('DbgBreakpoint').
    recoveredValue18 := recoveredArg1.
    (recoveredValue18) includeMethod: ('outputWalkbackOn:') inClassNamed: ('DbgDebugSession').
    recoveredValue19 := recoveredArg1.
    (recoveredValue19) includeMethod: ('restoreOriginalVersionOf:') inClassNamed: ('DbgBreakpointManager').
    recoveredValue20 := recoveredArg1.
    (recoveredValue20) includeMethod: ('sourceManager:') inClassNamed: ('DbgWatch').
    recoveredValue21 := recoveredArg1.
    (recoveredValue21) initializeToNilClassVariable: ('ToolRegistry') inClassNamed: ('DbgRuntimeFramework').
    ^self
! !

