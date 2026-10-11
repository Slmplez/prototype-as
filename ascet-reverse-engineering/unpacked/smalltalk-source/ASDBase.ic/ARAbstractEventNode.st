"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200079c4; bytecode file offset 0x908be4"
!ARAbstractEventNode methodsFor: 'recovered'!
longLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200092b4; bytecode file offset 0x908be4"
!ARAbstractEventNode methodsFor: 'recovered'!
getViewChildrenRunnableList
    | recoveredValue0 |
    recoveredValue0 := (self) getViewChildrenEventList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016a9c; bytecode file offset 0x92209c"
!ARAbstractEventNode methodsFor: 'recovered'!
iconName
    ^'GeneralEvent'
! !

"ASDBase.ic method 0x2001b9d4; bytecode file offset 0x92209c"
!ARAbstractEventNode methodsFor: 'recovered'!
getViewChildrenEventList
    ^#()
! !

"ASDBase.ic method 0x2001d6cc; bytecode file offset 0x92209c"
!ARAbstractEventNode methodsFor: 'recovered'!
labelExtended
    ^'undefined'
! !

"ASDBase.ic method 0x20025748; bytecode file offset 0x92209c"
!ARAbstractEventNode methodsFor: 'recovered'!
label
    ^'undefined'
! !

"ASDBase.ic method 0x20035344; bytecode file offset 0x934580"
!ARAbstractEventNode methodsFor: 'recovered'!
item
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eventSpecificationHandler.
    recoveredValue1 := (recoveredValue0) sofwareComponentItem.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200579a8; bytecode file offset 0x956284"
!ARAbstractEventNode methodsFor: 'recovered'!
assignRunnables: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getEventNode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) assignRunnables: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065994; bytecode file offset 0x963428"
!ARAbstractEventNode methodsFor: 'recovered'!
parentNode
    | recoveredValue0 |
    recoveredValue0 := parentNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067584; bytecode file offset 0x9646f8"
!ARAbstractEventNode methodsFor: 'recovered'!
eventSpecificationHandler
    | recoveredValue0 |
    recoveredValue0 := eventSpecificationHandler.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007833c; bytecode file offset 0x9757c8"
!ARAbstractEventNode methodsFor: 'recovered'!
isEventAddPossible
    ^true
! !

"ASDBase.ic method 0x2007b74c; bytecode file offset 0x97c330"
!ARAbstractEventNode methodsFor: 'recovered'!
isRenamePossible
    ^false
! !

"ASDBase.ic method 0x2007b9ac; bytecode file offset 0x97c330"
!ARAbstractEventNode methodsFor: 'recovered'!
isDragable
    ^false
! !

"ASDBase.ic method 0x2007d324; bytecode file offset 0x97c330"
!ARAbstractEventNode methodsFor: 'recovered'!
isEventMoveDownPossible
    ^false
! !

"ASDBase.ic method 0x2007f684; bytecode file offset 0x97c330"
!ARAbstractEventNode methodsFor: 'recovered'!
isEventMoveUpPossible
    ^false
! !

"ASDBase.ic method 0x200adb14; bytecode file offset 0x9aa3d0"
!ARAbstractEventNode methodsFor: 'recovered'!
handleDoubleClickAction: recoveredArg1 callData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) itemPosition.
    recoveredValue3 := (recoveredValue0) expandCollapsePos: (recoveredValue2) notify: (true).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be554; bytecode file offset 0x9bb178"
!ARAbstractEventNode methodsFor: 'recovered'!
parentNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200befd0; bytecode file offset 0x9bc0b4"
!ARAbstractEventNode methodsFor: 'recovered'!
eventSpecificationHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eventSpecificationHandler := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e5094; bytecode file offset 0x9e1a70"
!ARAbstractEventNode methodsFor: 'recovered'!
getRunnableNode
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRunnableNode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e50b4; bytecode file offset 0x9e1a70"
!ARAbstractEventNode methodsFor: 'recovered'!
getEventNode
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEventNode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e50e4; bytecode file offset 0x9e1a70"
!ARAbstractEventNode methodsFor: 'recovered'!
getModeReference
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModeReference.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e5134; bytecode file offset 0x9e1a70"
!ARAbstractEventNode methodsFor: 'recovered'!
getEvent
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEvent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e5194; bytecode file offset 0x9e1a70"
!ARAbstractEventNode methodsFor: 'recovered'!
getModeVarNode
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModeVarNode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e51b4; bytecode file offset 0x9e1a70"
!ARAbstractEventNode methodsFor: 'recovered'!
getRunnable
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRunnable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a83b0; bytecode file offset 0xaa4cac"
!ARAbstractEventNode methodsFor: 'recovered'!
visualCallDataEventList: recoveredArg1 resourceManager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) label.
    (recoveredValue0) label: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) iconName.
    recoveredValue5 := (recoveredValue3) iconAt: (recoveredValue4).
    (recoveredValue2) icon: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) getViewChildrenEventList.
    recoveredValue8 := (recoveredValue7) notEmpty.
    (recoveredValue6) hasChildren: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201a83d8; bytecode file offset 0xaa4cac"
!ARAbstractEventNode methodsFor: 'recovered'!
visualCallDataRunnableList: recoveredArg1 resourceManager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) label.
    (recoveredValue0) label: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) iconName.
    recoveredValue5 := (recoveredValue3) iconAt: (recoveredValue4).
    (recoveredValue2) icon: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) getViewChildrenRunnableList.
    recoveredValue8 := (recoveredValue7) notEmpty.
    (recoveredValue6) hasChildren: (recoveredValue8).
    ^self
! !

