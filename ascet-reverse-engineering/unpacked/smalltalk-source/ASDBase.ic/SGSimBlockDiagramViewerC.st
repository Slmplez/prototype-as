"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d3d4; bytecode file offset 0x909e08"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
checkSpecEditor: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000f324; bytecode file offset 0x90bc70"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
openLiteralDialogFor: recoveredArg1 title: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x20011510; bytecode file offset 0x90ddf4"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
openSGSequenceDialogWith: recoveredArg1 disableSeqName: recoveredArg2 allMethods: recoveredArg3 methodType: recoveredArg4
    ^nil
! !

"ASDBase.ic method 0x20011bfc; bytecode file offset 0x90e4c8"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
getNextSequenceNumber: recoveredArg1 disableSeqName: recoveredArg2 allMethods: recoveredArg3 methodType: recoveredArg4 otherSequenceCalls: recoveredArg5
    ^nil
! !

"ASDBase.ic method 0x20011c04; bytecode file offset 0x90e4c8"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
openSGSequenceDialogWith: recoveredArg1 disableSeqName: recoveredArg2 allMethods: recoveredArg3 methodType: recoveredArg4 otherSequenceCalls: recoveredArg5
    ^nil
! !

"ASDBase.ic method 0x20013a34; bytecode file offset 0x912098"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
paneControllerClass
    | recoveredValue0 |
    recoveredValue0 := SGSimPaneController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002a024; bytecode file offset 0x934580"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
getMeasurementCtrl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSimCtrl.
    recoveredValue1 := (recoveredValue0) measureSystemC.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c694; bytecode file offset 0x934580"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
getCalibrationCtrl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSimCtrl.
    recoveredValue1 := (recoveredValue0) adjustSystemC.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003aafc; bytecode file offset 0x938608"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
deleteElementsWithQuery: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) deleteElements: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b498; bytecode file offset 0x938608"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
visibleOptionError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) visibleError: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b640; bytecode file offset 0x957f1c"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
getBDEView
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userInterface.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006fb60; bytecode file offset 0x96c42c"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
getStateTable
    | recoveredValue0 |
    recoveredValue0 := stateTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075784; bytecode file offset 0x9757c8"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
windowCloseRequest
    ^true
! !

"ASDBase.ic method 0x2007bf2c; bytecode file offset 0x97c330"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
modified
    ^false
! !

"ASDBase.ic method 0x20087740; bytecode file offset 0x983ffc"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
getSimCtrl
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userInterface.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) simController.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3394; bytecode file offset 0x9afc70"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
enableAnimation
    (self) initStateTable.
    (self) animationFlag: (true).
    ^self
! !

"ASDBase.ic method 0x200b3558; bytecode file offset 0x9afe54"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
updateStatesAndMonitors
    | recoveredValue0 |
    (self) updateStateAnimation.
    recoveredValue0 := (self) userInterface.
    (recoveredValue0) updateMonitorPaths.
    ^self
! !

"ASDBase.ic method 0x200c63a4; bytecode file offset 0x9c2dd0"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
animationFlag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    animationFlag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f2374; bytecode file offset 0x9eec2c"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
isAnimation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := animationFlag.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := stateTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201198fc; bytecode file offset 0xa16880"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
monitorAllVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGOListForMonitors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7b6cArg1 | 
    | block280c7b6cValue0 block280c7b6cValue1 |
    block280c7b6cValue0 := block280c7b6cArg1.
    block280c7b6cValue1 := (block280c7b6cValue0) addMonitor.
    block280c7b6cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x201199ec; bytecode file offset 0xa16880"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
deleteAllMonitors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGOListForMonitors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7cd4Arg1 | 
    | block280c7cd4Value0 block280c7cd4Value1 |
    block280c7cd4Value0 := block280c7cd4Arg1.
    block280c7cd4Value1 := (block280c7cd4Value0) removeMonitor.
    block280c7cd4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20119f2c; bytecode file offset 0xa16880"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
resetMonitorMeasureTime
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGOListForMonitors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c84b4Arg1 | 
    | block280c84b4Value0 block280c84b4Value1 |
    block280c84b4Value0 := block280c84b4Arg1.
    block280c84b4Value1 := (block280c84b4Value0) resetMonitorMeasureTime.
    block280c84b4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x201391c4; bytecode file offset 0xa35a84"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
