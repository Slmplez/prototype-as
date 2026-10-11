"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004e258; bytecode file offset 0x94d048"
!AbtHelpApp class methodsFor: 'recovered'!
preStartUp
    (self) readIniFile.
    ^self
! !

"ASDBase.ic method 0x20164948; bytecode file offset 0xa6121c"
!AbtHelpApp class methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2016e738; bytecode file offset 0xa6b004"
!AbtHelpApp class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtHelpAccessor.
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
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) preStartUp.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) startUp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd8a0; bytecode file offset 0xafa19c"
!AbtHelpApp class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block280d8828Arg1 | 
    | block280d8828Stack0 block280d8828Stack1 block280d8828Stack2 block280d8828Stack3 block280d8828PC block280d8828Step block280d8828Done block280d8828Result |
    block280d8828Stack0 := self.
    block280d8828PC := 4.
    block280d8828Done := false.
    [block280d8828Done not] whileTrue: [
        block280d8828Step := block280d8828PC.
        block280d8828Step = 4 ifTrue: [
            block280d8828Stack1 := nil.
            block280d8828PC := 5.
        ].
        block280d8828Step = 5 ifTrue: [
            block280d8828Stack2 := block280d8828Arg1.
            block280d8828PC := 6.
        ].
        block280d8828Step = 6 ifTrue: [
            (block280d8828Stack2 == nil) ifTrue: [block280d8828PC := 13] ifFalse: [block280d8828PC := 10].
        ].
        block280d8828Step = 10 ifTrue: [
            block280d8828PC := 11.
        ].
        block280d8828Step = 11 ifTrue: [
            block280d8828Stack1 := block280d8828Arg1.
            block280d8828PC := 12.
        ].
        block280d8828Step = 12 ifTrue: [
            block280d8828Stack1 := (block280d8828Stack1) resetConnections.
            block280d8828PC := 13.
        ].
        block280d8828Step = 13 ifTrue: [
            block280d8828Result := block280d8828Stack1.
            block280d8828Done := true.
        ].
    ].
    block280d8828Result
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

"ASDBase.ic method 0x201fd8b4; bytecode file offset 0xafa19c"
!AbtHelpApp class methodsFor: 'recovered'!
removing
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
            recoveredStack2 := [:block280d884cArg1 | 
    | block280d884cStack0 block280d884cStack1 block280d884cStack2 block280d884cStack3 block280d884cPC block280d884cStep block280d884cDone block280d884cResult |
    block280d884cStack0 := self.
    block280d884cPC := 4.
    block280d884cDone := false.
    [block280d884cDone not] whileTrue: [
        block280d884cStep := block280d884cPC.
        block280d884cStep = 4 ifTrue: [
            block280d884cStack1 := nil.
            block280d884cPC := 5.
        ].
        block280d884cStep = 5 ifTrue: [
            block280d884cStack2 := block280d884cArg1.
            block280d884cPC := 6.
        ].
        block280d884cStep = 6 ifTrue: [
            (block280d884cStack2 == nil) ifTrue: [block280d884cPC := 13] ifFalse: [block280d884cPC := 10].
        ].
        block280d884cStep = 10 ifTrue: [
            block280d884cPC := 11.
        ].
        block280d884cStep = 11 ifTrue: [
            block280d884cStack1 := block280d884cArg1.
            block280d884cPC := 12.
        ].
        block280d884cStep = 12 ifTrue: [
            block280d884cStack1 := (block280d884cStack1) resetConnections.
            block280d884cPC := 13.
        ].
        block280d884cStep = 13 ifTrue: [
            block280d884cResult := block280d884cStack1.
            block280d884cDone := true.
        ].
    ].
    block280d884cResult
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

"ASDBase.ic method 0x20230184; bytecode file offset 0xb2ca4c"
!AbtHelpApp class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block280dce54Arg1 | 
    | block280dce54Stack0 block280dce54Stack1 block280dce54Stack2 block280dce54Stack3 block280dce54PC block280dce54Step block280dce54Done block280dce54Result |
    block280dce54Stack0 := self.
    block280dce54PC := 4.
    block280dce54Done := false.
    [block280dce54Done not] whileTrue: [
        block280dce54Step := block280dce54PC.
        block280dce54Step = 4 ifTrue: [
            block280dce54Stack1 := nil.
            block280dce54PC := 5.
        ].
        block280dce54Step = 5 ifTrue: [
            block280dce54Stack2 := block280dce54Arg1.
            block280dce54PC := 6.
        ].
        block280dce54Step = 6 ifTrue: [
            (block280dce54Stack2 == nil) ifTrue: [block280dce54PC := 13] ifFalse: [block280dce54PC := 10].
        ].
        block280dce54Step = 10 ifTrue: [
            block280dce54PC := 11.
        ].
        block280dce54Step = 11 ifTrue: [
            block280dce54Stack1 := block280dce54Arg1.
            block280dce54PC := 12.
        ].
        block280dce54Step = 12 ifTrue: [
            block280dce54Stack1 := (block280dce54Stack1) resetAccessors.
            block280dce54PC := 13.
        ].
        block280dce54Step = 13 ifTrue: [
            block280dce54Result := block280dce54Stack1.
            block280dce54Done := true.
        ].
    ].
    block280dce54Result
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
            recoveredStack1 := AbtHTMLHelpMapping.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) reinitialize.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047f10c; bytecode file offset 0xd7ba38"
