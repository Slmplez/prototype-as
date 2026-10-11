"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200064bc; bytecode file offset 0x902de8"
!SGTransitionDialog methodsFor: 'recovered'!
modify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006860; bytecode file offset 0x908be4"
!SGTransitionDialog methodsFor: 'recovered'!
pageAction3Method
    | recoveredValue0 |
    recoveredValue0 := (self) pageCondition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009cf8; bytecode file offset 0x908be4"
!SGTransitionDialog methodsFor: 'recovered'!
statePrio
    | recoveredValue0 |
    recoveredValue0 := (self) priority.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ba08; bytecode file offset 0x908be4"
!SGTransitionDialog methodsFor: 'recovered'!
pageAction2Method
    | recoveredValue0 |
    recoveredValue0 := (self) pageAction.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ba2c; bytecode file offset 0x908be4"
!SGTransitionDialog methodsFor: 'recovered'!
mainBox
    | recoveredValue0 |
    recoveredValue0 := (self) priority.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d48c; bytecode file offset 0x909e08"
!SGTransitionDialog methodsFor: 'recovered'!
checkLabelInput: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x20039524; bytecode file offset 0x938608"
!SGTransitionDialog methodsFor: 'recovered'!
checkAction3Method: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) checkArgumentsForMethod: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20043dfc; bytecode file offset 0x9451f8"
!SGTransitionDialog methodsFor: 'recovered'!
priority
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('anEnhancedText1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044b6c; bytecode file offset 0x9451f8"
!SGTransitionDialog methodsFor: 'recovered'!
pageCondition
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageCondition').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044e4c; bytecode file offset 0x9451f8"
!SGTransitionDialog methodsFor: 'recovered'!
action1Label
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('action1Label').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200455ec; bytecode file offset 0x9451f8"
!SGTransitionDialog methodsFor: 'recovered'!
pageAction
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageAction').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004625c; bytecode file offset 0x9451f8"
!SGTransitionDialog methodsFor: 'recovered'!
priorityLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('lab').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200466fc; bytecode file offset 0x9451f8"
!SGTransitionDialog methodsFor: 'recovered'!
widthArrowButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('arrowWidthButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004763c; bytecode file offset 0x9451f8"
!SGTransitionDialog methodsFor: 'recovered'!
widthLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('lineWidth').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d9200; bytecode file offset 0x9d5b4c"
!SGTransitionDialog methodsFor: 'recovered'!
checkAction2Method: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) checkArgumentsForMethod: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) checkReturnForMethod: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20162988; bytecode file offset 0xa5f250"
!SGTransitionDialog methodsFor: 'recovered'!
updateContents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super updateContents.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnly.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widthArea.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20173194; bytecode file offset 0xa6fa60"
!SGTransitionDialog methodsFor: 'recovered'!
updateStatePrioWidget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super updateStatePrioWidget.
    recoveredValue0 := (self) statePrio.
    recoveredValue1 := stateMachineInfo.
    recoveredValue2 := (recoveredValue1) statePrio.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201795d8; bytecode file offset 0xa75e9c"
!SGTransitionDialog methodsFor: 'recovered'!
colorSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super colorSelection: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widthArea.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widthArea.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) redraw.
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

