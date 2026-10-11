"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002d98; bytecode file offset 0x8ffcfc"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
initInputChecks
    ^self
! !

"ASDBase.ic method 0x2001ba4c; bytecode file offset 0x92209c"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventMenuLabel
    ^'~Event'
! !

"ASDBase.ic method 0x20026bcc; bytecode file offset 0x923928"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
runnableMenuLabel
    ^'~Runnable'
! !

"ASDBase.ic method 0x2002718c; bytecode file offset 0x923a44"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuEventsAssign
    | recoveredValue0 |
    recoveredValue0 := (self) menuEventsAssignSuppressMessage: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002c564; bytecode file offset 0x934580"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isEventAddPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eventSpecificationHandler.
    recoveredValue1 := (recoveredValue0) isEventAddPossible.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034d44; bytecode file offset 0x934580"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
item
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eventSpecificationHandler.
    recoveredValue1 := (recoveredValue0) sofwareComponentItem.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042b3c; bytecode file offset 0x9451f8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
modeListWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('modes').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20042ccc; bytecode file offset 0x9451f8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventListWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('eventList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044c6c; bytecode file offset 0x9451f8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
runnableEventListWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('runnableEventList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044c9c; bytecode file offset 0x9451f8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventTypeWidgetForm
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('eventTypeWidgetForm').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200473ac; bytecode file offset 0x9451f8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventTypeWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('eventType').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005d134; bytecode file offset 0x9599f4"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isAssignModeTogglePossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ARModeVarNode.
    recoveredValue1 := (self) selectedEventNodesOnly: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) notEmpty.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006df90; bytecode file offset 0x96a9dc"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventSpecificationHandler
    | recoveredValue0 |
    recoveredValue0 := eventSpecificationHandler.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aed0c; bytecode file offset 0x9ab6a8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
runnableEventListChildrenCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) getViewChildrenRunnableList.
    (recoveredValue0) children: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200aed84; bytecode file offset 0x9ab6a8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventListChildrenCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) getViewChildrenEventList.
    (recoveredValue0) children: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c45e0; bytecode file offset 0x9c11bc"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventSpecificationHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eventSpecificationHandler := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c49cc; bytecode file offset 0x9c16b0"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
selectElementInEventSpecCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectElementInEventSpecCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ddac8; bytecode file offset 0x9da3a4"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
runnableEventListVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) getUserInterface.
    recoveredValue4 := (recoveredValue3) resourceManager.
    (recoveredValue1) visualCallDataRunnableList: (recoveredValue2) resourceManager: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ddae0; bytecode file offset 0x9da3a4"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventListVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) getUserInterface.
    recoveredValue4 := (recoveredValue3) resourceManager.
    (recoveredValue1) visualCallDataEventList: (recoveredValue2) resourceManager: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200de6a4; bytecode file offset 0x9dafa0"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
assignEventActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssignEventsPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) menuEventsAssign.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200de6b4; bytecode file offset 0x9dafa0"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
deassignEventActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeassignEventsPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) menuDeassignEvents.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f9738; bytecode file offset 0x9f6020"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isInsertPossible
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventAddPossible.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f974c; bytecode file offset 0x9f6020"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isDeletePossible
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventDeletePossible.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f9760; bytecode file offset 0x9f6020"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isRenamePossible
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventRenamePossible.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f97a8; bytecode file offset 0x9f6090"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuEditInsertFocus
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuEventAdd.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f97bc; bytecode file offset 0x9f6090"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuEditRenameFocus
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuEventRename.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f97d0; bytecode file offset 0x9f6090"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuEditDeleteFocus
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuEventDelete.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fd3dc; bytecode file offset 0x9f9c9c"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
updateMenuBar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createEventMenu.
    (recoveredValue0) addMenu: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createRunnableMenu.
    (recoveredValue2) addMenu: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012e4ec; bytecode file offset 0xa2b0c4"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
selectedEventNodes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ca824Arg1 | 
    | block280ca824Value0 block280ca824Value1 |
    block280ca824Value0 := block280ca824Arg1.
    block280ca824Value1 := (block280ca824Value0) getEventNode.
    block280ca824Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015d6dc; bytecode file offset 0xa59fd8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
selectElementInEventSpecCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectElementInEventSpecCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) selectElementInEventSpecCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := selectElementInEventSpecCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20168184; bytecode file offset 0xa64a50"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
runnableMenu: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) runnableMenuLabel.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) menuAtTitle: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20168194; bytecode file offset 0xa64a50"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventMenu: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) eventMenuLabel.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) menuAtTitle: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201703dc; bytecode file offset 0xa6cca8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
updateAssignButtonsSensitive
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetAt: ('assignEvent').
    recoveredValue1 := (self) isAssignEventsPossible.
    (recoveredValue0) sensitive: (recoveredValue1).
    recoveredValue2 := (self) widgetAt: ('deassignEvent').
    recoveredValue3 := (self) isDeassignEventsPossible.
    (recoveredValue2) sensitive: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201722e4; bytecode file offset 0xa6ebb4"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
selectedEvents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cefdcArg1 | 
    | block280cefdcValue0 block280cefdcValue1 |
    block280cefdcValue0 := block280cefdcArg1.
    block280cefdcValue1 := (block280cefdcValue0) getEvent.
    block280cefdcValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20179714; bytecode file offset 0xa75fd8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
runnableEventListDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelectInEventlistPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) menuSelectInEventList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) expandCollapsePos: (recoveredStack1) notify: (recoveredStack2).
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

"ASDBase.ic method 0x2017a5f0; bytecode file offset 0xa76eb4"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isSelectInEventlistPossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AREventNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedRunnableNodesOnly: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20199034; bytecode file offset 0xa95900"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isEventEditPossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AREventNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodesOnly: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventSpecificationHandler.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventEditPossible: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cfb7c; bytecode file offset 0xacc444"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventListDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventRenamePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) menuEventRename.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) handleDoubleClickAction: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) refreshItem: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201db858; bytecode file offset 0xad813c"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuIDForSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getUserInterface.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) menuIDForSelector: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    (self) etasDevHaltFor: ('bfr9fe').
    ^0
! !

"ASDBase.ic method 0x201dde08; bytecode file offset 0xada6d0"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuDeassignEvents
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeassignEventsPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := AREventNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedRunnableNodesOnly: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) eventsDeassignEvents: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eb8f4; bytecode file offset 0xae81e0"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isEventDeletePossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AREventNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodesOnly: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280d764cArg1 | 
    | block280d764cValue0 block280d764cValue1 |
    block280d764cValue0 := block280d764cArg1.
    block280d764cValue1 := (block280d764cValue0) isEventDeletePossible.
    block280d764cValue1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eb914; bytecode file offset 0xae81e0"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isDeassignEventsPossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AREventNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedRunnableNodesOnly: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280d7670Arg1 | 
    | block280d7670Value0 block280d7670Value1 |
    block280d7670Value0 := block280d7670Arg1.
    block280d7670Value1 := (block280d7670Value0) isDeassignEventPossible.
    block280d7670Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fa374; bytecode file offset 0xaf6c34"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
removeDynamicSpecMenusFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventMenu: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) removeMenu: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableMenu: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) removeMenu: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020596c; bytecode file offset 0xb02238"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isAssignModeToModeSwitchPossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ARModeVarNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodesOnly: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280d9758Arg1 | 
    | block280d9758Value0 block280d9758Value1 |
    block280d9758Value0 := block280d9758Arg1.
    block280d9758Value1 := (block280d9758Value0) isAssignDisabledModeToModeSwitchPossible.
    block280d9758Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20219408; bytecode file offset 0xb15cdc"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
