"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006ab8; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
getESDLExitAction
    | recoveredValue0 |
    recoveredValue0 := (self) getAction3ASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000728c; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
getESDLStaticAction
    | recoveredValue0 |
    recoveredValue0 := (self) getAction2ASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200076f4; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
getStaticActionAlias
    | recoveredValue0 |
    recoveredValue0 := (self) action2Alias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007a78; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) statePrio.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007fe8; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
hasESDLExitAction
    | recoveredValue0 |
    recoveredValue0 := (self) action3IsASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200088d0; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
hasESDLStaticAction
    | recoveredValue0 |
    recoveredValue0 := (self) action2IsASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200093bc; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
hasESDLEntryAction
    | recoveredValue0 |
    recoveredValue0 := (self) action1IsASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009cb0; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
getESDLEntryAction
    | recoveredValue0 |
    recoveredValue0 := (self) getAction1ASDL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a0d0; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
getEntryActionAlias
    | recoveredValue0 |
    recoveredValue0 := (self) action1Alias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a3b8; bytecode file offset 0x908be4"
!SGStateInfoGO methodsFor: 'recovered'!
getExitActionAlias
    | recoveredValue0 |
    recoveredValue0 := (self) action3Alias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001485c; bytecode file offset 0x912098"
!SGStateInfoGO methodsFor: 'recovered'!
dialogClass
    | recoveredValue0 |
    recoveredValue0 := SGStateInfoDialog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015998; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
action1MethodName
    ^'Entry'
! !

"ASDBase.ic method 0x20017bf4; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
action3Label
    ^'Exit'
! !

"ASDBase.ic method 0x20019a0c; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
action3MethodName
    ^'Exit'
! !

"ASDBase.ic method 0x2001af60; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
action1Label
    ^'Entry'
! !

"ASDBase.ic method 0x2001e908; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
action2MethodName
    ^'Static'
! !

"ASDBase.ic method 0x2001e944; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
action2PreString
    ^'Static: '
! !

"ASDBase.ic method 0x2001ff4c; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
statePrioLabel
    ^'Name'
! !

"ASDBase.ic method 0x200212d8; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
action1PreString
    ^'Entry: '
! !

"ASDBase.ic method 0x200229ac; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
action2Label
    ^'Static'
! !

"ASDBase.ic method 0x200248fc; bytecode file offset 0x92209c"
!SGStateInfoGO methodsFor: 'recovered'!
action3PreString
    ^'Exit: '
! !

"ASDBase.ic method 0x20027220; bytecode file offset 0x923b14"
!SGStateInfoGO methodsFor: 'recovered'!
edit
    | recoveredValue0 |
    recoveredValue0 := (self) editShowError: (nil).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027534; bytecode file offset 0x924260"
!SGStateInfoGO methodsFor: 'recovered'!
hasStaticAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) action2Alias.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027708; bytecode file offset 0x924260"
!SGStateInfoGO methodsFor: 'recovered'!
hasExitAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) action3Alias.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027720; bytecode file offset 0x924260"
!SGStateInfoGO methodsFor: 'recovered'!
hasEntryAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) action1Alias.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038754; bytecode file offset 0x935c54"
!SGStateInfoGO methodsFor: 'recovered'!
selectMethodsForAction2From: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodsWithoutBoolReturnNotInSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038b80; bytecode file offset 0x935c54"
!SGStateInfoGO methodsFor: 'recovered'!
selectMethodsForAction3From: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodsWithoutBoolReturnNotInSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038dfc; bytecode file offset 0x935c54"
!SGStateInfoGO methodsFor: 'recovered'!
selectMethodsForAction1From: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodsWithoutBoolReturnNotInSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e474; bytecode file offset 0x94d048"
!SGStateInfoGO methodsFor: 'recovered'!
clearEntryAction
    (self) initAction1AsUndefined.
    ^self
! !

"ASDBase.ic method 0x2004e984; bytecode file offset 0x94d048"
!SGStateInfoGO methodsFor: 'recovered'!
clearExitAction
    (self) initAction3AsUndefined.
    ^self
! !