updateFor: recoveredArg1 spec: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) setCurrentSimNodeDownForElement: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) openDiagramForNode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20183cb4; bytecode file offset 0xa80588"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
visibleError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := (self) item.
    recoveredValue2 := (recoveredValue1) label.
    recoveredValue3 := ('Component ') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (' is opened in experiment environment. Displaying error/warning is not possible in this context.
To display Error/Warning, please close respective experiment environment.').
    recoveredValue5 := (recoveredValue0) message: (recoveredValue4).
    (recoveredValue5) prompt.
    ^nil
! !

"ASDBase.ic method 0x201de11c; bytecode file offset 0xada9e4"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
topElementIfSelected
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerSGClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20205ce8; bytecode file offset 0xb025ac"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
disableAnimation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) animationFlag: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            lastState := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := stateTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := stateTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block280d97c4Arg1 | 
    | block280d97c4Value0 block280d97c4Value1 |
    block280d97c4Value0 := block280d97c4Arg1.
    block280d97c4Value1 := (block280d97c4Value0) resetStateAnimation.
    block280d97c4Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026005c; bytecode file offset 0xb5c930"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
readGraphics
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCCodeSpecification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isASDLSpecification.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            super readGraphics.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) graphicsForNoAccess.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20275c6c; bytecode file offset 0xb7253c"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
selectedTopElement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280e0b14Arg1 | 
    | block280e0b14Value0 block280e0b14Value1 |
    block280e0b14Value0 := block280e0b14Arg1.
    block280e0b14Value1 := (block280e0b14Value0) aliasName.
    block280e0b14Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c4af8; bytecode file offset 0xbc13d8"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
updateStateAnimation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentSimNode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSMState.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) initStateTable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := userInterface.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := userInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := stateTable.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:block280e5458Arg1 | 
    | block280e5458Value0 block280e5458Value1 |
    block280e5458Value0 := block280e5458Arg1.
    block280e5458Value1 := (block280e5458Value0) resetStateAnimation.
    block280e5458Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c8098; bytecode file offset 0xbc497c"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
initStateTable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            lastState := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmSpecification.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := SGIdentifierTableBuilder.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) smVariable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createStateGOTableFor: (recoveredStack1) stateList: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            stateTable := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            stateTable := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203334b4; bytecode file offset 0xc2fd8c"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
editImplIsPossible
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTopElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmVariable.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) configureModeImpl.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasUndefinedSGClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConstant.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) topElementIfSelected.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20333b20; bytecode file offset 0xc303f8"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
isOpenPossibleForElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPrimitive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'call_82088'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'call_82191'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'call_82196'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSenderReceiverInterface.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNVDataInterface.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecord.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20424574; bytecode file offset 0xd20e64"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
getDataGOListForMonitors
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := 'Kli'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'BOSCH_CC'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := graphPaneController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualHierarchy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := graphPaneController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualHierarchy.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := SGIdentifierTableBuilder.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := graphPaneController.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualHierarchy.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTableFor: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) class.
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            recoveredBlock51Stack3 := SGDataGO.
            recoveredBlock51PC := 64.
        ].
        recoveredBlock51Step = 64 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) = (recoveredBlock51Stack3).
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 68] ifFalse: [recoveredBlock51PC := 95].
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) manager.
            recoveredBlock51PC := 71.
        ].
        recoveredBlock51Step = 71 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) owner.
            recoveredBlock51PC := 73.
        ].
        recoveredBlock51Step = 73 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) identifier.
            recoveredBlock51PC := 75.
        ].
        recoveredBlock51Step = 75 ifTrue: [
            recoveredBlock51Stack3 := recoveredLocal1.
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) = (recoveredBlock51Stack3).
            recoveredBlock51PC := 79.
        ].
        recoveredBlock51Step = 79 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 82] ifFalse: [recoveredBlock51PC := 95].
        ].
        recoveredBlock51Step = 82 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 83.
        ].
        recoveredBlock51Step = 83 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) couldMeasure.
            recoveredBlock51PC := 85.
        ].
        recoveredBlock51Step = 85 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 88] ifFalse: [recoveredBlock51PC := 95].
        ].
        recoveredBlock51Step = 88 ifTrue: [
            recoveredBlock51PC := 89.
        ].
        recoveredBlock51Step = 89 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal2.
            recoveredBlock51PC := 92.
        ].
        recoveredBlock51Step = 92 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 93.
        ].
        recoveredBlock51Step = 93 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) add: (recoveredBlock51Stack2).
            recoveredBlock51PC := 95.
        ].
        recoveredBlock51Step = 95 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2043ba5c; bytecode file offset 0xd38328"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