getSortedRunnables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280db018Arg1 | 
    | block280db018Value0 block280db018Value1 |
    block280db018Value0 := block280db018Arg1.
    block280db018Value1 := (block280db018Value0) isRunnable.
    block280db018Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280db03cArg1 :block280db03cArg2 | 
    | block280db03cValue0 block280db03cValue1 block280db03cValue2 block280db03cValue3 block280db03cValue4 |
    block280db03cValue0 := block280db03cArg1.
    block280db03cValue1 := (block280db03cValue0) label.
    block280db03cValue2 := block280db03cArg2.
    block280db03cValue3 := (block280db03cValue2) label.
    block280db03cValue4 := (block280db03cValue1) < (block280db03cValue3).
    block280db03cValue4
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022b358; bytecode file offset 0xb27c28"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuEventRename
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventRenamePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventListWidget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSelectedPos.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) editItemAt: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) updateAssignButtonsSensitive.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202396b8; bytecode file offset 0xb35f94"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
runnableEventListExtendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) updateAssignButtonsSensitive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) updateEventWidgets.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EtasElementInEventSpecCallbackData.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) longLabel.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := EtasSelectElementInEventSpec.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023a03c; bytecode file offset 0xb36910"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
updateRunnableEventList
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) getSortedRunnables.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := ARRunnableNode.
    recoveredBlock7Value1 := (self) eventSpecificationHandler.
    recoveredBlock7Value2 := (recoveredBlock7Value0) createWithHandler: (recoveredBlock7Value1).
    recoveredBlock7Value3 := recoveredBlock7Value2.
    recoveredBlock7Value4 := recoveredBlock7Arg1.
    (recoveredBlock7Value3) runnable: (recoveredBlock7Value4).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue1) collect: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) runnableEventListWidget.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) items: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2024e630; bytecode file offset 0xb4af00"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuEventAdd
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventAddPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) eventSpecificationHandler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEventNamed: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) updateEventList.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) selectEvent: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) menuEventRename.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) updateAssignButtonsSensitive.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202598b4; bytecode file offset 0xb5618c"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuSelectInEventList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelectInEventlistPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := AREventNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedRunnableNodesOnly: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20264114; bytecode file offset 0xb609e4"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isEventRenamePossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AREventNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodesOnly: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := [:block280dfe48Arg1 | 
    | block280dfe48Value0 block280dfe48Value1 |
    block280dfe48Value0 := block280dfe48Arg1.
    block280dfe48Value1 := (block280dfe48Value0) isRenamePossible.
    block280dfe48Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20272a58; bytecode file offset 0xb6f338"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventListSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) updateAssignButtonsSensitive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) refreshItem: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) updateEventWidgets.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasElementInEventSpecCallbackData.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) longLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := EtasSelectElementInEventSpec.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20277f7c; bytecode file offset 0xb74868"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
selectedRunnableNodesOnly: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableEventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) class.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) ~= (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280e0fb8Arg1 | 
    #()
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := (self) runnableEventListWidget.
    recoveredBlock27Value1 := (recoveredBlock27Value0) selectedItems.
    recoveredBlock27Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifOne: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20277f9c; bytecode file offset 0xb74868"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
selectedEventNodesOnly: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) class.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) ~= (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280e0fdcArg1 | 
    #()
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := (self) eventListWidget.
    recoveredBlock27Value1 := (recoveredBlock27Value0) selectedItems.
    recoveredBlock27Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifOne: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a66d4; bytecode file offset 0xba2fa4"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventEdited: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEventNode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) eventListWidget.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) refreshNodeForEvent: (recoveredStack1) expandNode: (recoveredStack2) setSelectionToEvent: (recoveredStack3) widget: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEventNode.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) runnableEventListWidget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) refreshNodeForEvent: (recoveredStack1) expandNode: (recoveredStack2) setSelectionToEvent: (recoveredStack3) widget: (recoveredStack4).
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

"ASDBase.ic method 0x202a7a90; bytecode file offset 0xba4358"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
selectedSpecialEventNodes: recoveredArg1 widget: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) value: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedItems.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ae96c; bytecode file offset 0xbab238"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
selectEvent: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) eventListWidget.
    recoveredValue1 := (recoveredValue0) items.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) getEvent.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) eventListWidget.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) deselectAllItems.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) selectItem: (recoveredValue7) notify: (true).
    ^self
! !

"ASDBase.ic method 0x202afc40; bytecode file offset 0xbac570"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventOver: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceModel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := XmTARGETEMPHASIS.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) emphasis: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := XmCOPY.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) vote: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := XmILLEGAL.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) vote: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202bab80; bytecode file offset 0xbb744c"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventDropToEventList: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceModel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'assignedEvent'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceItems.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) eventsDeassignEvents: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c3b98; bytecode file offset 0xbc0474"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
isAssignEventsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AREventNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodesOnly: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280e523cArg1 | 
    | block280e523cValue0 block280e523cValue1 block280e523cValue2 |
    block280e523cValue0 := block280e523cArg1.
    block280e523cValue1 := (block280e523cValue0) isAssignEventPossible.
    block280e523cValue2 := (block280e523cValue1) not.
    block280e523cValue2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := AREventNode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedEventNodesOnly: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ARRunnableNode.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedRunnableNodesOnly: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d7b8c; bytecode file offset 0xbd4470"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
updateEventList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventSpecificationHandler.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) events.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := AREventNode.
    recoveredBlock8Value1 := (self) eventSpecificationHandler.
    recoveredBlock8Value2 := (recoveredBlock8Value0) createWithHandler: (recoveredBlock8Value1).
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) arEvent: (recoveredBlock8Value4).
    recoveredBlock8Value2
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block280e643cArg1 :block280e643cArg2 | 
    | block280e643cValue0 block280e643cValue1 block280e643cValue2 block280e643cValue3 block280e643cValue4 block280e643cValue5 block280e643cValue6 |
    block280e643cValue0 := block280e643cArg1.
    block280e643cValue1 := (block280e643cValue0) getEvent.
    block280e643cValue2 := (block280e643cValue1) name.
    block280e643cValue3 := block280e643cArg2.
    block280e643cValue4 := (block280e643cValue3) getEvent.
    block280e643cValue5 := (block280e643cValue4) name.
    block280e643cValue6 := (block280e643cValue2) < (block280e643cValue5).
    block280e643cValue6
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e12ac; bytecode file offset 0xbddb94"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) eventListWidget.
    recoveredValue1 := XmTOGETHER.
    (recoveredValue0) emphasisPolicy: (recoveredValue1).
    recoveredValue2 := (self) runnableEventListWidget.
    recoveredValue3 := XmTOGETHER.
    (recoveredValue2) emphasisPolicy: (recoveredValue3).
    (self) updateFonts.
    (self) initInputChecks.
    recoveredValue4 := (self) eventListWidget.
    recoveredValue5 := (self) createEventMenu.
    (recoveredValue4) menu: (recoveredValue5) owner: (self).
    recoveredValue6 := (self) runnableEventListWidget.
    recoveredValue7 := (self) createRunnableMenu.
    (recoveredValue6) menu: (recoveredValue7) owner: (self).
    recoveredValue8 := ('hw') == ('unfinished').
    (self) initDragAndDrop.
    (self) updateAssignButtonsSensitive.
    ^self
! !

"ASDBase.ic method 0x202e2704; bytecode file offset 0xbdefd8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
refreshNodesForRunnables: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) runnableEventListWidget.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) indexOf: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack3 := 0.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) ~= (recoveredBlock5Stack3).
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 26] ifFalse: [recoveredBlock5PC := 47].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) eventListWidget.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            (recoveredBlock5Stack1) refreshPos: (recoveredBlock5Stack2).
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) runnableEventListWidget.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            (recoveredBlock5Stack1) refreshHierarchyPos: (recoveredBlock5Stack2).
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) runnableEventListWidget.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack3 := true.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            (recoveredBlock5Stack1) expandPos: (recoveredBlock5Stack2) notify: (recoveredBlock5Stack3).
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) runnableEventListWidget.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) deselectAllItems.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202f21b4; bytecode file offset 0xbeea98"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventListBeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventRenamePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEvent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := EwTextEditPolicy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) selection: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) editPolicy: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f8700; bytecode file offset 0xbf4fd8"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
selectEventNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('hw') == ('call_81820').
    recoveredValue1 := (self) eventListWidget.
    recoveredValue2 := (recoveredValue1) items.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) getEvent.
    recoveredBlock12Value2 := (recoveredBlock12Value1) name.
    recoveredBlock12Value3 := recoveredArg1.
    recoveredBlock12Value4 := (recoveredBlock12Value2) equals: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue2) detect: (recoveredValue3) ifNone: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) eventListWidget.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) selectItem: (recoveredValue7) notify: (true).
    ^self
! !

"ASDBase.ic method 0x203008e4; bytecode file offset 0xbfd1c4"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventsDeassignEvents: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    (recoveredBlock13Value0) deassignEvent.
    recoveredBlock13Value1 := recoveredLocal1.
    recoveredBlock13Value2 := recoveredBlock13Arg1.
    recoveredBlock13Value3 := (recoveredBlock13Value2) getRunnableNode.
    recoveredBlock13Value4 := (recoveredBlock13Value1) add: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) refreshNodesForRunnables: (recoveredValue4).
    recoveredValue5 := (self) runnableEventListWidget.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) deselectAllItems.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) selectedItems: (recoveredValue7).
    (self) updateAssignButtonsSensitive.
    ^self
! !

