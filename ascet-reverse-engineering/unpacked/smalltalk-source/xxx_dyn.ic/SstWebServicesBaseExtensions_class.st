"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000040; bytecode file offset 0x6147c"
!SstWebServicesBaseExtensions class methodsFor: 'recovered'!
_PRAGMA_SstWSConstants
    ^self
! !

"xxx_dyn.ic method 0x20000060; bytecode file offset 0x6147c"
!SstWebServicesBaseExtensions class methodsFor: 'recovered'!
_PRAGMA_SstWSErrorConstants
    ^self
! !

"xxx_dyn.ic method 0x200002f0; bytecode file offset 0x6147c"
!SstWebServicesBaseExtensions class methodsFor: 'recovered'!
localize
    ^self
! !

"xxx_dyn.ic method 0x200028c8; bytecode file offset 0x63b1c"
!SstWebServicesBaseExtensions class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    (self) initializeExceptions.
    ^self
! !

"xxx_dyn.ic method 0x20005e30; bytecode file offset 0x66f2c"
!SstWebServicesBaseExtensions class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20018738; bytecode file offset 0x79c2c"
!SstWebServicesBaseExtensions class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b19cArg1 | 
    | block2800b19cStack0 block2800b19cStack1 block2800b19cStack2 block2800b19cStack3 block2800b19cStack4 block2800b19cPC block2800b19cStep block2800b19cDone block2800b19cResult |
    block2800b19cStack0 := self.
    block2800b19cPC := 4.
    block2800b19cDone := false.
    [block2800b19cDone not] whileTrue: [
        block2800b19cStep := block2800b19cPC.
        block2800b19cStep = 4 ifTrue: [
            block2800b19cStack1 := block2800b19cArg1.
            block2800b19cPC := 5.
        ].
        block2800b19cStep = 5 ifTrue: [
            block2800b19cStack2 := 'cleanUpBeforeRemove'.
            block2800b19cPC := 7.
        ].
        block2800b19cStep = 7 ifTrue: [
            block2800b19cStack1 := (block2800b19cStack1) respondsTo: (block2800b19cStack2).
            block2800b19cPC := 8.
        ].
        block2800b19cStep = 8 ifTrue: [
            (block2800b19cStack1) ifTrue: [block2800b19cPC := 12] ifFalse: [block2800b19cPC := 15].
        ].
        block2800b19cStep = 12 ifTrue: [
            block2800b19cStack1 := block2800b19cArg1.
            block2800b19cPC := 13.
        ].
        block2800b19cStep = 13 ifTrue: [
            (block2800b19cStack1) cleanUpBeforeRemove.
            block2800b19cPC := 15.
        ].
        block2800b19cStep = 15 ifTrue: [
            block2800b19cStack1 := nil.
            block2800b19cPC := 16.
        ].
        block2800b19cStep = 16 ifTrue: [
            block2800b19cStack2 := block2800b19cArg1.
            block2800b19cPC := 17.
        ].
        block2800b19cStep = 17 ifTrue: [
            block2800b19cStack2 := (block2800b19cStack2) class.
            block2800b19cPC := 18.
        ].
        block2800b19cStep = 18 ifTrue: [
            block2800b19cStack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b19cPC := 20.
        ].
        block2800b19cStep = 20 ifTrue: [
            block2800b19cStack2 := (block2800b19cStack2) includesSelector: (block2800b19cStack3).
            block2800b19cPC := 22.
        ].
        block2800b19cStep = 22 ifTrue: [
            (block2800b19cStack2) ifTrue: [block2800b19cPC := 26] ifFalse: [block2800b19cPC := 30].
        ].
        block2800b19cStep = 26 ifTrue: [
            block2800b19cPC := 27.
        ].
        block2800b19cStep = 27 ifTrue: [
            block2800b19cStack1 := block2800b19cArg1.
            block2800b19cPC := 28.
        ].
        block2800b19cStep = 28 ifTrue: [
            block2800b19cStack1 := (block2800b19cStack1) cleanUpBeforeRemoveNonInherited.
            block2800b19cPC := 30.
        ].
        block2800b19cStep = 30 ifTrue: [
            block2800b19cResult := block2800b19cStack1.
            block2800b19cDone := true.
        ].
    ].
    block2800b19cResult
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

