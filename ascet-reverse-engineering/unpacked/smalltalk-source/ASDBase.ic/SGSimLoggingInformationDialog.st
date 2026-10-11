"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20043d7c; bytecode file offset 0x9451f8"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
widgetTextProject
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textProject').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004412c; bytecode file offset 0x9451f8"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
widgetTextTool
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textTool').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044c3c; bytecode file offset 0x9451f8"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
widgetButtonDiscard
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonDiscard').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004557c; bytecode file offset 0x9451f8"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
widgetTextComment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textComment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045acc; bytecode file offset 0x9451f8"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
widgetTextCompany
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textCompany').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200473fc; bytecode file offset 0x9451f8"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
widgetButtonSave
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonSave').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047e6c; bytecode file offset 0x9451f8"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
widgetTextUser
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textUser').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a404; bytecode file offset 0x957a6c"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
buttonSaveActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) save.
    ^self
! !

"ASDBase.ic method 0x2005a59c; bytecode file offset 0x957a6c"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
buttonDiscardActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) discard.
    ^self
! !

"ASDBase.ic method 0x200801d0; bytecode file offset 0x97ca84"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
defaultWidth
    ^427
! !

"ASDBase.ic method 0x200805c4; bytecode file offset 0x97ce78"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
defaultHeight
    ^319
! !

"ASDBase.ic method 0x2009e224; bytecode file offset 0x99aadc"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
discard
    headerInfo := nil.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200c62f0; bytecode file offset 0x9c2bec"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
header: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    headerInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20102d50; bytecode file offset 0x9ff65c"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
menuEditCut
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTextWidgetWithFocus.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) cutSelection.
            recoveredPC := 13.
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

"ASDBase.ic method 0x20102d90; bytecode file offset 0x9ff65c"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
menuEditCopy
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTextWidgetWithFocus.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) copySelection.
            recoveredPC := 13.
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

"ASDBase.ic method 0x20102da0; bytecode file offset 0x9ff65c"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
menuEditPaste
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTextWidgetWithFocus.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) paste.
            recoveredPC := 13.
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

"ASDBase.ic method 0x2012c778; bytecode file offset 0xa29040"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetTextComment.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setInputFocus.
    recoveredValue2 := (self) widgetTextComment.
    recoveredValue3 := (recoveredValue2) getLastPosition.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012cc84; bytecode file offset 0xa29554"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
newTime
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetTextComment.
    recoveredValue1 := SGTimeStamp.
    recoveredValue2 := (recoveredValue1) now.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('Date: ') , (recoveredValue3).
    (recoveredValue0) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2019dc78; bytecode file offset 0xa9a53c"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
menuEditSelectAll
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTextWidgetWithFocus.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastPosition.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) setSelection: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a87e4; bytecode file offset 0xba50c8"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
save
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := headerInfo.
    recoveredValue1 := (self) widgetTextCompany.
    recoveredValue2 := (recoveredValue1) value.
    (recoveredValue0) division: (recoveredValue2).
    recoveredValue3 := headerInfo.
    recoveredValue4 := (self) widgetTextProject.
    recoveredValue5 := (recoveredValue4) value.
    (recoveredValue3) project: (recoveredValue5).
    recoveredValue6 := headerInfo.
    recoveredValue7 := (self) widgetTextUser.
    recoveredValue8 := (recoveredValue7) value.
    (recoveredValue6) name: (recoveredValue8).
    recoveredValue9 := headerInfo.
    recoveredValue10 := (self) widgetTextTool.
    recoveredValue11 := (recoveredValue10) value.
    (recoveredValue9) subject: (recoveredValue11).
    recoveredValue12 := headerInfo.
    recoveredValue13 := (self) widgetTextComment.
    recoveredValue14 := (recoveredValue13) value.
    (recoveredValue12) text: (recoveredValue14).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x202bad58; bytecode file offset 0xbb7634"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) widgetAt: ('aForm1').
    (recoveredValue0) updateLabelsForForm: (recoveredValue1).
    recoveredValue2 := SGUserInterfaceSettings.
    recoveredValue3 := (self) widgetTextComment.
    (recoveredValue2) updateFont: (recoveredValue3).
    recoveredValue4 := SGUserInterfaceSettings.
    recoveredValue5 := (self) widgetTextCompany.
    (recoveredValue4) updateFont: (recoveredValue5).
    recoveredValue6 := SGUserInterfaceSettings.
    recoveredValue7 := (self) widgetTextProject.
    (recoveredValue6) updateFont: (recoveredValue7).
    recoveredValue8 := SGUserInterfaceSettings.
    recoveredValue9 := (self) widgetTextTool.
    (recoveredValue8) updateFont: (recoveredValue9).
    recoveredValue10 := SGUserInterfaceSettings.
    recoveredValue11 := (self) widgetTextUser.
    (recoveredValue10) updateFont: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2031b9b8; bytecode file offset 0xc18284"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
getTextWidgetWithFocus
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextCompany.
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
            recoveredStack0 := (recoveredStack0) widgetTextCompany.
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
            recoveredStack0 := (recoveredStack0) widgetTextProject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextProject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextUser.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextUser.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextTool.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextTool.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextComment.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextComment.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20394378; bytecode file offset 0xc90c70"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