"ASDBase.ic method 0x20322a24; bytecode file offset 0xc1f300"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
updateContents
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) eventListWidget.
    recoveredValue1 := (recoveredValue0) returnCurrentListState.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) runnableEventListWidget.
    recoveredValue3 := (recoveredValue2) returnCurrentListState.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) eventListWidget.
    recoveredValue5 := (recoveredValue4) selectedItems.
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := (self) runnableEventListWidget.
    recoveredValue7 := (recoveredValue6) selectedItems.
    recoveredLocal3 := recoveredValue7.
    (self) updateEventList.
    (self) updateRunnableEventList.
    (self) updateEventWidgets.
    recoveredValue8 := (self) eventListWidget.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue8) updateFromListState: (recoveredValue9) notify: (true).
    recoveredValue10 := (self) runnableEventListWidget.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) updateFromListState: (recoveredValue11) notify: (true).
    recoveredValue12 := (self) eventListWidget.
    recoveredValue13 := recoveredValue12.
    (recoveredValue13) deselectAllItems.
    recoveredValue14 := recoveredLocal4.
    (recoveredValue12) selectedItems: (recoveredValue14).
    recoveredValue15 := (self) runnableEventListWidget.
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) deselectAllItems.
    recoveredValue17 := recoveredLocal3.
    (recoveredValue15) selectedItems: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x2032d274; bytecode file offset 0xc29b60"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventListEndEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAnsiCNameCallData: (recoveredStack1).
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
            recoveredStack0 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventRenamePossible.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'call_80574'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) renameEvent: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) updateEventList.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEvent.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) selectEvent: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableEventListWidget.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := (self) runnableEventListWidget.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value0) refreshItem: (recoveredBlock44Value1).
    recoveredBlock44Value2
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) itemsDo: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20340084; bytecode file offset 0xc3c958"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
refreshNodeForEvent: recoveredArg1 expandNode: recoveredArg2 setSelectionToEvent: recoveredArg3 widget: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) deselectAllItems.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventListWidget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) refreshHierarchyPos: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) expandPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) deselectAllItems.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) selectItem: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20356454; bytecode file offset 0xc52d3c"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventTypeSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) eventSpecificationHandler.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEvent.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setEvent: (recoveredStack1) toType: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateEventWidgets.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateAssignButtonsSensitive.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEventNode.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) eventListWidget.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) refreshNodeForEvent: (recoveredStack1) expandNode: (recoveredStack2) setSelectionToEvent: (recoveredStack3) widget: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEventNode.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) runnableEventListWidget.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) refreshNodeForEvent: (recoveredStack1) expandNode: (recoveredStack2) setSelectionToEvent: (recoveredStack3) widget: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20357924; bytecode file offset 0xc54204"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
buttonPress: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := VkLbutton.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleItemNodes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 recoveredBlock20Value9 recoveredBlock20Value10 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) iconBox.
    recoveredBlock20Value2 := recoveredArg3.
    recoveredBlock20Value3 := (recoveredBlock20Value2) x.
    recoveredBlock20Value4 := recoveredArg3.
    recoveredBlock20Value5 := (recoveredBlock20Value4) y.
    recoveredBlock20Value6 := recoveredBlock20Arg1.
    recoveredBlock20Value7 := (recoveredBlock20Value6) top.
    recoveredBlock20Value8 := (recoveredBlock20Value5) - (recoveredBlock20Value7).
    recoveredBlock20Value9 := (recoveredBlock20Value3) @ (recoveredBlock20Value8).
    recoveredBlock20Value10 := (recoveredBlock20Value1) containsPoint: (recoveredBlock20Value9).
    recoveredBlock20Value10
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) menuToggleAssignMode.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a00f4; bytecode file offset 0xc9c9dc"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuAssignModeToModeSwitch
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssignModeToModeSwitchPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := ARModeVarNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodesOnly: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block280f4320Arg1 | 
    | block280f4320Value0 block280f4320Value1 |
    block280f4320Value0 := block280f4320Arg1.
    block280f4320Value1 := (block280f4320Value0) assignModeToModeSwitch.
    block280f4320Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) getEventNode.
    recoveredBlock35Value2 := (self) eventListWidget.
    (self) refreshNodeForEvent: (recoveredBlock35Value1) expandNode: (false) setSelectionToEvent: (false) widget: (recoveredBlock35Value2).
    recoveredBlock35Value3 := recoveredBlock35Arg1.
    recoveredBlock35Value4 := (recoveredBlock35Value3) getEventNode.
    recoveredBlock35Value5 := (self) runnableEventListWidget.
    recoveredBlock35Value6 := (self) refreshNodeForEvent: (recoveredBlock35Value4) expandNode: (false) setSelectionToEvent: (false) widget: (recoveredBlock35Value5).
    recoveredBlock35Value6
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) updateEventWidgets.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) updateAssignButtonsSensitive.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b0314; bytecode file offset 0xcacc08"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
createRunnableMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) owner: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) runnableMenuLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'menuDeassignEvents'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 'Deassi~gn Event'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := (self) isDeassignEventsPossible.
    recoveredBlock23Value0
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'menuSelectInEventList'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := 'Select in Events'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock53Value0 |
    recoveredBlock53Value0 := (self) isSelectInEventlistPossible.
    recoveredBlock53Value0
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2043e344; bytecode file offset 0xd3ac40"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
initDragAndDrop
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := EwSourceAdapter.
    recoveredValue1 := (self) eventListWidget.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredValue3 := XmNdragStartCallback.
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('eventDragStart:clientData:callData:') clientData: ('event').
    recoveredValue4 := EwSourceAdapter.
    recoveredValue5 := (self) runnableEventListWidget.
    recoveredValue6 := (recoveredValue4) on: (recoveredValue5).
    recoveredValue7 := XmNdragStartCallback.
    (recoveredValue6) addCallback: (recoveredValue7) receiver: (self) selector: ('eventDragStart:clientData:callData:') clientData: ('assignedEvent').
    recoveredValue8 := EwTargetAdapter.
    recoveredValue9 := (self) eventListWidget.
    recoveredValue10 := (recoveredValue8) on: (recoveredValue9).
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := XmNdragOverCallback.
    recoveredValue13 := Array.
    recoveredValue14 := (recoveredValue13) with: ('assignedEvent').
    (recoveredValue11) addCallback: (recoveredValue12) receiver: (self) selector: ('eventOver:clientData:callData:') clientData: (recoveredValue14).
    recoveredValue15 := XmNdropCallback.
    recoveredValue16 := Array.
    recoveredValue17 := (recoveredValue16) with: ('assignedEvent').
    (recoveredValue10) addCallback: (recoveredValue15) receiver: (self) selector: ('eventDropToEventList:clientData:callData:') clientData: (recoveredValue17).
    recoveredValue18 := EwTargetAdapter.
    recoveredValue19 := (self) runnableEventListWidget.
    recoveredValue20 := (recoveredValue18) on: (recoveredValue19).
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := XmNdragOverCallback.
    recoveredValue23 := Array.
    recoveredValue24 := (recoveredValue23) with: ('event') with: ('assignedEvent').
    (recoveredValue21) addCallback: (recoveredValue22) receiver: (self) selector: ('eventOver:clientData:callData:') clientData: (recoveredValue24).
    recoveredValue25 := XmNdropCallback.
    recoveredValue26 := Array.
    recoveredValue27 := (recoveredValue26) with: ('event') with: ('assignedEvent').
    (recoveredValue20) addCallback: (recoveredValue25) receiver: (self) selector: ('eventDropToRunnableList:clientData:callData:') clientData: (recoveredValue27).
    ^self
! !

