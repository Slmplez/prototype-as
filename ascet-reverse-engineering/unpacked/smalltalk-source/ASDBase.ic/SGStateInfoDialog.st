"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007ca0; bytecode file offset 0x908be4"
!SGStateInfoDialog methodsFor: 'recovered'!
pageAction3Method
    | recoveredValue0 |
    recoveredValue0 := (self) pageExit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009398; bytecode file offset 0x908be4"
!SGStateInfoDialog methodsFor: 'recovered'!
pageAction2Method
    | recoveredValue0 |
    recoveredValue0 := (self) pageStatic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004399c; bytecode file offset 0x9451f8"
!SGStateInfoDialog methodsFor: 'recovered'!
pageExit
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageExit').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004521c; bytecode file offset 0x9451f8"
!SGStateInfoDialog methodsFor: 'recovered'!
pageStatic
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageStatic').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200452ec; bytecode file offset 0x9451f8"
!SGStateInfoDialog methodsFor: 'recovered'!
hierarchyState
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('hierarchyState').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200474ec; bytecode file offset 0x9451f8"
!SGStateInfoDialog methodsFor: 'recovered'!
pageEntry
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageEntry').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047f1c; bytecode file offset 0x9451f8"
!SGStateInfoDialog methodsFor: 'recovered'!
statePrio
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('mainBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004862c; bytecode file offset 0x9451f8"
!SGStateInfoDialog methodsFor: 'recovered'!
startState
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('startState').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a1590; bytecode file offset 0x99dfb8"
!SGStateInfoDialog methodsFor: 'recovered'!
updateEditAction1Button
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editAction1Button.
    recoveredValue1 := (self) enableEditAction1Button.
    (recoveredValue0) sensitive: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bae20; bytecode file offset 0x9b76dc"
!SGStateInfoDialog methodsFor: 'recovered'!
checkAction2Method: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := methodManager.
    recoveredValue2 := (recoveredValue1) methodsOnlyInSpec: (true).
    recoveredValue3 := (self) checkArgumentsForMethod: (recoveredValue0) triggerMethods: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c76b4; bytecode file offset 0x9c3fa0"
!SGStateInfoDialog methodsFor: 'recovered'!
allStateInfos: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allStateInfos := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d61f8; bytecode file offset 0x9d3134"
!SGStateInfoDialog methodsFor: 'recovered'!
updateAction1
    super updateAction1.
    (self) updateEditAction1Button.
    ^self
! !

"ASDBase.ic method 0x200ec914; bytecode file offset 0x9e91d4"
!SGStateInfoDialog methodsFor: 'recovered'!
stateActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_2008403225').
    (self) setModified.
    ^self
! !

"ASDBase.ic method 0x2013936c; bytecode file offset 0xa35c48"
!SGStateInfoDialog methodsFor: 'recovered'!
editAction1: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableEditAction1Button.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) queryShowDiagramFor: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020872c; bytecode file offset 0xb05050"
!SGStateInfoDialog methodsFor: 'recovered'!
action1Single: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('hw') == ('call_2008403225').
    (self) setModified.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (self) isASDL: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue1) sensitive: (recoveredValue4).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) editable: (recoveredValue7).
    (self) updateEditAction1Button.
    ^self
! !

"ASDBase.ic method 0x20211ec4; bytecode file offset 0xb0e78c"
!SGStateInfoDialog methodsFor: 'recovered'!
enableEditAction1Button
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isASDL: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20217c28; bytecode file offset 0xb144f8"
!SGStateInfoDialog methodsFor: 'recovered'!
highlightError
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := errorObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := errorObject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := stateMachineInfo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) action1MethodName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notebook.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) pageEntry.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) selectItem: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            super highlightError.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022729c; bytecode file offset 0xb23b88"
!SGStateInfoDialog methodsFor: 'recovered'!
checkAction1Method: recoveredArg1
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
            recoveredStack2 := graphicObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAllTriggerEntryTransitions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := methodManager.
    recoveredBlock8Value2 := (recoveredBlock8Value0) action1Method: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [:block280dc728Arg1 | 
    | block280dc728Value0 block280dc728Value1 |
    block280dc728Value0 := block280dc728Arg1.
    block280dc728Value1 := (block280dc728Value0) notNil.
    block280dc728Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkArgumentsForMethod: (recoveredStack1) triggerMethods: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202272bc; bytecode file offset 0xb23b88"
!SGStateInfoDialog methodsFor: 'recovered'!
checkAction3Method: recoveredArg1
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
            recoveredStack2 := graphicObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAllTriggerExitTransitions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := methodManager.
    recoveredBlock8Value2 := (recoveredBlock8Value0) action1Method: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [:block280dc74cArg1 | 
    | block280dc74cValue0 block280dc74cValue1 |
    block280dc74cValue0 := block280dc74cArg1.
    block280dc74cValue1 := (block280dc74cValue0) notNil.
    block280dc74cValue1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkArgumentsForMethod: (recoveredStack1) triggerMethods: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a9440; bytecode file offset 0xba5d18"
!SGStateInfoDialog methodsFor: 'recovered'!
updateContents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super updateContents.
    recoveredValue0 := (self) hierarchyState.
    recoveredValue1 := graphicObject.
    recoveredValue2 := (recoveredValue1) isSGHierarchyGO.
    (recoveredValue0) set: (recoveredValue2).
    recoveredValue3 := (self) hierarchyState.
    recoveredValue4 := (self) isReadOnly.
    recoveredValue5 := (recoveredValue4) not.
    (recoveredValue3) sensitive: (recoveredValue5).
    recoveredValue6 := (self) startState.
    recoveredValue7 := graphicObject.
    recoveredValue8 := (recoveredValue7) isStartState.
    (recoveredValue6) set: (recoveredValue8).
    recoveredValue9 := (self) startState.
    recoveredValue10 := (self) isReadOnly.
    recoveredValue11 := (recoveredValue10) not.
    (recoveredValue9) sensitive: (recoveredValue11).
    modified := false.
    ^self
! !

"ASDBase.ic method 0x2034a240; bytecode file offset 0xc46b3c"
!SGStateInfoDialog methodsFor: 'recovered'!
initializeSpecialWidgets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    (self) initializePages.
    recoveredValue0 := (self) mainBox.
    recoveredValue1 := stateMachineInfo.
    recoveredValue2 := (recoveredValue1) label.
    (recoveredValue0) setString: (recoveredValue2).
    recoveredValue3 := (self) widgetAt: ('sep2').
    (recoveredValue3) unmanageChild.
    recoveredValue4 := (self) action1.
    recoveredValue5 := XmNsingleSelectionCallback.
    recoveredValue6 := (self) textPane1.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: ('action1Single:clientData:callData:') clientData: (recoveredValue6).
    recoveredValue7 := (self) action2.
    recoveredValue8 := XmNsingleSelectionCallback.
    recoveredValue9 := (self) textPane2.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('action2Single:clientData:callData:') clientData: (recoveredValue9).
    recoveredValue10 := (self) action3.
    recoveredValue11 := XmNsingleSelectionCallback.
    recoveredValue12 := (self) textPane3.
    (recoveredValue10) addCallback: (recoveredValue11) receiver: (self) selector: ('action3Single:clientData:callData:') clientData: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x204704c8; bytecode file offset 0xd6cdb4"
!SGStateInfoDialog methodsFor: 'recovered'!
store
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super store.
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
            recoveredStack0 := (recoveredStack0) startState.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStartState.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) asStartState.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStartState.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) asNormalState.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyState.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGHierarchyGO.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) normalMode.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) asHierarchyState.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) setSelectStateWithGO: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyState.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGHierarchyGO.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) normalMode.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := graphicObject.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromHierarchyState.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) setSelectStateWithGO: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cdd04; bytecode file offset 0xdca600"