promptWithParent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultWidth.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultHeight.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) position: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) setAppModal.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) readAndDispatch.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := headerInfo.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20394c3c; bytecode file offset 0xc91540"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    (self) updateFonts.
    (self) grayBackground.
    (self) installActionKeys.
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) getCurrentFileName.
    recoveredValue2 := ('Logging Information for: <') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('>').
    (self) title: (recoveredValue3).
    recoveredValue4 := (self) widgetTextCompany.
    recoveredValue5 := headerInfo.
    recoveredValue6 := (recoveredValue5) division.
    (recoveredValue4) value: (recoveredValue6).
    recoveredValue7 := (self) widgetTextProject.
    recoveredValue8 := headerInfo.
    recoveredValue9 := (recoveredValue8) project.
    (recoveredValue7) value: (recoveredValue9).
    recoveredValue10 := (self) widgetTextUser.
    recoveredValue11 := headerInfo.
    recoveredValue12 := (recoveredValue11) name.
    (recoveredValue10) value: (recoveredValue12).
    recoveredValue13 := (self) widgetTextTool.
    recoveredValue14 := headerInfo.
    recoveredValue15 := (recoveredValue14) subject.
    (recoveredValue13) value: (recoveredValue15).
    recoveredValue16 := (self) widgetTextComment.
    recoveredValue17 := headerInfo.
    recoveredValue18 := (recoveredValue17) text.
    (recoveredValue16) value: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x203c236c; bytecode file offset 0xcbec60"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := ('Kli') == ('Call_69989').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := XKCancel.
    (recoveredValue6) at: (recoveredValue7) put: ('discard').
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := Character.
    recoveredValue10 := (recoveredValue9) value: (27).
    (recoveredValue8) at: (recoveredValue10) put: ('discard').
    recoveredValue11 := recoveredValue5.
    recoveredValue12 := Character.
    recoveredValue13 := (recoveredValue12) value: (13).
    (recoveredValue11) at: (recoveredValue13) put: ('save').
    recoveredValue14 := recoveredValue5.
    (recoveredValue14) at: ('Alt-s') put: ('save').
    recoveredValue15 := recoveredValue5.
    (recoveredValue15) at: ('Alt-d') put: ('discard').
    recoveredValue16 := recoveredValue5.
    (recoveredValue16) at: ('Alt-t') put: ('newTime').
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (self) shell.
    recoveredValue19 := recoveredLocal1.
    (recoveredValue17) at: (recoveredValue18) put: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x20473f28; bytecode file offset 0xd70850"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
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
            recoveredStack3 := 'menuEditSelectAll'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := 'Select ~All'.
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
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20686ea4; bytecode file offset 0xf838c8"
!SGSimLoggingInformationDialog methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 recoveredBlock24Value13 recoveredBlock24Value14 recoveredBlock24Value15 recoveredBlock24Value16 recoveredBlock24Value17 recoveredBlock24Value18 recoveredBlock24Value19 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('Logging Information').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := MWMDECORALL.
    recoveredBlock24Value4 := MWMDECORRESIZEH.
    recoveredBlock24Value5 := (recoveredBlock24Value3) | (recoveredBlock24Value4).
    recoveredBlock24Value6 := MWMDECORMENU.
    recoveredBlock24Value7 := (recoveredBlock24Value5) | (recoveredBlock24Value6).
    recoveredBlock24Value8 := MWMDECORMINIMIZE.
    recoveredBlock24Value9 := (recoveredBlock24Value7) | (recoveredBlock24Value8).
    recoveredBlock24Value10 := MWMDECORMAXIMIZE.
    recoveredBlock24Value11 := (recoveredBlock24Value9) | (recoveredBlock24Value10).
    (recoveredBlock24Value2) mwmDecorations: (recoveredBlock24Value11).
    recoveredBlock24Value12 := recoveredBlock24Value0.
    recoveredBlock24Value13 := recoveredLocal17.
    recoveredBlock24Value14 := (319) * (recoveredBlock24Value13).
    recoveredBlock24Value15 := (recoveredBlock24Value14) rounded.
    (recoveredBlock24Value12) height: (recoveredBlock24Value15).
    recoveredBlock24Value16 := recoveredLocal18.
    recoveredBlock24Value17 := (427) * (recoveredBlock24Value16).
    recoveredBlock24Value18 := (recoveredBlock24Value17) rounded.
    recoveredBlock24Value19 := (recoveredBlock24Value0) width: (recoveredBlock24Value18).
    recoveredBlock24Value19
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := [:block28129f1cArg1 | 
    | block28129f1cValue0 block28129f1cValue1 |
    block28129f1cValue0 := block28129f1cArg1.
    block28129f1cValue1 := (block28129f1cValue0) borderWidth: (1).
    block28129f1cValue1
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := [:recoveredBlock160Arg1 | 
    | recoveredBlock160Value0 recoveredBlock160Value1 recoveredBlock160Value2 recoveredBlock160Value3 recoveredBlock160Value4 recoveredBlock160Value5 recoveredBlock160Value6 recoveredBlock160Value7 recoveredBlock160Value8 recoveredBlock160Value9 recoveredBlock160Value10 recoveredBlock160Value11 recoveredBlock160Value12 recoveredBlock160Value13 recoveredBlock160Value14 |
    recoveredBlock160Value0 := recoveredBlock160Arg1.
    recoveredBlock160Value1 := recoveredBlock160Value0.
    recoveredBlock160Value2 := recoveredLocal18.
    recoveredBlock160Value3 := (325) * (recoveredBlock160Value2).
    recoveredBlock160Value4 := (recoveredBlock160Value3) rounded.
    (recoveredBlock160Value1) x: (recoveredBlock160Value4).
    recoveredBlock160Value5 := recoveredBlock160Value0.
    recoveredBlock160Value6 := XmVERTICAL.
    (recoveredBlock160Value5) orientation: (recoveredBlock160Value6).
    recoveredBlock160Value7 := recoveredBlock160Value0.
    recoveredBlock160Value8 := recoveredLocal17.
    recoveredBlock160Value9 := (145) * (recoveredBlock160Value8).
    recoveredBlock160Value10 := (recoveredBlock160Value9) rounded.
    (recoveredBlock160Value7) height: (recoveredBlock160Value10).
    recoveredBlock160Value11 := recoveredLocal18.
    recoveredBlock160Value12 := (5) * (recoveredBlock160Value11).
    recoveredBlock160Value13 := (recoveredBlock160Value12) rounded.
    recoveredBlock160Value14 := (recoveredBlock160Value0) width: (recoveredBlock160Value13).
    recoveredBlock160Value14
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 'buttonSave'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := [:recoveredBlock231Arg1 | 
    | recoveredBlock231Value0 recoveredBlock231Value1 recoveredBlock231Value2 recoveredBlock231Value3 recoveredBlock231Value4 recoveredBlock231Value5 recoveredBlock231Value6 recoveredBlock231Value7 recoveredBlock231Value8 recoveredBlock231Value9 recoveredBlock231Value10 recoveredBlock231Value11 recoveredBlock231Value12 recoveredBlock231Value13 recoveredBlock231Value14 recoveredBlock231Value15 recoveredBlock231Value16 recoveredBlock231Value17 |
    recoveredBlock231Value0 := recoveredBlock231Arg1.
    recoveredBlock231Value1 := recoveredBlock231Value0.
    recoveredBlock231Value2 := recoveredLocal18.
    recoveredBlock231Value3 := (335) * (recoveredBlock231Value2).
    recoveredBlock231Value4 := (recoveredBlock231Value3) rounded.
    (recoveredBlock231Value1) x: (recoveredBlock231Value4).
    recoveredBlock231Value5 := recoveredBlock231Value0.
    (recoveredBlock231Value5) labelString: ('&Save').
    recoveredBlock231Value6 := recoveredBlock231Value0.
    recoveredBlock231Value7 := recoveredLocal17.
    recoveredBlock231Value8 := (15) * (recoveredBlock231Value7).
    recoveredBlock231Value9 := (recoveredBlock231Value8) rounded.
    (recoveredBlock231Value6) y: (recoveredBlock231Value9).
    recoveredBlock231Value10 := recoveredBlock231Value0.
    recoveredBlock231Value11 := recoveredLocal17.
    recoveredBlock231Value12 := (25) * (recoveredBlock231Value11).
    recoveredBlock231Value13 := (recoveredBlock231Value12) rounded.
    (recoveredBlock231Value10) height: (recoveredBlock231Value13).
    recoveredBlock231Value14 := recoveredLocal18.
    recoveredBlock231Value15 := (80) * (recoveredBlock231Value14).
    recoveredBlock231Value16 := (recoveredBlock231Value15) rounded.
    recoveredBlock231Value17 := (recoveredBlock231Value0) width: (recoveredBlock231Value16).
    recoveredBlock231Value17
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := 'buttonSave'.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := 'buttonDiscard'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := [:recoveredBlock313Arg1 | 
    | recoveredBlock313Value0 recoveredBlock313Value1 recoveredBlock313Value2 recoveredBlock313Value3 recoveredBlock313Value4 recoveredBlock313Value5 recoveredBlock313Value6 recoveredBlock313Value7 recoveredBlock313Value8 recoveredBlock313Value9 recoveredBlock313Value10 recoveredBlock313Value11 recoveredBlock313Value12 recoveredBlock313Value13 recoveredBlock313Value14 recoveredBlock313Value15 recoveredBlock313Value16 recoveredBlock313Value17 |
    recoveredBlock313Value0 := recoveredBlock313Arg1.
    recoveredBlock313Value1 := recoveredBlock313Value0.
    recoveredBlock313Value2 := recoveredLocal18.
    recoveredBlock313Value3 := (335) * (recoveredBlock313Value2).
    recoveredBlock313Value4 := (recoveredBlock313Value3) rounded.
    (recoveredBlock313Value1) x: (recoveredBlock313Value4).
    recoveredBlock313Value5 := recoveredBlock313Value0.
    (recoveredBlock313Value5) labelString: ('&Discard').
    recoveredBlock313Value6 := recoveredBlock313Value0.
    recoveredBlock313Value7 := recoveredLocal17.
    recoveredBlock313Value8 := (50) * (recoveredBlock313Value7).
    recoveredBlock313Value9 := (recoveredBlock313Value8) rounded.
    (recoveredBlock313Value6) y: (recoveredBlock313Value9).
    recoveredBlock313Value10 := recoveredBlock313Value0.
    recoveredBlock313Value11 := recoveredLocal17.
    recoveredBlock313Value12 := (25) * (recoveredBlock313Value11).
    recoveredBlock313Value13 := (recoveredBlock313Value12) rounded.
    (recoveredBlock313Value10) height: (recoveredBlock313Value13).
    recoveredBlock313Value14 := recoveredLocal18.
    recoveredBlock313Value15 := (80) * (recoveredBlock313Value14).
    recoveredBlock313Value16 := (recoveredBlock313Value15) rounded.
    recoveredBlock313Value17 := (recoveredBlock313Value0) width: (recoveredBlock313Value16).
    recoveredBlock313Value17
].
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := 'buttonDiscard'.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := 'textComment'.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack3 := [:recoveredBlock395Arg1 | 
    | recoveredBlock395Value0 recoveredBlock395Value1 recoveredBlock395Value2 recoveredBlock395Value3 recoveredBlock395Value4 recoveredBlock395Value5 recoveredBlock395Value6 recoveredBlock395Value7 recoveredBlock395Value8 recoveredBlock395Value9 recoveredBlock395Value10 recoveredBlock395Value11 recoveredBlock395Value12 recoveredBlock395Value13 recoveredBlock395Value14 recoveredBlock395Value15 recoveredBlock395Value16 recoveredBlock395Value17 recoveredBlock395Value18 recoveredBlock395Value19 |
    recoveredBlock395Value0 := recoveredBlock395Arg1.
    recoveredBlock395Value1 := recoveredBlock395Value0.
    recoveredBlock395Value2 := recoveredLocal17.
    recoveredBlock395Value3 := (145) * (recoveredBlock395Value2).
    recoveredBlock395Value4 := (recoveredBlock395Value3) rounded.
    (recoveredBlock395Value1) y: (recoveredBlock395Value4).
    recoveredBlock395Value5 := recoveredBlock395Value0.
    (recoveredBlock395Value5) wordWrap: (true).
    recoveredBlock395Value6 := recoveredBlock395Value0.
    recoveredBlock395Value7 := recoveredLocal18.
    recoveredBlock395Value8 := (5) * (recoveredBlock395Value7).
    recoveredBlock395Value9 := (recoveredBlock395Value8) rounded.
    (recoveredBlock395Value6) x: (recoveredBlock395Value9).
    recoveredBlock395Value10 := recoveredBlock395Value0.
    recoveredBlock395Value11 := recoveredLocal17.
    recoveredBlock395Value12 := (165) * (recoveredBlock395Value11).
    recoveredBlock395Value13 := (recoveredBlock395Value12) rounded.
    (recoveredBlock395Value10) height: (recoveredBlock395Value13).
    recoveredBlock395Value14 := recoveredBlock395Value0.
    recoveredBlock395Value15 := recoveredLocal18.
    recoveredBlock395Value16 := (315) * (recoveredBlock395Value15).
    recoveredBlock395Value17 := (recoveredBlock395Value16) rounded.
    (recoveredBlock395Value14) width: (recoveredBlock395Value17).
    recoveredBlock395Value18 := XmMULTILINEEDIT.
    recoveredBlock395Value19 := (recoveredBlock395Value0) editMode: (recoveredBlock395Value18).
    recoveredBlock395Value19
].
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack2 := 'textComment'.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := 'textTool'.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack3 := [:recoveredBlock483Arg1 | 
    | recoveredBlock483Value0 recoveredBlock483Value1 recoveredBlock483Value2 recoveredBlock483Value3 recoveredBlock483Value4 recoveredBlock483Value5 recoveredBlock483Value6 recoveredBlock483Value7 recoveredBlock483Value8 recoveredBlock483Value9 recoveredBlock483Value10 recoveredBlock483Value11 recoveredBlock483Value12 |
    recoveredBlock483Value0 := recoveredBlock483Arg1.
    recoveredBlock483Value1 := recoveredBlock483Value0.
    recoveredBlock483Value2 := recoveredLocal17.
    recoveredBlock483Value3 := (95) * (recoveredBlock483Value2).
    recoveredBlock483Value4 := (recoveredBlock483Value3) rounded.
    (recoveredBlock483Value1) y: (recoveredBlock483Value4).
    recoveredBlock483Value5 := recoveredBlock483Value0.
    recoveredBlock483Value6 := recoveredLocal18.
    recoveredBlock483Value7 := (80) * (recoveredBlock483Value6).
    recoveredBlock483Value8 := (recoveredBlock483Value7) rounded.
    (recoveredBlock483Value5) x: (recoveredBlock483Value8).
    recoveredBlock483Value9 := recoveredLocal18.
    recoveredBlock483Value10 := (240) * (recoveredBlock483Value9).
    recoveredBlock483Value11 := (recoveredBlock483Value10) rounded.
    recoveredBlock483Value12 := (recoveredBlock483Value0) width: (recoveredBlock483Value11).
    recoveredBlock483Value12
].
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack2 := 'textTool'.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := 'textProject'.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack3 := [:recoveredBlock551Arg1 | 
    | recoveredBlock551Value0 recoveredBlock551Value1 recoveredBlock551Value2 recoveredBlock551Value3 recoveredBlock551Value4 recoveredBlock551Value5 recoveredBlock551Value6 recoveredBlock551Value7 recoveredBlock551Value8 recoveredBlock551Value9 recoveredBlock551Value10 recoveredBlock551Value11 recoveredBlock551Value12 |
    recoveredBlock551Value0 := recoveredBlock551Arg1.
    recoveredBlock551Value1 := recoveredBlock551Value0.
    recoveredBlock551Value2 := recoveredLocal17.
    recoveredBlock551Value3 := (65) * (recoveredBlock551Value2).
    recoveredBlock551Value4 := (recoveredBlock551Value3) rounded.
    (recoveredBlock551Value1) y: (recoveredBlock551Value4).
    recoveredBlock551Value5 := recoveredBlock551Value0.
    recoveredBlock551Value6 := recoveredLocal18.
    recoveredBlock551Value7 := (80) * (recoveredBlock551Value6).
    recoveredBlock551Value8 := (recoveredBlock551Value7) rounded.
    (recoveredBlock551Value5) x: (recoveredBlock551Value8).
    recoveredBlock551Value9 := recoveredLocal18.
    recoveredBlock551Value10 := (240) * (recoveredBlock551Value9).
    recoveredBlock551Value11 := (recoveredBlock551Value10) rounded.
    recoveredBlock551Value12 := (recoveredBlock551Value0) width: (recoveredBlock551Value11).
    recoveredBlock551Value12
].
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack2 := 'textProject'.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack2 := 'textCompany'.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack3 := [:recoveredBlock619Arg1 | 
    | recoveredBlock619Value0 recoveredBlock619Value1 recoveredBlock619Value2 recoveredBlock619Value3 recoveredBlock619Value4 recoveredBlock619Value5 recoveredBlock619Value6 recoveredBlock619Value7 recoveredBlock619Value8 recoveredBlock619Value9 recoveredBlock619Value10 recoveredBlock619Value11 recoveredBlock619Value12 |
    recoveredBlock619Value0 := recoveredBlock619Arg1.
    recoveredBlock619Value1 := recoveredBlock619Value0.
    recoveredBlock619Value2 := recoveredLocal17.
    recoveredBlock619Value3 := (35) * (recoveredBlock619Value2).
    recoveredBlock619Value4 := (recoveredBlock619Value3) rounded.
    (recoveredBlock619Value1) y: (recoveredBlock619Value4).
    recoveredBlock619Value5 := recoveredBlock619Value0.
    recoveredBlock619Value6 := recoveredLocal18.
    recoveredBlock619Value7 := (80) * (recoveredBlock619Value6).
    recoveredBlock619Value8 := (recoveredBlock619Value7) rounded.
    (recoveredBlock619Value5) x: (recoveredBlock619Value8).
    recoveredBlock619Value9 := recoveredLocal18.
    recoveredBlock619Value10 := (240) * (recoveredBlock619Value9).
    recoveredBlock619Value11 := (recoveredBlock619Value10) rounded.
    recoveredBlock619Value12 := (recoveredBlock619Value0) width: (recoveredBlock619Value11).
    recoveredBlock619Value12
].
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack2 := 'textCompany'.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack2 := 'textUser'.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack3 := [:recoveredBlock685Arg1 | 
    | recoveredBlock685Value0 recoveredBlock685Value1 recoveredBlock685Value2 recoveredBlock685Value3 recoveredBlock685Value4 recoveredBlock685Value5 recoveredBlock685Value6 recoveredBlock685Value7 recoveredBlock685Value8 recoveredBlock685Value9 recoveredBlock685Value10 recoveredBlock685Value11 recoveredBlock685Value12 |
    recoveredBlock685Value0 := recoveredBlock685Arg1.
    recoveredBlock685Value1 := recoveredBlock685Value0.
    recoveredBlock685Value2 := recoveredLocal17.
    recoveredBlock685Value3 := (5) * (recoveredBlock685Value2).
    recoveredBlock685Value4 := (recoveredBlock685Value3) rounded.
    (recoveredBlock685Value1) y: (recoveredBlock685Value4).
    recoveredBlock685Value5 := recoveredBlock685Value0.
    recoveredBlock685Value6 := recoveredLocal18.
    recoveredBlock685Value7 := (80) * (recoveredBlock685Value6).
    recoveredBlock685Value8 := (recoveredBlock685Value7) rounded.
    (recoveredBlock685Value5) x: (recoveredBlock685Value8).
    recoveredBlock685Value9 := recoveredLocal18.
    recoveredBlock685Value10 := (240) * (recoveredBlock685Value9).
    recoveredBlock685Value11 := (recoveredBlock685Value10) rounded.
    recoveredBlock685Value12 := (recoveredBlock685Value0) width: (recoveredBlock685Value11).
    recoveredBlock685Value12
].
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack2 := 'textUser'.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack2 := 'labelComment'.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack3 := [:recoveredBlock752Arg1 | 
    | recoveredBlock752Value0 recoveredBlock752Value1 recoveredBlock752Value2 recoveredBlock752Value3 recoveredBlock752Value4 recoveredBlock752Value5 recoveredBlock752Value6 recoveredBlock752Value7 recoveredBlock752Value8 recoveredBlock752Value9 recoveredBlock752Value10 recoveredBlock752Value11 recoveredBlock752Value12 recoveredBlock752Value13 recoveredBlock752Value14 recoveredBlock752Value15 recoveredBlock752Value16 recoveredBlock752Value17 recoveredBlock752Value18 |
    recoveredBlock752Value0 := recoveredBlock752Arg1.
    recoveredBlock752Value1 := recoveredBlock752Value0.
    recoveredBlock752Value2 := recoveredLocal18.
    recoveredBlock752Value3 := (5) * (recoveredBlock752Value2).
    recoveredBlock752Value4 := (recoveredBlock752Value3) rounded.
    (recoveredBlock752Value1) x: (recoveredBlock752Value4).
    recoveredBlock752Value5 := recoveredBlock752Value0.
    recoveredBlock752Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock752Value5) alignment: (recoveredBlock752Value6).
    recoveredBlock752Value7 := recoveredBlock752Value0.
    (recoveredBlock752Value7) labelString: ('Comment').
    recoveredBlock752Value8 := recoveredBlock752Value0.
    (recoveredBlock752Value8) marginWidth: (0).
    recoveredBlock752Value9 := recoveredBlock752Value0.
    recoveredBlock752Value10 := recoveredLocal17.
    recoveredBlock752Value11 := (125) * (recoveredBlock752Value10).
    recoveredBlock752Value12 := (recoveredBlock752Value11) rounded.
    (recoveredBlock752Value9) y: (recoveredBlock752Value12).
    recoveredBlock752Value13 := recoveredBlock752Value0.
    recoveredBlock752Value14 := recoveredLocal18.
    recoveredBlock752Value15 := (80) * (recoveredBlock752Value14).
    recoveredBlock752Value16 := (recoveredBlock752Value15) rounded.
    (recoveredBlock752Value13) width: (recoveredBlock752Value16).
    recoveredBlock752Value17 := recoveredBlock752Value0.
    recoveredBlock752Value18 := (self) defaultLabelBlue.
    (recoveredBlock752Value17) foregroundColor: (recoveredBlock752Value18).
    recoveredBlock752Value0
].
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack2 := 'labelComment'.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack2 := 'labelProject'.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack3 := [:recoveredBlock854Arg1 | 
    | recoveredBlock854Value0 recoveredBlock854Value1 recoveredBlock854Value2 recoveredBlock854Value3 recoveredBlock854Value4 recoveredBlock854Value5 recoveredBlock854Value6 recoveredBlock854Value7 recoveredBlock854Value8 recoveredBlock854Value9 recoveredBlock854Value10 recoveredBlock854Value11 recoveredBlock854Value12 recoveredBlock854Value13 recoveredBlock854Value14 recoveredBlock854Value15 recoveredBlock854Value16 recoveredBlock854Value17 recoveredBlock854Value18 |
    recoveredBlock854Value0 := recoveredBlock854Arg1.
    recoveredBlock854Value1 := recoveredBlock854Value0.
    recoveredBlock854Value2 := recoveredLocal18.
    recoveredBlock854Value3 := (5) * (recoveredBlock854Value2).
    recoveredBlock854Value4 := (recoveredBlock854Value3) rounded.
    (recoveredBlock854Value1) x: (recoveredBlock854Value4).
    recoveredBlock854Value5 := recoveredBlock854Value0.
    recoveredBlock854Value6 := XmALIGNMENTEND.
    (recoveredBlock854Value5) alignment: (recoveredBlock854Value6).
    recoveredBlock854Value7 := recoveredBlock854Value0.
    (recoveredBlock854Value7) labelString: ('Project').
    recoveredBlock854Value8 := recoveredBlock854Value0.
    (recoveredBlock854Value8) marginWidth: (0).
    recoveredBlock854Value9 := recoveredBlock854Value0.
    recoveredBlock854Value10 := recoveredLocal17.
    recoveredBlock854Value11 := (66) * (recoveredBlock854Value10).
    recoveredBlock854Value12 := (recoveredBlock854Value11) rounded.
    (recoveredBlock854Value9) y: (recoveredBlock854Value12).
    recoveredBlock854Value13 := recoveredBlock854Value0.
    recoveredBlock854Value14 := recoveredLocal18.
    recoveredBlock854Value15 := (70) * (recoveredBlock854Value14).
    recoveredBlock854Value16 := (recoveredBlock854Value15) rounded.
    (recoveredBlock854Value13) width: (recoveredBlock854Value16).
    recoveredBlock854Value17 := recoveredBlock854Value0.
    recoveredBlock854Value18 := (self) defaultLabelBlue.
    (recoveredBlock854Value17) foregroundColor: (recoveredBlock854Value18).
    recoveredBlock854Value0
].
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack2 := 'labelProject'.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack2 := 'labelCompany'.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack3 := [:recoveredBlock956Arg1 | 
    | recoveredBlock956Value0 recoveredBlock956Value1 recoveredBlock956Value2 recoveredBlock956Value3 recoveredBlock956Value4 recoveredBlock956Value5 recoveredBlock956Value6 recoveredBlock956Value7 recoveredBlock956Value8 recoveredBlock956Value9 recoveredBlock956Value10 recoveredBlock956Value11 recoveredBlock956Value12 recoveredBlock956Value13 recoveredBlock956Value14 recoveredBlock956Value15 recoveredBlock956Value16 recoveredBlock956Value17 recoveredBlock956Value18 |
    recoveredBlock956Value0 := recoveredBlock956Arg1.
    recoveredBlock956Value1 := recoveredBlock956Value0.
    recoveredBlock956Value2 := recoveredLocal18.
    recoveredBlock956Value3 := (5) * (recoveredBlock956Value2).
    recoveredBlock956Value4 := (recoveredBlock956Value3) rounded.
    (recoveredBlock956Value1) x: (recoveredBlock956Value4).
    recoveredBlock956Value5 := recoveredBlock956Value0.
    recoveredBlock956Value6 := XmALIGNMENTEND.
    (recoveredBlock956Value5) alignment: (recoveredBlock956Value6).
    recoveredBlock956Value7 := recoveredBlock956Value0.
    (recoveredBlock956Value7) labelString: ('Company').
    recoveredBlock956Value8 := recoveredBlock956Value0.
    (recoveredBlock956Value8) marginWidth: (0).
    recoveredBlock956Value9 := recoveredBlock956Value0.
    recoveredBlock956Value10 := recoveredLocal17.
    recoveredBlock956Value11 := (36) * (recoveredBlock956Value10).
    recoveredBlock956Value12 := (recoveredBlock956Value11) rounded.
    (recoveredBlock956Value9) y: (recoveredBlock956Value12).
    recoveredBlock956Value13 := recoveredBlock956Value0.
    recoveredBlock956Value14 := recoveredLocal18.
    recoveredBlock956Value15 := (70) * (recoveredBlock956Value14).
    recoveredBlock956Value16 := (recoveredBlock956Value15) rounded.
    (recoveredBlock956Value13) width: (recoveredBlock956Value16).
    recoveredBlock956Value17 := recoveredBlock956Value0.
    recoveredBlock956Value18 := (self) defaultLabelBlue.
    (recoveredBlock956Value17) foregroundColor: (recoveredBlock956Value18).
    recoveredBlock956Value0
].
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack2 := 'labelCompany'.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack2 := 'labelTool'.
            recoveredPC := 1058.
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack3 := [:recoveredBlock1058Arg1 | 
    | recoveredBlock1058Value0 recoveredBlock1058Value1 recoveredBlock1058Value2 recoveredBlock1058Value3 recoveredBlock1058Value4 recoveredBlock1058Value5 recoveredBlock1058Value6 recoveredBlock1058Value7 recoveredBlock1058Value8 recoveredBlock1058Value9 recoveredBlock1058Value10 recoveredBlock1058Value11 recoveredBlock1058Value12 recoveredBlock1058Value13 recoveredBlock1058Value14 recoveredBlock1058Value15 recoveredBlock1058Value16 recoveredBlock1058Value17 recoveredBlock1058Value18 |
    recoveredBlock1058Value0 := recoveredBlock1058Arg1.
    recoveredBlock1058Value1 := recoveredBlock1058Value0.
    recoveredBlock1058Value2 := recoveredLocal18.
    recoveredBlock1058Value3 := (5) * (recoveredBlock1058Value2).
    recoveredBlock1058Value4 := (recoveredBlock1058Value3) rounded.
    (recoveredBlock1058Value1) x: (recoveredBlock1058Value4).
    recoveredBlock1058Value5 := recoveredBlock1058Value0.
    recoveredBlock1058Value6 := XmALIGNMENTEND.
    (recoveredBlock1058Value5) alignment: (recoveredBlock1058Value6).
    recoveredBlock1058Value7 := recoveredBlock1058Value0.
    (recoveredBlock1058Value7) labelString: ('Tool').
    recoveredBlock1058Value8 := recoveredBlock1058Value0.
    (recoveredBlock1058Value8) marginWidth: (0).
    recoveredBlock1058Value9 := recoveredBlock1058Value0.
    recoveredBlock1058Value10 := recoveredLocal17.
    recoveredBlock1058Value11 := (96) * (recoveredBlock1058Value10).
    recoveredBlock1058Value12 := (recoveredBlock1058Value11) rounded.
    (recoveredBlock1058Value9) y: (recoveredBlock1058Value12).
    recoveredBlock1058Value13 := recoveredBlock1058Value0.
    recoveredBlock1058Value14 := recoveredLocal18.
    recoveredBlock1058Value15 := (70) * (recoveredBlock1058Value14).
    recoveredBlock1058Value16 := (recoveredBlock1058Value15) rounded.
    (recoveredBlock1058Value13) width: (recoveredBlock1058Value16).
    recoveredBlock1058Value17 := recoveredBlock1058Value0.
    recoveredBlock1058Value18 := (self) defaultLabelBlue.
    (recoveredBlock1058Value17) foregroundColor: (recoveredBlock1058Value18).
    recoveredBlock1058Value0
].
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1137.
        ].
        recoveredStep = 1137 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1145.
        ].
        recoveredStep = 1145 ifTrue: [
            recoveredStack2 := 'labelTool'.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            recoveredStack2 := 'labelUser'.
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            recoveredStack3 := [:recoveredBlock1160Arg1 | 
    | recoveredBlock1160Value0 recoveredBlock1160Value1 recoveredBlock1160Value2 recoveredBlock1160Value3 recoveredBlock1160Value4 recoveredBlock1160Value5 recoveredBlock1160Value6 recoveredBlock1160Value7 recoveredBlock1160Value8 recoveredBlock1160Value9 recoveredBlock1160Value10 recoveredBlock1160Value11 recoveredBlock1160Value12 recoveredBlock1160Value13 recoveredBlock1160Value14 recoveredBlock1160Value15 recoveredBlock1160Value16 recoveredBlock1160Value17 recoveredBlock1160Value18 |
    recoveredBlock1160Value0 := recoveredBlock1160Arg1.
    recoveredBlock1160Value1 := recoveredBlock1160Value0.
    recoveredBlock1160Value2 := recoveredLocal18.
    recoveredBlock1160Value3 := (5) * (recoveredBlock1160Value2).
    recoveredBlock1160Value4 := (recoveredBlock1160Value3) rounded.
    (recoveredBlock1160Value1) x: (recoveredBlock1160Value4).
    recoveredBlock1160Value5 := recoveredBlock1160Value0.
    recoveredBlock1160Value6 := XmALIGNMENTEND.
    (recoveredBlock1160Value5) alignment: (recoveredBlock1160Value6).
    recoveredBlock1160Value7 := recoveredBlock1160Value0.
    (recoveredBlock1160Value7) labelString: ('User').
    recoveredBlock1160Value8 := recoveredBlock1160Value0.
    (recoveredBlock1160Value8) marginWidth: (0).
    recoveredBlock1160Value9 := recoveredBlock1160Value0.
    recoveredBlock1160Value10 := recoveredLocal17.
    recoveredBlock1160Value11 := (6) * (recoveredBlock1160Value10).
    recoveredBlock1160Value12 := (recoveredBlock1160Value11) rounded.
    (recoveredBlock1160Value9) y: (recoveredBlock1160Value12).
    recoveredBlock1160Value13 := recoveredBlock1160Value0.
    recoveredBlock1160Value14 := recoveredLocal18.
    recoveredBlock1160Value15 := (70) * (recoveredBlock1160Value14).
    recoveredBlock1160Value16 := (recoveredBlock1160Value15) rounded.
    (recoveredBlock1160Value13) width: (recoveredBlock1160Value16).
    recoveredBlock1160Value17 := recoveredBlock1160Value0.
    recoveredBlock1160Value18 := (self) defaultLabelBlue.
    (recoveredBlock1160Value17) foregroundColor: (recoveredBlock1160Value18).
    recoveredBlock1160Value0
].
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1239.
        ].
        recoveredStep = 1239 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack2 := 'labelUser'.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1255.
        ].
        recoveredStep = 1255 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1258.
        ].
        recoveredStep = 1258 ifTrue: [
            recoveredStack2 := [:recoveredBlock1258Arg1 | 
    | recoveredBlock1258Value0 recoveredBlock1258Value1 recoveredBlock1258Value2 |
    recoveredBlock1258Value0 := recoveredBlock1258Arg1.
    recoveredBlock1258Value1 := recoveredLocal14.
    recoveredBlock1258Value2 := (recoveredBlock1258Value0) workWindow: (recoveredBlock1258Value1).
    recoveredBlock1258Value2
].
            recoveredPC := 1274.
        ].
        recoveredStep = 1274 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1279.
        ].
        recoveredStep = 1279 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1282.
        ].
        recoveredStep = 1282 ifTrue: [
            recoveredStack2 := [:block28129f40Arg1 | 
    | block28129f40Value0 block28129f40Value1 block28129f40Value2 block28129f40Value3 block28129f40Value4 |
    block28129f40Value0 := block28129f40Arg1.
    block28129f40Value1 := block28129f40Value0.
    block28129f40Value2 := XmATTACHFORM.
    (block28129f40Value1) bottomAttachment: (block28129f40Value2).
    block28129f40Value3 := XmATTACHFORM.
    block28129f40Value4 := (block28129f40Value0) topAttachment: (block28129f40Value3).
    block28129f40Value4
].
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            recoveredPC := 1310.
        ].
        recoveredStep = 1310 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1315.
        ].
        recoveredStep = 1315 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1322.
        ].
        recoveredStep = 1322 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1323.
        ].
        recoveredStep = 1323 ifTrue: [
            recoveredStack4 := 'buttonSaveActivate:clientData:callData:'.
            recoveredPC := 1326.
        ].
        recoveredStep = 1326 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1327.
        ].
        recoveredStep = 1327 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1331.
        ].
        recoveredStep = 1331 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1334.
        ].
        recoveredStep = 1334 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1339.
        ].
        recoveredStep = 1339 ifTrue: [
            recoveredStack4 := 'buttonDiscardActivate:clientData:callData:'.
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1343.
        ].
        recoveredStep = 1343 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1347.
        ].
        recoveredStep = 1347 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1350.
        ].
        recoveredStep = 1350 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1355.
        ].
        recoveredStep = 1355 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1358.
        ].
        recoveredStep = 1358 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1363.
        ].
        recoveredStep = 1363 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1366.
        ].
        recoveredStep = 1366 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1371.
        ].
        recoveredStep = 1371 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1374.
        ].
        recoveredStep = 1374 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1379.
        ].
        recoveredStep = 1379 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1382.
        ].
        recoveredStep = 1382 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredStack2 := recoveredLocal19.
            recoveredPC := 1401.
        ].
        recoveredStep = 1401 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 1404.
        ].
        recoveredStep = 1404 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1409.
        ].
        recoveredStep = 1409 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