"ASDBase.ic method 0x2004fb84; bytecode file offset 0x94d048"
!SGStateInfoGO methodsFor: 'recovered'!
clearStaticAction
    (self) initAction2AsUndefined.
    ^self
! !

"ASDBase.ic method 0x20052a4c; bytecode file offset 0x9505d0"
!SGStateInfoGO methodsFor: 'recovered'!
scale: recoveredArg1
    (self) setLabelPosition.
    ^self
! !

"ASDBase.ic method 0x20052fbc; bytecode file offset 0x9505d0"
!SGStateInfoGO methodsFor: 'recovered'!
moveTo: recoveredArg1
    (self) setLabelPosition.
    ^self
! !

"ASDBase.ic method 0x2007f9fc; bytecode file offset 0x97c330"
!SGStateInfoGO methodsFor: 'recovered'!
getSelectFlag
    ^false
! !

"ASDBase.ic method 0x20087db8; bytecode file offset 0x984684"
!SGStateInfoGO methodsFor: 'recovered'!
visibleObjects
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := labelGO.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bfb0; bytecode file offset 0x988b68"
!SGStateInfoGO methodsFor: 'recovered'!
dialogLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) label.
    recoveredValue1 := ('State Editor for: ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ab1cc; bytecode file offset 0x9a7a98"
!SGStateInfoGO methodsFor: 'recovered'!
editShowError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) editStateInfoGO: (self) showError: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ba730; bytecode file offset 0x9b708c"
!SGStateInfoGO methodsFor: 'recovered'!
setStaticAction: recoveredArg1
    | recoveredValue0 |
    (self) initAction2AsUndefined.
    recoveredValue0 := recoveredArg1.
    (self) setAction2Method: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ba760; bytecode file offset 0x9b708c"
!SGStateInfoGO methodsFor: 'recovered'!
setEntryAction: recoveredArg1
    | recoveredValue0 |
    (self) initAction1AsUndefined.
    recoveredValue0 := recoveredArg1.
    (self) setAction1Method: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ba7d0; bytecode file offset 0x9b708c"
!SGStateInfoGO methodsFor: 'recovered'!
setExitAction: recoveredArg1
    | recoveredValue0 |
    (self) initAction3AsUndefined.
    recoveredValue0 := recoveredArg1.
    (self) setAction3Method: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200e81ec; bytecode file offset 0x9e4ae8"
!SGStateInfoGO methodsFor: 'recovered'!
setESDLEntryAction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createESDLMethod.
    (self) setAction1Method: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) setAction1ASDL: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e8200; bytecode file offset 0x9e4ae8"
!SGStateInfoGO methodsFor: 'recovered'!
setESDLExitAction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createESDLMethod.
    (self) setAction3Method: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) setAction3ASDL: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e8228; bytecode file offset 0x9e4ae8"
!SGStateInfoGO methodsFor: 'recovered'!
setESDLStaticAction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createESDLMethod.
    (self) setAction2Method: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) setAction2ASDL: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013e5e0; bytecode file offset 0xa3aeec"
!SGStateInfoGO methodsFor: 'recovered'!
getEntryActionText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) action1IsASDL.
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
            recoveredStack1 := (recoveredStack1) getAction1ASDL.
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

"ASDBase.ic method 0x2013e610; bytecode file offset 0xa3aeec"
!SGStateInfoGO methodsFor: 'recovered'!
getExitActionText
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

"ASDBase.ic method 0x2013e628; bytecode file offset 0xa3aeec"
!SGStateInfoGO methodsFor: 'recovered'!
getStaticActionText
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
            recoveredStack1 := (recoveredStack1) getAction2ASDL.
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

"ASDBase.ic method 0x2014a2c4; bytecode file offset 0xa46b8c"
!SGStateInfoGO methodsFor: 'recovered'!
setLabelPosition
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) frameGO.
    recoveredValue2 := (recoveredValue1) topLeftmostLabelPosition.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := labelGO.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) manager.
    recoveredValue6 := (recoveredValue5) offsetForDoubleLine.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    (recoveredValue3) moveTo: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2019bb40; bytecode file offset 0xa98414"
