"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ff38; bytecode file offset 0x94d048"
!ASDTextNavigationManager methodsFor: 'recovered'!
update
    (self) initialize.
    ^self
! !

"ASDBase.ic method 0x20066aac; bytecode file offset 0x963428"
!ASDTextNavigationManager methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067ca4; bytecode file offset 0x9646f8"
!ASDTextNavigationManager methodsFor: 'recovered'!
controller
    | recoveredValue0 |
    recoveredValue0 := controller.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a040; bytecode file offset 0x966bdc"
!ASDTextNavigationManager methodsFor: 'recovered'!
updateProcess
    | recoveredValue0 |
    recoveredValue0 := updateProcess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200749ac; bytecode file offset 0x9757c8"
!ASDTextNavigationManager methodsFor: 'recovered'!
isTextNavigationManager
    ^true
! !

"ASDBase.ic method 0x200bdf44; bytecode file offset 0x9bb178"
!ASDTextNavigationManager methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    item := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be9d8; bytecode file offset 0x9bc0b4"
!ASDTextNavigationManager methodsFor: 'recovered'!
controller: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    controller := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfaf4; bytecode file offset 0x9bd228"
!ASDTextNavigationManager methodsFor: 'recovered'!
wrapperList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    wrapperList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20120398; bytecode file offset 0xa1cc54"
!ASDTextNavigationManager methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodDeclaration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) buildNavigationForMethodInBackground: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20129660; bytecode file offset 0xa25f5c"
!ASDTextNavigationManager methodsFor: 'recovered'!
wrapperList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := wrapperList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            wrapperList := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := wrapperList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201309b8; bytecode file offset 0xa2d270"
!ASDTextNavigationManager methodsFor: 'recovered'!
updateProcess: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := updateProcess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := updateProcess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            updateProcess := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021c9d4; bytecode file offset 0xb192ac"
!ASDTextNavigationManager methodsFor: 'recovered'!
buildNavigationForMethodInBackground: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (self) buildNavigationForMethod: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := Processor.
    recoveredValue2 := (recoveredValue1) systemBackgroundPriority.
    recoveredValue3 := (self) item.
    recoveredValue4 := (recoveredValue3) label.
    recoveredValue5 := ('TextNavigationUpdate::') , (recoveredValue4).
    recoveredValue6 := (recoveredValue0) forkAt: (recoveredValue2) named: (recoveredValue5).
    (self) updateProcess: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2026a2d4; bytecode file offset 0xb66ba0"
!ASDTextNavigationManager methodsFor: 'recovered'!
releaseObserver
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) updateProcess: (nil).
    recoveredValue0 := (self) dependents.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (self) removeDependent: (recoveredBlock9Value0).
    recoveredBlock9Value1
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) wrapperList.
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := (recoveredBlock26Value0) removeDependent: (self).
    recoveredBlock26Value1
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203217a4; bytecode file offset 0xc1e090"
!ASDTextNavigationManager methodsFor: 'recovered'!
buildNavigationForMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetstatusBarPan4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) buildNavigationForMethod: (recoveredStack1) statusBarPanel: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) image.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) image: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolTipText.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) toolTipText: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) changed: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) updateProcess: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203acbfc; bytecode file offset 0xca94c8"
!ASDTextNavigationManager methodsFor: 'recovered'!
lineOffsets: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := Lf.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := recoveredLocal1.
    recoveredBlock34Value1 := recoveredArg1.
    recoveredBlock34Value2 := (recoveredBlock34Value1) size.
    (recoveredBlock34Value0) add: (recoveredBlock34Value2).
    recoveredBlock34Value3 := recoveredLocal1.
    ^recoveredBlock34Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2) startingAt: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20474a40; bytecode file offset 0xd71320"
