"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001619c; bytecode file offset 0x92209c"
!EtasDatabaseReplaceComponentDialog methodsFor: 'recovered'!
optionGroupName
    ^'Appearance\Editors\Component Manager'
! !

"ASDBase.ic method 0x2009c0c4; bytecode file offset 0x998d48"
!EtasDatabaseReplaceComponentDialog methodsFor: 'recovered'!
optionSelectLastUsedFolderForComponentToBeReplaced
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) basicOptionAt: ('SelectLastUsedFolderForComponentToBeReplaced').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200faa58; bytecode file offset 0x9f7334"
!EtasDatabaseReplaceComponentDialog methodsFor: 'recovered'!
close
    | recoveredValue0 |
    super close.
    recoveredValue0 := (self) optionSelectLastUsedFolderForComponentToBeReplaced.
    (recoveredValue0) removeDependent: (self).
    ^self
! !

"ASDBase.ic method 0x2010df98; bytecode file offset 0xa0a858"
!EtasDatabaseReplaceComponentDialog methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionSelectLastUsedFolderForComponentToBeReplaced.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) updateSelectionDatabaseReplaceComponent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012fd68; bytecode file offset 0xa2c630"
!EtasDatabaseReplaceComponentDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    super initializeAfterOpen.
    recoveredValue0 := (self) optionSelectLastUsedFolderForComponentToBeReplaced.
    (recoveredValue0) addDependent: (self).
    (self) updateSelectionDatabaseReplaceComponent.
    ^self
! !

