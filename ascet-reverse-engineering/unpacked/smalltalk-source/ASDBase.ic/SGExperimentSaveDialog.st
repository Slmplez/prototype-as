"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200264d0; bytecode file offset 0x923928"
!SGExperimentSaveDialog methodsFor: 'recovered'!
defaultTitle
    ^'Save Experimental Environment As'
! !

"ASDBase.ic method 0x20042f9c; bytecode file offset 0x9451f8"
!SGExperimentSaveDialog methodsFor: 'recovered'!
widgetPaneName
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('name').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043b5c; bytecode file offset 0x9451f8"
!SGExperimentSaveDialog methodsFor: 'recovered'!
widgetLabelName
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelName').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043d6c; bytecode file offset 0x9451f8"
!SGExperimentSaveDialog methodsFor: 'recovered'!
widgetLabelComment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelComment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200484fc; bytecode file offset 0x9451f8"
!SGExperimentSaveDialog methodsFor: 'recovered'!
widgetPaneText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('text').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20063854; bytecode file offset 0x961970"
!SGExperimentSaveDialog methodsFor: 'recovered'!
menuEditCopy
    | recoveredValue0 |
    recoveredValue0 := (self) widgetPaneText.
    (recoveredValue0) copySelection.
    ^self
! !

"ASDBase.ic method 0x20063f94; bytecode file offset 0x961970"
!SGExperimentSaveDialog methodsFor: 'recovered'!
menuEditPaste
    | recoveredValue0 |
    recoveredValue0 := (self) widgetPaneText.
    (recoveredValue0) paste.
    ^self
! !

"ASDBase.ic method 0x20064714; bytecode file offset 0x961970"
!SGExperimentSaveDialog methodsFor: 'recovered'!
menuEditCut
    | recoveredValue0 |
    recoveredValue0 := (self) widgetPaneText.
    (recoveredValue0) cutSelection.
    ^self
! !

"ASDBase.ic method 0x200c67f8; bytecode file offset 0x9c3164"
!SGExperimentSaveDialog methodsFor: 'recovered'!
experiment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    experiment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c99f4; bytecode file offset 0x9c62ac"
!SGExperimentSaveDialog methodsFor: 'recovered'!
nameActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) okActivate: (nil) clientData: (nil) callData: (nil).
    ^self
! !

"ASDBase.ic method 0x2014b988; bytecode file offset 0xa4827c"
!SGExperimentSaveDialog methodsFor: 'recovered'!
menuEditSelectAll
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal2 := 0.
    recoveredValue0 := (self) widgetPaneText.
    recoveredValue1 := (recoveredValue0) getLastPosition.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) widgetPaneText.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) @ (recoveredValue4).
    (recoveredValue2) setSelection: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20169638; bytecode file offset 0xa65efc"
!SGExperimentSaveDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := textManager.
    recoveredValue1 := (self) widgetPaneText.
    (recoveredValue0) disconnectFromOwner: (recoveredValue1).
    experiment := nil.
    (self) result: (nil).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x201d50bc; bytecode file offset 0xad1990"
!SGExperimentSaveDialog methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) widgetLabelComment.
    (recoveredValue1) updateLabelFont: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) widgetLabelName.
    (recoveredValue3) updateLabelFont: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) widgetPaneName.
    (recoveredValue5) updateFont: (recoveredValue6).
    recoveredValue7 := (self) widgetPaneText.
    (recoveredValue0) updateTextFont: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201fced4; bytecode file offset 0xaf97a8"
!SGExperimentSaveDialog methodsFor: 'recovered'!
initializeTextWidget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwSmalltalkTextSelectionManager.
    recoveredValue1 := (self) widgetPaneText.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) connect.
    textManager := recoveredValue3.
    recoveredValue4 := (self) widgetPaneText.
    recoveredValue5 := (self) createEditMenu.
    (recoveredValue4) menu: (recoveredValue5) owner: (self).
    recoveredValue6 := (self) widgetPaneText.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) wordWrap: (false).
    (recoveredValue6) cursorPosition: (1).
    ^self
! !

