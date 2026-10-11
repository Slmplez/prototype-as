"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002a3c; bytecode file offset 0x63b1c"
!SstWebServicesContainerApp class methodsFor: 'recovered'!
startUp
    (self) startContainerFromCommandLine.
    ^self
! !

"xxx_dyn.ic method 0x2000d4c8; bytecode file offset 0x6e5a4"
!SstWebServicesContainerApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initializeClassVariable: ('Containers') to: ('SstWSContainer newContainerCollection') inClassNamed: ('SstWSContainer').
    ^self
! !

"xxx_dyn.ic method 0x200188c4; bytecode file offset 0x79c2c"
!SstWebServicesContainerApp class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b328Arg1 | 
    | block2800b328Stack0 block2800b328Stack1 block2800b328Stack2 block2800b328Stack3 block2800b328Stack4 block2800b328PC block2800b328Step block2800b328Done block2800b328Result |
    block2800b328Stack0 := self.
    block2800b328PC := 4.
    block2800b328Done := false.
    [block2800b328Done not] whileTrue: [
        block2800b328Step := block2800b328PC.
        block2800b328Step = 4 ifTrue: [
            block2800b328Stack1 := block2800b328Arg1.
            block2800b328PC := 5.
        ].
        block2800b328Step = 5 ifTrue: [
            block2800b328Stack2 := 'setupAfterLoad'.
            block2800b328PC := 7.
        ].
        block2800b328Step = 7 ifTrue: [
            block2800b328Stack1 := (block2800b328Stack1) respondsTo: (block2800b328Stack2).
            block2800b328PC := 8.
        ].
        block2800b328Step = 8 ifTrue: [
            (block2800b328Stack1) ifTrue: [block2800b328PC := 12] ifFalse: [block2800b328PC := 15].
        ].
        block2800b328Step = 12 ifTrue: [
            block2800b328Stack1 := block2800b328Arg1.
            block2800b328PC := 13.
        ].
        block2800b328Step = 13 ifTrue: [
            (block2800b328Stack1) setupAfterLoad.
            block2800b328PC := 15.
        ].
        block2800b328Step = 15 ifTrue: [
            block2800b328Stack1 := nil.
            block2800b328PC := 16.
        ].
        block2800b328Step = 16 ifTrue: [
            block2800b328Stack2 := block2800b328Arg1.
            block2800b328PC := 17.
        ].
        block2800b328Step = 17 ifTrue: [
            block2800b328Stack2 := (block2800b328Stack2) class.
            block2800b328PC := 18.
        ].
        block2800b328Step = 18 ifTrue: [
            block2800b328Stack3 := 'setupAfterLoadNonInherited'.
            block2800b328PC := 20.
        ].
        block2800b328Step = 20 ifTrue: [
            block2800b328Stack2 := (block2800b328Stack2) includesSelector: (block2800b328Stack3).
            block2800b328PC := 22.
        ].
        block2800b328Step = 22 ifTrue: [
            (block2800b328Stack2) ifTrue: [block2800b328PC := 26] ifFalse: [block2800b328PC := 30].
        ].
        block2800b328Step = 26 ifTrue: [
            block2800b328PC := 27.
        ].
        block2800b328Step = 27 ifTrue: [
            block2800b328Stack1 := block2800b328Arg1.
            block2800b328PC := 28.
        ].
        block2800b328Step = 28 ifTrue: [
            block2800b328Stack1 := (block2800b328Stack1) setupAfterLoadNonInherited.
            block2800b328PC := 30.
        ].
        block2800b328Step = 30 ifTrue: [
            block2800b328Result := block2800b328Stack1.
            block2800b328Done := true.
        ].
    ].
    block2800b328Result
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

