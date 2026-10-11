"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001cdc0; bytecode file offset 0x92209c"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
pageCommentLabel
    ^'Comment'
! !

"ASDBase.ic method 0x20045d6c; bytecode file offset 0x9451f8"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
widgetASDScalarImplWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetASDScalarImplWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200481ac; bytecode file offset 0x9451f8"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
widgetTextComment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('comment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200482bc; bytecode file offset 0x9451f8"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
widgetASDImplementationConsistencyWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetASDImplementationConsistencyWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200482fc; bytecode file offset 0x9451f8"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
pageComment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageComment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20063f64; bytecode file offset 0x961970"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
updateWidgetValues
    | recoveredValue0 |
    recoveredValue0 := (self) widgetASDScalarImplWidget.
    (recoveredValue0) initWidgets.
    ^self
! !

"ASDBase.ic method 0x20070d68; bytecode file offset 0x96d6a4"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
projectKey
    | recoveredValue0 |
    recoveredValue0 := projectKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074bfc; bytecode file offset 0x9757c8"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
menuImplCopyEnable
    ^true
! !

"ASDBase.ic method 0x200797dc; bytecode file offset 0x97c330"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
isProjectContextAvailable
    ^false
! !

"ASDBase.ic method 0x20096190; bytecode file offset 0x992bec"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    (self) projectKey: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c7418; bytecode file offset 0x9c3d64"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
projectKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ccdc0; bytecode file offset 0x9c96b4"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
asdPrimitiveImplWidgets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) widgetASDScalarImplWidget.
    (recoveredValue2) add: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e3cf0; bytecode file offset 0x9e05b0"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
project
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c3660Arg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f288c; bytecode file offset 0x9ef148"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
canWrite
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201142b4; bytecode file offset 0xa10b80"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
updateTitle
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) dataElement.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := ('Implementation for: ') , (recoveredValue2).
    (recoveredValue0) title: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20118f04; bytecode file offset 0xa157cc"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
checkConsistency
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) clearProblemList.
    recoveredValue0 := (self) widgetASDScalarImplWidget.
    recoveredValue1 := (recoveredValue0) widgetCtrl.
    recoveredValue2 := (recoveredValue1) dataElement.
    recoveredValue3 := (self) widgetASDScalarImplWidget.
    (self) checkElementAndDisplayErrors: (recoveredValue2) widget: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20118f34; bytecode file offset 0xa15818"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
initializePages
    | recoveredValue0 recoveredValue1 |
    (self) initializePageValues.
    (self) initializePageComment.
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) widgetNotebook.
    (recoveredValue0) updateLabelFont: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013f5e0; bytecode file offset 0xa3beb0"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
initWidgets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetASDScalarImplWidget.
    (recoveredValue0) initWidgets.
    recoveredValue1 := (self) widgetTextComment.
    recoveredValue2 := (self) dataElement.
    recoveredValue3 := (recoveredValue2) extraImplInfo.
    recoveredValue4 := (recoveredValue3) text.
    (recoveredValue1) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2014e600; bytecode file offset 0xa4aef4"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
initializePageComment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) pageCommentLabel.
    recoveredValue1 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createWidgetHierarchyPageComment.
    recoveredBlock8Value0
].
    recoveredValue2 := (self) initializePageName: ('pageComment') pageLabel: (recoveredValue0) createWidgetHierarchyBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201820c4; bytecode file offset 0xa7e994"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
updateWidgetSensitivity
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetASDScalarImplWidget.
    (recoveredValue0) updateWidgetSensitivity.
    recoveredValue1 := (self) widgetButtonOk.
    recoveredValue2 := (self) isOKPossible.
    (recoveredValue1) sensitive: (recoveredValue2).
    recoveredValue3 := (self) widgetButtonAutoCorrection.
    recoveredValue4 := (self) isAutocorrectionPossible.
    (recoveredValue3) sensitive: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2018d1e0; bytecode file offset 0xa89adc"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
copyImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := Array.
    recoveredValue2 := (self) widgetController.
    recoveredValue3 := (recoveredValue2) dataElement.
    recoveredValue4 := (recoveredValue3) deepCopy.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4) with: (nil) with: (nil).
    (recoveredValue0) at: ('SGGlobalImplementationBuffer') put: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20224bf4; bytecode file offset 0xb214c4"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
initWidgetCtrl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) widgetASDScalarImplWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) dataElement.
    recoveredValue3 := (self) project.
    recoveredValue4 := (self) createCtrlFor: (recoveredValue2) project: (recoveredValue3).
    (recoveredValue1) widgetCtrl: (recoveredValue4).
    (recoveredValue0) updateWidgets.
    recoveredValue5 := (self) widgetASDImplementationConsistencyWidget.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) dataElement.
    recoveredValue8 := (self) project.
    recoveredValue9 := (self) createCtrlFor: (recoveredValue7) project: (recoveredValue8).
    (recoveredValue6) widgetCtrl: (recoveredValue9).
    (recoveredValue5) updateWidgets.
    ^self
! !

"ASDBase.ic method 0x20248a00; bytecode file offset 0xb452dc"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) canWrite.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorDataElement.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTextComment.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) text: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) majorDataElement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) cancel.
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

"ASDBase.ic method 0x2024ec94; bytecode file offset 0xb4b574"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super installActionKeys.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('Alt-p') put: ('pasteImplementation').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('Alt-i') put: ('copyImplementation').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) widgetASDScalarImplWidget.
    (self) setActionDict: (recoveredValue5) forWidget: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20254554; bytecode file offset 0xb50e2c"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
update
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetASDImplementationConsistencyWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetConsistencyList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) checkConsistency.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) problemList.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsProblems.
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
            recoveredStack0 := (recoveredStack0) widgetASDImplementationConsistencyWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetConsistencyList.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) problemList.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) allProblems.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateWidgetValues.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateWidgetSensitivity.
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

"ASDBase.ic method 0x20298ee4; bytecode file offset 0xb957d0"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
createCtrlFor: recoveredArg1 project: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := ASDImplementationTypeCtrl.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) majorDataElement.
    (recoveredValue2) majorDataElement: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) projectContext.
    (recoveredValue4) projectContext: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) dataElement.
    (recoveredValue6) dataElement: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) modelElement.
    (recoveredValue8) modelElement: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) userInterface: (self).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg2.
    (recoveredValue11) project: (recoveredValue12).
    (self) widgetController: (recoveredValue1).
    recoveredValue13 := (self) widgetController.
    ^recoveredValue13
! !

"ASDBase.ic method 0x202c8acc; bytecode file offset 0xbc538c"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
menuImplPasteEnable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'SGGlobalImplementationBuffer'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2036ad68; bytecode file offset 0xc67660"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
initContextMenus
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EtasMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('~Element').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) menuImplCopyEnable.
    recoveredBlock18Value0
].
    (recoveredValue4) add: ('copyImplementation') label: ('~Copy Implementation') enable: (recoveredValue5) for: (self) accelerator: (nil) acceleratorText: ('Alt+i').
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := [
    | recoveredBlock38Value0 |
    recoveredBlock38Value0 := (self) menuImplPasteEnable.
    recoveredBlock38Value0
].
    (recoveredValue6) add: ('pasteImplementation') label: ('~Paste Implementation') enable: (recoveredValue7) for: (self) accelerator: (nil) acceleratorText: ('Alt+p').
    recoveredLocal1 := recoveredValue2.
    recoveredValue8 := (self) widgetASDScalarImplWidget.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) menu: (recoveredValue9) owner: (self).
    recoveredValue10 := (self) widgetASDScalarImplWidget.
    (recoveredValue10) initContextMenus.
    ^self
! !

