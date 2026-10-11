"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023c78; bytecode file offset 0x92209c"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
consistencyLevels
    ^#('No Consistency' 'Low Consistency' 'High Consistency')
! !

"ASDBase.ic method 0x2002ab44; bytecode file offset 0x934580"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
getOptionsUpdateButtonValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetOptionsUpdateButton.
    recoveredValue1 := (recoveredValue0) getState.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033404; bytecode file offset 0x934580"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
getOptionsIntervalSliderValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetOptionsIntervalSlider.
    recoveredValue1 := (recoveredValue0) currentValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004338c; bytecode file offset 0x9451f8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
widgetTimeBar
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('timeBar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043d3c; bytecode file offset 0x9451f8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
widgetTimeUpdateButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('timeUpdateButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043f7c; bytecode file offset 0x9451f8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
widgetOptionsUpdateButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsUpdateButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004422c; bytecode file offset 0x9451f8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
widgetStatusUpdateIcon
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('statusUpdateIcon').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200477bc; bytecode file offset 0x9451f8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
widgetStatusInitializeIcon
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('statusInitializeIcon').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004785c; bytecode file offset 0x9451f8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
widgetOptionsConsistencyComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsConsistencyComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047b7c; bytecode file offset 0x9451f8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
widgetOptionsIntervalSlider
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsIntervalSlider').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004876c; bytecode file offset 0x9451f8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
widgetOptionsClearButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsClearButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ad70; bytecode file offset 0x957a6c"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
closeButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005f52c; bytecode file offset 0x95c4f4"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
getNvramCockpitConfig
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) title.
    recoveredValue2 := (self) returnWindowConfigurationWithName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006fd78; bytecode file offset 0x96c6ac"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
nvramManager
    | recoveredValue0 |
    recoveredValue0 := nvramManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ff94; bytecode file offset 0x96c850"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
refreshProcessEnabled
    | recoveredValue0 |
    recoveredValue0 := refreshProcessEnabled.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070138; bytecode file offset 0x96cb7c"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
refreshProcess
    | recoveredValue0 |
    recoveredValue0 := refreshProcess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076ab4; bytecode file offset 0x9757c8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
isClosingPossible
    ^true
! !

"ASDBase.ic method 0x2008759c; bytecode file offset 0x983f38"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
optionsClearButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) nvramManager.
    (recoveredValue0) l1NvramClear.
    ^self
! !

"ASDBase.ic method 0x200875bc; bytecode file offset 0x983f38"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
timeUpdateButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) nvramManager.
    (recoveredValue0) l1NvramManualUpdate.
    ^self
! !

"ASDBase.ic method 0x2009fe28; bytecode file offset 0x99c9e0"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
initOptionsUpdateButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) nvramManager.
    recoveredValue1 := (recoveredValue0) l1NvramCheckForAutoUpdate.
    (self) setOptionsUpdateButtonValue: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200af2ac; bytecode file offset 0x9abba8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
optionsIntervalSliderValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) nvramManager.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) topOrLeftValue.
    (recoveredValue0) l1NvramSetUpdateInterval: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b3544; bytecode file offset 0x9afe54"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
preClosingActivities
    | recoveredValue0 |
    (self) terminateRefreshProcess.
    recoveredValue0 := (self) uiController.
    (recoveredValue0) shutDown.
    ^self
! !

"ASDBase.ic method 0x200c6298; bytecode file offset 0x9c2bec"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
nvramManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nvramManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c63bc; bytecode file offset 0x9c2dd0"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
refreshProcessEnabled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    refreshProcessEnabled := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6658; bytecode file offset 0x9c3164"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
refreshProcess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    refreshProcess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca24c; bytecode file offset 0x9c6b0c"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
optionsConsistencyComboBoxValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) nvramManager.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) itemPosition.
    recoveredValue3 := (recoveredValue2) + (-1).
    (recoveredValue0) l1NvramSetConsistencyLevel: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012c860; bytecode file offset 0xa2914c"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
initBar
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetTimeBar.
    recoveredValue1 := CgRGBColor.
    recoveredValue2 := (recoveredValue1) darkGreen.
    (recoveredValue0) foregroundColor: (recoveredValue2).
    recoveredValue3 := (self) widgetTimeBar.
    (recoveredValue3) image: ('0').
    ^self
! !

"ASDBase.ic method 0x2014a134; bytecode file offset 0xa469f4"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
initOptionsConsistencyComboBox
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nvramManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) l1NvramGetConsistencyLevel.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setOptionsConsistencyComboBoxValue: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20170650; bytecode file offset 0xa6cf14"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
terminateRefreshProcess
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) refreshProcessEnabled: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) refreshProcess.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) refreshProcess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) refreshProcess: (recoveredStack1).
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

"ASDBase.ic method 0x201d6928; bytecode file offset 0xad31f8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
initStatusIcons
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) widgetStatusInitializeIcon.
    recoveredValue1 := RBUserInterface.
    recoveredValue2 := (recoveredValue1) resourceManager.
    recoveredValue3 := (recoveredValue2) returnIconWithName: ('GeneralLEDGreenOff').
    (recoveredValue0) labelIcon: (recoveredValue3).
    recoveredValue4 := (self) widgetStatusUpdateIcon.
    recoveredValue5 := RBUserInterface.
    recoveredValue6 := (recoveredValue5) resourceManager.
    recoveredValue7 := (recoveredValue6) returnIconWithName: ('GeneralLEDGreenOff').
    (recoveredValue4) labelIcon: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201f4bb8; bytecode file offset 0xaf1484"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
setOptionsUpdateButtonValue: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'Invalid state for auto update!!'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) setStatusValue: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Call_62156'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsUpdateButton.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fdc94; bytecode file offset 0xafa568"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 |
    (self) iconSmall: ('EditorNVRAMCockpit') large: ('EditorNVRAMCockpit32').
    (self) grayBackground.
    (self) createStatusLineParts: (1) leftRightOffset: (1).
    recoveredValue0 := ('Kk') == ('Call_62156').
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x2020a8ac; bytecode file offset 0xb07184"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('Call_62156').
    (self) initStatusLine.
    (self) initStatusIcons.
    (self) initSlider.
    (self) initBar.
    (self) initOptionsUpdateButton.
    (self) initOptionsConsistencyComboBox.
    (self) initRefreshProcesses.
    ^self
! !