"xxx_dyn.ic method 0x20018ae0; bytecode file offset 0x79c2c"
!SstWebServicesContainerApp class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b544Arg1 | 
    | block2800b544Stack0 block2800b544Stack1 block2800b544Stack2 block2800b544Stack3 block2800b544Stack4 block2800b544PC block2800b544Step block2800b544Done block2800b544Result |
    block2800b544Stack0 := self.
    block2800b544PC := 4.
    block2800b544Done := false.
    [block2800b544Done not] whileTrue: [
        block2800b544Step := block2800b544PC.
        block2800b544Step = 4 ifTrue: [
            block2800b544Stack1 := block2800b544Arg1.
            block2800b544PC := 5.
        ].
        block2800b544Step = 5 ifTrue: [
            block2800b544Stack2 := 'cleanUpBeforeRemove'.
            block2800b544PC := 7.
        ].
        block2800b544Step = 7 ifTrue: [
            block2800b544Stack1 := (block2800b544Stack1) respondsTo: (block2800b544Stack2).
            block2800b544PC := 8.
        ].
        block2800b544Step = 8 ifTrue: [
            (block2800b544Stack1) ifTrue: [block2800b544PC := 12] ifFalse: [block2800b544PC := 15].
        ].
        block2800b544Step = 12 ifTrue: [
            block2800b544Stack1 := block2800b544Arg1.
            block2800b544PC := 13.
        ].
        block2800b544Step = 13 ifTrue: [
            (block2800b544Stack1) cleanUpBeforeRemove.
            block2800b544PC := 15.
        ].
        block2800b544Step = 15 ifTrue: [
            block2800b544Stack1 := nil.
            block2800b544PC := 16.
        ].
        block2800b544Step = 16 ifTrue: [
            block2800b544Stack2 := block2800b544Arg1.
            block2800b544PC := 17.
        ].
        block2800b544Step = 17 ifTrue: [
            block2800b544Stack2 := (block2800b544Stack2) class.
            block2800b544PC := 18.
        ].
        block2800b544Step = 18 ifTrue: [
            block2800b544Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b544PC := 20.
        ].
        block2800b544Step = 20 ifTrue: [
            block2800b544Stack2 := (block2800b544Stack2) includesSelector: (block2800b544Stack3).
            block2800b544PC := 22.
        ].
        block2800b544Step = 22 ifTrue: [
            (block2800b544Stack2) ifTrue: [block2800b544PC := 26] ifFalse: [block2800b544PC := 30].
        ].
        block2800b544Step = 26 ifTrue: [
            block2800b544PC := 27.
        ].
        block2800b544Step = 27 ifTrue: [
            block2800b544Stack1 := block2800b544Arg1.
            block2800b544PC := 28.
        ].
        block2800b544Step = 28 ifTrue: [
            block2800b544Stack1 := (block2800b544Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b544PC := 30.
        ].
        block2800b544Step = 30 ifTrue: [
            block2800b544Result := block2800b544Stack1.
            block2800b544Done := true.
        ].
    ].
    block2800b544Result
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

"xxx_dyn.ic method 0x20029e6c; bytecode file offset 0x8af94"
!SstWebServicesContainerApp class methodsFor: 'recovered'!
startContainerFromCommandLine
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) commandLine.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block2800c03cArg1 | 
    | block2800c03cLocal1 block2800c03cStack0 block2800c03cStack1 block2800c03cStack2 block2800c03cStack3 block2800c03cStack4 block2800c03cPC block2800c03cStep block2800c03cDone block2800c03cResult |
    block2800c03cStack0 := self.
    block2800c03cPC := 4.
    block2800c03cDone := false.
    [block2800c03cDone not] whileTrue: [
        block2800c03cStep := block2800c03cPC.
        block2800c03cStep = 4 ifTrue: [
            block2800c03cStack1 := nil.
            block2800c03cPC := 5.
        ].
        block2800c03cStep = 5 ifTrue: [
            block2800c03cStack2 := '-ws:*'.
            block2800c03cPC := 7.
        ].
        block2800c03cStep = 7 ifTrue: [
            block2800c03cStack3 := block2800c03cArg1.
            block2800c03cPC := 10.
        ].
        block2800c03cStep = 10 ifTrue: [
            block2800c03cStack2 := (block2800c03cStack2) match: (block2800c03cStack3).
            block2800c03cPC := 12.
        ].
        block2800c03cStep = 12 ifTrue: [
            (block2800c03cStack2) ifTrue: [block2800c03cPC := 16] ifFalse: [block2800c03cPC := 118].
        ].
        block2800c03cStep = 16 ifTrue: [
            block2800c03cPC := 17.
        ].
        block2800c03cStep = 17 ifTrue: [
            block2800c03cStack1 := block2800c03cArg1.
            block2800c03cPC := 20.
        ].
        block2800c03cStep = 20 ifTrue: [
            block2800c03cStack2 := 5.
            block2800c03cPC := 22.
        ].
        block2800c03cStep = 22 ifTrue: [
            block2800c03cStack3 := block2800c03cArg1.
            block2800c03cPC := 25.
        ].
        block2800c03cStep = 25 ifTrue: [
            block2800c03cStack3 := (block2800c03cStack3) size.
            block2800c03cPC := 27.
        ].
        block2800c03cStep = 27 ifTrue: [
            block2800c03cStack1 := (block2800c03cStack1) copyFrom: (block2800c03cStack2) to: (block2800c03cStack3).
            block2800c03cPC := 29.
        ].
        block2800c03cStep = 29 ifTrue: [
            block2800c03cLocal1 := block2800c03cStack1.
            block2800c03cPC := 32.
        ].
        block2800c03cStep = 32 ifTrue: [
            block2800c03cStack1 := nil.
            block2800c03cPC := 33.
        ].
        block2800c03cStep = 33 ifTrue: [
            block2800c03cStack2 := block2800c03cLocal1.
            block2800c03cPC := 36.
        ].
        block2800c03cStep = 36 ifTrue: [
            block2800c03cStack2 := (block2800c03cStack2) notEmpty.
            block2800c03cPC := 38.
        ].
        block2800c03cStep = 38 ifTrue: [
            (block2800c03cStack2) ifTrue: [block2800c03cPC := 42] ifFalse: [block2800c03cPC := 114].
        ].
        block2800c03cStep = 42 ifTrue: [
            block2800c03cPC := 43.
        ].
        block2800c03cStep = 43 ifTrue: [
            block2800c03cStack1 := [
    | block2800c03cBlock43Value0 block2800c03cBlock43Value1 block2800c03cBlock43Value2 block2800c03cBlock43Value3 |
    block2800c03cBlock43Value0 := [
    | block2800c03cBlock43Block50Value0 block2800c03cBlock43Block50Value1 block2800c03cBlock43Block50Value2 |
    block2800c03cBlock43Block50Value0 := SstWSContainer.
    block2800c03cBlock43Block50Value1 := block2800c03cLocal1.
    block2800c03cBlock43Block50Value2 := (block2800c03cBlock43Block50Value0) deploy: (block2800c03cBlock43Block50Value1).
    block2800c03cBlock43Block50Value2
].
    block2800c03cBlock43Value1 := ExAll.
    block2800c03cBlock43Value2 := [:block2800c03cBlock43Block66Arg1 | 
    | block2800c03cBlock43Block66Stack0 block2800c03cBlock43Block66Stack1 block2800c03cBlock43Block66Stack2 block2800c03cBlock43Block66Stack3 block2800c03cBlock43Block66Stack4 block2800c03cBlock43Block66PC block2800c03cBlock43Block66Step block2800c03cBlock43Block66Done block2800c03cBlock43Block66Result |
    block2800c03cBlock43Block66Stack0 := nil.
    block2800c03cBlock43Block66PC := 72.
    block2800c03cBlock43Block66Done := false.
    [block2800c03cBlock43Block66Done not] whileTrue: [
        block2800c03cBlock43Block66Step := block2800c03cBlock43Block66PC.
        block2800c03cBlock43Block66Step = 72 ifTrue: [
            block2800c03cBlock43Block66Stack1 := AbtXmlUtility.
            block2800c03cBlock43Block66PC := 74.
        ].
        block2800c03cBlock43Block66Step = 74 ifTrue: [
            block2800c03cBlock43Block66Stack2 := block2800c03cBlock43Block66Arg1.
            block2800c03cBlock43Block66PC := 75.
        ].
        block2800c03cBlock43Block66Step = 75 ifTrue: [
            block2800c03cBlock43Block66Stack2 := (block2800c03cBlock43Block66Stack2) argument.
            block2800c03cBlock43Block66PC := 77.
        ].
        block2800c03cBlock43Block66Step = 77 ifTrue: [
            block2800c03cBlock43Block66Stack2 := (block2800c03cBlock43Block66Stack2) printString.
            block2800c03cBlock43Block66PC := 79.
        ].
        block2800c03cBlock43Block66Step = 79 ifTrue: [
            (block2800c03cBlock43Block66Stack1) logError: (block2800c03cBlock43Block66Stack2).
            block2800c03cBlock43Block66PC := 81.
        ].
        block2800c03cBlock43Block66Step = 81 ifTrue: [
            block2800c03cBlock43Block66Stack1 := System.
            block2800c03cBlock43Block66PC := 83.
        ].
        block2800c03cBlock43Block66Step = 83 ifTrue: [
            block2800c03cBlock43Block66Stack1 := (block2800c03cBlock43Block66Stack1) image.
            block2800c03cBlock43Block66PC := 84.
        ].
        block2800c03cBlock43Block66Step = 84 ifTrue: [
            block2800c03cBlock43Block66Stack1 := (block2800c03cBlock43Block66Stack1) isRuntime.
            block2800c03cBlock43Block66PC := 86.
        ].
        block2800c03cBlock43Block66Step = 86 ifTrue: [
            (block2800c03cBlock43Block66Stack1) ifTrue: [block2800c03cBlock43Block66PC := 90] ifFalse: [block2800c03cBlock43Block66PC := 104].
        ].
        block2800c03cBlock43Block66Step = 90 ifTrue: [
            block2800c03cBlock43Block66Stack1 := System.
            block2800c03cBlock43Block66PC := 92.
        ].
        block2800c03cBlock43Block66Step = 92 ifTrue: [
            block2800c03cBlock43Block66Stack1 := (block2800c03cBlock43Block66Stack1) image.
            block2800c03cBlock43Block66PC := 93.
        ].
        block2800c03cBlock43Block66Step = 93 ifTrue: [
            block2800c03cBlock43Block66Stack1 := (block2800c03cBlock43Block66Stack1) startUpClass.
            block2800c03cBlock43Block66PC := 95.
        ].
        block2800c03cBlock43Block66Step = 95 ifTrue: [
            block2800c03cBlock43Block66Stack2 := 'Walkback occurred during deployment of %1'.
            block2800c03cBlock43Block66PC := 97.
        ].
        block2800c03cBlock43Block66Step = 97 ifTrue: [
            block2800c03cBlock43Block66Stack3 := block2800c03cLocal1.
            block2800c03cBlock43Block66PC := 100.
        ].
        block2800c03cBlock43Block66Step = 100 ifTrue: [
            block2800c03cBlock43Block66Stack2 := (block2800c03cBlock43Block66Stack2) bindWith: (block2800c03cBlock43Block66Stack3).
            block2800c03cBlock43Block66PC := 102.
        ].
        block2800c03cBlock43Block66Step = 102 ifTrue: [
            (block2800c03cBlock43Block66Stack1) outputWalkback: (block2800c03cBlock43Block66Stack2).
            block2800c03cBlock43Block66PC := 104.
        ].
        block2800c03cBlock43Block66Step = 104 ifTrue: [
            block2800c03cBlock43Block66Stack1 := block2800c03cBlock43Block66Arg1.
            block2800c03cBlock43Block66PC := 105.
        ].
        block2800c03cBlock43Block66Step = 105 ifTrue: [
            block2800c03cBlock43Block66Stack2 := nil.
            block2800c03cBlock43Block66PC := 106.
        ].
        block2800c03cBlock43Block66Step = 106 ifTrue: [
            block2800c03cBlock43Block66Stack1 := (block2800c03cBlock43Block66Stack1) exitWith: (block2800c03cBlock43Block66Stack2).
            block2800c03cBlock43Block66PC := 108.
        ].
        block2800c03cBlock43Block66Step = 108 ifTrue: [
            block2800c03cBlock43Block66Result := block2800c03cBlock43Block66Stack1.
            block2800c03cBlock43Block66Done := true.
        ].
    ].
    block2800c03cBlock43Block66Result
].
    block2800c03cBlock43Value3 := (block2800c03cBlock43Value0) when: (block2800c03cBlock43Value1) do: (block2800c03cBlock43Value2).
    block2800c03cBlock43Value3
].
            block2800c03cPC := 112.
        ].
        block2800c03cStep = 112 ifTrue: [
            block2800c03cStack1 := (block2800c03cStack1) fork.
            block2800c03cPC := 114.
        ].
        block2800c03cStep = 114 ifTrue: [
            block2800c03cStack2 := nil.
            block2800c03cPC := 115.
        ].
        block2800c03cStep = 115 ifTrue: [
            block2800c03cLocal1 := block2800c03cStack2.
            block2800c03cPC := 118.
        ].
        block2800c03cStep = 118 ifTrue: [
            block2800c03cResult := block2800c03cStack1.
            block2800c03cDone := true.
        ].
    ].
    block2800c03cResult
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

