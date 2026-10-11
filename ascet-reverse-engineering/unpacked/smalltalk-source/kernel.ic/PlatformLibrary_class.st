"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000d1c4; bytecode file offset 0x580e4"
!PlatformLibrary class methodsFor: 'recovered'!
logicalName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) libraryIndex: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryAtIndex: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000fd5c; bytecode file offset 0x5ac78"
!PlatformLibrary class methodsFor: 'recovered'!
closeAll
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SharedLibraries.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280089b0Arg1 | 
    | block280089b0Stack0 block280089b0Stack1 block280089b0Stack2 block280089b0Stack3 block280089b0PC block280089b0Step block280089b0Done block280089b0Result |
    block280089b0Stack0 := self.
    block280089b0PC := 4.
    block280089b0Done := false.
    [block280089b0Done not] whileTrue: [
        block280089b0Step := block280089b0PC.
        block280089b0Step = 4 ifTrue: [
            block280089b0Stack1 := nil.
            block280089b0PC := 5.
        ].
        block280089b0Step = 5 ifTrue: [
            block280089b0Stack2 := block280089b0Arg1.
            block280089b0PC := 6.
        ].
        block280089b0Step = 6 ifTrue: [
            (block280089b0Stack2 == nil) ifTrue: [block280089b0PC := 13] ifFalse: [block280089b0PC := 10].
        ].
        block280089b0Step = 10 ifTrue: [
            block280089b0PC := 11.
        ].
        block280089b0Step = 11 ifTrue: [
            block280089b0Stack1 := block280089b0Arg1.
            block280089b0PC := 12.
        ].
        block280089b0Step = 12 ifTrue: [
            block280089b0Stack1 := (block280089b0Stack1) close.
            block280089b0PC := 13.
        ].
        block280089b0Step = 13 ifTrue: [
            block280089b0Result := block280089b0Stack1.
            block280089b0Done := true.
        ].
    ].
    block280089b0Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20010cb0; bytecode file offset 0x5bbc8"
!PlatformLibrary class methodsFor: 'recovered'!
libraryAtIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := SharedLibraries.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SharedLibraries.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20012cc8; bytecode file offset 0x5dbec"
!PlatformLibrary class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SharedLibraries.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28008d2cArg1 | 
    | block28008d2cStack0 block28008d2cStack1 block28008d2cStack2 block28008d2cStack3 block28008d2cPC block28008d2cStep block28008d2cDone block28008d2cResult |
    block28008d2cStack0 := self.
    block28008d2cPC := 4.
    block28008d2cDone := false.
    [block28008d2cDone not] whileTrue: [
        block28008d2cStep := block28008d2cPC.
        block28008d2cStep = 4 ifTrue: [
            block28008d2cStack1 := nil.
            block28008d2cPC := 5.
        ].
        block28008d2cStep = 5 ifTrue: [
            block28008d2cStack2 := block28008d2cArg1.
            block28008d2cPC := 6.
        ].
        block28008d2cStep = 6 ifTrue: [
            (block28008d2cStack2 == nil) ifTrue: [block28008d2cPC := 19] ifFalse: [block28008d2cPC := 10].
        ].
        block28008d2cStep = 10 ifTrue: [
            block28008d2cPC := 11.
        ].
        block28008d2cStep = 11 ifTrue: [
            block28008d2cStack1 := block28008d2cArg1.
            block28008d2cPC := 12.
        ].
        block28008d2cStep = 12 ifTrue: [
            block28008d2cStack2 := block28008d2cStack1.
            block28008d2cPC := 13.
        ].
        block28008d2cStep = 13 ifTrue: [
            (block28008d2cStack2) forceClose.
            block28008d2cPC := 15.
        ].
        block28008d2cStep = 15 ifTrue: [
            block28008d2cStack2 := block28008d2cArg1.
            block28008d2cPC := 16.
        ].
        block28008d2cStep = 16 ifTrue: [
            block28008d2cStack2 := (block28008d2cStack2) logicalName.
            block28008d2cPC := 17.
        ].
        block28008d2cStep = 17 ifTrue: [
            block28008d2cStack1 := (block28008d2cStack1) name: (block28008d2cStack2).
            block28008d2cPC := 19.
        ].
        block28008d2cStep = 19 ifTrue: [
            block28008d2cResult := block28008d2cStack1.
            block28008d2cDone := true.
        ].
    ].
    block28008d2cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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