"xxx_dyn.ic method 0x2001a2b8; bytecode file offset 0x7b39c"
!SstWebServicesBaseExtensions class methodsFor: 'recovered'!
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
            recoveredStack0 := defined.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block2800b6d0Arg1 | 
    | block2800b6d0Stack0 block2800b6d0Stack1 block2800b6d0Stack2 block2800b6d0Stack3 block2800b6d0Stack4 block2800b6d0PC block2800b6d0Step block2800b6d0Done block2800b6d0Result |
    block2800b6d0Stack0 := self.
    block2800b6d0PC := 4.
    block2800b6d0Done := false.
    [block2800b6d0Done not] whileTrue: [
        block2800b6d0Step := block2800b6d0PC.
        block2800b6d0Step = 4 ifTrue: [
            block2800b6d0Stack1 := block2800b6d0Arg1.
            block2800b6d0PC := 5.
        ].
        block2800b6d0Step = 5 ifTrue: [
            block2800b6d0Stack2 := 'setupAfterLoad'.
            block2800b6d0PC := 7.
        ].
        block2800b6d0Step = 7 ifTrue: [
            block2800b6d0Stack1 := (block2800b6d0Stack1) respondsTo: (block2800b6d0Stack2).
            block2800b6d0PC := 8.
        ].
        block2800b6d0Step = 8 ifTrue: [
            (block2800b6d0Stack1) ifTrue: [block2800b6d0PC := 12] ifFalse: [block2800b6d0PC := 15].
        ].
        block2800b6d0Step = 12 ifTrue: [
            block2800b6d0Stack1 := block2800b6d0Arg1.
            block2800b6d0PC := 13.
        ].
        block2800b6d0Step = 13 ifTrue: [
            (block2800b6d0Stack1) setupAfterLoad.
            block2800b6d0PC := 15.
        ].
        block2800b6d0Step = 15 ifTrue: [
            block2800b6d0Stack1 := nil.
            block2800b6d0PC := 16.
        ].
        block2800b6d0Step = 16 ifTrue: [
            block2800b6d0Stack2 := block2800b6d0Arg1.
            block2800b6d0PC := 17.
        ].
        block2800b6d0Step = 17 ifTrue: [
            block2800b6d0Stack2 := (block2800b6d0Stack2) class.
            block2800b6d0PC := 19.
        ].
        block2800b6d0Step = 19 ifTrue: [
            block2800b6d0Stack3 := 'setupAfterLoadNonInherited'.
            block2800b6d0PC := 21.
        ].
        block2800b6d0Step = 21 ifTrue: [
            block2800b6d0Stack2 := (block2800b6d0Stack2) includesSelector: (block2800b6d0Stack3).
            block2800b6d0PC := 23.
        ].
        block2800b6d0Step = 23 ifTrue: [
            (block2800b6d0Stack2) ifTrue: [block2800b6d0PC := 26] ifFalse: [block2800b6d0PC := 30].
        ].
        block2800b6d0Step = 26 ifTrue: [
            block2800b6d0PC := 27.
        ].
        block2800b6d0Step = 27 ifTrue: [
            block2800b6d0Stack1 := block2800b6d0Arg1.
            block2800b6d0PC := 28.
        ].
        block2800b6d0Step = 28 ifTrue: [
            block2800b6d0Stack1 := (block2800b6d0Stack1) setupAfterLoadNonInherited.
            block2800b6d0PC := 30.
        ].
        block2800b6d0Step = 30 ifTrue: [
            block2800b6d0Result := block2800b6d0Stack1.
            block2800b6d0Done := true.
        ].
    ].
    block2800b6d0Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20027488; bytecode file offset 0x88590"
!SstWebServicesBaseExtensions class methodsFor: 'recovered'!
initializeExceptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExWSFatalError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExAll.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Web services fatal error'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ExWSFatalError := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := ExWSNonFatalError.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'Web services non-fatal error'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ExWSNonFatalError := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := ExWSUndefinedImplementationError.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'Web services undefined implementation'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ExWSUndefinedImplementationError := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := ExWSFatalDeploymentError.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := ExWSFatalError.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'A fatal error has occured during web service deployment'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ExWSFatalDeploymentError := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := ExWSNonFatalDeploymentError.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := ExWSNonFatalError.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 'A non-fatal error has occured during web service deployment.'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ExWSNonFatalDeploymentError := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := ExWSDeploymentError.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := ExWSNonFatalError.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ExWSDeploymentError := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := ExWSDeploymentError.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'An error occurred during web service deployment.'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

