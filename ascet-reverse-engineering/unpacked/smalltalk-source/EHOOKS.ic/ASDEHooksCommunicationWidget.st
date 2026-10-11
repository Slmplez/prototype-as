"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000008; bytecode file offset 0xf138"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
checkEHooksAppl
    ^self
! !

"EHOOKS.ic method 0x20000354; bytecode file offset 0xf484"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
resetAutomapping
    automapping := nil.
    ^self
! !

"EHOOKS.ic method 0x200004fc; bytecode file offset 0xf634"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
ehooksConfigModified
    | recoveredValue0 |
    recoveredValue0 := (self) eHooksWidget.
    (recoveredValue0) ehooksConfigModified.
    ^self
! !

"EHOOKS.ic method 0x20000620; bytecode file offset 0xf750"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
inputAdapter
    | recoveredXValue0 |
    recoveredXValue0 := inputAdapter.
    ^recoveredXValue0
! !

"EHOOKS.ic method 0x20000634; bytecode file offset 0xf764"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
outputAdapter
    | recoveredXValue0 |
    recoveredXValue0 := outputAdapter.
    ^recoveredXValue0
! !

"EHOOKS.ic method 0x20000648; bytecode file offset 0xf778"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
eHooksWidget
    | recoveredXValue0 |
    recoveredXValue0 := eHooksWidget.
    ^recoveredXValue0
! !

"EHOOKS.ic method 0x20000914; bytecode file offset 0xfa64"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
isInOutput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) outputKeyString.
    recoveredValue3 := (self) isAutomappedEntry: (recoveredValue0) key: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x20000928; bytecode file offset 0xfa64"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
isInInput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) inputKeyString.
    recoveredValue3 := (self) isAutomappedEntry: (recoveredValue0) key: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x20000a58; bytecode file offset 0xfba8"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
addLocalColumnPos2: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) inputAdapter.
    recoveredValue2 := (self) columnAdapter: (recoveredValue1).
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"EHOOKS.ic method 0x20000a6c; bytecode file offset 0xfba8"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
addLocalColumnPos4: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) outputAdapter.
    recoveredValue2 := (self) columnAdapter: (recoveredValue1).
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"EHOOKS.ic method 0x20000a8c; bytecode file offset 0xfbdc"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
addOutput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) outputKeyString.
    (self) addAutomappedEntry: (recoveredValue0) key: (recoveredValue2).
    ^self
! !

"EHOOKS.ic method 0x20000aa0; bytecode file offset 0xfbdc"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
addInput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) inputKeyString.
    (self) addAutomappedEntry: (recoveredValue0) key: (recoveredValue2).
    ^self
! !

"EHOOKS.ic method 0x20000bfc; bytecode file offset 0xfd2c"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
inputAdapter: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    inputAdapter := recoveredXValue0.
    ^self
! !

"EHOOKS.ic method 0x20000c10; bytecode file offset 0xfd40"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
outputAdapter: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    outputAdapter := recoveredXValue0.
    ^self
! !

"EHOOKS.ic method 0x20000c24; bytecode file offset 0xfd54"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
eHooksWidget: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    eHooksWidget := recoveredXValue0.
    ^self
! !

"EHOOKS.ic method 0x20001224; bytecode file offset 0x1035c"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
automapping
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := automapping.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 15] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := LookupTable.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) new.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            automapping := recoveredXStack1.
            recoveredXPC := 15.
        ].
        recoveredXStep = 15 ifTrue: [
            recoveredXStack1 := automapping.
            recoveredXPC := 17.
        ].
        recoveredXStep = 17 ifTrue: [
            ^recoveredXStack1
        ].
    ]
! !

"EHOOKS.ic method 0x200017f8; bytecode file offset 0x10940"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
isAutomappedEntry: recoveredArg1 key: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) automapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block28001128Value0 block28001128Value1 |
    block28001128Value0 := OrderedCollection.
    block28001128Value1 := (block28001128Value0) new.
    block28001128Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001830; bytecode file offset 0x10970"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