!AbtHelpApp class methodsFor: 'recovered'!
readIniFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Help'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) iniFileGetContentsArray: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := Association.
    recoveredBlock16Value2 := recoveredBlock16Arg1.
    recoveredBlock16Value3 := (recoveredBlock16Value2) key.
    recoveredBlock16Value4 := (recoveredBlock16Value3) asLowercase.
    recoveredBlock16Value5 := recoveredBlock16Arg1.
    recoveredBlock16Value6 := (recoveredBlock16Value5) value.
    recoveredBlock16Value7 := (recoveredBlock16Value1) key: (recoveredBlock16Value4) value: (recoveredBlock16Value6).
    recoveredBlock16Value8 := (recoveredBlock16Value0) add: (recoveredBlock16Value7).
    recoveredBlock16Value8
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 'helpdocs'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := [:block2810240cArg1 | 
    | block2810240cValue0 block2810240cValue1 block2810240cValue2 |
    block2810240cValue0 := AbtHTMLHelpMapping.
    block2810240cValue1 := block2810240cArg1.
    block2810240cValue2 := (block2810240cValue0) helpDocs: (block2810240cValue1).
    block2810240cValue2
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'browser'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := [:block28102430Arg1 | 
    | block28102430Value0 block28102430Value1 block28102430Value2 |
    block28102430Value0 := AbtHTMLHelpAccessor.
    block28102430Value1 := block28102430Arg1.
    block28102430Value2 := (block28102430Value0) browserPath: (block28102430Value1).
    block28102430Value2
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := 'helprootdirectory'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := [:block28102454Arg1 | 
    | block28102454Value0 block28102454Value1 block28102454Value2 |
    block28102454Value0 := AbtHTMLHelpMapping.
    block28102454Value1 := block28102454Arg1.
    block28102454Value2 := (block28102454Value0) helpRootDirectory: (block28102454Value1).
    block28102454Value2
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := 'hostname'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := [:block28102478Arg1 | 
    | block28102478Value0 block28102478Value1 block28102478Value2 |
    block28102478Value0 := AbtHTMLHelpAccessor.
    block28102478Value1 := block28102478Arg1.
    block28102478Value2 := (block28102478Value0) hostname: (block28102478Value1).
    block28102478Value2
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'newsreader'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := [:block2810249cArg1 | 
    | block2810249cValue0 block2810249cValue1 block2810249cValue2 |
    block2810249cValue0 := AbtHTMLHelpAccessor.
    block2810249cValue1 := block2810249cArg1.
    block2810249cValue2 := (block2810249cValue0) newsreaderPath: (block2810249cValue1).
    block2810249cValue2
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

