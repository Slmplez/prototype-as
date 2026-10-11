"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20042a7c; bytecode file offset 0x9451f8"
!EtasReplaceNameDialog methodsFor: 'recovered'!
widgetNewName
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetNewName').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20042b0c; bytecode file offset 0x9451f8"
!EtasReplaceNameDialog methodsFor: 'recovered'!
widgetNewNameLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('lab2').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004478c; bytecode file offset 0x9451f8"
!EtasReplaceNameDialog methodsFor: 'recovered'!
widgetOldNameLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('lab1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004804c; bytecode file offset 0x9451f8"
!EtasReplaceNameDialog methodsFor: 'recovered'!
widgetOldName
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetOldName').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004810c; bytecode file offset 0x9451f8"
!EtasReplaceNameDialog methodsFor: 'recovered'!
widgetOk
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ok').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005aad0; bytecode file offset 0x957a6c"
!EtasReplaceNameDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005ab00; bytecode file offset 0x957a6c"
!EtasReplaceNameDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x200c6718; bytecode file offset 0x9c3164"
!EtasReplaceNameDialog methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6bac; bytecode file offset 0x9c3470"
!EtasReplaceNameDialog methodsFor: 'recovered'!
oldNameLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oldNameLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6dd0; bytecode file offset 0x9c36ec"
!EtasReplaceNameDialog methodsFor: 'recovered'!
newNameLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    newNameLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6f2c; bytecode file offset 0x9c38d8"
!EtasReplaceNameDialog methodsFor: 'recovered'!
oldName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oldName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c71a0; bytecode file offset 0x9c3a8c"
!EtasReplaceNameDialog methodsFor: 'recovered'!
newName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    newName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ddf9c; bytecode file offset 0x9da858"
!EtasReplaceNameDialog methodsFor: 'recovered'!
widgetNameLosingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (0) @ (0).
    (recoveredValue0) setSelection: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e345c; bytecode file offset 0x9dfda8"
!EtasReplaceNameDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) updateFonts.
    (self) installActionKeys.
    (self) initWidgets.
    ^self
! !