!ASDTextNavigationManager methodsFor: 'recovered'!
convertIndexes: recoveredArg1 lineOffsets: recoveredArg2 length: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Local1 := false.
    recoveredBlock13Value0 := recoveredArg2.
    recoveredBlock13Value1 := [:recoveredBlock13Block27Arg1 :recoveredBlock13Block27Arg2 | 
    | recoveredBlock13Block27Local1 recoveredBlock13Block27Stack0 recoveredBlock13Block27Stack1 recoveredBlock13Block27Stack2 recoveredBlock13Block27Stack3 recoveredBlock13Block27Stack4 recoveredBlock13Block27Stack5 recoveredBlock13Block27Stack6 recoveredBlock13Block27Stack7 recoveredBlock13Block27PC recoveredBlock13Block27Step recoveredBlock13Block27Done recoveredBlock13Block27Result |
    recoveredBlock13Block27Stack0 := nil.
    recoveredBlock13Block27PC := 34.
    recoveredBlock13Block27Done := false.
    [recoveredBlock13Block27Done not] whileTrue: [
        recoveredBlock13Block27Step := recoveredBlock13Block27PC.
        recoveredBlock13Block27Step = 34 ifTrue: [
            recoveredBlock13Block27Stack1 := nil.
            recoveredBlock13Block27PC := 35.
        ].
        recoveredBlock13Block27Step = 35 ifTrue: [
            recoveredBlock13Block27Stack2 := recoveredBlock13Local1.
            recoveredBlock13Block27PC := 38.
        ].
        recoveredBlock13Block27Step = 38 ifTrue: [
            (recoveredBlock13Block27Stack2) ifTrue: [recoveredBlock13Block27PC := 114] ifFalse: [recoveredBlock13Block27PC := 42].
        ].
        recoveredBlock13Block27Step = 42 ifTrue: [
            recoveredBlock13Block27Stack2 := recoveredBlock13Block27Arg1.
            recoveredBlock13Block27PC := 43.
        ].
        recoveredBlock13Block27Step = 43 ifTrue: [
            recoveredBlock13Block27Stack3 := recoveredBlock13Arg1.
            recoveredBlock13Block27PC := 46.
        ].
        recoveredBlock13Block27Step = 46 ifTrue: [
            recoveredBlock13Block27Stack2 := (recoveredBlock13Block27Stack2) > (recoveredBlock13Block27Stack3).
            recoveredBlock13Block27PC := 47.
        ].
        recoveredBlock13Block27Step = 47 ifTrue: [
            (recoveredBlock13Block27Stack2) ifTrue: [recoveredBlock13Block27PC := 50] ifFalse: [recoveredBlock13Block27PC := 114].
        ].
        recoveredBlock13Block27Step = 50 ifTrue: [
            recoveredBlock13Block27PC := 51.
        ].
        recoveredBlock13Block27Step = 51 ifTrue: [
            recoveredBlock13Block27Stack1 := true.
            recoveredBlock13Block27PC := 52.
        ].
        recoveredBlock13Block27Step = 52 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Block27Stack1.
            recoveredBlock13Block27PC := 55.
        ].
        recoveredBlock13Block27Step = 55 ifTrue: [
            recoveredBlock13Block27Stack1 := recoveredBlock13Block27Arg2.
            recoveredBlock13Block27PC := 56.
        ].
        recoveredBlock13Block27Step = 56 ifTrue: [
            recoveredBlock13Block27Stack2 := 1.
            recoveredBlock13Block27PC := 58.
        ].
        recoveredBlock13Block27Step = 58 ifTrue: [
            recoveredBlock13Block27Stack1 := (recoveredBlock13Block27Stack1) > (recoveredBlock13Block27Stack2).
            recoveredBlock13Block27PC := 59.
        ].
        recoveredBlock13Block27Step = 59 ifTrue: [
            (recoveredBlock13Block27Stack1) ifTrue: [recoveredBlock13Block27PC := 62] ifFalse: [recoveredBlock13Block27PC := 76].
        ].
        recoveredBlock13Block27Step = 62 ifTrue: [
            recoveredBlock13Block27Stack1 := recoveredBlock13Arg1.
            recoveredBlock13Block27PC := 65.
        ].
        recoveredBlock13Block27Step = 65 ifTrue: [
            recoveredBlock13Block27Stack2 := recoveredArg2.
            recoveredBlock13Block27PC := 68.
        ].
        recoveredBlock13Block27Step = 68 ifTrue: [
            recoveredBlock13Block27Stack3 := recoveredBlock13Block27Arg2.
            recoveredBlock13Block27PC := 69.
        ].
        recoveredBlock13Block27Step = 69 ifTrue: [
            recoveredBlock13Block27Stack3 := (recoveredBlock13Block27Stack3) + (-1).
            recoveredBlock13Block27PC := 70.
        ].
        recoveredBlock13Block27Step = 70 ifTrue: [
            recoveredBlock13Block27Stack2 := (recoveredBlock13Block27Stack2) at: (recoveredBlock13Block27Stack3).
            recoveredBlock13Block27PC := 71.
        ].
        recoveredBlock13Block27Step = 71 ifTrue: [
            recoveredBlock13Block27Stack1 := (recoveredBlock13Block27Stack1) - (recoveredBlock13Block27Stack2).
            recoveredBlock13Block27PC := 72.
        ].
        recoveredBlock13Block27Step = 72 ifTrue: [
            recoveredBlock13Block27Local1 := recoveredBlock13Block27Stack1.
            recoveredBlock13Block27PC := 73.
        ].
        recoveredBlock13Block27Step = 73 ifTrue: [
            recoveredBlock13Block27PC := 80.
        ].
        recoveredBlock13Block27Step = 76 ifTrue: [
            recoveredBlock13Block27Stack1 := recoveredBlock13Arg1.
            recoveredBlock13Block27PC := 79.
        ].
        recoveredBlock13Block27Step = 79 ifTrue: [
            recoveredBlock13Block27Local1 := recoveredBlock13Block27Stack1.
            recoveredBlock13Block27PC := 80.
        ].
        recoveredBlock13Block27Step = 80 ifTrue: [
            recoveredBlock13Block27Stack1 := recoveredLocal1.
            recoveredBlock13Block27PC := 83.
        ].
        recoveredBlock13Block27Step = 83 ifTrue: [
            recoveredBlock13Block27Stack2 := ASDTextNavigationElementOccurrence.
            recoveredBlock13Block27PC := 85.
        ].
        recoveredBlock13Block27Step = 85 ifTrue: [
            recoveredBlock13Block27Stack2 := (recoveredBlock13Block27Stack2) new.
            recoveredBlock13Block27PC := 86.
        ].
        recoveredBlock13Block27Step = 86 ifTrue: [
            recoveredBlock13Block27Stack3 := recoveredBlock13Block27Stack2.
            recoveredBlock13Block27PC := 87.
        ].
        recoveredBlock13Block27Step = 87 ifTrue: [
            recoveredBlock13Block27Stack4 := recoveredBlock13Arg1.
            recoveredBlock13Block27PC := 90.
        ].
        recoveredBlock13Block27Step = 90 ifTrue: [
            recoveredBlock13Block27Stack4 := (recoveredBlock13Block27Stack4) + (-1).
            recoveredBlock13Block27PC := 91.
        ].
        recoveredBlock13Block27Step = 91 ifTrue: [
            recoveredBlock13Block27Stack5 := recoveredBlock13Arg1.
            recoveredBlock13Block27PC := 94.
        ].
        recoveredBlock13Block27Step = 94 ifTrue: [
            recoveredBlock13Block27Stack6 := recoveredArg3.
            recoveredBlock13Block27PC := 97.
        ].
        recoveredBlock13Block27Step = 97 ifTrue: [
            recoveredBlock13Block27Stack5 := (recoveredBlock13Block27Stack5) + (recoveredBlock13Block27Stack6).
            recoveredBlock13Block27PC := 98.
        ].
        recoveredBlock13Block27Step = 98 ifTrue: [
            recoveredBlock13Block27Stack5 := (recoveredBlock13Block27Stack5) + (-1).
            recoveredBlock13Block27PC := 99.
        ].
        recoveredBlock13Block27Step = 99 ifTrue: [
            recoveredBlock13Block27Stack4 := (recoveredBlock13Block27Stack4) @ (recoveredBlock13Block27Stack5).
            recoveredBlock13Block27PC := 101.
        ].
        recoveredBlock13Block27Step = 101 ifTrue: [
            (recoveredBlock13Block27Stack3) selection: (recoveredBlock13Block27Stack4).
            recoveredBlock13Block27Stack3 := recoveredBlock13Block27Stack2.
            recoveredBlock13Block27PC := 104.
        ].
        recoveredBlock13Block27Step = 104 ifTrue: [
            recoveredBlock13Block27Stack4 := recoveredBlock13Block27Arg2.
            recoveredBlock13Block27PC := 105.
        ].
        recoveredBlock13Block27Step = 105 ifTrue: [
            (recoveredBlock13Block27Stack3) line: (recoveredBlock13Block27Stack4).
            recoveredBlock13Block27PC := 107.
        ].
        recoveredBlock13Block27Step = 107 ifTrue: [
            recoveredBlock13Block27Stack3 := recoveredBlock13Block27Local1.
            recoveredBlock13Block27PC := 108.
        ].
        recoveredBlock13Block27Step = 108 ifTrue: [
            recoveredBlock13Block27Stack2 := (recoveredBlock13Block27Stack2) column: (recoveredBlock13Block27Stack3).
            recoveredBlock13Block27PC := 110.
        ].
        recoveredBlock13Block27Step = 110 ifTrue: [
            recoveredBlock13Block27Stack1 := (recoveredBlock13Block27Stack1) add: (recoveredBlock13Block27Stack2).
            recoveredBlock13Block27PC := 112.
        ].
        recoveredBlock13Block27Step = 112 ifTrue: [
            recoveredBlock13Block27Stack2 := nil.
            recoveredBlock13Block27PC := 113.
        ].
        recoveredBlock13Block27Step = 113 ifTrue: [
            recoveredBlock13Block27Local1 := recoveredBlock13Block27Stack2.
            recoveredBlock13Block27PC := 114.
        ].
        recoveredBlock13Block27Step = 114 ifTrue: [
            recoveredBlock13Block27Result := recoveredBlock13Block27Stack1.
            recoveredBlock13Block27Done := true.
        ].
    ].
    recoveredBlock13Block27Result
].
    recoveredBlock13Value2 := (recoveredBlock13Value0) doWithIndex: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20490948; bytecode file offset 0xd8d264"
!ASDTextNavigationManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super initialize.
    wrapperList := nil.
    recoveredValue0 := [
    | recoveredBlock12Local1 recoveredBlock12Local2 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) controller.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) userInterface.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) widgetstatusBarPan4.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Local2 := recoveredBlock12Stack0.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Local2.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            (recoveredBlock12Stack0 == nil) ifTrue: [recoveredBlock12PC := 40] ifFalse: [recoveredBlock12PC := 32].
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Local2.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) deepCopy.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack0.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) item.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) allMethods.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack1 := [:recoveredBlock12Block45Arg1 | 
    | recoveredBlock12Block45Value0 recoveredBlock12Block45Value1 recoveredBlock12Block45Value2 recoveredBlock12Block45Value3 |
    recoveredBlock12Block45Value0 := recoveredBlock12Block45Arg1.
    recoveredBlock12Block45Value1 := recoveredBlock12Local2.
    (self) buildNavigationForMethod: (recoveredBlock12Block45Value0) statusBarPanel: (recoveredBlock12Block45Value1).
    recoveredBlock12Block45Value2 := recoveredBlock12Block45Arg1.
    recoveredBlock12Block45Value3 := (self) changed: (recoveredBlock12Block45Value2).
    recoveredBlock12Block45Value3
].
            recoveredBlock12PC := 63.
        ].
        recoveredBlock12Step = 63 ifTrue: [
            (recoveredBlock12Stack0) do: (recoveredBlock12Stack1).
            recoveredBlock12PC := 65.
        ].
        recoveredBlock12Step = 65 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Local2.
            recoveredBlock12PC := 68.
        ].
        recoveredBlock12Step = 68 ifTrue: [
            (recoveredBlock12Stack0 == nil) ifTrue: [recoveredBlock12PC := 106] ifFalse: [recoveredBlock12PC := 72].
        ].
        recoveredBlock12Step = 72 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Local2.
            recoveredBlock12PC := 75.
        ].
        recoveredBlock12Step = 75 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) isDestroyed.
            recoveredBlock12PC := 77.
        ].
        recoveredBlock12Step = 77 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 106] ifFalse: [recoveredBlock12PC := 80].
        ].
        recoveredBlock12Step = 80 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Local2.
            recoveredBlock12PC := 83.
        ].
        recoveredBlock12Step = 83 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Stack0.
            recoveredBlock12PC := 84.
        ].
        recoveredBlock12Step = 84 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 87.
        ].
        recoveredBlock12Step = 87 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) image.
            recoveredBlock12PC := 89.
        ].
        recoveredBlock12Step = 89 ifTrue: [
            (recoveredBlock12Stack1) image: (recoveredBlock12Stack2).
            recoveredBlock12Stack1 := recoveredBlock12Stack0.
            recoveredBlock12PC := 92.
        ].
        recoveredBlock12Step = 92 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 95.
        ].
        recoveredBlock12Step = 95 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) labelString.
            recoveredBlock12PC := 97.
        ].
        recoveredBlock12Step = 97 ifTrue: [
            (recoveredBlock12Stack1) labelString: (recoveredBlock12Stack2).
            recoveredBlock12PC := 99.
        ].
        recoveredBlock12Step = 99 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local1.
            recoveredBlock12PC := 102.
        ].
        recoveredBlock12Step = 102 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) toolTipText.
            recoveredBlock12PC := 104.
        ].
        recoveredBlock12Step = 104 ifTrue: [
            (recoveredBlock12Stack0) toolTipText: (recoveredBlock12Stack1).
            recoveredBlock12PC := 106.
        ].
        recoveredBlock12Step = 106 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 107.
        ].
        recoveredBlock12Step = 107 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 108.
        ].
        recoveredBlock12Step = 108 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) updateProcess: (recoveredBlock12Stack1).
            recoveredBlock12PC := 110.
        ].
        recoveredBlock12Step = 110 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack0.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    recoveredValue1 := Processor.
    recoveredValue2 := (recoveredValue1) systemBackgroundPriority.
    recoveredValue3 := (self) item.
    recoveredValue4 := (recoveredValue3) label.
    recoveredValue5 := ('TextNavigationUpdate::') , (recoveredValue4).
    recoveredValue6 := (recoveredValue0) forkAt: (recoveredValue2) named: (recoveredValue5).
    (self) updateProcess: (recoveredValue6).
    (self) changed.
    ^self