"ASDBase.ic method 0x2020db7c; bytecode file offset 0xb0a440"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
setOptionsIntervalSliderValue: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 30.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'Invalid value for update interval!!'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) setStatusValue: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsIntervalSlider.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) currentValue: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20213e48; bytecode file offset 0xb10718"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
setOptionsConsistencyComboBoxValue: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) consistencyLevels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Invalid value for consistency level!!'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) setStatusValue: (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsConsistencyComboBox.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20224620; bytecode file offset 0xb20ef0"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
initStatusLine
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62156'.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) nvramVariablesAvailable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'No errors'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) setStatusValue: (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'No Volatile Variables available in project'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setStatusValue: (recoveredStack1) text: (recoveredStack2).
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

"ASDBase.ic method 0x2023c510; bytecode file offset 0xb38de0"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
disableWindow
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widgetOptionsClearButton.
    (recoveredValue0) sensitive: (false).
    recoveredValue1 := (self) widgetOptionsConsistencyComboBox.
    (recoveredValue1) sensitive: (false).
    recoveredValue2 := (self) widgetOptionsIntervalSlider.
    (recoveredValue2) sensitive: (false).
    recoveredValue3 := (self) widgetOptionsIntervalSlider.
    (recoveredValue3) updateSlider.
    recoveredValue4 := (self) widgetOptionsUpdateButton.
    (recoveredValue4) sensitive: (false).
    recoveredValue5 := (self) widgetTimeUpdateButton.
    (recoveredValue5) sensitive: (false).
    ^self
! !

"ASDBase.ic method 0x2028bab8; bytecode file offset 0xb883a0"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
update
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) nvramManager.
    recoveredValue1 := (recoveredValue0) l1NvramCheckForInitializedVars.
    (self) setStatusInitializeIconValue: (recoveredValue1).
    recoveredValue2 := (self) nvramManager.
    recoveredValue3 := (recoveredValue2) l1NvramCheckRunningUpdate.
    (self) setStatusUpdateIconValue: (recoveredValue3).
    recoveredValue4 := (self) nvramManager.
    recoveredValue5 := (recoveredValue4) nvramGetUpdateAgeMs.
    (self) setBarValue: (recoveredValue5).
    recoveredValue6 := ('Kk') == ('Call_62156').
    (self) initOptionsUpdateButton.
    (self) initOptionsConsistencyComboBox.
    recoveredValue7 := (self) nvramManager.
    recoveredValue8 := (recoveredValue7) l1NvramGetUpdateInterval.
    (self) setOptionsIntervalSliderValue: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x202953b0; bytecode file offset 0xb91c84"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
resizeSupervision: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) minSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
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

"ASDBase.ic method 0x202a89fc; bytecode file offset 0xba52d8"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
initRefreshProcesses
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) refreshProcessEnabled: (true).
    recoveredValue0 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            (recoveredBlock8Stack1) update.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := Delay.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := 500.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) forMilliseconds: (recoveredBlock8Stack2).
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            (recoveredBlock8Stack1) wait.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) refreshProcessEnabled.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 18] ifFalse: [recoveredBlock8PC := 34].
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue1 := Processor.
    recoveredValue2 := (recoveredValue1) systemBackgroundPriority.
    recoveredValue3 := (recoveredValue0) forkAt: (recoveredValue2).
    (self) refreshProcess: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202cfd68; bytecode file offset 0xbcc66c"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