displayState: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAnimation.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := lastState.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := stateTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280fe140Arg1 | 
    | block280fe140Value0 block280fe140Value1 |
    block280fe140Value0 := block280fe140Arg1.
    block280fe140Value1 := (block280fe140Value0) resetStateAnimation.
    block280fe140Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := stateTable.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [
    lastState := nil.
    ^nil
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) setStateAnimation.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := lastState.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := stateTable.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := lastState.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [
    lastState := nil.
    ^nil
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) resetStateAnimation.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := stateTable.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [
    lastState := nil.
    ^nil
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) setStateAnimation.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            lastState := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046443c; bytecode file offset 0xd60d2c"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
openDiagramFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpenPossibleForElement: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDBUndefinedObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    ^nil
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrimitive.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodParameter.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelfClass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultSpecFor: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImported.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportForImport: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateFor: (recoveredStack1) spec: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateFor: (recoveredStack1) spec: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204972d4; bytecode file offset 0xd93bc4"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
openDiagramForNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerSGClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBUndefinedObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) resetBusyCursor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 |
    recoveredBlock29Value0 := System.
    (recoveredBlock29Value0) resetBusyCursor.
    ^nil
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) resetBusyCursor.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodParameter.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSelfClass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultSpecFor: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) resetBusyCursor.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimCtrl.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) setCurrentSimNode: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) updateForNode: (recoveredStack2) spec: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20548f34; bytecode file offset 0xe45880"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
updateForNode: recoveredArg1 spec: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDExperimentOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExperimentAutomaticMonitorMode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := userInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) menuExperimentMonitorDelete.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := userInterface.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) reference.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            (recoveredBlock18Stack0) updateStateAnimation.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack0 := recoveredLocal1.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) owner.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            (recoveredBlock18Stack0 == nil) ifTrue: [recoveredBlock18PC := 50] ifFalse: [recoveredBlock18PC := 42].
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack0 := recoveredArg1.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) isSimEntry.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            (recoveredBlock18Stack0) ifTrue: [recoveredBlock18PC := 50] ifFalse: [recoveredBlock18PC := 68].
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack0 := #().
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack0.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) getSimCtrl.
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) simEnvironment.
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) getTopMakeConfig.
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            recoveredLocal2 := recoveredBlock18Stack0.
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18PC := 94.
        ].
        recoveredBlock18Step = 68 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 69.
        ].
        recoveredBlock18Step = 69 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) getSimCtrl.
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) simEnvironment.
            recoveredBlock18PC := 73.
        ].
        recoveredBlock18Step = 73 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) buildMakeConfigStackForSimNode: (recoveredBlock18Stack1).
            recoveredBlock18PC := 78.
        ].
        recoveredBlock18Step = 78 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack0.
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 81 ifTrue: [
            recoveredBlock18Stack0 := recoveredLocal3.
            recoveredBlock18PC := 84.
        ].
        recoveredBlock18Step = 84 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) last.
            recoveredBlock18PC := 86.
        ].
        recoveredBlock18Step = 86 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 89.
        ].
        recoveredBlock18Step = 89 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) checkedMakeConfigForElement: (recoveredBlock18Stack1).
            recoveredBlock18PC := 91.
        ].
        recoveredBlock18Step = 91 ifTrue: [
            recoveredLocal2 := recoveredBlock18Stack0.
            recoveredBlock18PC := 94.
        ].
        recoveredBlock18Step = 94 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 95.
        ].
        recoveredBlock18Step = 95 ifTrue: [
            recoveredBlock18Stack1 := [
    | recoveredBlock18Block95Stack0 recoveredBlock18Block95Stack1 recoveredBlock18Block95Stack2 recoveredBlock18Block95Stack3 recoveredBlock18Block95Stack4 recoveredBlock18Block95Stack5 recoveredBlock18Block95Stack6 recoveredBlock18Block95Stack7 recoveredBlock18Block95PC recoveredBlock18Block95Step recoveredBlock18Block95Done recoveredBlock18Block95Result |
    recoveredBlock18Block95Stack0 := self.
    recoveredBlock18Block95PC := 102.
    recoveredBlock18Block95Done := false.
    [recoveredBlock18Block95Done not] whileTrue: [
        recoveredBlock18Block95Step := recoveredBlock18Block95PC.
        recoveredBlock18Block95Step = 102 ifTrue: [
            recoveredBlock18Block95Stack1 := recoveredLocal1.
            recoveredBlock18Block95PC := 105.
        ].
        recoveredBlock18Block95Step = 105 ifTrue: [
            recoveredBlock18Block95Stack1 := (recoveredBlock18Block95Stack1) sgClass.
            recoveredBlock18Block95PC := 107.
        ].
        recoveredBlock18Block95Step = 107 ifTrue: [
            recoveredBlock18Block95Stack2 := recoveredArg2.
            recoveredBlock18Block95PC := 110.
        ].
        recoveredBlock18Block95Step = 110 ifTrue: [
            recoveredBlock18Block95Stack3 := recoveredLocal2.
            recoveredBlock18Block95PC := 113.
        ].
        recoveredBlock18Block95Step = 113 ifTrue: [
            recoveredBlock18Block95Stack4 := recoveredLocal3.
            recoveredBlock18Block95PC := 116.
        ].
        recoveredBlock18Block95Step = 116 ifTrue: [
            recoveredBlock18Block95Stack5 := self.
            recoveredBlock18Block95PC := 117.
        ].
        recoveredBlock18Block95Step = 117 ifTrue: [
            recoveredBlock18Block95Stack5 := (recoveredBlock18Block95Stack5) context.
            recoveredBlock18Block95PC := 119.
        ].
        recoveredBlock18Block95Step = 119 ifTrue: [
            recoveredBlock18Block95Stack6 := recoveredLocal1.
            recoveredBlock18Block95PC := 122.
        ].
        recoveredBlock18Block95Step = 122 ifTrue: [
            recoveredBlock18Block95Stack6 := (recoveredBlock18Block95Stack6) sgClass.
            recoveredBlock18Block95PC := 124.
        ].
        recoveredBlock18Block95Step = 124 ifTrue: [
            recoveredBlock18Block95Stack6 := (recoveredBlock18Block95Stack6) getLibrary.
            recoveredBlock18Block95PC := 126.
        ].
        recoveredBlock18Block95Step = 126 ifTrue: [
            recoveredBlock18Block95Stack5 := (recoveredBlock18Block95Stack5) duplicateForLibrary: (recoveredBlock18Block95Stack6).
            recoveredBlock18Block95PC := 128.
        ].
        recoveredBlock18Block95Step = 128 ifTrue: [
            (recoveredBlock18Block95Stack0) initClass: (recoveredBlock18Block95Stack1) spec: (recoveredBlock18Block95Stack2) makeConfig: (recoveredBlock18Block95Stack3) makeConfigStack: (recoveredBlock18Block95Stack4) context: (recoveredBlock18Block95Stack5).
            recoveredBlock18Block95PC := 131.
        ].
        recoveredBlock18Block95Step = 131 ifTrue: [
            recoveredBlock18Block95Stack0 := userInterface.
            recoveredBlock18Block95PC := 133.
        ].
        recoveredBlock18Block95Step = 133 ifTrue: [
            (recoveredBlock18Block95Stack0) updateTreePane.
            recoveredBlock18Block95PC := 135.
        ].
        recoveredBlock18Block95Step = 135 ifTrue: [
            recoveredBlock18Block95Stack0 := userInterface.
            recoveredBlock18Block95PC := 137.
        ].
        recoveredBlock18Block95Step = 137 ifTrue: [
            recoveredBlock18Block95Stack0 := (recoveredBlock18Block95Stack0) outlineTree.
            recoveredBlock18Block95PC := 139.
        ].
        recoveredBlock18Block95Step = 139 ifTrue: [
            recoveredBlock18Block95Stack1 := [:block2810edb4Arg1 | 
    | block2810edb4Value0 block2810edb4Value1 |
    block2810edb4Value0 := block2810edb4Arg1.
    block2810edb4Value1 := (block2810edb4Value0) expandFirstLevel.
    block2810edb4Value1
].
            recoveredBlock18Block95PC := 141.
        ].
        recoveredBlock18Block95Step = 141 ifTrue: [
            recoveredBlock18Block95PC := 148.
        ].
        recoveredBlock18Block95Step = 148 ifTrue: [
            (recoveredBlock18Block95Stack0) ifNotNil: (recoveredBlock18Block95Stack1).
            recoveredBlock18Block95PC := 150.
        ].
        recoveredBlock18Block95Step = 150 ifTrue: [
            recoveredBlock18Block95Stack0 := userInterface.
            recoveredBlock18Block95PC := 152.
        ].
        recoveredBlock18Block95Step = 152 ifTrue: [
            recoveredBlock18Block95Stack0 := (recoveredBlock18Block95Stack0) navigationTree.
            recoveredBlock18Block95PC := 154.
        ].
        recoveredBlock18Block95Step = 154 ifTrue: [
            recoveredBlock18Block95Stack1 := [:block2810edd8Arg1 | 
    | block2810edd8Value0 block2810edd8Value1 |
    block2810edd8Value0 := block2810edd8Arg1.
    block2810edd8Value1 := (block2810edd8Value0) expandFirstLevel.
    block2810edd8Value1
].
            recoveredBlock18Block95PC := 156.
        ].
        recoveredBlock18Block95Step = 156 ifTrue: [
            recoveredBlock18Block95PC := 164.
        ].
        recoveredBlock18Block95Step = 164 ifTrue: [
            (recoveredBlock18Block95Stack0) ifNotNil: (recoveredBlock18Block95Stack1).
            recoveredBlock18Block95PC := 166.
        ].
        recoveredBlock18Block95Step = 166 ifTrue: [
            recoveredBlock18Block95Stack0 := userInterface.
            recoveredBlock18Block95PC := 168.
        ].
        recoveredBlock18Block95Step = 168 ifTrue: [
            recoveredBlock18Block95Stack1 := false.
            recoveredBlock18Block95PC := 169.
        ].
        recoveredBlock18Block95Step = 169 ifTrue: [
            (recoveredBlock18Block95Stack0) graphicsInitialized: (recoveredBlock18Block95Stack1).
            recoveredBlock18Block95PC := 171.
        ].
        recoveredBlock18Block95Step = 171 ifTrue: [
            recoveredBlock18Block95Stack0 := userInterface.
            recoveredBlock18Block95PC := 173.
        ].
        recoveredBlock18Block95Step = 173 ifTrue: [
            (recoveredBlock18Block95Stack0) updateContents.
            recoveredBlock18Block95PC := 175.
        ].
        recoveredBlock18Block95Step = 175 ifTrue: [
            recoveredBlock18Block95Stack0 := userInterface.
            recoveredBlock18Block95PC := 177.
        ].
        recoveredBlock18Block95Step = 177 ifTrue: [
            recoveredBlock18Block95Stack1 := userInterface.
            recoveredBlock18Block95PC := 179.
        ].
        recoveredBlock18Block95Step = 179 ifTrue: [
            recoveredBlock18Block95Stack1 := (recoveredBlock18Block95Stack1) notebook.
            recoveredBlock18Block95PC := 181.
        ].
        recoveredBlock18Block95Step = 181 ifTrue: [
            (recoveredBlock18Block95Stack0) singleSelectionTabStrip: (recoveredBlock18Block95Stack1).
            recoveredBlock18Block95PC := 183.
        ].
        recoveredBlock18Block95Step = 183 ifTrue: [
            recoveredBlock18Block95Stack0 := nil.
            recoveredBlock18Block95PC := 184.
        ].
        recoveredBlock18Block95Step = 184 ifTrue: [
            recoveredBlock18Block95Stack1 := recoveredArg2.
            recoveredBlock18Block95PC := 187.
        ].
        recoveredBlock18Block95Step = 187 ifTrue: [
            recoveredBlock18Block95Stack1 := (recoveredBlock18Block95Stack1) isBdSpecification.
            recoveredBlock18Block95PC := 189.
        ].
        recoveredBlock18Block95Step = 189 ifTrue: [
            (recoveredBlock18Block95Stack1) ifTrue: [recoveredBlock18Block95PC := 200] ifFalse: [recoveredBlock18Block95PC := 192].
        ].
        recoveredBlock18Block95Step = 192 ifTrue: [
            recoveredBlock18Block95Stack1 := recoveredArg2.
            recoveredBlock18Block95PC := 195.
        ].
        recoveredBlock18Block95Step = 195 ifTrue: [
            recoveredBlock18Block95Stack1 := (recoveredBlock18Block95Stack1) isARBdSpecification.
            recoveredBlock18Block95PC := 197.
        ].
        recoveredBlock18Block95Step = 197 ifTrue: [
            (recoveredBlock18Block95Stack1) ifTrue: [recoveredBlock18Block95PC := 200] ifFalse: [recoveredBlock18Block95PC := 205].
        ].
        recoveredBlock18Block95Step = 200 ifTrue: [
            recoveredBlock18Block95PC := 201.
        ].
        recoveredBlock18Block95Step = 201 ifTrue: [
            recoveredBlock18Block95Stack0 := userInterface.
            recoveredBlock18Block95PC := 203.
        ].
        recoveredBlock18Block95Step = 203 ifTrue: [
            recoveredBlock18Block95Stack0 := (recoveredBlock18Block95Stack0) loadMonitors.
            recoveredBlock18Block95PC := 205.
        ].
        recoveredBlock18Block95Step = 205 ifTrue: [
            recoveredBlock18Block95Result := recoveredBlock18Block95Stack0.
            recoveredBlock18Block95Done := true.
        ].
    ].
    recoveredBlock18Block95Result
].
            recoveredBlock18PC := 206.
        ].
        recoveredBlock18Step = 206 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) suspendObservingForEditorItemWhile: (recoveredBlock18Stack1).
            recoveredBlock18PC := 208.
        ].
        recoveredBlock18Step = 208 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack0.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := 'Loading Blockdiagram...'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack5 := SCEtas.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) execWithProgressDialog: (recoveredStack2) message: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058dafc; bytecode file offset 0xe8a450"
