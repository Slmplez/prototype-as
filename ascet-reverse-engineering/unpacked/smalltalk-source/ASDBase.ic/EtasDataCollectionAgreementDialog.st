"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000200; bytecode file offset 0x8ffcfc"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
initializeLicenseLabels
    ^self
! !

"ASDBase.ic method 0x20002a68; bytecode file offset 0x8ffcfc"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
initializeLicenseInfos
    ^self
! !

"ASDBase.ic method 0x20042cbc; bytecode file offset 0x9451f8"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
widgetAskAtEachStartupButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('askAtEachStartupButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004349c; bytecode file offset 0x9451f8"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
widgetCloseButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('closeButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004369c; bytecode file offset 0x9451f8"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
scrolledContentBitmapArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scrolledContentBitmapArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043dbc; bytecode file offset 0x9451f8"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
widgetIncludeUserNameButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('includeUserNameButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004437c; bytecode file offset 0x9451f8"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
contentBitmapArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('contentBitmapArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a428; bytecode file offset 0x957a6c"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
buttonCloseActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005c4c4; bytecode file offset 0x959680"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
showUserNameAgreement
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionShowUserNameAgreement.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cdac; bytecode file offset 0x959680"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
includeUserName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionIncludeUserName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20070a30; bytecode file offset 0x96d3ec"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
contentBitmap
    | recoveredValue0 |
    recoveredValue0 := contentBitmap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009ac74; bytecode file offset 0x9976c0"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
askAtEachStartupButtonValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) set.
    (self) showUserNameAgreement: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ae04; bytecode file offset 0x9976c0"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
includeUserNameButtonValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) set.
    (self) includeUserName: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2a8c; bytecode file offset 0x99f57c"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
includeUserName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) optionIncludeUserName: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200a2ac8; bytecode file offset 0x99f57c"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
showUserNameAgreement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) optionShowUserNameAgreement: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c7180; bytecode file offset 0x9c3a8c"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
contentBitmap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contentBitmap := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20102358; bytecode file offset 0x9fec34"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
headerBitmapExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitmap.
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
            (recoveredStack0) exposeBitmap.
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

"ASDBase.ic method 0x2017dd64; bytecode file offset 0xa7a628"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
initializeBitmap
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'disclaimer_data_collection_body'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnImageWithName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) contentBitmap: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20231348; bytecode file offset 0xb2dc24"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
setToSimpleLayout
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) getBitmap.
    recoveredValue2 := (recoveredValue1) height.
    recoveredValue3 := (recoveredValue2) + (400).
    (recoveredValue0) height: (recoveredValue3).
    recoveredValue4 := (self) widgetAskAtEachStartupButton.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XmATTACHWIDGET.
    (recoveredValue5) bottomAttachment: (recoveredValue6).
    recoveredValue7 := (self) widgetCloseButton.
    (recoveredValue4) bottomWidget: (recoveredValue7).
    recoveredValue8 := (self) widgetCloseButton.
    (recoveredValue8) manageChild.
    ^self
! !

"ASDBase.ic method 0x20283624; bytecode file offset 0xb7ff04"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAskAtEachStartupButton.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) showUserNameAgreement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIncludeUserNameEnabledByRegistry.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetIncludeUserNameButton.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetIncludeUserNameButton.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) includeUserName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f07a8; bytecode file offset 0xbed0b4"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
contentBitmapExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) contentBitmap.
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
            (recoveredStack0) exposeContentBitmap.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrolledContentBitmapArea.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) verticalScrollBar.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidget.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getScrollRange.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCloseButton.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCloseButton.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cfd50; bytecode file offset 0xccc6ec"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
