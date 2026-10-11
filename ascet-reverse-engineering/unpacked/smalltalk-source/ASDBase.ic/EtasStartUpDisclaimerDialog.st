"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000590; bytecode file offset 0x8ffcfc"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
initializeLicenseLabels
    ^self
! !

"ASDBase.ic method 0x200033d8; bytecode file offset 0x8ffcfc"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
initializeLicenseInfos
    ^self
! !

"ASDBase.ic method 0x2004315c; bytecode file offset 0x9451f8"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
widgetToggleButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('toggleButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004360c; bytecode file offset 0x9451f8"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
scrolledContentBitmapArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scrolledContentBitmapArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200460ec; bytecode file offset 0x9451f8"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
widgetCloseButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('closeButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046d6c; bytecode file offset 0x9451f8"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
contentBitmapArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('contentBitmapArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004772c; bytecode file offset 0x9451f8"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
widgetDisagreeButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('disagreeButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004829c; bytecode file offset 0x9451f8"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
widgetAgreeButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('agreeButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005c4ec; bytecode file offset 0x959680"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
showDisclaimer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionShowDisclaimer.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20070a10; bytecode file offset 0x96d3ec"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
contentBitmap
    | recoveredValue0 |
    recoveredValue0 := contentBitmap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20087240; bytecode file offset 0x983b04"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
buttonAgreeActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) agreement: (true).
    ^self
! !

"ASDBase.ic method 0x2009acf4; bytecode file offset 0x9976c0"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
toggleButtonValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) set.
    (self) showDisclaimer: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2bb8; bytecode file offset 0x99f57c"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
showDisclaimer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) optionShowDisclaimer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c7178; bytecode file offset 0x9c3a8c"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
contentBitmap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contentBitmap := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9a7c; bytecode file offset 0x9c6338"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
buttonCloseActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) agreement: (true).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20102368; bytecode file offset 0x9fec34"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2010c1ec; bytecode file offset 0xa08aec"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 |
    super initializeAfterCreate.
    recoveredValue0 := (self) widgetToggleButton.
    recoveredValue1 := (self) showDisclaimer.
    (recoveredValue0) set: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20148250; bytecode file offset 0xa44b14"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
buttonDisagreeActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('Callxxxxx').
    (self) showDisclaimer: (true).
    (self) agreement: (false).
    ^self
! !

"ASDBase.ic method 0x202a0178; bytecode file offset 0xb9ca60"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
setToSimpleLayout
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) getBitmap.
    recoveredValue2 := (recoveredValue1) height.
    recoveredValue3 := (recoveredValue2) + (400).
    (recoveredValue0) height: (recoveredValue3).
    recoveredValue4 := (self) widgetAgreeButton.
    (recoveredValue4) unmanageChild.
    recoveredValue5 := (self) widgetDisagreeButton.
    (recoveredValue5) unmanageChild.
    recoveredValue6 := (self) widgetToggleButton.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := XmATTACHWIDGET.
    (recoveredValue7) bottomAttachment: (recoveredValue8).
    recoveredValue9 := (self) widgetCloseButton.
    (recoveredValue6) bottomWidget: (recoveredValue9).
    recoveredValue10 := (self) widgetCloseButton.
    (recoveredValue10) manageChild.
    ^self
! !

"ASDBase.ic method 0x202f07d8; bytecode file offset 0xbed0b4"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
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
            recoveredStack0 := (recoveredStack0) widgetAgreeButton.
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
            recoveredStack0 := (recoveredStack0) widgetAgreeButton.
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

"ASDBase.ic method 0x20399190; bytecode file offset 0xc95a80"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
mousePressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) point.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) mouseOverHyperLink: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) button.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := HkeyClassesRootHandle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'htmlfile\shell\open\command'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) regOpenKey: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) regQueryValueEx: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) regCloseKey.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'http://www.etasgroup.com/kir'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) runProcess: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cfda0; bytecode file offset 0xccc6ec"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
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