!SGSimBlockDiagramViewerC methodsFor: 'recovered'!
formerComponent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfigStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimCtrl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) setCurrentSimNodeUp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfigStack.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfigStack.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultSpecFor: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFormerComponentsInfoClass: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastSpecString.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Local1 recoveredBlock77Stack0 recoveredBlock77Stack1 recoveredBlock77Stack2 recoveredBlock77Stack3 recoveredBlock77Stack4 recoveredBlock77PC recoveredBlock77Step recoveredBlock77Done recoveredBlock77Result |
    recoveredBlock77Stack0 := self.
    recoveredBlock77PC := 84.
    recoveredBlock77Done := false.
    [recoveredBlock77Done not] whileTrue: [
        recoveredBlock77Step := recoveredBlock77PC.
        recoveredBlock77Step = 84 ifTrue: [
            recoveredBlock77Stack1 := recoveredLocal3.
            recoveredBlock77PC := 87.
        ].
        recoveredBlock77Step = 87 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) specifications.
            recoveredBlock77PC := 89.
        ].
        recoveredBlock77Step = 89 ifTrue: [
            recoveredBlock77Stack2 := [:recoveredBlock77Block89Arg1 | 
    | recoveredBlock77Block89Value0 recoveredBlock77Block89Value1 recoveredBlock77Block89Value2 recoveredBlock77Block89Value3 |
    recoveredBlock77Block89Value0 := recoveredBlock77Block89Arg1.
    recoveredBlock77Block89Value1 := (recoveredBlock77Block89Value0) label.
    recoveredBlock77Block89Value2 := recoveredBlock77Arg1.
    recoveredBlock77Block89Value3 := (recoveredBlock77Block89Value1) equals: (recoveredBlock77Block89Value2).
    recoveredBlock77Block89Value3
].
            recoveredBlock77PC := 105.
        ].
        recoveredBlock77Step = 105 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) select: (recoveredBlock77Stack2).
            recoveredBlock77PC := 107.
        ].
        recoveredBlock77Step = 107 ifTrue: [
            recoveredBlock77Local1 := recoveredBlock77Stack1.
            recoveredBlock77PC := 110.
        ].
        recoveredBlock77Step = 110 ifTrue: [
            recoveredBlock77Stack1 := nil.
            recoveredBlock77PC := 111.
        ].
        recoveredBlock77Step = 111 ifTrue: [
            recoveredBlock77Stack2 := recoveredBlock77Local1.
            recoveredBlock77PC := 114.
        ].
        recoveredBlock77Step = 114 ifTrue: [
            recoveredBlock77Stack2 := (recoveredBlock77Stack2) notEmpty.
            recoveredBlock77PC := 116.
        ].
        recoveredBlock77Step = 116 ifTrue: [
            (recoveredBlock77Stack2) ifTrue: [recoveredBlock77PC := 120] ifFalse: [recoveredBlock77PC := 160].
        ].
        recoveredBlock77Step = 120 ifTrue: [
            recoveredBlock77PC := 121.
        ].
        recoveredBlock77Step = 121 ifTrue: [
            recoveredBlock77Stack1 := recoveredBlock77Local1.
            recoveredBlock77PC := 124.
        ].
        recoveredBlock77Step = 124 ifTrue: [
            recoveredBlock77Stack2 := [:recoveredBlock77Block124Arg1 | 
    | recoveredBlock77Block124Value0 recoveredBlock77Block124Value1 recoveredBlock77Block124Value2 recoveredBlock77Block124Value3 recoveredBlock77Block124Value4 |
    recoveredBlock77Block124Value0 := recoveredBlock77Block124Arg1.
    recoveredBlock77Block124Value1 := (recoveredBlock77Block124Value0) class.
    recoveredBlock77Block124Value2 := recoveredLocal1.
    recoveredBlock77Block124Value3 := (recoveredBlock77Block124Value2) class.
    recoveredBlock77Block124Value4 := (recoveredBlock77Block124Value1) equals: (recoveredBlock77Block124Value3).
    recoveredBlock77Block124Value4
].
            recoveredBlock77PC := 141.
        ].
        recoveredBlock77Step = 141 ifTrue: [
            recoveredBlock77Stack3 := [
    | recoveredBlock77Block141Value0 recoveredBlock77Block141Value1 |
    recoveredBlock77Block141Value0 := recoveredBlock77Local1.
    recoveredBlock77Block141Value1 := (recoveredBlock77Block141Value0) first.
    recoveredBlock77Block141Value1
].
            recoveredBlock77PC := 154.
        ].
        recoveredBlock77Step = 154 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) detect: (recoveredBlock77Stack2) ifNone: (recoveredBlock77Stack3).
            recoveredBlock77PC := 156.
        ].
        recoveredBlock77Step = 156 ifTrue: [
            recoveredBlock77Stack2 := recoveredBlock77Stack1.
            recoveredBlock77PC := 157.
        ].
        recoveredBlock77Step = 157 ifTrue: [
            recoveredLocal1 := recoveredBlock77Stack2.
            recoveredBlock77PC := 160.
        ].
        recoveredBlock77Step = 160 ifTrue: [
            recoveredBlock77Result := recoveredBlock77Stack1.
            recoveredBlock77Done := true.
        ].
    ].
    recoveredBlock77Result
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := ASDExperimentOptions.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionExperimentAutomaticMonitorMode.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := userInterface.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) menuExperimentMonitorDelete.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := userInterface.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock178Value0 recoveredBlock178Value1 |
    recoveredBlock178Value0 := [
    | recoveredBlock178Block184Stack0 recoveredBlock178Block184Stack1 recoveredBlock178Block184Stack2 recoveredBlock178Block184Stack3 recoveredBlock178Block184Stack4 recoveredBlock178Block184Stack5 recoveredBlock178Block184Stack6 recoveredBlock178Block184Stack7 recoveredBlock178Block184PC recoveredBlock178Block184Step recoveredBlock178Block184Done recoveredBlock178Block184Result |
    recoveredBlock178Block184Stack0 := self.
    recoveredBlock178Block184PC := 190.
    recoveredBlock178Block184Done := false.
    [recoveredBlock178Block184Done not] whileTrue: [
        recoveredBlock178Block184Step := recoveredBlock178Block184PC.
        recoveredBlock178Block184Step = 190 ifTrue: [
            recoveredBlock178Block184Stack1 := recoveredLocal3.
            recoveredBlock178Block184PC := 193.
        ].
        recoveredBlock178Block184Step = 193 ifTrue: [
            recoveredBlock178Block184Stack2 := recoveredLocal1.
            recoveredBlock178Block184PC := 196.
        ].
        recoveredBlock178Block184Step = 196 ifTrue: [
            recoveredBlock178Block184Stack3 := recoveredLocal4.
            recoveredBlock178Block184PC := 199.
        ].
        recoveredBlock178Block184Step = 199 ifTrue: [
            recoveredBlock178Block184Stack4 := recoveredLocal2.
            recoveredBlock178Block184PC := 202.
        ].
        recoveredBlock178Block184Step = 202 ifTrue: [
            recoveredBlock178Block184Stack5 := self.
            recoveredBlock178Block184PC := 203.
        ].
        recoveredBlock178Block184Step = 203 ifTrue: [
            recoveredBlock178Block184Stack5 := (recoveredBlock178Block184Stack5) context.
            recoveredBlock178Block184PC := 205.
        ].
        recoveredBlock178Block184Step = 205 ifTrue: [
            recoveredBlock178Block184Stack6 := recoveredLocal3.
            recoveredBlock178Block184PC := 208.
        ].
        recoveredBlock178Block184Step = 208 ifTrue: [
            recoveredBlock178Block184Stack6 := (recoveredBlock178Block184Stack6) getLibrary.
            recoveredBlock178Block184PC := 210.
        ].
        recoveredBlock178Block184Step = 210 ifTrue: [
            recoveredBlock178Block184Stack5 := (recoveredBlock178Block184Stack5) duplicateForLibrary: (recoveredBlock178Block184Stack6).
            recoveredBlock178Block184PC := 212.
        ].
        recoveredBlock178Block184Step = 212 ifTrue: [
            (recoveredBlock178Block184Stack0) initClass: (recoveredBlock178Block184Stack1) spec: (recoveredBlock178Block184Stack2) makeConfig: (recoveredBlock178Block184Stack3) makeConfigStack: (recoveredBlock178Block184Stack4) context: (recoveredBlock178Block184Stack5).
            recoveredBlock178Block184PC := 215.
        ].
        recoveredBlock178Block184Step = 215 ifTrue: [
            recoveredBlock178Block184Stack0 := userInterface.
            recoveredBlock178Block184PC := 217.
        ].
        recoveredBlock178Block184Step = 217 ifTrue: [
            recoveredBlock178Block184Stack1 := false.
            recoveredBlock178Block184PC := 218.
        ].
        recoveredBlock178Block184Step = 218 ifTrue: [
            (recoveredBlock178Block184Stack0) graphicsInitialized: (recoveredBlock178Block184Stack1).
            recoveredBlock178Block184PC := 220.
        ].
        recoveredBlock178Block184Step = 220 ifTrue: [
            recoveredBlock178Block184Stack0 := userInterface.
            recoveredBlock178Block184PC := 222.
        ].
        recoveredBlock178Block184Step = 222 ifTrue: [
            (recoveredBlock178Block184Stack0) updateContents.
            recoveredBlock178Block184PC := 224.
        ].
        recoveredBlock178Block184Step = 224 ifTrue: [
            recoveredBlock178Block184Stack0 := userInterface.
            recoveredBlock178Block184PC := 226.
        ].
        recoveredBlock178Block184Step = 226 ifTrue: [
            recoveredBlock178Block184Stack1 := userInterface.
            recoveredBlock178Block184PC := 228.
        ].
        recoveredBlock178Block184Step = 228 ifTrue: [
            recoveredBlock178Block184Stack1 := (recoveredBlock178Block184Stack1) notebook.
            recoveredBlock178Block184PC := 230.
        ].
        recoveredBlock178Block184Step = 230 ifTrue: [
            (recoveredBlock178Block184Stack0) singleSelectionTabStrip: (recoveredBlock178Block184Stack1).
            recoveredBlock178Block184PC := 232.
        ].
        recoveredBlock178Block184Step = 232 ifTrue: [
            recoveredBlock178Block184Stack0 := userInterface.
            recoveredBlock178Block184PC := 234.
        ].
        recoveredBlock178Block184Step = 234 ifTrue: [
            (recoveredBlock178Block184Stack0) updateTreePane.
            recoveredBlock178Block184PC := 236.
        ].
        recoveredBlock178Block184Step = 236 ifTrue: [
            recoveredBlock178Block184Stack0 := nil.
            recoveredBlock178Block184PC := 237.
        ].
        recoveredBlock178Block184Step = 237 ifTrue: [
            recoveredBlock178Block184Stack1 := recoveredLocal1.
            recoveredBlock178Block184PC := 240.
        ].
        recoveredBlock178Block184Step = 240 ifTrue: [
            recoveredBlock178Block184Stack1 := (recoveredBlock178Block184Stack1) isBdSpecification.
            recoveredBlock178Block184PC := 242.
        ].
        recoveredBlock178Block184Step = 242 ifTrue: [
            (recoveredBlock178Block184Stack1) ifTrue: [recoveredBlock178Block184PC := 254] ifFalse: [recoveredBlock178Block184PC := 246].
        ].
        recoveredBlock178Block184Step = 246 ifTrue: [
            recoveredBlock178Block184Stack1 := recoveredLocal1.
            recoveredBlock178Block184PC := 249.
        ].
        recoveredBlock178Block184Step = 249 ifTrue: [
            recoveredBlock178Block184Stack1 := (recoveredBlock178Block184Stack1) isARBdSpecification.
            recoveredBlock178Block184PC := 251.
        ].
        recoveredBlock178Block184Step = 251 ifTrue: [
            (recoveredBlock178Block184Stack1) ifTrue: [recoveredBlock178Block184PC := 254] ifFalse: [recoveredBlock178Block184PC := 259].
        ].
        recoveredBlock178Block184Step = 254 ifTrue: [
            recoveredBlock178Block184PC := 255.
        ].
        recoveredBlock178Block184Step = 255 ifTrue: [
            recoveredBlock178Block184Stack0 := userInterface.
            recoveredBlock178Block184PC := 257.
        ].
        recoveredBlock178Block184Step = 257 ifTrue: [
            recoveredBlock178Block184Stack0 := (recoveredBlock178Block184Stack0) loadMonitors.
            recoveredBlock178Block184PC := 259.
        ].
        recoveredBlock178Block184Step = 259 ifTrue: [
            recoveredBlock178Block184Result := recoveredBlock178Block184Stack0.
            recoveredBlock178Block184Done := true.
        ].
    ].
    recoveredBlock178Block184Result
].
    recoveredBlock178Value1 := (self) suspendObservingForEditorItemWhile: (recoveredBlock178Value0).
    recoveredBlock178Value1
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := 'Loading Block Diagram...'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := SCEtas.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