!SGStateInfoDialog methodsFor: 'recovered'!
statesSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := stateMachineInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) modified.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Store '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := stateMachineInfo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := ' ?'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) yesNoCancel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := stateMachineInfo.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) store.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := allStateInfos.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 recoveredBlock101Value4 |
    recoveredBlock101Value0 := recoveredBlock101Arg1.
    recoveredBlock101Value1 := (recoveredBlock101Value0) label.
    recoveredBlock101Value2 := recoveredArg3.
    recoveredBlock101Value3 := (recoveredBlock101Value2) item.
    recoveredBlock101Value4 := (recoveredBlock101Value1) = (recoveredBlock101Value3).
    recoveredBlock101Value4
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) stateMachineInfo: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) manager.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) graphicObject: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20681fcc; bytecode file offset 0xf7e9d0"
!SGStateInfoDialog methodsFor: 'recovered'!
initializePages
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'pageEntry'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := stateMachineInfo.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) action1Label.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializePageName: (recoveredStack1) pageLabel: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal18 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal17 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Scintilla'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScintillaActive.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'textPane1'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := recoveredBlock41Value0.
    (recoveredBlock41Value1) tabSpacing: (4).
    recoveredBlock41Value2 := recoveredBlock41Value0.
    recoveredBlock41Value3 := (self) uiController.
    recoveredBlock41Value4 := (recoveredBlock41Value3) itemIsModifiable.
    (recoveredBlock41Value2) editable: (recoveredBlock41Value4).
    recoveredBlock41Value5 := XmMULTILINEEDIT.
    recoveredBlock41Value6 := (recoveredBlock41Value0) editMode: (recoveredBlock41Value5).
    recoveredBlock41Value6
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledScintillaESDLText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := ASDScintillaOptions.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'textPane1'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [:block2812958cArg1 | 
    | block2812958cValue0 block2812958cValue1 block2812958cValue2 |
    block2812958cValue0 := block2812958cArg1.
    block2812958cValue1 := XmMULTILINEEDIT.
    block2812958cValue2 := (block2812958cValue0) editMode: (block2812958cValue1).
    block2812958cValue2
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 'textPane1'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 'action1'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := [:block281295b0Arg1 | 
    | block281295b0Value0 block281295b0Value1 |
    block281295b0Value0 := block281295b0Arg1.
    block281295b0Value1 := (block281295b0Value0) width: (192).
    block281295b0Value1
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := 'action1'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := 'action1Button'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := [:block281295d4Arg1 | 
    | block281295d4Value0 block281295d4Value1 block281295d4Value2 |
    block281295d4Value0 := block281295d4Arg1.
    block281295d4Value1 := block281295d4Value0.
    (block281295d4Value1) labelString: ('Edit').
    block281295d4Value2 := (block281295d4Value0) width: (80).
    block281295d4Value2
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := 'editAction1Button'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := 'pageStatic'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := stateMachineInfo.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) action2Label.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializePageName: (recoveredStack1) pageLabel: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := 'Scintilla'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScintillaActive.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := 'textPane2'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := [:recoveredBlock241Arg1 | 
    | recoveredBlock241Value0 recoveredBlock241Value1 recoveredBlock241Value2 recoveredBlock241Value3 recoveredBlock241Value4 recoveredBlock241Value5 recoveredBlock241Value6 |
    recoveredBlock241Value0 := recoveredBlock241Arg1.
    recoveredBlock241Value1 := recoveredBlock241Value0.
    (recoveredBlock241Value1) tabSpacing: (4).
    recoveredBlock241Value2 := recoveredBlock241Value0.
    recoveredBlock241Value3 := (self) uiController.
    recoveredBlock241Value4 := (recoveredBlock241Value3) itemIsModifiable.
    (recoveredBlock241Value2) editable: (recoveredBlock241Value4).
    recoveredBlock241Value5 := XmMULTILINEEDIT.
    recoveredBlock241Value6 := (recoveredBlock241Value0) editMode: (recoveredBlock241Value5).
    recoveredBlock241Value6
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledScintillaESDLText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := ASDScintillaOptions.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredPC := 309.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := 'textPane2'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := [:block281295f8Arg1 | 
    | block281295f8Value0 block281295f8Value1 block281295f8Value2 |
    block281295f8Value0 := block281295f8Arg1.
    block281295f8Value1 := XmMULTILINEEDIT.
    block281295f8Value2 := (block281295f8Value0) editMode: (block281295f8Value1).
    block281295f8Value2
].
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := 'textPane2'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := 'action2'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := [:block2812961cArg1 | 
    | block2812961cValue0 block2812961cValue1 |
    block2812961cValue0 := block2812961cArg1.
    block2812961cValue1 := (block2812961cValue0) width: (192).
    block2812961cValue1
].
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := 'action2'.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := 'action2Button'.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := [:block28129640Arg1 | 
    | block28129640Value0 block28129640Value1 block28129640Value2 |
    block28129640Value0 := block28129640Arg1.
    block28129640Value1 := block28129640Value0.
    (block28129640Value1) labelString: ('Edit').
    block28129640Value2 := (block28129640Value0) width: (80).
    block28129640Value2
].
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := 'editAction2Button'.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := 'pageExit'.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := stateMachineInfo.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := (recoveredStack2) action3Label.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializePageName: (recoveredStack1) pageLabel: (recoveredStack2).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := 'Scintilla'.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScintillaActive.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 436] ifFalse: [recoveredPC := 486].
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := 'textPane3'.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := [:recoveredBlock441Arg1 | 
    | recoveredBlock441Value0 recoveredBlock441Value1 recoveredBlock441Value2 recoveredBlock441Value3 recoveredBlock441Value4 recoveredBlock441Value5 recoveredBlock441Value6 |
    recoveredBlock441Value0 := recoveredBlock441Arg1.
    recoveredBlock441Value1 := recoveredBlock441Value0.
    (recoveredBlock441Value1) tabSpacing: (4).
    recoveredBlock441Value2 := recoveredBlock441Value0.
    recoveredBlock441Value3 := (self) uiController.
    recoveredBlock441Value4 := (recoveredBlock441Value3) itemIsModifiable.
    (recoveredBlock441Value2) editable: (recoveredBlock441Value4).
    recoveredBlock441Value5 := XmMULTILINEEDIT.
    recoveredBlock441Value6 := (recoveredBlock441Value0) editMode: (recoveredBlock441Value5).
    recoveredBlock441Value6
].
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledScintillaESDLText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := ASDScintillaOptions.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredPC := 509.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := 'textPane3'.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack2 := [:block28129664Arg1 | 
    | block28129664Value0 block28129664Value1 block28129664Value2 |
    block28129664Value0 := block28129664Arg1.
    block28129664Value1 := XmMULTILINEEDIT.
    block28129664Value2 := (block28129664Value0) editMode: (block28129664Value1).
    block28129664Value2
].
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := 'textPane3'.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := 'action3'.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack2 := [:block28129688Arg1 | 
    | block28129688Value0 block28129688Value1 |
    block28129688Value0 := block28129688Arg1.
    block28129688Value1 := (block28129688Value0) width: (192).
    block28129688Value1
].
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := 'action3'.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := 'action3Button'.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := [:block281296acArg1 | 
    | block281296acValue0 block281296acValue1 block281296acValue2 |
    block281296acValue0 := block281296acArg1.
    block281296acValue1 := block281296acValue0.
    (block281296acValue1) labelString: ('Edit').
    block281296acValue2 := (block281296acValue0) width: (80).
    block281296acValue2
].
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := 'editAction3Button'.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack1 := [:recoveredBlock606Arg1 | 
    | recoveredBlock606Value0 recoveredBlock606Value1 recoveredBlock606Value2 recoveredBlock606Value3 recoveredBlock606Value4 recoveredBlock606Value5 recoveredBlock606Value6 recoveredBlock606Value7 recoveredBlock606Value8 recoveredBlock606Value9 recoveredBlock606Value10 recoveredBlock606Value11 recoveredBlock606Value12 recoveredBlock606Value13 recoveredBlock606Value14 |
    recoveredBlock606Value0 := recoveredBlock606Arg1.
    recoveredBlock606Value1 := recoveredBlock606Value0.
    recoveredBlock606Value2 := XmATTACHFORM.
    (recoveredBlock606Value1) bottomAttachment: (recoveredBlock606Value2).
    recoveredBlock606Value3 := recoveredBlock606Value0.
    (recoveredBlock606Value3) bottomOffset: (5).
    recoveredBlock606Value4 := recoveredBlock606Value0.
    recoveredBlock606Value5 := XmATTACHWIDGET.
    (recoveredBlock606Value4) topAttachment: (recoveredBlock606Value5).
    recoveredBlock606Value6 := recoveredBlock606Value0.
    recoveredBlock606Value7 := recoveredLocal10.
    (recoveredBlock606Value6) topWidget: (recoveredBlock606Value7).
    recoveredBlock606Value8 := recoveredBlock606Value0.
    (recoveredBlock606Value8) topOffset: (10).
    recoveredBlock606Value9 := recoveredBlock606Value0.
    recoveredBlock606Value10 := XmATTACHFORM.
    (recoveredBlock606Value9) leftAttachment: (recoveredBlock606Value10).
    recoveredBlock606Value11 := recoveredBlock606Value0.
    (recoveredBlock606Value11) leftOffset: (5).
    recoveredBlock606Value12 := recoveredBlock606Value0.
    recoveredBlock606Value13 := XmATTACHFORM.
    (recoveredBlock606Value12) rightAttachment: (recoveredBlock606Value13).
    recoveredBlock606Value14 := (recoveredBlock606Value0) rightOffset: (5).
    recoveredBlock606Value14
].
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := [:recoveredBlock688Arg1 | 
    | recoveredBlock688Value0 recoveredBlock688Value1 recoveredBlock688Value2 recoveredBlock688Value3 recoveredBlock688Value4 recoveredBlock688Value5 recoveredBlock688Value6 recoveredBlock688Value7 recoveredBlock688Value8 recoveredBlock688Value9 recoveredBlock688Value10 recoveredBlock688Value11 |
    recoveredBlock688Value0 := recoveredBlock688Arg1.
    recoveredBlock688Value1 := recoveredBlock688Value0.
    recoveredBlock688Value2 := XmATTACHFORM.
    (recoveredBlock688Value1) topAttachment: (recoveredBlock688Value2).
    recoveredBlock688Value3 := recoveredBlock688Value0.
    (recoveredBlock688Value3) topOffset: (5).
    recoveredBlock688Value4 := recoveredBlock688Value0.
    recoveredBlock688Value5 := XmATTACHWIDGET.
    (recoveredBlock688Value4) rightAttachment: (recoveredBlock688Value5).
    recoveredBlock688Value6 := recoveredBlock688Value0.
    recoveredBlock688Value7 := recoveredLocal3.
    (recoveredBlock688Value6) rightWidget: (recoveredBlock688Value7).
    recoveredBlock688Value8 := recoveredBlock688Value0.
    (recoveredBlock688Value8) rightOffset: (5).
    recoveredBlock688Value9 := recoveredBlock688Value0.
    recoveredBlock688Value10 := XmATTACHFORM.
    (recoveredBlock688Value9) leftAttachment: (recoveredBlock688Value10).
    recoveredBlock688Value11 := (recoveredBlock688Value0) leftOffset: (5).
    recoveredBlock688Value11
].
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack1 := [:block281296d0Arg1 | 
    | block281296d0Value0 block281296d0Value1 block281296d0Value2 block281296d0Value3 block281296d0Value4 block281296d0Value5 block281296d0Value6 |
    block281296d0Value0 := block281296d0Arg1.
    block281296d0Value1 := block281296d0Value0.
    block281296d0Value2 := XmATTACHFORM.
    (block281296d0Value1) topAttachment: (block281296d0Value2).
    block281296d0Value3 := block281296d0Value0.
    (block281296d0Value3) topOffset: (5).
    block281296d0Value4 := block281296d0Value0.
    block281296d0Value5 := XmATTACHFORM.
    (block281296d0Value4) rightAttachment: (block281296d0Value5).
    block281296d0Value6 := (block281296d0Value0) rightOffset: (5).
    block281296d0Value6
].
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack3 := 'editAction1:clientData:callData:'.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack1 := [:recoveredBlock820Arg1 | 
    | recoveredBlock820Value0 recoveredBlock820Value1 recoveredBlock820Value2 recoveredBlock820Value3 recoveredBlock820Value4 recoveredBlock820Value5 recoveredBlock820Value6 recoveredBlock820Value7 recoveredBlock820Value8 recoveredBlock820Value9 recoveredBlock820Value10 recoveredBlock820Value11 recoveredBlock820Value12 recoveredBlock820Value13 recoveredBlock820Value14 |
    recoveredBlock820Value0 := recoveredBlock820Arg1.
    recoveredBlock820Value1 := recoveredBlock820Value0.
    recoveredBlock820Value2 := XmATTACHFORM.
    (recoveredBlock820Value1) bottomAttachment: (recoveredBlock820Value2).
    recoveredBlock820Value3 := recoveredBlock820Value0.
    (recoveredBlock820Value3) bottomOffset: (5).
    recoveredBlock820Value4 := recoveredBlock820Value0.
    recoveredBlock820Value5 := XmATTACHWIDGET.
    (recoveredBlock820Value4) topAttachment: (recoveredBlock820Value5).
    recoveredBlock820Value6 := recoveredBlock820Value0.
    recoveredBlock820Value7 := recoveredLocal7.
    (recoveredBlock820Value6) topWidget: (recoveredBlock820Value7).
    recoveredBlock820Value8 := recoveredBlock820Value0.
    (recoveredBlock820Value8) topOffset: (10).
    recoveredBlock820Value9 := recoveredBlock820Value0.
    recoveredBlock820Value10 := XmATTACHFORM.
    (recoveredBlock820Value9) leftAttachment: (recoveredBlock820Value10).
    recoveredBlock820Value11 := recoveredBlock820Value0.
    (recoveredBlock820Value11) leftOffset: (5).
    recoveredBlock820Value12 := recoveredBlock820Value0.
    recoveredBlock820Value13 := XmATTACHFORM.
    (recoveredBlock820Value12) rightAttachment: (recoveredBlock820Value13).
    recoveredBlock820Value14 := (recoveredBlock820Value0) rightOffset: (5).
    recoveredBlock820Value14
].
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack1 := [:recoveredBlock902Arg1 | 
    | recoveredBlock902Value0 recoveredBlock902Value1 recoveredBlock902Value2 recoveredBlock902Value3 recoveredBlock902Value4 recoveredBlock902Value5 recoveredBlock902Value6 recoveredBlock902Value7 recoveredBlock902Value8 recoveredBlock902Value9 recoveredBlock902Value10 recoveredBlock902Value11 |
    recoveredBlock902Value0 := recoveredBlock902Arg1.
    recoveredBlock902Value1 := recoveredBlock902Value0.
    recoveredBlock902Value2 := XmATTACHFORM.
    (recoveredBlock902Value1) topAttachment: (recoveredBlock902Value2).
    recoveredBlock902Value3 := recoveredBlock902Value0.
    (recoveredBlock902Value3) topOffset: (5).
    recoveredBlock902Value4 := recoveredBlock902Value0.
    recoveredBlock902Value5 := XmATTACHWIDGET.
    (recoveredBlock902Value4) rightAttachment: (recoveredBlock902Value5).
    recoveredBlock902Value6 := recoveredBlock902Value0.
    recoveredBlock902Value7 := recoveredLocal2.
    (recoveredBlock902Value6) rightWidget: (recoveredBlock902Value7).
    recoveredBlock902Value8 := recoveredBlock902Value0.
    (recoveredBlock902Value8) rightOffset: (5).
    recoveredBlock902Value9 := recoveredBlock902Value0.
    recoveredBlock902Value10 := XmATTACHFORM.
    (recoveredBlock902Value9) leftAttachment: (recoveredBlock902Value10).
    recoveredBlock902Value11 := (recoveredBlock902Value0) leftOffset: (5).
    recoveredBlock902Value11
].
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack1 := [:block281296f4Arg1 | 
    | block281296f4Value0 block281296f4Value1 block281296f4Value2 block281296f4Value3 block281296f4Value4 block281296f4Value5 block281296f4Value6 |
    block281296f4Value0 := block281296f4Arg1.
    block281296f4Value1 := block281296f4Value0.
    block281296f4Value2 := XmATTACHFORM.
    (block281296f4Value1) topAttachment: (block281296f4Value2).
    block281296f4Value3 := block281296f4Value0.
    (block281296f4Value3) topOffset: (5).
    block281296f4Value4 := block281296f4Value0.
    block281296f4Value5 := XmATTACHFORM.
    (block281296f4Value4) rightAttachment: (block281296f4Value5).
    block281296f4Value6 := (block281296f4Value0) rightOffset: (5).
    block281296f4Value6
].
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            recoveredStack3 := 'editAction2:clientData:callData:'.
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredStack1 := [:recoveredBlock1034Arg1 | 
    | recoveredBlock1034Value0 recoveredBlock1034Value1 recoveredBlock1034Value2 recoveredBlock1034Value3 recoveredBlock1034Value4 recoveredBlock1034Value5 recoveredBlock1034Value6 recoveredBlock1034Value7 recoveredBlock1034Value8 recoveredBlock1034Value9 recoveredBlock1034Value10 recoveredBlock1034Value11 recoveredBlock1034Value12 recoveredBlock1034Value13 recoveredBlock1034Value14 |
    recoveredBlock1034Value0 := recoveredBlock1034Arg1.
    recoveredBlock1034Value1 := recoveredBlock1034Value0.
    recoveredBlock1034Value2 := XmATTACHFORM.
    (recoveredBlock1034Value1) bottomAttachment: (recoveredBlock1034Value2).
    recoveredBlock1034Value3 := recoveredBlock1034Value0.
    (recoveredBlock1034Value3) bottomOffset: (5).
    recoveredBlock1034Value4 := recoveredBlock1034Value0.
    recoveredBlock1034Value5 := XmATTACHWIDGET.
    (recoveredBlock1034Value4) topAttachment: (recoveredBlock1034Value5).
    recoveredBlock1034Value6 := recoveredBlock1034Value0.
    recoveredBlock1034Value7 := recoveredLocal4.
    (recoveredBlock1034Value6) topWidget: (recoveredBlock1034Value7).
    recoveredBlock1034Value8 := recoveredBlock1034Value0.
    (recoveredBlock1034Value8) topOffset: (10).
    recoveredBlock1034Value9 := recoveredBlock1034Value0.
    recoveredBlock1034Value10 := XmATTACHFORM.
    (recoveredBlock1034Value9) leftAttachment: (recoveredBlock1034Value10).
    recoveredBlock1034Value11 := recoveredBlock1034Value0.
    (recoveredBlock1034Value11) leftOffset: (5).
    recoveredBlock1034Value12 := recoveredBlock1034Value0.
    recoveredBlock1034Value13 := XmATTACHFORM.
    (recoveredBlock1034Value12) rightAttachment: (recoveredBlock1034Value13).
    recoveredBlock1034Value14 := (recoveredBlock1034Value0) rightOffset: (5).
    recoveredBlock1034Value14
].
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack1 := [:recoveredBlock1116Arg1 | 
    | recoveredBlock1116Value0 recoveredBlock1116Value1 recoveredBlock1116Value2 recoveredBlock1116Value3 recoveredBlock1116Value4 recoveredBlock1116Value5 recoveredBlock1116Value6 recoveredBlock1116Value7 recoveredBlock1116Value8 recoveredBlock1116Value9 recoveredBlock1116Value10 recoveredBlock1116Value11 |
    recoveredBlock1116Value0 := recoveredBlock1116Arg1.
    recoveredBlock1116Value1 := recoveredBlock1116Value0.
    recoveredBlock1116Value2 := XmATTACHFORM.
    (recoveredBlock1116Value1) topAttachment: (recoveredBlock1116Value2).
    recoveredBlock1116Value3 := recoveredBlock1116Value0.
    (recoveredBlock1116Value3) topOffset: (5).
    recoveredBlock1116Value4 := recoveredBlock1116Value0.
    recoveredBlock1116Value5 := XmATTACHWIDGET.
    (recoveredBlock1116Value4) rightAttachment: (recoveredBlock1116Value5).
    recoveredBlock1116Value6 := recoveredBlock1116Value0.
    recoveredBlock1116Value7 := recoveredLocal1.
    (recoveredBlock1116Value6) rightWidget: (recoveredBlock1116Value7).
    recoveredBlock1116Value8 := recoveredBlock1116Value0.
    (recoveredBlock1116Value8) rightOffset: (5).
    recoveredBlock1116Value9 := recoveredBlock1116Value0.
    recoveredBlock1116Value10 := XmATTACHFORM.
    (recoveredBlock1116Value9) leftAttachment: (recoveredBlock1116Value10).
    recoveredBlock1116Value11 := (recoveredBlock1116Value0) leftOffset: (5).
    recoveredBlock1116Value11
].
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1181.
        ].
        recoveredStep = 1181 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredStack1 := [:block28129718Arg1 | 
    | block28129718Value0 block28129718Value1 block28129718Value2 block28129718Value3 block28129718Value4 block28129718Value5 block28129718Value6 |
    block28129718Value0 := block28129718Arg1.
    block28129718Value1 := block28129718Value0.
    block28129718Value2 := XmATTACHFORM.
    (block28129718Value1) topAttachment: (block28129718Value2).
    block28129718Value3 := block28129718Value0.
    (block28129718Value3) topOffset: (5).
    block28129718Value4 := block28129718Value0.
    block28129718Value5 := XmATTACHFORM.
    (block28129718Value4) rightAttachment: (block28129718Value5).
    block28129718Value6 := (block28129718Value0) rightOffset: (5).
    block28129718Value6
].
            recoveredPC := 1188.
        ].
        recoveredStep = 1188 ifTrue: [
            recoveredPC := 1224.
        ].
        recoveredStep = 1224 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack3 := 'editAction3:clientData:callData:'.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 1252.
        ].
        recoveredStep = 1252 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack3 := 'widgetKeyEventHandler:clientData:event:'.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack4 := recoveredLocal12.
            recoveredPC := 1259.
        ].
        recoveredStep = 1259 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1266.
        ].
        recoveredStep = 1266 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1271.
        ].
        recoveredStep = 1271 ifTrue: [
            recoveredStack3 := 'widgetKeyEventHandler:clientData:event:'.
            recoveredPC := 1274.
        ].
        recoveredStep = 1274 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1281.
        ].
        recoveredStep = 1281 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 1288.
        ].
        recoveredStep = 1288 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1289.
        ].
        recoveredStep = 1289 ifTrue: [
            recoveredStack3 := 'widgetKeyEventHandler:clientData:event:'.
            recoveredPC := 1292.
        ].
        recoveredStep = 1292 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 1295.
        ].
        recoveredStep = 1295 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1299.
        ].
        recoveredStep = 1299 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1302.
        ].
        recoveredStep = 1302 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1307.
        ].
        recoveredStep = 1307 ifTrue: [
            recoveredStack3 := 'textValue:clientData:callData:'.
            recoveredPC := 1310.
        ].
        recoveredStep = 1310 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1311.
        ].
        recoveredStep = 1311 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1315.
        ].
        recoveredStep = 1315 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1322.
        ].
        recoveredStep = 1322 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1323.
        ].
        recoveredStep = 1323 ifTrue: [
            recoveredStack3 := 'textValue:clientData:callData:'.
            recoveredPC := 1326.
        ].
        recoveredStep = 1326 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1327.
        ].
        recoveredStep = 1327 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1331.
        ].
        recoveredStep = 1331 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1334.
        ].
        recoveredStep = 1334 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1339.
        ].
        recoveredStep = 1339 ifTrue: [
            recoveredStack3 := 'textValue:clientData:callData:'.
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1343.
        ].
        recoveredStep = 1343 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1347.
        ].
        recoveredStep = 1347 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1348.
        ].
        recoveredStep = 1348 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2069d3a4; bytecode file offset 0xf99e38"
!SGStateInfoDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal14 := recoveredStack1.
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
    recoveredBlock25Value11 := recoveredLocal14.
    recoveredBlock25Value12 := (337) * (recoveredBlock25Value11).
    recoveredBlock25Value13 := (recoveredBlock25Value12) rounded.
    (recoveredBlock25Value10) height: (recoveredBlock25Value13).
    recoveredBlock25Value14 := recoveredLocal15.
    recoveredBlock25Value15 := (586) * (recoveredBlock25Value14).
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
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal13.
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
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'mainWin'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal12.
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal11.
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
    recoveredBlock145Value2 := recoveredLocal15.
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
    recoveredBlock145Value10 := recoveredLocal14.
    recoveredBlock145Value11 := (50) * (recoveredBlock145Value10).
    recoveredBlock145Value12 := (recoveredBlock145Value11) rounded.
    (recoveredBlock145Value9) y: (recoveredBlock145Value12).
    recoveredBlock145Value13 := recoveredBlock145Value0.
    recoveredBlock145Value14 := recoveredLocal14.
    recoveredBlock145Value15 := (30) * (recoveredBlock145Value14).
    recoveredBlock145Value16 := (recoveredBlock145Value15) rounded.
    (recoveredBlock145Value13) height: (recoveredBlock145Value16).
    recoveredBlock145Value17 := recoveredBlock145Value0.
    (recoveredBlock145Value17) marginBottom: (10).
    recoveredBlock145Value18 := recoveredLocal15.
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal11.
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
    recoveredBlock247Value2 := recoveredLocal15.
    recoveredBlock247Value3 := (200) * (recoveredBlock247Value2).
    recoveredBlock247Value4 := (recoveredBlock247Value3) rounded.
    (recoveredBlock247Value1) x: (recoveredBlock247Value4).
    recoveredBlock247Value5 := recoveredBlock247Value0.
    recoveredBlock247Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock247Value5) alignment: (recoveredBlock247Value6).
    recoveredBlock247Value7 := recoveredBlock247Value0.
    (recoveredBlock247Value7) labelString: ('Color').
    recoveredBlock247Value8 := recoveredBlock247Value0.
    recoveredBlock247Value9 := recoveredLocal14.
    recoveredBlock247Value10 := (8) * (recoveredBlock247Value9).
    recoveredBlock247Value11 := (recoveredBlock247Value10) rounded.
    (recoveredBlock247Value8) y: (recoveredBlock247Value11).
    recoveredBlock247Value12 := recoveredBlock247Value0.
    recoveredBlock247Value13 := recoveredLocal14.
    recoveredBlock247Value14 := (20) * (recoveredBlock247Value13).
    recoveredBlock247Value15 := (recoveredBlock247Value14) rounded.
    (recoveredBlock247Value12) height: (recoveredBlock247Value15).
    recoveredBlock247Value16 := recoveredBlock247Value0.
    recoveredBlock247Value17 := recoveredLocal15.
    recoveredBlock247Value18 := (48) * (recoveredBlock247Value17).
    recoveredBlock247Value19 := (recoveredBlock247Value18) rounded.
    (recoveredBlock247Value16) width: (recoveredBlock247Value19).
    recoveredBlock247Value20 := recoveredBlock247Value0.
    recoveredBlock247Value21 := (self) defaultLabelBlue.
    (recoveredBlock247Value20) foregroundColor: (recoveredBlock247Value21).
    recoveredBlock247Value0
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := 'colorLab'.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := 'startState'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack3 := [:recoveredBlock340Arg1 | 
    | recoveredBlock340Value0 recoveredBlock340Value1 recoveredBlock340Value2 recoveredBlock340Value3 recoveredBlock340Value4 recoveredBlock340Value5 recoveredBlock340Value6 recoveredBlock340Value7 recoveredBlock340Value8 recoveredBlock340Value9 recoveredBlock340Value10 recoveredBlock340Value11 |
    recoveredBlock340Value0 := recoveredBlock340Arg1.
    recoveredBlock340Value1 := recoveredBlock340Value0.
    recoveredBlock340Value2 := recoveredLocal14.
    recoveredBlock340Value3 := (8) * (recoveredBlock340Value2).
    recoveredBlock340Value4 := (recoveredBlock340Value3) rounded.
    (recoveredBlock340Value1) y: (recoveredBlock340Value4).
    recoveredBlock340Value5 := recoveredBlock340Value0.
    recoveredBlock340Value6 := recoveredLocal15.
    recoveredBlock340Value7 := (368) * (recoveredBlock340Value6).
    recoveredBlock340Value8 := (recoveredBlock340Value7) rounded.
    (recoveredBlock340Value5) x: (recoveredBlock340Value8).
    recoveredBlock340Value9 := recoveredBlock340Value0.
    (recoveredBlock340Value9) labelString: ('Start State').
    recoveredBlock340Value10 := recoveredBlock340Value0.
    recoveredBlock340Value11 := (self) defaultLabelBlue.
    (recoveredBlock340Value10) foregroundColor: (recoveredBlock340Value11).
    recoveredBlock340Value0
].
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := 'startState'.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := [:recoveredBlock404Arg1 | 
    | recoveredBlock404Value0 recoveredBlock404Value1 recoveredBlock404Value2 recoveredBlock404Value3 recoveredBlock404Value4 recoveredBlock404Value5 recoveredBlock404Value6 recoveredBlock404Value7 recoveredBlock404Value8 recoveredBlock404Value9 recoveredBlock404Value10 recoveredBlock404Value11 recoveredBlock404Value12 recoveredBlock404Value13 recoveredBlock404Value14 recoveredBlock404Value15 recoveredBlock404Value16 recoveredBlock404Value17 recoveredBlock404Value18 recoveredBlock404Value19 recoveredBlock404Value20 recoveredBlock404Value21 |
    recoveredBlock404Value0 := recoveredBlock404Arg1.
    recoveredBlock404Value1 := recoveredBlock404Value0.
    recoveredBlock404Value2 := recoveredLocal15.
    recoveredBlock404Value3 := (371) * (recoveredBlock404Value2).
    recoveredBlock404Value4 := (recoveredBlock404Value3) rounded.
    (recoveredBlock404Value1) x: (recoveredBlock404Value4).
    recoveredBlock404Value5 := recoveredBlock404Value0.
    (recoveredBlock404Value5) marginRight: (10).
    recoveredBlock404Value6 := recoveredBlock404Value0.
    (recoveredBlock404Value6) labelString: ('&OK').
    recoveredBlock404Value7 := recoveredBlock404Value0.
    (recoveredBlock404Value7) marginWidth: (0).
    recoveredBlock404Value8 := recoveredBlock404Value0.
    (recoveredBlock404Value8) marginHeight: (0).
    recoveredBlock404Value9 := recoveredBlock404Value0.
    recoveredBlock404Value10 := recoveredLocal14.
    recoveredBlock404Value11 := (10) * (recoveredBlock404Value10).
    recoveredBlock404Value12 := (recoveredBlock404Value11) rounded.
    (recoveredBlock404Value9) y: (recoveredBlock404Value12).
    recoveredBlock404Value13 := recoveredBlock404Value0.
    recoveredBlock404Value14 := recoveredLocal14.
    recoveredBlock404Value15 := (30) * (recoveredBlock404Value14).
    recoveredBlock404Value16 := (recoveredBlock404Value15) rounded.
    (recoveredBlock404Value13) height: (recoveredBlock404Value16).
    recoveredBlock404Value17 := recoveredBlock404Value0.
    (recoveredBlock404Value17) marginBottom: (10).
    recoveredBlock404Value18 := recoveredLocal15.
    recoveredBlock404Value19 := (75) * (recoveredBlock404Value18).
    recoveredBlock404Value20 := (recoveredBlock404Value19) rounded.
    recoveredBlock404Value21 := (recoveredBlock404Value0) width: (recoveredBlock404Value20).
    recoveredBlock404Value21
].
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack2 := 'sep2'.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack3 := [:recoveredBlock505Arg1 | 
    | recoveredBlock505Value0 recoveredBlock505Value1 recoveredBlock505Value2 recoveredBlock505Value3 recoveredBlock505Value4 recoveredBlock505Value5 recoveredBlock505Value6 recoveredBlock505Value7 recoveredBlock505Value8 recoveredBlock505Value9 recoveredBlock505Value10 recoveredBlock505Value11 recoveredBlock505Value12 recoveredBlock505Value13 recoveredBlock505Value14 recoveredBlock505Value15 recoveredBlock505Value16 recoveredBlock505Value17 recoveredBlock505Value18 recoveredBlock505Value19 recoveredBlock505Value20 |
    recoveredBlock505Value0 := recoveredBlock505Arg1.
    recoveredBlock505Value1 := recoveredBlock505Value0.
    recoveredBlock505Value2 := recoveredLocal15.
    recoveredBlock505Value3 := (364) * (recoveredBlock505Value2).
    recoveredBlock505Value4 := (recoveredBlock505Value3) rounded.
    (recoveredBlock505Value1) x: (recoveredBlock505Value4).
    recoveredBlock505Value5 := recoveredBlock505Value0.
    recoveredBlock505Value6 := XmSINGLELINE.
    (recoveredBlock505Value5) separatorType: (recoveredBlock505Value6).
    recoveredBlock505Value7 := recoveredBlock505Value0.
    recoveredBlock505Value8 := XmVERTICAL.
    (recoveredBlock505Value7) orientation: (recoveredBlock505Value8).
    recoveredBlock505Value9 := recoveredBlock505Value0.
    recoveredBlock505Value10 := recoveredLocal14.
    recoveredBlock505Value11 := (5) * (recoveredBlock505Value10).
    recoveredBlock505Value12 := (recoveredBlock505Value11) rounded.
    (recoveredBlock505Value9) y: (recoveredBlock505Value12).
    recoveredBlock505Value13 := recoveredBlock505Value0.
    recoveredBlock505Value14 := recoveredLocal14.
    recoveredBlock505Value15 := (370) * (recoveredBlock505Value14).
    recoveredBlock505Value16 := (recoveredBlock505Value15) rounded.
    (recoveredBlock505Value13) height: (recoveredBlock505Value16).
    recoveredBlock505Value17 := recoveredLocal15.
    recoveredBlock505Value18 := (1) * (recoveredBlock505Value17).
    recoveredBlock505Value19 := (recoveredBlock505Value18) rounded.
    recoveredBlock505Value20 := (recoveredBlock505Value0) width: (recoveredBlock505Value19).
    recoveredBlock505Value20
].
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack2 := 'sep2'.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack2 := 'hierarchyState'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack3 := [:recoveredBlock596Arg1 | 
    | recoveredBlock596Value0 recoveredBlock596Value1 recoveredBlock596Value2 recoveredBlock596Value3 recoveredBlock596Value4 recoveredBlock596Value5 recoveredBlock596Value6 recoveredBlock596Value7 recoveredBlock596Value8 recoveredBlock596Value9 recoveredBlock596Value10 recoveredBlock596Value11 |
    recoveredBlock596Value0 := recoveredBlock596Arg1.
    recoveredBlock596Value1 := recoveredBlock596Value0.
    recoveredBlock596Value2 := recoveredLocal14.
    recoveredBlock596Value3 := (28) * (recoveredBlock596Value2).
    recoveredBlock596Value4 := (recoveredBlock596Value3) rounded.
    (recoveredBlock596Value1) y: (recoveredBlock596Value4).
    recoveredBlock596Value5 := recoveredBlock596Value0.
    recoveredBlock596Value6 := recoveredLocal15.
    recoveredBlock596Value7 := (362) * (recoveredBlock596Value6).
    recoveredBlock596Value8 := (recoveredBlock596Value7) rounded.
    (recoveredBlock596Value5) x: (recoveredBlock596Value8).
    recoveredBlock596Value9 := recoveredBlock596Value0.
    (recoveredBlock596Value9) labelString: ('Hierarchy State').
    recoveredBlock596Value10 := recoveredBlock596Value0.
    recoveredBlock596Value11 := (self) defaultLabelBlue.
    (recoveredBlock596Value10) foregroundColor: (recoveredBlock596Value11).
    recoveredBlock596Value0
].
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack2 := 'hierarchyState'.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := 'notebook'.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack3 := [:block2812d588Arg1 | 
    | block2812d588Value0 |
    block2812d588Value0 := block2812d588Arg1.
    block2812d588Value0
].
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasTabStrip: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack2 := 'notebook'.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := 'lab'.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack3 := [:recoveredBlock702Arg1 | 
    | recoveredBlock702Value0 recoveredBlock702Value1 recoveredBlock702Value2 recoveredBlock702Value3 recoveredBlock702Value4 recoveredBlock702Value5 recoveredBlock702Value6 recoveredBlock702Value7 recoveredBlock702Value8 recoveredBlock702Value9 recoveredBlock702Value10 recoveredBlock702Value11 recoveredBlock702Value12 recoveredBlock702Value13 recoveredBlock702Value14 recoveredBlock702Value15 recoveredBlock702Value16 recoveredBlock702Value17 recoveredBlock702Value18 recoveredBlock702Value19 recoveredBlock702Value20 recoveredBlock702Value21 |
    recoveredBlock702Value0 := recoveredBlock702Arg1.
    recoveredBlock702Value1 := recoveredBlock702Value0.
    recoveredBlock702Value2 := recoveredLocal15.
    recoveredBlock702Value3 := (8) * (recoveredBlock702Value2).
    recoveredBlock702Value4 := (recoveredBlock702Value3) rounded.
    (recoveredBlock702Value1) x: (recoveredBlock702Value4).
    recoveredBlock702Value5 := recoveredBlock702Value0.
    recoveredBlock702Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock702Value5) alignment: (recoveredBlock702Value6).
    recoveredBlock702Value7 := recoveredBlock702Value0.
    (recoveredBlock702Value7) labelString: ('State').
    recoveredBlock702Value8 := recoveredBlock702Value0.
    recoveredBlock702Value9 := recoveredLocal14.
    recoveredBlock702Value10 := (8) * (recoveredBlock702Value9).
    recoveredBlock702Value11 := (recoveredBlock702Value10) rounded.
    (recoveredBlock702Value8) y: (recoveredBlock702Value11).
    recoveredBlock702Value12 := recoveredBlock702Value0.
    recoveredBlock702Value13 := recoveredLocal14.
    recoveredBlock702Value14 := (20) * (recoveredBlock702Value13).
    recoveredBlock702Value15 := (recoveredBlock702Value14) rounded.
    (recoveredBlock702Value12) height: (recoveredBlock702Value15).
    recoveredBlock702Value16 := recoveredBlock702Value0.
    recoveredBlock702Value17 := recoveredLocal15.
    recoveredBlock702Value18 := (88) * (recoveredBlock702Value17).
    recoveredBlock702Value19 := (recoveredBlock702Value18) rounded.
    (recoveredBlock702Value16) width: (recoveredBlock702Value19).
    recoveredBlock702Value20 := recoveredBlock702Value0.
    recoveredBlock702Value21 := (self) defaultLabelBlue.
    (recoveredBlock702Value20) foregroundColor: (recoveredBlock702Value21).
    recoveredBlock702Value0
].
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack2 := 'lab'.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack2 := 'mainBox'.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack3 := [:recoveredBlock798Arg1 | 
    | recoveredBlock798Stack0 recoveredBlock798Stack1 recoveredBlock798Stack2 recoveredBlock798Stack3 recoveredBlock798Stack4 recoveredBlock798Stack5 recoveredBlock798PC recoveredBlock798Step recoveredBlock798Done recoveredBlock798Result |
    recoveredBlock798Stack0 := self.
    recoveredBlock798PC := 804.
    recoveredBlock798Done := false.
    [recoveredBlock798Done not] whileTrue: [
        recoveredBlock798Step := recoveredBlock798PC.
        recoveredBlock798Step = 804 ifTrue: [
            recoveredBlock798Stack1 := recoveredBlock798Arg1.
            recoveredBlock798PC := 805.
        ].
        recoveredBlock798Step = 805 ifTrue: [
            recoveredBlock798Stack2 := recoveredBlock798Stack1.
            recoveredBlock798PC := 806.
        ].
        recoveredBlock798Step = 806 ifTrue: [
            recoveredBlock798Stack3 := 8.
            recoveredBlock798PC := 808.
        ].
        recoveredBlock798Step = 808 ifTrue: [
            recoveredBlock798Stack4 := recoveredLocal15.
            recoveredBlock798PC := 811.
        ].
        recoveredBlock798Step = 811 ifTrue: [
            recoveredBlock798Stack3 := (recoveredBlock798Stack3) * (recoveredBlock798Stack4).
            recoveredBlock798PC := 812.
        ].
        recoveredBlock798Step = 812 ifTrue: [
            recoveredBlock798Stack3 := (recoveredBlock798Stack3) rounded.
            recoveredBlock798PC := 814.
        ].
        recoveredBlock798Step = 814 ifTrue: [
            (recoveredBlock798Stack2) x: (recoveredBlock798Stack3).
            recoveredBlock798Stack2 := recoveredBlock798Stack1.
            recoveredBlock798PC := 817.
        ].
        recoveredBlock798Step = 817 ifTrue: [
            recoveredBlock798Stack3 := true.
            recoveredBlock798PC := 818.
        ].
        recoveredBlock798Step = 818 ifTrue: [
            (recoveredBlock798Stack2) editable: (recoveredBlock798Stack3).
            recoveredBlock798Stack2 := recoveredBlock798Stack1.
            recoveredBlock798PC := 823.
        ].
        recoveredBlock798Step = 823 ifTrue: [
            recoveredBlock798Stack3 := 32.
            recoveredBlock798PC := 825.
        ].
        recoveredBlock798Step = 825 ifTrue: [
            recoveredBlock798Stack4 := recoveredLocal14.
            recoveredBlock798PC := 828.
        ].
        recoveredBlock798Step = 828 ifTrue: [
            recoveredBlock798Stack3 := (recoveredBlock798Stack3) * (recoveredBlock798Stack4).
            recoveredBlock798PC := 829.
        ].
        recoveredBlock798Step = 829 ifTrue: [
            recoveredBlock798Stack3 := (recoveredBlock798Stack3) rounded.
            recoveredBlock798PC := 831.
        ].
        recoveredBlock798Step = 831 ifTrue: [
            (recoveredBlock798Stack2) y: (recoveredBlock798Stack3).
            recoveredBlock798Stack2 := recoveredBlock798Stack1.
            recoveredBlock798PC := 834.
        ].
        recoveredBlock798Step = 834 ifTrue: [
            recoveredBlock798Stack3 := 24.
            recoveredBlock798PC := 836.
        ].
        recoveredBlock798Step = 836 ifTrue: [
            recoveredBlock798Stack4 := recoveredLocal14.
            recoveredBlock798PC := 839.
        ].
        recoveredBlock798Step = 839 ifTrue: [
            recoveredBlock798Stack3 := (recoveredBlock798Stack3) * (recoveredBlock798Stack4).
            recoveredBlock798PC := 840.
        ].
        recoveredBlock798Step = 840 ifTrue: [
            recoveredBlock798Stack3 := (recoveredBlock798Stack3) rounded.
            recoveredBlock798PC := 842.
        ].
        recoveredBlock798Step = 842 ifTrue: [
            (recoveredBlock798Stack2) height: (recoveredBlock798Stack3).
            recoveredBlock798Stack2 := recoveredBlock798Stack1.
            recoveredBlock798PC := 845.
        ].
        recoveredBlock798Step = 845 ifTrue: [
            recoveredBlock798Stack3 := allStateInfos.
            recoveredBlock798PC := 847.
        ].
        recoveredBlock798Step = 847 ifTrue: [
            recoveredBlock798Stack4 := [:block2812d5acArg1 | 
    | block2812d5acValue0 block2812d5acValue1 |
    block2812d5acValue0 := block2812d5acArg1.
    block2812d5acValue1 := (block2812d5acValue0) label.
    block2812d5acValue1
].
            recoveredBlock798PC := 850.
        ].
        recoveredBlock798Step = 850 ifTrue: [
            recoveredBlock798PC := 860.
        ].
        recoveredBlock798Step = 860 ifTrue: [
            recoveredBlock798Stack3 := (recoveredBlock798Stack3) collect: (recoveredBlock798Stack4).
            recoveredBlock798PC := 865.
        ].
        recoveredBlock798Step = 865 ifTrue: [
            recoveredBlock798Stack4 := [:block2812d5d0Arg1 | 
    | block2812d5d0Stack0 block2812d5d0Stack1 block2812d5d0Stack2 block2812d5d0PC block2812d5d0Step block2812d5d0Done block2812d5d0Result |
    block2812d5d0Stack0 := self.
    block2812d5d0PC := 4.
    block2812d5d0Done := false.
    [block2812d5d0Done not] whileTrue: [
        block2812d5d0Step := block2812d5d0PC.
        block2812d5d0Step = 4 ifTrue: [
            block2812d5d0Stack1 := block2812d5d0Arg1.
            block2812d5d0PC := 5.
        ].
        block2812d5d0Step = 5 ifTrue: [
            block2812d5d0Stack1 := (block2812d5d0Stack1) isString.
            block2812d5d0PC := 9.
        ].
        block2812d5d0Step = 9 ifTrue: [
            (block2812d5d0Stack1) ifTrue: [block2812d5d0PC := 12] ifFalse: [block2812d5d0PC := 16].
        ].
        block2812d5d0Step = 12 ifTrue: [
            block2812d5d0Stack1 := block2812d5d0Arg1.
            block2812d5d0PC := 13.
        ].
        block2812d5d0Step = 13 ifTrue: [
            block2812d5d0PC := 21.
        ].
        block2812d5d0Step = 16 ifTrue: [
            block2812d5d0Stack1 := block2812d5d0Arg1.
            block2812d5d0PC := 17.
        ].
        block2812d5d0Step = 17 ifTrue: [
            block2812d5d0Stack1 := (block2812d5d0Stack1) printString.
            block2812d5d0PC := 21.
        ].
        block2812d5d0Step = 21 ifTrue: [
            block2812d5d0Result := block2812d5d0Stack1.
            block2812d5d0Done := true.
        ].
    ].
    block2812d5d0Result
].
            recoveredBlock798PC := 868.
        ].
        recoveredBlock798Step = 868 ifTrue: [
            recoveredBlock798PC := 890.
        ].
        recoveredBlock798Step = 890 ifTrue: [
            recoveredBlock798Stack3 := (recoveredBlock798Stack3) collect: (recoveredBlock798Stack4).
            recoveredBlock798PC := 895.
        ].
        recoveredBlock798Step = 895 ifTrue: [
            (recoveredBlock798Stack2) items: (recoveredBlock798Stack3).
            recoveredBlock798PC := 899.
        ].
        recoveredBlock798Step = 899 ifTrue: [
            recoveredBlock798Stack2 := 176.
            recoveredBlock798PC := 902.
        ].
        recoveredBlock798Step = 902 ifTrue: [
            recoveredBlock798Stack3 := recoveredLocal15.
            recoveredBlock798PC := 905.
        ].
        recoveredBlock798Step = 905 ifTrue: [
            recoveredBlock798Stack2 := (recoveredBlock798Stack2) * (recoveredBlock798Stack3).
            recoveredBlock798PC := 906.
        ].
        recoveredBlock798Step = 906 ifTrue: [
            recoveredBlock798Stack2 := (recoveredBlock798Stack2) rounded.
            recoveredBlock798PC := 908.
        ].
        recoveredBlock798Step = 908 ifTrue: [
            recoveredBlock798Stack1 := (recoveredBlock798Stack1) width: (recoveredBlock798Stack2).
            recoveredBlock798PC := 910.
        ].
        recoveredBlock798Step = 910 ifTrue: [
            recoveredBlock798Result := recoveredBlock798Stack1.
            recoveredBlock798Done := true.
        ].
    ].
    recoveredBlock798Result
].
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack2 := 'mainBox'.
            recoveredPC := 926.
        ].
        recoveredStep = 926 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 934.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack2 := 'aRBColorSelectionWidget1'.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack3 := [:recoveredBlock938Arg1 | 
    | recoveredBlock938Value0 recoveredBlock938Value1 recoveredBlock938Value2 recoveredBlock938Value3 recoveredBlock938Value4 recoveredBlock938Value5 recoveredBlock938Value6 recoveredBlock938Value7 recoveredBlock938Value8 recoveredBlock938Value9 recoveredBlock938Value10 recoveredBlock938Value11 recoveredBlock938Value12 recoveredBlock938Value13 recoveredBlock938Value14 recoveredBlock938Value15 recoveredBlock938Value16 |
    recoveredBlock938Value0 := recoveredBlock938Arg1.
    recoveredBlock938Value1 := recoveredBlock938Value0.
    recoveredBlock938Value2 := recoveredLocal14.
    recoveredBlock938Value3 := (31) * (recoveredBlock938Value2).
    recoveredBlock938Value4 := (recoveredBlock938Value3) rounded.
    (recoveredBlock938Value1) y: (recoveredBlock938Value4).
    recoveredBlock938Value5 := recoveredBlock938Value0.
    recoveredBlock938Value6 := recoveredLocal15.
    recoveredBlock938Value7 := (201) * (recoveredBlock938Value6).
    recoveredBlock938Value8 := (recoveredBlock938Value7) rounded.
    (recoveredBlock938Value5) x: (recoveredBlock938Value8).
    recoveredBlock938Value9 := recoveredBlock938Value0.
    recoveredBlock938Value10 := recoveredLocal14.
    recoveredBlock938Value11 := (22) * (recoveredBlock938Value10).
    recoveredBlock938Value12 := (recoveredBlock938Value11) rounded.
    (recoveredBlock938Value9) height: (recoveredBlock938Value12).
    recoveredBlock938Value13 := recoveredLocal15.
    recoveredBlock938Value14 := (142) * (recoveredBlock938Value13).
    recoveredBlock938Value15 := (recoveredBlock938Value14) rounded.
    recoveredBlock938Value16 := (recoveredBlock938Value0) width: (recoveredBlock938Value15).
    recoveredBlock938Value16
].
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBColorSelectionWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1003.
        ].
        recoveredStep = 1003 ifTrue: [
            recoveredStack2 := 'aRBColorSelectionWidget1'.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack2 := [:recoveredBlock1014Arg1 | 
    | recoveredBlock1014Value0 recoveredBlock1014Value1 recoveredBlock1014Value2 |
    recoveredBlock1014Value0 := recoveredBlock1014Arg1.
    recoveredBlock1014Value1 := recoveredLocal11.
    recoveredBlock1014Value2 := (recoveredBlock1014Value0) workWindow: (recoveredBlock1014Value1).
    recoveredBlock1014Value2
].
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack2 := [:recoveredBlock1038Arg1 | 
    | recoveredBlock1038Value0 recoveredBlock1038Value1 recoveredBlock1038Value2 recoveredBlock1038Value3 recoveredBlock1038Value4 recoveredBlock1038Value5 recoveredBlock1038Value6 recoveredBlock1038Value7 recoveredBlock1038Value8 recoveredBlock1038Value9 recoveredBlock1038Value10 recoveredBlock1038Value11 recoveredBlock1038Value12 |
    recoveredBlock1038Value0 := recoveredBlock1038Arg1.
    recoveredBlock1038Value1 := recoveredBlock1038Value0.
    recoveredBlock1038Value2 := XmATTACHWIDGET.
    (recoveredBlock1038Value1) topAttachment: (recoveredBlock1038Value2).
    recoveredBlock1038Value3 := recoveredBlock1038Value0.
    recoveredBlock1038Value4 := recoveredLocal7.
    (recoveredBlock1038Value3) topWidget: (recoveredBlock1038Value4).
    recoveredBlock1038Value5 := recoveredBlock1038Value0.
    (recoveredBlock1038Value5) topOffset: (10).
    recoveredBlock1038Value6 := recoveredBlock1038Value0.
    recoveredBlock1038Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1038Value6) leftAttachment: (recoveredBlock1038Value7).
    recoveredBlock1038Value8 := recoveredBlock1038Value0.
    recoveredBlock1038Value9 := recoveredLocal7.
    (recoveredBlock1038Value8) leftWidget: (recoveredBlock1038Value9).
    recoveredBlock1038Value10 := recoveredBlock1038Value0.
    recoveredBlock1038Value11 := XmATTACHFORM.
    (recoveredBlock1038Value10) rightAttachment: (recoveredBlock1038Value11).
    recoveredBlock1038Value12 := (recoveredBlock1038Value0) rightOffset: (5).
    recoveredBlock1038Value12
].
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            recoveredStack2 := [:recoveredBlock1108Arg1 | 
    | recoveredBlock1108Value0 recoveredBlock1108Value1 recoveredBlock1108Value2 recoveredBlock1108Value3 recoveredBlock1108Value4 recoveredBlock1108Value5 recoveredBlock1108Value6 recoveredBlock1108Value7 recoveredBlock1108Value8 recoveredBlock1108Value9 recoveredBlock1108Value10 recoveredBlock1108Value11 |
    recoveredBlock1108Value0 := recoveredBlock1108Arg1.
    recoveredBlock1108Value1 := recoveredBlock1108Value0.
    recoveredBlock1108Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1108Value1) bottomAttachment: (recoveredBlock1108Value2).
    recoveredBlock1108Value3 := recoveredBlock1108Value0.
    recoveredBlock1108Value4 := recoveredLocal3.
    (recoveredBlock1108Value3) bottomWidget: (recoveredBlock1108Value4).
    recoveredBlock1108Value5 := recoveredBlock1108Value0.
    recoveredBlock1108Value6 := XmATTACHFORM.
    (recoveredBlock1108Value5) topAttachment: (recoveredBlock1108Value6).
    recoveredBlock1108Value7 := recoveredBlock1108Value0.
    (recoveredBlock1108Value7) topOffset: (5).
    recoveredBlock1108Value8 := recoveredBlock1108Value0.
    recoveredBlock1108Value9 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1108Value8) leftAttachment: (recoveredBlock1108Value9).
    recoveredBlock1108Value10 := recoveredLocal1.
    recoveredBlock1108Value11 := (recoveredBlock1108Value0) leftWidget: (recoveredBlock1108Value10).
    recoveredBlock1108Value11
].
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            recoveredStack2 := [:recoveredBlock1172Arg1 | 
    | recoveredBlock1172Value0 recoveredBlock1172Value1 recoveredBlock1172Value2 recoveredBlock1172Value3 recoveredBlock1172Value4 recoveredBlock1172Value5 recoveredBlock1172Value6 recoveredBlock1172Value7 recoveredBlock1172Value8 |
    recoveredBlock1172Value0 := recoveredBlock1172Arg1.
    recoveredBlock1172Value1 := recoveredBlock1172Value0.
    recoveredBlock1172Value2 := XmATTACHWIDGET.
    (recoveredBlock1172Value1) bottomAttachment: (recoveredBlock1172Value2).
    recoveredBlock1172Value3 := recoveredBlock1172Value0.
    recoveredBlock1172Value4 := recoveredLocal5.
    (recoveredBlock1172Value3) bottomWidget: (recoveredBlock1172Value4).
    recoveredBlock1172Value5 := recoveredBlock1172Value0.
    recoveredBlock1172Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1172Value5) leftAttachment: (recoveredBlock1172Value6).
    recoveredBlock1172Value7 := recoveredLocal5.
    recoveredBlock1172Value8 := (recoveredBlock1172Value0) leftWidget: (recoveredBlock1172Value7).
    recoveredBlock1172Value8
].
            recoveredPC := 1214.
        ].
        recoveredStep = 1214 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack2 := [:block2812d5f4Arg1 | 
    | block2812d5f4Value0 block2812d5f4Value1 block2812d5f4Value2 block2812d5f4Value3 block2812d5f4Value4 block2812d5f4Value5 block2812d5f4Value6 |
    block2812d5f4Value0 := block2812d5f4Arg1.
    block2812d5f4Value1 := block2812d5f4Value0.
    block2812d5f4Value2 := XmATTACHFORM.
    (block2812d5f4Value1) topAttachment: (block2812d5f4Value2).
    block2812d5f4Value3 := block2812d5f4Value0.
    (block2812d5f4Value3) topOffset: (5).
    block2812d5f4Value4 := block2812d5f4Value0.
    block2812d5f4Value5 := XmATTACHFORM.
    (block2812d5f4Value4) rightAttachment: (block2812d5f4Value5).
    block2812d5f4Value6 := (block2812d5f4Value0) rightOffset: (5).
    block2812d5f4Value6
].
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredPC := 1262.
        ].
        recoveredStep = 1262 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1267.
        ].
        recoveredStep = 1267 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            recoveredStack2 := [:recoveredBlock1270Arg1 | 
    | recoveredBlock1270Value0 recoveredBlock1270Value1 recoveredBlock1270Value2 recoveredBlock1270Value3 recoveredBlock1270Value4 recoveredBlock1270Value5 recoveredBlock1270Value6 recoveredBlock1270Value7 recoveredBlock1270Value8 recoveredBlock1270Value9 recoveredBlock1270Value10 recoveredBlock1270Value11 |
    recoveredBlock1270Value0 := recoveredBlock1270Arg1.
    recoveredBlock1270Value1 := recoveredBlock1270Value0.
    recoveredBlock1270Value2 := XmATTACHFORM.
    (recoveredBlock1270Value1) bottomAttachment: (recoveredBlock1270Value2).
    recoveredBlock1270Value3 := recoveredBlock1270Value0.
    (recoveredBlock1270Value3) bottomOffset: (5).
    recoveredBlock1270Value4 := recoveredBlock1270Value0.
    recoveredBlock1270Value5 := XmATTACHFORM.
    (recoveredBlock1270Value4) topAttachment: (recoveredBlock1270Value5).
    recoveredBlock1270Value6 := recoveredBlock1270Value0.
    (recoveredBlock1270Value6) topOffset: (5).
    recoveredBlock1270Value7 := recoveredBlock1270Value0.
    recoveredBlock1270Value8 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1270Value7) leftAttachment: (recoveredBlock1270Value8).
    recoveredBlock1270Value9 := recoveredBlock1270Value0.
    recoveredBlock1270Value10 := recoveredLocal10.
    (recoveredBlock1270Value9) leftWidget: (recoveredBlock1270Value10).
    recoveredBlock1270Value11 := (recoveredBlock1270Value0) leftOffset: (-10).
    recoveredBlock1270Value11
].
            recoveredPC := 1330.
        ].
        recoveredStep = 1330 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1335.
        ].
        recoveredStep = 1335 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            recoveredStack2 := [:recoveredBlock1338Arg1 | 
    | recoveredBlock1338Value0 recoveredBlock1338Value1 recoveredBlock1338Value2 recoveredBlock1338Value3 recoveredBlock1338Value4 recoveredBlock1338Value5 recoveredBlock1338Value6 recoveredBlock1338Value7 recoveredBlock1338Value8 recoveredBlock1338Value9 recoveredBlock1338Value10 recoveredBlock1338Value11 recoveredBlock1338Value12 recoveredBlock1338Value13 recoveredBlock1338Value14 recoveredBlock1338Value15 recoveredBlock1338Value16 |
    recoveredBlock1338Value0 := recoveredBlock1338Arg1.
    recoveredBlock1338Value1 := recoveredBlock1338Value0.
    recoveredBlock1338Value2 := XmATTACHFORM.
    (recoveredBlock1338Value1) bottomAttachment: (recoveredBlock1338Value2).
    recoveredBlock1338Value3 := recoveredBlock1338Value0.
    (recoveredBlock1338Value3) bottomOffset: (5).
    recoveredBlock1338Value4 := recoveredBlock1338Value0.
    recoveredBlock1338Value5 := XmATTACHWIDGET.
    (recoveredBlock1338Value4) topAttachment: (recoveredBlock1338Value5).
    recoveredBlock1338Value6 := recoveredBlock1338Value0.
    recoveredBlock1338Value7 := recoveredLocal2.
    (recoveredBlock1338Value6) topWidget: (recoveredBlock1338Value7).
    recoveredBlock1338Value8 := recoveredBlock1338Value0.
    (recoveredBlock1338Value8) topOffset: (10).
    recoveredBlock1338Value9 := recoveredBlock1338Value0.
    recoveredBlock1338Value10 := XmATTACHFORM.
    (recoveredBlock1338Value9) leftAttachment: (recoveredBlock1338Value10).
    recoveredBlock1338Value11 := recoveredBlock1338Value0.
    (recoveredBlock1338Value11) leftOffset: (5).
    recoveredBlock1338Value12 := recoveredBlock1338Value0.
    recoveredBlock1338Value13 := XmATTACHWIDGET.
    (recoveredBlock1338Value12) rightAttachment: (recoveredBlock1338Value13).
    recoveredBlock1338Value14 := recoveredBlock1338Value0.
    recoveredBlock1338Value15 := recoveredLocal6.
    (recoveredBlock1338Value14) rightWidget: (recoveredBlock1338Value15).
    recoveredBlock1338Value16 := (recoveredBlock1338Value0) rightOffset: (5).
    recoveredBlock1338Value16
].
            recoveredPC := 1420.
        ].
        recoveredStep = 1420 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1425.
        ].
        recoveredStep = 1425 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1428.
        ].
        recoveredStep = 1428 ifTrue: [
            recoveredStack2 := [:block2812d618Arg1 | 
    | block2812d618Value0 block2812d618Value1 block2812d618Value2 block2812d618Value3 block2812d618Value4 block2812d618Value5 block2812d618Value6 |
    block2812d618Value0 := block2812d618Arg1.
    block2812d618Value1 := block2812d618Value0.
    block2812d618Value2 := XmATTACHFORM.
    (block2812d618Value1) topAttachment: (block2812d618Value2).
    block2812d618Value3 := block2812d618Value0.
    (block2812d618Value3) topOffset: (5).
    block2812d618Value4 := block2812d618Value0.
    block2812d618Value5 := XmATTACHFORM.
    (block2812d618Value4) leftAttachment: (block2812d618Value5).
    block2812d618Value6 := (block2812d618Value0) leftOffset: (5).
    block2812d618Value6
].
            recoveredPC := 1432.
        ].
        recoveredStep = 1432 ifTrue: [
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack2 := [:recoveredBlock1476Arg1 | 
    | recoveredBlock1476Value0 recoveredBlock1476Value1 recoveredBlock1476Value2 recoveredBlock1476Value3 recoveredBlock1476Value4 recoveredBlock1476Value5 recoveredBlock1476Value6 recoveredBlock1476Value7 recoveredBlock1476Value8 |
    recoveredBlock1476Value0 := recoveredBlock1476Arg1.
    recoveredBlock1476Value1 := recoveredBlock1476Value0.
    recoveredBlock1476Value2 := XmATTACHWIDGET.
    (recoveredBlock1476Value1) topAttachment: (recoveredBlock1476Value2).
    recoveredBlock1476Value3 := recoveredBlock1476Value0.
    recoveredBlock1476Value4 := recoveredLocal3.
    (recoveredBlock1476Value3) topWidget: (recoveredBlock1476Value4).
    recoveredBlock1476Value5 := recoveredBlock1476Value0.
    (recoveredBlock1476Value5) topOffset: (5).
    recoveredBlock1476Value6 := recoveredBlock1476Value0.
    recoveredBlock1476Value7 := XmATTACHFORM.
    (recoveredBlock1476Value6) leftAttachment: (recoveredBlock1476Value7).
    recoveredBlock1476Value8 := (recoveredBlock1476Value0) leftOffset: (5).
    recoveredBlock1476Value8
].
            recoveredPC := 1522.
        ].
        recoveredStep = 1522 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1527.
        ].
        recoveredStep = 1527 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1530.
        ].
        recoveredStep = 1530 ifTrue: [
            recoveredStack2 := [:recoveredBlock1530Arg1 | 
    | recoveredBlock1530Value0 recoveredBlock1530Value1 recoveredBlock1530Value2 recoveredBlock1530Value3 recoveredBlock1530Value4 recoveredBlock1530Value5 recoveredBlock1530Value6 recoveredBlock1530Value7 recoveredBlock1530Value8 recoveredBlock1530Value9 recoveredBlock1530Value10 recoveredBlock1530Value11 recoveredBlock1530Value12 recoveredBlock1530Value13 |
    recoveredBlock1530Value0 := recoveredBlock1530Arg1.
    recoveredBlock1530Value1 := recoveredBlock1530Value0.
    recoveredBlock1530Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1530Value1) bottomAttachment: (recoveredBlock1530Value2).
    recoveredBlock1530Value3 := recoveredBlock1530Value0.
    recoveredBlock1530Value4 := recoveredLocal2.
    (recoveredBlock1530Value3) bottomWidget: (recoveredBlock1530Value4).
    recoveredBlock1530Value5 := recoveredBlock1530Value0.
    recoveredBlock1530Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1530Value5) topAttachment: (recoveredBlock1530Value6).
    recoveredBlock1530Value7 := recoveredBlock1530Value0.
    recoveredBlock1530Value8 := recoveredLocal2.
    (recoveredBlock1530Value7) topWidget: (recoveredBlock1530Value8).
    recoveredBlock1530Value9 := recoveredBlock1530Value0.
    recoveredBlock1530Value10 := XmATTACHWIDGET.
    (recoveredBlock1530Value9) leftAttachment: (recoveredBlock1530Value10).
    recoveredBlock1530Value11 := recoveredBlock1530Value0.
    recoveredBlock1530Value12 := recoveredLocal2.
    (recoveredBlock1530Value11) leftWidget: (recoveredBlock1530Value12).
    recoveredBlock1530Value13 := (recoveredBlock1530Value0) leftOffset: (10).
    recoveredBlock1530Value13
].
            recoveredPC := 1594.
        ].
        recoveredStep = 1594 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1599.
        ].
        recoveredStep = 1599 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1602.
        ].
        recoveredStep = 1602 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1606.
        ].
        recoveredStep = 1606 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1607.
        ].
        recoveredStep = 1607 ifTrue: [
            recoveredStack4 := 'stateActivate:clientData:callData:'.
            recoveredPC := 1610.
        ].
        recoveredStep = 1610 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1611.
        ].
        recoveredStep = 1611 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1615.
        ].
        recoveredStep = 1615 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1618.
        ].
        recoveredStep = 1618 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1622.
        ].
        recoveredStep = 1622 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1623.
        ].
        recoveredStep = 1623 ifTrue: [
            recoveredStack4 := 'stateActivate:clientData:callData:'.
            recoveredPC := 1626.
        ].
        recoveredStep = 1626 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1627.
        ].
        recoveredStep = 1627 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1631.
        ].
        recoveredStep = 1631 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1634.
        ].
        recoveredStep = 1634 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1638.
        ].
        recoveredStep = 1638 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1642.
        ].
        recoveredStep = 1642 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1643.
        ].
        recoveredStep = 1643 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1647.
        ].
        recoveredStep = 1647 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1650.
        ].
        recoveredStep = 1650 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1654.
        ].
        recoveredStep = 1654 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1655.
        ].
        recoveredStep = 1655 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1658.
        ].
        recoveredStep = 1658 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1659.
        ].
        recoveredStep = 1659 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1663.
        ].
        recoveredStep = 1663 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1666.
        ].
        recoveredStep = 1666 ifTrue: [
            recoveredStack2 := XmNetasColorSelectionCallback.
            recoveredPC := 1670.
        ].
        recoveredStep = 1670 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1671.
        ].
        recoveredStep = 1671 ifTrue: [
            recoveredStack4 := 'colorSelection:clientData:callData:'.
            recoveredPC := 1674.
        ].
        recoveredStep = 1674 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1675.
        ].
        recoveredStep = 1675 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1679.
        ].
        recoveredStep = 1679 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1682.
        ].
        recoveredStep = 1682 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1686.
        ].
        recoveredStep = 1686 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1687.
        ].
        recoveredStep = 1687 ifTrue: [
            recoveredStack4 := 'statesSingle:clientData:callData:'.
            recoveredPC := 1690.
        ].
        recoveredStep = 1690 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1691.
        ].
        recoveredStep = 1691 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1695.
        ].
        recoveredStep = 1695 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1698.
        ].
        recoveredStep = 1698 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 1702.
        ].
        recoveredStep = 1702 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1703.
        ].
        recoveredStep = 1703 ifTrue: [
            recoveredStack4 := 'resizeTabStrip:clientData:callData:'.
            recoveredPC := 1706.
        ].
        recoveredStep = 1706 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1707.
        ].
        recoveredStep = 1707 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1711.
        ].
        recoveredStep = 1711 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1714.
        ].
        recoveredStep = 1714 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1718.
        ].
        recoveredStep = 1718 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1719.
        ].
        recoveredStep = 1719 ifTrue: [
            recoveredStack4 := 'modifyVerifyTabStrip:clientData:callData:'.
            recoveredPC := 1722.
        ].
        recoveredStep = 1722 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1723.
        ].
        recoveredStep = 1723 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1727.
        ].
        recoveredStep = 1727 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1730.
        ].
        recoveredStep = 1730 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1734.
        ].
        recoveredStep = 1734 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1735.
        ].
        recoveredStep = 1735 ifTrue: [
            recoveredStack4 := 'singleSelectionTabStrip:clientData:callData:'.
            recoveredPC := 1738.
        ].
        recoveredStep = 1738 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1739.
        ].
        recoveredStep = 1739 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1743.
        ].
        recoveredStep = 1743 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1746.
        ].
        recoveredStep = 1746 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 1750.
        ].
        recoveredStep = 1750 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1751.
        ].
        recoveredStep = 1751 ifTrue: [
            recoveredStack4 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 1754.
        ].
        recoveredStep = 1754 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1755.
        ].
        recoveredStep = 1755 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1759.
        ].
        recoveredStep = 1759 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1762.
        ].
        recoveredStep = 1762 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1767.
        ].
        recoveredStep = 1767 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1770.
        ].
        recoveredStep = 1770 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1775.
        ].
        recoveredStep = 1775 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1778.
        ].
        recoveredStep = 1778 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1783.
        ].
        recoveredStep = 1783 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1786.
        ].
        recoveredStep = 1786 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1791.
        ].
        recoveredStep = 1791 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1794.
        ].
        recoveredStep = 1794 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1799.
        ].
        recoveredStep = 1799 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1802.
        ].
        recoveredStep = 1802 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1807.
        ].
        recoveredStep = 1807 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1810.
        ].
        recoveredStep = 1810 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1815.
        ].
        recoveredStep = 1815 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1818.
        ].
        recoveredStep = 1818 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 1821.
        ].
        recoveredStep = 1821 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1824.
        ].
        recoveredStep = 1824 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1829.
        ].
        recoveredStep = 1829 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

