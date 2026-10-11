"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001874c; bytecode file offset 0x92209c"
!RBHelpCoordinator methodsFor: 'recovered'!
defaultLanguageString
    ^'EnglishUS'
! !

"ASDBase.ic method 0x200216ec; bytecode file offset 0x92209c"
!RBHelpCoordinator methodsFor: 'recovered'!
defaultHelpPath
    ^''
! !

"ASDBase.ic method 0x2003cb58; bytecode file offset 0x93bf94"
!RBHelpCoordinator methodsFor: 'recovered'!
popupMenuEntryString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBExtendedPrimitive.
    recoveredValue1 := (recoveredValue0) popupMenuEntryString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e278; bytecode file offset 0x93bf94"
!RBHelpCoordinator methodsFor: 'recovered'!
popupMenuString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBExtendedPrimitive.
    recoveredValue1 := (recoveredValue0) popupMenuString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062ce4; bytecode file offset 0x95f8b0"
!RBHelpCoordinator methodsFor: 'recovered'!
defaultWholeFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) helpPath.
    recoveredValue1 := (self) defaultFileName.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065cbc; bytecode file offset 0x963428"
!RBHelpCoordinator methodsFor: 'recovered'!
fileExtension
    | recoveredValue0 |
    recoveredValue0 := fileExtension.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067bc4; bytecode file offset 0x9646f8"
!RBHelpCoordinator methodsFor: 'recovered'!
productString
    | recoveredValue0 |
    recoveredValue0 := productString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069f18; bytecode file offset 0x966bdc"
!RBHelpCoordinator methodsFor: 'recovered'!
helpMapFile
    | recoveredValue0 |
    recoveredValue0 := helpMapFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a91c; bytecode file offset 0x967a18"
!RBHelpCoordinator methodsFor: 'recovered'!
helpMapFileProfile
    | recoveredValue0 |
    recoveredValue0 := helpMapFileProfile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b240; bytecode file offset 0x96873c"
!RBHelpCoordinator methodsFor: 'recovered'!
helpPath
    | recoveredValue0 |
    recoveredValue0 := helpPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c47c; bytecode file offset 0x9692b0"
!RBHelpCoordinator methodsFor: 'recovered'!
helpFiles
    | recoveredValue0 |
    recoveredValue0 := helpFiles.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075d7c; bytecode file offset 0x9757c8"
!RBHelpCoordinator methodsFor: 'recovered'!
isHelpCoordinator
    ^true
! !

"ASDBase.ic method 0x20088ae8; bytecode file offset 0x985628"
!RBHelpCoordinator methodsFor: 'recovered'!
defaultHelpFileExists
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CfsStat.
    recoveredValue1 := (self) defaultWholeFileName.
    recoveredValue2 := (recoveredValue0) exists: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdab4; bytecode file offset 0x9bb178"
!RBHelpCoordinator methodsFor: 'recovered'!
fileExtension: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileExtension := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200befd8; bytecode file offset 0x9bc0b4"
!RBHelpCoordinator methodsFor: 'recovered'!
productString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    productString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1804; bytecode file offset 0x9beac8"
!RBHelpCoordinator methodsFor: 'recovered'!
helpMapFileProfile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpMapFileProfile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b30; bytecode file offset 0x9bf474"
!RBHelpCoordinator methodsFor: 'recovered'!
helpPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c335c; bytecode file offset 0x9bfde0"
!RBHelpCoordinator methodsFor: 'recovered'!
helpFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ded4c; bytecode file offset 0x9db628"
!RBHelpCoordinator methodsFor: 'recovered'!
helpCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3 triggeringWindow: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) helpCallbackForWidgets: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2) triggeringWindow: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20127c64; bytecode file offset 0xa24520"
!RBHelpCoordinator methodsFor: 'recovered'!
helpCallbackForWidgets: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3 triggeringWindow: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getWidgetHelpNameForWidget: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (self) handleHelpCallbackWidget: (recoveredValue3) string: (recoveredValue4) userInterface: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20173094; bytecode file offset 0xa6f964"
!RBHelpCoordinator methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    recoveredValue0 := (self) defaultHelpPath.
    (self) helpPath: (recoveredValue0).
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    (self) helpFiles: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2017f0b8; bytecode file offset 0xa7b974"
!RBHelpCoordinator methodsFor: 'recovered'!
languageString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := languageString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := languageString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLanguageString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            languageString := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := languageString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cc6d0; bytecode file offset 0xac8f90"
!RBHelpCoordinator methodsFor: 'recovered'!
languageString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLanguageString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            languageString := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            languageString := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6308; bytecode file offset 0xaf2be4"
!RBHelpCoordinator methodsFor: 'recovered'!
displayContents: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getHelpManagerOnWidget: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) displayContents.
    ^recoveredBlock18Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6320; bytecode file offset 0xaf2be4"