"ASDBase.ic method 0x2018b26c; bytecode file offset 0xa87b50"
!SGTransitionDialog methodsFor: 'recovered'!
checkReturnForMethod: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTrigger.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super checkReturnForMethod: (recoveredStack1) triggerMethods: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018b288; bytecode file offset 0xa87b50"
!SGTransitionDialog methodsFor: 'recovered'!
checkArgumentsForMethod: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTrigger.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super checkArgumentsForMethod: (recoveredStack1) triggerMethods: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20216814; bytecode file offset 0xb130e0"
!SGTransitionDialog methodsFor: 'recovered'!
getTrigger
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) datamodelManager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodAliasName: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d145c; bytecode file offset 0xccdd70"
!SGTransitionDialog methodsFor: 'recovered'!
initializeSpecialWidgets
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) priorityLabel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := stateMachineInfo.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) statePrioLabel.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := stateMachineInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterMethod.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) priority.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) initializePages.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainBox.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := stateMachineInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'sep2'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) action2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'action2Single:clientData:callData:'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) textPane2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) action3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'action3Single:clientData:callData:'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) textPane3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) colorSelection.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := XmNetasColorSelectionCallback.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'colorSelection:clientData:callData:'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20467314; bytecode file offset 0xd63c20"
!SGTransitionDialog methodsFor: 'recovered'!
updateAction1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28100cb4Arg1 | 
    | block28100cb4Value0 block28100cb4Value1 |
    block28100cb4Value0 := block28100cb4Arg1.
    block28100cb4Value1 := (block28100cb4Value0) methodName.
    block28100cb4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) internalMethodForReset.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := stateMachineInfo.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := methodManager.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) selectMethodsForAction1From: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := (recoveredBlock36Value0) methodName.
    recoveredBlock36Value2 := (self) undefString.
    recoveredBlock36Value3 := (recoveredBlock36Value1) = (recoveredBlock36Value2).
    recoveredBlock36Value3
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := stateMachineInfo.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := methodManager.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1Method: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) checkAction1Method: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1Label.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := stateMachineInfo.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) action1Label.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsAction1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206349e8; bytecode file offset 0xf31398"
!SGTransitionDialog methodsFor: 'recovered'!
initializePages
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'shikhar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI61198'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'pageCondition'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := stateMachineInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) action3Label.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializePageName: (recoveredStack1) pageLabel: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'textPane3'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:block28120838Arg1 | 
    | block28120838Value0 block28120838Value1 block28120838Value2 |
    block28120838Value0 := block28120838Arg1.
    block28120838Value1 := XmMULTILINEEDIT.
    block28120838Value2 := (block28120838Value0) editMode: (block28120838Value1).
    block28120838Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledScintillaESDLText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ASDScintillaOptions.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'textPane3'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 'action3'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:block2812085cArg1 | 
    | block2812085cValue0 block2812085cValue1 |
    block2812085cValue0 := block2812085cArg1.
    block2812085cValue1 := (block2812085cValue0) width: (192).
    block2812085cValue1
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 'action3'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 'action3Button'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := [:block28120880Arg1 | 
    | block28120880Value0 block28120880Value1 block28120880Value2 |
    block28120880Value0 := block28120880Arg1.
    block28120880Value1 := block28120880Value0.
    (block28120880Value1) labelString: ('Edit').
    block28120880Value2 := (block28120880Value0) width: (80).
    block28120880Value2
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 'editAction3Button'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 'pageAction'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := stateMachineInfo.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) action2Label.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializePageName: (recoveredStack1) pageLabel: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 'textPane2'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := [:block281208a4Arg1 | 
    | block281208a4Value0 block281208a4Value1 block281208a4Value2 |
    block281208a4Value0 := block281208a4Arg1.
    block281208a4Value1 := XmMULTILINEEDIT.
    block281208a4Value2 := (block281208a4Value0) editMode: (block281208a4Value1).
    block281208a4Value2
].
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledScintillaESDLText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := ASDScintillaOptions.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := 'textPane2'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := 'action2'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := [:block281208c8Arg1 | 
    | block281208c8Value0 block281208c8Value1 |
    block281208c8Value0 := block281208c8Arg1.
    block281208c8Value1 := (block281208c8Value0) width: (192).
    block281208c8Value1
].
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := 'action2'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := 'action2Button'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := [:block281208ecArg1 | 
    | block281208ecValue0 block281208ecValue1 block281208ecValue2 |
    block281208ecValue0 := block281208ecArg1.
    block281208ecValue1 := block281208ecValue0.
    (block281208ecValue1) labelString: ('Edit').
    block281208ecValue2 := (block281208ecValue0) width: (80).
    block281208ecValue2
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := 'editAction2Button'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := [:recoveredBlock299Arg1 | 
    | recoveredBlock299Value0 recoveredBlock299Value1 recoveredBlock299Value2 recoveredBlock299Value3 recoveredBlock299Value4 recoveredBlock299Value5 recoveredBlock299Value6 recoveredBlock299Value7 recoveredBlock299Value8 recoveredBlock299Value9 recoveredBlock299Value10 recoveredBlock299Value11 recoveredBlock299Value12 recoveredBlock299Value13 recoveredBlock299Value14 |
    recoveredBlock299Value0 := recoveredBlock299Arg1.
    recoveredBlock299Value1 := recoveredBlock299Value0.
    recoveredBlock299Value2 := XmATTACHFORM.
    (recoveredBlock299Value1) bottomAttachment: (recoveredBlock299Value2).
    recoveredBlock299Value3 := recoveredBlock299Value0.
    (recoveredBlock299Value3) bottomOffset: (5).
    recoveredBlock299Value4 := recoveredBlock299Value0.
    recoveredBlock299Value5 := XmATTACHWIDGET.
    (recoveredBlock299Value4) topAttachment: (recoveredBlock299Value5).
    recoveredBlock299Value6 := recoveredBlock299Value0.
    recoveredBlock299Value7 := recoveredLocal6.
    (recoveredBlock299Value6) topWidget: (recoveredBlock299Value7).
    recoveredBlock299Value8 := recoveredBlock299Value0.
    (recoveredBlock299Value8) topOffset: (10).
    recoveredBlock299Value9 := recoveredBlock299Value0.
    recoveredBlock299Value10 := XmATTACHFORM.
    (recoveredBlock299Value9) leftAttachment: (recoveredBlock299Value10).
    recoveredBlock299Value11 := recoveredBlock299Value0.
    (recoveredBlock299Value11) leftOffset: (5).
    recoveredBlock299Value12 := recoveredBlock299Value0.
    recoveredBlock299Value13 := XmATTACHFORM.
    (recoveredBlock299Value12) rightAttachment: (recoveredBlock299Value13).
    recoveredBlock299Value14 := (recoveredBlock299Value0) rightOffset: (5).
    recoveredBlock299Value14
].
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := [:recoveredBlock358Arg1 | 
    | recoveredBlock358Value0 recoveredBlock358Value1 recoveredBlock358Value2 recoveredBlock358Value3 recoveredBlock358Value4 recoveredBlock358Value5 recoveredBlock358Value6 recoveredBlock358Value7 recoveredBlock358Value8 recoveredBlock358Value9 recoveredBlock358Value10 recoveredBlock358Value11 |
    recoveredBlock358Value0 := recoveredBlock358Arg1.
    recoveredBlock358Value1 := recoveredBlock358Value0.
    recoveredBlock358Value2 := XmATTACHFORM.
    (recoveredBlock358Value1) topAttachment: (recoveredBlock358Value2).
    recoveredBlock358Value3 := recoveredBlock358Value0.
    (recoveredBlock358Value3) topOffset: (5).
    recoveredBlock358Value4 := recoveredBlock358Value0.
    recoveredBlock358Value5 := XmATTACHWIDGET.
    (recoveredBlock358Value4) rightAttachment: (recoveredBlock358Value5).
    recoveredBlock358Value6 := recoveredBlock358Value0.
    recoveredBlock358Value7 := recoveredLocal2.
    (recoveredBlock358Value6) rightWidget: (recoveredBlock358Value7).
    recoveredBlock358Value8 := recoveredBlock358Value0.
    (recoveredBlock358Value8) rightOffset: (5).
    recoveredBlock358Value9 := recoveredBlock358Value0.
    recoveredBlock358Value10 := XmATTACHFORM.
    (recoveredBlock358Value9) leftAttachment: (recoveredBlock358Value10).
    recoveredBlock358Value11 := (recoveredBlock358Value0) leftOffset: (5).
    recoveredBlock358Value11
].
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := [:block28120910Arg1 | 
    | block28120910Value0 block28120910Value1 block28120910Value2 block28120910Value3 block28120910Value4 block28120910Value5 block28120910Value6 |
    block28120910Value0 := block28120910Arg1.
    block28120910Value1 := block28120910Value0.
    block28120910Value2 := XmATTACHFORM.
    (block28120910Value1) topAttachment: (block28120910Value2).
    block28120910Value3 := block28120910Value0.
    (block28120910Value3) topOffset: (5).
    block28120910Value4 := block28120910Value0.
    block28120910Value5 := XmATTACHFORM.
    (block28120910Value4) rightAttachment: (block28120910Value5).
    block28120910Value6 := (block28120910Value0) rightOffset: (5).
    block28120910Value6
].
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack3 := 'editAction2:clientData:callData:'.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := [:recoveredBlock452Arg1 | 
    | recoveredBlock452Value0 recoveredBlock452Value1 recoveredBlock452Value2 recoveredBlock452Value3 recoveredBlock452Value4 recoveredBlock452Value5 recoveredBlock452Value6 recoveredBlock452Value7 recoveredBlock452Value8 recoveredBlock452Value9 recoveredBlock452Value10 recoveredBlock452Value11 recoveredBlock452Value12 recoveredBlock452Value13 recoveredBlock452Value14 |
    recoveredBlock452Value0 := recoveredBlock452Arg1.
    recoveredBlock452Value1 := recoveredBlock452Value0.
    recoveredBlock452Value2 := XmATTACHFORM.
    (recoveredBlock452Value1) bottomAttachment: (recoveredBlock452Value2).
    recoveredBlock452Value3 := recoveredBlock452Value0.
    (recoveredBlock452Value3) bottomOffset: (5).
    recoveredBlock452Value4 := recoveredBlock452Value0.
    recoveredBlock452Value5 := XmATTACHWIDGET.
    (recoveredBlock452Value4) topAttachment: (recoveredBlock452Value5).
    recoveredBlock452Value6 := recoveredBlock452Value0.
    recoveredBlock452Value7 := recoveredLocal3.
    (recoveredBlock452Value6) topWidget: (recoveredBlock452Value7).
    recoveredBlock452Value8 := recoveredBlock452Value0.
    (recoveredBlock452Value8) topOffset: (10).
    recoveredBlock452Value9 := recoveredBlock452Value0.
    recoveredBlock452Value10 := XmATTACHFORM.
    (recoveredBlock452Value9) leftAttachment: (recoveredBlock452Value10).
    recoveredBlock452Value11 := recoveredBlock452Value0.
    (recoveredBlock452Value11) leftOffset: (5).
    recoveredBlock452Value12 := recoveredBlock452Value0.
    recoveredBlock452Value13 := XmATTACHFORM.
    (recoveredBlock452Value12) rightAttachment: (recoveredBlock452Value13).
    recoveredBlock452Value14 := (recoveredBlock452Value0) rightOffset: (5).
    recoveredBlock452Value14
].
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := [:recoveredBlock510Arg1 | 
    | recoveredBlock510Value0 recoveredBlock510Value1 recoveredBlock510Value2 recoveredBlock510Value3 recoveredBlock510Value4 recoveredBlock510Value5 recoveredBlock510Value6 recoveredBlock510Value7 recoveredBlock510Value8 recoveredBlock510Value9 recoveredBlock510Value10 recoveredBlock510Value11 |
    recoveredBlock510Value0 := recoveredBlock510Arg1.
    recoveredBlock510Value1 := recoveredBlock510Value0.
    recoveredBlock510Value2 := XmATTACHFORM.
    (recoveredBlock510Value1) topAttachment: (recoveredBlock510Value2).
    recoveredBlock510Value3 := recoveredBlock510Value0.
    (recoveredBlock510Value3) topOffset: (5).
    recoveredBlock510Value4 := recoveredBlock510Value0.
    recoveredBlock510Value5 := XmATTACHWIDGET.
    (recoveredBlock510Value4) rightAttachment: (recoveredBlock510Value5).
    recoveredBlock510Value6 := recoveredBlock510Value0.
    recoveredBlock510Value7 := recoveredLocal1.
    (recoveredBlock510Value6) rightWidget: (recoveredBlock510Value7).
    recoveredBlock510Value8 := recoveredBlock510Value0.
    (recoveredBlock510Value8) rightOffset: (5).
    recoveredBlock510Value9 := recoveredBlock510Value0.
    recoveredBlock510Value10 := XmATTACHFORM.
    (recoveredBlock510Value9) leftAttachment: (recoveredBlock510Value10).
    recoveredBlock510Value11 := (recoveredBlock510Value0) leftOffset: (5).
    recoveredBlock510Value11
].
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack1 := [:block28120934Arg1 | 
    | block28120934Value0 block28120934Value1 block28120934Value2 block28120934Value3 block28120934Value4 block28120934Value5 block28120934Value6 |
    block28120934Value0 := block28120934Arg1.
    block28120934Value1 := block28120934Value0.
    block28120934Value2 := XmATTACHFORM.
    (block28120934Value1) topAttachment: (block28120934Value2).
    block28120934Value3 := block28120934Value0.
    (block28120934Value3) topOffset: (5).
    block28120934Value4 := block28120934Value0.
    block28120934Value5 := XmATTACHFORM.
    (block28120934Value4) rightAttachment: (block28120934Value5).
    block28120934Value6 := (block28120934Value0) rightOffset: (5).
    block28120934Value6
].
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack3 := 'editAction3:clientData:callData:'.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack3 := 'widgetKeyEventHandler:clientData:event:'.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack3 := 'widgetKeyEventHandler:clientData:event:'.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206af408; bytecode file offset 0xfabea8"
!SGTransitionDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 recoveredBlock25Value15 recoveredBlock25Value16 recoveredBlock25Value17 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('Image').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := MWMDECORALL.
    recoveredBlock25Value6 := MWMDECORMINIMIZE.
    recoveredBlock25Value7 := (recoveredBlock25Value5) | (recoveredBlock25Value6).
    recoveredBlock25Value8 := MWMDECORMAXIMIZE.
    recoveredBlock25Value9 := (recoveredBlock25Value7) | (recoveredBlock25Value8).
    (recoveredBlock25Value4) mwmDecorations: (recoveredBlock25Value9).
    recoveredBlock25Value10 := recoveredBlock25Value0.
    recoveredBlock25Value11 := recoveredLocal16.
    recoveredBlock25Value12 := (400) * (recoveredBlock25Value11).
    recoveredBlock25Value13 := (recoveredBlock25Value12) rounded.
    (recoveredBlock25Value10) height: (recoveredBlock25Value13).
    recoveredBlock25Value14 := recoveredLocal17.
    recoveredBlock25Value15 := (580) * (recoveredBlock25Value14).
    recoveredBlock25Value16 := (recoveredBlock25Value15) rounded.
    recoveredBlock25Value17 := (recoveredBlock25Value0) width: (recoveredBlock25Value16).
    recoveredBlock25Value17
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'mainWin'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'mainWin'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 recoveredBlock145Value3 recoveredBlock145Value4 recoveredBlock145Value5 recoveredBlock145Value6 recoveredBlock145Value7 recoveredBlock145Value8 recoveredBlock145Value9 recoveredBlock145Value10 recoveredBlock145Value11 recoveredBlock145Value12 recoveredBlock145Value13 recoveredBlock145Value14 recoveredBlock145Value15 recoveredBlock145Value16 recoveredBlock145Value17 recoveredBlock145Value18 recoveredBlock145Value19 recoveredBlock145Value20 recoveredBlock145Value21 |
    recoveredBlock145Value0 := recoveredBlock145Arg1.
    recoveredBlock145Value1 := recoveredBlock145Value0.
    recoveredBlock145Value2 := recoveredLocal17.
    recoveredBlock145Value3 := (371) * (recoveredBlock145Value2).
    recoveredBlock145Value4 := (recoveredBlock145Value3) rounded.
    (recoveredBlock145Value1) x: (recoveredBlock145Value4).
    recoveredBlock145Value5 := recoveredBlock145Value0.
    (recoveredBlock145Value5) marginRight: (10).
    recoveredBlock145Value6 := recoveredBlock145Value0.
    (recoveredBlock145Value6) labelString: ('&Cancel').
    recoveredBlock145Value7 := recoveredBlock145Value0.
    (recoveredBlock145Value7) marginWidth: (0).
    recoveredBlock145Value8 := recoveredBlock145Value0.
    (recoveredBlock145Value8) marginHeight: (0).
    recoveredBlock145Value9 := recoveredBlock145Value0.
    recoveredBlock145Value10 := recoveredLocal16.
    recoveredBlock145Value11 := (50) * (recoveredBlock145Value10).
    recoveredBlock145Value12 := (recoveredBlock145Value11) rounded.
    (recoveredBlock145Value9) y: (recoveredBlock145Value12).
    recoveredBlock145Value13 := recoveredBlock145Value0.
    recoveredBlock145Value14 := recoveredLocal16.
    recoveredBlock145Value15 := (30) * (recoveredBlock145Value14).
    recoveredBlock145Value16 := (recoveredBlock145Value15) rounded.
    (recoveredBlock145Value13) height: (recoveredBlock145Value16).
    recoveredBlock145Value17 := recoveredBlock145Value0.
    (recoveredBlock145Value17) marginBottom: (10).
    recoveredBlock145Value18 := recoveredLocal17.
    recoveredBlock145Value19 := (110) * (recoveredBlock145Value18).
    recoveredBlock145Value20 := (recoveredBlock145Value19) rounded.
    recoveredBlock145Value21 := (recoveredBlock145Value0) width: (recoveredBlock145Value20).
    recoveredBlock145Value21
].
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := 'colorLab'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := [:recoveredBlock247Arg1 | 
    | recoveredBlock247Value0 recoveredBlock247Value1 recoveredBlock247Value2 recoveredBlock247Value3 recoveredBlock247Value4 recoveredBlock247Value5 recoveredBlock247Value6 recoveredBlock247Value7 recoveredBlock247Value8 recoveredBlock247Value9 recoveredBlock247Value10 recoveredBlock247Value11 recoveredBlock247Value12 recoveredBlock247Value13 recoveredBlock247Value14 recoveredBlock247Value15 recoveredBlock247Value16 recoveredBlock247Value17 recoveredBlock247Value18 recoveredBlock247Value19 recoveredBlock247Value20 recoveredBlock247Value21 |
    recoveredBlock247Value0 := recoveredBlock247Arg1.
    recoveredBlock247Value1 := recoveredBlock247Value0.
    recoveredBlock247Value2 := recoveredLocal17.
    recoveredBlock247Value3 := (5) * (recoveredBlock247Value2).
    recoveredBlock247Value4 := (recoveredBlock247Value3) rounded.
    (recoveredBlock247Value1) x: (recoveredBlock247Value4).
    recoveredBlock247Value5 := recoveredBlock247Value0.
    recoveredBlock247Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock247Value5) alignment: (recoveredBlock247Value6).
    recoveredBlock247Value7 := recoveredBlock247Value0.
    (recoveredBlock247Value7) labelString: ('Color').
    recoveredBlock247Value8 := recoveredBlock247Value0.
    recoveredBlock247Value9 := recoveredLocal16.
    recoveredBlock247Value10 := (5) * (recoveredBlock247Value9).
    recoveredBlock247Value11 := (recoveredBlock247Value10) rounded.
    (recoveredBlock247Value8) y: (recoveredBlock247Value11).
    recoveredBlock247Value12 := recoveredBlock247Value0.
    recoveredBlock247Value13 := recoveredLocal16.
    recoveredBlock247Value14 := (20) * (recoveredBlock247Value13).
    recoveredBlock247Value15 := (recoveredBlock247Value14) rounded.
    (recoveredBlock247Value12) height: (recoveredBlock247Value15).
    recoveredBlock247Value16 := recoveredBlock247Value0.
    recoveredBlock247Value17 := recoveredLocal17.
    recoveredBlock247Value18 := (64) * (recoveredBlock247Value17).
    recoveredBlock247Value19 := (recoveredBlock247Value18) rounded.
    (recoveredBlock247Value16) width: (recoveredBlock247Value19).
    recoveredBlock247Value20 := recoveredBlock247Value0.
    recoveredBlock247Value21 := (self) defaultLabelBlue.
    (recoveredBlock247Value20) foregroundColor: (recoveredBlock247Value21).
    recoveredBlock247Value0
].
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := 'colorLab'.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := [:recoveredBlock339Arg1 | 
    | recoveredBlock339Value0 recoveredBlock339Value1 recoveredBlock339Value2 recoveredBlock339Value3 recoveredBlock339Value4 recoveredBlock339Value5 recoveredBlock339Value6 recoveredBlock339Value7 recoveredBlock339Value8 recoveredBlock339Value9 recoveredBlock339Value10 recoveredBlock339Value11 recoveredBlock339Value12 recoveredBlock339Value13 recoveredBlock339Value14 recoveredBlock339Value15 recoveredBlock339Value16 recoveredBlock339Value17 recoveredBlock339Value18 recoveredBlock339Value19 recoveredBlock339Value20 recoveredBlock339Value21 |
    recoveredBlock339Value0 := recoveredBlock339Arg1.
    recoveredBlock339Value1 := recoveredBlock339Value0.
    recoveredBlock339Value2 := recoveredLocal17.
    recoveredBlock339Value3 := (371) * (recoveredBlock339Value2).
    recoveredBlock339Value4 := (recoveredBlock339Value3) rounded.
    (recoveredBlock339Value1) x: (recoveredBlock339Value4).
    recoveredBlock339Value5 := recoveredBlock339Value0.
    (recoveredBlock339Value5) marginRight: (10).
    recoveredBlock339Value6 := recoveredBlock339Value0.
    (recoveredBlock339Value6) labelString: ('&OK').
    recoveredBlock339Value7 := recoveredBlock339Value0.
    (recoveredBlock339Value7) marginWidth: (0).
    recoveredBlock339Value8 := recoveredBlock339Value0.
    (recoveredBlock339Value8) marginHeight: (0).
    recoveredBlock339Value9 := recoveredBlock339Value0.
    recoveredBlock339Value10 := recoveredLocal16.
    recoveredBlock339Value11 := (10) * (recoveredBlock339Value10).
    recoveredBlock339Value12 := (recoveredBlock339Value11) rounded.
    (recoveredBlock339Value9) y: (recoveredBlock339Value12).
    recoveredBlock339Value13 := recoveredBlock339Value0.
    recoveredBlock339Value14 := recoveredLocal16.
    recoveredBlock339Value15 := (30) * (recoveredBlock339Value14).
    recoveredBlock339Value16 := (recoveredBlock339Value15) rounded.
    (recoveredBlock339Value13) height: (recoveredBlock339Value16).
    recoveredBlock339Value17 := recoveredBlock339Value0.
    (recoveredBlock339Value17) marginBottom: (10).
    recoveredBlock339Value18 := recoveredLocal17.
    recoveredBlock339Value19 := (75) * (recoveredBlock339Value18).
    recoveredBlock339Value20 := (recoveredBlock339Value19) rounded.
    recoveredBlock339Value21 := (recoveredBlock339Value0) width: (recoveredBlock339Value20).
    recoveredBlock339Value21
].
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := 'sep2'.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack3 := [:recoveredBlock441Arg1 | 
    | recoveredBlock441Value0 recoveredBlock441Value1 recoveredBlock441Value2 recoveredBlock441Value3 recoveredBlock441Value4 recoveredBlock441Value5 recoveredBlock441Value6 recoveredBlock441Value7 recoveredBlock441Value8 recoveredBlock441Value9 recoveredBlock441Value10 recoveredBlock441Value11 recoveredBlock441Value12 recoveredBlock441Value13 recoveredBlock441Value14 recoveredBlock441Value15 recoveredBlock441Value16 recoveredBlock441Value17 recoveredBlock441Value18 recoveredBlock441Value19 recoveredBlock441Value20 |
    recoveredBlock441Value0 := recoveredBlock441Arg1.
    recoveredBlock441Value1 := recoveredBlock441Value0.
    recoveredBlock441Value2 := recoveredLocal17.
    recoveredBlock441Value3 := (364) * (recoveredBlock441Value2).
    recoveredBlock441Value4 := (recoveredBlock441Value3) rounded.
    (recoveredBlock441Value1) x: (recoveredBlock441Value4).
    recoveredBlock441Value5 := recoveredBlock441Value0.
    recoveredBlock441Value6 := XmSINGLELINE.
    (recoveredBlock441Value5) separatorType: (recoveredBlock441Value6).
    recoveredBlock441Value7 := recoveredBlock441Value0.
    recoveredBlock441Value8 := XmVERTICAL.
    (recoveredBlock441Value7) orientation: (recoveredBlock441Value8).
    recoveredBlock441Value9 := recoveredBlock441Value0.
    recoveredBlock441Value10 := recoveredLocal16.
    recoveredBlock441Value11 := (5) * (recoveredBlock441Value10).
    recoveredBlock441Value12 := (recoveredBlock441Value11) rounded.
    (recoveredBlock441Value9) y: (recoveredBlock441Value12).
    recoveredBlock441Value13 := recoveredBlock441Value0.
    recoveredBlock441Value14 := recoveredLocal16.
    recoveredBlock441Value15 := (370) * (recoveredBlock441Value14).
    recoveredBlock441Value16 := (recoveredBlock441Value15) rounded.
    (recoveredBlock441Value13) height: (recoveredBlock441Value16).
    recoveredBlock441Value17 := recoveredLocal17.
    recoveredBlock441Value18 := (1) * (recoveredBlock441Value17).
    recoveredBlock441Value19 := (recoveredBlock441Value18) rounded.
    recoveredBlock441Value20 := (recoveredBlock441Value0) width: (recoveredBlock441Value19).
    recoveredBlock441Value20
].
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack2 := 'sep2'.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := 'anEnhancedText1'.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack3 := [:recoveredBlock529Arg1 | 
    | recoveredBlock529Value0 recoveredBlock529Value1 recoveredBlock529Value2 recoveredBlock529Value3 recoveredBlock529Value4 recoveredBlock529Value5 recoveredBlock529Value6 recoveredBlock529Value7 recoveredBlock529Value8 recoveredBlock529Value9 recoveredBlock529Value10 recoveredBlock529Value11 recoveredBlock529Value12 recoveredBlock529Value13 recoveredBlock529Value14 recoveredBlock529Value15 recoveredBlock529Value16 |
    recoveredBlock529Value0 := recoveredBlock529Arg1.
    recoveredBlock529Value1 := recoveredBlock529Value0.
    recoveredBlock529Value2 := recoveredLocal16.
    recoveredBlock529Value3 := (69) * (recoveredBlock529Value2).
    recoveredBlock529Value4 := (recoveredBlock529Value3) rounded.
    (recoveredBlock529Value1) y: (recoveredBlock529Value4).
    recoveredBlock529Value5 := recoveredBlock529Value0.
    recoveredBlock529Value6 := recoveredLocal17.
    recoveredBlock529Value7 := (183) * (recoveredBlock529Value6).
    recoveredBlock529Value8 := (recoveredBlock529Value7) rounded.
    (recoveredBlock529Value5) x: (recoveredBlock529Value8).
    recoveredBlock529Value9 := recoveredBlock529Value0.
    recoveredBlock529Value10 := recoveredLocal16.
    recoveredBlock529Value11 := (24) * (recoveredBlock529Value10).
    recoveredBlock529Value12 := (recoveredBlock529Value11) rounded.
    (recoveredBlock529Value9) height: (recoveredBlock529Value12).
    recoveredBlock529Value13 := recoveredLocal17.
    recoveredBlock529Value14 := (216) * (recoveredBlock529Value13).
    recoveredBlock529Value15 := (recoveredBlock529Value14) rounded.
    recoveredBlock529Value16 := (recoveredBlock529Value0) width: (recoveredBlock529Value15).
    recoveredBlock529Value16
].
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack2 := 'anEnhancedText1'.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := 'lab'.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack3 := [:recoveredBlock608Arg1 | 
    | recoveredBlock608Value0 recoveredBlock608Value1 recoveredBlock608Value2 recoveredBlock608Value3 recoveredBlock608Value4 recoveredBlock608Value5 recoveredBlock608Value6 recoveredBlock608Value7 recoveredBlock608Value8 recoveredBlock608Value9 recoveredBlock608Value10 recoveredBlock608Value11 recoveredBlock608Value12 recoveredBlock608Value13 recoveredBlock608Value14 recoveredBlock608Value15 recoveredBlock608Value16 recoveredBlock608Value17 recoveredBlock608Value18 recoveredBlock608Value19 recoveredBlock608Value20 recoveredBlock608Value21 |
    recoveredBlock608Value0 := recoveredBlock608Arg1.
    recoveredBlock608Value1 := recoveredBlock608Value0.
    recoveredBlock608Value2 := recoveredLocal17.
    recoveredBlock608Value3 := (183) * (recoveredBlock608Value2).
    recoveredBlock608Value4 := (recoveredBlock608Value3) rounded.
    (recoveredBlock608Value1) x: (recoveredBlock608Value4).
    recoveredBlock608Value5 := recoveredBlock608Value0.
    recoveredBlock608Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock608Value5) alignment: (recoveredBlock608Value6).
    recoveredBlock608Value7 := recoveredBlock608Value0.
    (recoveredBlock608Value7) labelString: ('Priority').
    recoveredBlock608Value8 := recoveredBlock608Value0.
    recoveredBlock608Value9 := recoveredLocal16.
    recoveredBlock608Value10 := (49) * (recoveredBlock608Value9).
    recoveredBlock608Value11 := (recoveredBlock608Value10) rounded.
    (recoveredBlock608Value8) y: (recoveredBlock608Value11).
    recoveredBlock608Value12 := recoveredBlock608Value0.
    recoveredBlock608Value13 := recoveredLocal16.
    recoveredBlock608Value14 := (20) * (recoveredBlock608Value13).
    recoveredBlock608Value15 := (recoveredBlock608Value14) rounded.
    (recoveredBlock608Value12) height: (recoveredBlock608Value15).
    recoveredBlock608Value16 := recoveredBlock608Value0.
    recoveredBlock608Value17 := recoveredLocal17.
    recoveredBlock608Value18 := (216) * (recoveredBlock608Value17).
    recoveredBlock608Value19 := (recoveredBlock608Value18) rounded.
    (recoveredBlock608Value16) width: (recoveredBlock608Value19).
    recoveredBlock608Value20 := recoveredBlock608Value0.
    recoveredBlock608Value21 := (self) defaultLabelBlue.
    (recoveredBlock608Value20) foregroundColor: (recoveredBlock608Value21).
    recoveredBlock608Value0
].
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack2 := 'lab'.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := 'action1Label'.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack3 := [:recoveredBlock706Arg1 | 
    | recoveredBlock706Value0 recoveredBlock706Value1 recoveredBlock706Value2 recoveredBlock706Value3 recoveredBlock706Value4 recoveredBlock706Value5 recoveredBlock706Value6 recoveredBlock706Value7 recoveredBlock706Value8 recoveredBlock706Value9 recoveredBlock706Value10 recoveredBlock706Value11 recoveredBlock706Value12 recoveredBlock706Value13 recoveredBlock706Value14 recoveredBlock706Value15 recoveredBlock706Value16 recoveredBlock706Value17 recoveredBlock706Value18 recoveredBlock706Value19 recoveredBlock706Value20 recoveredBlock706Value21 |
    recoveredBlock706Value0 := recoveredBlock706Arg1.
    recoveredBlock706Value1 := recoveredBlock706Value0.
    recoveredBlock706Value2 := recoveredLocal17.
    recoveredBlock706Value3 := (5) * (recoveredBlock706Value2).
    recoveredBlock706Value4 := (recoveredBlock706Value3) rounded.
    (recoveredBlock706Value1) x: (recoveredBlock706Value4).
    recoveredBlock706Value5 := recoveredBlock706Value0.
    recoveredBlock706Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock706Value5) alignment: (recoveredBlock706Value6).
    recoveredBlock706Value7 := recoveredBlock706Value0.
    (recoveredBlock706Value7) labelString: ('action1Label').
    recoveredBlock706Value8 := recoveredBlock706Value0.
    recoveredBlock706Value9 := recoveredLocal16.
    recoveredBlock706Value10 := (49) * (recoveredBlock706Value9).
    recoveredBlock706Value11 := (recoveredBlock706Value10) rounded.
    (recoveredBlock706Value8) y: (recoveredBlock706Value11).
    recoveredBlock706Value12 := recoveredBlock706Value0.
    recoveredBlock706Value13 := recoveredLocal16.
    recoveredBlock706Value14 := (20) * (recoveredBlock706Value13).
    recoveredBlock706Value15 := (recoveredBlock706Value14) rounded.
    (recoveredBlock706Value12) height: (recoveredBlock706Value15).
    recoveredBlock706Value16 := recoveredBlock706Value0.
    recoveredBlock706Value17 := recoveredLocal17.
    recoveredBlock706Value18 := (173) * (recoveredBlock706Value17).
    recoveredBlock706Value19 := (recoveredBlock706Value18) rounded.
    (recoveredBlock706Value16) width: (recoveredBlock706Value19).
    recoveredBlock706Value20 := recoveredBlock706Value0.
    recoveredBlock706Value21 := (self) defaultLabelBlue.
    (recoveredBlock706Value20) foregroundColor: (recoveredBlock706Value21).
    recoveredBlock706Value0
].
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack2 := 'action1Label'.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack2 := 'action1'.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack3 := [:recoveredBlock802Arg1 | 
    | recoveredBlock802Value0 recoveredBlock802Value1 recoveredBlock802Value2 recoveredBlock802Value3 recoveredBlock802Value4 recoveredBlock802Value5 recoveredBlock802Value6 recoveredBlock802Value7 recoveredBlock802Value8 recoveredBlock802Value9 recoveredBlock802Value10 recoveredBlock802Value11 recoveredBlock802Value12 recoveredBlock802Value13 recoveredBlock802Value14 recoveredBlock802Value15 recoveredBlock802Value16 |
    recoveredBlock802Value0 := recoveredBlock802Arg1.
    recoveredBlock802Value1 := recoveredBlock802Value0.
    recoveredBlock802Value2 := recoveredLocal17.
    recoveredBlock802Value3 := (5) * (recoveredBlock802Value2).
    recoveredBlock802Value4 := (recoveredBlock802Value3) rounded.
    (recoveredBlock802Value1) x: (recoveredBlock802Value4).
    recoveredBlock802Value5 := recoveredBlock802Value0.
    recoveredBlock802Value6 := recoveredLocal16.
    recoveredBlock802Value7 := (69) * (recoveredBlock802Value6).
    recoveredBlock802Value8 := (recoveredBlock802Value7) rounded.
    (recoveredBlock802Value5) y: (recoveredBlock802Value8).
    recoveredBlock802Value9 := recoveredBlock802Value0.
    recoveredBlock802Value10 := recoveredLocal16.
    recoveredBlock802Value11 := (24) * (recoveredBlock802Value10).
    recoveredBlock802Value12 := (recoveredBlock802Value11) rounded.
    (recoveredBlock802Value9) height: (recoveredBlock802Value12).
    recoveredBlock802Value13 := recoveredLocal17.
    recoveredBlock802Value14 := (173) * (recoveredBlock802Value13).
    recoveredBlock802Value15 := (recoveredBlock802Value14) rounded.
    recoveredBlock802Value16 := (recoveredBlock802Value0) width: (recoveredBlock802Value15).
    recoveredBlock802Value16
].
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack2 := 'action1'.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack2 := 'lineWidth'.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack3 := [:recoveredBlock882Arg1 | 
    | recoveredBlock882Value0 recoveredBlock882Value1 recoveredBlock882Value2 recoveredBlock882Value3 recoveredBlock882Value4 recoveredBlock882Value5 recoveredBlock882Value6 recoveredBlock882Value7 recoveredBlock882Value8 recoveredBlock882Value9 recoveredBlock882Value10 recoveredBlock882Value11 recoveredBlock882Value12 recoveredBlock882Value13 recoveredBlock882Value14 recoveredBlock882Value15 recoveredBlock882Value16 recoveredBlock882Value17 recoveredBlock882Value18 recoveredBlock882Value19 recoveredBlock882Value20 recoveredBlock882Value21 |
    recoveredBlock882Value0 := recoveredBlock882Arg1.
    recoveredBlock882Value1 := recoveredBlock882Value0.
    recoveredBlock882Value2 := recoveredLocal17.
    recoveredBlock882Value3 := (215) * (recoveredBlock882Value2).
    recoveredBlock882Value4 := (recoveredBlock882Value3) rounded.
    (recoveredBlock882Value1) x: (recoveredBlock882Value4).
    recoveredBlock882Value5 := recoveredBlock882Value0.
    recoveredBlock882Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock882Value5) alignment: (recoveredBlock882Value6).
    recoveredBlock882Value7 := recoveredBlock882Value0.
    (recoveredBlock882Value7) labelString: ('Width').
    recoveredBlock882Value8 := recoveredBlock882Value0.
    recoveredBlock882Value9 := recoveredLocal16.
    recoveredBlock882Value10 := (4) * (recoveredBlock882Value9).
    recoveredBlock882Value11 := (recoveredBlock882Value10) rounded.
    (recoveredBlock882Value8) y: (recoveredBlock882Value11).
    recoveredBlock882Value12 := recoveredBlock882Value0.
    recoveredBlock882Value13 := recoveredLocal16.
    recoveredBlock882Value14 := (20) * (recoveredBlock882Value13).
    recoveredBlock882Value15 := (recoveredBlock882Value14) rounded.
    (recoveredBlock882Value12) height: (recoveredBlock882Value15).
    recoveredBlock882Value16 := recoveredBlock882Value0.
    recoveredBlock882Value17 := recoveredLocal17.
    recoveredBlock882Value18 := (64) * (recoveredBlock882Value17).
    recoveredBlock882Value19 := (recoveredBlock882Value18) rounded.
    (recoveredBlock882Value16) width: (recoveredBlock882Value19).
    recoveredBlock882Value20 := recoveredBlock882Value0.
    recoveredBlock882Value21 := (self) defaultLabelBlue.
    (recoveredBlock882Value20) foregroundColor: (recoveredBlock882Value21).
    recoveredBlock882Value0
].
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack2 := 'lineWidth'.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack2 := 'aRBColorSelectionWidget1'.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack3 := [:recoveredBlock980Arg1 | 
    | recoveredBlock980Value0 recoveredBlock980Value1 recoveredBlock980Value2 recoveredBlock980Value3 recoveredBlock980Value4 recoveredBlock980Value5 recoveredBlock980Value6 recoveredBlock980Value7 recoveredBlock980Value8 |
    recoveredBlock980Value0 := recoveredBlock980Arg1.
    recoveredBlock980Value1 := recoveredBlock980Value0.
    recoveredBlock980Value2 := recoveredLocal16.
    recoveredBlock980Value3 := (25) * (recoveredBlock980Value2).
    recoveredBlock980Value4 := (recoveredBlock980Value3) rounded.
    (recoveredBlock980Value1) y: (recoveredBlock980Value4).
    recoveredBlock980Value5 := recoveredLocal17.
    recoveredBlock980Value6 := (8) * (recoveredBlock980Value5).
    recoveredBlock980Value7 := (recoveredBlock980Value6) rounded.
    recoveredBlock980Value8 := (recoveredBlock980Value0) x: (recoveredBlock980Value7).
    recoveredBlock980Value8
].
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBColorSelectionWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack2 := 'aRBColorSelectionWidget1'.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack2 := 'width'.
            recoveredPC := 1036.
        ].
        recoveredStep = 1036 ifTrue: [
            recoveredStack3 := [:recoveredBlock1036Arg1 | 
    | recoveredBlock1036Value0 recoveredBlock1036Value1 recoveredBlock1036Value2 recoveredBlock1036Value3 recoveredBlock1036Value4 recoveredBlock1036Value5 recoveredBlock1036Value6 recoveredBlock1036Value7 recoveredBlock1036Value8 recoveredBlock1036Value9 recoveredBlock1036Value10 recoveredBlock1036Value11 recoveredBlock1036Value12 recoveredBlock1036Value13 recoveredBlock1036Value14 recoveredBlock1036Value15 recoveredBlock1036Value16 recoveredBlock1036Value17 |
    recoveredBlock1036Value0 := recoveredBlock1036Arg1.
    recoveredBlock1036Value1 := recoveredBlock1036Value0.
    recoveredBlock1036Value2 := recoveredLocal17.
    recoveredBlock1036Value3 := (249) * (recoveredBlock1036Value2).
    recoveredBlock1036Value4 := (recoveredBlock1036Value3) rounded.
    (recoveredBlock1036Value1) x: (recoveredBlock1036Value4).
    recoveredBlock1036Value5 := recoveredBlock1036Value0.
    (recoveredBlock1036Value5) borderWidth: (1).
    recoveredBlock1036Value6 := recoveredBlock1036Value0.
    recoveredBlock1036Value7 := recoveredLocal16.
    recoveredBlock1036Value8 := (28) * (recoveredBlock1036Value7).
    recoveredBlock1036Value9 := (recoveredBlock1036Value8) rounded.
    (recoveredBlock1036Value6) y: (recoveredBlock1036Value9).
    recoveredBlock1036Value10 := recoveredBlock1036Value0.
    recoveredBlock1036Value11 := recoveredLocal16.
    recoveredBlock1036Value12 := (24) * (recoveredBlock1036Value11).
    recoveredBlock1036Value13 := (recoveredBlock1036Value12) rounded.
    (recoveredBlock1036Value10) height: (recoveredBlock1036Value13).
    recoveredBlock1036Value14 := recoveredLocal17.
    recoveredBlock1036Value15 := (137) * (recoveredBlock1036Value14).
    recoveredBlock1036Value16 := (recoveredBlock1036Value15) rounded.
    recoveredBlock1036Value17 := (recoveredBlock1036Value0) width: (recoveredBlock1036Value16).
    recoveredBlock1036Value17
].
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawnButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1106.
        ].
        recoveredStep = 1106 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            recoveredStack2 := 'width'.
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1117.
        ].
        recoveredStep = 1117 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredStack2 := 'arrowWidthButton'.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack3 := [:block28130bacArg1 | 
    | block28130bacValue0 block28130bacValue1 block28130bacValue2 block28130bacValue3 block28130bacValue4 block28130bacValue5 |
    block28130bacValue0 := block28130bacArg1.
    block28130bacValue1 := block28130bacValue0.
    (block28130bacValue1) x: (148).
    block28130bacValue2 := block28130bacValue0.
    block28130bacValue3 := XmARROWDOWN.
    (block28130bacValue2) arrowDirection: (block28130bacValue3).
    block28130bacValue4 := block28130bacValue0.
    (block28130bacValue4) height: (24).
    block28130bacValue5 := (block28130bacValue0) width: (16).
    block28130bacValue5
].
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack1 := (recoveredStack1) createArrowButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack2 := 'arrowWidthButton'.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack2 := 'notebook'.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack3 := [:block28130bd0Arg1 | 
    | block28130bd0Value0 |
    block28130bd0Value0 := block28130bd0Arg1.
    block28130bd0Value0
].
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasTabStrip: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack2 := 'notebook'.
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1217.
        ].
        recoveredStep = 1217 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack2 := [:recoveredBlock1220Arg1 | 
    | recoveredBlock1220Value0 recoveredBlock1220Value1 recoveredBlock1220Value2 |
    recoveredBlock1220Value0 := recoveredBlock1220Arg1.
    recoveredBlock1220Value1 := recoveredLocal13.
    recoveredBlock1220Value2 := (recoveredBlock1220Value0) workWindow: (recoveredBlock1220Value1).
    recoveredBlock1220Value2
].
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack2 := [:recoveredBlock1244Arg1 | 
    | recoveredBlock1244Value0 recoveredBlock1244Value1 recoveredBlock1244Value2 recoveredBlock1244Value3 recoveredBlock1244Value4 recoveredBlock1244Value5 recoveredBlock1244Value6 recoveredBlock1244Value7 recoveredBlock1244Value8 recoveredBlock1244Value9 recoveredBlock1244Value10 recoveredBlock1244Value11 recoveredBlock1244Value12 |
    recoveredBlock1244Value0 := recoveredBlock1244Arg1.
    recoveredBlock1244Value1 := recoveredBlock1244Value0.
    recoveredBlock1244Value2 := XmATTACHWIDGET.
    (recoveredBlock1244Value1) topAttachment: (recoveredBlock1244Value2).
    recoveredBlock1244Value3 := recoveredBlock1244Value0.
    recoveredBlock1244Value4 := recoveredLocal10.
    (recoveredBlock1244Value3) topWidget: (recoveredBlock1244Value4).
    recoveredBlock1244Value5 := recoveredBlock1244Value0.
    (recoveredBlock1244Value5) topOffset: (10).
    recoveredBlock1244Value6 := recoveredBlock1244Value0.
    recoveredBlock1244Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1244Value6) leftAttachment: (recoveredBlock1244Value7).
    recoveredBlock1244Value8 := recoveredBlock1244Value0.
    recoveredBlock1244Value9 := recoveredLocal10.
    (recoveredBlock1244Value8) leftWidget: (recoveredBlock1244Value9).
    recoveredBlock1244Value10 := recoveredBlock1244Value0.
    recoveredBlock1244Value11 := XmATTACHFORM.
    (recoveredBlock1244Value10) rightAttachment: (recoveredBlock1244Value11).
    recoveredBlock1244Value12 := (recoveredBlock1244Value0) rightOffset: (5).
    recoveredBlock1244Value12
].
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1311.
        ].
        recoveredStep = 1311 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1314.
        ].
        recoveredStep = 1314 ifTrue: [
            recoveredStack2 := [:block28130bf4Arg1 | 
    | block28130bf4Value0 block28130bf4Value1 block28130bf4Value2 block28130bf4Value3 block28130bf4Value4 block28130bf4Value5 block28130bf4Value6 block28130bf4Value7 block28130bf4Value8 block28130bf4Value9 |
    block28130bf4Value0 := block28130bf4Arg1.
    block28130bf4Value1 := block28130bf4Value0.
    block28130bf4Value2 := XmATTACHFORM.
    (block28130bf4Value1) topAttachment: (block28130bf4Value2).
    block28130bf4Value3 := block28130bf4Value0.
    (block28130bf4Value3) topOffset: (5).
    block28130bf4Value4 := block28130bf4Value0.
    block28130bf4Value5 := XmATTACHFORM.
    (block28130bf4Value4) leftAttachment: (block28130bf4Value5).
    block28130bf4Value6 := block28130bf4Value0.
    (block28130bf4Value6) leftOffset: (5).
    block28130bf4Value7 := block28130bf4Value0.
    block28130bf4Value8 := XmATTACHPOSITION.
    (block28130bf4Value7) rightAttachment: (block28130bf4Value8).
    block28130bf4Value9 := (block28130bf4Value0) rightPosition: (42).
    block28130bf4Value9
].
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            recoveredPC := 1368.
        ].
        recoveredStep = 1368 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1373.
        ].
        recoveredStep = 1373 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1376.
        ].
        recoveredStep = 1376 ifTrue: [
            recoveredStack2 := [:block28130c18Arg1 | 
    | block28130c18Value0 block28130c18Value1 block28130c18Value2 block28130c18Value3 block28130c18Value4 block28130c18Value5 block28130c18Value6 |
    block28130c18Value0 := block28130c18Arg1.
    block28130c18Value1 := block28130c18Value0.
    block28130c18Value2 := XmATTACHFORM.
    (block28130c18Value1) topAttachment: (block28130c18Value2).
    block28130c18Value3 := block28130c18Value0.
    (block28130c18Value3) topOffset: (5).
    block28130c18Value4 := block28130c18Value0.
    block28130c18Value5 := XmATTACHFORM.
    (block28130c18Value4) rightAttachment: (block28130c18Value5).
    block28130c18Value6 := (block28130c18Value0) rightOffset: (5).
    block28130c18Value6
].
            recoveredPC := 1380.
        ].
        recoveredStep = 1380 ifTrue: [
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1421.
        ].
        recoveredStep = 1421 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1424.
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredStack2 := [:recoveredBlock1424Arg1 | 
    | recoveredBlock1424Value0 recoveredBlock1424Value1 recoveredBlock1424Value2 recoveredBlock1424Value3 recoveredBlock1424Value4 recoveredBlock1424Value5 recoveredBlock1424Value6 recoveredBlock1424Value7 recoveredBlock1424Value8 recoveredBlock1424Value9 recoveredBlock1424Value10 recoveredBlock1424Value11 |
    recoveredBlock1424Value0 := recoveredBlock1424Arg1.
    recoveredBlock1424Value1 := recoveredBlock1424Value0.
    recoveredBlock1424Value2 := XmATTACHFORM.
    (recoveredBlock1424Value1) bottomAttachment: (recoveredBlock1424Value2).
    recoveredBlock1424Value3 := recoveredBlock1424Value0.
    (recoveredBlock1424Value3) bottomOffset: (5).
    recoveredBlock1424Value4 := recoveredBlock1424Value0.
    recoveredBlock1424Value5 := XmATTACHFORM.
    (recoveredBlock1424Value4) topAttachment: (recoveredBlock1424Value5).
    recoveredBlock1424Value6 := recoveredBlock1424Value0.
    (recoveredBlock1424Value6) topOffset: (5).
    recoveredBlock1424Value7 := recoveredBlock1424Value0.
    recoveredBlock1424Value8 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1424Value7) leftAttachment: (recoveredBlock1424Value8).
    recoveredBlock1424Value9 := recoveredBlock1424Value0.
    recoveredBlock1424Value10 := recoveredLocal12.
    (recoveredBlock1424Value9) leftWidget: (recoveredBlock1424Value10).
    recoveredBlock1424Value11 := (recoveredBlock1424Value0) leftOffset: (-10).
    recoveredBlock1424Value11
].
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1489.
        ].
        recoveredStep = 1489 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1492.
        ].
        recoveredStep = 1492 ifTrue: [
            recoveredStack2 := [:recoveredBlock1492Arg1 | 
    | recoveredBlock1492Value0 recoveredBlock1492Value1 recoveredBlock1492Value2 recoveredBlock1492Value3 recoveredBlock1492Value4 recoveredBlock1492Value5 recoveredBlock1492Value6 recoveredBlock1492Value7 recoveredBlock1492Value8 recoveredBlock1492Value9 recoveredBlock1492Value10 recoveredBlock1492Value11 recoveredBlock1492Value12 recoveredBlock1492Value13 |
    recoveredBlock1492Value0 := recoveredBlock1492Arg1.
    recoveredBlock1492Value1 := recoveredBlock1492Value0.
    recoveredBlock1492Value2 := XmATTACHWIDGET.
    (recoveredBlock1492Value1) topAttachment: (recoveredBlock1492Value2).
    recoveredBlock1492Value3 := recoveredBlock1492Value0.
    recoveredBlock1492Value4 := recoveredLocal7.
    (recoveredBlock1492Value3) topWidget: (recoveredBlock1492Value4).
    recoveredBlock1492Value5 := recoveredBlock1492Value0.
    recoveredBlock1492Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1492Value5) leftAttachment: (recoveredBlock1492Value6).
    recoveredBlock1492Value7 := recoveredBlock1492Value0.
    recoveredBlock1492Value8 := recoveredLocal7.
    (recoveredBlock1492Value7) leftWidget: (recoveredBlock1492Value8).
    recoveredBlock1492Value9 := recoveredBlock1492Value0.
    recoveredBlock1492Value10 := XmATTACHWIDGET.
    (recoveredBlock1492Value9) rightAttachment: (recoveredBlock1492Value10).
    recoveredBlock1492Value11 := recoveredBlock1492Value0.
    recoveredBlock1492Value12 := recoveredLocal12.
    (recoveredBlock1492Value11) rightWidget: (recoveredBlock1492Value12).
    recoveredBlock1492Value13 := (recoveredBlock1492Value0) rightOffset: (15).
    recoveredBlock1492Value13
].
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1561.
        ].
        recoveredStep = 1561 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1564.
        ].
        recoveredStep = 1564 ifTrue: [
            recoveredStack2 := [:recoveredBlock1564Arg1 | 
    | recoveredBlock1564Value0 recoveredBlock1564Value1 recoveredBlock1564Value2 recoveredBlock1564Value3 recoveredBlock1564Value4 recoveredBlock1564Value5 recoveredBlock1564Value6 recoveredBlock1564Value7 recoveredBlock1564Value8 recoveredBlock1564Value9 |
    recoveredBlock1564Value0 := recoveredBlock1564Arg1.
    recoveredBlock1564Value1 := recoveredBlock1564Value0.
    recoveredBlock1564Value2 := XmATTACHWIDGET.
    (recoveredBlock1564Value1) topAttachment: (recoveredBlock1564Value2).
    recoveredBlock1564Value3 := recoveredBlock1564Value0.
    recoveredBlock1564Value4 := recoveredLocal2.
    (recoveredBlock1564Value3) topWidget: (recoveredBlock1564Value4).
    recoveredBlock1564Value5 := recoveredBlock1564Value0.
    recoveredBlock1564Value6 := XmATTACHWIDGET.
    (recoveredBlock1564Value5) leftAttachment: (recoveredBlock1564Value6).
    recoveredBlock1564Value7 := recoveredBlock1564Value0.
    recoveredBlock1564Value8 := recoveredLocal6.
    (recoveredBlock1564Value7) leftWidget: (recoveredBlock1564Value8).
    recoveredBlock1564Value9 := (recoveredBlock1564Value0) leftOffset: (5).
    recoveredBlock1564Value9
].
            recoveredPC := 1612.
        ].
        recoveredStep = 1612 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1617.
        ].
        recoveredStep = 1617 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            recoveredStack2 := [:recoveredBlock1620Arg1 | 
    | recoveredBlock1620Value0 recoveredBlock1620Value1 recoveredBlock1620Value2 recoveredBlock1620Value3 recoveredBlock1620Value4 recoveredBlock1620Value5 recoveredBlock1620Value6 recoveredBlock1620Value7 recoveredBlock1620Value8 recoveredBlock1620Value9 recoveredBlock1620Value10 |
    recoveredBlock1620Value0 := recoveredBlock1620Arg1.
    recoveredBlock1620Value1 := recoveredBlock1620Value0.
    recoveredBlock1620Value2 := XmATTACHWIDGET.
    (recoveredBlock1620Value1) topAttachment: (recoveredBlock1620Value2).
    recoveredBlock1620Value3 := recoveredBlock1620Value0.
    recoveredBlock1620Value4 := recoveredLocal3.
    (recoveredBlock1620Value3) topWidget: (recoveredBlock1620Value4).
    recoveredBlock1620Value5 := recoveredBlock1620Value0.
    recoveredBlock1620Value6 := XmATTACHFORM.
    (recoveredBlock1620Value5) leftAttachment: (recoveredBlock1620Value6).
    recoveredBlock1620Value7 := recoveredBlock1620Value0.
    (recoveredBlock1620Value7) leftOffset: (5).
    recoveredBlock1620Value8 := recoveredBlock1620Value0.
    recoveredBlock1620Value9 := XmATTACHPOSITION.
    (recoveredBlock1620Value8) rightAttachment: (recoveredBlock1620Value9).
    recoveredBlock1620Value10 := (recoveredBlock1620Value0) rightPosition: (42).
    recoveredBlock1620Value10
].
            recoveredPC := 1674.
        ].
        recoveredStep = 1674 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1679.
        ].
        recoveredStep = 1679 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1682.
        ].
        recoveredStep = 1682 ifTrue: [
            recoveredStack2 := [:recoveredBlock1682Arg1 | 
    | recoveredBlock1682Value0 recoveredBlock1682Value1 recoveredBlock1682Value2 recoveredBlock1682Value3 recoveredBlock1682Value4 recoveredBlock1682Value5 recoveredBlock1682Value6 recoveredBlock1682Value7 recoveredBlock1682Value8 recoveredBlock1682Value9 recoveredBlock1682Value10 recoveredBlock1682Value11 |
    recoveredBlock1682Value0 := recoveredBlock1682Arg1.
    recoveredBlock1682Value1 := recoveredBlock1682Value0.
    recoveredBlock1682Value2 := XmATTACHWIDGET.
    (recoveredBlock1682Value1) topAttachment: (recoveredBlock1682Value2).
    recoveredBlock1682Value3 := recoveredBlock1682Value0.
    recoveredBlock1682Value4 := recoveredLocal6.
    (recoveredBlock1682Value3) topWidget: (recoveredBlock1682Value4).
    recoveredBlock1682Value5 := recoveredBlock1682Value0.
    recoveredBlock1682Value6 := XmATTACHFORM.
    (recoveredBlock1682Value5) leftAttachment: (recoveredBlock1682Value6).
    recoveredBlock1682Value7 := recoveredBlock1682Value0.
    (recoveredBlock1682Value7) leftOffset: (5).
    recoveredBlock1682Value8 := recoveredBlock1682Value0.
    recoveredBlock1682Value9 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1682Value8) rightAttachment: (recoveredBlock1682Value9).
    recoveredBlock1682Value10 := recoveredLocal6.
    recoveredBlock1682Value11 := (recoveredBlock1682Value0) rightWidget: (recoveredBlock1682Value10).
    recoveredBlock1682Value11
].
            recoveredPC := 1738.
        ].
        recoveredStep = 1738 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1743.
        ].
        recoveredStep = 1743 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1746.
        ].
        recoveredStep = 1746 ifTrue: [
            recoveredStack2 := [:recoveredBlock1746Arg1 | 
    | recoveredBlock1746Value0 recoveredBlock1746Value1 recoveredBlock1746Value2 recoveredBlock1746Value3 recoveredBlock1746Value4 recoveredBlock1746Value5 recoveredBlock1746Value6 recoveredBlock1746Value7 recoveredBlock1746Value8 recoveredBlock1746Value9 recoveredBlock1746Value10 recoveredBlock1746Value11 recoveredBlock1746Value12 recoveredBlock1746Value13 |
    recoveredBlock1746Value0 := recoveredBlock1746Arg1.
    recoveredBlock1746Value1 := recoveredBlock1746Value0.
    recoveredBlock1746Value2 := XmATTACHFORM.
    (recoveredBlock1746Value1) topAttachment: (recoveredBlock1746Value2).
    recoveredBlock1746Value3 := recoveredBlock1746Value0.
    (recoveredBlock1746Value3) topOffset: (5).
    recoveredBlock1746Value4 := recoveredBlock1746Value0.
    recoveredBlock1746Value5 := XmATTACHWIDGET.
    (recoveredBlock1746Value4) leftAttachment: (recoveredBlock1746Value5).
    recoveredBlock1746Value6 := recoveredBlock1746Value0.
    recoveredBlock1746Value7 := recoveredLocal11.
    (recoveredBlock1746Value6) leftWidget: (recoveredBlock1746Value7).
    recoveredBlock1746Value8 := recoveredBlock1746Value0.
    (recoveredBlock1746Value8) leftOffset: (5).
    recoveredBlock1746Value9 := recoveredBlock1746Value0.
    recoveredBlock1746Value10 := XmATTACHWIDGET.
    (recoveredBlock1746Value9) rightAttachment: (recoveredBlock1746Value10).
    recoveredBlock1746Value11 := recoveredBlock1746Value0.
    recoveredBlock1746Value12 := recoveredLocal9.
    (recoveredBlock1746Value11) rightWidget: (recoveredBlock1746Value12).
    recoveredBlock1746Value13 := (recoveredBlock1746Value0) rightOffset: (5).
    recoveredBlock1746Value13
].
            recoveredPC := 1814.
        ].
        recoveredStep = 1814 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1819.
        ].
        recoveredStep = 1819 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1822.
        ].
        recoveredStep = 1822 ifTrue: [
            recoveredStack2 := [:recoveredBlock1822Arg1 | 
    | recoveredBlock1822Value0 recoveredBlock1822Value1 recoveredBlock1822Value2 recoveredBlock1822Value3 recoveredBlock1822Value4 recoveredBlock1822Value5 recoveredBlock1822Value6 recoveredBlock1822Value7 |
    recoveredBlock1822Value0 := recoveredBlock1822Arg1.
    recoveredBlock1822Value1 := recoveredBlock1822Value0.
    recoveredBlock1822Value2 := XmATTACHWIDGET.
    (recoveredBlock1822Value1) topAttachment: (recoveredBlock1822Value2).
    recoveredBlock1822Value3 := recoveredBlock1822Value0.
    recoveredBlock1822Value4 := recoveredLocal11.
    (recoveredBlock1822Value3) topWidget: (recoveredBlock1822Value4).
    recoveredBlock1822Value5 := recoveredBlock1822Value0.
    recoveredBlock1822Value6 := XmATTACHFORM.
    (recoveredBlock1822Value5) leftAttachment: (recoveredBlock1822Value6).
    recoveredBlock1822Value7 := (recoveredBlock1822Value0) leftOffset: (5).
    recoveredBlock1822Value7
].
            recoveredPC := 1862.
        ].
        recoveredStep = 1862 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1867.
        ].
        recoveredStep = 1867 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1870.
        ].
        recoveredStep = 1870 ifTrue: [
            recoveredStack2 := [:recoveredBlock1870Arg1 | 
    | recoveredBlock1870Value0 recoveredBlock1870Value1 recoveredBlock1870Value2 recoveredBlock1870Value3 recoveredBlock1870Value4 recoveredBlock1870Value5 recoveredBlock1870Value6 recoveredBlock1870Value7 recoveredBlock1870Value8 |
    recoveredBlock1870Value0 := recoveredBlock1870Arg1.
    recoveredBlock1870Value1 := recoveredBlock1870Value0.
    recoveredBlock1870Value2 := XmATTACHWIDGET.
    (recoveredBlock1870Value1) topAttachment: (recoveredBlock1870Value2).
    recoveredBlock1870Value3 := recoveredBlock1870Value0.
    recoveredBlock1870Value4 := recoveredLocal4.
    (recoveredBlock1870Value3) topWidget: (recoveredBlock1870Value4).
    recoveredBlock1870Value5 := recoveredBlock1870Value0.
    recoveredBlock1870Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1870Value5) leftAttachment: (recoveredBlock1870Value6).
    recoveredBlock1870Value7 := recoveredLocal4.
    recoveredBlock1870Value8 := (recoveredBlock1870Value0) leftWidget: (recoveredBlock1870Value7).
    recoveredBlock1870Value8
].
            recoveredPC := 1912.
        ].
        recoveredStep = 1912 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1917.
        ].
        recoveredStep = 1917 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1920.
        ].
        recoveredStep = 1920 ifTrue: [
            recoveredStack2 := [:recoveredBlock1920Arg1 | 
    | recoveredBlock1920Value0 recoveredBlock1920Value1 recoveredBlock1920Value2 recoveredBlock1920Value3 recoveredBlock1920Value4 recoveredBlock1920Value5 recoveredBlock1920Value6 recoveredBlock1920Value7 recoveredBlock1920Value8 recoveredBlock1920Value9 recoveredBlock1920Value10 recoveredBlock1920Value11 recoveredBlock1920Value12 recoveredBlock1920Value13 recoveredBlock1920Value14 recoveredBlock1920Value15 |
    recoveredBlock1920Value0 := recoveredBlock1920Arg1.
    recoveredBlock1920Value1 := recoveredBlock1920Value0.
    recoveredBlock1920Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1920Value1) topAttachment: (recoveredBlock1920Value2).
    recoveredBlock1920Value3 := recoveredBlock1920Value0.
    recoveredBlock1920Value4 := recoveredLocal2.
    (recoveredBlock1920Value3) topWidget: (recoveredBlock1920Value4).
    recoveredBlock1920Value5 := recoveredBlock1920Value0.
    (recoveredBlock1920Value5) topOffset: (3).
    recoveredBlock1920Value6 := recoveredBlock1920Value0.
    recoveredBlock1920Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1920Value6) rightAttachment: (recoveredBlock1920Value7).
    recoveredBlock1920Value8 := recoveredBlock1920Value0.
    recoveredBlock1920Value9 := recoveredLocal2.
    (recoveredBlock1920Value8) rightWidget: (recoveredBlock1920Value9).
    recoveredBlock1920Value10 := recoveredBlock1920Value0.
    (recoveredBlock1920Value10) rightOffset: (3).
    recoveredBlock1920Value11 := recoveredBlock1920Value0.
    recoveredBlock1920Value12 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1920Value11) bottomAttachment: (recoveredBlock1920Value12).
    recoveredBlock1920Value13 := recoveredBlock1920Value0.
    recoveredBlock1920Value14 := recoveredLocal2.
    (recoveredBlock1920Value13) bottomWidget: (recoveredBlock1920Value14).
    recoveredBlock1920Value15 := (recoveredBlock1920Value0) bottomOffset: (3).
    recoveredBlock1920Value15
].
            recoveredPC := 1996.
        ].
        recoveredStep = 1996 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2001.
        ].
        recoveredStep = 2001 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2004.
        ].
        recoveredStep = 2004 ifTrue: [
            recoveredStack2 := [:recoveredBlock2004Arg1 | 
    | recoveredBlock2004Value0 recoveredBlock2004Value1 recoveredBlock2004Value2 recoveredBlock2004Value3 recoveredBlock2004Value4 recoveredBlock2004Value5 recoveredBlock2004Value6 recoveredBlock2004Value7 recoveredBlock2004Value8 recoveredBlock2004Value9 recoveredBlock2004Value10 recoveredBlock2004Value11 recoveredBlock2004Value12 recoveredBlock2004Value13 recoveredBlock2004Value14 recoveredBlock2004Value15 recoveredBlock2004Value16 |
    recoveredBlock2004Value0 := recoveredBlock2004Arg1.
    recoveredBlock2004Value1 := recoveredBlock2004Value0.
    recoveredBlock2004Value2 := XmATTACHFORM.
    (recoveredBlock2004Value1) bottomAttachment: (recoveredBlock2004Value2).
    recoveredBlock2004Value3 := recoveredBlock2004Value0.
    (recoveredBlock2004Value3) bottomOffset: (5).
    recoveredBlock2004Value4 := recoveredBlock2004Value0.
    recoveredBlock2004Value5 := XmATTACHWIDGET.
    (recoveredBlock2004Value4) topAttachment: (recoveredBlock2004Value5).
    recoveredBlock2004Value6 := recoveredBlock2004Value0.
    recoveredBlock2004Value7 := recoveredLocal5.
    (recoveredBlock2004Value6) topWidget: (recoveredBlock2004Value7).
    recoveredBlock2004Value8 := recoveredBlock2004Value0.
    (recoveredBlock2004Value8) topOffset: (10).
    recoveredBlock2004Value9 := recoveredBlock2004Value0.
    recoveredBlock2004Value10 := XmATTACHFORM.
    (recoveredBlock2004Value9) leftAttachment: (recoveredBlock2004Value10).
    recoveredBlock2004Value11 := recoveredBlock2004Value0.
    (recoveredBlock2004Value11) leftOffset: (5).
    recoveredBlock2004Value12 := recoveredBlock2004Value0.
    recoveredBlock2004Value13 := XmATTACHWIDGET.
    (recoveredBlock2004Value12) rightAttachment: (recoveredBlock2004Value13).
    recoveredBlock2004Value14 := recoveredBlock2004Value0.
    recoveredBlock2004Value15 := recoveredLocal9.
    (recoveredBlock2004Value14) rightWidget: (recoveredBlock2004Value15).
    recoveredBlock2004Value16 := (recoveredBlock2004Value0) rightOffset: (5).
    recoveredBlock2004Value16
].
            recoveredPC := 2086.
        ].
        recoveredStep = 2086 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2091.
        ].
        recoveredStep = 2091 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2094.
        ].
        recoveredStep = 2094 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2098.
        ].
        recoveredStep = 2098 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2099.
        ].
        recoveredStep = 2099 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 2102.
        ].
        recoveredStep = 2102 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2103.
        ].
        recoveredStep = 2103 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2107.
        ].
        recoveredStep = 2107 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2110.
        ].
        recoveredStep = 2110 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2114.
        ].
        recoveredStep = 2114 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2115.
        ].
        recoveredStep = 2115 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 2118.
        ].
        recoveredStep = 2118 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2119.
        ].
        recoveredStep = 2119 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2123.
        ].
        recoveredStep = 2123 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2126.
        ].
        recoveredStep = 2126 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2130.
        ].
        recoveredStep = 2130 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2131.
        ].
        recoveredStep = 2131 ifTrue: [
            recoveredStack4 := 'modify:clientData:callData:'.
            recoveredPC := 2134.
        ].
        recoveredStep = 2134 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2135.
        ].
        recoveredStep = 2135 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2139.
        ].
        recoveredStep = 2139 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2142.
        ].
        recoveredStep = 2142 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2146.
        ].
        recoveredStep = 2146 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2147.
        ].
        recoveredStep = 2147 ifTrue: [
            recoveredStack4 := 'widthButtonActivate:clientData:callData:'.
            recoveredPC := 2150.
        ].
        recoveredStep = 2150 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2151.
        ].
        recoveredStep = 2151 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2155.
        ].
        recoveredStep = 2155 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2158.
        ].
        recoveredStep = 2158 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 2162.
        ].
        recoveredStep = 2162 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2163.
        ].
        recoveredStep = 2163 ifTrue: [
            recoveredStack4 := 'widthExpose:clientData:callData:'.
            recoveredPC := 2166.
        ].
        recoveredStep = 2166 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2167.
        ].
        recoveredStep = 2167 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2171.
        ].
        recoveredStep = 2171 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2174.
        ].
        recoveredStep = 2174 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 2178.
        ].
        recoveredStep = 2178 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2179.
        ].
        recoveredStep = 2179 ifTrue: [
            recoveredStack4 := 'resizeTabStrip:clientData:callData:'.
            recoveredPC := 2182.
        ].
        recoveredStep = 2182 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2183.
        ].
        recoveredStep = 2183 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2187.
        ].
        recoveredStep = 2187 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2190.
        ].
        recoveredStep = 2190 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2194.
        ].
        recoveredStep = 2194 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2195.
        ].
        recoveredStep = 2195 ifTrue: [
            recoveredStack4 := 'modifyVerifyTabStrip:clientData:callData:'.
            recoveredPC := 2198.
        ].
        recoveredStep = 2198 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2199.
        ].
        recoveredStep = 2199 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2203.
        ].
        recoveredStep = 2203 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2206.
        ].
        recoveredStep = 2206 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 2210.
        ].
        recoveredStep = 2210 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2211.
        ].
        recoveredStep = 2211 ifTrue: [
            recoveredStack4 := 'singleSelectionTabStrip:clientData:callData:'.
            recoveredPC := 2214.
        ].
        recoveredStep = 2214 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2215.
        ].
        recoveredStep = 2215 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2219.
        ].
        recoveredStep = 2219 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2222.
        ].
        recoveredStep = 2222 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2227.
        ].
        recoveredStep = 2227 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2230.
        ].
        recoveredStep = 2230 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2235.
        ].
        recoveredStep = 2235 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2238.
        ].
        recoveredStep = 2238 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2243.
        ].
        recoveredStep = 2243 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2246.
        ].
        recoveredStep = 2246 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2251.
        ].
        recoveredStep = 2251 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2254.
        ].
        recoveredStep = 2254 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2259.
        ].
        recoveredStep = 2259 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2262.
        ].
        recoveredStep = 2262 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2267.
        ].
        recoveredStep = 2267 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2270.
        ].
        recoveredStep = 2270 ifTrue: [
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 2273.
        ].
        recoveredStep = 2273 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 2276.
        ].
        recoveredStep = 2276 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2281.
        ].
        recoveredStep = 2281 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