setStatusUpdateIconValue: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'Invalid state for update running!!'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) setStatusValue: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetStatusUpdateIcon.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := RBUserInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) resourceManager.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'GeneralLEDGreenOn'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) labelIcon: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetStatusUpdateIcon.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := RBUserInterface.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) resourceManager.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'GeneralLEDGreenOff'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) labelIcon: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cfd94; bytecode file offset 0xbcc66c"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
setStatusInitializeIconValue: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'Invalid state for Initialize from NVRAM!!'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) setStatusValue: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetStatusInitializeIcon.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := RBUserInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) resourceManager.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'GeneralLEDGreenOn'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) labelIcon: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetStatusInitializeIcon.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := RBUserInterface.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) resourceManager.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'GeneralLEDGreenOff'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) labelIcon: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ec65c; bytecode file offset 0xbe8f38"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
setStatusValue: recoveredArg1 text: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) statusAt: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := RBUserInterface.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) resourceManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 'GeneralLEDGreenOn'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnIconWithName: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) statusAt: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := RBUserInterface.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) resourceManager.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := 'GeneralLEDRedOn'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnIconWithName: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) terminateRefreshProcess.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) disableWindow.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031dce0; bytecode file offset 0xc1a5c0"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
optionsUpdateButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62156'.
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeUpdateButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOptionsIntervalSlider.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) nvramManager.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) l1NvramEnableAutoUpdate.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeUpdateButton.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOptionsIntervalSlider.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) setSensitive: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) nvramManager.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) l1NvramDisableAutoUpdate.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsIntervalSlider.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) updateSlider.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e5d14; bytecode file offset 0xce25f4"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
initSlider
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 30.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetOptionsIntervalSlider.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetOptionsIntervalSlider.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) activeScale.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) addTickToScale: (recoveredStack3) at: (recoveredStack4) size: (recoveredStack5) label: (recoveredStack6).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 39]] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 30.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 recoveredBlock46Value5 recoveredBlock46Value6 |
    recoveredBlock46Value0 := (self) widgetOptionsIntervalSlider.
    recoveredBlock46Value1 := (self) widgetOptionsIntervalSlider.
    recoveredBlock46Value2 := (recoveredBlock46Value1) activeScale.
    recoveredBlock46Value3 := recoveredBlock46Arg1.
    recoveredBlock46Value4 := recoveredBlock46Arg1.
    recoveredBlock46Value5 := (recoveredBlock46Value4) asString.
    recoveredBlock46Value6 := (recoveredBlock46Value0) addTickToScale: (recoveredBlock46Value2) at: (recoveredBlock46Value3) size: (4) label: (recoveredBlock46Value5).
    recoveredBlock46Value6
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsIntervalSlider.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 50.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsIntervalSlider.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) snapToResolution: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) nvramManager.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) l1NvramGetUpdateInterval.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) setOptionsIntervalSliderValue: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205422b4; bytecode file offset 0xe3ebcc"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
setBarValue: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62156'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 4294967295.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) red.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) white.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'Not updated!!'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) fractionComplete: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 1000.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 30.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) red.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) white.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 'Invalid Value!!'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) fractionComplete: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := 'Invalid value for time since last update!!'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) setStatusValue: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) darkGreen.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) white.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) fractionComplete: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 213].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'Call_58246'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) isERCOSRunning.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) red.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) white.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) foregroundColor.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) red.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) yellow.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) black.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTimeBar.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) fractionComplete: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206a4d84; bytecode file offset 0xfa1858"
!ASDNvramCockpitWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'topLevelShell'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block2812eddcArg1 | 
    | block2812eddcValue0 block2812eddcValue1 block2812eddcValue2 block2812eddcValue3 |
    block2812eddcValue0 := block2812eddcArg1.
    block2812eddcValue1 := block2812eddcValue0.
    (block2812eddcValue1) title: ('NVRAM Cockpit').
    block2812eddcValue2 := block2812eddcValue0.
    (block2812eddcValue2) height: (290).
    block2812eddcValue3 := (block2812eddcValue0) width: (480).
    block2812eddcValue3
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'topLevelShell'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'optionFrame'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [:block2812ee00Arg1 | 
    | block2812ee00Value0 block2812ee00Value1 |
    block2812ee00Value0 := block2812ee00Arg1.
    block2812ee00Value1 := block2812ee00Value0.
    (block2812ee00Value1) labelString: ('Options').
    block2812ee00Value0
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 'optionsFrame'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'optionsForm'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 'optionsForm'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := 'optionsIntervalLabel'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := [:block2812ee24Arg1 | 
    | block2812ee24Value0 block2812ee24Value1 block2812ee24Value2 block2812ee24Value3 block2812ee24Value4 block2812ee24Value5 |
    block2812ee24Value0 := block2812ee24Arg1.
    block2812ee24Value1 := block2812ee24Value0.
    block2812ee24Value2 := XmALIGNMENTBEGINNING.
    (block2812ee24Value1) alignment: (block2812ee24Value2).
    block2812ee24Value3 := block2812ee24Value0.
    (block2812ee24Value3) width: (120).
    block2812ee24Value4 := block2812ee24Value0.
    (block2812ee24Value4) height: (25).
    block2812ee24Value5 := (block2812ee24Value0) labelString: ('Update Interval [sec]:').
    block2812ee24Value5
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := 'optionsIntervalLabel'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := 'optionsConsistencyLabel'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := [:block2812ee48Arg1 | 
    | block2812ee48Value0 block2812ee48Value1 block2812ee48Value2 block2812ee48Value3 block2812ee48Value4 block2812ee48Value5 |
    block2812ee48Value0 := block2812ee48Arg1.
    block2812ee48Value1 := block2812ee48Value0.
    block2812ee48Value2 := XmALIGNMENTBEGINNING.
    (block2812ee48Value1) alignment: (block2812ee48Value2).
    block2812ee48Value3 := block2812ee48Value0.
    (block2812ee48Value3) width: (120).
    block2812ee48Value4 := block2812ee48Value0.
    (block2812ee48Value4) height: (25).
    block2812ee48Value5 := (block2812ee48Value0) labelString: ('Consistency level:').
    block2812ee48Value5
].
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := 'optionsConsistencyLabel'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := 'optionsUpdateButton'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := [:block2812ee6cArg1 | 
    | block2812ee6cValue0 block2812ee6cValue1 block2812ee6cValue2 block2812ee6cValue3 block2812ee6cValue4 |
    block2812ee6cValue0 := block2812ee6cArg1.
    block2812ee6cValue1 := block2812ee6cValue0.
    (block2812ee6cValue1) indicatorOn: (false).
    block2812ee6cValue2 := block2812ee6cValue0.
    (block2812ee6cValue2) labelString: ('&Auto Update').
    block2812ee6cValue3 := block2812ee6cValue0.
    (block2812ee6cValue3) height: (25).
    block2812ee6cValue4 := (block2812ee6cValue0) width: (100).
    block2812ee6cValue4
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := 'optionsUpdateButton'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := 'optionsClearButton'.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := [:block2812ee90Arg1 | 
    | block2812ee90Value0 block2812ee90Value1 block2812ee90Value2 block2812ee90Value3 |
    block2812ee90Value0 := block2812ee90Arg1.
    block2812ee90Value1 := block2812ee90Value0.
    (block2812ee90Value1) labelString: ('C&lear NVRAM').
    block2812ee90Value2 := block2812ee90Value0.
    (block2812ee90Value2) height: (25).
    block2812ee90Value3 := (block2812ee90Value0) width: (100).
    block2812ee90Value3
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := 'optionsClearButton'.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := 'optionsIntervalSlider'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := [:block2812eeb4Arg1 | 
    | block2812eeb4Value0 block2812eeb4Value1 block2812eeb4Value2 block2812eeb4Value3 block2812eeb4Value4 block2812eeb4Value5 block2812eeb4Value6 block2812eeb4Value7 block2812eeb4Value8 block2812eeb4Value9 block2812eeb4Value10 block2812eeb4Value11 |
    block2812eeb4Value0 := block2812eeb4Arg1.
    block2812eeb4Value1 := block2812eeb4Value0.
    (block2812eeb4Value1) topOrLeftScaleMax: (30).
    block2812eeb4Value2 := block2812eeb4Value0.
    (block2812eeb4Value2) topOrLeftScaleShaftIncrement: (1).
    block2812eeb4Value3 := block2812eeb4Value0.
    (block2812eeb4Value3) topOrLeftScaleResolution: (1).
    block2812eeb4Value4 := block2812eeb4Value0.
    (block2812eeb4Value4) horizontalMargin: (2).
    block2812eeb4Value5 := block2812eeb4Value0.
    (block2812eeb4Value5) thickness: (10).
    block2812eeb4Value6 := block2812eeb4Value0.
    block2812eeb4Value7 := XmTOPORLEFT.
    (block2812eeb4Value6) activeScale: (block2812eeb4Value7).
    block2812eeb4Value8 := block2812eeb4Value0.
    (block2812eeb4Value8) ribbonStrip: (true).
    block2812eeb4Value9 := block2812eeb4Value0.
    (block2812eeb4Value9) height: (50).
    block2812eeb4Value10 := block2812eeb4Value0.
    (block2812eeb4Value10) width: (150).
    block2812eeb4Value11 := (block2812eeb4Value0) verticalMargin: (2).
    block2812eeb4Value11
].
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSlider: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := 'optionsIntervalSlider'.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := 'optionsConsistencyComboBox'.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack3 := [:recoveredBlock446Arg1 | 
    | recoveredBlock446Value0 recoveredBlock446Value1 recoveredBlock446Value2 recoveredBlock446Value3 recoveredBlock446Value4 |
    recoveredBlock446Value0 := recoveredBlock446Arg1.
    recoveredBlock446Value1 := recoveredBlock446Value0.
    recoveredBlock446Value2 := (self) consistencyLevels.
    (recoveredBlock446Value1) items: (recoveredBlock446Value2).
    recoveredBlock446Value3 := recoveredBlock446Value0.
    (recoveredBlock446Value3) height: (25).
    recoveredBlock446Value4 := (recoveredBlock446Value0) width: (150).
    recoveredBlock446Value4
].
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := 'optionsConsistencyComboBox'.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack2 := 'timeFrame'.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack3 := [:block2812eed8Arg1 | 
    | block2812eed8Value0 block2812eed8Value1 |
    block2812eed8Value0 := block2812eed8Arg1.
    block2812eed8Value1 := block2812eed8Value0.
    (block2812eed8Value1) labelString: ('Time since last Update [sec]').
    block2812eed8Value0
].
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := 'timeFrame'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := 'timeForm'.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := 'timeForm'.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := 'timeBar'.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack3 := [:block2812eefcArg1 | 
    | block2812eefcValue0 block2812eefcValue1 block2812eefcValue2 |
    block2812eefcValue0 := block2812eefcArg1.
    block2812eefcValue1 := block2812eefcValue0.
    (block2812eefcValue1) width: (150).
    block2812eefcValue2 := (block2812eefcValue0) height: (25).
    block2812eefcValue2
].
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := (recoveredStack1) createProgressBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack2 := 'timeBar'.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack3 := recoveredLocal9.
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
            recoveredStack2 := 'timeUpdateButton'.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack3 := [:block2812ef20Arg1 | 
    | block2812ef20Value0 block2812ef20Value1 block2812ef20Value2 block2812ef20Value3 |
    block2812ef20Value0 := block2812ef20Arg1.
    block2812ef20Value1 := block2812ef20Value0.
    (block2812ef20Value1) labelString: ('&Update Now').
    block2812ef20Value2 := block2812ef20Value0.
    (block2812ef20Value2) height: (25).
    block2812ef20Value3 := (block2812ef20Value0) width: (100).
    block2812ef20Value3
].
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack2 := 'timeUpdateButton'.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack2 := 'statusFrame'.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack3 := [:block2812ef44Arg1 | 
    | block2812ef44Value0 block2812ef44Value1 |
    block2812ef44Value0 := block2812ef44Arg1.
    block2812ef44Value1 := block2812ef44Value0.
    (block2812ef44Value1) labelString: ('Status').
    block2812ef44Value0
].
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack2 := 'statusFrame'.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack2 := 'statusForm'.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack2 := 'statusForm'.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack2 := 'statusInitializeLabel'.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack3 := [:block2812ef68Arg1 | 
    | block2812ef68Value0 block2812ef68Value1 block2812ef68Value2 block2812ef68Value3 block2812ef68Value4 block2812ef68Value5 |
    block2812ef68Value0 := block2812ef68Arg1.
    block2812ef68Value1 := block2812ef68Value0.
    block2812ef68Value2 := XmALIGNMENTBEGINNING.
    (block2812ef68Value1) alignment: (block2812ef68Value2).
    block2812ef68Value3 := block2812ef68Value0.
    (block2812ef68Value3) width: (300).
    block2812ef68Value4 := block2812ef68Value0.
    (block2812ef68Value4) height: (25).
    block2812ef68Value5 := (block2812ef68Value0) labelString: ('Non Volatile Variables initialized from NVRAM:').
    block2812ef68Value5
].
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack2 := 'statusInitializeLabel'.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack2 := 'statusUpdateLabel'.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack3 := [:block2812ef8cArg1 | 
    | block2812ef8cValue0 block2812ef8cValue1 block2812ef8cValue2 block2812ef8cValue3 block2812ef8cValue4 block2812ef8cValue5 |
    block2812ef8cValue0 := block2812ef8cArg1.
    block2812ef8cValue1 := block2812ef8cValue0.
    block2812ef8cValue2 := XmALIGNMENTBEGINNING.
    (block2812ef8cValue1) alignment: (block2812ef8cValue2).
    block2812ef8cValue3 := block2812ef8cValue0.
    (block2812ef8cValue3) width: (300).
    block2812ef8cValue4 := block2812ef8cValue0.
    (block2812ef8cValue4) height: (25).
    block2812ef8cValue5 := (block2812ef8cValue0) labelString: ('NVRAM Update running:').
    block2812ef8cValue5
].
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack2 := 'statusUpdateLabel'.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack2 := 'statusInitializeIcon'.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack3 := [:block2812efb0Arg1 | 
    | block2812efb0Value0 block2812efb0Value1 block2812efb0Value2 block2812efb0Value3 block2812efb0Value4 block2812efb0Value5 |
    block2812efb0Value0 := block2812efb0Arg1.
    block2812efb0Value1 := block2812efb0Value0.
    (block2812efb0Value1) height: (25).
    block2812efb0Value2 := block2812efb0Value0.
    block2812efb0Value3 := XmICON.
    (block2812efb0Value2) labelType: (block2812efb0Value3).
    block2812efb0Value4 := XmALIGNMENTEND.
    block2812efb0Value5 := (block2812efb0Value0) alignment: (block2812efb0Value4).
    block2812efb0Value5
].
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack2 := 'statusInitializeIcon'.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack2 := 'statusUpdateIcon'.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack3 := [:block2812efd4Arg1 | 
    | block2812efd4Value0 block2812efd4Value1 block2812efd4Value2 block2812efd4Value3 block2812efd4Value4 block2812efd4Value5 |
    block2812efd4Value0 := block2812efd4Arg1.
    block2812efd4Value1 := block2812efd4Value0.
    (block2812efd4Value1) height: (25).
    block2812efd4Value2 := block2812efd4Value0.
    block2812efd4Value3 := XmICON.
    (block2812efd4Value2) labelType: (block2812efd4Value3).
    block2812efd4Value4 := XmALIGNMENTEND.
    block2812efd4Value5 := (block2812efd4Value0) alignment: (block2812efd4Value4).
    block2812efd4Value5
].
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack2 := 'statusUpdateIcon'.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack2 := [:block2812eff8Arg1 | 
    | block2812eff8Value0 block2812eff8Value1 block2812eff8Value2 block2812eff8Value3 block2812eff8Value4 block2812eff8Value5 block2812eff8Value6 block2812eff8Value7 block2812eff8Value8 block2812eff8Value9 |
    block2812eff8Value0 := block2812eff8Arg1.
    block2812eff8Value1 := block2812eff8Value0.
    block2812eff8Value2 := XmATTACHFORM.
    (block2812eff8Value1) topAttachment: (block2812eff8Value2).
    block2812eff8Value3 := block2812eff8Value0.
    (block2812eff8Value3) topOffset: (5).
    block2812eff8Value4 := block2812eff8Value0.
    block2812eff8Value5 := XmATTACHFORM.
    (block2812eff8Value4) leftAttachment: (block2812eff8Value5).
    block2812eff8Value6 := block2812eff8Value0.
    (block2812eff8Value6) leftOffset: (5).
    block2812eff8Value7 := block2812eff8Value0.
    block2812eff8Value8 := XmATTACHFORM.
    (block2812eff8Value7) rightAttachment: (block2812eff8Value8).
    block2812eff8Value9 := (block2812eff8Value0) rightOffset: (5).
    block2812eff8Value9
].
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack2 := [:block2812f01cArg1 | 
    | block2812f01cValue0 block2812f01cValue1 block2812f01cValue2 block2812f01cValue3 block2812f01cValue4 block2812f01cValue5 block2812f01cValue6 |
    block2812f01cValue0 := block2812f01cArg1.
    block2812f01cValue1 := block2812f01cValue0.
    block2812f01cValue2 := XmATTACHFORM.
    (block2812f01cValue1) topAttachment: (block2812f01cValue2).
    block2812f01cValue3 := block2812f01cValue0.
    (block2812f01cValue3) topOffset: (18).
    block2812f01cValue4 := block2812f01cValue0.
    block2812f01cValue5 := XmATTACHFORM.
    (block2812f01cValue4) leftAttachment: (block2812f01cValue5).
    block2812f01cValue6 := (block2812f01cValue0) leftOffset: (5).
    block2812f01cValue6
].
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack2 := [:recoveredBlock1062Arg1 | 
    | recoveredBlock1062Value0 recoveredBlock1062Value1 recoveredBlock1062Value2 recoveredBlock1062Value3 recoveredBlock1062Value4 recoveredBlock1062Value5 recoveredBlock1062Value6 recoveredBlock1062Value7 recoveredBlock1062Value8 recoveredBlock1062Value9 recoveredBlock1062Value10 recoveredBlock1062Value11 recoveredBlock1062Value12 recoveredBlock1062Value13 |
    recoveredBlock1062Value0 := recoveredBlock1062Arg1.
    recoveredBlock1062Value1 := recoveredBlock1062Value0.
    recoveredBlock1062Value2 := XmATTACHFORM.
    (recoveredBlock1062Value1) topAttachment: (recoveredBlock1062Value2).
    recoveredBlock1062Value3 := recoveredBlock1062Value0.
    (recoveredBlock1062Value3) topOffset: (0).
    recoveredBlock1062Value4 := recoveredBlock1062Value0.
    recoveredBlock1062Value5 := XmATTACHWIDGET.
    (recoveredBlock1062Value4) leftAttachment: (recoveredBlock1062Value5).
    recoveredBlock1062Value6 := recoveredBlock1062Value0.
    recoveredBlock1062Value7 := recoveredLocal17.
    (recoveredBlock1062Value6) leftWidget: (recoveredBlock1062Value7).
    recoveredBlock1062Value8 := recoveredBlock1062Value0.
    (recoveredBlock1062Value8) leftOffset: (5).
    recoveredBlock1062Value9 := recoveredBlock1062Value0.
    recoveredBlock1062Value10 := XmATTACHWIDGET.
    (recoveredBlock1062Value9) rightAttachment: (recoveredBlock1062Value10).
    recoveredBlock1062Value11 := recoveredBlock1062Value0.
    recoveredBlock1062Value12 := recoveredLocal13.
    (recoveredBlock1062Value11) rightWidget: (recoveredBlock1062Value12).
    recoveredBlock1062Value13 := (recoveredBlock1062Value0) rightOffset: (10).
    recoveredBlock1062Value13
].
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            recoveredStack2 := [:block2812f040Arg1 | 
    | block2812f040Value0 block2812f040Value1 block2812f040Value2 block2812f040Value3 block2812f040Value4 block2812f040Value5 block2812f040Value6 |
    block2812f040Value0 := block2812f040Arg1.
    block2812f040Value1 := block2812f040Value0.
    block2812f040Value2 := XmATTACHFORM.
    (block2812f040Value1) topAttachment: (block2812f040Value2).
    block2812f040Value3 := block2812f040Value0.
    (block2812f040Value3) topOffset: (16).
    block2812f040Value4 := block2812f040Value0.
    block2812f040Value5 := XmATTACHFORM.
    (block2812f040Value4) rightAttachment: (block2812f040Value5).
    block2812f040Value6 := (block2812f040Value0) rightOffset: (5).
    block2812f040Value6
].
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack2 := [:recoveredBlock1186Arg1 | 
    | recoveredBlock1186Value0 recoveredBlock1186Value1 recoveredBlock1186Value2 recoveredBlock1186Value3 recoveredBlock1186Value4 recoveredBlock1186Value5 recoveredBlock1186Value6 recoveredBlock1186Value7 recoveredBlock1186Value8 |
    recoveredBlock1186Value0 := recoveredBlock1186Arg1.
    recoveredBlock1186Value1 := recoveredBlock1186Value0.
    recoveredBlock1186Value2 := XmATTACHWIDGET.
    (recoveredBlock1186Value1) topAttachment: (recoveredBlock1186Value2).
    recoveredBlock1186Value3 := recoveredBlock1186Value0.
    recoveredBlock1186Value4 := recoveredLocal17.
    (recoveredBlock1186Value3) topWidget: (recoveredBlock1186Value4).
    recoveredBlock1186Value5 := recoveredBlock1186Value0.
    (recoveredBlock1186Value5) topOffset: (10).
    recoveredBlock1186Value6 := recoveredBlock1186Value0.
    recoveredBlock1186Value7 := XmATTACHFORM.
    (recoveredBlock1186Value6) leftAttachment: (recoveredBlock1186Value7).
    recoveredBlock1186Value8 := (recoveredBlock1186Value0) leftOffset: (5).
    recoveredBlock1186Value8
].
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack2 := [:recoveredBlock1240Arg1 | 
    | recoveredBlock1240Value0 recoveredBlock1240Value1 recoveredBlock1240Value2 recoveredBlock1240Value3 recoveredBlock1240Value4 recoveredBlock1240Value5 recoveredBlock1240Value6 recoveredBlock1240Value7 recoveredBlock1240Value8 recoveredBlock1240Value9 recoveredBlock1240Value10 recoveredBlock1240Value11 recoveredBlock1240Value12 recoveredBlock1240Value13 recoveredBlock1240Value14 recoveredBlock1240Value15 |
    recoveredBlock1240Value0 := recoveredBlock1240Arg1.
    recoveredBlock1240Value1 := recoveredBlock1240Value0.
    recoveredBlock1240Value2 := XmATTACHWIDGET.
    (recoveredBlock1240Value1) topAttachment: (recoveredBlock1240Value2).
    recoveredBlock1240Value3 := recoveredBlock1240Value0.
    recoveredBlock1240Value4 := recoveredLocal15.
    (recoveredBlock1240Value3) topWidget: (recoveredBlock1240Value4).
    recoveredBlock1240Value5 := recoveredBlock1240Value0.
    (recoveredBlock1240Value5) topOffset: (0).
    recoveredBlock1240Value6 := recoveredBlock1240Value0.
    recoveredBlock1240Value7 := XmATTACHWIDGET.
    (recoveredBlock1240Value6) leftAttachment: (recoveredBlock1240Value7).
    recoveredBlock1240Value8 := recoveredBlock1240Value0.
    recoveredBlock1240Value9 := recoveredLocal16.
    (recoveredBlock1240Value8) leftWidget: (recoveredBlock1240Value9).
    recoveredBlock1240Value10 := recoveredBlock1240Value0.
    (recoveredBlock1240Value10) leftOffset: (5).
    recoveredBlock1240Value11 := recoveredBlock1240Value0.
    recoveredBlock1240Value12 := XmATTACHWIDGET.
    (recoveredBlock1240Value11) rightAttachment: (recoveredBlock1240Value12).
    recoveredBlock1240Value13 := recoveredBlock1240Value0.
    recoveredBlock1240Value14 := recoveredLocal12.
    (recoveredBlock1240Value13) rightWidget: (recoveredBlock1240Value14).
    recoveredBlock1240Value15 := (recoveredBlock1240Value0) rightOffset: (10).
    recoveredBlock1240Value15
].
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack2 := [:recoveredBlock1324Arg1 | 
    | recoveredBlock1324Value0 recoveredBlock1324Value1 recoveredBlock1324Value2 recoveredBlock1324Value3 recoveredBlock1324Value4 recoveredBlock1324Value5 recoveredBlock1324Value6 recoveredBlock1324Value7 recoveredBlock1324Value8 |
    recoveredBlock1324Value0 := recoveredBlock1324Arg1.
    recoveredBlock1324Value1 := recoveredBlock1324Value0.
    recoveredBlock1324Value2 := XmATTACHWIDGET.
    (recoveredBlock1324Value1) topAttachment: (recoveredBlock1324Value2).
    recoveredBlock1324Value3 := recoveredBlock1324Value0.
    recoveredBlock1324Value4 := recoveredLocal13.
    (recoveredBlock1324Value3) topWidget: (recoveredBlock1324Value4).
    recoveredBlock1324Value5 := recoveredBlock1324Value0.
    (recoveredBlock1324Value5) topOffset: (7).
    recoveredBlock1324Value6 := recoveredBlock1324Value0.
    recoveredBlock1324Value7 := XmATTACHFORM.
    (recoveredBlock1324Value6) rightAttachment: (recoveredBlock1324Value7).
    recoveredBlock1324Value8 := (recoveredBlock1324Value0) rightOffset: (5).
    recoveredBlock1324Value8
].
            recoveredPC := 1370.
        ].
        recoveredStep = 1370 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1375.
        ].
        recoveredStep = 1375 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack2 := [:recoveredBlock1378Arg1 | 
    | recoveredBlock1378Value0 recoveredBlock1378Value1 recoveredBlock1378Value2 recoveredBlock1378Value3 recoveredBlock1378Value4 recoveredBlock1378Value5 recoveredBlock1378Value6 recoveredBlock1378Value7 recoveredBlock1378Value8 recoveredBlock1378Value9 recoveredBlock1378Value10 recoveredBlock1378Value11 |
    recoveredBlock1378Value0 := recoveredBlock1378Arg1.
    recoveredBlock1378Value1 := recoveredBlock1378Value0.
    recoveredBlock1378Value2 := XmATTACHWIDGET.
    (recoveredBlock1378Value1) topAttachment: (recoveredBlock1378Value2).
    recoveredBlock1378Value3 := recoveredBlock1378Value0.
    recoveredBlock1378Value4 := recoveredLocal19.
    (recoveredBlock1378Value3) topWidget: (recoveredBlock1378Value4).
    recoveredBlock1378Value5 := recoveredBlock1378Value0.
    (recoveredBlock1378Value5) topOffset: (5).
    recoveredBlock1378Value6 := recoveredBlock1378Value0.
    recoveredBlock1378Value7 := XmATTACHFORM.
    (recoveredBlock1378Value6) leftAttachment: (recoveredBlock1378Value7).
    recoveredBlock1378Value8 := recoveredBlock1378Value0.
    (recoveredBlock1378Value8) leftOffset: (5).
    recoveredBlock1378Value9 := recoveredBlock1378Value0.
    recoveredBlock1378Value10 := XmATTACHFORM.
    (recoveredBlock1378Value9) rightAttachment: (recoveredBlock1378Value10).
    recoveredBlock1378Value11 := (recoveredBlock1378Value0) rightOffset: (5).
    recoveredBlock1378Value11
].
            recoveredPC := 1438.
        ].
        recoveredStep = 1438 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1443.
        ].
        recoveredStep = 1443 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            recoveredStack2 := [:recoveredBlock1446Arg1 | 
    | recoveredBlock1446Value0 recoveredBlock1446Value1 recoveredBlock1446Value2 recoveredBlock1446Value3 recoveredBlock1446Value4 recoveredBlock1446Value5 recoveredBlock1446Value6 recoveredBlock1446Value7 recoveredBlock1446Value8 recoveredBlock1446Value9 recoveredBlock1446Value10 recoveredBlock1446Value11 recoveredBlock1446Value12 recoveredBlock1446Value13 recoveredBlock1446Value14 |
    recoveredBlock1446Value0 := recoveredBlock1446Arg1.
    recoveredBlock1446Value1 := recoveredBlock1446Value0.
    recoveredBlock1446Value2 := XmATTACHFORM.
    (recoveredBlock1446Value1) topAttachment: (recoveredBlock1446Value2).
    recoveredBlock1446Value3 := recoveredBlock1446Value0.
    (recoveredBlock1446Value3) topOffset: (5).
    recoveredBlock1446Value4 := recoveredBlock1446Value0.
    recoveredBlock1446Value5 := XmATTACHFORM.
    (recoveredBlock1446Value4) bottomAttachment: (recoveredBlock1446Value5).
    recoveredBlock1446Value6 := recoveredBlock1446Value0.
    (recoveredBlock1446Value6) bottomOffset: (5).
    recoveredBlock1446Value7 := recoveredBlock1446Value0.
    recoveredBlock1446Value8 := XmATTACHFORM.
    (recoveredBlock1446Value7) leftAttachment: (recoveredBlock1446Value8).
    recoveredBlock1446Value9 := recoveredBlock1446Value0.
    (recoveredBlock1446Value9) leftOffset: (5).
    recoveredBlock1446Value10 := recoveredBlock1446Value0.
    recoveredBlock1446Value11 := XmATTACHWIDGET.
    (recoveredBlock1446Value10) rightAttachment: (recoveredBlock1446Value11).
    recoveredBlock1446Value12 := recoveredBlock1446Value0.
    recoveredBlock1446Value13 := recoveredLocal8.
    (recoveredBlock1446Value12) rightWidget: (recoveredBlock1446Value13).
    recoveredBlock1446Value14 := (recoveredBlock1446Value0) rightOffset: (10).
    recoveredBlock1446Value14
].
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1528.
        ].
        recoveredStep = 1528 ifTrue: [
            recoveredStack2 := [:block2812f064Arg1 | 
    | block2812f064Value0 block2812f064Value1 block2812f064Value2 block2812f064Value3 block2812f064Value4 block2812f064Value5 block2812f064Value6 block2812f064Value7 block2812f064Value8 block2812f064Value9 |
    block2812f064Value0 := block2812f064Arg1.
    block2812f064Value1 := block2812f064Value0.
    block2812f064Value2 := XmATTACHFORM.
    (block2812f064Value1) topAttachment: (block2812f064Value2).
    block2812f064Value3 := block2812f064Value0.
    (block2812f064Value3) topOffset: (5).
    block2812f064Value4 := block2812f064Value0.
    block2812f064Value5 := XmATTACHFORM.
    (block2812f064Value4) bottomAttachment: (block2812f064Value5).
    block2812f064Value6 := block2812f064Value0.
    (block2812f064Value6) bottomOffset: (5).
    block2812f064Value7 := block2812f064Value0.
    block2812f064Value8 := XmATTACHFORM.
    (block2812f064Value7) rightAttachment: (block2812f064Value8).
    block2812f064Value9 := (block2812f064Value0) rightOffset: (5).
    block2812f064Value9
].
            recoveredPC := 1532.
        ].
        recoveredStep = 1532 ifTrue: [
            recoveredPC := 1582.
        ].
        recoveredStep = 1582 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1587.
        ].
        recoveredStep = 1587 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            recoveredStack2 := [:recoveredBlock1590Arg1 | 
    | recoveredBlock1590Value0 recoveredBlock1590Value1 recoveredBlock1590Value2 recoveredBlock1590Value3 recoveredBlock1590Value4 recoveredBlock1590Value5 recoveredBlock1590Value6 recoveredBlock1590Value7 recoveredBlock1590Value8 recoveredBlock1590Value9 recoveredBlock1590Value10 recoveredBlock1590Value11 |
    recoveredBlock1590Value0 := recoveredBlock1590Arg1.
    recoveredBlock1590Value1 := recoveredBlock1590Value0.
    recoveredBlock1590Value2 := XmATTACHWIDGET.
    (recoveredBlock1590Value1) topAttachment: (recoveredBlock1590Value2).
    recoveredBlock1590Value3 := recoveredBlock1590Value0.
    recoveredBlock1590Value4 := recoveredLocal11.
    (recoveredBlock1590Value3) topWidget: (recoveredBlock1590Value4).
    recoveredBlock1590Value5 := recoveredBlock1590Value0.
    (recoveredBlock1590Value5) topOffset: (5).
    recoveredBlock1590Value6 := recoveredBlock1590Value0.
    recoveredBlock1590Value7 := XmATTACHFORM.
    (recoveredBlock1590Value6) leftAttachment: (recoveredBlock1590Value7).
    recoveredBlock1590Value8 := recoveredBlock1590Value0.
    (recoveredBlock1590Value8) leftOffset: (5).
    recoveredBlock1590Value9 := recoveredBlock1590Value0.
    recoveredBlock1590Value10 := XmATTACHFORM.
    (recoveredBlock1590Value9) rightAttachment: (recoveredBlock1590Value10).
    recoveredBlock1590Value11 := (recoveredBlock1590Value0) rightOffset: (5).
    recoveredBlock1590Value11
].
            recoveredPC := 1650.
        ].
        recoveredStep = 1650 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1655.
        ].
        recoveredStep = 1655 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1658.
        ].
        recoveredStep = 1658 ifTrue: [
            recoveredStack2 := [:block2812f088Arg1 | 
    | block2812f088Value0 block2812f088Value1 block2812f088Value2 block2812f088Value3 block2812f088Value4 block2812f088Value5 block2812f088Value6 |
    block2812f088Value0 := block2812f088Arg1.
    block2812f088Value1 := block2812f088Value0.
    block2812f088Value2 := XmATTACHFORM.
    (block2812f088Value1) topAttachment: (block2812f088Value2).
    block2812f088Value3 := block2812f088Value0.
    (block2812f088Value3) topOffset: (5).
    block2812f088Value4 := block2812f088Value0.
    block2812f088Value5 := XmATTACHFORM.
    (block2812f088Value4) leftAttachment: (block2812f088Value5).
    block2812f088Value6 := (block2812f088Value0) leftOffset: (5).
    block2812f088Value6
].
            recoveredPC := 1662.
        ].
        recoveredStep = 1662 ifTrue: [
            recoveredPC := 1698.
        ].
        recoveredStep = 1698 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1703.
        ].
        recoveredStep = 1703 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1706.
        ].
        recoveredStep = 1706 ifTrue: [
            recoveredStack2 := [:block2812f0acArg1 | 
    | block2812f0acValue0 block2812f0acValue1 block2812f0acValue2 block2812f0acValue3 block2812f0acValue4 block2812f0acValue5 block2812f0acValue6 |
    block2812f0acValue0 := block2812f0acArg1.
    block2812f0acValue1 := block2812f0acValue0.
    block2812f0acValue2 := XmATTACHFORM.
    (block2812f0acValue1) topAttachment: (block2812f0acValue2).
    block2812f0acValue3 := block2812f0acValue0.
    (block2812f0acValue3) topOffset: (5).
    block2812f0acValue4 := block2812f0acValue0.
    block2812f0acValue5 := XmATTACHFORM.
    (block2812f0acValue4) rightAttachment: (block2812f0acValue5).
    block2812f0acValue6 := (block2812f0acValue0) rightOffset: (5).
    block2812f0acValue6
].
            recoveredPC := 1710.
        ].
        recoveredStep = 1710 ifTrue: [
            recoveredPC := 1746.
        ].
        recoveredStep = 1746 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1751.
        ].
        recoveredStep = 1751 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1754.
        ].
        recoveredStep = 1754 ifTrue: [
            recoveredStack2 := [:recoveredBlock1754Arg1 | 
    | recoveredBlock1754Value0 recoveredBlock1754Value1 recoveredBlock1754Value2 recoveredBlock1754Value3 recoveredBlock1754Value4 recoveredBlock1754Value5 recoveredBlock1754Value6 recoveredBlock1754Value7 recoveredBlock1754Value8 recoveredBlock1754Value9 recoveredBlock1754Value10 recoveredBlock1754Value11 |
    recoveredBlock1754Value0 := recoveredBlock1754Arg1.
    recoveredBlock1754Value1 := recoveredBlock1754Value0.
    recoveredBlock1754Value2 := XmATTACHWIDGET.
    (recoveredBlock1754Value1) topAttachment: (recoveredBlock1754Value2).
    recoveredBlock1754Value3 := recoveredBlock1754Value0.
    recoveredBlock1754Value4 := recoveredLocal5.
    (recoveredBlock1754Value3) topWidget: (recoveredBlock1754Value4).
    recoveredBlock1754Value5 := recoveredBlock1754Value0.
    (recoveredBlock1754Value5) topOffset: (5).
    recoveredBlock1754Value6 := recoveredBlock1754Value0.
    recoveredBlock1754Value7 := XmATTACHFORM.
    (recoveredBlock1754Value6) bottomAttachment: (recoveredBlock1754Value7).
    recoveredBlock1754Value8 := recoveredBlock1754Value0.
    (recoveredBlock1754Value8) bottomOffset: (5).
    recoveredBlock1754Value9 := recoveredBlock1754Value0.
    recoveredBlock1754Value10 := XmATTACHFORM.
    (recoveredBlock1754Value9) leftAttachment: (recoveredBlock1754Value10).
    recoveredBlock1754Value11 := (recoveredBlock1754Value0) leftOffset: (5).
    recoveredBlock1754Value11
].
            recoveredPC := 1814.
        ].
        recoveredStep = 1814 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1819.
        ].
        recoveredStep = 1819 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1822.
        ].
        recoveredStep = 1822 ifTrue: [
            recoveredStack2 := [:recoveredBlock1822Arg1 | 
    | recoveredBlock1822Value0 recoveredBlock1822Value1 recoveredBlock1822Value2 recoveredBlock1822Value3 recoveredBlock1822Value4 recoveredBlock1822Value5 recoveredBlock1822Value6 recoveredBlock1822Value7 recoveredBlock1822Value8 recoveredBlock1822Value9 recoveredBlock1822Value10 recoveredBlock1822Value11 |
    recoveredBlock1822Value0 := recoveredBlock1822Arg1.
    recoveredBlock1822Value1 := recoveredBlock1822Value0.
    recoveredBlock1822Value2 := XmATTACHWIDGET.
    (recoveredBlock1822Value1) topAttachment: (recoveredBlock1822Value2).
    recoveredBlock1822Value3 := recoveredBlock1822Value0.
    recoveredBlock1822Value4 := recoveredLocal3.
    (recoveredBlock1822Value3) topWidget: (recoveredBlock1822Value4).
    recoveredBlock1822Value5 := recoveredBlock1822Value0.
    (recoveredBlock1822Value5) topOffset: (5).
    recoveredBlock1822Value6 := recoveredBlock1822Value0.
    recoveredBlock1822Value7 := XmATTACHFORM.
    (recoveredBlock1822Value6) bottomAttachment: (recoveredBlock1822Value7).
    recoveredBlock1822Value8 := recoveredBlock1822Value0.
    (recoveredBlock1822Value8) bottomOffset: (5).
    recoveredBlock1822Value9 := recoveredBlock1822Value0.
    recoveredBlock1822Value10 := XmATTACHFORM.
    (recoveredBlock1822Value9) rightAttachment: (recoveredBlock1822Value10).
    recoveredBlock1822Value11 := (recoveredBlock1822Value0) rightOffset: (5).
    recoveredBlock1822Value11
].
            recoveredPC := 1882.
        ].
        recoveredStep = 1882 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1887.
        ].
        recoveredStep = 1887 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1890.
        ].
        recoveredStep = 1890 ifTrue: [
            recoveredStack2 := [:recoveredBlock1890Arg1 | 
    | recoveredBlock1890Value0 recoveredBlock1890Value1 recoveredBlock1890Value2 |
    recoveredBlock1890Value0 := recoveredBlock1890Arg1.
    recoveredBlock1890Value1 := recoveredLocal20.
    recoveredBlock1890Value2 := (recoveredBlock1890Value0) workWindow: (recoveredBlock1890Value1).
    recoveredBlock1890Value2
].
            recoveredPC := 1906.
        ].
        recoveredStep = 1906 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1911.
        ].
        recoveredStep = 1911 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1914.
        ].
        recoveredStep = 1914 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1918.
        ].
        recoveredStep = 1918 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1919.
        ].
        recoveredStep = 1919 ifTrue: [
            recoveredStack4 := 'optionsUpdateButtonActivate:clientData:callData:'.
            recoveredPC := 1922.
        ].
        recoveredStep = 1922 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1923.
        ].
        recoveredStep = 1923 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1927.
        ].
        recoveredStep = 1927 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1930.
        ].
        recoveredStep = 1930 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1934.
        ].
        recoveredStep = 1934 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1935.
        ].
        recoveredStep = 1935 ifTrue: [
            recoveredStack4 := 'optionsClearButtonActivate:clientData:callData:'.
            recoveredPC := 1938.
        ].
        recoveredStep = 1938 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1939.
        ].
        recoveredStep = 1939 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1943.
        ].
        recoveredStep = 1943 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1946.
        ].
        recoveredStep = 1946 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1950.
        ].
        recoveredStep = 1950 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1951.
        ].
        recoveredStep = 1951 ifTrue: [
            recoveredStack4 := 'timeUpdateButtonActivate:clientData:callData:'.
            recoveredPC := 1954.
        ].
        recoveredStep = 1954 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1955.
        ].
        recoveredStep = 1955 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1959.
        ].
        recoveredStep = 1959 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1962.
        ].
        recoveredStep = 1962 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1966.
        ].
        recoveredStep = 1966 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1967.
        ].
        recoveredStep = 1967 ifTrue: [
            recoveredStack4 := 'optionsIntervalSliderValueChanged:clientData:callData:'.
            recoveredPC := 1970.
        ].
        recoveredStep = 1970 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1971.
        ].
        recoveredStep = 1971 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1975.
        ].
        recoveredStep = 1975 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1978.
        ].
        recoveredStep = 1978 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1982.
        ].
        recoveredStep = 1982 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1983.
        ].
        recoveredStep = 1983 ifTrue: [
            recoveredStack4 := 'optionsConsistencyComboBoxValueChanged:clientData:callData:'.
            recoveredPC := 1986.
        ].
        recoveredStep = 1986 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1987.
        ].
        recoveredStep = 1987 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1991.
        ].
        recoveredStep = 1991 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1994.
        ].
        recoveredStep = 1994 ifTrue: [
            recoveredStack2 := recoveredLocal23.
            recoveredPC := 1997.
        ].
        recoveredStep = 1997 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 2000.
        ].
        recoveredStep = 2000 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2005.
        ].
        recoveredStep = 2005 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

