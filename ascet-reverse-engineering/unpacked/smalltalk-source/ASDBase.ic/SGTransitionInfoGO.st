"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006f80; bytecode file offset 0x908be4"
!SGTransitionInfoGO methodsFor: 'recovered'!
getESDLAction
    | recoveredValue0 |
    recoveredValue0 := (self) getAction2ASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20006fc8; bytecode file offset 0x908be4"
!SGTransitionInfoGO methodsFor: 'recovered'!
getActionAlias
    | recoveredValue0 |
    recoveredValue0 := (self) action2Alias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009aac; bytecode file offset 0x908be4"
!SGTransitionInfoGO methodsFor: 'recovered'!
getConditionAlias
    | recoveredValue0 |
    recoveredValue0 := (self) action3Alias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ae74; bytecode file offset 0x908be4"
!SGTransitionInfoGO methodsFor: 'recovered'!
hasESDLAction
    | recoveredValue0 |
    recoveredValue0 := (self) action2IsASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000be7c; bytecode file offset 0x908be4"
!SGTransitionInfoGO methodsFor: 'recovered'!
hasESDLCondition
    | recoveredValue0 |
    recoveredValue0 := (self) action3IsASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c290; bytecode file offset 0x908be4"
!SGTransitionInfoGO methodsFor: 'recovered'!
getESDLCondition
    | recoveredValue0 |
    recoveredValue0 := (self) getAction3ASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200139e0; bytecode file offset 0x912098"
!SGTransitionInfoGO methodsFor: 'recovered'!
dialogClass
    | recoveredValue0 |
    recoveredValue0 := SGTransitionDialog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017da4; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
statePrioLabel
    ^'Priority'
! !

"ASDBase.ic method 0x20018ab8; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
action2PreString
    ^'A:'
! !

"ASDBase.ic method 0x2001b218; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
action3PreString
    ^'C:'
! !

"ASDBase.ic method 0x2001d4b0; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
action3MethodName
    ^'Cond'
! !

"ASDBase.ic method 0x2001ecbc; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
characterMethod
    ^'checkUnsignedInteger:'
! !

"ASDBase.ic method 0x2001fdfc; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
action2MethodName
    ^'Action'
! !

"ASDBase.ic method 0x20020db0; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
action1Label
    ^'Trigger'
! !

"ASDBase.ic method 0x20020f90; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
action1PreString
    ^'C:'
! !

"ASDBase.ic method 0x20022e44; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
action2Label
    ^'Action'
! !

"ASDBase.ic method 0x20023180; bytecode file offset 0x92209c"
!SGTransitionInfoGO methodsFor: 'recovered'!
action3Label
    ^'Condition'
! !

"ASDBase.ic method 0x2002584c; bytecode file offset 0x923928"
!SGTransitionInfoGO methodsFor: 'recovered'!
action1MethodName
    ^'Trigger'
! !

"ASDBase.ic method 0x2002725c; bytecode file offset 0x923b14"
!SGTransitionInfoGO methodsFor: 'recovered'!
edit
    | recoveredValue0 |
    recoveredValue0 := (self) editShowError: (nil).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027654; bytecode file offset 0x924260"
!SGTransitionInfoGO methodsFor: 'recovered'!
hasCondition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) action3Alias.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200277b0; bytecode file offset 0x924260"
!SGTransitionInfoGO methodsFor: 'recovered'!
transitionConditionAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) action3Alias.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027864; bytecode file offset 0x924260"
!SGTransitionInfoGO methodsFor: 'recovered'!
hasAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) action2Alias.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027990; bytecode file offset 0x924260"
!SGTransitionInfoGO methodsFor: 'recovered'!
transitionActionAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) action2Alias.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038ff4; bytecode file offset 0x935c54"
!SGTransitionInfoGO methodsFor: 'recovered'!
selectMethodsForAction2From: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodsWithoutBoolReturnNotInSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004267c; bytecode file offset 0x93ef40"
!SGTransitionInfoGO methodsFor: 'recovered'!
priority
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := statePrio.
    recoveredValue1 := (recoveredValue0) asInteger.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e6b4; bytecode file offset 0x94d048"