!RBHelpCoordinator methodsFor: 'recovered'!
displayHelpOnHelp: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getHelpManagerOnWidget: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) displayHelpOnHelp.
    ^recoveredBlock18Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022180c; bytecode file offset 0xb1e0ec"
!RBHelpCoordinator methodsFor: 'recovered'!
displayWidgetName: recoveredArg1 userInterface: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('

of: [').
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) class.
    recoveredValue5 := (recoveredValue4) name.
    recoveredValue6 := (recoveredValue2) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , (']

(copied to clipboard)').
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := OSClipboard.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) setString: (recoveredValue9).
    recoveredValue10 := RBUserInfo.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue10) message: (recoveredValue11).
    (recoveredValue12) prompt.
    ^self
! !

"ASDBase.ic method 0x2024d6e0; bytecode file offset 0xb49fac"
!RBHelpCoordinator methodsFor: 'recovered'!
handleHelpCallbackWidget: recoveredArg1 string: recoveredArg2 userInterface: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNameF1Handling.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayWidgetName: (recoveredStack1) userInterface: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetListF1Handling.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayWidgetList: (recoveredStack1) window: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) displayWidgetHelpIdFor: (recoveredStack1) widgetName: (recoveredStack2) in: (recoveredStack3).
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

"ASDBase.ic method 0x20262eb4; bytecode file offset 0xb5f778"
!RBHelpCoordinator methodsFor: 'recovered'!
getHelpManagerForFileName: recoveredArg1 onWidget: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := EtasHTMLHelp.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := EtasHTMLHelp.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName: (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := EtasWinHelp.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := EtasWinHelp.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName: (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20271330; bytecode file offset 0xb6dc14"
!RBHelpCoordinator methodsFor: 'recovered'!
displayIndex: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultHelpFileExists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NoHelpAvailable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultWholeFileName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHelpManagerOnWidget: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:block280e0748Arg1 | 
    | block280e0748Value0 block280e0748Value1 |
    block280e0748Value0 := block280e0748Arg1.
    block280e0748Value1 := (block280e0748Value0) displayIndex.
    block280e0748Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x20284d38; bytecode file offset 0xb81604"
!RBHelpCoordinator methodsFor: 'recovered'!
getHelpManagerOnWidget: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := EtasHTMLHelp.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EtasHTMLHelp.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultWholeFileName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultFileName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := EtasWinHelp.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := EtasWinHelp.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultWholeFileName.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20325eb0; bytecode file offset 0xc22794"
!RBHelpCoordinator methodsFor: 'recovered'!
defaultFileName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Online_Help'.
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
            recoveredStack0 := (recoveredStack0) productString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) languageString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) helpPath.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) productString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLanguageString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20370c70; bytecode file offset 0xc6d568"
!RBHelpCoordinator methodsFor: 'recovered'!
helpMapFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    helpMapFile := recoveredValue0.
    recoveredValue1 := WinProfile.
    recoveredValue2 := (self) helpPath.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue1) create: (recoveredValue4).
    (self) helpMapFileProfile: (recoveredValue5).
    recoveredValue6 := (self) helpMapFileProfile.
    recoveredValue7 := (recoveredValue6) sectionEntries.
    recoveredValue8 := (self) class.
    recoveredValue9 := (recoveredValue8) helpFileSectionString.
    recoveredValue10 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := [:recoveredBlock26Block33Arg1 :recoveredBlock26Block33Arg2 | 
    | recoveredBlock26Block33Value0 recoveredBlock26Block33Value1 recoveredBlock26Block33Value2 recoveredBlock26Block33Value3 recoveredBlock26Block33Value4 recoveredBlock26Block33Value5 recoveredBlock26Block33Value6 recoveredBlock26Block33Value7 recoveredBlock26Block33Value8 recoveredBlock26Block33Value9 recoveredBlock26Block33Value10 recoveredBlock26Block33Value11 |
    recoveredBlock26Block33Value0 := (self) helpFiles.
    recoveredBlock26Block33Value1 := recoveredBlock26Block33Arg1.
    recoveredBlock26Block33Value2 := (self) class.
    recoveredBlock26Block33Value3 := (recoveredBlock26Block33Value2) helpFileEntryString.
    recoveredBlock26Block33Value4 := (recoveredBlock26Block33Value3) size.
    recoveredBlock26Block33Value5 := (recoveredBlock26Block33Value4) + (1).
    recoveredBlock26Block33Value6 := recoveredBlock26Block33Arg1.
    recoveredBlock26Block33Value7 := (recoveredBlock26Block33Value6) size.
    recoveredBlock26Block33Value8 := (recoveredBlock26Block33Value1) copyFrom: (recoveredBlock26Block33Value5) to: (recoveredBlock26Block33Value7).
    recoveredBlock26Block33Value9 := (recoveredBlock26Block33Value8) asInteger.
    recoveredBlock26Block33Value10 := recoveredBlock26Block33Arg2.
    recoveredBlock26Block33Value11 := (recoveredBlock26Block33Value0) at: (recoveredBlock26Block33Value9) put: (recoveredBlock26Block33Value10).
    recoveredBlock26Block33Value11
].
    recoveredBlock26Value2 := (recoveredBlock26Value0) keysAndValuesDo: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
    (recoveredValue7) at: (recoveredValue9) ifPresent: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2039d1d8; bytecode file offset 0xc99ab8"