"ASDBase.ic method 0x20444854; bytecode file offset 0xd4114c"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuToggleAssignMode
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssignModeTogglePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := ARModeVarNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodesOnly: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := (recoveredBlock27Value0) first.
    recoveredBlock27Value2 := (recoveredBlock27Value1) isAssigned.
    recoveredBlock27Value3 := (recoveredBlock27Value2) not.
    recoveredLocal2 := recoveredBlock27Value3.
    recoveredBlock27Value4 := recoveredLocal1.
    recoveredBlock27Value5 := [:recoveredBlock27Block48Arg1 | 
    | recoveredBlock27Block48Stack0 recoveredBlock27Block48Stack1 recoveredBlock27Block48Stack2 recoveredBlock27Block48Stack3 recoveredBlock27Block48PC recoveredBlock27Block48Step recoveredBlock27Block48Done recoveredBlock27Block48Result |
    recoveredBlock27Block48Stack0 := self.
    recoveredBlock27Block48PC := 54.
    recoveredBlock27Block48Done := false.
    [recoveredBlock27Block48Done not] whileTrue: [
        recoveredBlock27Block48Step := recoveredBlock27Block48PC.
        recoveredBlock27Block48Step = 54 ifTrue: [
            recoveredBlock27Block48Stack1 := recoveredBlock27Block48Arg1.
            recoveredBlock27Block48PC := 55.
        ].
        recoveredBlock27Block48Step = 55 ifTrue: [
            recoveredBlock27Block48Stack2 := recoveredLocal2.
            recoveredBlock27Block48PC := 58.
        ].
        recoveredBlock27Block48Step = 58 ifTrue: [
            (recoveredBlock27Block48Stack1) toggleAssignmentTo: (recoveredBlock27Block48Stack2).
            recoveredBlock27Block48PC := 60.
        ].
        recoveredBlock27Block48Step = 60 ifTrue: [
            recoveredBlock27Block48Stack0 := (recoveredBlock27Block48Stack0) eventListWidget.
            recoveredBlock27Block48PC := 62.
        ].
        recoveredBlock27Block48Step = 62 ifTrue: [
            recoveredBlock27Block48Stack1 := recoveredBlock27Block48Arg1.
            recoveredBlock27Block48PC := 63.
        ].
        recoveredBlock27Block48Step = 63 ifTrue: [
            (recoveredBlock27Block48Stack0) refreshItem: (recoveredBlock27Block48Stack1).
            recoveredBlock27Block48PC := 65.
        ].
        recoveredBlock27Block48Step = 65 ifTrue: [
            recoveredBlock27Block48Stack0 := nil.
            recoveredBlock27Block48PC := 66.
        ].
        recoveredBlock27Block48Step = 66 ifTrue: [
            recoveredBlock27Block48Stack1 := self.
            recoveredBlock27Block48PC := 67.
        ].
        recoveredBlock27Block48Step = 67 ifTrue: [
            recoveredBlock27Block48Stack1 := (recoveredBlock27Block48Stack1) runnableEventListWidget.
            recoveredBlock27Block48PC := 69.
        ].
        recoveredBlock27Block48Step = 69 ifTrue: [
            recoveredBlock27Block48Stack2 := recoveredBlock27Block48Arg1.
            recoveredBlock27Block48PC := 70.
        ].
        recoveredBlock27Block48Step = 70 ifTrue: [
            recoveredBlock27Block48Stack2 := (recoveredBlock27Block48Stack2) getEventNode.
            recoveredBlock27Block48PC := 72.
        ].
        recoveredBlock27Block48Step = 72 ifTrue: [
            recoveredBlock27Block48Stack1 := (recoveredBlock27Block48Stack1) indexOfItem: (recoveredBlock27Block48Stack2).
            recoveredBlock27Block48PC := 74.
        ].
        recoveredBlock27Block48Step = 74 ifTrue: [
            recoveredBlock27Block48Stack2 := recoveredBlock27Block48Stack1.
            recoveredBlock27Block48PC := 75.
        ].
        recoveredBlock27Block48Step = 75 ifTrue: [
            recoveredLocal3 := recoveredBlock27Block48Stack2.
            recoveredBlock27Block48PC := 78.
        ].
        recoveredBlock27Block48Step = 78 ifTrue: [
            recoveredBlock27Block48Stack2 := 0.
            recoveredBlock27Block48PC := 80.
        ].
        recoveredBlock27Block48Step = 80 ifTrue: [
            recoveredBlock27Block48Stack1 := (recoveredBlock27Block48Stack1) ~= (recoveredBlock27Block48Stack2).
            recoveredBlock27Block48PC := 81.
        ].
        recoveredBlock27Block48Step = 81 ifTrue: [
            (recoveredBlock27Block48Stack1) ifTrue: [recoveredBlock27Block48PC := 84] ifFalse: [recoveredBlock27Block48PC := 101].
        ].
        recoveredBlock27Block48Step = 84 ifTrue: [
            recoveredBlock27Block48PC := 85.
        ].
        recoveredBlock27Block48Step = 85 ifTrue: [
            recoveredBlock27Block48Stack0 := self.
            recoveredBlock27Block48PC := 86.
        ].
        recoveredBlock27Block48Step = 86 ifTrue: [
            recoveredBlock27Block48Stack0 := (recoveredBlock27Block48Stack0) runnableEventListWidget.
            recoveredBlock27Block48PC := 88.
        ].
        recoveredBlock27Block48Step = 88 ifTrue: [
            recoveredBlock27Block48Stack1 := recoveredLocal3.
            recoveredBlock27Block48PC := 91.
        ].
        recoveredBlock27Block48Step = 91 ifTrue: [
            (recoveredBlock27Block48Stack0) refreshPos: (recoveredBlock27Block48Stack1).
            recoveredBlock27Block48PC := 93.
        ].
        recoveredBlock27Block48Step = 93 ifTrue: [
            recoveredBlock27Block48Stack0 := self.
            recoveredBlock27Block48PC := 94.
        ].
        recoveredBlock27Block48Step = 94 ifTrue: [
            recoveredBlock27Block48Stack0 := (recoveredBlock27Block48Stack0) runnableEventListWidget.
            recoveredBlock27Block48PC := 96.
        ].
        recoveredBlock27Block48Step = 96 ifTrue: [
            recoveredBlock27Block48Stack1 := recoveredLocal3.
            recoveredBlock27Block48PC := 99.
        ].
        recoveredBlock27Block48Step = 99 ifTrue: [
            recoveredBlock27Block48Stack0 := (recoveredBlock27Block48Stack0) refreshHierarchyPos: (recoveredBlock27Block48Stack1).
            recoveredBlock27Block48PC := 101.
        ].
        recoveredBlock27Block48Step = 101 ifTrue: [
            recoveredBlock27Block48Result := recoveredBlock27Block48Stack0.
            recoveredBlock27Block48Done := true.
        ].
    ].
    recoveredBlock27Block48Result
].
    recoveredBlock27Value6 := (recoveredBlock27Value4) do: (recoveredBlock27Value5).
    recoveredBlock27Value6
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) suspendObserving: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204458a8; bytecode file offset 0xd4218c"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventDropToRunnableList: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceModel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'event'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'assignedEvent'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceItems.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetItem.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRunnableNode.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEventNode.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRunnableNode.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 109] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) eventsAssignEvents: (recoveredStack2) toRunnables: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204752b0; bytecode file offset 0xd71bb0"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventsAssignEvents: recoveredArg1 toRunnables: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) runnableEventListWidget.
    recoveredValue3 := (recoveredValue2) items.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := [:recoveredBlock12Block21Arg1 | 
    | recoveredBlock12Block21Stack0 recoveredBlock12Block21Stack1 recoveredBlock12Block21Stack2 recoveredBlock12Block21Stack3 recoveredBlock12Block21Stack4 recoveredBlock12Block21PC recoveredBlock12Block21Step recoveredBlock12Block21Done recoveredBlock12Block21Result |
    recoveredBlock12Block21Stack0 := self.
    recoveredBlock12Block21PC := 28.
    recoveredBlock12Block21Done := false.
    [recoveredBlock12Block21Done not] whileTrue: [
        recoveredBlock12Block21Step := recoveredBlock12Block21PC.
        recoveredBlock12Block21Step = 28 ifTrue: [
            recoveredBlock12Block21Stack1 := nil.
            recoveredBlock12Block21PC := 29.
        ].
        recoveredBlock12Block21Step = 29 ifTrue: [
            recoveredBlock12Block21Stack2 := self.
            recoveredBlock12Block21PC := 30.
        ].
        recoveredBlock12Block21Step = 30 ifTrue: [
            recoveredBlock12Block21Stack2 := (recoveredBlock12Block21Stack2) eventSpecificationHandler.
            recoveredBlock12Block21PC := 32.
        ].
        recoveredBlock12Block21Step = 32 ifTrue: [
            recoveredBlock12Block21Stack3 := recoveredBlock12Arg1.
            recoveredBlock12Block21PC := 35.
        ].
        recoveredBlock12Block21Step = 35 ifTrue: [
            recoveredBlock12Block21Stack3 := (recoveredBlock12Block21Stack3) getRunnable.
            recoveredBlock12Block21PC := 37.
        ].
        recoveredBlock12Block21Step = 37 ifTrue: [
            recoveredBlock12Block21Stack2 := (recoveredBlock12Block21Stack2) eventsForRunnable: (recoveredBlock12Block21Stack3).
            recoveredBlock12Block21PC := 39.
        ].
        recoveredBlock12Block21Step = 39 ifTrue: [
            recoveredBlock12Block21Stack3 := recoveredBlock12Block21Arg1.
            recoveredBlock12Block21PC := 40.
        ].
        recoveredBlock12Block21Step = 40 ifTrue: [
            recoveredBlock12Block21Stack3 := (recoveredBlock12Block21Stack3) getEvent.
            recoveredBlock12Block21PC := 42.
        ].
        recoveredBlock12Block21Step = 42 ifTrue: [
            recoveredBlock12Block21Stack2 := (recoveredBlock12Block21Stack2) includes: (recoveredBlock12Block21Stack3).
            recoveredBlock12Block21PC := 44.
        ].
        recoveredBlock12Block21Step = 44 ifTrue: [
            (recoveredBlock12Block21Stack2) ifTrue: [recoveredBlock12Block21PC := 48] ifFalse: [recoveredBlock12Block21PC := 57].
        ].
        recoveredBlock12Block21Step = 48 ifTrue: [
            recoveredBlock12Block21PC := 49.
        ].
        recoveredBlock12Block21Step = 49 ifTrue: [
            recoveredBlock12Block21Stack1 := recoveredLocal2.
            recoveredBlock12Block21PC := 52.
        ].
        recoveredBlock12Block21Step = 52 ifTrue: [
            recoveredBlock12Block21Stack2 := recoveredBlock12Arg1.
            recoveredBlock12Block21PC := 55.
        ].
        recoveredBlock12Block21Step = 55 ifTrue: [
            recoveredBlock12Block21Stack1 := (recoveredBlock12Block21Stack1) add: (recoveredBlock12Block21Stack2).
            recoveredBlock12Block21PC := 57.
        ].
        recoveredBlock12Block21Step = 57 ifTrue: [
            recoveredBlock12Block21Result := recoveredBlock12Block21Stack1.
            recoveredBlock12Block21Done := true.
        ].
    ].
    recoveredBlock12Block21Result
].
    recoveredBlock12Value2 := (recoveredBlock12Value0) do: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) someElement.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 |
    recoveredBlock74Value0 := recoveredBlock74Arg1.
    recoveredBlock74Value1 := recoveredLocal1.
    recoveredBlock74Value2 := (recoveredBlock74Value0) assignRunnable: (recoveredBlock74Value1).
    recoveredBlock74Value2
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := (self) runnableEventListWidget.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) deselectAllItems.
    (recoveredValue9) selectedItems: (#()).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue11) , (recoveredValue12).
    (self) refreshNodesForRunnables: (recoveredValue13).
    recoveredValue14 := (self) runnableEventListWidget.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) deselectAllItems.
    recoveredValue16 := recoveredArg2.
    (recoveredValue14) selectedItems: (recoveredValue16).
    (self) updateAssignButtonsSensitive.
    ^self