"ASDBase.ic method 0x2041031c; bytecode file offset 0xd0cc14"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
pasteImplementation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'SGGlobalImplementationBuffer'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'No implementation available!!'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'No implementation available!!'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) species.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetController.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysType.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) species.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPrimitiveImplValues.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetController.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) updateDataElement: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'No valid implementation available!!'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044c8b4; bytecode file offset 0xd49250"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
createWidgetHierarchyPageComment
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageComment.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'comment'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280ff190Arg1 | 
    | block280ff190Value0 block280ff190Value1 block280ff190Value2 block280ff190Value3 |
    block280ff190Value0 := block280ff190Arg1.
    block280ff190Value1 := block280ff190Value0.
    (block280ff190Value1) tabSpacing: (2).
    block280ff190Value2 := XmMULTILINEEDIT.
    block280ff190Value3 := (block280ff190Value0) editMode: (block280ff190Value2).
    block280ff190Value3
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := XmASNEEDED.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) scrollBarDisplayPolicy: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'scrolledComment'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'comment'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:block280ff1b4Arg1 | 
    | block280ff1b4Value0 block280ff1b4Value1 block280ff1b4Value2 block280ff1b4Value3 block280ff1b4Value4 block280ff1b4Value5 block280ff1b4Value6 block280ff1b4Value7 block280ff1b4Value8 block280ff1b4Value9 block280ff1b4Value10 block280ff1b4Value11 block280ff1b4Value12 |
    block280ff1b4Value0 := block280ff1b4Arg1.
    block280ff1b4Value1 := block280ff1b4Value0.
    block280ff1b4Value2 := XmATTACHFORM.
    (block280ff1b4Value1) bottomAttachment: (block280ff1b4Value2).
    block280ff1b4Value3 := block280ff1b4Value0.
    (block280ff1b4Value3) bottomOffset: (5).
    block280ff1b4Value4 := block280ff1b4Value0.
    block280ff1b4Value5 := XmATTACHFORM.
    (block280ff1b4Value4) topAttachment: (block280ff1b4Value5).
    block280ff1b4Value6 := block280ff1b4Value0.
    (block280ff1b4Value6) topOffset: (5).
    block280ff1b4Value7 := block280ff1b4Value0.
    block280ff1b4Value8 := XmATTACHFORM.
    (block280ff1b4Value7) leftAttachment: (block280ff1b4Value8).
    block280ff1b4Value9 := block280ff1b4Value0.
    (block280ff1b4Value9) leftOffset: (5).
    block280ff1b4Value10 := block280ff1b4Value0.
    block280ff1b4Value11 := XmATTACHFORM.
    (block280ff1b4Value10) rightAttachment: (block280ff1b4Value11).
    block280ff1b4Value12 := (block280ff1b4Value0) rightOffset: (5).
    block280ff1b4Value12
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a67dc; bytecode file offset 0xea312c"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
createWidgetHierarchyPageValues
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageValues.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'widgetImplFrame'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block2811602cArg1 | 
    | block2811602cValue0 block2811602cValue1 block2811602cValue2 |
    block2811602cValue0 := block2811602cArg1.
    block2811602cValue1 := block2811602cValue0.
    (block2811602cValue1) width: (378).
    block2811602cValue2 := block2811602cValue0.
    (block2811602cValue2) labelString: ('Implementation').
    block2811602cValue0
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'widgetImplFrame'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'widgetImplForm'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:block28116050Arg1 | 
    | block28116050Value0 |
    block28116050Value0 := block28116050Arg1.
    block28116050Value0
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'widgetImplForm'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'widgetASDScalarImplWidget'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [:block28116074Arg1 | 
    | block28116074Value0 |
    block28116074Value0 := block28116074Arg1.
    block28116074Value0
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDScalarImplementationWidgetNew: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'widgetASDScalarImplWidget'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'widgetASDImplementationConsistencyWidget'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [:block28116098Arg1 | 
    | block28116098Value0 |
    block28116098Value0 := block28116098Arg1.
    block28116098Value0
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDImplementationConsistencyWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'widgetASDImplementationConsistencyWidget'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := [:block281160bcArg1 | 
    | block281160bcValue0 block281160bcValue1 block281160bcValue2 block281160bcValue3 block281160bcValue4 block281160bcValue5 block281160bcValue6 block281160bcValue7 block281160bcValue8 block281160bcValue9 |
    block281160bcValue0 := block281160bcArg1.
    block281160bcValue1 := block281160bcValue0.
    block281160bcValue2 := XmATTACHFORM.
    (block281160bcValue1) topAttachment: (block281160bcValue2).
    block281160bcValue3 := block281160bcValue0.
    (block281160bcValue3) topOffset: (0).
    block281160bcValue4 := block281160bcValue0.
    block281160bcValue5 := XmATTACHFORM.
    (block281160bcValue4) leftAttachment: (block281160bcValue5).
    block281160bcValue6 := block281160bcValue0.
    (block281160bcValue6) leftOffset: (5).
    block281160bcValue7 := block281160bcValue0.
    block281160bcValue8 := XmATTACHFORM.
    (block281160bcValue7) rightAttachment: (block281160bcValue8).
    block281160bcValue9 := (block281160bcValue0) rightOffset: (5).
    block281160bcValue9
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := [:block281160e0Arg1 | 
    | block281160e0Value0 block281160e0Value1 block281160e0Value2 block281160e0Value3 block281160e0Value4 block281160e0Value5 block281160e0Value6 block281160e0Value7 block281160e0Value8 block281160e0Value9 |
    block281160e0Value0 := block281160e0Arg1.
    block281160e0Value1 := block281160e0Value0.
    block281160e0Value2 := XmATTACHFORM.
    (block281160e0Value1) topAttachment: (block281160e0Value2).
    block281160e0Value3 := block281160e0Value0.
    (block281160e0Value3) topOffset: (5).
    block281160e0Value4 := block281160e0Value0.
    block281160e0Value5 := XmATTACHFORM.
    (block281160e0Value4) rightAttachment: (block281160e0Value5).
    block281160e0Value6 := block281160e0Value0.
    (block281160e0Value6) rightOffset: (0).
    block281160e0Value7 := block281160e0Value0.
    block281160e0Value8 := XmATTACHFORM.
    (block281160e0Value7) leftAttachment: (block281160e0Value8).
    block281160e0Value9 := (block281160e0Value0) leftOffset: (0).
    block281160e0Value9
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := [:recoveredBlock232Arg1 | 
    | recoveredBlock232Value0 recoveredBlock232Value1 recoveredBlock232Value2 recoveredBlock232Value3 recoveredBlock232Value4 recoveredBlock232Value5 recoveredBlock232Value6 recoveredBlock232Value7 recoveredBlock232Value8 recoveredBlock232Value9 recoveredBlock232Value10 recoveredBlock232Value11 recoveredBlock232Value12 recoveredBlock232Value13 recoveredBlock232Value14 |
    recoveredBlock232Value0 := recoveredBlock232Arg1.
    recoveredBlock232Value1 := recoveredBlock232Value0.
    recoveredBlock232Value2 := XmATTACHWIDGET.
    (recoveredBlock232Value1) topAttachment: (recoveredBlock232Value2).
    recoveredBlock232Value3 := recoveredBlock232Value0.
    recoveredBlock232Value4 := recoveredLocal4.
    (recoveredBlock232Value3) topWidget: (recoveredBlock232Value4).
    recoveredBlock232Value5 := recoveredBlock232Value0.
    (recoveredBlock232Value5) topOffset: (0).
    recoveredBlock232Value6 := recoveredBlock232Value0.
    recoveredBlock232Value7 := XmATTACHFORM.
    (recoveredBlock232Value6) rightAttachment: (recoveredBlock232Value7).
    recoveredBlock232Value8 := recoveredBlock232Value0.
    (recoveredBlock232Value8) rightOffset: (0).
    recoveredBlock232Value9 := recoveredBlock232Value0.
    recoveredBlock232Value10 := XmATTACHFORM.
    (recoveredBlock232Value9) leftAttachment: (recoveredBlock232Value10).
    recoveredBlock232Value11 := recoveredBlock232Value0.
    (recoveredBlock232Value11) leftOffset: (0).
    recoveredBlock232Value12 := recoveredBlock232Value0.
    recoveredBlock232Value13 := XmATTACHFORM.
    (recoveredBlock232Value12) bottomAttachment: (recoveredBlock232Value13).
    recoveredBlock232Value14 := (recoveredBlock232Value0) bottomOffset: (5).
    recoveredBlock232Value14
].
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2063745c; bytecode file offset 0xf33e44"
!ASDImplementationTypeDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28120eb0Arg1 | 
    | block28120eb0Value0 block28120eb0Value1 block28120eb0Value2 block28120eb0Value3 block28120eb0Value4 block28120eb0Value5 block28120eb0Value6 block28120eb0Value7 block28120eb0Value8 block28120eb0Value9 block28120eb0Value10 block28120eb0Value11 block28120eb0Value12 block28120eb0Value13 |
    block28120eb0Value0 := block28120eb0Arg1.
    block28120eb0Value1 := block28120eb0Value0.
    block28120eb0Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28120eb0Value1) mwmInputMode: (block28120eb0Value2).
    block28120eb0Value3 := block28120eb0Value0.
    (block28120eb0Value3) title: ('Dialog').
    block28120eb0Value4 := block28120eb0Value0.
    block28120eb0Value5 := MWMDECORALL.
    block28120eb0Value6 := MWMDECORBORDER.
    block28120eb0Value7 := (block28120eb0Value5) | (block28120eb0Value6).
    block28120eb0Value8 := MWMDECORMINIMIZE.
    block28120eb0Value9 := (block28120eb0Value7) | (block28120eb0Value8).
    block28120eb0Value10 := MWMDECORMAXIMIZE.
    block28120eb0Value11 := (block28120eb0Value9) | (block28120eb0Value10).
    (block28120eb0Value4) mwmDecorations: (block28120eb0Value11).
    block28120eb0Value12 := block28120eb0Value0.
    (block28120eb0Value12) height: (460).
    block28120eb0Value13 := (block28120eb0Value0) width: (400).
    block28120eb0Value13
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'widgetButtonAutoCorrection'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := [:block28120ed4Arg1 | 
    | block28120ed4Value0 block28120ed4Value1 block28120ed4Value2 block28120ed4Value3 |
    block28120ed4Value0 := block28120ed4Arg1.
    block28120ed4Value1 := block28120ed4Value0.
    (block28120ed4Value1) labelString: ('Auto Correction').
    block28120ed4Value2 := block28120ed4Value0.
    (block28120ed4Value2) height: (24).
    block28120ed4Value3 := (block28120ed4Value0) width: (90).
    block28120ed4Value3
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 'widgetButtonAutoCorrection'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := [:block28120ef8Arg1 | 
    | block28120ef8Value0 block28120ef8Value1 block28120ef8Value2 block28120ef8Value3 block28120ef8Value4 |
    block28120ef8Value0 := ('Kk') == ('Call_55906').
    block28120ef8Value1 := block28120ef8Arg1.
    block28120ef8Value2 := block28120ef8Value1.
    (block28120ef8Value2) labelString: ('&OK').
    block28120ef8Value3 := block28120ef8Value1.
    (block28120ef8Value3) height: (24).
    block28120ef8Value4 := (block28120ef8Value1) width: (90).
    block28120ef8Value4
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := [:block28120f1cArg1 | 
    | block28120f1cValue0 block28120f1cValue1 block28120f1cValue2 block28120f1cValue3 block28120f1cValue4 |
    block28120f1cValue0 := ('Kk') == ('Call_55906').
    block28120f1cValue1 := block28120f1cArg1.
    block28120f1cValue2 := block28120f1cValue1.
    (block28120f1cValue2) labelString: ('&Cancel').
    block28120f1cValue3 := block28120f1cValue1.
    (block28120f1cValue3) height: (24).
    block28120f1cValue4 := (block28120f1cValue1) width: (90).
    block28120f1cValue4
].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 'widgetNotebook'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := [:block28120f40Arg1 | 
    | block28120f40Value0 |
    block28120f40Value0 := block28120f40Arg1.
    block28120f40Value0
].
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasTabStrip: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := 'widgetNotebook'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := [:recoveredBlock296Arg1 | 
    | recoveredBlock296Value0 recoveredBlock296Value1 recoveredBlock296Value2 |
    recoveredBlock296Value0 := recoveredBlock296Arg1.
    recoveredBlock296Value1 := recoveredLocal5.
    recoveredBlock296Value2 := (recoveredBlock296Value0) workWindow: (recoveredBlock296Value1).
    recoveredBlock296Value2
].
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := [:recoveredBlock314Arg1 | 
    | recoveredBlock314Value0 recoveredBlock314Value1 recoveredBlock314Value2 recoveredBlock314Value3 recoveredBlock314Value4 recoveredBlock314Value5 recoveredBlock314Value6 recoveredBlock314Value7 recoveredBlock314Value8 recoveredBlock314Value9 recoveredBlock314Value10 recoveredBlock314Value11 recoveredBlock314Value12 recoveredBlock314Value13 recoveredBlock314Value14 |
    recoveredBlock314Value0 := recoveredBlock314Arg1.
    recoveredBlock314Value1 := recoveredBlock314Value0.
    recoveredBlock314Value2 := XmATTACHFORM.
    (recoveredBlock314Value1) topAttachment: (recoveredBlock314Value2).
    recoveredBlock314Value3 := recoveredBlock314Value0.
    (recoveredBlock314Value3) topOffset: (2).
    recoveredBlock314Value4 := recoveredBlock314Value0.
    recoveredBlock314Value5 := XmATTACHFORM.
    (recoveredBlock314Value4) rightAttachment: (recoveredBlock314Value5).
    recoveredBlock314Value6 := recoveredBlock314Value0.
    (recoveredBlock314Value6) rightOffset: (2).
    recoveredBlock314Value7 := recoveredBlock314Value0.
    recoveredBlock314Value8 := XmATTACHFORM.
    (recoveredBlock314Value7) leftAttachment: (recoveredBlock314Value8).
    recoveredBlock314Value9 := recoveredBlock314Value0.
    (recoveredBlock314Value9) leftOffset: (2).
    recoveredBlock314Value10 := recoveredBlock314Value0.
    recoveredBlock314Value11 := XmATTACHWIDGET.
    (recoveredBlock314Value10) bottomAttachment: (recoveredBlock314Value11).
    recoveredBlock314Value12 := recoveredBlock314Value0.
    recoveredBlock314Value13 := recoveredLocal2.
    (recoveredBlock314Value12) bottomWidget: (recoveredBlock314Value13).
    recoveredBlock314Value14 := (recoveredBlock314Value0) bottomOffset: (5).
    recoveredBlock314Value14
].
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := [:block28120f64Arg1 | 
    | block28120f64Value0 block28120f64Value1 block28120f64Value2 block28120f64Value3 block28120f64Value4 block28120f64Value5 block28120f64Value6 block28120f64Value7 block28120f64Value8 block28120f64Value9 block28120f64Value10 |
    block28120f64Value0 := block28120f64Arg1.
    block28120f64Value1 := block28120f64Value0.
    block28120f64Value2 := XmATTACHFORM.
    (block28120f64Value1) leftAttachment: (block28120f64Value2).
    block28120f64Value3 := block28120f64Value0.
    (block28120f64Value3) leftOffset: (2).
    block28120f64Value4 := block28120f64Value0.
    block28120f64Value5 := XmATTACHNONE.
    (block28120f64Value4) topAttachment: (block28120f64Value5).
    block28120f64Value6 := block28120f64Value0.
    block28120f64Value7 := XmATTACHNONE.
    (block28120f64Value6) rightAttachment: (block28120f64Value7).
    block28120f64Value8 := block28120f64Value0.
    block28120f64Value9 := XmATTACHFORM.
    (block28120f64Value8) bottomAttachment: (block28120f64Value9).
    block28120f64Value10 := (block28120f64Value0) bottomOffset: (5).
    block28120f64Value10
].
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := [:block28120f88Arg1 | 
    | block28120f88Value0 block28120f88Value1 block28120f88Value2 block28120f88Value3 block28120f88Value4 block28120f88Value5 block28120f88Value6 block28120f88Value7 block28120f88Value8 block28120f88Value9 block28120f88Value10 |
    block28120f88Value0 := block28120f88Arg1.
    block28120f88Value1 := block28120f88Value0.
    block28120f88Value2 := XmATTACHNONE.
    (block28120f88Value1) leftAttachment: (block28120f88Value2).
    block28120f88Value3 := block28120f88Value0.
    block28120f88Value4 := XmATTACHNONE.
    (block28120f88Value3) topAttachment: (block28120f88Value4).
    block28120f88Value5 := block28120f88Value0.
    block28120f88Value6 := XmATTACHFORM.
    (block28120f88Value5) rightAttachment: (block28120f88Value6).
    block28120f88Value7 := block28120f88Value0.
    (block28120f88Value7) rightOffset: (2).
    block28120f88Value8 := block28120f88Value0.
    block28120f88Value9 := XmATTACHFORM.
    (block28120f88Value8) bottomAttachment: (block28120f88Value9).
    block28120f88Value10 := (block28120f88Value0) bottomOffset: (5).
    block28120f88Value10
].
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack2 := [:recoveredBlock473Arg1 | 
    | recoveredBlock473Value0 recoveredBlock473Value1 recoveredBlock473Value2 recoveredBlock473Value3 recoveredBlock473Value4 recoveredBlock473Value5 recoveredBlock473Value6 recoveredBlock473Value7 recoveredBlock473Value8 recoveredBlock473Value9 recoveredBlock473Value10 |
    recoveredBlock473Value0 := recoveredBlock473Arg1.
    recoveredBlock473Value1 := recoveredBlock473Value0.
    recoveredBlock473Value2 := XmATTACHNONE.
    (recoveredBlock473Value1) topAttachment: (recoveredBlock473Value2).
    recoveredBlock473Value3 := recoveredBlock473Value0.
    recoveredBlock473Value4 := XmATTACHWIDGET.
    (recoveredBlock473Value3) rightAttachment: (recoveredBlock473Value4).
    recoveredBlock473Value5 := recoveredBlock473Value0.
    recoveredBlock473Value6 := recoveredLocal2.
    (recoveredBlock473Value5) rightWidget: (recoveredBlock473Value6).
    recoveredBlock473Value7 := recoveredBlock473Value0.
    (recoveredBlock473Value7) rightOffset: (5).
    recoveredBlock473Value8 := recoveredBlock473Value0.
    recoveredBlock473Value9 := XmATTACHFORM.
    (recoveredBlock473Value8) bottomAttachment: (recoveredBlock473Value9).
    recoveredBlock473Value10 := (recoveredBlock473Value0) bottomOffset: (5).
    recoveredBlock473Value10
].
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack4 := 'resizeTabStrip:clientData:callData:'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack4 := 'modifyVerifyTabStrip:clientData:callData:'.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack4 := 'singleSelectionTabStrip:clientData:callData:'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack4 := 'widgetButtonOkActivate:clientData:callData:'.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack4 := 'widgetButtonCancelActivate:clientData:callData:'.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack4 := 'widgetButtonAutoCorrectionActivate:clientData:callData:'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