"ASDBase.ic method 0x200ed1e8; bytecode file offset 0x9e9aac"
!EtasReplaceNameDialog methodsFor: 'recovered'!
widgetNameFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202f1344; bytecode file offset 0xbedc24"
!EtasReplaceNameDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) widgetKeyActions.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XKCancel.
    (recoveredValue3) at: (recoveredValue4) put: ('cancel').
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := Character.
    recoveredValue7 := (recoveredValue6) value: (13).
    (recoveredValue5) at: (recoveredValue7) put: ('ok').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('Alt-o') put: ('ok').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('Alt-c') put: ('cancel').
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (self) shell.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue10) at: (recoveredValue11) put: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x20359438; bytecode file offset 0xc55d0c"
!EtasReplaceNameDialog methodsFor: 'recovered'!
initWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := oldName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOldName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := oldName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := newName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetNewName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := newName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := oldNameLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOldNameLabel.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := oldNameLabel.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := newNameLabel.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetNewNameLabel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := newNameLabel.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := title.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := title.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038d7d4; bytecode file offset 0xc8a0c0"
!EtasReplaceNameDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOldName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNewName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAnsiCName: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNewName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 24.
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
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNewName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNewName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'Old name and new name are equal.'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2067ee1c; bytecode file offset 0xf7b83c"
!EtasReplaceNameDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal11 := recoveredStack1.
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
    (recoveredBlock25Value3) title: ('Replace Name').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := MWMDECORALL.
    recoveredBlock25Value6 := MWMDECORMINIMIZE.
    recoveredBlock25Value7 := (recoveredBlock25Value5) | (recoveredBlock25Value6).
    recoveredBlock25Value8 := MWMDECORMAXIMIZE.
    recoveredBlock25Value9 := (recoveredBlock25Value7) | (recoveredBlock25Value8).
    (recoveredBlock25Value4) mwmDecorations: (recoveredBlock25Value9).
    recoveredBlock25Value10 := recoveredBlock25Value0.
    recoveredBlock25Value11 := recoveredLocal11.
    recoveredBlock25Value12 := (118) * (recoveredBlock25Value11).
    recoveredBlock25Value13 := (recoveredBlock25Value12) rounded.
    (recoveredBlock25Value10) height: (recoveredBlock25Value13).
    recoveredBlock25Value14 := recoveredLocal12.
    recoveredBlock25Value15 := (225) * (recoveredBlock25Value14).
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'mainForm'.
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 recoveredBlock145Value3 recoveredBlock145Value4 recoveredBlock145Value5 recoveredBlock145Value6 recoveredBlock145Value7 recoveredBlock145Value8 recoveredBlock145Value9 recoveredBlock145Value10 recoveredBlock145Value11 recoveredBlock145Value12 recoveredBlock145Value13 recoveredBlock145Value14 recoveredBlock145Value15 recoveredBlock145Value16 recoveredBlock145Value17 recoveredBlock145Value18 recoveredBlock145Value19 recoveredBlock145Value20 |
    recoveredBlock145Value0 := recoveredBlock145Arg1.
    recoveredBlock145Value1 := recoveredBlock145Value0.
    recoveredBlock145Value2 := recoveredLocal12.
    recoveredBlock145Value3 := (482) * (recoveredBlock145Value2).
    recoveredBlock145Value4 := (recoveredBlock145Value3) rounded.
    (recoveredBlock145Value1) x: (recoveredBlock145Value4).
    recoveredBlock145Value5 := recoveredBlock145Value0.
    recoveredBlock145Value6 := XmSINGLELINE.
    (recoveredBlock145Value5) separatorType: (recoveredBlock145Value6).
    recoveredBlock145Value7 := recoveredBlock145Value0.
    recoveredBlock145Value8 := XmVERTICAL.
    (recoveredBlock145Value7) orientation: (recoveredBlock145Value8).
    recoveredBlock145Value9 := recoveredBlock145Value0.
    recoveredBlock145Value10 := recoveredLocal11.
    recoveredBlock145Value11 := (35) * (recoveredBlock145Value10).
    recoveredBlock145Value12 := (recoveredBlock145Value11) rounded.
    (recoveredBlock145Value9) y: (recoveredBlock145Value12).
    recoveredBlock145Value13 := recoveredBlock145Value0.
    recoveredBlock145Value14 := recoveredLocal11.
    recoveredBlock145Value15 := (370) * (recoveredBlock145Value14).
    recoveredBlock145Value16 := (recoveredBlock145Value15) rounded.
    (recoveredBlock145Value13) height: (recoveredBlock145Value16).
    recoveredBlock145Value17 := recoveredLocal12.
    recoveredBlock145Value18 := (1) * (recoveredBlock145Value17).
    recoveredBlock145Value19 := (recoveredBlock145Value18) rounded.
    recoveredBlock145Value20 := (recoveredBlock145Value0) width: (recoveredBlock145Value19).
    recoveredBlock145Value20
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := 'lab1'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := [:recoveredBlock233Arg1 | 
    | recoveredBlock233Value0 recoveredBlock233Value1 recoveredBlock233Value2 recoveredBlock233Value3 recoveredBlock233Value4 recoveredBlock233Value5 recoveredBlock233Value6 recoveredBlock233Value7 recoveredBlock233Value8 recoveredBlock233Value9 recoveredBlock233Value10 recoveredBlock233Value11 recoveredBlock233Value12 recoveredBlock233Value13 |
    recoveredBlock233Value0 := recoveredBlock233Arg1.
    recoveredBlock233Value1 := recoveredBlock233Value0.
    recoveredBlock233Value2 := recoveredLocal12.
    recoveredBlock233Value3 := (5) * (recoveredBlock233Value2).
    recoveredBlock233Value4 := (recoveredBlock233Value3) rounded.
    (recoveredBlock233Value1) x: (recoveredBlock233Value4).
    recoveredBlock233Value5 := recoveredBlock233Value0.
    recoveredBlock233Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock233Value5) alignment: (recoveredBlock233Value6).
    recoveredBlock233Value7 := recoveredBlock233Value0.
    (recoveredBlock233Value7) labelString: ('Old Name').
    recoveredBlock233Value8 := recoveredBlock233Value0.
    recoveredBlock233Value9 := recoveredLocal11.
    recoveredBlock233Value10 := (5) * (recoveredBlock233Value9).
    recoveredBlock233Value11 := (recoveredBlock233Value10) rounded.
    (recoveredBlock233Value8) y: (recoveredBlock233Value11).
    recoveredBlock233Value12 := recoveredBlock233Value0.
    recoveredBlock233Value13 := (self) defaultLabelBlue.
    (recoveredBlock233Value12) foregroundColor: (recoveredBlock233Value13).
    recoveredBlock233Value0
].
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := 'lab1'.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := 'lab2'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := [:recoveredBlock302Arg1 | 
    | recoveredBlock302Value0 recoveredBlock302Value1 recoveredBlock302Value2 recoveredBlock302Value3 recoveredBlock302Value4 recoveredBlock302Value5 recoveredBlock302Value6 recoveredBlock302Value7 recoveredBlock302Value8 recoveredBlock302Value9 recoveredBlock302Value10 recoveredBlock302Value11 recoveredBlock302Value12 recoveredBlock302Value13 |
    recoveredBlock302Value0 := recoveredBlock302Arg1.
    recoveredBlock302Value1 := recoveredBlock302Value0.
    recoveredBlock302Value2 := recoveredLocal12.
    recoveredBlock302Value3 := (21) * (recoveredBlock302Value2).
    recoveredBlock302Value4 := (recoveredBlock302Value3) rounded.
    (recoveredBlock302Value1) x: (recoveredBlock302Value4).
    recoveredBlock302Value5 := recoveredBlock302Value0.
    recoveredBlock302Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock302Value5) alignment: (recoveredBlock302Value6).
    recoveredBlock302Value7 := recoveredBlock302Value0.
    (recoveredBlock302Value7) labelString: ('New Name').
    recoveredBlock302Value8 := recoveredBlock302Value0.
    recoveredBlock302Value9 := recoveredLocal11.
    recoveredBlock302Value10 := (86) * (recoveredBlock302Value9).
    recoveredBlock302Value11 := (recoveredBlock302Value10) rounded.
    (recoveredBlock302Value8) y: (recoveredBlock302Value11).
    recoveredBlock302Value12 := recoveredBlock302Value0.
    recoveredBlock302Value13 := (self) defaultLabelBlue.
    (recoveredBlock302Value12) foregroundColor: (recoveredBlock302Value13).
    recoveredBlock302Value0
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := 'lab2'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := 'widgetOldName'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := [:recoveredBlock371Arg1 | 
    | recoveredBlock371Value0 recoveredBlock371Value1 recoveredBlock371Value2 recoveredBlock371Value3 recoveredBlock371Value4 recoveredBlock371Value5 recoveredBlock371Value6 recoveredBlock371Value7 recoveredBlock371Value8 |
    recoveredBlock371Value0 := recoveredBlock371Arg1.
    recoveredBlock371Value1 := recoveredBlock371Value0.
    recoveredBlock371Value2 := recoveredLocal11.
    recoveredBlock371Value3 := (30) * (recoveredBlock371Value2).
    recoveredBlock371Value4 := (recoveredBlock371Value3) rounded.
    (recoveredBlock371Value1) y: (recoveredBlock371Value4).
    recoveredBlock371Value5 := recoveredLocal12.
    recoveredBlock371Value6 := (5) * (recoveredBlock371Value5).
    recoveredBlock371Value7 := (recoveredBlock371Value6) rounded.
    recoveredBlock371Value8 := (recoveredBlock371Value0) x: (recoveredBlock371Value7).
    recoveredBlock371Value8
].
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := 'widgetOldName'.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack2 := 'widgetNewName'.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := [:recoveredBlock423Arg1 | 
    | recoveredBlock423Value0 recoveredBlock423Value1 recoveredBlock423Value2 recoveredBlock423Value3 recoveredBlock423Value4 recoveredBlock423Value5 recoveredBlock423Value6 recoveredBlock423Value7 recoveredBlock423Value8 |
    recoveredBlock423Value0 := recoveredBlock423Arg1.
    recoveredBlock423Value1 := recoveredBlock423Value0.
    recoveredBlock423Value2 := recoveredLocal11.
    recoveredBlock423Value3 := (84) * (recoveredBlock423Value2).
    recoveredBlock423Value4 := (recoveredBlock423Value3) rounded.
    (recoveredBlock423Value1) y: (recoveredBlock423Value4).
    recoveredBlock423Value5 := recoveredLocal12.
    recoveredBlock423Value6 := (5) * (recoveredBlock423Value5).
    recoveredBlock423Value7 := (recoveredBlock423Value6) rounded.
    recoveredBlock423Value8 := (recoveredBlock423Value0) x: (recoveredBlock423Value7).
    recoveredBlock423Value8
].
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := 'widgetNewName'.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack3 := [:recoveredBlock477Arg1 | 
    | recoveredBlock477Value0 recoveredBlock477Value1 recoveredBlock477Value2 recoveredBlock477Value3 recoveredBlock477Value4 recoveredBlock477Value5 recoveredBlock477Value6 recoveredBlock477Value7 recoveredBlock477Value8 recoveredBlock477Value9 recoveredBlock477Value10 recoveredBlock477Value11 recoveredBlock477Value12 recoveredBlock477Value13 recoveredBlock477Value14 recoveredBlock477Value15 recoveredBlock477Value16 recoveredBlock477Value17 recoveredBlock477Value18 recoveredBlock477Value19 recoveredBlock477Value20 recoveredBlock477Value21 |
    recoveredBlock477Value0 := recoveredBlock477Arg1.
    recoveredBlock477Value1 := recoveredBlock477Value0.
    recoveredBlock477Value2 := recoveredLocal12.
    recoveredBlock477Value3 := (147) * (recoveredBlock477Value2).
    recoveredBlock477Value4 := (recoveredBlock477Value3) rounded.
    (recoveredBlock477Value1) x: (recoveredBlock477Value4).
    recoveredBlock477Value5 := recoveredBlock477Value0.
    (recoveredBlock477Value5) marginRight: (10).
    recoveredBlock477Value6 := recoveredBlock477Value0.
    (recoveredBlock477Value6) labelString: ('&OK').
    recoveredBlock477Value7 := recoveredBlock477Value0.
    (recoveredBlock477Value7) marginWidth: (0).
    recoveredBlock477Value8 := recoveredBlock477Value0.
    (recoveredBlock477Value8) marginHeight: (0).
    recoveredBlock477Value9 := recoveredBlock477Value0.
    recoveredBlock477Value10 := recoveredLocal11.
    recoveredBlock477Value11 := (5) * (recoveredBlock477Value10).
    recoveredBlock477Value12 := (recoveredBlock477Value11) rounded.
    (recoveredBlock477Value9) y: (recoveredBlock477Value12).
    recoveredBlock477Value13 := recoveredBlock477Value0.
    recoveredBlock477Value14 := recoveredLocal11.
    recoveredBlock477Value15 := (30) * (recoveredBlock477Value14).
    recoveredBlock477Value16 := (recoveredBlock477Value15) rounded.
    (recoveredBlock477Value13) height: (recoveredBlock477Value16).
    recoveredBlock477Value17 := recoveredBlock477Value0.
    (recoveredBlock477Value17) marginBottom: (10).
    recoveredBlock477Value18 := recoveredLocal12.
    recoveredBlock477Value19 := (50) * (recoveredBlock477Value18).
    recoveredBlock477Value20 := (recoveredBlock477Value19) rounded.
    recoveredBlock477Value21 := (recoveredBlock477Value0) width: (recoveredBlock477Value20).
    recoveredBlock477Value21
].
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack3 := [:recoveredBlock584Arg1 | 
    | recoveredBlock584Value0 recoveredBlock584Value1 recoveredBlock584Value2 recoveredBlock584Value3 recoveredBlock584Value4 recoveredBlock584Value5 recoveredBlock584Value6 recoveredBlock584Value7 recoveredBlock584Value8 recoveredBlock584Value9 recoveredBlock584Value10 recoveredBlock584Value11 recoveredBlock584Value12 recoveredBlock584Value13 recoveredBlock584Value14 recoveredBlock584Value15 recoveredBlock584Value16 recoveredBlock584Value17 recoveredBlock584Value18 recoveredBlock584Value19 recoveredBlock584Value20 recoveredBlock584Value21 |
    recoveredBlock584Value0 := recoveredBlock584Arg1.
    recoveredBlock584Value1 := recoveredBlock584Value0.
    recoveredBlock584Value2 := recoveredLocal12.
    recoveredBlock584Value3 := (147) * (recoveredBlock584Value2).
    recoveredBlock584Value4 := (recoveredBlock584Value3) rounded.
    (recoveredBlock584Value1) x: (recoveredBlock584Value4).
    recoveredBlock584Value5 := recoveredBlock584Value0.
    (recoveredBlock584Value5) marginRight: (10).
    recoveredBlock584Value6 := recoveredBlock584Value0.
    (recoveredBlock584Value6) labelString: ('&Cancel').
    recoveredBlock584Value7 := recoveredBlock584Value0.
    (recoveredBlock584Value7) marginWidth: (0).
    recoveredBlock584Value8 := recoveredBlock584Value0.
    (recoveredBlock584Value8) marginHeight: (0).
    recoveredBlock584Value9 := recoveredBlock584Value0.
    recoveredBlock584Value10 := recoveredLocal11.
    recoveredBlock584Value11 := (45) * (recoveredBlock584Value10).
    recoveredBlock584Value12 := (recoveredBlock584Value11) rounded.
    (recoveredBlock584Value9) y: (recoveredBlock584Value12).
    recoveredBlock584Value13 := recoveredBlock584Value0.
    recoveredBlock584Value14 := recoveredLocal11.
    recoveredBlock584Value15 := (30) * (recoveredBlock584Value14).
    recoveredBlock584Value16 := (recoveredBlock584Value15) rounded.
    (recoveredBlock584Value13) height: (recoveredBlock584Value16).
    recoveredBlock584Value17 := recoveredBlock584Value0.
    (recoveredBlock584Value17) marginBottom: (10).
    recoveredBlock584Value18 := recoveredLocal12.
    recoveredBlock584Value19 := (50) * (recoveredBlock584Value18).
    recoveredBlock584Value20 := (recoveredBlock584Value19) rounded.
    recoveredBlock584Value21 := (recoveredBlock584Value0) width: (recoveredBlock584Value20).
    recoveredBlock584Value21
].
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack2 := [:recoveredBlock688Arg1 | 
    | recoveredBlock688Value0 recoveredBlock688Value1 recoveredBlock688Value2 |
    recoveredBlock688Value0 := recoveredBlock688Arg1.
    recoveredBlock688Value1 := recoveredLocal8.
    recoveredBlock688Value2 := (recoveredBlock688Value0) workWindow: (recoveredBlock688Value1).
    recoveredBlock688Value2
].
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack2 := [:recoveredBlock712Arg1 | 
    | recoveredBlock712Value0 recoveredBlock712Value1 recoveredBlock712Value2 recoveredBlock712Value3 recoveredBlock712Value4 |
    recoveredBlock712Value0 := recoveredBlock712Arg1.
    recoveredBlock712Value1 := recoveredBlock712Value0.
    recoveredBlock712Value2 := recoveredLocal1.
    (recoveredBlock712Value1) cancelButton: (recoveredBlock712Value2).
    recoveredBlock712Value3 := recoveredLocal2.
    recoveredBlock712Value4 := (recoveredBlock712Value0) defaultButton: (recoveredBlock712Value3).
    recoveredBlock712Value4
].
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack2 := [:recoveredBlock744Arg1 | 
    | recoveredBlock744Value0 recoveredBlock744Value1 recoveredBlock744Value2 recoveredBlock744Value3 recoveredBlock744Value4 recoveredBlock744Value5 recoveredBlock744Value6 recoveredBlock744Value7 recoveredBlock744Value8 recoveredBlock744Value9 recoveredBlock744Value10 recoveredBlock744Value11 |
    recoveredBlock744Value0 := recoveredBlock744Arg1.
    recoveredBlock744Value1 := recoveredBlock744Value0.
    recoveredBlock744Value2 := XmATTACHFORM.
    (recoveredBlock744Value1) bottomAttachment: (recoveredBlock744Value2).
    recoveredBlock744Value3 := recoveredBlock744Value0.
    (recoveredBlock744Value3) bottomOffset: (5).
    recoveredBlock744Value4 := recoveredBlock744Value0.
    recoveredBlock744Value5 := XmATTACHFORM.
    (recoveredBlock744Value4) topAttachment: (recoveredBlock744Value5).
    recoveredBlock744Value6 := recoveredBlock744Value0.
    (recoveredBlock744Value6) topOffset: (5).
    recoveredBlock744Value7 := recoveredBlock744Value0.
    recoveredBlock744Value8 := XmATTACHWIDGET.
    (recoveredBlock744Value7) rightAttachment: (recoveredBlock744Value8).
    recoveredBlock744Value9 := recoveredBlock744Value0.
    recoveredBlock744Value10 := recoveredLocal2.
    (recoveredBlock744Value9) rightWidget: (recoveredBlock744Value10).
    recoveredBlock744Value11 := (recoveredBlock744Value0) rightOffset: (10).
    recoveredBlock744Value11
].
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack2 := [:recoveredBlock812Arg1 | 
    | recoveredBlock812Value0 recoveredBlock812Value1 recoveredBlock812Value2 recoveredBlock812Value3 recoveredBlock812Value4 recoveredBlock812Value5 recoveredBlock812Value6 recoveredBlock812Value7 recoveredBlock812Value8 recoveredBlock812Value9 recoveredBlock812Value10 recoveredBlock812Value11 |
    recoveredBlock812Value0 := recoveredBlock812Arg1.
    recoveredBlock812Value1 := recoveredBlock812Value0.
    recoveredBlock812Value2 := XmATTACHFORM.
    (recoveredBlock812Value1) topAttachment: (recoveredBlock812Value2).
    recoveredBlock812Value3 := recoveredBlock812Value0.
    (recoveredBlock812Value3) topOffset: (5).
    recoveredBlock812Value4 := recoveredBlock812Value0.
    recoveredBlock812Value5 := XmATTACHFORM.
    (recoveredBlock812Value4) leftAttachment: (recoveredBlock812Value5).
    recoveredBlock812Value6 := recoveredBlock812Value0.
    (recoveredBlock812Value6) leftOffset: (5).
    recoveredBlock812Value7 := recoveredBlock812Value0.
    recoveredBlock812Value8 := XmATTACHWIDGET.
    (recoveredBlock812Value7) rightAttachment: (recoveredBlock812Value8).
    recoveredBlock812Value9 := recoveredBlock812Value0.
    recoveredBlock812Value10 := recoveredLocal7.
    (recoveredBlock812Value9) rightWidget: (recoveredBlock812Value10).
    recoveredBlock812Value11 := (recoveredBlock812Value0) rightOffset: (10).
    recoveredBlock812Value11
].
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack2 := [:recoveredBlock880Arg1 | 
    | recoveredBlock880Value0 recoveredBlock880Value1 recoveredBlock880Value2 recoveredBlock880Value3 recoveredBlock880Value4 recoveredBlock880Value5 recoveredBlock880Value6 recoveredBlock880Value7 recoveredBlock880Value8 recoveredBlock880Value9 recoveredBlock880Value10 recoveredBlock880Value11 recoveredBlock880Value12 |
    recoveredBlock880Value0 := recoveredBlock880Arg1.
    recoveredBlock880Value1 := recoveredBlock880Value0.
    recoveredBlock880Value2 := XmATTACHWIDGET.
    (recoveredBlock880Value1) topAttachment: (recoveredBlock880Value2).
    recoveredBlock880Value3 := recoveredBlock880Value0.
    recoveredBlock880Value4 := recoveredLocal4.
    (recoveredBlock880Value3) topWidget: (recoveredBlock880Value4).
    recoveredBlock880Value5 := recoveredBlock880Value0.
    (recoveredBlock880Value5) topOffset: (5).
    recoveredBlock880Value6 := recoveredBlock880Value0.
    recoveredBlock880Value7 := XmATTACHFORM.
    (recoveredBlock880Value6) leftAttachment: (recoveredBlock880Value7).
    recoveredBlock880Value8 := recoveredBlock880Value0.
    (recoveredBlock880Value8) leftOffset: (5).
    recoveredBlock880Value9 := recoveredBlock880Value0.
    recoveredBlock880Value10 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock880Value9) rightAttachment: (recoveredBlock880Value10).
    recoveredBlock880Value11 := recoveredLocal6.
    recoveredBlock880Value12 := (recoveredBlock880Value0) rightWidget: (recoveredBlock880Value11).
    recoveredBlock880Value12
].
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            recoveredStack2 := [:recoveredBlock950Arg1 | 
    | recoveredBlock950Value0 recoveredBlock950Value1 recoveredBlock950Value2 recoveredBlock950Value3 recoveredBlock950Value4 recoveredBlock950Value5 recoveredBlock950Value6 recoveredBlock950Value7 recoveredBlock950Value8 recoveredBlock950Value9 recoveredBlock950Value10 recoveredBlock950Value11 recoveredBlock950Value12 |
    recoveredBlock950Value0 := recoveredBlock950Arg1.
    recoveredBlock950Value1 := recoveredBlock950Value0.
    recoveredBlock950Value2 := XmATTACHWIDGET.
    (recoveredBlock950Value1) topAttachment: (recoveredBlock950Value2).
    recoveredBlock950Value3 := recoveredBlock950Value0.
    recoveredBlock950Value4 := recoveredLocal6.
    (recoveredBlock950Value3) topWidget: (recoveredBlock950Value4).
    recoveredBlock950Value5 := recoveredBlock950Value0.
    (recoveredBlock950Value5) topOffset: (5).
    recoveredBlock950Value6 := recoveredBlock950Value0.
    recoveredBlock950Value7 := XmATTACHFORM.
    (recoveredBlock950Value6) leftAttachment: (recoveredBlock950Value7).
    recoveredBlock950Value8 := recoveredBlock950Value0.
    (recoveredBlock950Value8) leftOffset: (5).
    recoveredBlock950Value9 := recoveredBlock950Value0.
    recoveredBlock950Value10 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock950Value9) rightAttachment: (recoveredBlock950Value10).
    recoveredBlock950Value11 := recoveredLocal6.
    recoveredBlock950Value12 := (recoveredBlock950Value0) rightWidget: (recoveredBlock950Value11).
    recoveredBlock950Value12
].
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack2 := [:recoveredBlock1020Arg1 | 
    | recoveredBlock1020Value0 recoveredBlock1020Value1 recoveredBlock1020Value2 recoveredBlock1020Value3 recoveredBlock1020Value4 recoveredBlock1020Value5 recoveredBlock1020Value6 recoveredBlock1020Value7 recoveredBlock1020Value8 recoveredBlock1020Value9 recoveredBlock1020Value10 recoveredBlock1020Value11 recoveredBlock1020Value12 |
    recoveredBlock1020Value0 := recoveredBlock1020Arg1.
    recoveredBlock1020Value1 := recoveredBlock1020Value0.
    recoveredBlock1020Value2 := XmATTACHWIDGET.
    (recoveredBlock1020Value1) topAttachment: (recoveredBlock1020Value2).
    recoveredBlock1020Value3 := recoveredBlock1020Value0.
    recoveredBlock1020Value4 := recoveredLocal5.
    (recoveredBlock1020Value3) topWidget: (recoveredBlock1020Value4).
    recoveredBlock1020Value5 := recoveredBlock1020Value0.
    (recoveredBlock1020Value5) topOffset: (5).
    recoveredBlock1020Value6 := recoveredBlock1020Value0.
    recoveredBlock1020Value7 := XmATTACHFORM.
    (recoveredBlock1020Value6) leftAttachment: (recoveredBlock1020Value7).
    recoveredBlock1020Value8 := recoveredBlock1020Value0.
    (recoveredBlock1020Value8) leftOffset: (5).
    recoveredBlock1020Value9 := recoveredBlock1020Value0.
    recoveredBlock1020Value10 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1020Value9) rightAttachment: (recoveredBlock1020Value10).
    recoveredBlock1020Value11 := recoveredLocal5.
    recoveredBlock1020Value12 := (recoveredBlock1020Value0) rightWidget: (recoveredBlock1020Value11).
    recoveredBlock1020Value12
].
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredStack2 := [:block281290e8Arg1 | 
    | block281290e8Value0 block281290e8Value1 block281290e8Value2 block281290e8Value3 block281290e8Value4 block281290e8Value5 block281290e8Value6 |
    block281290e8Value0 := block281290e8Arg1.
    block281290e8Value1 := block281290e8Value0.
    block281290e8Value2 := XmATTACHFORM.
    (block281290e8Value1) topAttachment: (block281290e8Value2).
    block281290e8Value3 := block281290e8Value0.
    (block281290e8Value3) topOffset: (5).
    block281290e8Value4 := block281290e8Value0.
    block281290e8Value5 := XmATTACHFORM.
    (block281290e8Value4) rightAttachment: (block281290e8Value5).
    block281290e8Value6 := (block281290e8Value0) rightOffset: (5).
    block281290e8Value6
].
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            recoveredStack2 := [:recoveredBlock1138Arg1 | 
    | recoveredBlock1138Value0 recoveredBlock1138Value1 recoveredBlock1138Value2 recoveredBlock1138Value3 recoveredBlock1138Value4 recoveredBlock1138Value5 recoveredBlock1138Value6 recoveredBlock1138Value7 recoveredBlock1138Value8 |
    recoveredBlock1138Value0 := recoveredBlock1138Arg1.
    recoveredBlock1138Value1 := recoveredBlock1138Value0.
    recoveredBlock1138Value2 := XmATTACHWIDGET.
    (recoveredBlock1138Value1) topAttachment: (recoveredBlock1138Value2).
    recoveredBlock1138Value3 := recoveredBlock1138Value0.
    recoveredBlock1138Value4 := recoveredLocal2.
    (recoveredBlock1138Value3) topWidget: (recoveredBlock1138Value4).
    recoveredBlock1138Value5 := recoveredBlock1138Value0.
    (recoveredBlock1138Value5) topOffset: (10).
    recoveredBlock1138Value6 := recoveredBlock1138Value0.
    recoveredBlock1138Value7 := XmATTACHFORM.
    (recoveredBlock1138Value6) rightAttachment: (recoveredBlock1138Value7).
    recoveredBlock1138Value8 := (recoveredBlock1138Value0) rightOffset: (5).
    recoveredBlock1138Value8
].
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            recoveredStack4 := 'widgetNameFocus:clientData:callData:'.
            recoveredPC := 1200.
        ].
        recoveredStep = 1200 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1213.
        ].
        recoveredStep = 1213 ifTrue: [
            recoveredStack4 := 'widgetNameLosingFocus:clientData:callData:'.
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1217.
        ].
        recoveredStep = 1217 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1221.
        ].
        recoveredStep = 1221 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1224.
        ].
        recoveredStep = 1224 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            recoveredStack4 := 'widgetNameFocus:clientData:callData:'.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1233.
        ].
        recoveredStep = 1233 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack4 := 'widgetNameLosingFocus:clientData:callData:'.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1264.
        ].
        recoveredStep = 1264 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1269.
        ].
        recoveredStep = 1269 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1280.
        ].
        recoveredStep = 1280 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1281.
        ].
        recoveredStep = 1281 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1285.
        ].
        recoveredStep = 1285 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1288.
        ].
        recoveredStep = 1288 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1293.
        ].
        recoveredStep = 1293 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1296.
        ].
        recoveredStep = 1296 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1301.
        ].
        recoveredStep = 1301 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1304.
        ].
        recoveredStep = 1304 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 1323.
        ].
        recoveredStep = 1323 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1326.
        ].
        recoveredStep = 1326 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1331.
        ].
        recoveredStep = 1331 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