!SGTransitionInfoGO methodsFor: 'recovered'!
clearAction
    (self) initAction2AsUndefined.
    ^self
! !

"ASDBase.ic method 0x2004f9c8; bytecode file offset 0x94d048"
!SGTransitionInfoGO methodsFor: 'recovered'!
clearCondition
    (self) initAction3AsUndefined.
    ^self
! !

"ASDBase.ic method 0x2004faa0; bytecode file offset 0x94d048"
!SGTransitionInfoGO methodsFor: 'recovered'!
clearTrigger
    (self) initAction1AsUndefined.
    ^self
! !

"ASDBase.ic method 0x200548ec; bytecode file offset 0x9511a4"
!SGTransitionInfoGO methodsFor: 'recovered'!
selectMethodsForAction3From: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodsWithoutArgumentsWithReturnInSpec: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200561f8; bytecode file offset 0x952ab0"
!SGTransitionInfoGO methodsFor: 'recovered'!
selectMethodsForAction1From: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodsOnlyInSpec: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200768ac; bytecode file offset 0x9757c8"
!SGTransitionInfoGO methodsFor: 'recovered'!
isMoveable
    ^true
! !

"ASDBase.ic method 0x2007c764; bytecode file offset 0x97c330"
!SGTransitionInfoGO methodsFor: 'recovered'!
getSelectFlag
    ^false
! !

"ASDBase.ic method 0x20084d20; bytecode file offset 0x981ca4"
!SGTransitionInfoGO methodsFor: 'recovered'!
checkAndUpdateStatePrio: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) statePrio: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20087dc8; bytecode file offset 0x984684"
!SGTransitionInfoGO methodsFor: 'recovered'!
visibleObjects
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := labelGO.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab1dc; bytecode file offset 0x9a7a98"
!SGTransitionInfoGO methodsFor: 'recovered'!
editShowError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) editTransitionInfoGO: (self) showError: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ba690; bytecode file offset 0x9b708c"
!SGTransitionInfoGO methodsFor: 'recovered'!
setAction: recoveredArg1
    | recoveredValue0 |
    (self) clearAction.
    recoveredValue0 := recoveredArg1.
    (self) setAction2Method: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ba740; bytecode file offset 0x9b708c"
!SGTransitionInfoGO methodsFor: 'recovered'!
setTrigger: recoveredArg1
    | recoveredValue0 |
    (self) clearTrigger.
    recoveredValue0 := recoveredArg1.
    (self) setAction1Method: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ba7c0; bytecode file offset 0x9b708c"
!SGTransitionInfoGO methodsFor: 'recovered'!
setCondition: recoveredArg1
    | recoveredValue0 |
    (self) clearCondition.
    recoveredValue0 := recoveredArg1.
    (self) setAction3Method: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d4f58; bytecode file offset 0x9d1818"
!SGTransitionInfoGO methodsFor: 'recovered'!
viewInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getManager.
    recoveredValue1 := (recoveredValue0) getManager.
    recoveredValue2 := (recoveredValue1) getRBPaneController.
    (recoveredValue2) editTransitionInfoGO: (self) showError: (nil).
    ^self
! !

"ASDBase.ic method 0x200e81d8; bytecode file offset 0x9e4ae8"
!SGTransitionInfoGO methodsFor: 'recovered'!
setESDLAction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createESDLMethod.
    (self) setAction2Method: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) setAction2ASDL: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e8214; bytecode file offset 0x9e4ae8"
!SGTransitionInfoGO methodsFor: 'recovered'!
setESDLCondition: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createESDLMethod.
    (self) setAction3Method: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) setAction3ASDL: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fe6d0; bytecode file offset 0x9faf90"
!SGTransitionInfoGO methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super moveTo: (recoveredValue0).
    recoveredValue1 := manager.
    (recoveredValue1) updatePriorityGOPosition.
    ^self
! !