! !

"ASDBase.ic method 0x205b4ab0; bytecode file offset 0xeb1418"
!ASDTextNavigationManager methodsFor: 'recovered'!
buildNavigationForMethod: recoveredArg1 statusBarPanel: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredLocal2 := 1.
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) allDirectElements.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) methodElements.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    recoveredLocal6 := recoveredValue4.
    recoveredValue5 := (self) controller.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) procedureSourceStringMethod: (recoveredValue6).
    recoveredLocal5 := recoveredValue7.
    recoveredValue8 := ASDTextNavigationMethodWrapper.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) method: (recoveredValue11).
    recoveredValue12 := OrderedCollection.
    recoveredValue13 := (recoveredValue12) new.
    recoveredValue14 := (recoveredValue9) elements: (recoveredValue13).
    recoveredLocal4 := recoveredValue14.
    recoveredValue15 := recoveredLocal5.
    recoveredValue16 := (self) lineOffsets: (recoveredValue15).
    recoveredLocal3 := recoveredValue16.
    recoveredValue17 := recoveredLocal6.
    recoveredValue18 := (recoveredValue17) size.
    recoveredLocal1 := recoveredValue18.
    recoveredValue19 := recoveredLocal6.
    recoveredValue20 := [:recoveredBlock69Arg1 :recoveredBlock69Arg2 | 
    | recoveredBlock69Local1 recoveredBlock69Local2 recoveredBlock69Local3 recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69Stack5 recoveredBlock69Stack6 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal5.
            recoveredBlock69PC := 79.
        ].
        recoveredBlock69Step = 79 ifTrue: [
            (recoveredBlock69Stack1 == nil) ifTrue: [recoveredBlock69PC := 187] ifFalse: [recoveredBlock69PC := 82].
        ].
        recoveredBlock69Step = 82 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal5.
            recoveredBlock69PC := 85.
        ].
        recoveredBlock69Step = 85 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Arg1.
            recoveredBlock69PC := 88.
        ].
        recoveredBlock69Step = 88 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) elementName.
            recoveredBlock69PC := 90.
        ].
        recoveredBlock69Step = 90 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) findIdentifiers: (recoveredBlock69Stack2).
            recoveredBlock69PC := 92.
        ].
        recoveredBlock69Step = 92 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            recoveredBlock69Local2 := recoveredBlock69Stack2.
            recoveredBlock69PC := 96.
        ].
        recoveredBlock69Step = 96 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) notEmpty.
            recoveredBlock69PC := 98.
        ].
        recoveredBlock69Step = 98 ifTrue: [
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 102] ifFalse: [recoveredBlock69PC := 187].
        ].
        recoveredBlock69Step = 102 ifTrue: [
            recoveredBlock69Stack1 := self.
            recoveredBlock69PC := 103.
        ].
        recoveredBlock69Step = 103 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local2.
            recoveredBlock69PC := 106.
        ].
        recoveredBlock69Step = 106 ifTrue: [
            recoveredBlock69Stack3 := recoveredLocal3.
            recoveredBlock69PC := 109.
        ].
        recoveredBlock69Step = 109 ifTrue: [
            recoveredBlock69Stack4 := recoveredBlock69Arg1.
            recoveredBlock69PC := 112.
        ].
        recoveredBlock69Step = 112 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) elementName.
            recoveredBlock69PC := 114.
        ].
        recoveredBlock69Step = 114 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) size.
            recoveredBlock69PC := 116.
        ].
        recoveredBlock69Step = 116 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) convertIndexes: (recoveredBlock69Stack2) lineOffsets: (recoveredBlock69Stack3) length: (recoveredBlock69Stack4).
            recoveredBlock69PC := 119.
        ].
        recoveredBlock69Step = 119 ifTrue: [
            recoveredBlock69Local2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 122.
        ].
        recoveredBlock69Step = 122 ifTrue: [
            recoveredBlock69Stack1 := ASDTextNavigationElementWrapper.
            recoveredBlock69PC := 124.
        ].
        recoveredBlock69Step = 124 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) new.
            recoveredBlock69PC := 126.
        ].
        recoveredBlock69Step = 126 ifTrue: [
            recoveredBlock69Local1 := recoveredBlock69Stack1.
            recoveredBlock69PC := 129.
        ].
        recoveredBlock69Step = 129 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local1.
            recoveredBlock69PC := 132.
        ].
        recoveredBlock69Step = 132 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 133.
        ].
        recoveredBlock69Step = 133 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Arg1.
            recoveredBlock69PC := 136.
        ].
        recoveredBlock69Step = 136 ifTrue: [
            (recoveredBlock69Stack2) element: (recoveredBlock69Stack3).
            recoveredBlock69Stack2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 139.
        ].
        recoveredBlock69Step = 139 ifTrue: [
            recoveredBlock69Stack3 := recoveredLocal4.
            recoveredBlock69PC := 142.
        ].
        recoveredBlock69Step = 142 ifTrue: [
            (recoveredBlock69Stack2) method: (recoveredBlock69Stack3).
            recoveredBlock69Stack2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 145.
        ].
        recoveredBlock69Step = 145 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Local2.
            recoveredBlock69PC := 148.
        ].
        recoveredBlock69Step = 148 ifTrue: [
            (recoveredBlock69Stack2) occurrences: (recoveredBlock69Stack3).
            recoveredBlock69PC := 150.
        ].
        recoveredBlock69Step = 150 ifTrue: [
            recoveredBlock69Stack2 := 0.
            recoveredBlock69PC := 152.
        ].
        recoveredBlock69Step = 152 ifTrue: [
            (recoveredBlock69Stack1) selectedIndex: (recoveredBlock69Stack2).
            recoveredBlock69PC := 154.
        ].
        recoveredBlock69Step = 154 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local2.
            recoveredBlock69PC := 157.
        ].
        recoveredBlock69Step = 157 ifTrue: [
            recoveredBlock69Stack2 := [:recoveredBlock69Block157Arg1 | 
    | recoveredBlock69Block157Value0 recoveredBlock69Block157Value1 recoveredBlock69Block157Value2 |
    recoveredBlock69Block157Value0 := recoveredBlock69Block157Arg1.
    recoveredBlock69Block157Value1 := recoveredBlock69Local1.
    recoveredBlock69Block157Value2 := (recoveredBlock69Block157Value0) element: (recoveredBlock69Block157Value1).
    recoveredBlock69Block157Value2
].
            recoveredBlock69PC := 171.
        ].
        recoveredBlock69Step = 171 ifTrue: [
            (recoveredBlock69Stack1) do: (recoveredBlock69Stack2).
            recoveredBlock69PC := 173.
        ].
        recoveredBlock69Step = 173 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal4.
            recoveredBlock69PC := 176.
        ].
        recoveredBlock69Step = 176 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) elements.
            recoveredBlock69PC := 178.
        ].
        recoveredBlock69Step = 178 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local1.
            recoveredBlock69PC := 181.
        ].
        recoveredBlock69Step = 181 ifTrue: [
            (recoveredBlock69Stack1) add: (recoveredBlock69Stack2).
            recoveredBlock69PC := 183.
        ].
        recoveredBlock69Step = 183 ifTrue: [
            recoveredBlock69Stack1 := nil.
            recoveredBlock69PC := 184.
        ].
        recoveredBlock69Step = 184 ifTrue: [
            recoveredBlock69Local1 := recoveredBlock69Stack1.
            recoveredBlock69PC := 187.
        ].
        recoveredBlock69Step = 187 ifTrue: [
            recoveredBlock69Stack1 := recoveredArg2.
            recoveredBlock69PC := 190.
        ].
        recoveredBlock69Step = 190 ifTrue: [
            (recoveredBlock69Stack1 == nil) ifTrue: [recoveredBlock69PC := 293] ifFalse: [recoveredBlock69PC := 194].
        ].
        recoveredBlock69Step = 194 ifTrue: [
            recoveredBlock69Stack1 := recoveredArg2.
            recoveredBlock69PC := 197.
        ].
        recoveredBlock69Step = 197 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) isDestroyed.
            recoveredBlock69PC := 199.
        ].
        recoveredBlock69Step = 199 ifTrue: [
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 293] ifFalse: [recoveredBlock69PC := 202].
        ].
        recoveredBlock69Step = 202 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Arg2.
            recoveredBlock69PC := 205.
        ].
        recoveredBlock69Step = 205 ifTrue: [
            recoveredBlock69Stack2 := 10.
            recoveredBlock69PC := 207.
        ].
        recoveredBlock69Step = 207 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) \\ (recoveredBlock69Stack2).
            recoveredBlock69PC := 208.
        ].
        recoveredBlock69Step = 208 ifTrue: [
            recoveredBlock69Stack2 := 0.
            recoveredBlock69PC := 210.
        ].
        recoveredBlock69Step = 210 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) = (recoveredBlock69Stack2).
            recoveredBlock69PC := 211.
        ].
        recoveredBlock69Step = 211 ifTrue: [
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 214] ifFalse: [recoveredBlock69PC := 293].
        ].
        recoveredBlock69Step = 214 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal2.
            recoveredBlock69PC := 217.
        ].
        recoveredBlock69Step = 217 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) + (1).
            recoveredBlock69PC := 218.
        ].
        recoveredBlock69Step = 218 ifTrue: [
            recoveredLocal2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 221.
        ].
        recoveredBlock69Step = 221 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal2.
            recoveredBlock69PC := 224.
        ].
        recoveredBlock69Step = 224 ifTrue: [
            recoveredBlock69Stack2 := 5.
            recoveredBlock69PC := 226.
        ].
        recoveredBlock69Step = 226 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) > (recoveredBlock69Stack2).
            recoveredBlock69PC := 227.
        ].
        recoveredBlock69Step = 227 ifTrue: [
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 230] ifFalse: [recoveredBlock69PC := 235].
        ].
        recoveredBlock69Step = 230 ifTrue: [
            recoveredBlock69Stack1 := 1.
            recoveredBlock69PC := 232.
        ].
        recoveredBlock69Step = 232 ifTrue: [
            recoveredLocal2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 235.
        ].
        recoveredBlock69Step = 235 ifTrue: [
            recoveredBlock69Stack1 := recoveredArg2.
            recoveredBlock69PC := 238.
        ].
        recoveredBlock69Step = 238 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 239.
        ].
        recoveredBlock69Step = 239 ifTrue: [
            recoveredBlock69Stack3 := RBUserInterface.
            recoveredBlock69PC := 241.
        ].
        recoveredBlock69Step = 241 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) resourceManager.
            recoveredBlock69PC := 243.
        ].
        recoveredBlock69Step = 243 ifTrue: [
            recoveredBlock69Stack4 := 'EditorTextNavigationUpdate'.
            recoveredBlock69PC := 245.
        ].
        recoveredBlock69Step = 245 ifTrue: [
            recoveredBlock69Stack5 := recoveredLocal2.
            recoveredBlock69PC := 248.
        ].
        recoveredBlock69Step = 248 ifTrue: [
            recoveredBlock69Stack5 := (recoveredBlock69Stack5) asString.
            recoveredBlock69PC := 250.
        ].
        recoveredBlock69Step = 250 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) , (recoveredBlock69Stack5).
            recoveredBlock69PC := 251.
        ].
        recoveredBlock69Step = 251 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) returnIconWithName: (recoveredBlock69Stack4).
            recoveredBlock69PC := 253.
        ].
        recoveredBlock69Step = 253 ifTrue: [
            (recoveredBlock69Stack2) image: (recoveredBlock69Stack3).
            recoveredBlock69Stack2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 256.
        ].
        recoveredBlock69Step = 256 ifTrue: [
            recoveredBlock69Stack3 := 'Updating Textnavigation for <'.
            recoveredBlock69PC := 258.
        ].
        recoveredBlock69Step = 258 ifTrue: [
            recoveredBlock69Stack4 := recoveredArg1.
            recoveredBlock69PC := 261.
        ].
        recoveredBlock69Step = 261 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) methodName.
            recoveredBlock69PC := 263.
        ].
        recoveredBlock69Step = 263 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) , (recoveredBlock69Stack4).
            recoveredBlock69PC := 264.
        ].
        recoveredBlock69Step = 264 ifTrue: [
            recoveredBlock69Stack4 := '> ('.
            recoveredBlock69PC := 266.
        ].
        recoveredBlock69Step = 266 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) , (recoveredBlock69Stack4).
            recoveredBlock69PC := 267.
        ].
        recoveredBlock69Step = 267 ifTrue: [
            recoveredBlock69Stack4 := recoveredBlock69Arg2.
            recoveredBlock69PC := 270.
        ].
        recoveredBlock69Step = 270 ifTrue: [
            recoveredBlock69Stack5 := recoveredLocal1.
            recoveredBlock69PC := 273.
        ].
        recoveredBlock69Step = 273 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) / (recoveredBlock69Stack5).
            recoveredBlock69PC := 275.
        ].
        recoveredBlock69Step = 275 ifTrue: [
            recoveredBlock69Stack5 := 100.
            recoveredBlock69PC := 278.
        ].
        recoveredBlock69Step = 278 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) * (recoveredBlock69Stack5).
            recoveredBlock69PC := 279.
        ].
        recoveredBlock69Step = 279 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) asInteger.
            recoveredBlock69PC := 281.
        ].
        recoveredBlock69Step = 281 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) asString.
            recoveredBlock69PC := 283.
        ].
        recoveredBlock69Step = 283 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) , (recoveredBlock69Stack4).
            recoveredBlock69PC := 284.
        ].
        recoveredBlock69Step = 284 ifTrue: [
            recoveredBlock69Stack4 := '%)'.
            recoveredBlock69PC := 286.
        ].
        recoveredBlock69Step = 286 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) , (recoveredBlock69Stack4).
            recoveredBlock69PC := 287.
        ].
        recoveredBlock69Step = 287 ifTrue: [
            (recoveredBlock69Stack2) labelString: (recoveredBlock69Stack3).
            recoveredBlock69PC := 289.
        ].
        recoveredBlock69Step = 289 ifTrue: [
            recoveredBlock69Stack2 := ''.
            recoveredBlock69PC := 291.
        ].
        recoveredBlock69Step = 291 ifTrue: [
            (recoveredBlock69Stack1) toolTipText: (recoveredBlock69Stack2).
            recoveredBlock69PC := 293.
        ].
        recoveredBlock69Step = 293 ifTrue: [
            recoveredBlock69Stack1 := Processor.
            recoveredBlock69PC := 295.
        ].
        recoveredBlock69Step = 295 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) yield.
            recoveredBlock69PC := 297.
        ].
        recoveredBlock69Step = 297 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
    (recoveredValue19) doWithIndex: (recoveredValue20).
    recoveredValue21 := (self) wrapperList.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredLocal4.
    (recoveredValue21) at: (recoveredValue22) put: (recoveredValue23).
    ^self
! !