isAutomappingActive
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := false.
            recoveredXPC := 5.
        ].
        recoveredXStep = 5 ifTrue: [
            recoveredXStack2 := automapping.
            recoveredXPC := 7.
        ].
        recoveredXStep = 7 ifTrue: [
            (recoveredXStack2 == nil) ifTrue: [recoveredXPC := 24] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXPC := 11.
        ].
        recoveredXStep = 11 ifTrue: [
            recoveredXStack1 := automapping.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) values.
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXStack2 := [:block2800114cArg1 | 
    | block2800114cValue0 block2800114cValue1 |
    block2800114cValue0 := block2800114cArg1.
    block2800114cValue1 := (block2800114cValue0) notEmpty.
    block2800114cValue1
].
            recoveredXPC := 16.
        ].
        recoveredXStep = 16 ifTrue: [
            recoveredXPC := 23.
        ].
        recoveredXStep = 23 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) anySatisfy: (recoveredXStack2).
            recoveredXPC := 24.
        ].
        recoveredXStep = 24 ifTrue: [
            ^recoveredXStack1
        ].
    ]
! !

"EHOOKS.ic method 0x200018c0; bytecode file offset 0x10a08"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
addAutomappedEntry: recoveredArg1 key: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) automapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block28001170Value0 block28001170Value1 |
    block28001170Value0 := OrderedCollection.
    block28001170Value1 := (block28001170Value0) new.
    block28001170Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200019e8; bytecode file offset 0x10b28"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
sortBlockForEcuVariable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (self) getLabelForEcuVariable: (recoveredBlock4Value0) adapter: (recoveredBlock4Value1).
    recoveredBlock4Value3 := recoveredBlock4Arg2.
    recoveredBlock4Value4 := recoveredArg1.
    recoveredBlock4Value5 := (self) getLabelForEcuVariable: (recoveredBlock4Value3) adapter: (recoveredBlock4Value4).
    recoveredBlock4Value6 := (recoveredBlock4Value2) < (recoveredBlock4Value5).
    recoveredBlock4Value6
].
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20002598; bytecode file offset 0x116e8"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
getLabelForEcuVariable: recoveredArg1 adapter: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMappingForAscetVariable: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := '---'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecentlyAutomapped: (recoveredStack2) inWidget: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := AbtWinHelpApp.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) blue.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) rgbColor: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20002aec; bytecode file offset 0x11c3c"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
getRenderableBitmapStringForElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := AbtWinHelpApp.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) resourceManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) visualCallBackImageElement.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnIconWithName: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := AbtWinHelpApp.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := AbtWinHelpApp.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) typeLabel.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) resourceManager.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := (recoveredStack5) visualCallBackImageElement.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) returnIconWithName: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOnString: (recoveredStack3) image: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) resourceManager.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) iconName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnIconWithName: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20002fac; bytecode file offset 0x12110"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
allEcuVariablesFromList: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800138cArg1 | 
    | block2800138cStack0 block2800138cStack1 block2800138cStack2 block2800138cStack3 block2800138cPC block2800138cStep block2800138cDone block2800138cResult |
    block2800138cStack0 := self.
    block2800138cPC := 4.
    block2800138cDone := false.
    [block2800138cDone not] whileTrue: [
        block2800138cStep := block2800138cPC.
        block2800138cStep = 4 ifTrue: [
            block2800138cStack1 := false.
            block2800138cPC := 5.
        ].
        block2800138cStep = 5 ifTrue: [
            block2800138cStack2 := block2800138cArg1.
            block2800138cPC := 6.
        ].
        block2800138cStep = 6 ifTrue: [
            (block2800138cStack2 == nil) ifTrue: [block2800138cPC := 14] ifFalse: [block2800138cPC := 10].
        ].
        block2800138cStep = 10 ifTrue: [
            block2800138cPC := 11.
        ].
        block2800138cStep = 11 ifTrue: [
            block2800138cStack1 := block2800138cArg1.
            block2800138cPC := 12.
        ].
        block2800138cStep = 12 ifTrue: [
            block2800138cStack1 := (block2800138cStack1) name.
            block2800138cPC := 13.
        ].
        block2800138cStep = 13 ifTrue: [
            block2800138cStack1 := (block2800138cStack1) notNil.
            block2800138cPC := 14.
        ].
        block2800138cStep = 14 ifTrue: [
            block2800138cResult := block2800138cStack1.
            block2800138cDone := true.
        ].
    ].
    block2800138cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block280013b0Arg1 :block280013b0Arg2 | 
    | block280013b0Value0 block280013b0Value1 block280013b0Value2 block280013b0Value3 block280013b0Value4 |
    block280013b0Value0 := block280013b0Arg1.
    block280013b0Value1 := (block280013b0Value0) name.
    block280013b0Value2 := block280013b0Arg2.
    block280013b0Value3 := (block280013b0Value2) name.
    block280013b0Value4 := (block280013b0Value1) < (block280013b0Value3).
    block280013b0Value4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:block280013d4Arg1 | 
    | block280013d4Value0 block280013d4Value1 block280013d4Value2 block280013d4Value3 block280013d4Value4 block280013d4Value5 block280013d4Value6 |
    block280013d4Value0 := block280013d4Arg1.
    block280013d4Value1 := (block280013d4Value0) name.
    block280013d4Value2 := (block280013d4Value1) , (' / ').
    block280013d4Value3 := block280013d4Arg1.
    block280013d4Value4 := (block280013d4Value3) arrayIndex.
    block280013d4Value5 := (block280013d4Value4) printString.
    block280013d4Value6 := (block280013d4Value2) , (block280013d4Value5).
    block280013d4Value6
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20003028; bytecode file offset 0x1218c"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
getAsdVariableFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDEHooksVariable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := [
    ''
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) trimBlanks.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := [
    ''
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) trimBlanks.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) measurementName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := [
    '-1'
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) trimBlanks.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) arrayIndex: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20003198; bytecode file offset 0x1230c"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
columnAdapter: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) headingLabel.
    (recoveredValue2) heading: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) editable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) verticalSeparatorThickness: (1).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) resizable: (true).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := XmNcellValueCallback.
    recoveredValue11 := recoveredArg1.
    (recoveredValue9) addCallback: (recoveredValue10) receiver: (self) selector: ('ecuVariableVisualInfoCallback:clientData:callData:') clientData: (recoveredValue11).
    recoveredValue12 := recoveredValue8.
    recoveredValue13 := XmNbeginEditCallback.
    recoveredValue14 := recoveredArg1.
    (recoveredValue12) addCallback: (recoveredValue13) receiver: (self) selector: ('ecuVariableBeginEditCallback:clientData:callData:') clientData: (recoveredValue14).
    recoveredValue15 := recoveredValue8.
    recoveredValue16 := XmNendEditCallback.
    recoveredValue17 := recoveredArg1.
    (recoveredValue15) addCallback: (recoveredValue16) receiver: (self) selector: ('ecuVariableEndEditCallback:clientData:callData:') clientData: (recoveredValue17).
    recoveredValue18 := (self) tableColumnSortBlocks.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (self) sortBlockForEcuVariable: (recoveredValue20).
    (recoveredValue18) at: (recoveredValue19) put: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    ^recoveredValue22