"ASDBase.ic method 0x20237838; bytecode file offset 0xb3410c"
!SGExperimentSaveDialog methodsFor: 'recovered'!
menuEditFindReplace
    | recoveredLocal1 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 |
    recoveredBlock4Value0 := (self) widgetPaneText.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredLocal1 := recoveredBlock4Value1.
    (recoveredBlock4Value0) setInputFocus.
    recoveredBlock4Value2 := CwTextSearchDialog.
    recoveredBlock4Value3 := recoveredLocal1.
    recoveredBlock4Value4 := (recoveredBlock4Value2) for: (recoveredBlock4Value3).
    recoveredBlock4Value5 := recoveredBlock4Value4.
    recoveredBlock4Value6 := MWMINPUTMODELESS.
    (recoveredBlock4Value5) mwmInputMode: (recoveredBlock4Value6).
    recoveredBlock4Value7 := (recoveredBlock4Value4) open.
    recoveredBlock4Value7
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20258294; bytecode file offset 0xb54b64"
!SGExperimentSaveDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := textManager.
    recoveredValue1 := (self) widgetPaneText.
    (recoveredValue0) disconnectFromOwner: (recoveredValue1).
    recoveredValue2 := experiment.
    recoveredValue3 := (self) widgetPaneText.
    recoveredValue4 := (recoveredValue3) getString.
    (recoveredValue2) at: (2) put: (recoveredValue4).
    recoveredValue5 := experiment.
    recoveredValue6 := (self) widgetPaneName.
    recoveredValue7 := (recoveredValue6) getString.
    (recoveredValue5) at: (1) put: (recoveredValue7).
    recoveredValue8 := experiment.
    (self) result: (recoveredValue8).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x202f3c80; bytecode file offset 0xbf0560"
!SGExperimentSaveDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) grayBackground.
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) defaultTitle.
    (recoveredValue0) title: (recoveredValue1).
    recoveredValue2 := (self) widgetPaneName.
    recoveredValue3 := experiment.
    recoveredValue4 := (recoveredValue3) at: (3).
    (recoveredValue2) items: (recoveredValue4).
    recoveredValue5 := (self) widgetPaneName.
    recoveredValue6 := experiment.
    recoveredValue7 := (recoveredValue6) at: (1).
    (recoveredValue5) setString: (recoveredValue7).
    recoveredValue8 := (self) widgetPaneText.
    recoveredValue9 := experiment.
    recoveredValue10 := (recoveredValue9) at: (2).
    (recoveredValue8) setString: (recoveredValue10).
    (self) initFonts.
    (self) initializeTextWidget.
    ^self
! !

"ASDBase.ic method 0x204f0b34; bytecode file offset 0xded478"
!SGExperimentSaveDialog methodsFor: 'recovered'!
createEditMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
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
            recoveredStack3 := '~Edit'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuEditCut'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 'Cu~t'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'menuEditCut'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := XKX.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 'Ctrl+X'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 'menuEditCopy'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := '~Copy'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'menuEditCopy'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack6 := XKC.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := 'Ctrl+C'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 'menuEditPaste'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := '~Paste'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 'menuEditPaste'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack6 := XKV.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack5 := 'Ctrl+V'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := 'menuEditFindReplace'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := '~Find/Replace...'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := 'menuEditFindReplace'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack6 := XKF.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack5 := 'Ctrl+F'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := 'menuEditSelectAll'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := 'Select ~All'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := 'menuEditSelectAll'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack6 := XKA.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack5 := 'Ctrl+A'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2066e824; bytecode file offset 0xf6b230"
!SGExperimentSaveDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    (recoveredBlock25Value1) title: ('SaveAs Environment').
    recoveredBlock25Value2 := recoveredBlock25Value0.
    recoveredBlock25Value3 := recoveredLocal12.
    recoveredBlock25Value4 := (200) * (recoveredBlock25Value3).
    recoveredBlock25Value5 := (recoveredBlock25Value4) rounded.
    (recoveredBlock25Value2) height: (recoveredBlock25Value5).
    recoveredBlock25Value6 := recoveredLocal13.
    recoveredBlock25Value7 := (500) * (recoveredBlock25Value6).
    recoveredBlock25Value8 := (recoveredBlock25Value7) rounded.
    recoveredBlock25Value9 := (recoveredBlock25Value0) width: (recoveredBlock25Value8).
    recoveredBlock25Value9
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 recoveredBlock127Value14 recoveredBlock127Value15 recoveredBlock127Value16 recoveredBlock127Value17 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := recoveredBlock127Value0.
    recoveredBlock127Value2 := recoveredLocal13.
    recoveredBlock127Value3 := (360) * (recoveredBlock127Value2).
    recoveredBlock127Value4 := (recoveredBlock127Value3) rounded.
    (recoveredBlock127Value1) x: (recoveredBlock127Value4).
    recoveredBlock127Value5 := recoveredBlock127Value0.
    (recoveredBlock127Value5) labelString: ('OK').
    recoveredBlock127Value6 := recoveredBlock127Value0.
    recoveredBlock127Value7 := recoveredLocal12.
    recoveredBlock127Value8 := (20) * (recoveredBlock127Value7).
    recoveredBlock127Value9 := (recoveredBlock127Value8) rounded.
    (recoveredBlock127Value6) y: (recoveredBlock127Value9).
    recoveredBlock127Value10 := recoveredBlock127Value0.
    recoveredBlock127Value11 := recoveredLocal12.
    recoveredBlock127Value12 := (26) * (recoveredBlock127Value11).
    recoveredBlock127Value13 := (recoveredBlock127Value12) rounded.
    (recoveredBlock127Value10) height: (recoveredBlock127Value13).
    recoveredBlock127Value14 := recoveredLocal13.
    recoveredBlock127Value15 := (80) * (recoveredBlock127Value14).
    recoveredBlock127Value16 := (recoveredBlock127Value15) rounded.
    recoveredBlock127Value17 := (recoveredBlock127Value0) width: (recoveredBlock127Value16).
    recoveredBlock127Value17
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := [:recoveredBlock209Arg1 | 
    | recoveredBlock209Value0 recoveredBlock209Value1 recoveredBlock209Value2 recoveredBlock209Value3 recoveredBlock209Value4 recoveredBlock209Value5 recoveredBlock209Value6 recoveredBlock209Value7 recoveredBlock209Value8 recoveredBlock209Value9 recoveredBlock209Value10 recoveredBlock209Value11 recoveredBlock209Value12 recoveredBlock209Value13 recoveredBlock209Value14 recoveredBlock209Value15 recoveredBlock209Value16 recoveredBlock209Value17 |
    recoveredBlock209Value0 := recoveredBlock209Arg1.
    recoveredBlock209Value1 := recoveredBlock209Value0.
    recoveredBlock209Value2 := recoveredLocal13.
    recoveredBlock209Value3 := (360) * (recoveredBlock209Value2).
    recoveredBlock209Value4 := (recoveredBlock209Value3) rounded.
    (recoveredBlock209Value1) x: (recoveredBlock209Value4).
    recoveredBlock209Value5 := recoveredBlock209Value0.
    (recoveredBlock209Value5) labelString: ('Cancel').
    recoveredBlock209Value6 := recoveredBlock209Value0.
    recoveredBlock209Value7 := recoveredLocal12.
    recoveredBlock209Value8 := (55) * (recoveredBlock209Value7).
    recoveredBlock209Value9 := (recoveredBlock209Value8) rounded.
    (recoveredBlock209Value6) y: (recoveredBlock209Value9).
    recoveredBlock209Value10 := recoveredBlock209Value0.
    recoveredBlock209Value11 := recoveredLocal12.
    recoveredBlock209Value12 := (26) * (recoveredBlock209Value11).
    recoveredBlock209Value13 := (recoveredBlock209Value12) rounded.
    (recoveredBlock209Value10) height: (recoveredBlock209Value13).
    recoveredBlock209Value14 := recoveredLocal13.
    recoveredBlock209Value15 := (80) * (recoveredBlock209Value14).
    recoveredBlock209Value16 := (recoveredBlock209Value15) rounded.
    recoveredBlock209Value17 := (recoveredBlock209Value0) width: (recoveredBlock209Value16).
    recoveredBlock209Value17
].
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := [:recoveredBlock291Arg1 | 
    | recoveredBlock291Value0 recoveredBlock291Value1 recoveredBlock291Value2 recoveredBlock291Value3 recoveredBlock291Value4 recoveredBlock291Value5 recoveredBlock291Value6 recoveredBlock291Value7 recoveredBlock291Value8 recoveredBlock291Value9 recoveredBlock291Value10 recoveredBlock291Value11 recoveredBlock291Value12 recoveredBlock291Value13 recoveredBlock291Value14 |
    recoveredBlock291Value0 := recoveredBlock291Arg1.
    recoveredBlock291Value1 := recoveredBlock291Value0.
    recoveredBlock291Value2 := recoveredLocal13.
    recoveredBlock291Value3 := (348) * (recoveredBlock291Value2).
    recoveredBlock291Value4 := (recoveredBlock291Value3) rounded.
    (recoveredBlock291Value1) x: (recoveredBlock291Value4).
    recoveredBlock291Value5 := recoveredBlock291Value0.
    recoveredBlock291Value6 := XmVERTICAL.
    (recoveredBlock291Value5) orientation: (recoveredBlock291Value6).
    recoveredBlock291Value7 := recoveredBlock291Value0.
    recoveredBlock291Value8 := recoveredLocal12.
    recoveredBlock291Value9 := (202) * (recoveredBlock291Value8).
    recoveredBlock291Value10 := (recoveredBlock291Value9) rounded.
    (recoveredBlock291Value7) height: (recoveredBlock291Value10).
    recoveredBlock291Value11 := recoveredLocal13.
    recoveredBlock291Value12 := (14) * (recoveredBlock291Value11).
    recoveredBlock291Value13 := (recoveredBlock291Value12) rounded.
    recoveredBlock291Value14 := (recoveredBlock291Value0) width: (recoveredBlock291Value13).
    recoveredBlock291Value14
].
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack3 := [:recoveredBlock363Arg1 | 
    | recoveredBlock363Value0 recoveredBlock363Value1 recoveredBlock363Value2 recoveredBlock363Value3 recoveredBlock363Value4 recoveredBlock363Value5 recoveredBlock363Value6 recoveredBlock363Value7 recoveredBlock363Value8 recoveredBlock363Value9 recoveredBlock363Value10 recoveredBlock363Value11 recoveredBlock363Value12 recoveredBlock363Value13 recoveredBlock363Value14 recoveredBlock363Value15 recoveredBlock363Value16 recoveredBlock363Value17 recoveredBlock363Value18 recoveredBlock363Value19 |
    recoveredBlock363Value0 := recoveredBlock363Arg1.
    recoveredBlock363Value1 := recoveredBlock363Value0.
    recoveredBlock363Value2 := recoveredLocal13.
    recoveredBlock363Value3 := (5) * (recoveredBlock363Value2).
    recoveredBlock363Value4 := (recoveredBlock363Value3) rounded.
    (recoveredBlock363Value1) x: (recoveredBlock363Value4).
    recoveredBlock363Value5 := recoveredBlock363Value0.
    recoveredBlock363Value6 := XmSIMPLE.
    (recoveredBlock363Value5) comboBoxType: (recoveredBlock363Value6).
    recoveredBlock363Value7 := recoveredBlock363Value0.
    (recoveredBlock363Value7) visibleItemCount: (7).
    recoveredBlock363Value8 := recoveredBlock363Value0.
    recoveredBlock363Value9 := recoveredLocal12.
    recoveredBlock363Value10 := (20) * (recoveredBlock363Value9).
    recoveredBlock363Value11 := (recoveredBlock363Value10) rounded.
    (recoveredBlock363Value8) y: (recoveredBlock363Value11).
    recoveredBlock363Value12 := recoveredBlock363Value0.
    recoveredBlock363Value13 := recoveredLocal12.
    recoveredBlock363Value14 := (179) * (recoveredBlock363Value13).
    recoveredBlock363Value15 := (recoveredBlock363Value14) rounded.
    (recoveredBlock363Value12) height: (recoveredBlock363Value15).
    recoveredBlock363Value16 := recoveredLocal13.
    recoveredBlock363Value17 := (120) * (recoveredBlock363Value16).
    recoveredBlock363Value18 := (recoveredBlock363Value17) rounded.
    recoveredBlock363Value19 := (recoveredBlock363Value0) width: (recoveredBlock363Value18).
    recoveredBlock363Value19
].
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := 'text'.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := [:block281269f4Arg1 | 
    | block281269f4Value0 block281269f4Value1 block281269f4Value2 block281269f4Value3 |
    block281269f4Value0 := block281269f4Arg1.
    block281269f4Value1 := block281269f4Value0.
    (block281269f4Value1) tabSpacing: (4).
    block281269f4Value2 := XmMULTILINEEDIT.
    block281269f4Value3 := (block281269f4Value0) editMode: (block281269f4Value2).
    block281269f4Value3
].
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := 'text'.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := 'labelComment'.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack3 := [:recoveredBlock507Arg1 | 
    | recoveredBlock507Value0 recoveredBlock507Value1 recoveredBlock507Value2 recoveredBlock507Value3 recoveredBlock507Value4 recoveredBlock507Value5 recoveredBlock507Value6 recoveredBlock507Value7 |
    recoveredBlock507Value0 := recoveredBlock507Arg1.
    recoveredBlock507Value1 := recoveredBlock507Value0.
    recoveredBlock507Value2 := recoveredLocal13.
    recoveredBlock507Value3 := (135) * (recoveredBlock507Value2).
    recoveredBlock507Value4 := (recoveredBlock507Value3) rounded.
    (recoveredBlock507Value1) x: (recoveredBlock507Value4).
    recoveredBlock507Value5 := recoveredBlock507Value0.
    (recoveredBlock507Value5) labelString: ('Comment').
    recoveredBlock507Value6 := recoveredBlock507Value0.
    recoveredBlock507Value7 := (self) defaultLabelBlue.
    (recoveredBlock507Value6) foregroundColor: (recoveredBlock507Value7).
    recoveredBlock507Value0
].
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := 'labelComment'.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack2 := 'labelName'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack3 := [:recoveredBlock562Arg1 | 
    | recoveredBlock562Value0 recoveredBlock562Value1 recoveredBlock562Value2 recoveredBlock562Value3 recoveredBlock562Value4 recoveredBlock562Value5 recoveredBlock562Value6 recoveredBlock562Value7 |
    recoveredBlock562Value0 := recoveredBlock562Arg1.
    recoveredBlock562Value1 := recoveredBlock562Value0.
    recoveredBlock562Value2 := recoveredLocal13.
    recoveredBlock562Value3 := (5) * (recoveredBlock562Value2).
    recoveredBlock562Value4 := (recoveredBlock562Value3) rounded.
    (recoveredBlock562Value1) x: (recoveredBlock562Value4).
    recoveredBlock562Value5 := recoveredBlock562Value0.
    (recoveredBlock562Value5) labelString: ('Name').
    recoveredBlock562Value6 := recoveredBlock562Value0.
    recoveredBlock562Value7 := (self) defaultLabelBlue.
    (recoveredBlock562Value6) foregroundColor: (recoveredBlock562Value7).
    recoveredBlock562Value0
].
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack2 := 'labelName'.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack2 := [:recoveredBlock612Arg1 | 
    | recoveredBlock612Value0 recoveredBlock612Value1 recoveredBlock612Value2 |
    recoveredBlock612Value0 := recoveredBlock612Arg1.
    recoveredBlock612Value1 := recoveredLocal9.
    recoveredBlock612Value2 := (recoveredBlock612Value0) workWindow: (recoveredBlock612Value1).
    recoveredBlock612Value2
].
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack2 := [:block28126a18Arg1 | 
    | block28126a18Value0 block28126a18Value1 block28126a18Value2 block28126a18Value3 block28126a18Value4 block28126a18Value5 block28126a18Value6 |
    block28126a18Value0 := block28126a18Arg1.
    block28126a18Value1 := block28126a18Value0.
    block28126a18Value2 := XmATTACHOPPOSITEFORM.
    (block28126a18Value1) leftAttachment: (block28126a18Value2).
    block28126a18Value3 := block28126a18Value0.
    (block28126a18Value3) leftOffset: (-80).
    block28126a18Value4 := block28126a18Value0.
    block28126a18Value5 := XmATTACHFORM.
    (block28126a18Value4) rightAttachment: (block28126a18Value5).
    block28126a18Value6 := (block28126a18Value0) rightOffset: (5).
    block28126a18Value6
].
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack2 := [:block28126a3cArg1 | 
    | block28126a3cValue0 block28126a3cValue1 block28126a3cValue2 block28126a3cValue3 block28126a3cValue4 block28126a3cValue5 block28126a3cValue6 |
    block28126a3cValue0 := block28126a3cArg1.
    block28126a3cValue1 := block28126a3cValue0.
    block28126a3cValue2 := XmATTACHOPPOSITEFORM.
    (block28126a3cValue1) leftAttachment: (block28126a3cValue2).
    block28126a3cValue3 := block28126a3cValue0.
    (block28126a3cValue3) leftOffset: (-80).
    block28126a3cValue4 := block28126a3cValue0.
    block28126a3cValue5 := XmATTACHFORM.
    (block28126a3cValue4) rightAttachment: (block28126a3cValue5).
    block28126a3cValue6 := (block28126a3cValue0) rightOffset: (5).
    block28126a3cValue6
].
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack2 := [:recoveredBlock736Arg1 | 
    | recoveredBlock736Value0 recoveredBlock736Value1 recoveredBlock736Value2 recoveredBlock736Value3 recoveredBlock736Value4 recoveredBlock736Value5 recoveredBlock736Value6 recoveredBlock736Value7 recoveredBlock736Value8 |
    recoveredBlock736Value0 := recoveredBlock736Arg1.
    recoveredBlock736Value1 := recoveredBlock736Value0.
    recoveredBlock736Value2 := XmATTACHFORM.
    (recoveredBlock736Value1) bottomAttachment: (recoveredBlock736Value2).
    recoveredBlock736Value3 := recoveredBlock736Value0.
    recoveredBlock736Value4 := XmATTACHFORM.
    (recoveredBlock736Value3) topAttachment: (recoveredBlock736Value4).
    recoveredBlock736Value5 := recoveredBlock736Value0.
    recoveredBlock736Value6 := XmATTACHWIDGET.
    (recoveredBlock736Value5) rightAttachment: (recoveredBlock736Value6).
    recoveredBlock736Value7 := recoveredLocal8.
    recoveredBlock736Value8 := (recoveredBlock736Value0) rightWidget: (recoveredBlock736Value7).
    recoveredBlock736Value8
].
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack2 := [:recoveredBlock786Arg1 | 
    | recoveredBlock786Value0 recoveredBlock786Value1 recoveredBlock786Value2 recoveredBlock786Value3 recoveredBlock786Value4 recoveredBlock786Value5 recoveredBlock786Value6 recoveredBlock786Value7 recoveredBlock786Value8 recoveredBlock786Value9 recoveredBlock786Value10 |
    recoveredBlock786Value0 := recoveredBlock786Arg1.
    recoveredBlock786Value1 := recoveredBlock786Value0.
    recoveredBlock786Value2 := XmATTACHFORM.
    (recoveredBlock786Value1) bottomAttachment: (recoveredBlock786Value2).
    recoveredBlock786Value3 := recoveredBlock786Value0.
    (recoveredBlock786Value3) bottomOffset: (3).
    recoveredBlock786Value4 := recoveredBlock786Value0.
    recoveredBlock786Value5 := XmATTACHWIDGET.
    (recoveredBlock786Value4) topAttachment: (recoveredBlock786Value5).
    recoveredBlock786Value6 := recoveredBlock786Value0.
    recoveredBlock786Value7 := recoveredLocal1.
    (recoveredBlock786Value6) topWidget: (recoveredBlock786Value7).
    recoveredBlock786Value8 := recoveredBlock786Value0.
    recoveredBlock786Value9 := XmATTACHFORM.
    (recoveredBlock786Value8) leftAttachment: (recoveredBlock786Value9).
    recoveredBlock786Value10 := (recoveredBlock786Value0) leftOffset: (5).
    recoveredBlock786Value10
].
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack2 := [:recoveredBlock848Arg1 | 
    | recoveredBlock848Value0 recoveredBlock848Value1 recoveredBlock848Value2 recoveredBlock848Value3 recoveredBlock848Value4 recoveredBlock848Value5 recoveredBlock848Value6 recoveredBlock848Value7 recoveredBlock848Value8 recoveredBlock848Value9 recoveredBlock848Value10 recoveredBlock848Value11 recoveredBlock848Value12 recoveredBlock848Value13 recoveredBlock848Value14 recoveredBlock848Value15 recoveredBlock848Value16 recoveredBlock848Value17 recoveredBlock848Value18 recoveredBlock848Value19 recoveredBlock848Value20 recoveredBlock848Value21 recoveredBlock848Value22 recoveredBlock848Value23 recoveredBlock848Value24 recoveredBlock848Value25 recoveredBlock848Value26 recoveredBlock848Value27 recoveredBlock848Value28 recoveredBlock848Value29 recoveredBlock848Value30 recoveredBlock848Value31 recoveredBlock848Value32 recoveredBlock848Value33 recoveredBlock848Value34 recoveredBlock848Value35 |
    recoveredBlock848Value0 := recoveredBlock848Arg1.
    recoveredBlock848Value1 := recoveredBlock848Value0.
    recoveredBlock848Value2 := XmATTACHFORM.
    (recoveredBlock848Value1) bottomAttachment: (recoveredBlock848Value2).
    recoveredBlock848Value3 := recoveredBlock848Value0.
    (recoveredBlock848Value3) bottomOffset: (5).
    recoveredBlock848Value4 := recoveredBlock848Value0.
    recoveredBlock848Value5 := XmATTACHWIDGET.
    (recoveredBlock848Value4) topAttachment: (recoveredBlock848Value5).
    recoveredBlock848Value6 := recoveredBlock848Value0.
    recoveredBlock848Value7 := recoveredLocal2.
    (recoveredBlock848Value6) topWidget: (recoveredBlock848Value7).
    recoveredBlock848Value8 := recoveredBlock848Value0.
    recoveredBlock848Value9 := XmATTACHWIDGET.
    (recoveredBlock848Value8) leftAttachment: (recoveredBlock848Value9).
    recoveredBlock848Value10 := recoveredBlock848Value0.
    recoveredBlock848Value11 := recoveredLocal5.
    (recoveredBlock848Value10) leftWidget: (recoveredBlock848Value11).
    recoveredBlock848Value12 := recoveredBlock848Value0.
    (recoveredBlock848Value12) leftOffset: (10).
    recoveredBlock848Value13 := recoveredBlock848Value0.
    recoveredBlock848Value14 := XmATTACHWIDGET.
    (recoveredBlock848Value13) rightAttachment: (recoveredBlock848Value14).
    recoveredBlock848Value15 := recoveredBlock848Value0.
    recoveredBlock848Value16 := recoveredLocal6.
    (recoveredBlock848Value15) rightWidget: (recoveredBlock848Value16).
    recoveredBlock848Value17 := recoveredBlock848Value0.
    (recoveredBlock848Value17) rightOffset: (2).
    recoveredBlock848Value18 := recoveredBlock848Value0.
    recoveredBlock848Value19 := recoveredLocal13.
    recoveredBlock848Value20 := (135) * (recoveredBlock848Value19).
    recoveredBlock848Value21 := (recoveredBlock848Value20) rounded.
    (recoveredBlock848Value18) x: (recoveredBlock848Value21).
    recoveredBlock848Value22 := recoveredBlock848Value0.
    recoveredBlock848Value23 := recoveredLocal12.
    recoveredBlock848Value24 := (20) * (recoveredBlock848Value23).
    recoveredBlock848Value25 := (recoveredBlock848Value24) rounded.
    (recoveredBlock848Value22) y: (recoveredBlock848Value25).
    recoveredBlock848Value26 := recoveredBlock848Value0.
    recoveredBlock848Value27 := XmASNEEDED.
    (recoveredBlock848Value26) scrollBarDisplayPolicy: (recoveredBlock848Value27).
    recoveredBlock848Value28 := recoveredBlock848Value0.
    recoveredBlock848Value29 := recoveredLocal12.
    recoveredBlock848Value30 := (177) * (recoveredBlock848Value29).
    recoveredBlock848Value31 := (recoveredBlock848Value30) rounded.
    (recoveredBlock848Value28) height: (recoveredBlock848Value31).
    recoveredBlock848Value32 := recoveredLocal13.
    recoveredBlock848Value33 := (210) * (recoveredBlock848Value32).
    recoveredBlock848Value34 := (recoveredBlock848Value33) rounded.
    recoveredBlock848Value35 := (recoveredBlock848Value0) width: (recoveredBlock848Value34).
    recoveredBlock848Value35
].
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack2 := [:block28126a60Arg1 | 
    | block28126a60Value0 block28126a60Value1 block28126a60Value2 |
    block28126a60Value0 := block28126a60Arg1.
    block28126a60Value1 := XmATTACHFORM.
    block28126a60Value2 := (block28126a60Value0) topAttachment: (block28126a60Value1).
    block28126a60Value2
].
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack2 := [:block28126a84Arg1 | 
    | block28126a84Value0 block28126a84Value1 block28126a84Value2 |
    block28126a84Value0 := block28126a84Arg1.
    block28126a84Value1 := XmATTACHFORM.
    block28126a84Value2 := (block28126a84Value0) topAttachment: (block28126a84Value1).
    block28126a84Value2
].
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            recoveredStack4 := 'nameActivate:clientData:callData:'.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 1129.
        ].
        recoveredStep = 1129 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1137.
        ].
        recoveredStep = 1137 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