!RBHelpCoordinator methodsFor: 'recovered'!
initHelpMapFile
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBHelpCoordinator.
    recoveredValue1 := (recoveredValue0) mapExtension.
    recoveredValue2 := ('.') , (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) languageString.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := (self) helpPath.
    recoveredBlock15Value1 := [:recoveredBlock15Block24Arg1 | 
    | recoveredBlock15Block24Local1 recoveredBlock15Block24Stack0 recoveredBlock15Block24Stack1 recoveredBlock15Block24Stack2 recoveredBlock15Block24Stack3 recoveredBlock15Block24Stack4 recoveredBlock15Block24PC recoveredBlock15Block24Step recoveredBlock15Block24Done recoveredBlock15Block24Result |
    recoveredBlock15Block24Stack0 := self.
    recoveredBlock15Block24PC := 30.
    recoveredBlock15Block24Done := false.
    [recoveredBlock15Block24Done not] whileTrue: [
        recoveredBlock15Block24Step := recoveredBlock15Block24PC.
        recoveredBlock15Block24Step = 30 ifTrue: [
            recoveredBlock15Block24Stack0 := (recoveredBlock15Block24Stack0) productString.
            recoveredBlock15Block24PC := 32.
        ].
        recoveredBlock15Block24Step = 32 ifTrue: [
            recoveredBlock15Block24Stack1 := recoveredBlock15Arg1.
            recoveredBlock15Block24PC := 35.
        ].
        recoveredBlock15Block24Step = 35 ifTrue: [
            recoveredBlock15Block24Stack0 := (recoveredBlock15Block24Stack0) , (recoveredBlock15Block24Stack1).
            recoveredBlock15Block24PC := 36.
        ].
        recoveredBlock15Block24Step = 36 ifTrue: [
            recoveredBlock15Block24Stack1 := recoveredLocal1.
            recoveredBlock15Block24PC := 39.
        ].
        recoveredBlock15Block24Step = 39 ifTrue: [
            recoveredBlock15Block24Stack0 := (recoveredBlock15Block24Stack0) , (recoveredBlock15Block24Stack1).
            recoveredBlock15Block24PC := 40.
        ].
        recoveredBlock15Block24Step = 40 ifTrue: [
            recoveredBlock15Block24Local1 := recoveredBlock15Block24Stack0.
            recoveredBlock15Block24PC := 41.
        ].
        recoveredBlock15Block24Step = 41 ifTrue: [
            recoveredBlock15Block24Stack0 := nil.
            recoveredBlock15Block24PC := 42.
        ].
        recoveredBlock15Block24Step = 42 ifTrue: [
            recoveredBlock15Block24Stack1 := CfsStat.
            recoveredBlock15Block24PC := 44.
        ].
        recoveredBlock15Block24Step = 44 ifTrue: [
            recoveredBlock15Block24Stack2 := recoveredBlock15Block24Arg1.
            recoveredBlock15Block24PC := 45.
        ].
        recoveredBlock15Block24Step = 45 ifTrue: [
            recoveredBlock15Block24Stack3 := recoveredBlock15Block24Local1.
            recoveredBlock15Block24PC := 46.
        ].
        recoveredBlock15Block24Step = 46 ifTrue: [
            recoveredBlock15Block24Stack2 := (recoveredBlock15Block24Stack2) , (recoveredBlock15Block24Stack3).
            recoveredBlock15Block24PC := 47.
        ].
        recoveredBlock15Block24Step = 47 ifTrue: [
            recoveredBlock15Block24Stack1 := (recoveredBlock15Block24Stack1) exists: (recoveredBlock15Block24Stack2).
            recoveredBlock15Block24PC := 49.
        ].
        recoveredBlock15Block24Step = 49 ifTrue: [
            (recoveredBlock15Block24Stack1) ifTrue: [recoveredBlock15Block24PC := 52] ifFalse: [recoveredBlock15Block24PC := 58].
        ].
        recoveredBlock15Block24Step = 52 ifTrue: [
            recoveredBlock15Block24PC := 53.
        ].
        recoveredBlock15Block24Step = 53 ifTrue: [
            recoveredBlock15Block24Stack0 := self.
            recoveredBlock15Block24PC := 54.
        ].
        recoveredBlock15Block24Step = 54 ifTrue: [
            recoveredBlock15Block24Stack1 := recoveredBlock15Block24Local1.
            recoveredBlock15Block24PC := 55.
        ].
        recoveredBlock15Block24Step = 55 ifTrue: [
            recoveredBlock15Block24Stack0 := (recoveredBlock15Block24Stack0) helpMapFile: (recoveredBlock15Block24Stack1).
            recoveredBlock15Block24PC := 57.
        ].
        recoveredBlock15Block24Step = 57 ifTrue: [
            ^recoveredBlock15Block24Stack0
        ].
        recoveredBlock15Block24Step = 58 ifTrue: [
            recoveredBlock15Block24Result := recoveredBlock15Block24Stack0.
            recoveredBlock15Block24Done := true.
        ].
    ].
    recoveredBlock15Block24Result
].
    recoveredBlock15Value2 := (recoveredBlock15Value0) ifNotNil: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := (self) productString.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) , (recoveredValue6).
    (self) helpMapFile: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x205ea918; bytecode file offset 0xee727c"