"ASDBase.ic method 0x203d2ba0; bytecode file offset 0xccf47c"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
initializeBitmap
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Version'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRegKey: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'disclaimer_head'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnImageWithName: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'disclaimer_body'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnImageWithName: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'disclaimer_head'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnImageWithName: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'disclaimer_body'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnImageWithName: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) bitmap: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) contentBitmap: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fd784; bytecode file offset 0xcfa074"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
mouseMoved: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Button1Mask.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := Button2Mask.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Button3Mask.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := Button4Mask.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := Button5Mask.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) point.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) mouseOverHyperLink: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) display.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := XCHand2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFontCursor: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) setCursor: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) setCursor: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20482400; bytecode file offset 0xd7ece0"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
mouseOverHyperLink: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Version'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRegKey: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Rectangle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 360.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 180.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 570.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := 195.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin: (recoveredStack2) extent: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Rectangle.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 360.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 180.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 570.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := 195.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin: (recoveredStack2) extent: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) origin.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) origin.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2066c49c; bytecode file offset 0xf68ee4"
!EtasStartUpDisclaimerDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 200.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 300.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal7 := recoveredStack1.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 40].
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
            recoveredLocal9 := recoveredStack0.
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
            recoveredLocal10 := recoveredStack0.
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
            recoveredStack1 := recoveredLocal9.
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
            recoveredLocal8 := recoveredStack0.
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
            recoveredStack1 := recoveredLocal9.
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
            recoveredStack1 := 37.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'dialogShell'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Value0 recoveredBlock108Value1 recoveredBlock108Value2 recoveredBlock108Value3 recoveredBlock108Value4 recoveredBlock108Value5 recoveredBlock108Value6 recoveredBlock108Value7 recoveredBlock108Value8 recoveredBlock108Value9 recoveredBlock108Value10 recoveredBlock108Value11 |
    recoveredBlock108Value0 := recoveredBlock108Arg1.
    recoveredBlock108Value1 := recoveredBlock108Value0.
    (recoveredBlock108Value1) title: ('Disclaimer').
    recoveredBlock108Value2 := recoveredBlock108Value0.
    recoveredBlock108Value3 := MWMDECORBORDER.
    (recoveredBlock108Value2) mwmDecorations: (recoveredBlock108Value3).
    recoveredBlock108Value4 := recoveredBlock108Value0.
    recoveredBlock108Value5 := recoveredLocal8.
    (recoveredBlock108Value4) x: (recoveredBlock108Value5).
    recoveredBlock108Value6 := recoveredBlock108Value0.
    recoveredBlock108Value7 := recoveredLocal7.
    (recoveredBlock108Value6) y: (recoveredBlock108Value7).
    recoveredBlock108Value8 := recoveredBlock108Value0.
    recoveredBlock108Value9 := recoveredLocal10.
    (recoveredBlock108Value8) height: (recoveredBlock108Value9).
    recoveredBlock108Value10 := recoveredLocal9.
    recoveredBlock108Value11 := (recoveredBlock108Value0) width: (recoveredBlock108Value10).
    recoveredBlock108Value11
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDialogShell: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal17 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 'dialogShell'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 'mainWindow'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMainWindow: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := 'aMainWindow1'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := 'aForm1'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := [:block281263c4Arg1 | 
    | block281263c4Value0 block281263c4Value1 block281263c4Value2 block281263c4Value3 |
    block281263c4Value0 := block281263c4Arg1.
    block281263c4Value1 := CgRGBColor.
    block281263c4Value2 := (block281263c4Value1) white.
    block281263c4Value3 := (block281263c4Value0) backgroundColor: (block281263c4Value2).
    block281263c4Value3
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := 'aForm1'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := 'headerBitmapArea'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := [:block281263e8Arg1 | 
    | block281263e8Value0 block281263e8Value1 block281263e8Value2 block281263e8Value3 |
    block281263e8Value0 := block281263e8Arg1.
    block281263e8Value1 := CgRGBColor.
    block281263e8Value2 := (block281263e8Value1) white.
    block281263e8Value3 := (block281263e8Value0) backgroundColor: (block281263e8Value2).
    block281263e8Value3
].
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDrawingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := 'headerBitmapArea'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := 'scrolledContentBitmapArea'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := [:block2812640cArg1 | 
    | block2812640cValue0 block2812640cValue1 block2812640cValue2 block2812640cValue3 block2812640cValue4 block2812640cValue5 block2812640cValue6 block2812640cValue7 block2812640cValue8 |
    block2812640cValue0 := block2812640cArg1.
    block2812640cValue1 := block2812640cValue0.
    (block2812640cValue1) borderWidth: (0).
    block2812640cValue2 := block2812640cValue0.
    block2812640cValue3 := XmAUTOMATIC.
    (block2812640cValue2) scrollingPolicy: (block2812640cValue3).
    block2812640cValue4 := block2812640cValue0.
    block2812640cValue5 := XmASNEEDED.
    (block2812640cValue4) scrollBarDisplayPolicy: (block2812640cValue5).
    block2812640cValue6 := CgRGBColor.
    block2812640cValue7 := (block2812640cValue6) white.
    block2812640cValue8 := (block2812640cValue0) backgroundColor: (block2812640cValue7).
    block2812640cValue8
].
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledWindow: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := 'scrolledContentBitmapArea'.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := 'contentBitmapArea'.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := [:recoveredBlock315Arg1 | 
    | recoveredBlock315Value0 recoveredBlock315Value1 recoveredBlock315Value2 recoveredBlock315Value3 recoveredBlock315Value4 recoveredBlock315Value5 recoveredBlock315Value6 recoveredBlock315Value7 recoveredBlock315Value8 recoveredBlock315Value9 |
    recoveredBlock315Value0 := recoveredBlock315Arg1.
    recoveredBlock315Value1 := recoveredBlock315Value0.
    recoveredBlock315Value2 := CgRGBColor.
    recoveredBlock315Value3 := (recoveredBlock315Value2) white.
    (recoveredBlock315Value1) backgroundColor: (recoveredBlock315Value3).
    recoveredBlock315Value4 := recoveredBlock315Value0.
    recoveredBlock315Value5 := (self) contentBitmap.
    recoveredBlock315Value6 := (recoveredBlock315Value5) width.
    (recoveredBlock315Value4) width: (recoveredBlock315Value6).
    recoveredBlock315Value7 := (self) contentBitmap.
    recoveredBlock315Value8 := (recoveredBlock315Value7) height.
    recoveredBlock315Value9 := (recoveredBlock315Value0) height: (recoveredBlock315Value8).
    recoveredBlock315Value9
].
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDrawingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := 'contentBitmapArea'.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := 'toggleButton'.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := [:block28126430Arg1 | 
    | block28126430Value0 block28126430Value1 block28126430Value2 block28126430Value3 block28126430Value4 block28126430Value5 |
    block28126430Value0 := block28126430Arg1.
    block28126430Value1 := block28126430Value0.
    block28126430Value2 := CgRGBColor.
    block28126430Value3 := (block28126430Value2) white.
    (block28126430Value1) backgroundColor: (block28126430Value3).
    block28126430Value4 := block28126430Value0.
    (block28126430Value4) height: (25).
    block28126430Value5 := (block28126430Value0) labelString: ('Ask each startup').
    block28126430Value5
].
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := 'toggleButton'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := 'agreeButton'.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := [:block28126454Arg1 | 
    | block28126454Value0 block28126454Value1 block28126454Value2 block28126454Value3 block28126454Value4 block28126454Value5 |
    block28126454Value0 := block28126454Arg1.
    block28126454Value1 := block28126454Value0.
    block28126454Value2 := CgRGBColor.
    block28126454Value3 := (block28126454Value2) white.
    (block28126454Value1) backgroundColor: (block28126454Value3).
    block28126454Value4 := block28126454Value0.
    (block28126454Value4) labelString: ('I agree!!').
    block28126454Value5 := (block28126454Value0) height: (25).
    block28126454Value5
].
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := 'agreeButton'.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := 'disagreeButton'.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := [:block28126478Arg1 | 
    | block28126478Value0 block28126478Value1 block28126478Value2 block28126478Value3 block28126478Value4 block28126478Value5 |
    block28126478Value0 := block28126478Arg1.
    block28126478Value1 := block28126478Value0.
    block28126478Value2 := CgRGBColor.
    block28126478Value3 := (block28126478Value2) white.
    (block28126478Value1) backgroundColor: (block28126478Value3).
    block28126478Value4 := block28126478Value0.
    (block28126478Value4) labelString: ('I do not agree!!').
    block28126478Value5 := (block28126478Value0) height: (25).
    block28126478Value5
].
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := 'disagreeButton'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := 'closeButton'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := [:block2812649cArg1 | 
    | block2812649cValue0 block2812649cValue1 block2812649cValue2 block2812649cValue3 block2812649cValue4 block2812649cValue5 |
    block2812649cValue0 := block2812649cArg1.
    block2812649cValue1 := block2812649cValue0.
    block2812649cValue2 := CgRGBColor.
    block2812649cValue3 := (block2812649cValue2) white.
    (block2812649cValue1) backgroundColor: (block2812649cValue3).
    block2812649cValue4 := block2812649cValue0.
    (block2812649cValue4) labelString: ('Close').
    block2812649cValue5 := (block2812649cValue0) height: (25).
    block2812649cValue5
].
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack0 := (recoveredStack0) unmanageChild.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := 'closeButton'.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := [:block281264c0Arg1 | 
    | block281264c0Value0 block281264c0Value1 block281264c0Value2 block281264c0Value3 block281264c0Value4 block281264c0Value5 block281264c0Value6 block281264c0Value7 block281264c0Value8 |
    block281264c0Value0 := block281264c0Arg1.
    block281264c0Value1 := block281264c0Value0.
    block281264c0Value2 := XmATTACHFORM.
    (block281264c0Value1) topAttachment: (block281264c0Value2).
    block281264c0Value3 := block281264c0Value0.
    block281264c0Value4 := XmATTACHFORM.
    (block281264c0Value3) leftAttachment: (block281264c0Value4).
    block281264c0Value5 := block281264c0Value0.
    block281264c0Value6 := XmATTACHFORM.
    (block281264c0Value5) rightAttachment: (block281264c0Value6).
    block281264c0Value7 := XmATTACHNONE.
    block281264c0Value8 := (block281264c0Value0) bottomAttachment: (block281264c0Value7).
    block281264c0Value8
].
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := [:recoveredBlock618Arg1 | 
    | recoveredBlock618Value0 recoveredBlock618Value1 recoveredBlock618Value2 recoveredBlock618Value3 recoveredBlock618Value4 recoveredBlock618Value5 recoveredBlock618Value6 recoveredBlock618Value7 recoveredBlock618Value8 recoveredBlock618Value9 recoveredBlock618Value10 recoveredBlock618Value11 recoveredBlock618Value12 recoveredBlock618Value13 recoveredBlock618Value14 |
    recoveredBlock618Value0 := recoveredBlock618Arg1.
    recoveredBlock618Value1 := recoveredBlock618Value0.
    recoveredBlock618Value2 := XmATTACHWIDGET.
    (recoveredBlock618Value1) topAttachment: (recoveredBlock618Value2).
    recoveredBlock618Value3 := recoveredBlock618Value0.
    recoveredBlock618Value4 := recoveredLocal13.
    (recoveredBlock618Value3) topWidget: (recoveredBlock618Value4).
    recoveredBlock618Value5 := recoveredBlock618Value0.
    (recoveredBlock618Value5) topOffset: (0).
    recoveredBlock618Value6 := recoveredBlock618Value0.
    recoveredBlock618Value7 := XmATTACHFORM.
    (recoveredBlock618Value6) leftAttachment: (recoveredBlock618Value7).
    recoveredBlock618Value8 := recoveredBlock618Value0.
    recoveredBlock618Value9 := XmATTACHFORM.
    (recoveredBlock618Value8) rightAttachment: (recoveredBlock618Value9).
    recoveredBlock618Value10 := recoveredBlock618Value0.
    recoveredBlock618Value11 := XmATTACHWIDGET.
    (recoveredBlock618Value10) bottomAttachment: (recoveredBlock618Value11).
    recoveredBlock618Value12 := recoveredBlock618Value0.
    recoveredBlock618Value13 := recoveredLocal4.
    (recoveredBlock618Value12) bottomWidget: (recoveredBlock618Value13).
    recoveredBlock618Value14 := (recoveredBlock618Value0) bottomOffset: (5).
    recoveredBlock618Value14
].
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack1 := [:recoveredBlock696Arg1 | 
    | recoveredBlock696Value0 recoveredBlock696Value1 recoveredBlock696Value2 recoveredBlock696Value3 recoveredBlock696Value4 recoveredBlock696Value5 recoveredBlock696Value6 recoveredBlock696Value7 recoveredBlock696Value8 recoveredBlock696Value9 recoveredBlock696Value10 recoveredBlock696Value11 recoveredBlock696Value12 recoveredBlock696Value13 |
    recoveredBlock696Value0 := recoveredBlock696Arg1.
    recoveredBlock696Value1 := recoveredBlock696Value0.
    recoveredBlock696Value2 := XmATTACHNONE.
    (recoveredBlock696Value1) topAttachment: (recoveredBlock696Value2).
    recoveredBlock696Value3 := recoveredBlock696Value0.
    recoveredBlock696Value4 := XmATTACHWIDGET.
    (recoveredBlock696Value3) bottomAttachment: (recoveredBlock696Value4).
    recoveredBlock696Value5 := recoveredBlock696Value0.
    recoveredBlock696Value6 := recoveredLocal2.
    (recoveredBlock696Value5) bottomWidget: (recoveredBlock696Value6).
    recoveredBlock696Value7 := recoveredBlock696Value0.
    (recoveredBlock696Value7) bottomOffset: (5).
    recoveredBlock696Value8 := recoveredBlock696Value0.
    recoveredBlock696Value9 := XmATTACHFORM.
    (recoveredBlock696Value8) leftAttachment: (recoveredBlock696Value9).
    recoveredBlock696Value10 := recoveredBlock696Value0.
    (recoveredBlock696Value10) leftOffset: (10).
    recoveredBlock696Value11 := recoveredBlock696Value0.
    recoveredBlock696Value12 := XmATTACHFORM.
    (recoveredBlock696Value11) rightAttachment: (recoveredBlock696Value12).
    recoveredBlock696Value13 := (recoveredBlock696Value0) rightOffset: (10).
    recoveredBlock696Value13
].
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack1 := [:recoveredBlock772Arg1 | 
    | recoveredBlock772Value0 recoveredBlock772Value1 recoveredBlock772Value2 recoveredBlock772Value3 recoveredBlock772Value4 recoveredBlock772Value5 recoveredBlock772Value6 recoveredBlock772Value7 recoveredBlock772Value8 recoveredBlock772Value9 recoveredBlock772Value10 recoveredBlock772Value11 recoveredBlock772Value12 recoveredBlock772Value13 |
    recoveredBlock772Value0 := recoveredBlock772Arg1.
    recoveredBlock772Value1 := recoveredBlock772Value0.
    recoveredBlock772Value2 := XmATTACHNONE.
    (recoveredBlock772Value1) topAttachment: (recoveredBlock772Value2).
    recoveredBlock772Value3 := recoveredBlock772Value0.
    recoveredBlock772Value4 := XmATTACHWIDGET.
    (recoveredBlock772Value3) bottomAttachment: (recoveredBlock772Value4).
    recoveredBlock772Value5 := recoveredBlock772Value0.
    recoveredBlock772Value6 := recoveredLocal3.
    (recoveredBlock772Value5) bottomWidget: (recoveredBlock772Value6).
    recoveredBlock772Value7 := recoveredBlock772Value0.
    (recoveredBlock772Value7) bottomOffset: (5).
    recoveredBlock772Value8 := recoveredBlock772Value0.
    recoveredBlock772Value9 := XmATTACHFORM.
    (recoveredBlock772Value8) leftAttachment: (recoveredBlock772Value9).
    recoveredBlock772Value10 := recoveredBlock772Value0.
    (recoveredBlock772Value10) leftOffset: (10).
    recoveredBlock772Value11 := recoveredBlock772Value0.
    recoveredBlock772Value12 := XmATTACHFORM.
    (recoveredBlock772Value11) rightAttachment: (recoveredBlock772Value12).
    recoveredBlock772Value13 := (recoveredBlock772Value0) rightOffset: (10).
    recoveredBlock772Value13
].
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack1 := [:block281264e4Arg1 | 
    | block281264e4Value0 block281264e4Value1 block281264e4Value2 block281264e4Value3 block281264e4Value4 block281264e4Value5 block281264e4Value6 block281264e4Value7 block281264e4Value8 block281264e4Value9 block281264e4Value10 block281264e4Value11 |
    block281264e4Value0 := block281264e4Arg1.
    block281264e4Value1 := block281264e4Value0.
    block281264e4Value2 := XmATTACHNONE.
    (block281264e4Value1) topAttachment: (block281264e4Value2).
    block281264e4Value3 := block281264e4Value0.
    block281264e4Value4 := XmATTACHFORM.
    (block281264e4Value3) bottomAttachment: (block281264e4Value4).
    block281264e4Value5 := block281264e4Value0.
    (block281264e4Value5) bottomOffset: (10).
    block281264e4Value6 := block281264e4Value0.
    block281264e4Value7 := XmATTACHFORM.
    (block281264e4Value6) leftAttachment: (block281264e4Value7).
    block281264e4Value8 := block281264e4Value0.
    (block281264e4Value8) leftOffset: (10).
    block281264e4Value9 := block281264e4Value0.
    block281264e4Value10 := XmATTACHFORM.
    (block281264e4Value9) rightAttachment: (block281264e4Value10).
    block281264e4Value11 := (block281264e4Value0) rightOffset: (10).
    block281264e4Value11
].
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredStack1 := [:block28126508Arg1 | 
    | block28126508Value0 block28126508Value1 block28126508Value2 block28126508Value3 block28126508Value4 block28126508Value5 block28126508Value6 block28126508Value7 block28126508Value8 block28126508Value9 block28126508Value10 block28126508Value11 |
    block28126508Value0 := block28126508Arg1.
    block28126508Value1 := block28126508Value0.
    block28126508Value2 := XmATTACHNONE.
    (block28126508Value1) topAttachment: (block28126508Value2).
    block28126508Value3 := block28126508Value0.
    block28126508Value4 := XmATTACHFORM.
    (block28126508Value3) bottomAttachment: (block28126508Value4).
    block28126508Value5 := block28126508Value0.
    (block28126508Value5) bottomOffset: (10).
    block28126508Value6 := block28126508Value0.
    block28126508Value7 := XmATTACHFORM.
    (block28126508Value6) leftAttachment: (block28126508Value7).
    block28126508Value8 := block28126508Value0.
    (block28126508Value8) leftOffset: (10).
    block28126508Value9 := block28126508Value0.
    block28126508Value10 := XmATTACHFORM.
    (block28126508Value9) rightAttachment: (block28126508Value10).
    block28126508Value11 := (block28126508Value0) rightOffset: (10).
    block28126508Value11
].
            recoveredPC := 922.
        ].
        recoveredStep = 922 ifTrue: [
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack3 := 'headerBitmapExpose:clientData:callData:'.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack4 := 'contentBitmapExpose:clientData:callData:'.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack2 := PointerMotionMask.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack4 := 'mouseMoved:clientData:callData:'.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack1 := ButtonPressMask.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack3 := 'mousePressed:clientData:callData:'.
            recoveredPC := 1036.
        ].
        recoveredStep = 1036 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1048.
        ].
        recoveredStep = 1048 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack3 := 'toggleButtonValueChanged:clientData:callData:'.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1053.
        ].
        recoveredStep = 1053 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack3 := 'buttonAgreeActivate:clientData:callData:'.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            recoveredStack3 := 'buttonDisagreeActivate:clientData:callData:'.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            recoveredStack3 := 'buttonCloseActivate:clientData:callData:'.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1111.
        ].
        recoveredStep = 1111 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

