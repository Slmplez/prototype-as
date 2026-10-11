"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20038850; bytecode file offset 0x935c54"
!SGSimPaneController methodsFor: 'recovered'!
getMenuForObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getSimMenu.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075b74; bytecode file offset 0x9757c8"
!SGSimPaneController methodsFor: 'recovered'!
isSimBDECtrl
    ^true
! !

"ASDBase.ic method 0x20088dd4; bytecode file offset 0x9856f0"
!SGSimPaneController methodsFor: 'recovered'!
sequenceCalls
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ad3c8; bytecode file offset 0x9a9c9c"
!SGSimPaneController methodsFor: 'recovered'!
editStateInfoGO: recoveredArg1 showError: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) owner.
    recoveredValue2 := (recoveredValue1) userInterface.
    (recoveredValue0) openInfoViewParent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ad3dc; bytecode file offset 0x9a9c9c"
!SGSimPaneController methodsFor: 'recovered'!
editTransitionInfoGO: recoveredArg1 showError: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) owner.
    recoveredValue2 := (recoveredValue1) userInterface.
    (recoveredValue0) openInfoViewParent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201459e8; bytecode file offset 0xa422b0"
!SGSimPaneController methodsFor: 'recovered'!
actualHierarchy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super actualHierarchy: (recoveredValue0).
    (self) sequenceVisibility: (false).
    recoveredValue1 := (self) owner.
    (recoveredValue1) updateStatesAndMonitors.
    ^self
! !

"ASDBase.ic method 0x20166830; bytecode file offset 0xa630f8"
!SGSimPaneController methodsFor: 'recovered'!
displayContentsIn: recoveredArg1
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
            recoveredStack0 := super displayContentsIn: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateMonitors.
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

"ASDBase.ic method 0x20186964; bytecode file offset 0xa83228"
!SGSimPaneController methodsFor: 'recovered'!
checkWidgetSCrollingForPosition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) clipWorkWindowArea.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsPoint: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) zoom: (recoveredStack1) andScrollCenterTo: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