exposeContentBitmap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := (self) gc.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := (self) contentBitmapArea.
    recoveredBlock5Value1 := (recoveredBlock5Value0) window.
    recoveredBlock5Value2 := None.
    recoveredBlock5Value3 := CgGCValues.
    recoveredBlock5Value4 := (recoveredBlock5Value3) new.
    recoveredBlock5Value5 := (recoveredBlock5Value1) createGC: (recoveredBlock5Value2) values: (recoveredBlock5Value4).
    recoveredBlock5Value6 := (self) gc: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) contentBitmapArea.
    recoveredValue3 := (self) contentBitmap.
    recoveredValue4 := (recoveredValue3) width.
    (recoveredValue2) width: (recoveredValue4).
    recoveredValue5 := (self) contentBitmapArea.
    recoveredValue6 := (self) contentBitmap.
    recoveredValue7 := (recoveredValue6) height.
    (recoveredValue5) height: (recoveredValue7).
    recoveredValue8 := (self) contentBitmapArea.
    recoveredValue9 := (recoveredValue8) window.
    recoveredValue10 := (self) gc.
    recoveredValue11 := (self) contentBitmap.
    recoveredValue12 := (0) @ (0).
    recoveredValue13 := (self) contentBitmap.
    recoveredValue14 := (recoveredValue13) extent.
    recoveredValue15 := (recoveredValue12) extent: (recoveredValue14).
    recoveredValue16 := (0) @ (0).
    recoveredValue17 := (self) contentBitmap.
    recoveredValue18 := (recoveredValue17) extent.
    recoveredValue19 := (recoveredValue16) extent: (recoveredValue18).
    (recoveredValue9) putDeviceIndependentImage: (recoveredValue10) image: (recoveredValue11) srcRect: (recoveredValue15) destRect: (recoveredValue19).
    ^self
! !