! !

"ASDBase.ic method 0x204789bc; bytecode file offset 0xd752d0"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuEventDelete
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventDeletePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := AREventNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodesOnly: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32Stack5 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            (recoveredBlock32Stack1) deleteEvent.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32Stack2 := self.
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) runnableEventListWidget.
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) visibleItemNodes.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack3 := [:recoveredBlock32Block49Arg1 | 
    | recoveredBlock32Block49Value0 recoveredBlock32Block49Value1 recoveredBlock32Block49Value2 recoveredBlock32Block49Value3 |
    recoveredBlock32Block49Value0 := recoveredBlock32Block49Arg1.
    recoveredBlock32Block49Value1 := (recoveredBlock32Block49Value0) item.
    recoveredBlock32Block49Value2 := recoveredBlock32Arg1.
    recoveredBlock32Block49Value3 := (recoveredBlock32Block49Value1) = (recoveredBlock32Block49Value2).
    recoveredBlock32Block49Value3
].
            recoveredBlock32PC := 64.
        ].
        recoveredBlock32Step = 64 ifTrue: [
            recoveredBlock32Stack4 := [].
            recoveredBlock32PC := 66.
        ].
        recoveredBlock32Step = 66 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) detect: (recoveredBlock32Stack3) ifNone: (recoveredBlock32Stack4).
            recoveredBlock32PC := 68.
        ].
        recoveredBlock32Step = 68 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 69.
        ].
        recoveredBlock32Step = 69 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack3.
            recoveredBlock32PC := 72.
        ].
        recoveredBlock32Step = 72 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 89] ifFalse: [recoveredBlock32PC := 76].
        ].
        recoveredBlock32Step = 76 ifTrue: [
            recoveredBlock32PC := 77.
        ].
        recoveredBlock32Step = 77 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 80.
        ].
        recoveredBlock32Step = 80 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 83.
        ].
        recoveredBlock32Step = 83 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) item.
            recoveredBlock32PC := 85.
        ].
        recoveredBlock32Step = 85 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) getRunnableNode.
            recoveredBlock32PC := 87.
        ].
        recoveredBlock32Step = 87 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 89.
        ].
        recoveredBlock32Step = 89 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) updateEventList.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventListWidget.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) deselectAllItems.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) updateEventWidgets.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) refreshNodesForRunnables: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) updateAssignButtonsSensitive.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20537228; bytecode file offset 0xe33b60"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
menuEventsAssignSuppressMessage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssignEventsPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := ARRunnableNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedRunnableNodesOnly: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := AREventNode.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodesOnly: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43Stack5 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := false.
            recoveredBlock43PC := 51.
        ].
        recoveredBlock43Step = 51 ifTrue: [
            recoveredBlock43Stack2 := self.
            recoveredBlock43PC := 52.
        ].
        recoveredBlock43Step = 52 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) getSortedRunnables.
            recoveredBlock43PC := 54.
        ].
        recoveredBlock43Step = 54 ifTrue: [
            recoveredBlock43Stack3 := [:recoveredBlock43Block54Arg1 | 
    | recoveredBlock43Block54Value0 recoveredBlock43Block54Value1 recoveredBlock43Block54Value2 recoveredBlock43Block54Value3 recoveredBlock43Block54Value4 recoveredBlock43Block54Value5 |
    recoveredBlock43Block54Value0 := (self) eventSpecificationHandler.
    recoveredBlock43Block54Value1 := recoveredBlock43Block54Arg1.
    recoveredBlock43Block54Value2 := (recoveredBlock43Block54Value0) eventsForRunnable: (recoveredBlock43Block54Value1).
    recoveredBlock43Block54Value3 := recoveredBlock43Arg1.
    recoveredBlock43Block54Value4 := (recoveredBlock43Block54Value3) getEvent.
    recoveredBlock43Block54Value5 := (recoveredBlock43Block54Value2) includes: (recoveredBlock43Block54Value4).
    recoveredBlock43Block54Value5
].
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            recoveredBlock43Stack4 := [].
            recoveredBlock43PC := 75.
        ].
        recoveredBlock43Step = 75 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) detect: (recoveredBlock43Stack3) ifNone: (recoveredBlock43Stack4).
            recoveredBlock43PC := 77.
        ].
        recoveredBlock43Step = 77 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Stack2.
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredLocal2 := recoveredBlock43Stack3.
            recoveredBlock43PC := 81.
        ].
        recoveredBlock43Step = 81 ifTrue: [
            (recoveredBlock43Stack2 == nil) ifTrue: [recoveredBlock43PC := 94] ifFalse: [recoveredBlock43PC := 84].
        ].
        recoveredBlock43Step = 84 ifTrue: [
            recoveredBlock43PC := 85.
        ].
        recoveredBlock43Step = 85 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal8.
            recoveredBlock43PC := 88.
        ].
        recoveredBlock43Step = 88 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal2.
            recoveredBlock43PC := 91.
        ].
        recoveredBlock43Step = 91 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) includes: (recoveredBlock43Stack2).
            recoveredBlock43PC := 93.
        ].
        recoveredBlock43Step = 93 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) not.
            recoveredBlock43PC := 94.
        ].
        recoveredBlock43Step = 94 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := 'Event ''%1'' is already assigned to runnable ''%2'' and will be deassigned first. Continue?'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEvent.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 163.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := 'Some of the selected events are already assigned to other runnables.\These events will be deassigned first, if you continue. Continue anyway?'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) withCrs.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'ASDReassignEventsPrompter'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventsAssignEvents: (recoveredStack1) toRunnables: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053b7d4; bytecode file offset 0xe380ec"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