! !

"EHOOKS.ic method 0x200048ec; bytecode file offset 0x13a64"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
ecuVariableVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredLocal1 := ''.
    recoveredValue0 := (self) eHooksWidget.
    recoveredValue1 := (recoveredValue0) sortedElementsForMapping.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) last.
    recoveredBlock11Value2 := recoveredArg3.
    recoveredBlock11Value3 := (recoveredBlock11Value2) item.
    recoveredBlock11Value4 := (recoveredBlock11Value3) first.
    recoveredBlock11Value5 := (recoveredBlock11Value1) isSameVarAs: (recoveredBlock11Value4).
    recoveredBlock11Value5
].
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Local1 recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := recoveredArg2.
            recoveredBlock34PC := 43.
        ].
        recoveredBlock34Step = 43 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) allEcuVariables.
            recoveredBlock34PC := 45.
        ].
        recoveredBlock34Step = 45 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) keys.
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            recoveredBlock34Stack2 := [:recoveredBlock34Block47Arg1 | 
    | recoveredBlock34Block47Value0 recoveredBlock34Block47Value1 recoveredBlock34Block47Value2 recoveredBlock34Block47Value3 recoveredBlock34Block47Value4 recoveredBlock34Block47Value5 recoveredBlock34Block47Value6 recoveredBlock34Block47Value7 |
    recoveredBlock34Block47Value0 := recoveredBlock34Block47Arg1.
    recoveredBlock34Block47Value1 := (recoveredBlock34Block47Value0) last.
    recoveredBlock34Block47Value2 := (recoveredBlock34Block47Value1) aliasName.
    recoveredBlock34Block47Value3 := recoveredArg3.
    recoveredBlock34Block47Value4 := (recoveredBlock34Block47Value3) item.
    recoveredBlock34Block47Value5 := (recoveredBlock34Block47Value4) first.
    recoveredBlock34Block47Value6 := (recoveredBlock34Block47Value5) aliasName.
    recoveredBlock34Block47Value7 := (recoveredBlock34Block47Value2) equals: (recoveredBlock34Block47Value6).
    recoveredBlock34Block47Value7
].
            recoveredBlock34PC := 70.
        ].
        recoveredBlock34Step = 70 ifTrue: [
            recoveredBlock34Stack3 := [].
            recoveredBlock34PC := 72.
        ].
        recoveredBlock34Step = 72 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) detect: (recoveredBlock34Stack2) ifNone: (recoveredBlock34Stack3).
            recoveredBlock34PC := 74.
        ].
        recoveredBlock34Step = 74 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack1.
            recoveredBlock34PC := 75.
        ].
        recoveredBlock34Step = 75 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 76.
        ].
        recoveredBlock34Step = 76 ifTrue: [
            recoveredBlock34Stack2 := recoveredArg1.
            recoveredBlock34PC := 79.
        ].
        recoveredBlock34Step = 79 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) widget.
            recoveredBlock34PC := 81.
        ].
        recoveredBlock34Step = 81 ifTrue: [
            recoveredBlock34Stack3 := recoveredArg3.
            recoveredBlock34PC := 84.
        ].
        recoveredBlock34Step = 84 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) item.
            recoveredBlock34PC := 86.
        ].
        recoveredBlock34Step = 86 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) parentOfItem: (recoveredBlock34Stack3).
            recoveredBlock34PC := 88.
        ].
        recoveredBlock34Step = 88 ifTrue: [
            (recoveredBlock34Stack2 ~~ nil) ifTrue: [recoveredBlock34PC := 104] ifFalse: [recoveredBlock34PC := 92].
        ].
        recoveredBlock34Step = 92 ifTrue: [
            recoveredBlock34PC := 93.
        ].
        recoveredBlock34Step = 93 ifTrue: [
            recoveredBlock34Stack1 := self.
            recoveredBlock34PC := 94.
        ].
        recoveredBlock34Step = 94 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Local1.
            recoveredBlock34PC := 95.
        ].
        recoveredBlock34Step = 95 ifTrue: [
            recoveredBlock34Stack3 := recoveredArg2.
            recoveredBlock34PC := 98.
        ].
        recoveredBlock34Step = 98 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) getLabelForEcuVariable: (recoveredBlock34Stack2) adapter: (recoveredBlock34Stack3).
            recoveredBlock34PC := 100.
        ].
        recoveredBlock34Step = 100 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 101.
        ].
        recoveredBlock34Step = 101 ifTrue: [
            recoveredLocal1 := recoveredBlock34Stack2.
            recoveredBlock34PC := 104.
        ].
        recoveredBlock34Step = 104 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) value: (recoveredValue7).
    ^self