"ASDBase.ic method 0x2065ede4; bytecode file offset 0xf5b804"
!EtasDataCollectionAgreementDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := 600.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 620.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) initializeBitmap.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBitmap.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBitmap.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBitmap.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 400.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 'dialogShell'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 recoveredBlock105Value4 recoveredBlock105Value5 recoveredBlock105Value6 recoveredBlock105Value7 recoveredBlock105Value8 recoveredBlock105Value9 recoveredBlock105Value10 recoveredBlock105Value11 recoveredBlock105Value12 recoveredBlock105Value13 |
    recoveredBlock105Value0 := recoveredBlock105Arg1.
    recoveredBlock105Value1 := recoveredBlock105Value0.
    recoveredBlock105Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock105Value1) mwmInputMode: (recoveredBlock105Value2).
    recoveredBlock105Value3 := recoveredBlock105Value0.
    (recoveredBlock105Value3) title: ('Disclaimer').
    recoveredBlock105Value4 := recoveredBlock105Value0.
    recoveredBlock105Value5 := MWMDECORBORDER.
    (recoveredBlock105Value4) mwmDecorations: (recoveredBlock105Value5).
    recoveredBlock105Value6 := recoveredBlock105Value0.
    recoveredBlock105Value7 := recoveredLocal9.
    (recoveredBlock105Value6) x: (recoveredBlock105Value7).
    recoveredBlock105Value8 := recoveredBlock105Value0.
    recoveredBlock105Value9 := recoveredLocal8.
    (recoveredBlock105Value8) y: (recoveredBlock105Value9).
    recoveredBlock105Value10 := recoveredBlock105Value0.
    recoveredBlock105Value11 := recoveredLocal11.
    (recoveredBlock105Value10) height: (recoveredBlock105Value11).
    recoveredBlock105Value12 := recoveredLocal10.
    recoveredBlock105Value13 := (recoveredBlock105Value0) width: (recoveredBlock105Value12).
    recoveredBlock105Value13
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDialogShell: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal18 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := 'dialogShell'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := 'mainWindow'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMainWindow: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal17 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := 'aMainWindow1'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := 'aForm1'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := [:block28124d68Arg1 | 
    | block28124d68Value0 block28124d68Value1 block28124d68Value2 block28124d68Value3 |
    block28124d68Value0 := block28124d68Arg1.
    block28124d68Value1 := CgRGBColor.
    block28124d68Value2 := (block28124d68Value1) white.
    block28124d68Value3 := (block28124d68Value0) backgroundColor: (block28124d68Value2).
    block28124d68Value3
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := 'aForm1'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := 'headerBitmapArea'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := [:block28124d8cArg1 | 
    | block28124d8cValue0 block28124d8cValue1 block28124d8cValue2 block28124d8cValue3 |
    block28124d8cValue0 := block28124d8cArg1.
    block28124d8cValue1 := CgRGBColor.
    block28124d8cValue2 := (block28124d8cValue1) white.
    block28124d8cValue3 := (block28124d8cValue0) backgroundColor: (block28124d8cValue2).
    block28124d8cValue3
].
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDrawingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := 'headerBitmapArea'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := 'scrolledContentBitmapArea'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := [:block28124db0Arg1 | 
    | block28124db0Value0 block28124db0Value1 block28124db0Value2 block28124db0Value3 block28124db0Value4 block28124db0Value5 block28124db0Value6 block28124db0Value7 block28124db0Value8 |
    block28124db0Value0 := block28124db0Arg1.
    block28124db0Value1 := block28124db0Value0.
    (block28124db0Value1) borderWidth: (0).
    block28124db0Value2 := block28124db0Value0.
    block28124db0Value3 := XmAUTOMATIC.
    (block28124db0Value2) scrollingPolicy: (block28124db0Value3).
    block28124db0Value4 := block28124db0Value0.
    block28124db0Value5 := XmASNEEDED.
    (block28124db0Value4) scrollBarDisplayPolicy: (block28124db0Value5).
    block28124db0Value6 := CgRGBColor.
    block28124db0Value7 := (block28124db0Value6) white.
    block28124db0Value8 := (block28124db0Value0) backgroundColor: (block28124db0Value7).
    block28124db0Value8
].
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledWindow: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := 'scrolledContentBitmapArea'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := 'contentBitmapArea'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := [:recoveredBlock317Arg1 | 
    | recoveredBlock317Value0 recoveredBlock317Value1 recoveredBlock317Value2 recoveredBlock317Value3 recoveredBlock317Value4 recoveredBlock317Value5 recoveredBlock317Value6 recoveredBlock317Value7 recoveredBlock317Value8 recoveredBlock317Value9 |
    recoveredBlock317Value0 := recoveredBlock317Arg1.
    recoveredBlock317Value1 := recoveredBlock317Value0.
    recoveredBlock317Value2 := CgRGBColor.
    recoveredBlock317Value3 := (recoveredBlock317Value2) white.
    (recoveredBlock317Value1) backgroundColor: (recoveredBlock317Value3).
    recoveredBlock317Value4 := recoveredBlock317Value0.
    recoveredBlock317Value5 := (self) contentBitmap.
    recoveredBlock317Value6 := (recoveredBlock317Value5) width.
    (recoveredBlock317Value4) width: (recoveredBlock317Value6).
    recoveredBlock317Value7 := (self) contentBitmap.
    recoveredBlock317Value8 := (recoveredBlock317Value7) height.
    recoveredBlock317Value9 := (recoveredBlock317Value0) height: (recoveredBlock317Value8).
    recoveredBlock317Value9
].
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDrawingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := 'contentBitmapArea'.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := 'askAtEachStartupButton'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := [:block28124dd4Arg1 | 
    | block28124dd4Value0 block28124dd4Value1 block28124dd4Value2 block28124dd4Value3 block28124dd4Value4 block28124dd4Value5 |
    block28124dd4Value0 := block28124dd4Arg1.
    block28124dd4Value1 := block28124dd4Value0.
    block28124dd4Value2 := CgRGBColor.
    block28124dd4Value3 := (block28124dd4Value2) white.
    (block28124dd4Value1) backgroundColor: (block28124dd4Value3).
    block28124dd4Value4 := block28124dd4Value0.
    (block28124dd4Value4) height: (25).
    block28124dd4Value5 := (block28124dd4Value0) labelString: ('Show at each startup').
    block28124dd4Value5
].
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := 'askAtEachStartupButton'.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := 'includeUserNameButton'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := [:block28124df8Arg1 | 
    | block28124df8Value0 block28124df8Value1 block28124df8Value2 block28124df8Value3 block28124df8Value4 block28124df8Value5 |
    block28124df8Value0 := block28124df8Arg1.
    block28124df8Value1 := block28124df8Value0.
    block28124df8Value2 := CgRGBColor.
    block28124df8Value3 := (block28124df8Value2) white.
    (block28124df8Value1) backgroundColor: (block28124df8Value3).
    block28124df8Value4 := block28124df8Value0.
    (block28124df8Value4) height: (25).
    block28124df8Value5 := (block28124df8Value0) labelString: ('Include user name in error reports for support purposes').
    block28124df8Value5
].
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := 'includeUserNameButton'.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := 'closeButton'.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := [:block28124e1cArg1 | 
    | block28124e1cValue0 block28124e1cValue1 block28124e1cValue2 block28124e1cValue3 block28124e1cValue4 block28124e1cValue5 |
    block28124e1cValue0 := block28124e1cArg1.
    block28124e1cValue1 := block28124e1cValue0.
    block28124e1cValue2 := CgRGBColor.
    block28124e1cValue3 := (block28124e1cValue2) white.
    (block28124e1cValue1) backgroundColor: (block28124e1cValue3).
    block28124e1cValue4 := block28124e1cValue0.
    (block28124e1cValue4) labelString: ('Close').
    block28124e1cValue5 := (block28124e1cValue0) height: (25).
    block28124e1cValue5
].
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := 'closeButton'.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := [:block28124e40Arg1 | 
    | block28124e40Value0 block28124e40Value1 block28124e40Value2 block28124e40Value3 block28124e40Value4 block28124e40Value5 block28124e40Value6 block28124e40Value7 block28124e40Value8 |
    block28124e40Value0 := block28124e40Arg1.
    block28124e40Value1 := block28124e40Value0.
    block28124e40Value2 := XmATTACHFORM.
    (block28124e40Value1) topAttachment: (block28124e40Value2).
    block28124e40Value3 := block28124e40Value0.
    block28124e40Value4 := XmATTACHFORM.
    (block28124e40Value3) leftAttachment: (block28124e40Value4).
    block28124e40Value5 := block28124e40Value0.
    block28124e40Value6 := XmATTACHFORM.
    (block28124e40Value5) rightAttachment: (block28124e40Value6).
    block28124e40Value7 := XmATTACHNONE.
    block28124e40Value8 := (block28124e40Value0) bottomAttachment: (block28124e40Value7).
    block28124e40Value8
].
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := [:recoveredBlock568Arg1 | 
    | recoveredBlock568Value0 recoveredBlock568Value1 recoveredBlock568Value2 recoveredBlock568Value3 recoveredBlock568Value4 recoveredBlock568Value5 recoveredBlock568Value6 recoveredBlock568Value7 recoveredBlock568Value8 recoveredBlock568Value9 recoveredBlock568Value10 recoveredBlock568Value11 recoveredBlock568Value12 recoveredBlock568Value13 recoveredBlock568Value14 |
    recoveredBlock568Value0 := recoveredBlock568Arg1.
    recoveredBlock568Value1 := recoveredBlock568Value0.
    recoveredBlock568Value2 := XmATTACHWIDGET.
    (recoveredBlock568Value1) topAttachment: (recoveredBlock568Value2).
    recoveredBlock568Value3 := recoveredBlock568Value0.
    recoveredBlock568Value4 := recoveredLocal14.
    (recoveredBlock568Value3) topWidget: (recoveredBlock568Value4).
    recoveredBlock568Value5 := recoveredBlock568Value0.
    (recoveredBlock568Value5) topOffset: (0).
    recoveredBlock568Value6 := recoveredBlock568Value0.
    recoveredBlock568Value7 := XmATTACHFORM.
    (recoveredBlock568Value6) leftAttachment: (recoveredBlock568Value7).
    recoveredBlock568Value8 := recoveredBlock568Value0.
    recoveredBlock568Value9 := XmATTACHFORM.
    (recoveredBlock568Value8) rightAttachment: (recoveredBlock568Value9).
    recoveredBlock568Value10 := recoveredBlock568Value0.
    recoveredBlock568Value11 := XmATTACHWIDGET.
    (recoveredBlock568Value10) bottomAttachment: (recoveredBlock568Value11).
    recoveredBlock568Value12 := recoveredBlock568Value0.
    recoveredBlock568Value13 := recoveredLocal5.
    (recoveredBlock568Value12) bottomWidget: (recoveredBlock568Value13).
    recoveredBlock568Value14 := (recoveredBlock568Value0) bottomOffset: (5).
    recoveredBlock568Value14
].
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack1 := [:recoveredBlock646Arg1 | 
    | recoveredBlock646Value0 recoveredBlock646Value1 recoveredBlock646Value2 recoveredBlock646Value3 recoveredBlock646Value4 recoveredBlock646Value5 recoveredBlock646Value6 recoveredBlock646Value7 recoveredBlock646Value8 recoveredBlock646Value9 recoveredBlock646Value10 recoveredBlock646Value11 recoveredBlock646Value12 recoveredBlock646Value13 |
    recoveredBlock646Value0 := recoveredBlock646Arg1.
    recoveredBlock646Value1 := recoveredBlock646Value0.
    recoveredBlock646Value2 := XmATTACHNONE.
    (recoveredBlock646Value1) topAttachment: (recoveredBlock646Value2).
    recoveredBlock646Value3 := recoveredBlock646Value0.
    recoveredBlock646Value4 := XmATTACHWIDGET.
    (recoveredBlock646Value3) bottomAttachment: (recoveredBlock646Value4).
    recoveredBlock646Value5 := recoveredBlock646Value0.
    recoveredBlock646Value6 := recoveredLocal4.
    (recoveredBlock646Value5) bottomWidget: (recoveredBlock646Value6).
    recoveredBlock646Value7 := recoveredBlock646Value0.
    (recoveredBlock646Value7) bottomOffset: (5).
    recoveredBlock646Value8 := recoveredBlock646Value0.
    recoveredBlock646Value9 := XmATTACHFORM.
    (recoveredBlock646Value8) leftAttachment: (recoveredBlock646Value9).
    recoveredBlock646Value10 := recoveredBlock646Value0.
    (recoveredBlock646Value10) leftOffset: (10).
    recoveredBlock646Value11 := recoveredBlock646Value0.
    recoveredBlock646Value12 := XmATTACHFORM.
    (recoveredBlock646Value11) rightAttachment: (recoveredBlock646Value12).
    recoveredBlock646Value13 := (recoveredBlock646Value0) rightOffset: (10).
    recoveredBlock646Value13
].
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack1 := [:recoveredBlock722Arg1 | 
    | recoveredBlock722Value0 recoveredBlock722Value1 recoveredBlock722Value2 recoveredBlock722Value3 recoveredBlock722Value4 recoveredBlock722Value5 recoveredBlock722Value6 recoveredBlock722Value7 recoveredBlock722Value8 recoveredBlock722Value9 recoveredBlock722Value10 recoveredBlock722Value11 recoveredBlock722Value12 recoveredBlock722Value13 |
    recoveredBlock722Value0 := recoveredBlock722Arg1.
    recoveredBlock722Value1 := recoveredBlock722Value0.
    recoveredBlock722Value2 := XmATTACHNONE.
    (recoveredBlock722Value1) topAttachment: (recoveredBlock722Value2).
    recoveredBlock722Value3 := recoveredBlock722Value0.
    recoveredBlock722Value4 := XmATTACHWIDGET.
    (recoveredBlock722Value3) bottomAttachment: (recoveredBlock722Value4).
    recoveredBlock722Value5 := recoveredBlock722Value0.
    recoveredBlock722Value6 := recoveredLocal1.
    (recoveredBlock722Value5) bottomWidget: (recoveredBlock722Value6).
    recoveredBlock722Value7 := recoveredBlock722Value0.
    (recoveredBlock722Value7) bottomOffset: (5).
    recoveredBlock722Value8 := recoveredBlock722Value0.
    recoveredBlock722Value9 := XmATTACHFORM.
    (recoveredBlock722Value8) leftAttachment: (recoveredBlock722Value9).
    recoveredBlock722Value10 := recoveredBlock722Value0.
    (recoveredBlock722Value10) leftOffset: (10).
    recoveredBlock722Value11 := recoveredBlock722Value0.
    recoveredBlock722Value12 := XmATTACHFORM.
    (recoveredBlock722Value11) rightAttachment: (recoveredBlock722Value12).
    recoveredBlock722Value13 := (recoveredBlock722Value0) rightOffset: (10).
    recoveredBlock722Value13
].
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack1 := [:block28124e64Arg1 | 
    | block28124e64Value0 block28124e64Value1 block28124e64Value2 block28124e64Value3 block28124e64Value4 block28124e64Value5 block28124e64Value6 block28124e64Value7 block28124e64Value8 block28124e64Value9 block28124e64Value10 block28124e64Value11 |
    block28124e64Value0 := block28124e64Arg1.
    block28124e64Value1 := block28124e64Value0.
    block28124e64Value2 := XmATTACHNONE.
    (block28124e64Value1) topAttachment: (block28124e64Value2).
    block28124e64Value3 := block28124e64Value0.
    block28124e64Value4 := XmATTACHFORM.
    (block28124e64Value3) bottomAttachment: (block28124e64Value4).
    block28124e64Value5 := block28124e64Value0.
    (block28124e64Value5) bottomOffset: (10).
    block28124e64Value6 := block28124e64Value0.
    block28124e64Value7 := XmATTACHFORM.
    (block28124e64Value6) leftAttachment: (block28124e64Value7).
    block28124e64Value8 := block28124e64Value0.
    (block28124e64Value8) leftOffset: (10).
    block28124e64Value9 := block28124e64Value0.
    block28124e64Value10 := XmATTACHFORM.
    (block28124e64Value9) rightAttachment: (block28124e64Value10).
    block28124e64Value11 := (block28124e64Value0) rightOffset: (10).
    block28124e64Value11
].
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack3 := 'headerBitmapExpose:clientData:callData:'.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack3 := 'contentBitmapExpose:clientData:callData:'.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack3 := 'askAtEachStartupButtonValueChanged:clientData:callData:'.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredStack3 := 'includeUserNameButtonValueChanged:clientData:callData:'.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack3 := 'buttonCloseActivate:clientData:callData:'.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