"kernel.ic method 0x20012d50; bytecode file offset 0x5dc74"
!PlatformLibrary class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SharedLibraries.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            SharedLibraries := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Aliases.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            Aliases := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001a6dc; bytecode file offset 0x65614"
!PlatformLibrary class methodsFor: 'recovered'!
removeMappingForLogicalName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 |
    recoveredBlock16Value0 := Aliases.
    recoveredBlock16Value1 := recoveredArg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) asReducedString.
    recoveredBlock16Value3 := [].
    (recoveredBlock16Value0) removeKey: (recoveredBlock16Value2) ifAbsent: (recoveredBlock16Value3).
    recoveredBlock16Value4 := recoveredArg1.
    recoveredBlock16Value5 := (self) logicalName: (recoveredBlock16Value4).
    recoveredBlock16Value6 := recoveredBlock16Value5.
    (recoveredBlock16Value6) close.
    recoveredBlock16Value7 := recoveredArg1.
    recoveredBlock16Value8 := (recoveredBlock16Value5) name: (recoveredBlock16Value7).
    recoveredBlock16Value8
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001ca5c; bytecode file offset 0x67988"
!PlatformLibrary class methodsFor: 'recovered'!
shutDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SharedLibraries.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800911cArg1 | 
    | block2800911cStack0 block2800911cStack1 block2800911cStack2 block2800911cStack3 block2800911cStack4 block2800911cPC block2800911cStep block2800911cDone block2800911cResult |
    block2800911cStack0 := self.
    block2800911cPC := 4.
    block2800911cDone := false.
    [block2800911cDone not] whileTrue: [
        block2800911cStep := block2800911cPC.
        block2800911cStep = 4 ifTrue: [
            block2800911cStack1 := nil.
            block2800911cPC := 5.
        ].
        block2800911cStep = 5 ifTrue: [
            block2800911cStack2 := block2800911cArg1.
            block2800911cPC := 8.
        ].
        block2800911cStep = 8 ifTrue: [
            (block2800911cStack2 == nil) ifTrue: [block2800911cPC := 46] ifFalse: [block2800911cPC := 12].
        ].
        block2800911cStep = 12 ifTrue: [
            block2800911cPC := 13.
        ].
        block2800911cStep = 13 ifTrue: [
            block2800911cStack1 := [
    | block2800911cBlock13Value0 block2800911cBlock13Value1 |
    block2800911cBlock13Value0 := block2800911cArg1.
    block2800911cBlock13Value1 := (block2800911cBlock13Value0) primClose.
    block2800911cBlock13Value1
].
            block2800911cPC := 25.
        ].
        block2800911cStep = 25 ifTrue: [
            block2800911cStack2 := ExError.
            block2800911cPC := 27.
        ].
        block2800911cStep = 27 ifTrue: [
            block2800911cStack3 := [:block2800911cBlock27Arg1 | 
    | block2800911cBlock27Value0 block2800911cBlock27Value1 block2800911cBlock27Value2 |
    block2800911cBlock27Value0 := block2800911cArg1.
    (block2800911cBlock27Value0) forceClose.
    block2800911cBlock27Value1 := block2800911cBlock27Arg1.
    block2800911cBlock27Value2 := (block2800911cBlock27Value1) exitWith: (nil).
    block2800911cBlock27Value2
].
            block2800911cPC := 44.
        ].
        block2800911cStep = 44 ifTrue: [
            block2800911cStack1 := (block2800911cStack1) when: (block2800911cStack2) do: (block2800911cStack3).
            block2800911cPC := 46.
        ].
        block2800911cStep = 46 ifTrue: [
            block2800911cResult := block2800911cStack1.
            block2800911cDone := true.
        ].
    ].
    block2800911cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20026430; bytecode file offset 0x7136c"