"ASDBase.ic method 0x2010889c; bytecode file offset 0xa05164"
!SGTransitionInfoGO methodsFor: 'recovered'!
unvisibleCategories
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getBDEController.
    recoveredValue1 := Array.
    recoveredValue2 := (self) getManager.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2) with: (self).
    (recoveredValue0) selectInvisibleCategoriesForObjects: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010ed7c; bytecode file offset 0xa0b63c"
!SGTransitionInfoGO methodsFor: 'recovered'!
statePrio: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super statePrio: (recoveredValue0).
    recoveredValue1 := manager.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) updatePriorityGO: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201173cc; bytecode file offset 0xa13c98"
!SGTransitionInfoGO methodsFor: 'recovered'!
dialogLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := labelGO.
    recoveredValue2 := (recoveredValue1) text.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) nextLine.
    recoveredValue5 := ('Transition Editor for: ') , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013e5f8; bytecode file offset 0xa3aeec"
!SGTransitionInfoGO methodsFor: 'recovered'!
getConditionText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) action3IsASDL.
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
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAction3ASDL.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayingCode: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20159d90; bytecode file offset 0xa56674"
!SGTransitionInfoGO methodsFor: 'recovered'!
editESDLTransitionEntryFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGLmASDLBodySource.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) line: (0).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) methodName: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) editShowError: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20167168; bytecode file offset 0xa63a34"
!SGTransitionInfoGO methodsFor: 'recovered'!
openInfoViewParent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) dialogClass.
    recoveredValue1 := (self) getBDEController.
    recoveredValue2 := (recoveredValue1) datamodelManager.
    recoveredValue3 := (self) manager.
    recoveredValue4 := (recoveredValue0) createFor: (self) methodManager: (recoveredValue2) graphicObject: (recoveredValue3) errorObject: (nil) readOnly: (true).
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) promptAtCurrentMousePositionWithParent: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201a1bf4; bytecode file offset 0xa9e4e0"
!SGTransitionInfoGO methodsFor: 'recovered'!
editTransitionAction
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) action2IsASDL.
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
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) action2MethodName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) editESDLTransitionEntryFor: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) action2Alias.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) loadDiagramForActionMethod: (recoveredStack1).
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

"ASDBase.ic method 0x201a1c14; bytecode file offset 0xa9e4e0"
!SGTransitionInfoGO methodsFor: 'recovered'!
editTransitionCondition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) action3IsASDL.
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
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) action3MethodName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) editESDLTransitionEntryFor: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) action3Alias.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) loadDiagramForActionMethod: (recoveredStack1).
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

"ASDBase.ic method 0x201a1dc4; bytecode file offset 0xa9e690"
!SGTransitionInfoGO methodsFor: 'recovered'!
getActionText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) action2IsASDL.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsAction2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAction2ASDL.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayingCode: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d07b4; bytecode file offset 0xacd08c"
!SGTransitionInfoGO methodsFor: 'recovered'!
getReadOnlyMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) title: ('~Transition').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) owner: (self).
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) add: ('edit') label: ('Edit ~Transition').
    ^recoveredValue3
! !

"ASDBase.ic method 0x201d07fc; bytecode file offset 0xacd0d4"
!SGTransitionInfoGO methodsFor: 'recovered'!
getSimMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) title: ('Sim').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) owner: (self).
    (recoveredValue3) add: ('viewInfo') label: ('Transition ~Info').
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201e2b54; bytecode file offset 0xadf420"
!SGTransitionInfoGO methodsFor: 'recovered'!
changeStarted
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84169'.
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
            super changeStarted.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := labelGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280d67d0Arg1 | 
    | block280d67d0Value0 block280d67d0Value1 |
    block280d67d0Value0 := block280d67d0Arg1.
    block280d67d0Value1 := (block280d67d0Value0) changeStarted.
    block280d67d0Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20209c20; bytecode file offset 0xb064f8"