"ASDBase.ic method 0x20275320; bytecode file offset 0xb71bec"
!EtasDatabaseReplaceComponentDialog methodsFor: 'recovered'!
options
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := options.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 |
    recoveredBlock6Value0 := OrderedCollection.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    options := recoveredBlock6Value1.
    recoveredBlock6Value2 := OrderedCollection.
    recoveredBlock6Value3 := (recoveredBlock6Value2) new.
    copy := recoveredBlock6Value3.
    recoveredBlock6Value4 := options.
    recoveredBlock6Value5 := (self) optionSelectLastUsedFolderForComponentToBeReplaced.
    (recoveredBlock6Value4) addFirst: (recoveredBlock6Value5).
    recoveredBlock6Value6 := copy.
    recoveredBlock6Value7 := (self) optionSelectLastUsedFolderForComponentToBeReplaced.
    recoveredBlock6Value8 := (recoveredBlock6Value7) deepCopy.
    recoveredBlock6Value9 := (recoveredBlock6Value6) addFirst: (recoveredBlock6Value8).
    recoveredBlock6Value9
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := options.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20281f30; bytecode file offset 0xb7e80c"
!EtasDatabaseReplaceComponentDialog methodsFor: 'recovered'!
updateSelectionDatabaseReplaceComponent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionSelectLastUsedFolderForComponentToBeReplaced.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLastSelectedComponentOrNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) makeVisibleItem: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) setFocusItemList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbWidgetOptions.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) lastSelectedItem.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) makeVisibleItem: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbWidget.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) setFocusItemList.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206553d8; bytecode file offset 0xf51ddc"
!EtasDatabaseReplaceComponentDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28123a6cArg1 | 
    | block28123a6cValue0 block28123a6cValue1 block28123a6cValue2 block28123a6cValue3 block28123a6cValue4 block28123a6cValue5 block28123a6cValue6 block28123a6cValue7 block28123a6cValue8 block28123a6cValue9 block28123a6cValue10 block28123a6cValue11 |
    block28123a6cValue0 := block28123a6cArg1.
    block28123a6cValue1 := block28123a6cValue0.
    block28123a6cValue2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28123a6cValue1) mwmInputMode: (block28123a6cValue2).
    block28123a6cValue3 := block28123a6cValue0.
    (block28123a6cValue3) title: ('Dialog').
    block28123a6cValue4 := block28123a6cValue0.
    block28123a6cValue5 := MWMDECORALL.
    block28123a6cValue6 := MWMDECORMINIMIZE.
    block28123a6cValue7 := (block28123a6cValue5) | (block28123a6cValue6).
    block28123a6cValue8 := MWMDECORMAXIMIZE.
    block28123a6cValue9 := (block28123a6cValue7) | (block28123a6cValue8).
    (block28123a6cValue4) mwmDecorations: (block28123a6cValue9).
    block28123a6cValue10 := block28123a6cValue0.
    (block28123a6cValue10) height: (342).
    block28123a6cValue11 := (block28123a6cValue0) width: (291).
    block28123a6cValue11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block28123a90Arg1 | 
    | block28123a90Value0 block28123a90Value1 block28123a90Value2 block28123a90Value3 block28123a90Value4 block28123a90Value5 block28123a90Value6 block28123a90Value7 block28123a90Value8 |
    block28123a90Value0 := block28123a90Arg1.
    block28123a90Value1 := block28123a90Value0.
    (block28123a90Value1) x: (450).
    block28123a90Value2 := block28123a90Value0.
    block28123a90Value3 := XmSINGLELINE.
    (block28123a90Value2) separatorType: (block28123a90Value3).
    block28123a90Value4 := block28123a90Value0.
    block28123a90Value5 := XmVERTICAL.
    (block28123a90Value4) orientation: (block28123a90Value5).
    block28123a90Value6 := block28123a90Value0.
    (block28123a90Value6) y: (10).
    block28123a90Value7 := block28123a90Value0.
    (block28123a90Value7) height: (370).
    block28123a90Value8 := (block28123a90Value0) width: (1).
    block28123a90Value8
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := [:block28123ab4Arg1 | 
    | block28123ab4Value0 block28123ab4Value1 block28123ab4Value2 block28123ab4Value3 block28123ab4Value4 block28123ab4Value5 block28123ab4Value6 block28123ab4Value7 block28123ab4Value8 block28123ab4Value9 block28123ab4Value10 |
    block28123ab4Value0 := block28123ab4Arg1.
    block28123ab4Value1 := block28123ab4Value0.
    (block28123ab4Value1) x: (461).
    block28123ab4Value2 := block28123ab4Value0.
    (block28123ab4Value2) marginRight: (10).
    block28123ab4Value3 := block28123ab4Value0.
    block28123ab4Value4 := EtButtonOk.
    (block28123ab4Value3) labelString: (block28123ab4Value4).
    block28123ab4Value5 := block28123ab4Value0.
    (block28123ab4Value5) marginWidth: (0).
    block28123ab4Value6 := block28123ab4Value0.
    (block28123ab4Value6) marginHeight: (0).
    block28123ab4Value7 := block28123ab4Value0.
    (block28123ab4Value7) y: (10).
    block28123ab4Value8 := block28123ab4Value0.
    (block28123ab4Value8) height: (30).
    block28123ab4Value9 := block28123ab4Value0.
    (block28123ab4Value9) marginBottom: (10).
    block28123ab4Value10 := (block28123ab4Value0) width: (75).
    block28123ab4Value10
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := [:block28123ad8Arg1 | 
    | block28123ad8Value0 block28123ad8Value1 block28123ad8Value2 block28123ad8Value3 block28123ad8Value4 block28123ad8Value5 block28123ad8Value6 block28123ad8Value7 block28123ad8Value8 block28123ad8Value9 block28123ad8Value10 |
    block28123ad8Value0 := block28123ad8Arg1.
    block28123ad8Value1 := block28123ad8Value0.
    (block28123ad8Value1) x: (405).
    block28123ad8Value2 := block28123ad8Value0.
    (block28123ad8Value2) marginRight: (10).
    block28123ad8Value3 := block28123ad8Value0.
    block28123ad8Value4 := EtMenuCancel.
    (block28123ad8Value3) labelString: (block28123ad8Value4).
    block28123ad8Value5 := block28123ad8Value0.
    (block28123ad8Value5) marginWidth: (0).
    block28123ad8Value6 := block28123ad8Value0.
    (block28123ad8Value6) marginHeight: (0).
    block28123ad8Value7 := block28123ad8Value0.
    (block28123ad8Value7) y: (50).
    block28123ad8Value8 := block28123ad8Value0.
    (block28123ad8Value8) height: (30).
    block28123ad8Value9 := block28123ad8Value0.
    (block28123ad8Value9) marginBottom: (10).
    block28123ad8Value10 := (block28123ad8Value0) width: (75).
    block28123ad8Value10
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'anEtasDatabaseWidgetOneList1'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Value0 recoveredBlock335Value1 recoveredBlock335Value2 recoveredBlock335Value3 recoveredBlock335Value4 |
    recoveredBlock335Value0 := recoveredBlock335Arg1.
    recoveredBlock335Value1 := recoveredBlock335Value0.
    recoveredBlock335Value2 := (self) dbWidgetOptions.
    (recoveredBlock335Value1) dbWidgetOptions: (recoveredBlock335Value2).
    recoveredBlock335Value3 := recoveredBlock335Value0.
    (recoveredBlock335Value3) y: (38).
    recoveredBlock335Value4 := (recoveredBlock335Value0) x: (32).
    recoveredBlock335Value4
].
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasDatabaseWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := 'anEtasDatabaseWidgetOneList1'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := 'searchOptionFrame'.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack3 := [:block28123afcArg1 | 
    | block28123afcValue0 block28123afcValue1 block28123afcValue2 |
    block28123afcValue0 := block28123afcArg1.
    block28123afcValue1 := block28123afcValue0.
    (block28123afcValue1) width: (280).
    block28123afcValue2 := block28123afcValue0.
    (block28123afcValue2) labelString: ('Options').
    block28123afcValue0
].
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := 'searchOptionFrame'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := 'searchOptionForm'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := 'searchOptionForm'.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack0) createOptionWidgetsInForm: (recoveredStack1).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := [:recoveredBlock458Arg1 | 
    | recoveredBlock458Value0 recoveredBlock458Value1 recoveredBlock458Value2 |
    recoveredBlock458Value0 := recoveredBlock458Arg1.
    recoveredBlock458Value1 := recoveredLocal7.
    recoveredBlock458Value2 := (recoveredBlock458Value0) workWindow: (recoveredBlock458Value1).
    recoveredBlock458Value2
].
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := [:recoveredBlock482Arg1 | 
    | recoveredBlock482Value0 recoveredBlock482Value1 recoveredBlock482Value2 recoveredBlock482Value3 recoveredBlock482Value4 recoveredBlock482Value5 recoveredBlock482Value6 recoveredBlock482Value7 recoveredBlock482Value8 recoveredBlock482Value9 recoveredBlock482Value10 recoveredBlock482Value11 |
    recoveredBlock482Value0 := recoveredBlock482Arg1.
    recoveredBlock482Value1 := recoveredBlock482Value0.
    recoveredBlock482Value2 := XmATTACHFORM.
    (recoveredBlock482Value1) bottomAttachment: (recoveredBlock482Value2).
    recoveredBlock482Value3 := recoveredBlock482Value0.
    (recoveredBlock482Value3) bottomOffset: (10).
    recoveredBlock482Value4 := recoveredBlock482Value0.
    recoveredBlock482Value5 := XmATTACHFORM.
    (recoveredBlock482Value4) topAttachment: (recoveredBlock482Value5).
    recoveredBlock482Value6 := recoveredBlock482Value0.
    (recoveredBlock482Value6) topOffset: (10).
    recoveredBlock482Value7 := recoveredBlock482Value0.
    recoveredBlock482Value8 := XmATTACHWIDGET.
    (recoveredBlock482Value7) rightAttachment: (recoveredBlock482Value8).
    recoveredBlock482Value9 := recoveredBlock482Value0.
    recoveredBlock482Value10 := recoveredLocal5.
    (recoveredBlock482Value9) rightWidget: (recoveredBlock482Value10).
    recoveredBlock482Value11 := (recoveredBlock482Value0) rightOffset: (10).
    recoveredBlock482Value11
].
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := [:block28123b20Arg1 | 
    | block28123b20Value0 block28123b20Value1 block28123b20Value2 block28123b20Value3 block28123b20Value4 block28123b20Value5 block28123b20Value6 |
    block28123b20Value0 := block28123b20Arg1.
    block28123b20Value1 := block28123b20Value0.
    block28123b20Value2 := XmATTACHFORM.
    (block28123b20Value1) topAttachment: (block28123b20Value2).
    block28123b20Value3 := block28123b20Value0.
    (block28123b20Value3) topOffset: (10).
    block28123b20Value4 := block28123b20Value0.
    block28123b20Value5 := XmATTACHFORM.
    (block28123b20Value4) rightAttachment: (block28123b20Value5).
    block28123b20Value6 := (block28123b20Value0) rightOffset: (10).
    block28123b20Value6
].
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := [:recoveredBlock598Arg1 | 
    | recoveredBlock598Value0 recoveredBlock598Value1 recoveredBlock598Value2 recoveredBlock598Value3 recoveredBlock598Value4 recoveredBlock598Value5 recoveredBlock598Value6 recoveredBlock598Value7 recoveredBlock598Value8 |
    recoveredBlock598Value0 := recoveredBlock598Arg1.
    recoveredBlock598Value1 := recoveredBlock598Value0.
    recoveredBlock598Value2 := XmATTACHWIDGET.
    (recoveredBlock598Value1) topAttachment: (recoveredBlock598Value2).
    recoveredBlock598Value3 := recoveredBlock598Value0.
    recoveredBlock598Value4 := recoveredLocal5.
    (recoveredBlock598Value3) topWidget: (recoveredBlock598Value4).
    recoveredBlock598Value5 := recoveredBlock598Value0.
    (recoveredBlock598Value5) topOffset: (10).
    recoveredBlock598Value6 := recoveredBlock598Value0.
    recoveredBlock598Value7 := XmATTACHFORM.
    (recoveredBlock598Value6) rightAttachment: (recoveredBlock598Value7).
    recoveredBlock598Value8 := (recoveredBlock598Value0) rightOffset: (10).
    recoveredBlock598Value8
].
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := [:recoveredBlock652Arg1 | 
    | recoveredBlock652Value0 recoveredBlock652Value1 recoveredBlock652Value2 recoveredBlock652Value3 recoveredBlock652Value4 recoveredBlock652Value5 recoveredBlock652Value6 recoveredBlock652Value7 recoveredBlock652Value8 recoveredBlock652Value9 recoveredBlock652Value10 recoveredBlock652Value11 recoveredBlock652Value12 recoveredBlock652Value13 recoveredBlock652Value14 recoveredBlock652Value15 recoveredBlock652Value16 |
    recoveredBlock652Value0 := recoveredBlock652Arg1.
    recoveredBlock652Value1 := recoveredBlock652Value0.
    recoveredBlock652Value2 := XmATTACHWIDGET.
    (recoveredBlock652Value1) bottomAttachment: (recoveredBlock652Value2).
    recoveredBlock652Value3 := recoveredBlock652Value0.
    recoveredBlock652Value4 := recoveredLocal2.
    (recoveredBlock652Value3) bottomWidget: (recoveredBlock652Value4).
    recoveredBlock652Value5 := recoveredBlock652Value0.
    (recoveredBlock652Value5) bottomOffset: (5).
    recoveredBlock652Value6 := recoveredBlock652Value0.
    recoveredBlock652Value7 := XmATTACHFORM.
    (recoveredBlock652Value6) topAttachment: (recoveredBlock652Value7).
    recoveredBlock652Value8 := recoveredBlock652Value0.
    (recoveredBlock652Value8) topOffset: (5).
    recoveredBlock652Value9 := recoveredBlock652Value0.
    recoveredBlock652Value10 := XmATTACHFORM.
    (recoveredBlock652Value9) leftAttachment: (recoveredBlock652Value10).
    recoveredBlock652Value11 := recoveredBlock652Value0.
    (recoveredBlock652Value11) leftOffset: (5).
    recoveredBlock652Value12 := recoveredBlock652Value0.
    recoveredBlock652Value13 := XmATTACHWIDGET.
    (recoveredBlock652Value12) rightAttachment: (recoveredBlock652Value13).
    recoveredBlock652Value14 := recoveredBlock652Value0.
    recoveredBlock652Value15 := recoveredLocal6.
    (recoveredBlock652Value14) rightWidget: (recoveredBlock652Value15).
    recoveredBlock652Value16 := (recoveredBlock652Value0) rightOffset: (5).
    recoveredBlock652Value16
].
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack3 := 'okActivate:clientData:callData:'.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack3 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack1 := [:recoveredBlock774Arg1 | 
    | recoveredBlock774Value0 recoveredBlock774Value1 recoveredBlock774Value2 recoveredBlock774Value3 recoveredBlock774Value4 recoveredBlock774Value5 recoveredBlock774Value6 recoveredBlock774Value7 recoveredBlock774Value8 recoveredBlock774Value9 recoveredBlock774Value10 recoveredBlock774Value11 |
    recoveredBlock774Value0 := recoveredBlock774Arg1.
    recoveredBlock774Value1 := recoveredBlock774Value0.
    recoveredBlock774Value2 := XmATTACHFORM.
    (recoveredBlock774Value1) bottomAttachment: (recoveredBlock774Value2).
    recoveredBlock774Value3 := recoveredBlock774Value0.
    (recoveredBlock774Value3) bottomOffset: (5).
    recoveredBlock774Value4 := recoveredBlock774Value0.
    recoveredBlock774Value5 := XmATTACHWIDGET.
    (recoveredBlock774Value4) rightAttachment: (recoveredBlock774Value5).
    recoveredBlock774Value6 := recoveredBlock774Value0.
    recoveredBlock774Value7 := recoveredLocal6.
    (recoveredBlock774Value6) rightWidget: (recoveredBlock774Value7).
    recoveredBlock774Value8 := recoveredBlock774Value0.
    (recoveredBlock774Value8) rightOffset: (5).
    recoveredBlock774Value9 := recoveredBlock774Value0.
    recoveredBlock774Value10 := XmATTACHFORM.
    (recoveredBlock774Value9) leftAttachment: (recoveredBlock774Value10).
    recoveredBlock774Value11 := (recoveredBlock774Value0) leftOffset: (5).
    recoveredBlock774Value11
].
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

