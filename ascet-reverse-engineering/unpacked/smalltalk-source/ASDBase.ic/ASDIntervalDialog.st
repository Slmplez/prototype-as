"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005a7a0; bytecode file offset 0x957a6c"
!ASDIntervalDialog methodsFor: 'recovered'!
widgetButtonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005ad1c; bytecode file offset 0x957a6c"
!ASDIntervalDialog methodsFor: 'recovered'!
widgetButtonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x20061780; bytecode file offset 0x95e838"
!ASDIntervalDialog methodsFor: 'recovered'!
widgetButtonOk
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('widgetButtonOk').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070150; bytecode file offset 0x96cb7c"
!ASDIntervalDialog methodsFor: 'recovered'!
go
    | recoveredValue0 |
    recoveredValue0 := go.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200773d4; bytecode file offset 0x9757c8"
!ASDIntervalDialog methodsFor: 'recovered'!
isMinMaxSensitive
    ^true
! !

"ASDBase.ic method 0x20097964; bytecode file offset 0x995850"
!ASDIntervalDialog methodsFor: 'recovered'!
setTitle: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) title: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b2dcc; bytecode file offset 0x9af6c0"
!ASDIntervalDialog methodsFor: 'recovered'!
menuSetModelMinToDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) go.
    recoveredValue1 := (recoveredValue0) defaultInterval.
    recoveredValue2 := (recoveredValue1) left.
    (self) menuSetModelMinTo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b2de4; bytecode file offset 0x9af6c0"
!ASDIntervalDialog methodsFor: 'recovered'!
menuSetModelMaxToDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) go.
    recoveredValue1 := (recoveredValue0) defaultInterval.
    recoveredValue2 := (recoveredValue1) right.
    (self) menuSetModelMaxTo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c67e0; bytecode file offset 0x9c3164"
!ASDIntervalDialog methodsFor: 'recovered'!
go: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    go := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e55d0; bytecode file offset 0x9e1f3c"
!ASDIntervalDialog methodsFor: 'recovered'!
getIconName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
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
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ba00; bytecode file offset 0xa282c0"
!ASDIntervalDialog methodsFor: 'recovered'!
isSensitive
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
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemIsModifiable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201bf108; bytecode file offset 0xabb9dc"
!ASDIntervalDialog methodsFor: 'recovered'!
updateData
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) widgetModelMin.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := (recoveredValue1) asIntOrFloatOrFractionBasic.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) widgetModelMax.
    recoveredValue4 := (recoveredValue3) value.
    recoveredValue5 := (recoveredValue4) asIntOrFloatOrFractionBasic.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) go.
    recoveredValue7 := RBInterval.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue7) left: (recoveredValue8) right: (recoveredValue9).
    (recoveredValue6) interval: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2026fdcc; bytecode file offset 0xb6c698"
!ASDIntervalDialog methodsFor: 'recovered'!
updateSensitivity
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSensitive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonOk.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMinMaxSensitive.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMinMaxSensitive.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
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

"ASDBase.ic method 0x2028d7e0; bytecode file offset 0xb8a0b8"
!ASDIntervalDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super ok.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkLimits.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    ^self
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) updateData.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) graphicsModified: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029ee1c; bytecode file offset 0xb9b708"
!ASDIntervalDialog methodsFor: 'recovered'!
checkLimits
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntOrFloatOrFractionBasic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntOrFloatOrFractionBasic.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Interval error.\'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'Minimum value is larger than maximum value.'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a8aa0; bytecode file offset 0xba538c"
!ASDIntervalDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIconName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
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
            recoveredStack1 := (recoveredStack1) getIconName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) getIconName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := '32'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) asAtom.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) setFocus.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) updateSensitivity.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) initContextMenus.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20311318; bytecode file offset 0xc0dbfc"
!ASDIntervalDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XKCancel.
    (recoveredValue5) at: (recoveredValue6) put: ('cancel').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := Character.
    recoveredValue9 := (recoveredValue8) value: (13).
    (recoveredValue7) at: (recoveredValue9) put: ('ok').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) at: ('Alt-o') put: ('ok').
    (recoveredValue4) at: ('Alt-c') put: ('cancel').
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (self) shell.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x20332558; bytecode file offset 0xc2ee34"
!ASDIntervalDialog methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) go.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultInterval.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) interval: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
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

"ASDBase.ic method 0x2065a2bc; bytecode file offset 0xf56cc4"
!ASDIntervalDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal10 := recoveredStack1.
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
            recoveredStack3 := [:block281242b8Arg1 | 
    | block281242b8Value0 block281242b8Value1 block281242b8Value2 block281242b8Value3 block281242b8Value4 block281242b8Value5 block281242b8Value6 block281242b8Value7 block281242b8Value8 block281242b8Value9 block281242b8Value10 block281242b8Value11 block281242b8Value12 |
    block281242b8Value0 := block281242b8Arg1.
    block281242b8Value1 := block281242b8Value0.
    (block281242b8Value1) allowShellResize: (true).
    block281242b8Value2 := block281242b8Value0.
    block281242b8Value3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block281242b8Value2) mwmInputMode: (block281242b8Value3).
    block281242b8Value4 := block281242b8Value0.
    (block281242b8Value4) title: ('Dialog').
    block281242b8Value5 := MWMDECORBORDER.
    block281242b8Value6 := MWMDECORRESIZEH.
    block281242b8Value7 := (block281242b8Value5) | (block281242b8Value6).
    block281242b8Value8 := MWMDECORTITLE.
    block281242b8Value9 := (block281242b8Value7) | (block281242b8Value8).
    block281242b8Value10 := MWMDECORMENU.
    block281242b8Value11 := (block281242b8Value9) | (block281242b8Value10).
    block281242b8Value12 := (block281242b8Value0) mwmDecorations: (block281242b8Value11).
    block281242b8Value12
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) shell: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'mainWindow'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [:block281242dcArg1 | 
    | block281242dcValue0 block281242dcValue1 block281242dcValue2 |
    block281242dcValue0 := block281242dcArg1.
    block281242dcValue1 := block281242dcValue0.
    (block281242dcValue1) height: (300).
    block281242dcValue2 := (block281242dcValue0) width: (300).
    block281242dcValue2
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMainWindow: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 'mainWindow'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 'mainForm'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'mainForm'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'widgetModelMinLabel'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := [:block28124300Arg1 | 
    | block28124300Value0 block28124300Value1 block28124300Value2 block28124300Value3 block28124300Value4 block28124300Value5 |
    block28124300Value0 := block28124300Arg1.
    block28124300Value1 := block28124300Value0.
    (block28124300Value1) width: (50).
    block28124300Value2 := block28124300Value0.
    (block28124300Value2) height: (22).
    block28124300Value3 := block28124300Value0.
    block28124300Value4 := XmALIGNMENTBEGINNING.
    (block28124300Value3) alignment: (block28124300Value4).
    block28124300Value5 := block28124300Value0.
    (block28124300Value5) labelString: ('Min').
    block28124300Value0
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 'widgetModelMinLabel'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := 'widgetModelMin'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := [:block28124324Arg1 | 
    | block28124324Value0 block28124324Value1 |
    block28124324Value0 := block28124324Arg1.
    block28124324Value1 := block28124324Value0.
    (block28124324Value1) height: (22).
    block28124324Value0
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := 'widgetModelMin'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := 'widgetModelMaxLabel'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := [:block28124348Arg1 | 
    | block28124348Value0 block28124348Value1 block28124348Value2 block28124348Value3 block28124348Value4 block28124348Value5 |
    block28124348Value0 := block28124348Arg1.
    block28124348Value1 := block28124348Value0.
    (block28124348Value1) width: (50).
    block28124348Value2 := block28124348Value0.
    (block28124348Value2) height: (22).
    block28124348Value3 := block28124348Value0.
    block28124348Value4 := XmALIGNMENTBEGINNING.
    (block28124348Value3) alignment: (block28124348Value4).
    block28124348Value5 := block28124348Value0.
    (block28124348Value5) labelString: ('Max').
    block28124348Value0
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := 'widgetModelMaxLabel'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := 'widgetModelMax'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := [:block2812436cArg1 | 
    | block2812436cValue0 block2812436cValue1 |
    block2812436cValue0 := block2812436cArg1.
    block2812436cValue1 := block2812436cValue0.
    (block2812436cValue1) height: (22).
    block2812436cValue0
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := 'widgetModelMax'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := 'widgetButtonOk'.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := [:block28124390Arg1 | 
    | block28124390Value0 block28124390Value1 block28124390Value2 block28124390Value3 block28124390Value4 |
    block28124390Value0 := block28124390Arg1.
    block28124390Value1 := block28124390Value0.
    (block28124390Value1) labelString: ('OK').
    block28124390Value2 := block28124390Value0.
    (block28124390Value2) mnemonic: ($O).
    block28124390Value3 := block28124390Value0.
    (block28124390Value3) height: (24).
    block28124390Value4 := (block28124390Value0) width: (90).
    block28124390Value4
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := 'widgetButtonOk'.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := 'widgetButtonCancel'.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := [:block281243b4Arg1 | 
    | block281243b4Value0 block281243b4Value1 block281243b4Value2 block281243b4Value3 block281243b4Value4 |
    block281243b4Value0 := block281243b4Arg1.
    block281243b4Value1 := block281243b4Value0.
    (block281243b4Value1) labelString: ('Cancel').
    block281243b4Value2 := block281243b4Value0.
    (block281243b4Value2) mnemonic: ($C).
    block281243b4Value3 := block281243b4Value0.
    (block281243b4Value3) height: (24).
    block281243b4Value4 := (block281243b4Value0) width: (90).
    block281243b4Value4
].
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := 'widgetButtonCancel'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := [:recoveredBlock408Arg1 | 
    | recoveredBlock408Value0 recoveredBlock408Value1 recoveredBlock408Value2 |
    recoveredBlock408Value0 := recoveredBlock408Arg1.
    recoveredBlock408Value1 := recoveredLocal7.
    recoveredBlock408Value2 := (recoveredBlock408Value0) workWindow: (recoveredBlock408Value1).
    recoveredBlock408Value2
].
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := [:block281243d8Arg1 | 
    | block281243d8Value0 block281243d8Value1 block281243d8Value2 block281243d8Value3 block281243d8Value4 block281243d8Value5 block281243d8Value6 block281243d8Value7 block281243d8Value8 block281243d8Value9 block281243d8Value10 |
    block281243d8Value0 := block281243d8Arg1.
    block281243d8Value1 := block281243d8Value0.
    block281243d8Value2 := XmATTACHNONE.
    (block281243d8Value1) leftAttachment: (block281243d8Value2).
    block281243d8Value3 := block281243d8Value0.
    block281243d8Value4 := XmATTACHNONE.
    (block281243d8Value3) topAttachment: (block281243d8Value4).
    block281243d8Value5 := block281243d8Value0.
    block281243d8Value6 := XmATTACHFORM.
    (block281243d8Value5) rightAttachment: (block281243d8Value6).
    block281243d8Value7 := block281243d8Value0.
    (block281243d8Value7) rightOffset: (5).
    block281243d8Value8 := block281243d8Value0.
    block281243d8Value9 := XmATTACHFORM.
    (block281243d8Value8) bottomAttachment: (block281243d8Value9).
    block281243d8Value10 := (block281243d8Value0) bottomOffset: (5).
    block281243d8Value10
].
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := [:recoveredBlock496Arg1 | 
    | recoveredBlock496Value0 recoveredBlock496Value1 recoveredBlock496Value2 recoveredBlock496Value3 recoveredBlock496Value4 recoveredBlock496Value5 recoveredBlock496Value6 recoveredBlock496Value7 recoveredBlock496Value8 recoveredBlock496Value9 recoveredBlock496Value10 recoveredBlock496Value11 recoveredBlock496Value12 recoveredBlock496Value13 |
    recoveredBlock496Value0 := recoveredBlock496Arg1.
    recoveredBlock496Value1 := recoveredBlock496Value0.
    recoveredBlock496Value2 := XmATTACHNONE.
    (recoveredBlock496Value1) leftAttachment: (recoveredBlock496Value2).
    recoveredBlock496Value3 := recoveredBlock496Value0.
    recoveredBlock496Value4 := XmATTACHNONE.
    (recoveredBlock496Value3) topAttachment: (recoveredBlock496Value4).
    recoveredBlock496Value5 := recoveredBlock496Value0.
    recoveredBlock496Value6 := XmATTACHWIDGET.
    (recoveredBlock496Value5) rightAttachment: (recoveredBlock496Value6).
    recoveredBlock496Value7 := recoveredBlock496Value0.
    recoveredBlock496Value8 := recoveredLocal1.
    (recoveredBlock496Value7) rightWidget: (recoveredBlock496Value8).
    recoveredBlock496Value9 := recoveredBlock496Value0.
    (recoveredBlock496Value9) rightOffset: (5).
    recoveredBlock496Value10 := recoveredBlock496Value0.
    recoveredBlock496Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock496Value10) bottomAttachment: (recoveredBlock496Value11).
    recoveredBlock496Value12 := recoveredLocal1.
    recoveredBlock496Value13 := (recoveredBlock496Value0) bottomWidget: (recoveredBlock496Value12).
    recoveredBlock496Value13
].
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack3 := 'widgetButtonOkActivate:clientData:callData:'.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack3 := 'widgetButtonCancelActivate:clientData:callData:'.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack1 := [:block281243fcArg1 | 
    | block281243fcValue0 block281243fcValue1 block281243fcValue2 block281243fcValue3 block281243fcValue4 block281243fcValue5 block281243fcValue6 |
    block281243fcValue0 := block281243fcArg1.
    block281243fcValue1 := block281243fcValue0.
    block281243fcValue2 := XmATTACHFORM.
    (block281243fcValue1) topAttachment: (block281243fcValue2).
    block281243fcValue3 := block281243fcValue0.
    (block281243fcValue3) topOffset: (5).
    block281243fcValue4 := block281243fcValue0.
    block281243fcValue5 := XmATTACHFORM.
    (block281243fcValue4) leftAttachment: (block281243fcValue5).
    block281243fcValue6 := (block281243fcValue0) leftOffset: (5).
    block281243fcValue6
].
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := [:recoveredBlock648Arg1 | 
    | recoveredBlock648Value0 recoveredBlock648Value1 recoveredBlock648Value2 recoveredBlock648Value3 recoveredBlock648Value4 recoveredBlock648Value5 recoveredBlock648Value6 recoveredBlock648Value7 recoveredBlock648Value8 recoveredBlock648Value9 recoveredBlock648Value10 recoveredBlock648Value11 recoveredBlock648Value12 recoveredBlock648Value13 |
    recoveredBlock648Value0 := recoveredBlock648Arg1.
    recoveredBlock648Value1 := recoveredBlock648Value0.
    recoveredBlock648Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock648Value1) topAttachment: (recoveredBlock648Value2).
    recoveredBlock648Value3 := recoveredBlock648Value0.
    recoveredBlock648Value4 := recoveredLocal6.
    (recoveredBlock648Value3) topWidget: (recoveredBlock648Value4).
    recoveredBlock648Value5 := recoveredBlock648Value0.
    (recoveredBlock648Value5) topOffset: (0).
    recoveredBlock648Value6 := recoveredBlock648Value0.
    recoveredBlock648Value7 := XmATTACHFORM.
    (recoveredBlock648Value6) rightAttachment: (recoveredBlock648Value7).
    recoveredBlock648Value8 := recoveredBlock648Value0.
    (recoveredBlock648Value8) rightOffset: (5).
    recoveredBlock648Value9 := recoveredBlock648Value0.
    recoveredBlock648Value10 := XmATTACHWIDGET.
    (recoveredBlock648Value9) leftAttachment: (recoveredBlock648Value10).
    recoveredBlock648Value11 := recoveredBlock648Value0.
    recoveredBlock648Value12 := recoveredLocal6.
    (recoveredBlock648Value11) leftWidget: (recoveredBlock648Value12).
    recoveredBlock648Value13 := (recoveredBlock648Value0) leftOffset: (5).
    recoveredBlock648Value13
].
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack1 := [:recoveredBlock724Arg1 | 
    | recoveredBlock724Value0 recoveredBlock724Value1 recoveredBlock724Value2 recoveredBlock724Value3 recoveredBlock724Value4 recoveredBlock724Value5 recoveredBlock724Value6 recoveredBlock724Value7 recoveredBlock724Value8 |
    recoveredBlock724Value0 := recoveredBlock724Arg1.
    recoveredBlock724Value1 := recoveredBlock724Value0.
    recoveredBlock724Value2 := XmATTACHWIDGET.
    (recoveredBlock724Value1) topAttachment: (recoveredBlock724Value2).
    recoveredBlock724Value3 := recoveredBlock724Value0.
    recoveredBlock724Value4 := recoveredLocal5.
    (recoveredBlock724Value3) topWidget: (recoveredBlock724Value4).
    recoveredBlock724Value5 := recoveredBlock724Value0.
    (recoveredBlock724Value5) topOffset: (5).
    recoveredBlock724Value6 := recoveredBlock724Value0.
    recoveredBlock724Value7 := XmATTACHFORM.
    (recoveredBlock724Value6) leftAttachment: (recoveredBlock724Value7).
    recoveredBlock724Value8 := (recoveredBlock724Value0) leftOffset: (5).
    recoveredBlock724Value8
].
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack1 := [:recoveredBlock778Arg1 | 
    | recoveredBlock778Value0 recoveredBlock778Value1 recoveredBlock778Value2 recoveredBlock778Value3 recoveredBlock778Value4 recoveredBlock778Value5 recoveredBlock778Value6 recoveredBlock778Value7 recoveredBlock778Value8 recoveredBlock778Value9 recoveredBlock778Value10 recoveredBlock778Value11 recoveredBlock778Value12 recoveredBlock778Value13 |
    recoveredBlock778Value0 := recoveredBlock778Arg1.
    recoveredBlock778Value1 := recoveredBlock778Value0.
    recoveredBlock778Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock778Value1) topAttachment: (recoveredBlock778Value2).
    recoveredBlock778Value3 := recoveredBlock778Value0.
    recoveredBlock778Value4 := recoveredLocal4.
    (recoveredBlock778Value3) topWidget: (recoveredBlock778Value4).
    recoveredBlock778Value5 := recoveredBlock778Value0.
    (recoveredBlock778Value5) topOffset: (0).
    recoveredBlock778Value6 := recoveredBlock778Value0.
    recoveredBlock778Value7 := XmATTACHFORM.
    (recoveredBlock778Value6) rightAttachment: (recoveredBlock778Value7).
    recoveredBlock778Value8 := recoveredBlock778Value0.
    (recoveredBlock778Value8) rightOffset: (5).
    recoveredBlock778Value9 := recoveredBlock778Value0.
    recoveredBlock778Value10 := XmATTACHWIDGET.
    (recoveredBlock778Value9) leftAttachment: (recoveredBlock778Value10).
    recoveredBlock778Value11 := recoveredBlock778Value0.
    recoveredBlock778Value12 := recoveredLocal4.
    (recoveredBlock778Value11) leftWidget: (recoveredBlock778Value12).
    recoveredBlock778Value13 := (recoveredBlock778Value0) leftOffset: (5).
    recoveredBlock778Value13
].
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