!SGTransitionInfoGO methodsFor: 'recovered'!
initActionGOs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGMultiLineCommentGO.
    recoveredValue1 := DefaultGraphObjectPositionBlock.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (self) fontHeight.
    recoveredValue4 := (recoveredValue3) * (1).
    recoveredValue5 := (recoveredValue2) down: (recoveredValue4).
    recoveredValue6 := font.
    recoveredValue7 := (self) lineStyle.
    recoveredValue8 := (recoveredValue0) createAt: (recoveredValue5) text: ('') alignment: ('TaCenter') font: (recoveredValue6) lineStyle: (recoveredValue7) manager: (self).
    labelGO := recoveredValue8.
    ^self
! !

"ASDBase.ic method 0x202208d0; bytecode file offset 0xb1d1f4"
!SGTransitionInfoGO methodsFor: 'recovered'!
getActionText: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) action2Alias.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) action2Alias.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) specifiedMethodAliasName: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) getActionText.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20220900; bytecode file offset 0xb1d1f4"
!SGTransitionInfoGO methodsFor: 'recovered'!
getConditionText: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) action3Alias.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) action3Alias.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) specifiedMethodAliasName: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) getConditionText.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20220930; bytecode file offset 0xb1d1f4"
!SGTransitionInfoGO methodsFor: 'recovered'!
getTriggerText: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) action1Alias.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) action1Alias.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) specifiedMethodAliasName: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTriggerText.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023ba24; bytecode file offset 0xb38304"
!SGTransitionInfoGO methodsFor: 'recovered'!
getTriggerText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Bfr'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_458783'.
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
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) endGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isJunctionGO.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := '<'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := '>'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c9a38; bytecode file offset 0xbc6308"
!SGTransitionInfoGO methodsFor: 'recovered'!
updateTriggerForDatamodelManager: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultTriggerDesired.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1Alias.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultTriggerMethod.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) setAction1Method: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) setAction1Method: (recoveredStack1).
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

"ASDBase.ic method 0x203443b0; bytecode file offset 0xc40ca0"
!SGTransitionInfoGO methodsFor: 'recovered'!
getMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := super getMenu.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addSingleLine.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) add: ('edit') label: ('Edit ~Transition').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) action2Label.
    recoveredValue5 := ('Edit ~') , (recoveredValue4).
    recoveredValue6 := [
    | recoveredBlock28Value0 |
    recoveredBlock28Value0 := (self) transitionActionAvailable.
    recoveredBlock28Value0
].
    (recoveredValue3) add: ('editTransitionAction') label: (recoveredValue5) enable: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) action3Label.
    recoveredValue9 := ('Edit ~') , (recoveredValue8).
    recoveredValue10 := [
    | recoveredBlock49Value0 |
    recoveredBlock49Value0 := (self) transitionConditionAvailable.
    recoveredBlock49Value0
].
    (recoveredValue7) add: ('editTransitionCondition') label: (recoveredValue9) enable: (recoveredValue10).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2036e574; bytecode file offset 0xc6ae40"
!SGTransitionInfoGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2 senderId: recoveredArg3 receiverId: recoveredArg4 methods: recoveredArg5 identifier: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) checkConsistency.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg6.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) priority.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) lineId: (recoveredValue1) transition: (recoveredValue2) to: (recoveredValue3) priority: (recoveredValue4) methods: (recoveredValue5) hierarchy: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredArg5.
    recoveredValue9 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (self) logicSequenceDescriptionFor: (recoveredBlock35Value0).
    recoveredLocal1 := recoveredBlock35Value1.
    recoveredBlock35Value2 := recoveredArg1.
    recoveredBlock35Value3 := recoveredLocal1.
    recoveredBlock35Value4 := recoveredBlock35Arg1.
    recoveredBlock35Value5 := recoveredLocal2.
    recoveredBlock35Value6 := recoveredArg2.
    recoveredBlock35Value7 := (recoveredBlock35Value2) mapping: (recoveredBlock35Value3) forMethod: (recoveredBlock35Value4) ofBlock: (recoveredBlock35Value5) hierarchy: (recoveredBlock35Value6).
    recoveredBlock35Value7
].
    (recoveredValue8) do: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x203c97cc; bytecode file offset 0xcc60c0"
!SGTransitionInfoGO methodsFor: 'recovered'!
infoString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := '?'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTriggerText: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActionText: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getConditionText: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := '['.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