!PlatformLibrary class methodsFor: 'recovered'!
mapLogicalName: recoveredArg1 toPhysicalName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeMappingForLogicalName: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := Aliases.
            recoveredBlock65PC := 74.
        ].
        recoveredBlock65Step = 74 ifTrue: [
            recoveredBlock65Stack2 := recoveredLocal2.
            recoveredBlock65PC := 77.
        ].
        recoveredBlock65Step = 77 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) asReducedString.
            recoveredBlock65PC := 79.
        ].
        recoveredBlock65Step = 79 ifTrue: [
            recoveredBlock65Stack3 := recoveredLocal1.
            recoveredBlock65PC := 82.
        ].
        recoveredBlock65Step = 82 ifTrue: [
            (recoveredBlock65Stack3 ~~ nil) ifTrue: [recoveredBlock65PC := 90] ifFalse: [recoveredBlock65PC := 86].
        ].
        recoveredBlock65Step = 86 ifTrue: [
            recoveredBlock65Stack3 := nil.
            recoveredBlock65PC := 87.
        ].
        recoveredBlock65Step = 87 ifTrue: [
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 90 ifTrue: [
            recoveredBlock65Stack3 := recoveredLocal1.
            recoveredBlock65PC := 93.
        ].
        recoveredBlock65Step = 93 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) asReducedString.
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 95 ifTrue: [
            (recoveredBlock65Stack1) at: (recoveredBlock65Stack2) put: (recoveredBlock65Stack3).
            recoveredBlock65PC := 97.
        ].
        recoveredBlock65Step = 97 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal2.
            recoveredBlock65PC := 100.
        ].
        recoveredBlock65Step = 100 ifTrue: [
            recoveredBlock65Stack0 := (recoveredBlock65Stack0) logicalName: (recoveredBlock65Stack1).
            recoveredBlock65PC := 102.
        ].
        recoveredBlock65Step = 102 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Stack0.
            recoveredBlock65PC := 103.
        ].
        recoveredBlock65Step = 103 ifTrue: [
            (recoveredBlock65Stack1) close.
            recoveredBlock65PC := 105.
        ].
        recoveredBlock65Step = 105 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal2.
            recoveredBlock65PC := 108.
        ].
        recoveredBlock65Step = 108 ifTrue: [
            recoveredBlock65Stack0 := (recoveredBlock65Stack0) name: (recoveredBlock65Stack1).
            recoveredBlock65PC := 110.
        ].
        recoveredBlock65Step = 110 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack0.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002711c; bytecode file offset 0x72068"