!SGStateInfoGO methodsFor: 'recovered'!
checkAndUpdateStatePrio: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) stateLabels.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) label.
    recoveredValue5 := [].
    (recoveredValue3) remove: (recoveredValue4) ifAbsent: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) uniqueStringFor: (recoveredValue7).
    (self) statePrio: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201a71e0; bytecode file offset 0xaa3ab4"
!SGStateInfoGO methodsFor: 'recovered'!
openInfoViewParent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) dialogClass.
    recoveredValue1 := (self) getBDEController.
    recoveredValue2 := (recoveredValue1) datamodelManager.
    recoveredValue3 := (self) controller.
    recoveredValue4 := (recoveredValue3) stateInfos.
    recoveredValue5 := (self) manager.
    recoveredValue6 := (recoveredValue0) createFor: (self) methodManager: (recoveredValue2) allStateInfos: (recoveredValue4) graphicObject: (recoveredValue5) errorObject: (nil) readOnly: (true).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) promptAtCurrentMousePositionWithParent: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201aabd0; bytecode file offset 0xaa74a4"
!SGStateInfoGO methodsFor: 'recovered'!
checkAndUpdateStatePrio
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) stateLabels.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) label.
    recoveredValue5 := [].
    (recoveredValue3) remove: (recoveredValue4) ifAbsent: (recoveredValue5).
    recoveredValue6 := (self) label.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) uniqueStringFor: (recoveredValue7).
    (self) statePrio: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201adf58; bytecode file offset 0xaaa82c"
!SGStateInfoGO methodsFor: 'recovered'!
initActionGOs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGMultiLineCommentGO.
    recoveredValue1 := (self) manager.
    recoveredValue2 := (recoveredValue1) frameGO.
    recoveredValue3 := (recoveredValue2) topLeftmostLabelPosition.
    recoveredValue4 := font.
    recoveredValue5 := (self) lineStyle.
    recoveredValue6 := (recoveredValue0) createAt: (recoveredValue3) text: ('') alignment: ('TaLeft') font: (recoveredValue4) lineStyle: (recoveredValue5) manager: (self).
    labelGO := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x202208b8; bytecode file offset 0xb1d1f4"
!SGStateInfoGO methodsFor: 'recovered'!
getExitActionText: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) getExitActionText.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202208e8; bytecode file offset 0xb1d1f4"
!SGStateInfoGO methodsFor: 'recovered'!
getStaticActionText: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) getStaticActionText.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20220918; bytecode file offset 0xb1d1f4"
!SGStateInfoGO methodsFor: 'recovered'!
getEntryActionText: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) getEntryActionText.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022cf60; bytecode file offset 0xb29834"
!SGStateInfoGO methodsFor: 'recovered'!
checkAndUpdateActionGOsDatamodelManager: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) stateLabels.
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
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) occurrencesOf: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) statePrio: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            super checkAndUpdateActionGOsDatamodelManager: (recoveredStack1).
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

"ASDBase.ic method 0x2028950c; bytecode file offset 0xb85dd0"
!SGStateInfoGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2 methods: recoveredArg3 logicBlock: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    (self) checkConsistency.
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (self) logicSequenceDescriptionFor: (recoveredBlock9Value0).
    recoveredLocal1 := recoveredBlock9Value1.
    recoveredBlock9Value2 := recoveredArg1.
    recoveredBlock9Value3 := recoveredLocal1.
    recoveredBlock9Value4 := recoveredBlock9Arg1.
    recoveredBlock9Value5 := recoveredArg4.
    recoveredBlock9Value6 := recoveredArg2.
    recoveredBlock9Value7 := (recoveredBlock9Value2) mapping: (recoveredBlock9Value3) forMethod: (recoveredBlock9Value4) ofBlock: (recoveredBlock9Value5) hierarchy: (recoveredBlock9Value6).
    recoveredBlock9Value7
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203f7400; bytecode file offset 0xcf3cf0"
!SGStateInfoGO methodsFor: 'recovered'!
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
            recoveredStack0 := (recoveredStack0) getEntryActionText: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStaticActionText: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExitActionText: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) onLocalizedString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) action1PreString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) action2PreString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) action3PreString.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