eventDragStart: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceItems.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:block2810def0Arg1 | 
    | block2810def0Value0 block2810def0Value1 |
    block2810def0Value0 := block2810def0Arg1.
    block2810def0Value1 := (block2810def0Value0) isDragable.
    block2810def0Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := [:block2810df14Arg1 | 
    | block2810df14Value0 block2810df14Value1 |
    block2810df14Value0 := block2810df14Arg1.
    block2810df14Value1 := (block2810df14Value0) label.
    block2810df14Value1
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := '.'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := '.'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack5 := (recoveredStack5) last.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := [:recoveredBlock146Arg1 | 
    | recoveredBlock146Value0 recoveredBlock146Value1 recoveredBlock146Value2 recoveredBlock146Value3 recoveredBlock146Value4 recoveredBlock146Value5 |
    recoveredLocal3 := 10.
    recoveredBlock146Value0 := recoveredLocal2.
    recoveredBlock146Value1 := recoveredLocal5.
    recoveredBlock146Value2 := (recoveredBlock146Value0) - (recoveredBlock146Value1).
    recoveredLocal2 := recoveredBlock146Value2.
    recoveredBlock146Value3 := recoveredLocal3.
    recoveredBlock146Value4 := recoveredLocal2.
    recoveredBlock146Value5 := (recoveredBlock146Value3) @ (recoveredBlock146Value4).
    recoveredBlock146Value5
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) sourceItems: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) sourceModel: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) images: (recoveredStack2).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) offsets: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20552b7c; bytecode file offset 0xe4f4dc"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
createEventMenu
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_58916'.
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
            recoveredStack1 := 'Kli'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'WHAT5754'.
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
            recoveredStack1 := EtasMenu.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) owner: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) eventMenuLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'menuEventAdd'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := '~Add Event'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock37Value0 |
    recoveredBlock37Value0 := (self) isEventAddPossible.
    recoveredBlock37Value0
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack10 := XKInsert.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack9 := 'Insert'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 'menuEventRename'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := '~Rename Event'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock72Value0 |
    recoveredBlock72Value0 := (self) isEventRenamePossible.
    recoveredBlock72Value0
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack10 := XKF2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack9 := 'F2'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := 'menuEventDelete'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := '~Delete Event'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock106Value0 |
    recoveredBlock106Value0 := (self) isEventDeletePossible.
    recoveredBlock106Value0
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack10 := XKDelete.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack9 := 'Delete'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := 'menuEventsAssign'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := 'Assi~gn Event'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock143Value0 |
    recoveredBlock143Value0 := (self) isAssignEventsPossible.
    recoveredBlock143Value0
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := 'menuToggleAssignMode'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := 'Toggle Mode Enablement'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock173Value0 |
    recoveredBlock173Value0 := (self) isAssignModeTogglePossible.
    recoveredBlock173Value0
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := 'menuAssignModeToModeSwitch'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := 'Assi~gn To Mode Switch'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock200Value0 |
    recoveredBlock200Value0 := (self) isAssignModeToModeSwitchPossible.
    recoveredBlock200Value0
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205ada60; bytecode file offset 0xeaa3b0"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
updateEventWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'evenSpecWidget'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventTypeWidgetForm.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventTypeWidgetForm.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredLocal5.
    recoveredBlock26Value1 := [:recoveredBlock26Block35Arg1 | 
    | recoveredBlock26Block35Value0 recoveredBlock26Block35Value1 recoveredBlock26Block35Value2 recoveredBlock26Block35Value3 |
    recoveredBlock26Block35Value0 := recoveredBlock26Block35Arg1.
    (recoveredBlock26Block35Value0) destroyWidget.
    recoveredBlock26Block35Value1 := (self) eventTypeWidgetForm.
    recoveredBlock26Block35Value2 := recoveredLocal4.
    recoveredBlock26Block35Value3 := (recoveredBlock26Block35Value1) height: (recoveredBlock26Block35Value2).
    recoveredBlock26Block35Value3
].
    recoveredBlock26Value2 := (recoveredBlock26Value0) do: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEventNodes.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) getViewChildrenEventList.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedEvents.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventTypeWidget.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEventEditPossible.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificEvent.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventTypeWidget.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) specificEvent.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) possibleEventTypes.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventTypeWidget.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) specificEvent.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificEvent.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOperationInvoke.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventTypeWidget.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventTypeWidget.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEventEditPossible.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificEvent.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventTypeWidgetForm.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := (recoveredStack3) eventSpecificationHandler.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWidgetInForm: (recoveredStack1) availableModeList: (recoveredStack2) eventSpecHandler: (recoveredStack3).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEventEditPossible.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) hookInterfaceCallbacksFor: (recoveredStack1) clientData: (recoveredStack2).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := [:block2811680cArg1 | 
    | block2811680cValue0 block2811680cValue1 block2811680cValue2 block2811680cValue3 block2811680cValue4 block2811680cValue5 block2811680cValue6 block2811680cValue7 block2811680cValue8 block2811680cValue9 |
    block2811680cValue0 := block2811680cArg1.
    block2811680cValue1 := block2811680cValue0.
    block2811680cValue2 := XmATTACHFORM.
    (block2811680cValue1) bottomAttachment: (block2811680cValue2).
    block2811680cValue3 := block2811680cValue0.
    (block2811680cValue3) bottomOffset: (0).
    block2811680cValue4 := block2811680cValue0.
    block2811680cValue5 := XmATTACHFORM.
    (block2811680cValue4) leftAttachment: (block2811680cValue5).
    block2811680cValue6 := block2811680cValue0.
    (block2811680cValue6) leftOffset: (0).
    block2811680cValue7 := block2811680cValue0.
    block2811680cValue8 := XmATTACHFORM.
    (block2811680cValue7) rightAttachment: (block2811680cValue8).
    block2811680cValue9 := (block2811680cValue0) rightOffset: (0).
    block2811680cValue9
].
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := 'evenSpecWidget'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredPC := 296.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventTypeWidgetForm.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2067f4c4; bytecode file offset 0xf7bf54"
!ARNotebookEventSpecificationWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'runnableEventFrame'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block2812910cArg1 | 
    | block2812910cValue0 block2812910cValue1 block2812910cValue2 |
    block2812910cValue0 := block2812910cArg1.
    block2812910cValue1 := block2812910cValue0.
    (block2812910cValue1) marginHeight: (0).
    block2812910cValue2 := block2812910cValue0.
    (block2812910cValue2) labelString: ('Runnables').
    block2812910cValue0
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'runnableEventFrame'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'runnableEventForm'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:block28129130Arg1 | 
    | block28129130Value0 |
    block28129130Value0 := block28129130Arg1.
    block28129130Value0
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'runnableEventForm'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'eventFrame'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := [:block28129154Arg1 | 
    | block28129154Value0 block28129154Value1 block28129154Value2 |
    block28129154Value0 := block28129154Arg1.
    block28129154Value1 := block28129154Value0.
    (block28129154Value1) marginHeight: (0).
    block28129154Value2 := block28129154Value0.
    (block28129154Value2) labelString: ('Events').
    block28129154Value0
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := 'eventFrame'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 'eventForm'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [:block28129178Arg1 | 
    nil
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 'eventForm'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := 'eventTypeLabel'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := [:block2812919cArg1 | 
    | block2812919cValue0 block2812919cValue1 block2812919cValue2 block2812919cValue3 block2812919cValue4 block2812919cValue5 |
    block2812919cValue0 := block2812919cArg1.
    block2812919cValue1 := block2812919cValue0.
    block2812919cValue2 := XmALIGNMENTBEGINNING.
    (block2812919cValue1) alignment: (block2812919cValue2).
    block2812919cValue3 := block2812919cValue0.
    (block2812919cValue3) labelString: ('Event Kind:').
    block2812919cValue4 := block2812919cValue0.
    (block2812919cValue4) height: (20).
    block2812919cValue5 := block2812919cValue0.
    (block2812919cValue5) width: (70).
    block2812919cValue0
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := 'eventTypeLabel'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := 'eventType'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := [:block281291c0Arg1 | 
    | block281291c0Stack0 block281291c0Stack1 block281291c0Stack2 block281291c0Stack3 block281291c0Stack4 block281291c0PC block281291c0Step block281291c0Done block281291c0Result |
    block281291c0Stack0 := self.
    block281291c0PC := 4.
    block281291c0Done := false.
    [block281291c0Done not] whileTrue: [
        block281291c0Step := block281291c0PC.
        block281291c0Step = 4 ifTrue: [
            block281291c0Stack1 := block281291c0Arg1.
            block281291c0PC := 5.
        ].
        block281291c0Step = 5 ifTrue: [
            block281291c0Stack2 := block281291c0Stack1.
            block281291c0PC := 6.
        ].
        block281291c0Step = 6 ifTrue: [
            block281291c0Stack3 := [:block281291e4Arg1 | 
    | block281291e4Value0 block281291e4Value1 |
    block281291e4Value0 := block281291e4Arg1.
    block281291e4Value1 := (block281291e4Value0) eventTypeString.
    block281291e4Value1
].
            block281291c0PC := 8.
        ].
        block281291c0Step = 8 ifTrue: [
            block281291c0PC := 16.
        ].
        block281291c0Step = 16 ifTrue: [
            (block281291c0Stack2) printBlock: (block281291c0Stack3).
            block281291c0Stack2 := block281291c0Stack1.
            block281291c0PC := 19.
        ].
        block281291c0Step = 19 ifTrue: [
            block281291c0Stack3 := ARAbstractSpecificEvent.
            block281291c0PC := 21.
        ].
        block281291c0Step = 21 ifTrue: [
            block281291c0Stack3 := (block281291c0Stack3) subclasses.
            block281291c0PC := 23.
        ].
        block281291c0Step = 23 ifTrue: [
            (block281291c0Stack2) items: (block281291c0Stack3).
            block281291c0Stack2 := block281291c0Stack1.
            block281291c0PC := 26.
        ].
        block281291c0Step = 26 ifTrue: [
            block281291c0Stack3 := ARAbstractSpecificEvent.
            block281291c0PC := 28.
        ].
        block281291c0Step = 28 ifTrue: [
            block281291c0Stack3 := (block281291c0Stack3) subclasses.
            block281291c0PC := 30.
        ].
        block281291c0Step = 30 ifTrue: [
            block281291c0Stack3 := (block281291c0Stack3) size.
            block281291c0PC := 32.
        ].
        block281291c0Step = 32 ifTrue: [
            (block281291c0Stack2) visibleItemCount: (block281291c0Stack3).
            block281291c0Stack2 := block281291c0Stack1.
            block281291c0PC := 35.
        ].
        block281291c0Step = 35 ifTrue: [
            block281291c0Stack3 := 25.
            block281291c0PC := 37.
        ].
        block281291c0Step = 37 ifTrue: [
            (block281291c0Stack2) height: (block281291c0Stack3).
            block281291c0PC := 39.
        ].
        block281291c0Step = 39 ifTrue: [
            block281291c0Result := block281291c0Stack1.
            block281291c0Done := true.
        ].
    ].
    block281291c0Result
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := 'eventType'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := 'eventTypeWidgetForm'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := [:block28129208Arg1 | 
    nil
].
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := 'eventTypeWidgetForm'.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := 'runnableEventList'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := [:recoveredBlock302Arg1 | 
    | recoveredBlock302Value0 recoveredBlock302Value1 recoveredBlock302Value2 recoveredBlock302Value3 recoveredBlock302Value4 recoveredBlock302Value5 recoveredBlock302Value6 |
    recoveredBlock302Value0 := recoveredBlock302Arg1.
    recoveredBlock302Value1 := recoveredBlock302Value0.
    recoveredBlock302Value2 := SGUserInterfaceSettings.
    recoveredBlock302Value3 := (self) resourceManager.
    recoveredBlock302Value4 := (recoveredBlock302Value2) iconHierarchyPolicy: (recoveredBlock302Value3).
    (recoveredBlock302Value1) hierarchyPolicy: (recoveredBlock302Value4).
    recoveredBlock302Value5 := XmEXTENDEDSELECT.
    recoveredBlock302Value6 := (recoveredBlock302Value0) selectionPolicy: (recoveredBlock302Value5).
    recoveredBlock302Value6
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasScrolledIconTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := 'runnableEventListcrolledList'.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := 'runnableEventList'.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := 'eventList'.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := [:recoveredBlock366Arg1 | 
    | recoveredBlock366Value0 recoveredBlock366Value1 recoveredBlock366Value2 recoveredBlock366Value3 recoveredBlock366Value4 recoveredBlock366Value5 recoveredBlock366Value6 |
    recoveredBlock366Value0 := recoveredBlock366Arg1.
    recoveredBlock366Value1 := recoveredBlock366Value0.
    recoveredBlock366Value2 := SGUserInterfaceSettings.
    recoveredBlock366Value3 := (self) resourceManager.
    recoveredBlock366Value4 := (recoveredBlock366Value2) iconHierarchyPolicy: (recoveredBlock366Value3).
    (recoveredBlock366Value1) hierarchyPolicy: (recoveredBlock366Value4).
    recoveredBlock366Value5 := XmEXTENDEDSELECT.
    recoveredBlock366Value6 := (recoveredBlock366Value0) selectionPolicy: (recoveredBlock366Value5).
    recoveredBlock366Value6
].
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasScrolledIconTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := 'eventListScrolledList'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := 'eventList'.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := 'assignEvent'.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := [:block2812922cArg1 | 
    | block2812922cValue0 block2812922cValue1 block2812922cValue2 block2812922cValue3 |
    block2812922cValue0 := block2812922cArg1.
    block2812922cValue1 := block2812922cValue0.
    (block2812922cValue1) labelString: ('>>').
    block2812922cValue2 := block2812922cValue0.
    (block2812922cValue2) height: (30).
    block2812922cValue3 := (block2812922cValue0) width: (40).
    block2812922cValue3
].
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := 'assignEvent'.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := 'deassignEvent'.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := [:block28129250Arg1 | 
    | block28129250Value0 block28129250Value1 block28129250Value2 block28129250Value3 |
    block28129250Value0 := block28129250Arg1.
    block28129250Value1 := block28129250Value0.
    (block28129250Value1) labelString: ('<<').
    block28129250Value2 := block28129250Value0.
    (block28129250Value2) height: (30).
    block28129250Value3 := (block28129250Value0) width: (40).
    block28129250Value3
].
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := 'deassignEvent'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack1 := [:recoveredBlock538Arg1 | 
    | recoveredBlock538Value0 recoveredBlock538Value1 recoveredBlock538Value2 recoveredBlock538Value3 recoveredBlock538Value4 recoveredBlock538Value5 recoveredBlock538Value6 recoveredBlock538Value7 recoveredBlock538Value8 recoveredBlock538Value9 recoveredBlock538Value10 recoveredBlock538Value11 |
    recoveredBlock538Value0 := recoveredBlock538Arg1.
    recoveredBlock538Value1 := recoveredBlock538Value0.
    recoveredBlock538Value2 := XmATTACHFORM.
    (recoveredBlock538Value1) bottomAttachment: (recoveredBlock538Value2).
    recoveredBlock538Value3 := recoveredBlock538Value0.
    recoveredBlock538Value4 := XmATTACHFORM.
    (recoveredBlock538Value3) topAttachment: (recoveredBlock538Value4).
    recoveredBlock538Value5 := recoveredBlock538Value0.
    recoveredBlock538Value6 := XmATTACHFORM.
    (recoveredBlock538Value5) leftAttachment: (recoveredBlock538Value6).
    recoveredBlock538Value7 := recoveredBlock538Value0.
    recoveredBlock538Value8 := XmATTACHWIDGET.
    (recoveredBlock538Value7) rightAttachment: (recoveredBlock538Value8).
    recoveredBlock538Value9 := recoveredBlock538Value0.
    recoveredBlock538Value10 := recoveredLocal5.
    (recoveredBlock538Value9) rightWidget: (recoveredBlock538Value10).
    recoveredBlock538Value11 := recoveredBlock538Value0.
    (recoveredBlock538Value11) rightOffset: (5).
    recoveredBlock538Value0
].
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := [:recoveredBlock602Arg1 | 
    | recoveredBlock602Value0 recoveredBlock602Value1 recoveredBlock602Value2 recoveredBlock602Value3 recoveredBlock602Value4 recoveredBlock602Value5 recoveredBlock602Value6 recoveredBlock602Value7 recoveredBlock602Value8 recoveredBlock602Value9 recoveredBlock602Value10 recoveredBlock602Value11 |
    recoveredBlock602Value0 := recoveredBlock602Arg1.
    recoveredBlock602Value1 := recoveredBlock602Value0.
    recoveredBlock602Value2 := XmATTACHFORM.
    (recoveredBlock602Value1) bottomAttachment: (recoveredBlock602Value2).
    recoveredBlock602Value3 := recoveredBlock602Value0.
    recoveredBlock602Value4 := XmATTACHFORM.
    (recoveredBlock602Value3) topAttachment: (recoveredBlock602Value4).
    recoveredBlock602Value5 := recoveredBlock602Value0.
    recoveredBlock602Value6 := XmATTACHWIDGET.
    (recoveredBlock602Value5) leftAttachment: (recoveredBlock602Value6).
    recoveredBlock602Value7 := recoveredBlock602Value0.
    recoveredBlock602Value8 := recoveredLocal5.
    (recoveredBlock602Value7) leftWidget: (recoveredBlock602Value8).
    recoveredBlock602Value9 := recoveredBlock602Value0.
    (recoveredBlock602Value9) leftOffset: (5).
    recoveredBlock602Value10 := recoveredBlock602Value0.
    recoveredBlock602Value11 := XmATTACHFORM.
    (recoveredBlock602Value10) rightAttachment: (recoveredBlock602Value11).
    recoveredBlock602Value0
].
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack1 := [:recoveredBlock666Arg1 | 
    | recoveredBlock666Value0 recoveredBlock666Value1 recoveredBlock666Value2 recoveredBlock666Value3 recoveredBlock666Value4 recoveredBlock666Value5 recoveredBlock666Value6 recoveredBlock666Value7 |
    recoveredBlock666Value0 := recoveredBlock666Arg1.
    recoveredBlock666Value1 := recoveredBlock666Value0.
    recoveredBlock666Value2 := XmATTACHWIDGET.
    (recoveredBlock666Value1) bottomAttachment: (recoveredBlock666Value2).
    recoveredBlock666Value3 := recoveredBlock666Value0.
    recoveredBlock666Value4 := recoveredLocal3.
    (recoveredBlock666Value3) bottomWidget: (recoveredBlock666Value4).
    recoveredBlock666Value5 := recoveredBlock666Value0.
    recoveredBlock666Value6 := XmATTACHFORM.
    (recoveredBlock666Value5) leftAttachment: (recoveredBlock666Value6).
    recoveredBlock666Value7 := (recoveredBlock666Value0) leftOffset: (5).
    recoveredBlock666Value7
].
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := [:recoveredBlock714Arg1 | 
    | recoveredBlock714Value0 recoveredBlock714Value1 recoveredBlock714Value2 recoveredBlock714Value3 recoveredBlock714Value4 recoveredBlock714Value5 recoveredBlock714Value6 recoveredBlock714Value7 recoveredBlock714Value8 recoveredBlock714Value9 recoveredBlock714Value10 |
    recoveredBlock714Value0 := recoveredBlock714Arg1.
    recoveredBlock714Value1 := recoveredBlock714Value0.
    recoveredBlock714Value2 := XmATTACHWIDGET.
    (recoveredBlock714Value1) bottomAttachment: (recoveredBlock714Value2).
    recoveredBlock714Value3 := recoveredBlock714Value0.
    recoveredBlock714Value4 := recoveredLocal1.
    (recoveredBlock714Value3) bottomWidget: (recoveredBlock714Value4).
    recoveredBlock714Value5 := recoveredBlock714Value0.
    recoveredBlock714Value6 := XmATTACHFORM.
    (recoveredBlock714Value5) rightAttachment: (recoveredBlock714Value6).
    recoveredBlock714Value7 := recoveredBlock714Value0.
    (recoveredBlock714Value7) rightOffset: (5).
    recoveredBlock714Value8 := recoveredBlock714Value0.
    recoveredBlock714Value9 := XmATTACHFORM.
    (recoveredBlock714Value8) leftAttachment: (recoveredBlock714Value9).
    recoveredBlock714Value10 := recoveredBlock714Value0.
    (recoveredBlock714Value10) leftOffset: (5).
    recoveredBlock714Value0
].
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack1 := [:block28129274Arg1 | 
    | block28129274Value0 block28129274Value1 block28129274Value2 block28129274Value3 block28129274Value4 block28129274Value5 block28129274Value6 block28129274Value7 block28129274Value8 block28129274Value9 block28129274Value10 |
    block28129274Value0 := block28129274Arg1.
    block28129274Value1 := block28129274Value0.
    block28129274Value2 := XmATTACHFORM.
    (block28129274Value1) bottomAttachment: (block28129274Value2).
    block28129274Value3 := block28129274Value0.
    (block28129274Value3) bottomOffset: (0).
    block28129274Value4 := block28129274Value0.
    block28129274Value5 := XmATTACHNONE.
    (block28129274Value4) topAttachment: (block28129274Value5).
    block28129274Value6 := block28129274Value0.
    block28129274Value7 := XmATTACHFORM.
    (block28129274Value6) leftAttachment: (block28129274Value7).
    block28129274Value8 := block28129274Value0.
    (block28129274Value8) leftOffset: (0).
    block28129274Value9 := block28129274Value0.
    block28129274Value10 := XmATTACHFORM.
    (block28129274Value9) rightAttachment: (block28129274Value10).
    block28129274Value0
].
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack1 := [:block28129298Arg1 | 
    | block28129298Value0 block28129298Value1 block28129298Value2 block28129298Value3 block28129298Value4 block28129298Value5 block28129298Value6 block28129298Value7 block28129298Value8 block28129298Value9 block28129298Value10 |
    block28129298Value0 := block28129298Arg1.
    block28129298Value1 := block28129298Value0.
    block28129298Value2 := XmATTACHFORM.
    (block28129298Value1) bottomAttachment: (block28129298Value2).
    block28129298Value3 := block28129298Value0.
    block28129298Value4 := XmATTACHFORM.
    (block28129298Value3) topAttachment: (block28129298Value4).
    block28129298Value5 := block28129298Value0.
    block28129298Value6 := XmATTACHFORM.
    (block28129298Value5) leftAttachment: (block28129298Value6).
    block28129298Value7 := block28129298Value0.
    (block28129298Value7) leftOffset: (2).
    block28129298Value8 := block28129298Value0.
    block28129298Value9 := XmATTACHFORM.
    (block28129298Value8) rightAttachment: (block28129298Value9).
    block28129298Value10 := block28129298Value0.
    (block28129298Value10) rightOffset: (2).
    block28129298Value0
].
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack1 := [:recoveredBlock904Arg1 | 
    | recoveredBlock904Value0 recoveredBlock904Value1 recoveredBlock904Value2 recoveredBlock904Value3 recoveredBlock904Value4 recoveredBlock904Value5 recoveredBlock904Value6 recoveredBlock904Value7 recoveredBlock904Value8 recoveredBlock904Value9 recoveredBlock904Value10 recoveredBlock904Value11 recoveredBlock904Value12 |
    recoveredBlock904Value0 := recoveredBlock904Arg1.
    recoveredBlock904Value1 := recoveredBlock904Value0.
    recoveredBlock904Value2 := XmATTACHWIDGET.
    (recoveredBlock904Value1) bottomAttachment: (recoveredBlock904Value2).
    recoveredBlock904Value3 := recoveredBlock904Value0.
    recoveredBlock904Value4 := recoveredLocal2.
    (recoveredBlock904Value3) bottomWidget: (recoveredBlock904Value4).
    recoveredBlock904Value5 := recoveredBlock904Value0.
    recoveredBlock904Value6 := XmATTACHFORM.
    (recoveredBlock904Value5) topAttachment: (recoveredBlock904Value6).
    recoveredBlock904Value7 := recoveredBlock904Value0.
    recoveredBlock904Value8 := XmATTACHFORM.
    (recoveredBlock904Value7) leftAttachment: (recoveredBlock904Value8).
    recoveredBlock904Value9 := recoveredBlock904Value0.
    (recoveredBlock904Value9) leftOffset: (2).
    recoveredBlock904Value10 := recoveredBlock904Value0.
    recoveredBlock904Value11 := XmATTACHFORM.
    (recoveredBlock904Value10) rightAttachment: (recoveredBlock904Value11).
    recoveredBlock904Value12 := recoveredBlock904Value0.
    (recoveredBlock904Value12) rightOffset: (2).
    recoveredBlock904Value0
].
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack1 := [:recoveredBlock974Arg1 | 
    | recoveredBlock974Value0 recoveredBlock974Value1 recoveredBlock974Value2 recoveredBlock974Value3 recoveredBlock974Value4 recoveredBlock974Value5 recoveredBlock974Value6 recoveredBlock974Value7 recoveredBlock974Value8 recoveredBlock974Value9 recoveredBlock974Value10 recoveredBlock974Value11 recoveredBlock974Value12 recoveredBlock974Value13 |
    recoveredBlock974Value0 := recoveredBlock974Arg1.
    recoveredBlock974Value1 := recoveredBlock974Value0.
    recoveredBlock974Value2 := XmATTACHWIDGET.
    (recoveredBlock974Value1) topAttachment: (recoveredBlock974Value2).
    recoveredBlock974Value3 := recoveredBlock974Value0.
    recoveredBlock974Value4 := recoveredLocal5.
    (recoveredBlock974Value3) topWidget: (recoveredBlock974Value4).
    recoveredBlock974Value5 := recoveredBlock974Value0.
    (recoveredBlock974Value5) topOffset: (10).
    recoveredBlock974Value6 := recoveredBlock974Value0.
    recoveredBlock974Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock974Value6) rightAttachment: (recoveredBlock974Value7).
    recoveredBlock974Value8 := recoveredBlock974Value0.
    recoveredBlock974Value9 := recoveredLocal5.
    (recoveredBlock974Value8) rightWidget: (recoveredBlock974Value9).
    recoveredBlock974Value10 := recoveredBlock974Value0.
    recoveredBlock974Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock974Value10) leftAttachment: (recoveredBlock974Value11).
    recoveredBlock974Value12 := recoveredBlock974Value0.
    recoveredBlock974Value13 := recoveredLocal5.
    (recoveredBlock974Value12) leftWidget: (recoveredBlock974Value13).
    recoveredBlock974Value0
].
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack1 := [:block281292bcArg1 | 
    | block281292bcValue0 block281292bcValue1 block281292bcValue2 block281292bcValue3 block281292bcValue4 block281292bcValue5 block281292bcValue6 |
    block281292bcValue0 := block281292bcArg1.
    block281292bcValue1 := block281292bcValue0.
    block281292bcValue2 := XmATTACHPOSITION.
    (block281292bcValue1) topAttachment: (block281292bcValue2).
    block281292bcValue3 := block281292bcValue0.
    (block281292bcValue3) topPosition: (30).
    block281292bcValue4 := block281292bcValue0.
    block281292bcValue5 := XmATTACHPOSITION.
    (block281292bcValue4) rightAttachment: (block281292bcValue5).
    block281292bcValue6 := block281292bcValue0.
    (block281292bcValue6) rightPosition: (50).
    block281292bcValue0
].
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1095.
        ].
        recoveredStep = 1095 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack4 := 'runnableEventListDefaultActionCallback:clientData:callData:'.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1111.
        ].
        recoveredStep = 1111 ifTrue: [
            recoveredStack4 := 'runnableEventListVisualInfoCallback:clientData:callData:'.
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack4 := 'runnableEventListChildrenCallback:clientData:callData:'.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            recoveredStack3 := 'runnableEventListExtendedSelectionCallback:clientData:callData:'.
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1143.
        ].
        recoveredStep = 1143 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            recoveredStack4 := 'eventListChildrenCallback:clientData:callData:'.
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack4 := 'eventListVisualInfoCallback:clientData:callData:'.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1167.
        ].
        recoveredStep = 1167 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack2 := XmNbeginEditCallback.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1175.
        ].
        recoveredStep = 1175 ifTrue: [
            recoveredStack4 := 'eventListBeginEditCallback:clientData:callData:'.
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            recoveredStack2 := XmNendEditCallback.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1187.
        ].
        recoveredStep = 1187 ifTrue: [
            recoveredStack4 := 'eventListEndEditCallback:clientData:callData:'.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1191.
        ].
        recoveredStep = 1191 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1195.
        ].
        recoveredStep = 1195 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1198.
        ].
        recoveredStep = 1198 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            recoveredStack4 := 'eventListDefaultActionCallback:clientData:callData:'.
            recoveredPC := 1202.
        ].
        recoveredStep = 1202 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1207.
        ].
        recoveredStep = 1207 ifTrue: [
            recoveredStack2 := XmNextendedSelectionCallback.
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredStack4 := 'eventListSelectionCallback:clientData:callData:'.
            recoveredPC := 1214.
        ].
        recoveredStep = 1214 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack4 := 'buttonPress:clientData:event:'.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1233.
        ].
        recoveredStep = 1233 ifTrue: [
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            recoveredStack3 := 'assignEventActivate:clientData:callData:'.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1252.
        ].
        recoveredStep = 1252 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1257.
        ].
        recoveredStep = 1257 ifTrue: [
            recoveredStack3 := 'deassignEventActivate:clientData:callData:'.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1268.
        ].
        recoveredStep = 1268 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1273.
        ].
        recoveredStep = 1273 ifTrue: [
            recoveredStack3 := 'eventTypeSingle:clientData:callData:'.
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1281.
        ].
        recoveredStep = 1281 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1289.
        ].
        recoveredStep = 1289 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1292.
        ].
        recoveredStep = 1292 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1297.
        ].
        recoveredStep = 1297 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1300.
        ].
        recoveredStep = 1300 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1305.
        ].
        recoveredStep = 1305 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1308.
        ].
        recoveredStep = 1308 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1313.
        ].
        recoveredStep = 1313 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1322.
        ].
        recoveredStep = 1322 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            (recoveredStack0) widgetDictionary: (recoveredStack1).
            recoveredPC := 1329.
        ].
        recoveredStep = 1329 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