!PlatformLibrary class methodsFor: 'recovered'!
libraryIndex: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asReducedString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SharedLibraries.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 :recoveredBlock25Arg2 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            (recoveredBlock25Stack2 == nil) ifTrue: [recoveredBlock25PC := 51] ifFalse: [recoveredBlock25PC := 38].
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) logicalName.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack3 := recoveredLocal2.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) = (recoveredBlock25Stack3).
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 48] ifFalse: [recoveredBlock25PC := 51].
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg2.
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            ^recoveredBlock25Stack1
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := SharedLibraries.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := [
    | block280093ecLocal1 block280093ecValue0 block280093ecValue1 block280093ecValue2 block280093ecValue3 block280093ecValue4 block280093ecValue5 block280093ecValue6 block280093ecValue7 block280093ecValue8 block280093ecValue9 block280093ecValue10 block280093ecValue11 block280093ecValue12 |
    block280093ecValue0 := SharedLibraries.
    block280093ecLocal1 := block280093ecValue0.
    block280093ecValue1 := Array.
    block280093ecValue2 := block280093ecLocal1.
    block280093ecValue3 := (block280093ecValue2) size.
    block280093ecValue4 := (block280093ecValue3) + (16).
    block280093ecValue5 := (block280093ecValue1) new: (block280093ecValue4).
    SharedLibraries := block280093ecValue5.
    block280093ecValue6 := SharedLibraries.
    block280093ecValue7 := block280093ecLocal1.
    block280093ecValue8 := (block280093ecValue7) size.
    block280093ecValue9 := block280093ecLocal1.
    (block280093ecValue6) replaceFrom: (1) to: (block280093ecValue8) with: (block280093ecValue9) startingAt: (1).
    block280093ecValue10 := block280093ecLocal1.
    block280093ecValue11 := (block280093ecValue10) size.
    block280093ecValue12 := (block280093ecValue11) + (1).
    block280093ecValue12
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := SharedLibraries.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) name: (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2002db50; bytecode file offset 0x78ac8"
!PlatformLibrary class methodsFor: 'recovered'!
removeUnreferencedLibraries
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) enableAsyncMessages: (false).
    recoveredLocal3 := recoveredValue1.
    (self) closeAll.
    recoveredValue2 := PlatformFunction.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    recoveredValue4 := (recoveredValue3) asArray.
    recoveredValue5 := (recoveredValue4) multiAllInstances.
    recoveredValue6 := (recoveredValue5) copyWithout: (nil).
    recoveredLocal6 := recoveredValue6.
    recoveredValue7 := SharedLibraries.
    recoveredValue8 := (recoveredValue7) asSet.
    recoveredLocal5 := recoveredValue8.
    recoveredValue9 := Dictionary.
    recoveredValue10 := (recoveredValue9) new.
    recoveredLocal4 := recoveredValue10.
    recoveredValue11 := recoveredLocal5.
    recoveredValue12 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 recoveredBlock44Value7 |
    recoveredBlock44Value0 := recoveredLocal4.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := Array.
    recoveredBlock44Value3 := recoveredBlock44Arg1.
    recoveredBlock44Value4 := (recoveredBlock44Value3) logicalName.
    recoveredBlock44Value5 := (self) libraryIndex: (recoveredBlock44Value4).
    recoveredBlock44Value6 := (recoveredBlock44Value2) with: (recoveredBlock44Value5) with: (0).
    recoveredBlock44Value7 := (recoveredBlock44Value0) at: (recoveredBlock44Value1) put: (recoveredBlock44Value6).
    recoveredBlock44Value7
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := Set.
    recoveredValue14 := (recoveredValue13) new.
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal6.
    recoveredValue16 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 |
    recoveredBlock81Value0 := recoveredLocal1.
    recoveredBlock81Value1 := recoveredBlock81Arg1.
    recoveredBlock81Value2 := (recoveredBlock81Value1) library.
    recoveredBlock81Value3 := (recoveredBlock81Value0) add: (recoveredBlock81Value2).
    recoveredBlock81Value3
].
    (recoveredValue15) do: (recoveredValue16).
    recoveredValue17 := Array.
    recoveredValue18 := (recoveredValue17) new: (64).
    SharedLibraries := recoveredValue18.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 recoveredBlock111Value4 recoveredBlock111Value5 recoveredBlock111Value6 |
    recoveredBlock111Value0 := recoveredLocal4.
    recoveredBlock111Value1 := recoveredBlock111Arg1.
    recoveredBlock111Value2 := (recoveredBlock111Value0) at: (recoveredBlock111Value1).
    recoveredBlock111Value3 := recoveredBlock111Arg1.
    recoveredBlock111Value4 := (recoveredBlock111Value3) logicalName.
    recoveredBlock111Value5 := (self) libraryIndex: (recoveredBlock111Value4).
    recoveredBlock111Value6 := (recoveredBlock111Value2) at: (2) put: (recoveredBlock111Value5).
    recoveredBlock111Value6
].
    (recoveredValue19) do: (recoveredValue20).
    recoveredValue21 := Dictionary.
    recoveredValue22 := (recoveredValue21) new.
    recoveredLocal2 := recoveredValue22.
    recoveredValue23 := recoveredLocal4.
    recoveredValue24 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Value0 recoveredBlock147Value1 recoveredBlock147Value2 recoveredBlock147Value3 recoveredBlock147Value4 recoveredBlock147Value5 |
    recoveredBlock147Value0 := recoveredLocal2.
    recoveredBlock147Value1 := recoveredBlock147Arg1.
    recoveredBlock147Value2 := (recoveredBlock147Value1) first.
    recoveredBlock147Value3 := recoveredBlock147Arg1.
    recoveredBlock147Value4 := (recoveredBlock147Value3) last.
    recoveredBlock147Value5 := (recoveredBlock147Value0) at: (recoveredBlock147Value2) put: (recoveredBlock147Value4).
    recoveredBlock147Value5
].
    (recoveredValue23) do: (recoveredValue24).
    recoveredValue25 := recoveredLocal6.
    recoveredValue26 := [:recoveredBlock171Arg1 | 
    | recoveredBlock171Local1 recoveredBlock171Stack0 recoveredBlock171Stack1 recoveredBlock171Stack2 recoveredBlock171Stack3 recoveredBlock171Stack4 recoveredBlock171PC recoveredBlock171Step recoveredBlock171Done recoveredBlock171Result |
    recoveredBlock171Stack0 := self.
    recoveredBlock171PC := 178.
    recoveredBlock171Done := false.
    [recoveredBlock171Done not] whileTrue: [
        recoveredBlock171Step := recoveredBlock171PC.
        recoveredBlock171Step = 178 ifTrue: [
            recoveredBlock171Stack1 := recoveredBlock171Arg1.
            recoveredBlock171PC := 179.
        ].
        recoveredBlock171Step = 179 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) libraryIndex.
            recoveredBlock171PC := 181.
        ].
        recoveredBlock171Step = 181 ifTrue: [
            recoveredBlock171Local1 := recoveredBlock171Stack1.
            recoveredBlock171PC := 182.
        ].
        recoveredBlock171Step = 182 ifTrue: [
            recoveredBlock171Stack1 := nil.
            recoveredBlock171PC := 183.
        ].
        recoveredBlock171Step = 183 ifTrue: [
            recoveredBlock171Stack2 := recoveredLocal2.
            recoveredBlock171PC := 186.
        ].
        recoveredBlock171Step = 186 ifTrue: [
            recoveredBlock171Stack3 := recoveredBlock171Local1.
            recoveredBlock171PC := 187.
        ].
        recoveredBlock171Step = 187 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) includesKey: (recoveredBlock171Stack3).
            recoveredBlock171PC := 189.
        ].
        recoveredBlock171Step = 189 ifTrue: [
            (recoveredBlock171Stack2) ifTrue: [recoveredBlock171PC := 192] ifFalse: [recoveredBlock171PC := 202].
        ].
        recoveredBlock171Step = 192 ifTrue: [
            recoveredBlock171PC := 193.
        ].
        recoveredBlock171Step = 193 ifTrue: [
            recoveredBlock171Stack1 := recoveredBlock171Arg1.
            recoveredBlock171PC := 194.
        ].
        recoveredBlock171Step = 194 ifTrue: [
            recoveredBlock171Stack2 := recoveredLocal2.
            recoveredBlock171PC := 197.
        ].
        recoveredBlock171Step = 197 ifTrue: [
            recoveredBlock171Stack3 := recoveredBlock171Local1.
            recoveredBlock171PC := 198.
        ].
        recoveredBlock171Step = 198 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) at: (recoveredBlock171Stack3).
            recoveredBlock171PC := 200.
        ].
        recoveredBlock171Step = 200 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) libraryIndex: (recoveredBlock171Stack2).
            recoveredBlock171PC := 202.
        ].
        recoveredBlock171Step = 202 ifTrue: [
            recoveredBlock171Result := recoveredBlock171Stack1.
            recoveredBlock171Done := true.
        ].
    ].
    recoveredBlock171Result
].
    (recoveredValue25) do: (recoveredValue26).
    recoveredValue27 := Processor.
    recoveredValue28 := recoveredLocal3.
    (recoveredValue27) enableAsyncMessages: (recoveredValue28).
    ^self
! !