!RBHelpCoordinator methodsFor: 'recovered'!
displayWidgetHelpIdFor: recoveredArg1 widgetName: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) shell.
    recoveredValue2 := (self) getHelpManagerOnWidget: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := helpMapFileProfile.
    recoveredValue4 := (recoveredValue3) sectionEntries.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) class.
    recoveredValue7 := (recoveredValue6) name.
    recoveredValue8 := (recoveredValue7) asString.
    recoveredValue9 := [
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            (recoveredBlock23Stack1 ~~ nil) ifTrue: [recoveredBlock23PC := 55] ifFalse: [recoveredBlock23PC := 36].
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23Stack1 := RBUserInfo.
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack2 := NoHelpAvailable.
            recoveredBlock23PC := 40.
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) helpPath.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack4 := self.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) defaultFileName.
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) , (recoveredBlock23Stack4).
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) bindWith: (recoveredBlock23Stack3).
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) message: (recoveredBlock23Stack2).
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) prompt.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 55 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 58.
        ].
        recoveredBlock23Step = 58 ifTrue: [
            recoveredBlock23Stack2 := 0.
            recoveredBlock23PC := 60.
        ].
        recoveredBlock23Step = 60 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) displayContextId: (recoveredBlock23Stack2).
            recoveredBlock23PC := 62.
        ].
        recoveredBlock23Step = 62 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue4) at: (recoveredValue8) ifAbsent: (recoveredValue9).
    recoveredValue10 := helpMapFileProfile.
    recoveredValue11 := (recoveredValue10) sectionEntries.
    recoveredValue12 := recoveredArg3.
    recoveredValue13 := (recoveredValue12) class.
    recoveredValue14 := (recoveredValue13) name.
    recoveredValue15 := (recoveredValue14) asString.
    recoveredValue16 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Local1 recoveredBlock76Local2 recoveredBlock76Local3 recoveredBlock76Local4 recoveredBlock76Local5 recoveredBlock76Stack0 recoveredBlock76Stack1 recoveredBlock76Stack2 recoveredBlock76Stack3 recoveredBlock76Stack4 recoveredBlock76PC recoveredBlock76Step recoveredBlock76Done recoveredBlock76Result |
    recoveredBlock76Stack0 := self.
    recoveredBlock76PC := 82.
    recoveredBlock76Done := false.
    [recoveredBlock76Done not] whileTrue: [
        recoveredBlock76Step := recoveredBlock76PC.
        recoveredBlock76Step = 82 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Arg1.
            recoveredBlock76PC := 85.
        ].
        recoveredBlock76Step = 85 ifTrue: [
            recoveredBlock76Stack2 := self.
            recoveredBlock76PC := 86.
        ].
        recoveredBlock76Step = 86 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) class.
            recoveredBlock76PC := 87.
        ].
        recoveredBlock76Step = 87 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) offsetString.
            recoveredBlock76PC := 89.
        ].
        recoveredBlock76Step = 89 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) at: (recoveredBlock76Stack2).
            recoveredBlock76PC := 91.
        ].
        recoveredBlock76Step = 91 ifTrue: [
            recoveredBlock76Local5 := recoveredBlock76Stack1.
            recoveredBlock76PC := 94.
        ].
        recoveredBlock76Step = 94 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Local5.
            recoveredBlock76PC := 97.
        ].
        recoveredBlock76Step = 97 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) asInteger.
            recoveredBlock76PC := 99.
        ].
        recoveredBlock76Step = 99 ifTrue: [
            recoveredBlock76Local4 := recoveredBlock76Stack1.
            recoveredBlock76PC := 102.
        ].
        recoveredBlock76Step = 102 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Arg1.
            recoveredBlock76PC := 105.
        ].
        recoveredBlock76Step = 105 ifTrue: [
            recoveredBlock76Stack2 := recoveredArg2.
            recoveredBlock76PC := 108.
        ].
        recoveredBlock76Step = 108 ifTrue: [
            recoveredBlock76Stack3 := [
    | recoveredBlock76Block108Value0 recoveredBlock76Block108Value1 recoveredBlock76Block108Value2 recoveredBlock76Block108Value3 |
    recoveredBlock76Block108Value0 := recoveredBlock76Local5.
    recoveredBlock76Block108Value1 := (recoveredBlock76Block108Value0) last.
    recoveredBlock76Block108Value2 := (recoveredBlock76Block108Value1) asString.
    recoveredBlock76Block108Value3 := ('0;') , (recoveredBlock76Block108Value2).
    recoveredBlock76Block108Value3
].
            recoveredBlock76PC := 126.
        ].
        recoveredBlock76Step = 126 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) at: (recoveredBlock76Stack2) ifAbsent: (recoveredBlock76Stack3).
            recoveredBlock76PC := 128.
        ].
        recoveredBlock76Step = 128 ifTrue: [
            recoveredBlock76Local3 := recoveredBlock76Stack1.
            recoveredBlock76PC := 131.
        ].
        recoveredBlock76Step = 131 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Local3.
            recoveredBlock76PC := 134.
        ].
        recoveredBlock76Step = 134 ifTrue: [
            recoveredBlock76Stack2 := RBHelpCoordinator.
            recoveredBlock76PC := 136.
        ].
        recoveredBlock76Step = 136 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) widgetIdSeparator.
            recoveredBlock76PC := 138.
        ].
        recoveredBlock76Step = 138 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) first.
            recoveredBlock76PC := 140.
        ].
        recoveredBlock76Step = 140 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) allSubStrings: (recoveredBlock76Stack2).
            recoveredBlock76PC := 142.
        ].
        recoveredBlock76Step = 142 ifTrue: [
            recoveredBlock76Local1 := recoveredBlock76Stack1.
            recoveredBlock76PC := 145.
        ].
        recoveredBlock76Step = 145 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) helpFiles.
            recoveredBlock76PC := 147.
        ].
        recoveredBlock76Step = 147 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Local1.
            recoveredBlock76PC := 150.
        ].
        recoveredBlock76Step = 150 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) last.
            recoveredBlock76PC := 152.
        ].
        recoveredBlock76Step = 152 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) asInteger.
            recoveredBlock76PC := 154.
        ].
        recoveredBlock76Step = 154 ifTrue: [
            recoveredBlock76Stack2 := [
    | recoveredBlock76Block154Value0 recoveredBlock76Block154Value1 |
    recoveredBlock76Block154Value0 := (self) class.
    recoveredBlock76Block154Value1 := (recoveredBlock76Block154Value0) defaultString.
    recoveredBlock76Block154Value1
].
            recoveredBlock76PC := 164.
        ].
        recoveredBlock76Step = 164 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) at: (recoveredBlock76Stack1) ifAbsent: (recoveredBlock76Stack2).
            recoveredBlock76PC := 166.
        ].
        recoveredBlock76Step = 166 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Stack0.
            recoveredBlock76PC := 167.
        ].
        recoveredBlock76Step = 167 ifTrue: [
            recoveredBlock76Local2 := recoveredBlock76Stack1.
            recoveredBlock76PC := 170.
        ].
        recoveredBlock76Step = 170 ifTrue: [
            recoveredBlock76Stack1 := self.
            recoveredBlock76PC := 171.
        ].
        recoveredBlock76Step = 171 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) class.
            recoveredBlock76PC := 172.
        ].
        recoveredBlock76Step = 172 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) defaultString.
            recoveredBlock76PC := 174.
        ].
        recoveredBlock76Step = 174 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) = (recoveredBlock76Stack1).
            recoveredBlock76PC := 175.
        ].
        recoveredBlock76Step = 175 ifTrue: [
            (recoveredBlock76Stack0) ifTrue: [recoveredBlock76PC := 178] ifFalse: [recoveredBlock76PC := 212].
        ].
        recoveredBlock76Step = 178 ifTrue: [
            recoveredBlock76Stack0 := self.
            recoveredBlock76PC := 179.
        ].
        recoveredBlock76Step = 179 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) defaultFileName.
            recoveredBlock76PC := 181.
        ].
        recoveredBlock76Step = 181 ifTrue: [
            recoveredLocal1 := recoveredBlock76Stack0.
            recoveredBlock76PC := 184.
        ].
        recoveredBlock76Step = 184 ifTrue: [
            recoveredBlock76Stack0 := recoveredLocal2.
            recoveredBlock76PC := 187.
        ].
        recoveredBlock76Step = 187 ifTrue: [
            (recoveredBlock76Stack0 ~~ nil) ifTrue: [recoveredBlock76PC := 209] ifFalse: [recoveredBlock76PC := 190].
        ].
        recoveredBlock76Step = 190 ifTrue: [
            recoveredBlock76Stack0 := RBUserInfo.
            recoveredBlock76PC := 192.
        ].
        recoveredBlock76Step = 192 ifTrue: [
            recoveredBlock76Stack1 := NoHelpAvailable.
            recoveredBlock76PC := 194.
        ].
        recoveredBlock76Step = 194 ifTrue: [
            recoveredBlock76Stack2 := self.
            recoveredBlock76PC := 195.
        ].
        recoveredBlock76Step = 195 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) helpPath.
            recoveredBlock76PC := 197.
        ].
        recoveredBlock76Step = 197 ifTrue: [
            recoveredBlock76Stack3 := recoveredBlock76Local2.
            recoveredBlock76PC := 200.
        ].
        recoveredBlock76Step = 200 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) , (recoveredBlock76Stack3).
            recoveredBlock76PC := 202.
        ].
        recoveredBlock76Step = 202 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) bindWith: (recoveredBlock76Stack2).
            recoveredBlock76PC := 204.
        ].
        recoveredBlock76Step = 204 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) message: (recoveredBlock76Stack1).
            recoveredBlock76PC := 206.
        ].
        recoveredBlock76Step = 206 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) prompt.
            recoveredBlock76PC := 208.
        ].
        recoveredBlock76Step = 208 ifTrue: [
            ^recoveredBlock76Stack0
        ].
        recoveredBlock76Step = 209 ifTrue: [
            recoveredBlock76PC := 365.
        ].
        recoveredBlock76Step = 212 ifTrue: [
            recoveredBlock76Stack0 := recoveredBlock76Local2.
            recoveredBlock76PC := 215.
        ].
        recoveredBlock76Step = 215 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) fileExtension.
            recoveredBlock76PC := 217.
        ].
        recoveredBlock76Step = 217 ifTrue: [
            recoveredBlock76Stack1 := EtasHTMLHelp.
            recoveredBlock76PC := 219.
        ].
        recoveredBlock76Step = 219 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) fileExtension.
            recoveredBlock76PC := 221.
        ].
        recoveredBlock76Step = 221 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) = (recoveredBlock76Stack1).
            recoveredBlock76PC := 222.
        ].
        recoveredBlock76Step = 222 ifTrue: [
            (recoveredBlock76Stack0) ifTrue: [recoveredBlock76PC := 226] ifFalse: [recoveredBlock76PC := 240].
        ].
        recoveredBlock76Step = 226 ifTrue: [
            recoveredBlock76Stack0 := RBUserInfo.
            recoveredBlock76PC := 228.
        ].
        recoveredBlock76Step = 228 ifTrue: [
            recoveredBlock76Stack1 := SpecifyHelpFileInMapFileWithoutExtension.
            recoveredBlock76PC := 230.
        ].
        recoveredBlock76Step = 230 ifTrue: [
            recoveredBlock76Stack2 := self.
            recoveredBlock76PC := 231.
        ].
        recoveredBlock76Step = 231 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) helpMapFile.
            recoveredBlock76PC := 233.
        ].
        recoveredBlock76Step = 233 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) bindWith: (recoveredBlock76Stack2).
            recoveredBlock76PC := 235.
        ].
        recoveredBlock76Step = 235 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) message: (recoveredBlock76Stack1).
            recoveredBlock76PC := 237.
        ].
        recoveredBlock76Step = 237 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) prompt.
            recoveredBlock76PC := 239.
        ].
        recoveredBlock76Step = 239 ifTrue: [
            ^recoveredBlock76Stack0
        ].
        recoveredBlock76Step = 240 ifTrue: [
            recoveredBlock76Stack0 := recoveredBlock76Local2.
            recoveredBlock76PC := 243.
        ].
        recoveredBlock76Step = 243 ifTrue: [
            recoveredBlock76Stack1 := $..
            recoveredBlock76PC := 246.
        ].
        recoveredBlock76Step = 246 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) upToLast: (recoveredBlock76Stack1).
            recoveredBlock76PC := 248.
        ].
        recoveredBlock76Step = 248 ifTrue: [
            recoveredBlock76Stack1 := self.
            recoveredBlock76PC := 249.
        ].
        recoveredBlock76Step = 249 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) languageString.
            recoveredBlock76PC := 251.
        ].
        recoveredBlock76Step = 251 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) , (recoveredBlock76Stack1).
            recoveredBlock76PC := 253.
        ].
        recoveredBlock76Step = 253 ifTrue: [
            recoveredBlock76Stack1 := '.'.
            recoveredBlock76PC := 255.
        ].
        recoveredBlock76Step = 255 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) , (recoveredBlock76Stack1).
            recoveredBlock76PC := 257.
        ].
        recoveredBlock76Step = 257 ifTrue: [
            recoveredBlock76Stack1 := EtasHTMLHelp.
            recoveredBlock76PC := 259.
        ].
        recoveredBlock76Step = 259 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) fileExtension.
            recoveredBlock76PC := 261.
        ].
        recoveredBlock76Step = 261 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) , (recoveredBlock76Stack1).
            recoveredBlock76PC := 263.
        ].
        recoveredBlock76Step = 263 ifTrue: [
            recoveredLocal1 := recoveredBlock76Stack0.
            recoveredBlock76PC := 266.
        ].
        recoveredBlock76Step = 266 ifTrue: [
            recoveredBlock76Stack0 := 'Kli'.
            recoveredBlock76PC := 268.
        ].
        recoveredBlock76Step = 268 ifTrue: [
            recoveredBlock76Stack1 := 'Online_Help'.
            recoveredBlock76PC := 270.
        ].
        recoveredBlock76Step = 270 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) == (recoveredBlock76Stack1).
            recoveredBlock76PC := 271.
        ].
        recoveredBlock76Step = 271 ifTrue: [
            recoveredBlock76PC := 272.
        ].
        recoveredBlock76Step = 272 ifTrue: [
            recoveredBlock76Stack0 := CfsStat.
            recoveredBlock76PC := 274.
        ].
        recoveredBlock76Step = 274 ifTrue: [
            recoveredBlock76Stack1 := self.
            recoveredBlock76PC := 275.
        ].
        recoveredBlock76Step = 275 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) helpPath.
            recoveredBlock76PC := 277.
        ].
        recoveredBlock76Step = 277 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) asPathname.
            recoveredBlock76PC := 279.
        ].
        recoveredBlock76Step = 279 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Local2.
            recoveredBlock76PC := 282.
        ].
        recoveredBlock76Step = 282 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) , (recoveredBlock76Stack2).
            recoveredBlock76PC := 284.
        ].
        recoveredBlock76Step = 284 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) exists: (recoveredBlock76Stack1).
            recoveredBlock76PC := 286.
        ].
        recoveredBlock76Step = 286 ifTrue: [
            (recoveredBlock76Stack0) ifTrue: [recoveredBlock76PC := 316] ifFalse: [recoveredBlock76PC := 290].
        ].
        recoveredBlock76Step = 290 ifTrue: [
            recoveredBlock76Stack0 := recoveredBlock76Local2.
            recoveredBlock76PC := 293.
        ].
        recoveredBlock76Step = 293 ifTrue: [
            recoveredBlock76Stack1 := $..
            recoveredBlock76PC := 296.
        ].
        recoveredBlock76Step = 296 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) upToLast: (recoveredBlock76Stack1).
            recoveredBlock76PC := 298.
        ].
        recoveredBlock76Step = 298 ifTrue: [
            recoveredBlock76Stack1 := self.
            recoveredBlock76PC := 299.
        ].
        recoveredBlock76Step = 299 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) defaultLanguageString.
            recoveredBlock76PC := 301.
        ].
        recoveredBlock76Step = 301 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) , (recoveredBlock76Stack1).
            recoveredBlock76PC := 303.
        ].
        recoveredBlock76Step = 303 ifTrue: [
            recoveredBlock76Stack1 := '.'.
            recoveredBlock76PC := 305.
        ].
        recoveredBlock76Step = 305 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) , (recoveredBlock76Stack1).
            recoveredBlock76PC := 307.
        ].
        recoveredBlock76Step = 307 ifTrue: [
            recoveredBlock76Stack1 := EtasHTMLHelp.
            recoveredBlock76PC := 309.
        ].
        recoveredBlock76Step = 309 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) fileExtension.
            recoveredBlock76PC := 311.
        ].
        recoveredBlock76Step = 311 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) , (recoveredBlock76Stack1).
            recoveredBlock76PC := 313.
        ].
        recoveredBlock76Step = 313 ifTrue: [
            recoveredLocal1 := recoveredBlock76Stack0.
            recoveredBlock76PC := 316.
        ].
        recoveredBlock76Step = 316 ifTrue: [
            recoveredBlock76Stack0 := EtasHTMLHelp.
            recoveredBlock76PC := 318.
        ].
        recoveredBlock76Step = 318 ifTrue: [
            recoveredBlock76Stack1 := self.
            recoveredBlock76PC := 319.
        ].
        recoveredBlock76Step = 319 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) helpPath.
            recoveredBlock76PC := 321.
        ].
        recoveredBlock76Step = 321 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) asPathname.
            recoveredBlock76PC := 323.
        ].
        recoveredBlock76Step = 323 ifTrue: [
            recoveredBlock76Stack2 := recoveredLocal1.
            recoveredBlock76PC := 326.
        ].
        recoveredBlock76Step = 326 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) , (recoveredBlock76Stack2).
            recoveredBlock76PC := 328.
        ].
        recoveredBlock76Step = 328 ifTrue: [
            recoveredBlock76Stack2 := recoveredArg1.
            recoveredBlock76PC := 331.
        ].
        recoveredBlock76Step = 331 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) fileName: (recoveredBlock76Stack1) on: (recoveredBlock76Stack2).
            recoveredBlock76PC := 333.
        ].
        recoveredBlock76Step = 333 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Stack0.
            recoveredBlock76PC := 334.
        ].
        recoveredBlock76Step = 334 ifTrue: [
            recoveredLocal2 := recoveredBlock76Stack1.
            recoveredBlock76PC := 337.
        ].
        recoveredBlock76Step = 337 ifTrue: [
            recoveredBlock76Stack1 := [
    | recoveredBlock76Block337Value0 recoveredBlock76Block337Value1 recoveredBlock76Block337Value2 recoveredBlock76Block337Value3 recoveredBlock76Block337Value4 recoveredBlock76Block337Value5 recoveredBlock76Block337Value6 recoveredBlock76Block337Value7 |
    recoveredBlock76Block337Value0 := RBUserInfo.
    recoveredBlock76Block337Value1 := NoHelpAvailable.
    recoveredBlock76Block337Value2 := (self) helpPath.
    recoveredBlock76Block337Value3 := recoveredLocal1.
    recoveredBlock76Block337Value4 := (recoveredBlock76Block337Value2) , (recoveredBlock76Block337Value3).
    recoveredBlock76Block337Value5 := (recoveredBlock76Block337Value1) bindWith: (recoveredBlock76Block337Value4).
    recoveredBlock76Block337Value6 := (recoveredBlock76Block337Value0) message: (recoveredBlock76Block337Value5).
    recoveredBlock76Block337Value7 := (recoveredBlock76Block337Value6) prompt.
    ^recoveredBlock76Block337Value7
].
            recoveredBlock76PC := 363.
        ].
        recoveredBlock76Step = 363 ifTrue: [
            (recoveredBlock76Stack0) ifNil: (recoveredBlock76Stack1).
            recoveredBlock76PC := 365.
        ].
        recoveredBlock76Step = 365 ifTrue: [
            recoveredBlock76Stack0 := recoveredLocal2.
            recoveredBlock76PC := 368.
        ].
        recoveredBlock76Step = 368 ifTrue: [
            recoveredBlock76Stack1 := self.
            recoveredBlock76PC := 369.
        ].
        recoveredBlock76Step = 369 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) helpPath.
            recoveredBlock76PC := 371.
        ].
        recoveredBlock76Step = 371 ifTrue: [
            recoveredBlock76Stack2 := recoveredLocal1.
            recoveredBlock76PC := 374.
        ].
        recoveredBlock76Step = 374 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) , (recoveredBlock76Stack2).
            recoveredBlock76PC := 376.
        ].
        recoveredBlock76Step = 376 ifTrue: [
            (recoveredBlock76Stack0) fileName: (recoveredBlock76Stack1).
            recoveredBlock76PC := 378.
        ].
        recoveredBlock76Step = 378 ifTrue: [
            recoveredBlock76Stack0 := recoveredLocal2.
            recoveredBlock76PC := 381.
        ].
        recoveredBlock76Step = 381 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Local4.
            recoveredBlock76PC := 384.
        ].
        recoveredBlock76Step = 384 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Local1.
            recoveredBlock76PC := 387.
        ].
        recoveredBlock76Step = 387 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) first.
            recoveredBlock76PC := 389.
        ].
        recoveredBlock76Step = 389 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) asInteger.
            recoveredBlock76PC := 391.
        ].
        recoveredBlock76Step = 391 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) + (recoveredBlock76Stack2).
            recoveredBlock76PC := 392.
        ].
        recoveredBlock76Step = 392 ifTrue: [
            recoveredBlock76Stack0 := (recoveredBlock76Stack0) displayContextId: (recoveredBlock76Stack1).
            recoveredBlock76PC := 394.
        ].
        recoveredBlock76Step = 394 ifTrue: [
            recoveredBlock76Result := recoveredBlock76Stack0.
            recoveredBlock76Done := true.
        ].
    ].
    recoveredBlock76Result
].
    (recoveredValue11) at: (recoveredValue15) ifPresent: (recoveredValue16).
    ^self
! !