! !

"EHOOKS.ic method 0x20004a98; bytecode file offset 0x13c00"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
updateList: recoveredArg1 sortBy: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := [:recoveredBlock13Block25Arg1 | 
    | recoveredBlock13Block25Stack0 recoveredBlock13Block25Stack1 recoveredBlock13Block25Stack2 recoveredBlock13Block25Stack3 recoveredBlock13Block25Stack4 recoveredBlock13Block25Stack5 recoveredBlock13Block25Stack6 recoveredBlock13Block25PC recoveredBlock13Block25Step recoveredBlock13Block25Done recoveredBlock13Block25Result |
    recoveredBlock13Block25Stack0 := self.
    recoveredBlock13Block25PC := 32.
    recoveredBlock13Block25Done := false.
    [recoveredBlock13Block25Done not] whileTrue: [
        recoveredBlock13Block25Step := recoveredBlock13Block25PC.
        recoveredBlock13Block25Step = 32 ifTrue: [
            recoveredBlock13Block25Stack1 := recoveredBlock13Block25Arg1.
            recoveredBlock13Block25PC := 33.
        ].
        recoveredBlock13Block25Step = 33 ifTrue: [
            recoveredBlock13Block25Stack1 := (recoveredBlock13Block25Stack1) isImported.
            recoveredBlock13Block25PC := 34.
        ].
        recoveredBlock13Block25Step = 34 ifTrue: [
            (recoveredBlock13Block25Stack1) ifTrue: [recoveredBlock13Block25PC := 38] ifFalse: [recoveredBlock13Block25PC := 72].
        ].
        recoveredBlock13Block25Step = 38 ifTrue: [
            recoveredBlock13Block25Stack1 := nil.
            recoveredBlock13Block25PC := 39.
        ].
        recoveredBlock13Block25Step = 39 ifTrue: [
            recoveredBlock13Block25Stack2 := self.
            recoveredBlock13Block25PC := 40.
        ].
        recoveredBlock13Block25Step = 40 ifTrue: [
            recoveredBlock13Block25Stack2 := (recoveredBlock13Block25Stack2) project.
            recoveredBlock13Block25PC := 41.
        ].
        recoveredBlock13Block25Step = 41 ifTrue: [
            recoveredBlock13Block25Stack3 := recoveredBlock13Block25Arg1.
            recoveredBlock13Block25PC := 42.
        ].
        recoveredBlock13Block25Step = 42 ifTrue: [
            recoveredBlock13Block25Stack2 := (recoveredBlock13Block25Stack2) mappedClassVarFor: (recoveredBlock13Block25Stack3).
            recoveredBlock13Block25PC := 44.
        ].
        recoveredBlock13Block25Step = 44 ifTrue: [
            recoveredBlock13Block25Stack3 := recoveredBlock13Block25Stack2.
            recoveredBlock13Block25PC := 45.
        ].
        recoveredBlock13Block25Step = 45 ifTrue: [
            recoveredLocal1 := recoveredBlock13Block25Stack3.
            recoveredBlock13Block25PC := 48.
        ].
        recoveredBlock13Block25Step = 48 ifTrue: [
            (recoveredBlock13Block25Stack2 == nil) ifTrue: [recoveredBlock13Block25PC := 69] ifFalse: [recoveredBlock13Block25PC := 52].
        ].
        recoveredBlock13Block25Step = 52 ifTrue: [
            recoveredBlock13Block25PC := 53.
        ].
        recoveredBlock13Block25Step = 53 ifTrue: [
            recoveredBlock13Block25Stack1 := recoveredLocal2.
            recoveredBlock13Block25PC := 56.
        ].
        recoveredBlock13Block25Step = 56 ifTrue: [
            recoveredBlock13Block25Stack2 := recoveredBlock13Arg1.
            recoveredBlock13Block25PC := 59.
        ].
        recoveredBlock13Block25Step = 59 ifTrue: [
            recoveredBlock13Block25Stack3 := recoveredBlock13Block25Stack2.
            recoveredBlock13Block25PC := 60.
        ].
        recoveredBlock13Block25Step = 60 ifTrue: [
            recoveredBlock13Block25Stack4 := 1.
            recoveredBlock13Block25PC := 62.
        ].
        recoveredBlock13Block25Step = 62 ifTrue: [
            recoveredBlock13Block25Stack5 := recoveredLocal1.
            recoveredBlock13Block25PC := 65.
        ].
        recoveredBlock13Block25Step = 65 ifTrue: [
            (recoveredBlock13Block25Stack3) at: (recoveredBlock13Block25Stack4) put: (recoveredBlock13Block25Stack5).
            recoveredBlock13Block25PC := 67.
        ].
        recoveredBlock13Block25Step = 67 ifTrue: [
            recoveredBlock13Block25Stack1 := (recoveredBlock13Block25Stack1) add: (recoveredBlock13Block25Stack2).
            recoveredBlock13Block25PC := 69.
        ].
        recoveredBlock13Block25Step = 69 ifTrue: [
            recoveredBlock13Block25PC := 80.
        ].
        recoveredBlock13Block25Step = 72 ifTrue: [
            recoveredBlock13Block25Stack1 := recoveredLocal2.
            recoveredBlock13Block25PC := 75.
        ].
        recoveredBlock13Block25Step = 75 ifTrue: [
            recoveredBlock13Block25Stack2 := recoveredBlock13Arg1.
            recoveredBlock13Block25PC := 78.
        ].
        recoveredBlock13Block25Step = 78 ifTrue: [
            recoveredBlock13Block25Stack1 := (recoveredBlock13Block25Stack1) add: (recoveredBlock13Block25Stack2).
            recoveredBlock13Block25PC := 80.
        ].
        recoveredBlock13Block25Step = 80 ifTrue: [
            recoveredBlock13Block25Result := recoveredBlock13Block25Stack1.
            recoveredBlock13Block25Done := true.
        ].
    ].
    recoveredBlock13Block25Result
].
    recoveredBlock13Value2 := (recoveredBlock13Value0) at: (1) ifPresent: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := [:block28001734Arg1 | 
    | block28001734Value0 block28001734Value1 block28001734Value2 block28001734Value3 |
    block28001734Value0 := block28001734Arg1.
    block28001734Value1 := (block28001734Value0) first.
    block28001734Value2 := (block28001734Value1) isImported.
    block28001734Value3 := (block28001734Value2) not.
    block28001734Value3
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            super updateList: (recoveredStack1) sortBy: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20005128; bytecode file offset 0x142d4"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
ecuVariableBeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileIsValid.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentOfItem: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) allEcuVariables.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) allEcuVariablesFromList: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsBackupCopy.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := EHooksSelectCopy.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := EHooksSelect.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := EHooksNone.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := ConditionalTable.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) noContentString.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := SGEsdlScanner.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) editable: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := ConditionalTable.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) noContentString.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := EHooksNone.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) editPolicy: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20005b9c; bytecode file offset 0x14d44"
!ASDEHooksCommunicationWidget methodsFor: 'recovered'!
ecuVariableEndEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) editWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) hasFocus.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 23] ifFalse: [recoveredBlock8PC := 20].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksWidget.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedElementsForMapping.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) last.
    recoveredBlock29Value2 := recoveredArg3.
    recoveredBlock29Value3 := (recoveredBlock29Value2) item.
    recoveredBlock29Value4 := (recoveredBlock29Value3) first.
    recoveredBlock29Value5 := (recoveredBlock29Value1) isSameVarAs: (recoveredBlock29Value4).
    recoveredBlock29Value5
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMappingForAscetVariable: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 recoveredBlock71Value5 recoveredBlock71Value6 |
    recoveredBlock71Value0 := recoveredBlock71Arg1.
    recoveredBlock71Value1 := (recoveredBlock71Value0) name.
    recoveredLocal6 := recoveredBlock71Value1.
    recoveredBlock71Value2 := recoveredBlock71Arg1.
    recoveredBlock71Value3 := (recoveredBlock71Value2) measurementName.
    recoveredLocal5 := recoveredBlock71Value3.
    recoveredBlock71Value4 := recoveredBlock71Arg1.
    recoveredBlock71Value5 := (recoveredBlock71Value4) arrayIndex.
    recoveredBlock71Value6 := recoveredBlock71Value5.
    recoveredLocal4 := recoveredBlock71Value6.
    recoveredBlock71Value5
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) newValue.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := EHooksSelect.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) newValue.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := EHooksSelectCopy.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksWidget.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack5 := (recoveredStack5) newValue.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectEHooksVariableWidget: (recoveredStack1) name: (recoveredStack2) measurementName: (recoveredStack3) index: (recoveredStack4) selection: (recoveredStack5).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) cancelEdit.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) checkEHooksAppl.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) setMappingTo: (recoveredStack1) forAscetVariable: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) refreshPos: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredPC := 271.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) newValue.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := EHooksNone.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) setMappingTo: (recoveredStack1) forAscetVariable: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredPC := 271.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 267].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAsdVariableFor: (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) setMappingTo: (recoveredStack1) forAscetVariable: (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) ehooksConfigModified.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

