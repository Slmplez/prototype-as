"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000633c; bytecode file offset 0x902de8"
!SGSimDataloggerView methodsFor: 'recovered'!
triggerLevelModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200250a0; bytecode file offset 0x92209c"
!SGSimDataloggerView methodsFor: 'recovered'!
defaultIcon
    ^'EditorDataLogger'
! !

"ASDBase.ic method 0x2002acf4; bytecode file offset 0x934580"
!SGSimDataloggerView methodsFor: 'recovered'!
simEnvironment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := (recoveredValue0) simEnvironment.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b6d4; bytecode file offset 0x934580"
!SGSimDataloggerView methodsFor: 'recovered'!
isLoggingEnabled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) logging.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042a4c; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetTextFormat
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textFormat').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20042f3c; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetLabelMode
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelMode').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043c9c; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetTriggerChannel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('triggerChannel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004560c; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetDataList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('dataList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045afc; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetLabelLoggedData
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelLoggedData').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045b2c; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetTextFileName
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textFile').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004618c; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetTriggerLevel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('triggerLevel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004709c; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetButtonTrigger
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonTrigger').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047a8c; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetToolBar
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('toolBar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004881c; bytecode file offset 0x9451f8"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetTriggerSlope
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('triggerSlope').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ec00; bytecode file offset 0x94d048"
!SGSimDataloggerView methodsFor: 'recovered'!
activateExpandCollapse
    (self) toggleExpandCollapse.
    ^self
! !

"ASDBase.ic method 0x20050fa8; bytecode file offset 0x94d864"
!SGSimDataloggerView methodsFor: 'recovered'!
getCurrentFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) fileName.
    recoveredValue2 := (recoveredValue1) fileName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200516a0; bytecode file offset 0x94f0e0"
!SGSimDataloggerView methodsFor: 'recovered'!
mainController
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) measureSystemCtrl.
    recoveredValue2 := (recoveredValue1) mainController.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057a88; bytecode file offset 0x956284"
!SGSimDataloggerView methodsFor: 'recovered'!
getIndexFromLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getIndexFromLabel: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fbe4; bytecode file offset 0x95c4f4"
!SGSimDataloggerView methodsFor: 'recovered'!
getDataloggerConfig
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) title.
    recoveredValue2 := (self) returnWindowConfigurationWithName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20061aa0; bytecode file offset 0x95e838"
!SGSimDataloggerView methodsFor: 'recovered'!
toolChangeLoggerFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetToolBar.
    recoveredValue1 := (recoveredValue0) toolNamed: ('ChangeLoggerFile').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061dfc; bytecode file offset 0x95e838"
!SGSimDataloggerView methodsFor: 'recovered'!
activeTitle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultTitle.
    recoveredValue1 := (recoveredValue0) , ('  <active> ').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061ec4; bytecode file offset 0x95e838"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetStopLogger
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetToolBar.
    recoveredValue1 := (recoveredValue0) toolNamed: ('StopLogger').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061ed8; bytecode file offset 0x95e838"
!SGSimDataloggerView methodsFor: 'recovered'!
widgetStartLogger
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetToolBar.
    recoveredValue1 := (recoveredValue0) toolNamed: ('StartLogger').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200644f4; bytecode file offset 0x961970"
!SGSimDataloggerView methodsFor: 'recovered'!
preClosingActivities
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) shutDown.
    ^self
! !

"ASDBase.ic method 0x20064c34; bytecode file offset 0x961970"
!SGSimDataloggerView methodsFor: 'recovered'!
postClosingActivities
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) clearTimerDelay.
    ^self
! !

"ASDBase.ic method 0x200701e8; bytecode file offset 0x96cb7c"
!SGSimDataloggerView methodsFor: 'recovered'!
labelListFileName
    | recoveredValue0 |
    recoveredValue0 := labelListFileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008d4e4; bytecode file offset 0x989db0"
!SGSimDataloggerView methodsFor: 'recovered'!
createToolBars
    | recoveredValue0 |
    recoveredValue0 := (self) widgetToolBar.
    (self) createTools: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20092d4c; bytecode file offset 0x98f634"
!SGSimDataloggerView methodsFor: 'recovered'!
createLogChannelFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := uiController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addMeasureData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200af298; bytecode file offset 0x9abba8"
!SGSimDataloggerView methodsFor: 'recovered'!
triggerSlopeSingleSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    (recoveredValue0) triggerSlope: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200af2c0; bytecode file offset 0x9abba8"
!SGSimDataloggerView methodsFor: 'recovered'!
triggerChannelSingleSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    (recoveredValue0) triggerChannel: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ca7d4; bytecode file offset 0x9c70c8"
!SGSimDataloggerView methodsFor: 'recovered'!
triggerLevelValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) asFloat.
    (recoveredValue0) triggerLevel: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200d86a0; bytecode file offset 0x9d4f5c"
!SGSimDataloggerView methodsFor: 'recovered'!
labelListFileName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    labelListFileName := recoveredValue0.
    recoveredValue1 := (self) defaultTitle.
    (self) title: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e5710; bytecode file offset 0x9e1fcc"
!SGSimDataloggerView methodsFor: 'recovered'!
isClosingPossible
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClosingPossible.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f2050; bytecode file offset 0x9ee95c"
!SGSimDataloggerView methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kli') == ('Call_69989').
    recoveredValue1 := (self) widgetDataList.
    (recoveredValue1) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x201114a0; bytecode file offset 0xa0ddcc"
!SGSimDataloggerView methodsFor: 'recovered'!
activate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := ('activate') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asSymbol.
    (self) perform: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20117650; bytecode file offset 0xa13f44"
!SGSimDataloggerView methodsFor: 'recovered'!
menuDisable
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_2007400431').
    (self) activateStopLogger.
    (self) checkEnableDisable.
    ^self
! !

"ASDBase.ic method 0x20117668; bytecode file offset 0xa13f44"
!SGSimDataloggerView methodsFor: 'recovered'!
menuEnable
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_2007400431').
    (self) activateStartLogger.
    (self) checkEnableDisable.
    ^self
! !

"ASDBase.ic method 0x2011847c; bytecode file offset 0xa14d40"
!SGSimDataloggerView methodsFor: 'recovered'!
isStartLoggingPossible
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
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) logDatas.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLoggingEnabled.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ab18; bytecode file offset 0xa273d0"
!SGSimDataloggerView methodsFor: 'recovered'!
stopTimerProcess
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := proc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := proc.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            proc := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20135adc; bytecode file offset 0xa3239c"
!SGSimDataloggerView methodsFor: 'recovered'!
activateToggled: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) activate: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013f208; bytecode file offset 0xa3bacc"
!SGSimDataloggerView methodsFor: 'recovered'!
updateView
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) checkEnableDisable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) checkCollapseView.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updateWidgets.
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

"ASDBase.ic method 0x2013f9ac; bytecode file offset 0xa3c274"
!SGSimDataloggerView methodsFor: 'recovered'!
removeItemAction
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoggingEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) logDatas.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) menuRemoveItem.
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

"ASDBase.ic method 0x2014d330; bytecode file offset 0xa49bf0"
!SGSimDataloggerView methodsFor: 'recovered'!
toggleExpandCollapse
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollapsedView.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) expandView.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) collapseView.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015f9ec; bytecode file offset 0xa5c2b4"
!SGSimDataloggerView methodsFor: 'recovered'!
initializeMenuBar
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) createMenuBar.
    windowMenuBar := recoveredValue0.
    recoveredValue1 := (self) mainWindow.
    recoveredValue2 := windowMenuBar.
    recoveredValue3 := (self) mainWindow.
    recoveredValue4 := (recoveredValue2) createMenuBarFor: (recoveredValue3) owner: (self).
    recoveredValue5 := (recoveredValue4) manageChild.
    (recoveredValue1) menuBar: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2016d304; bytecode file offset 0xa69bd0"
!SGSimDataloggerView methodsFor: 'recovered'!
dataListvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) returnIconWithName: ('EditorDataLogger').
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) icon: (recoveredValue3).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) item.
    recoveredValue6 := (recoveredValue5) name.
    (recoveredValue1) label: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20180ffc; bytecode file offset 0xa7d8c4"
!SGSimDataloggerView methodsFor: 'recovered'!
menuMDF2FAMOS
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) uiController.
    recoveredBlock4Value1 := (recoveredBlock4Value0) convertMDF2FAMOS.
    recoveredBlock4Value1
].
    recoveredValue1 := SCEtas.
    (self) execWithProgressDialog: (recoveredValue0) message: ('Convert MDF Data to FAMOS...') showProgress: (false) title: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201839e4; bytecode file offset 0xa802b0"
!SGSimDataloggerView methodsFor: 'recovered'!
defaultTitle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) labelListFileName.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) fileName.
    recoveredBlock5Value2 := (recoveredBlock5Value1) , (' - Data Logger').
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^'Data Logger'
! !

"ASDBase.ic method 0x201a961c; bytecode file offset 0xaa5eec"
!SGSimDataloggerView methodsFor: 'recovered'!
aTopLevelShell1Resize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollapsedView.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) expandedViewSize: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b0974; bytecode file offset 0xaad240"
!SGSimDataloggerView methodsFor: 'recovered'!
disableTrigger
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) resetTriggered.
    recoveredValue1 := (self) widgetTriggerChannel.
    (recoveredValue1) sensitive: (false).
    recoveredValue2 := (self) widgetTriggerLevel.
    (recoveredValue2) sensitive: (false).
    recoveredValue3 := (self) widgetTriggerSlope.
    (recoveredValue3) sensitive: (false).
    ^self
! !

"ASDBase.ic method 0x201c9c24; bytecode file offset 0xac64f0"
!SGSimDataloggerView methodsFor: 'recovered'!
menuSaveLabelList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelListFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #('csv' 'cfg' 'vsf').
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelListFileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuSaveAsLabelList.
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
            (recoveredStack0) saveLabelList.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ca76c; bytecode file offset 0xac7040"
!SGSimDataloggerView methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('|') with: ('/') with: ('--') with: ('\') with: (1).
    wheel := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201cbe6c; bytecode file offset 0xac8738"
!SGSimDataloggerView methodsFor: 'recovered'!
createTools: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := XmNetasSingleSelectionCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('activate:clientData:callData:') clientData: (nil).
    recoveredValue2 := recoveredArg1.
    (self) createControlGroup: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) createStorageGroup: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) createExpandCollapseGroup: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201d1370; bytecode file offset 0xacdc44"
!SGSimDataloggerView methodsFor: 'recovered'!
editHeader
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHeader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := GlobalInfoController.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOutputMediumDialogs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGSimLoggingInformationDialog.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptWithParent: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc938; bytecode file offset 0xad9204"
!SGSimDataloggerView methodsFor: 'recovered'!
buttonTriggerValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) bell: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) enableTrigger.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) disableTrigger.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e17b4; bytecode file offset 0xade0b0"
!SGSimDataloggerView methodsFor: 'recovered'!
initDragAndDrop
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EwTargetAdapter.
    recoveredValue1 := (self) widgetDataList.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XmNdropCallback.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) selector: ('dataDrop:clientData:callData:') clientData: (nil).
    recoveredValue5 := XmNdragOverCallback.
    (recoveredValue2) addCallback: (recoveredValue5) receiver: (self) selector: ('dataOver:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x201ef0ec; bytecode file offset 0xaeb9bc"
!SGSimDataloggerView methodsFor: 'recovered'!
menuLoggingOptions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGSimDataloggerOptionsDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentOptions.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForOptions: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptAtCurrentMousePositionWithParent: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) updateWithOptions: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) updateInfos.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f3464; bytecode file offset 0xaefd3c"
!SGSimDataloggerView methodsFor: 'recovered'!
close
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBUserQuestion.
    recoveredValue1 := ('If you close the data logger, your configuration will be lost.\Do you really want to close the data logger?') withCrs.
    recoveredValue2 := (recoveredValue0) confirmWarning: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) okCancel.
    recoveredValue4 := (recoveredValue3) prompt.
    recoveredValue5 := [
    ^nil
].
    (recoveredValue4) ifNil: (recoveredValue5).
    super close.
    ^self
! !

"ASDBase.ic method 0x201f46d4; bytecode file offset 0xaf0fa4"
!SGSimDataloggerView methodsFor: 'recovered'!
createStorageGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := (self) returnIconWithName: ('GeneralFile').
    (recoveredBlock7Value1) image: (recoveredBlock7Value2).
    recoveredBlock7Value3 := (recoveredBlock7Value0) toolTipText: ('Change Filename').
    recoveredBlock7Value3
].
    (recoveredValue0) createToolButton: ('ChangeLoggerFile') argBlock: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201fe824; bytecode file offset 0xafb0e8"
!SGSimDataloggerView methodsFor: 'recovered'!
checkCollapseView
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAlwaysOnTop.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollapsedView.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) expandView.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollapsedView.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) collapseView.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021ee14; bytecode file offset 0xb1b708"
!SGSimDataloggerView methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createFileMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) createControlMenu.
    (recoveredValue5) addMenu: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) createOptionsMenu.
    (recoveredValue7) addMenu: (recoveredValue8).
    recoveredValue9 := (self) createExtrasMenu.
    (recoveredValue2) addMenu: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2021fb74; bytecode file offset 0xb1c448"
!SGSimDataloggerView methodsFor: 'recovered'!
getAndDisplayError
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getErrorString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := proc.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) stopTimerProcess.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) emergencyStopLogger.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022f110; bytecode file offset 0xb2b9d4"
!SGSimDataloggerView methodsFor: 'recovered'!
getSimNodeForLabel: recoveredArg1 projectLabel: recoveredArg2 isHierarchicalLabel: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) reversedASDSimLabel.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimNodeForLabel: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) reversedASDSimLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimNodeForLabel: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023ddfc; bytecode file offset 0xb3a6d4"
!SGSimDataloggerView methodsFor: 'recovered'!
createExpandCollapseGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := XmTOGGLEBUTTON.
    (recoveredBlock7Value1) buttonType: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    recoveredBlock7Value4 := (self) returnIconWithName: ('GeneralWindowResize').
    (recoveredBlock7Value3) image: (recoveredBlock7Value4).
    recoveredBlock7Value5 := (recoveredBlock7Value0) toolTipText: ('Expand / Collapse Window').
    recoveredBlock7Value5
].
    (recoveredValue0) createToolButton: ('ExpandCollapse') argBlock: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20241f54; bytecode file offset 0xb3e82c"
!SGSimDataloggerView methodsFor: 'recovered'!
createExtrasMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('~Extras').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := uiController.
    recoveredBlock18Value1 := (recoveredBlock18Value0) logging.
    recoveredBlock18Value2 := (recoveredBlock18Value1) not.
    recoveredBlock18Value2
].
    (recoveredValue4) add: ('menuMDF2FAMOS') label: ('~Convert MDF to FAMOS') enable: (recoveredValue5).
    recoveredLocal1 := recoveredValue2.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2024ebb4; bytecode file offset 0xb4b488"
!SGSimDataloggerView methodsFor: 'recovered'!
menuRemoveItem
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := (self) uiController.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) removeLogData: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) updateView.
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

"ASDBase.ic method 0x2027cb2c; bytecode file offset 0xb793e8"
!SGSimDataloggerView methodsFor: 'recovered'!
getNewWheel
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := wheel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := wheel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := wheel.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) > (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20286444; bytecode file offset 0xb82d28"
!SGSimDataloggerView methodsFor: 'recovered'!
createElementMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('Item').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 |
    recoveredBlock18Value0 := (self) isLoggingEnabled.
    recoveredBlock18Value1 := (recoveredBlock18Value0) not.
    recoveredBlock18Value2 := uiController.
    recoveredBlock18Value3 := (recoveredBlock18Value2) logDatas.
    recoveredBlock18Value4 := (recoveredBlock18Value3) notEmpty.
    recoveredBlock18Value5 := (recoveredBlock18Value1) & (recoveredBlock18Value4).
    recoveredBlock18Value5
].
    (recoveredValue4) add: ('menuRemoveItem') label: ('~Remove') enable: (recoveredValue5).
    recoveredLocal1 := recoveredValue2.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2028c96c; bytecode file offset 0xb89248"
!SGSimDataloggerView methodsFor: 'recovered'!
clearDataList
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetDataList.
    recoveredValue1 := (recoveredValue0) items.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 23] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) uiController.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) removeLogData: (recoveredBlock6Stack2).
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := ('Kli') == ('Call_60437').
    recoveredValue4 := (self) widgetDataList.
    (recoveredValue4) items: (#()).
    (self) updateView.
    ^self
! !

"ASDBase.ic method 0x2029191c; bytecode file offset 0xb8e1f0"
!SGSimDataloggerView methodsFor: 'recovered'!
enableTrigger
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) setTriggered.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerLevel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerSlope.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerChannel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
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

"ASDBase.ic method 0x202962f0; bytecode file offset 0xb92bcc"
!SGSimDataloggerView methodsFor: 'recovered'!
initTimerProcess
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack1) cyclicLoggingInfo.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) TimerDelay.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            (recoveredBlock4Stack1) wait.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isDestroyed.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 27] ifFalse: [recoveredBlock4PC := 14].
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := Processor.
    recoveredValue2 := (recoveredValue1) userSchedulingPriority.
    recoveredValue3 := (recoveredValue0) forkAt: (recoveredValue2).
    proc := recoveredValue3.
    recoveredValue4 := proc.
    (recoveredValue4) name: ('ASD-Experiment Logging Background').
    ^self
! !

"ASDBase.ic method 0x202b6e90; bytecode file offset 0xbb3770"
!SGSimDataloggerView methodsFor: 'recovered'!
getActualCycleTime
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) continuous.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ''.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActualCycleTime.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := '    !! TCycle='.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := ' [ms] !!'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f06d8; bytecode file offset 0xbecfb4"
!SGSimDataloggerView methodsFor: 'recovered'!
dataOver: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceModel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'measureScalar'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 'measureCalibrationScalar'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'measureScalarFromView'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := XmCOPY.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) vote: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := XmILLEGAL.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) vote: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030e31c; bytecode file offset 0xc0ac00"
!SGSimDataloggerView methodsFor: 'recovered'!
createOptionsMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('~Options').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := (self) uiController.
    recoveredBlock18Value1 := (recoveredBlock18Value0) logging.
    recoveredBlock18Value2 := (recoveredBlock18Value1) not.
    recoveredBlock18Value2
].
    (recoveredValue4) add: ('menuLoggingOptions') label: ('~Logging Options') enable: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := [
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := (self) uiController.
    recoveredBlock37Value1 := (recoveredBlock37Value0) logging.
    recoveredBlock37Value2 := (recoveredBlock37Value1) not.
    recoveredBlock37Value2
].
    (recoveredValue6) add: ('activateChangeLoggerFile') label: ('~Change Filename') enable: (recoveredValue7).
    recoveredLocal1 := recoveredValue2.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20316964; bytecode file offset 0xc13250"
!SGSimDataloggerView methodsFor: 'recovered'!
createControlMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ('Muzaffar') == ('EHI48126').
    recoveredValue1 := CwMenu.
    recoveredValue2 := (recoveredValue1) defaultMenuClass.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) title: ('~Control').
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := [
    | recoveredBlock25Value0 |
    recoveredBlock25Value0 := (self) isStartLoggingPossible.
    recoveredBlock25Value0
].
    (recoveredValue5) add: ('menuEnable') label: ('~Enable Logging') enable: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := [
    | recoveredBlock42Value0 |
    recoveredBlock42Value0 := (self) isLoggingEnabled.
    recoveredBlock42Value0
].
    (recoveredValue7) add: ('menuDisable') label: ('~Disable Logging') enable: (recoveredValue8).
    recoveredLocal1 := recoveredValue3.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2031acd0; bytecode file offset 0xc175b8"
!SGSimDataloggerView methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) widgetButtonTrigger.
    (recoveredValue1) updateLabelFont: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) widgetLabelLoggedData.
    (recoveredValue3) updateLabelFont: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) widgetLabelMode.
    (recoveredValue5) updateLabelFont: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) widgetTextFileName.
    (recoveredValue7) updateLabelFont: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) widgetTextFormat.
    (recoveredValue9) updateLabelFont: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) widgetDataList.
    (recoveredValue11) updateFontAndItemHeight: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) widgetTriggerChannel.
    (recoveredValue13) updateFont: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    recoveredValue16 := (self) widgetTriggerLevel.
    (recoveredValue15) updateFont: (recoveredValue16).
    recoveredValue17 := (self) widgetTriggerSlope.
    (recoveredValue0) updateFont: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x2032d7cc; bytecode file offset 0xc2a0c4"
!SGSimDataloggerView methodsFor: 'recovered'!
menuOpenLabelList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'Open Label List'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := XmOPEN.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) accessType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := '*.lab'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := 'Label List Files'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := '*.*'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack6 := 'All Files'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := '*.lab'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) labelListFileName: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) loadLabelList.
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

"ASDBase.ic method 0x2034f580; bytecode file offset 0xc4be78"
!SGSimDataloggerView methodsFor: 'recovered'!
updateInfos
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) logDatas.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateMaxNumberOfChannels.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelMode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Mode: '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) printMode.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelLoggedData.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Logged Data:   '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := ' / '.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextFormat.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatString.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20359990; bytecode file offset 0xc56280"
!SGSimDataloggerView methodsFor: 'recovered'!
emergencyStopLogger
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStopLogger.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStartLogger.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) disableLogging.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) resetLogging.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultTitle.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolChangeLoggerFile.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonTrigger.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggered.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerLevel.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerSlope.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20370d40; bytecode file offset 0xc6d628"
!SGSimDataloggerView methodsFor: 'recovered'!
createControlGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := XmRADIOBUTTON.
    (recoveredBlock7Value1) buttonType: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    recoveredBlock7Value4 := (self) returnIconWithName: ('EditorPositionStopRed').
    (recoveredBlock7Value3) image: (recoveredBlock7Value4).
    recoveredBlock7Value5 := (recoveredBlock7Value0) toolTipText: ('Disable Logging').
    recoveredBlock7Value5
].
    (recoveredValue0) createToolButton: ('StopLogger') argBlock: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := recoveredBlock38Value0.
    recoveredBlock38Value2 := XmRADIOBUTTON.
    (recoveredBlock38Value1) buttonType: (recoveredBlock38Value2).
    recoveredBlock38Value3 := recoveredBlock38Value0.
    recoveredBlock38Value4 := (self) returnIconWithName: ('EditorPositionStartRed').
    (recoveredBlock38Value3) image: (recoveredBlock38Value4).
    recoveredBlock38Value5 := (recoveredBlock38Value0) toolTipText: ('Enable Logging').
    recoveredBlock38Value5
].
    (recoveredValue2) createToolButton: ('StartLogger') argBlock: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) createSeparator.
    ^self
! !

"ASDBase.ic method 0x2038270c; bytecode file offset 0xc7f000"
!SGSimDataloggerView methodsFor: 'recovered'!
toggleLogging
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Unable to start datalogging. Please add some channels first.'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) logging.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStopLogger.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStartLogger.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := false.
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
            (recoveredStack0) activateStopLogger.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStopLogger.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStartLogger.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) activateStartLogger.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'EHI_2007400431'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) checkEnableDisable.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203948a0; bytecode file offset 0xc91188"
!SGSimDataloggerView methodsFor: 'recovered'!
checkEnableDisable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI48126'.
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
            recoveredStack1 := uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) logDatas.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetStartLogger.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetStopLogger.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetButtonTrigger.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetButtonTrigger.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'EHI_2007400431'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetStopLogger.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) isLoggingEnabled.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetStartLogger.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) isStartLoggingPossible.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetButtonTrigger.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039cc2c; bytecode file offset 0xc99528"
!SGSimDataloggerView methodsFor: 'recovered'!
collapseView
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) setCollapsedView.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) expandedViewSize: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextFormat.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:block280f40e0Arg1 | 
    | block280f40e0Value0 block280f40e0Value1 block280f40e0Value2 block280f40e0Value3 |
    block280f40e0Value0 := block280f40e0Arg1.
    block280f40e0Value1 := block280f40e0Value0.
    block280f40e0Value2 := XmATTACHOPPOSITEFORM.
    (block280f40e0Value1) bottomAttachment: (block280f40e0Value2).
    block280f40e0Value3 := (block280f40e0Value0) bottomOffset: (-400).
    block280f40e0Value3
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 160.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) collapsedHeight.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) minSize: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) collapsedHeight.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) makeAlwaysOnTop: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a4c60; bytecode file offset 0xca1564"
!SGSimDataloggerView methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Character.
    recoveredValue6 := (recoveredValue5) value: (32).
    (recoveredValue4) at: (recoveredValue6) put: ('toggleLogging').
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := XKDelete.
    (recoveredValue7) at: (recoveredValue8) put: ('removeItemAction').
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := DirectedMessageWithText.
    recoveredValue11 := (recoveredValue10) selector: ('menuOpenLabelList') arguments: (#()) receiver: (self) text: ('Open Label List').
    (recoveredValue9) at: ('Ctrl-O') put: (recoveredValue11).
    recoveredValue12 := recoveredValue3.
    recoveredValue13 := DirectedMessageWithText.
    recoveredValue14 := (recoveredValue13) selector: ('menuSaveLabelList') arguments: (#()) receiver: (self) text: ('Save Label List').
    (recoveredValue12) at: ('Ctrl-S') put: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (self) shell.
    recoveredValue17 := recoveredLocal1.
    (recoveredValue15) at: (recoveredValue16) put: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x203b60d0; bytecode file offset 0xcb29d8"
!SGSimDataloggerView methodsFor: 'recovered'!
expandView
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) clearCollapsedView.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) expandedViewSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 150.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 250.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) minSize: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextFormat.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:block280f5e8cArg1 | 
    | block280f5e8cValue0 block280f5e8cValue1 block280f5e8cValue2 block280f5e8cValue3 |
    block280f5e8cValue0 := block280f5e8cArg1.
    block280f5e8cValue1 := block280f5e8cValue0.
    block280f5e8cValue2 := XmATTACHFORM.
    (block280f5e8cValue1) bottomAttachment: (block280f5e8cValue2).
    block280f5e8cValue3 := (block280f5e8cValue0) bottomOffset: (5).
    block280f5e8cValue3
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := SGUserInterfaceSettings.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetTextFileName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) updateLabelFont: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTextFormat.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) updateLabelFont: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) makeAlwaysOnTop: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f1934; bytecode file offset 0xcee250"
!SGSimDataloggerView methodsFor: 'recovered'!
activateChangeLoggerFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPath.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Select new Data Logger File'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := '*.dat'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := '*.dat'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := 'Data Logger Files'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := '*.*'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := 'All Files'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) setLogFileName: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040dd44; bytecode file offset 0xd0a654"
!SGSimDataloggerView methodsFor: 'recovered'!
menuSaveAsLabelList
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelListFileName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) fileNameOnly.
    recoveredBlock10Value2 := recoveredBlock10Value1.
    recoveredLocal1 := recoveredBlock10Value2.
    recoveredBlock10Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'Save Label List'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := XmSAVE.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := '*.lab'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := 'Label List Files'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := '*.*'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := 'All Files'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := '*.lab'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) appendDefaultExtension.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) labelListFileName: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) saveLabelList.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204127ac; bytecode file offset 0xd0f0a8"
!SGSimDataloggerView methodsFor: 'recovered'!
dataDrop: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logging.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Please, first stop Datalogging to add items'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
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
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceItems.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceModel.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'measureScalar'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'measureCalibrationScalar'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) logElements: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'measureScalarFromView'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:block280fb5bcArg1 | 
    | block280fb5bcValue0 block280fb5bcValue1 |
    block280fb5bcValue0 := block280fb5bcArg1.
    block280fb5bcValue1 := (block280fb5bcValue0) data.
    block280fb5bcValue1
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) logElements: (recoveredStack1).
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

"ASDBase.ic method 0x2045d324; bytecode file offset 0xd59c14"
!SGSimDataloggerView methodsFor: 'recovered'!
cyclicLoggingInfo
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logging.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultTitle.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) stopTimerProcess.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggered.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTriggerState.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) getAndDisplayError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultTitle.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := ' <active - trigger occurred> '.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNewWheel.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) getActualCycleTime.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultTitle.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := ' <waiting for trigger> '.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNewWheel.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := shell.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeTitle.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNewWheel.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) getActualCycleTime.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) getErrorState.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) getAndDisplayError.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204630b4; bytecode file offset 0xd5f9ac"
!SGSimDataloggerView methodsFor: 'recovered'!
determineLayoutConfiguration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_79887'.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollapsedView.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) expandedViewSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := RBLayoutConfiguration.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := (recoveredStack5) shell.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := (recoveredStack5) title.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack6 := (recoveredStack6) shell.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := (recoveredStack6) iconic.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack7 := CgScreen.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack7 := (recoveredStack7) default.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack7 := (recoveredStack7) width.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack8 := CgScreen.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack8 := (recoveredStack8) default.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack8 := (recoveredStack8) height.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack7 := (recoveredStack7) @ (recoveredStack8).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithX: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4) title: (recoveredStack5) iconic: (recoveredStack6) resolution: (recoveredStack7).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := RBLayoutConfiguration.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) shell.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) width.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := (recoveredStack4) shell.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := (recoveredStack5) shell.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := (recoveredStack5) title.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack6 := (recoveredStack6) shell.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack6 := (recoveredStack6) iconic.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack7 := CgScreen.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack7 := (recoveredStack7) default.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack7 := (recoveredStack7) width.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack8 := CgScreen.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack8 := (recoveredStack8) default.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack8 := (recoveredStack8) height.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack7 := (recoveredStack7) @ (recoveredStack8).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithX: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4) title: (recoveredStack5) iconic: (recoveredStack6) resolution: (recoveredStack7).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047b490; bytecode file offset 0xd77db4"
!SGSimDataloggerView methodsFor: 'recovered'!
menuImportLabelList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'Open Label List'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := XmOPEN.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) accessType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := '*.csv'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := 'Comma Separated Value File'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := '*.cfg'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack6 := 'SelectX File'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := '*.lab'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := '(ASCET V6.0)'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := '*.csv'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) labelListFileName: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'csv'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) importLabelListCSV.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 'cfg'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) importLabelListCFG.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'vsf'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) importLabelListVSF.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 'lab'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) importOldLabelList.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047f02c; bytecode file offset 0xd7b938"
!SGSimDataloggerView methodsFor: 'recovered'!
createFileMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredStack3 := '~File'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuOpenLabelList'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Open'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := uiController.
    recoveredBlock18Value1 := (recoveredBlock18Value0) logging.
    recoveredBlock18Value2 := (recoveredBlock18Value1) not.
    recoveredBlock18Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := 'Ctrl+O'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'menuSaveLabelList'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := '~Save'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 |
    recoveredBlock41Value0 := uiController.
    recoveredBlock41Value1 := (recoveredBlock41Value0) logging.
    recoveredBlock41Value2 := (recoveredBlock41Value1) not.
    recoveredBlock41Value2
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack8 := 'Ctrl+S'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 'menuSaveAsLabelList'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := 'Save ~As...'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 |
    recoveredBlock65Value0 := uiController.
    recoveredBlock65Value1 := (recoveredBlock65Value0) logging.
    recoveredBlock65Value2 := (recoveredBlock65Value1) not.
    recoveredBlock65Value2
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := 'menuImportLabelList'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := '~Import'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 |
    recoveredBlock89Value0 := uiController.
    recoveredBlock89Value1 := (recoveredBlock89Value0) logging.
    recoveredBlock89Value2 := (recoveredBlock89Value1) not.
    recoveredBlock89Value2
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := 'close'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := 'E~xit'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20481904; bytecode file offset 0xd7e254"
!SGSimDataloggerView methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack0) initializeMenuBar.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) initFonts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelLoggedData.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Logged Data'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) createToolBars.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) initDragAndDrop.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) checkEnableDisable.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'EditorDataLogger'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'EditorDataLogger32'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultTitle.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextFileName.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextFormat.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:block281025e0Arg1 | 
    | block281025e0Value0 block281025e0Value1 |
    block281025e0Value0 := block281025e0Arg1.
    block281025e0Value1 := (block281025e0Value0) name.
    block281025e0Value1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerLevel.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'checkFloat:'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerSlope.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:block28102604Arg1 | 
    | block28102604Value0 block28102604Value1 |
    block28102604Value0 := block28102604Arg1.
    block28102604Value1 := (block28102604Value0) key.
    block28102604Value1
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerSlope.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) triggerSlopes.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) disableTrigger.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataList.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElementMenu.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) updateTarget.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048b8b8; bytecode file offset 0xd881d0"
!SGSimDataloggerView methodsFor: 'recovered'!
activateStartLogger
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Please, first add data to Datalogger'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStopLogger.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStartLogger.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) logging.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableLogging.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStopLogger.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStartLogger.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolChangeLoggerFile.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonTrigger.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerLevel.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerSlope.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) initTimerProcess.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStopLogger.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStartLogger.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) resetLogging.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) getAndDisplayError.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := 'EHI_2007400431'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) checkEnableDisable.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b7e14; bytecode file offset 0xdb472c"
!SGSimDataloggerView methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) widgetDataList.
    recoveredBlock5Value1 := (self) uiController.
    recoveredBlock5Value2 := (recoveredBlock5Value1) logDatas.
    recoveredBlock5Value3 := (recoveredBlock5Value0) items: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) updateInfos.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextFileName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) logDatas.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonTrigger.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) triggered.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerLevel.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) triggerLevel.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerSlope.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) triggerSlope.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggered.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerLevel.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerSlope.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerLevel.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerSlope.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerChannel.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 'Call_69989'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataList.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d2794; bytecode file offset 0xdcf0b8"
!SGSimDataloggerView methodsFor: 'recovered'!
addLabelTable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 |
    recoveredBlock18Value0 := (self) shell.
    recoveredBlock18Value1 := (recoveredBlock18Value0) osWidget.
    (recoveredBlock18Value1) setAppModal.
    recoveredBlock18Value2 := recoveredArg1.
    recoveredBlock18Value3 := [:recoveredBlock18Block33Arg1 :recoveredBlock18Block33Arg2 | 
    | recoveredBlock18Block33Local1 recoveredBlock18Block33Stack0 recoveredBlock18Block33Stack1 recoveredBlock18Block33Stack2 recoveredBlock18Block33Stack3 recoveredBlock18Block33Stack4 recoveredBlock18Block33Stack5 recoveredBlock18Block33PC recoveredBlock18Block33Step recoveredBlock18Block33Done recoveredBlock18Block33Result |
    recoveredBlock18Block33Stack0 := self.
    recoveredBlock18Block33PC := 40.
    recoveredBlock18Block33Done := false.
    [recoveredBlock18Block33Done not] whileTrue: [
        recoveredBlock18Block33Step := recoveredBlock18Block33PC.
        recoveredBlock18Block33Step = 40 ifTrue: [
            recoveredBlock18Block33Stack0 := (recoveredBlock18Block33Stack0) simEnvironment.
            recoveredBlock18Block33PC := 42.
        ].
        recoveredBlock18Block33Step = 42 ifTrue: [
            recoveredBlock18Block33Stack1 := recoveredBlock18Block33Arg2.
            recoveredBlock18Block33PC := 43.
        ].
        recoveredBlock18Block33Step = 43 ifTrue: [
            recoveredBlock18Block33Stack0 := (recoveredBlock18Block33Stack0) getSimInstanceForNode: (recoveredBlock18Block33Stack1).
            recoveredBlock18Block33PC := 45.
        ].
        recoveredBlock18Block33Step = 45 ifTrue: [
            recoveredLocal3 := recoveredBlock18Block33Stack0.
            recoveredBlock18Block33PC := 48.
        ].
        recoveredBlock18Block33Step = 48 ifTrue: [
            recoveredBlock18Block33Stack0 := recoveredLocal3.
            recoveredBlock18Block33PC := 51.
        ].
        recoveredBlock18Block33Step = 51 ifTrue: [
            (recoveredBlock18Block33Stack0 == nil) ifTrue: [recoveredBlock18Block33PC := 110] ifFalse: [recoveredBlock18Block33PC := 54].
        ].
        recoveredBlock18Block33Step = 54 ifTrue: [
            recoveredBlock18Block33Stack0 := recoveredLocal3.
            recoveredBlock18Block33PC := 57.
        ].
        recoveredBlock18Block33Step = 57 ifTrue: [
            recoveredBlock18Block33Stack1 := RBDataVector.
            recoveredBlock18Block33PC := 59.
        ].
        recoveredBlock18Block33Step = 59 ifTrue: [
            recoveredBlock18Block33Stack0 := (recoveredBlock18Block33Stack0) isKindOf: (recoveredBlock18Block33Stack1).
            recoveredBlock18Block33PC := 61.
        ].
        recoveredBlock18Block33Step = 61 ifTrue: [
            (recoveredBlock18Block33Stack0) ifTrue: [recoveredBlock18Block33PC := 64] ifFalse: [recoveredBlock18Block33PC := 98].
        ].
        recoveredBlock18Block33Step = 64 ifTrue: [
            recoveredBlock18Block33Stack0 := self.
            recoveredBlock18Block33PC := 65.
        ].
        recoveredBlock18Block33Step = 65 ifTrue: [
            recoveredBlock18Block33Stack1 := recoveredBlock18Block33Arg1.
            recoveredBlock18Block33PC := 66.
        ].
        recoveredBlock18Block33Step = 66 ifTrue: [
            recoveredBlock18Block33Stack0 := (recoveredBlock18Block33Stack0) getIndexFromLabel: (recoveredBlock18Block33Stack1).
            recoveredBlock18Block33PC := 68.
        ].
        recoveredBlock18Block33Step = 68 ifTrue: [
            recoveredBlock18Block33Local1 := recoveredBlock18Block33Stack0.
            recoveredBlock18Block33PC := 69.
        ].
        recoveredBlock18Block33Step = 69 ifTrue: [
            recoveredBlock18Block33Stack0 := nil.
            recoveredBlock18Block33PC := 70.
        ].
        recoveredBlock18Block33Step = 70 ifTrue: [
            recoveredBlock18Block33Stack1 := recoveredBlock18Block33Local1.
            recoveredBlock18Block33PC := 71.
        ].
        recoveredBlock18Block33Step = 71 ifTrue: [
            (recoveredBlock18Block33Stack1 == nil) ifTrue: [recoveredBlock18Block33PC := 93] ifFalse: [recoveredBlock18Block33PC := 74].
        ].
        recoveredBlock18Block33Step = 74 ifTrue: [
            recoveredBlock18Block33PC := 75.
        ].
        recoveredBlock18Block33Step = 75 ifTrue: [
            recoveredBlock18Block33Stack0 := recoveredLocal2.
            recoveredBlock18Block33PC := 78.
        ].
        recoveredBlock18Block33Step = 78 ifTrue: [
            recoveredBlock18Block33Stack1 := self.
            recoveredBlock18Block33PC := 79.
        ].
        recoveredBlock18Block33Step = 79 ifTrue: [
            recoveredBlock18Block33Stack1 := (recoveredBlock18Block33Stack1) simEnvironment.
            recoveredBlock18Block33PC := 81.
        ].
        recoveredBlock18Block33Step = 81 ifTrue: [
            recoveredBlock18Block33Stack2 := recoveredLocal3.
            recoveredBlock18Block33PC := 84.
        ].
        recoveredBlock18Block33Step = 84 ifTrue: [
            recoveredBlock18Block33Stack3 := Array.
            recoveredBlock18Block33PC := 86.
        ].
        recoveredBlock18Block33Step = 86 ifTrue: [
            recoveredBlock18Block33Stack4 := recoveredBlock18Block33Local1.
            recoveredBlock18Block33PC := 87.
        ].
        recoveredBlock18Block33Step = 87 ifTrue: [
            recoveredBlock18Block33Stack3 := (recoveredBlock18Block33Stack3) with: (recoveredBlock18Block33Stack4).
            recoveredBlock18Block33PC := 89.
        ].
        recoveredBlock18Block33Step = 89 ifTrue: [
            recoveredBlock18Block33Stack1 := (recoveredBlock18Block33Stack1) createDataElementsForTable: (recoveredBlock18Block33Stack2) indices: (recoveredBlock18Block33Stack3).
            recoveredBlock18Block33PC := 91.
        ].
        recoveredBlock18Block33Step = 91 ifTrue: [
            recoveredBlock18Block33Stack0 := (recoveredBlock18Block33Stack0) addAll: (recoveredBlock18Block33Stack1).
            recoveredBlock18Block33PC := 93.
        ].
        recoveredBlock18Block33Step = 93 ifTrue: [
            recoveredBlock18Block33Stack1 := nil.
            recoveredBlock18Block33PC := 94.
        ].
        recoveredBlock18Block33Step = 94 ifTrue: [
            recoveredBlock18Block33Local1 := recoveredBlock18Block33Stack1.
            recoveredBlock18Block33PC := 95.
        ].
        recoveredBlock18Block33Step = 95 ifTrue: [
            recoveredBlock18Block33PC := 106.
        ].
        recoveredBlock18Block33Step = 98 ifTrue: [
            recoveredBlock18Block33Stack0 := recoveredLocal2.
            recoveredBlock18Block33PC := 101.
        ].
        recoveredBlock18Block33Step = 101 ifTrue: [
            recoveredBlock18Block33Stack1 := recoveredLocal3.
            recoveredBlock18Block33PC := 104.
        ].
        recoveredBlock18Block33Step = 104 ifTrue: [
            recoveredBlock18Block33Stack0 := (recoveredBlock18Block33Stack0) add: (recoveredBlock18Block33Stack1).
            recoveredBlock18Block33PC := 106.
        ].
        recoveredBlock18Block33Step = 106 ifTrue: [
            recoveredBlock18Block33PC := 120.
        ].
        recoveredBlock18Block33Step = 110 ifTrue: [
            recoveredBlock18Block33Stack0 := recoveredLocal1.
            recoveredBlock18Block33PC := 113.
        ].
        recoveredBlock18Block33Step = 113 ifTrue: [
            recoveredBlock18Block33Stack1 := 'Can not restore data logger element for label: '.
            recoveredBlock18Block33PC := 115.
        ].
        recoveredBlock18Block33Step = 115 ifTrue: [
            recoveredBlock18Block33Stack2 := recoveredBlock18Block33Arg1.
            recoveredBlock18Block33PC := 116.
        ].
        recoveredBlock18Block33Step = 116 ifTrue: [
            recoveredBlock18Block33Stack1 := (recoveredBlock18Block33Stack1) , (recoveredBlock18Block33Stack2).
            recoveredBlock18Block33PC := 118.
        ].
        recoveredBlock18Block33Step = 118 ifTrue: [
            recoveredBlock18Block33Stack0 := (recoveredBlock18Block33Stack0) addWarningText: (recoveredBlock18Block33Stack1).
            recoveredBlock18Block33PC := 120.
        ].
        recoveredBlock18Block33Step = 120 ifTrue: [
            recoveredBlock18Block33Result := recoveredBlock18Block33Stack0.
            recoveredBlock18Block33Done := true.
        ].
    ].
    recoveredBlock18Block33Result
].
    (recoveredBlock18Value2) keysAndValuesDo: (recoveredBlock18Value3).
    recoveredBlock18Value4 := (self) shell.
    recoveredBlock18Value5 := (recoveredBlock18Value4) osWidget.
    recoveredBlock18Value6 := (recoveredBlock18Value5) clearAppModal.
    recoveredBlock18Value6
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) clearDataList.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) logElements: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204de7dc; bytecode file offset 0xddb118"
!SGSimDataloggerView methodsFor: 'recovered'!
activateStopLogger
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStopLogger.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStartLogger.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) disableLogging.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) editHeader.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := uiController.
    recoveredBlock29Value1 := recoveredLocal1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) storeLoggedDataWithHeader: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'Storing Logged Data...'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := SCEtas.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) resetLogging.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:block28108244Arg1 | 
    | block28108244Stack0 block28108244Stack1 block28108244Stack2 block28108244Stack3 block28108244Stack4 block28108244PC block28108244Step block28108244Done block28108244Result |
    block28108244Stack0 := self.
    block28108244PC := 4.
    block28108244Done := false.
    [block28108244Done not] whileTrue: [
        block28108244Step := block28108244PC.
        block28108244Step = 4 ifTrue: [
            block28108244Stack1 := nil.
            block28108244PC := 5.
        ].
        block28108244Step = 5 ifTrue: [
            block28108244Stack2 := CfsStat.
            block28108244PC := 7.
        ].
        block28108244Step = 7 ifTrue: [
            block28108244Stack3 := block28108244Arg1.
            block28108244PC := 8.
        ].
        block28108244Step = 8 ifTrue: [
            block28108244Stack2 := (block28108244Stack2) exists: (block28108244Stack3).
            block28108244PC := 10.
        ].
        block28108244Step = 10 ifTrue: [
            (block28108244Stack2) ifTrue: [block28108244PC := 14] ifFalse: [block28108244PC := 25].
        ].
        block28108244Step = 14 ifTrue: [
            block28108244PC := 15.
        ].
        block28108244Step = 15 ifTrue: [
            block28108244Stack1 := CfsStat.
            block28108244PC := 17.
        ].
        block28108244Step = 17 ifTrue: [
            block28108244Stack2 := block28108244Arg1.
            block28108244PC := 18.
        ].
        block28108244Step = 18 ifTrue: [
            (block28108244Stack1) clearReadOnly: (block28108244Stack2).
            block28108244PC := 20.
        ].
        block28108244Step = 20 ifTrue: [
            block28108244Stack1 := CfsFileDescriptor.
            block28108244PC := 22.
        ].
        block28108244Step = 22 ifTrue: [
            block28108244Stack2 := block28108244Arg1.
            block28108244PC := 23.
        ].
        block28108244Step = 23 ifTrue: [
            block28108244Stack1 := (block28108244Stack1) remove: (block28108244Stack2).
            block28108244PC := 25.
        ].
        block28108244Step = 25 ifTrue: [
            block28108244Result := block28108244Stack1.
            block28108244Done := true.
        ].
    ].
    block28108244Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) stopTimerProcess.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultTitle.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextFileName.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolChangeLoggerFile.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonTrigger.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggered.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerChannel.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerLevel.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTriggerSlope.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 'EHI_2007400431'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) checkEnableDisable.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ee4c0; bytecode file offset 0xdeadf0"
!SGSimDataloggerView methodsFor: 'recovered'!
importLabelListVSF
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) labelListFileName.
    recoveredValue1 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := SGMonitorStreamDummy.
    recoveredValue5 := (recoveredValue4) create.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := System.
    recoveredValue7 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 recoveredBlock31Value7 recoveredBlock31Value8 recoveredBlock31Value9 recoveredBlock31Value10 |
    recoveredBlock31Value0 := (self) shell.
    recoveredBlock31Value1 := (recoveredBlock31Value0) osWidget.
    (recoveredBlock31Value1) setAppModal.
    recoveredBlock31Value2 := WinProfile.
    recoveredBlock31Value3 := (self) labelListFileName.
    recoveredBlock31Value4 := (recoveredBlock31Value2) create: (recoveredBlock31Value3).
    recoveredBlock31Value5 := (recoveredBlock31Value4) sectionNames.
    recoveredLocal5 := recoveredBlock31Value5.
    recoveredBlock31Value6 := recoveredLocal5.
    recoveredBlock31Value7 := [:recoveredBlock31Block58Arg1 | 
    | recoveredBlock31Block58Value0 recoveredBlock31Block58Value1 recoveredBlock31Block58Value2 recoveredBlock31Block58Value3 recoveredBlock31Block58Value4 recoveredBlock31Block58Value5 recoveredBlock31Block58Value6 recoveredBlock31Block58Value7 recoveredBlock31Block58Value8 recoveredBlock31Block58Value9 recoveredBlock31Block58Value10 |
    recoveredLocal2 := ''.
    recoveredBlock31Block58Value0 := recoveredBlock31Block58Arg1.
    recoveredBlock31Block58Value1 := (recoveredBlock31Block58Value0) asArrayOfSubstringsSeparatedBy: ('.').
    recoveredBlock31Block58Value2 := [:recoveredBlock31Block58Block74Arg1 | 
    | recoveredBlock31Block58Block74Value0 recoveredBlock31Block58Block74Value1 recoveredBlock31Block58Block74Value2 recoveredBlock31Block58Block74Value3 recoveredBlock31Block58Block74Value4 |
    recoveredBlock31Block58Block74Value0 := recoveredLocal2.
    recoveredBlock31Block58Block74Value1 := recoveredBlock31Block58Block74Arg1.
    recoveredBlock31Block58Block74Value2 := (recoveredBlock31Block58Block74Value0) , (recoveredBlock31Block58Block74Value1).
    recoveredBlock31Block58Block74Value3 := (recoveredBlock31Block58Block74Value2) , ('\').
    recoveredBlock31Block58Block74Value4 := recoveredBlock31Block58Block74Value3.
    recoveredLocal2 := recoveredBlock31Block58Block74Value4.
    recoveredBlock31Block58Block74Value3
].
    (recoveredBlock31Block58Value1) reverseDo: (recoveredBlock31Block58Value2).
    recoveredBlock31Block58Value3 := recoveredLocal2.
    recoveredBlock31Block58Value4 := recoveredLocal2.
    recoveredBlock31Block58Value5 := (recoveredBlock31Block58Value4) size.
    recoveredBlock31Block58Value6 := (recoveredBlock31Block58Value5) + (-1).
    recoveredBlock31Block58Value7 := (recoveredBlock31Block58Value3) copyFrom: (1) to: (recoveredBlock31Block58Value6).
    recoveredLocal2 := recoveredBlock31Block58Value7.
    recoveredBlock31Block58Value8 := recoveredLocal3.
    recoveredBlock31Block58Value9 := recoveredLocal2.
    recoveredBlock31Block58Value10 := (recoveredBlock31Block58Value8) add: (recoveredBlock31Block58Value9).
    recoveredBlock31Block58Value10
].
    (recoveredBlock31Value6) do: (recoveredBlock31Value7).
    recoveredBlock31Value8 := (self) shell.
    recoveredBlock31Value9 := (recoveredBlock31Value8) osWidget.
    recoveredBlock31Value10 := (recoveredBlock31Value9) clearAppModal.
    recoveredBlock31Value10
].
    (recoveredValue6) showBusyCursorWhile: (recoveredValue7).
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := (self) addLabels: (recoveredValue8).
    recoveredValue10 := [
    | recoveredBlock140Value0 recoveredBlock140Value1 recoveredBlock140Value2 recoveredBlock140Value3 recoveredBlock140Value4 recoveredBlock140Value5 |
    recoveredBlock140Value0 := RBUserInfo.
    recoveredBlock140Value1 := (self) labelListFileName.
    recoveredBlock140Value2 := ('The file "') , (recoveredBlock140Value1).
    recoveredBlock140Value3 := (recoveredBlock140Value2) , ('" containes no usable labels!!').
    recoveredBlock140Value4 := (recoveredBlock140Value0) errorMessage: (recoveredBlock140Value3).
    recoveredBlock140Value5 := (recoveredBlock140Value4) prompt.
    ^recoveredBlock140Value5
].
    (recoveredValue9) ifNil: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2051a984; bytecode file offset 0xe172ac"
!SGSimDataloggerView methodsFor: 'recovered'!
determineContentsConfiguration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logDatas.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 |
    recoveredBlock23Value0 := recoveredLocal6.
    recoveredBlock23Value1 := (self) mainController.
    recoveredBlock23Value2 := recoveredBlock23Arg1.
    recoveredBlock23Value3 := (recoveredBlock23Value2) wName.
    recoveredBlock23Value4 := (recoveredBlock23Value3) asASDSimLabel.
    recoveredBlock23Value5 := (recoveredBlock23Value1) getAliasForLabel: (recoveredBlock23Value4).
    recoveredBlock23Value6 := (recoveredBlock23Value0) add: (recoveredBlock23Value5).
    recoveredBlock23Value6
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'fileName'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileName.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'dataConfigs'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'options'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentOptions.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'collapsedView'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCollapsedView.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggered.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerChannel.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) triggerChannel.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) asASDSimLabel.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAliasForLabel: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 'triggered'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'triggerChannel'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := 'triggerSlope'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := (recoveredStack3) triggerSlope.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := 'triggerLevel'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) triggerLevel.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := 'triggered'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205641c0; bytecode file offset 0xe60afc"
!SGSimDataloggerView methodsFor: 'recovered'!
saveLabelList
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) labelListFileName.
    recoveredValue1 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) uiController.
    recoveredValue3 := (recoveredValue2) logDatas.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := System.
    recoveredValue9 := [
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) shell.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) osWidget.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            (recoveredBlock38Stack0) setAppModal.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal2.
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            recoveredBlock38Stack1 := [:recoveredBlock38Block53Arg1 | 
    | recoveredBlock38Block53Local1 recoveredBlock38Block53Local2 recoveredBlock38Block53Stack0 recoveredBlock38Block53Stack1 recoveredBlock38Block53Stack2 recoveredBlock38Block53PC recoveredBlock38Block53Step recoveredBlock38Block53Done recoveredBlock38Block53Result |
    recoveredBlock38Block53Stack0 := self.
    recoveredBlock38Block53PC := 60.
    recoveredBlock38Block53Done := false.
    [recoveredBlock38Block53Done not] whileTrue: [
        recoveredBlock38Block53Step := recoveredBlock38Block53PC.
        recoveredBlock38Block53Step = 60 ifTrue: [
            recoveredBlock38Block53Stack1 := recoveredBlock38Block53Arg1.
            recoveredBlock38Block53PC := 61.
        ].
        recoveredBlock38Block53Step = 61 ifTrue: [
            recoveredBlock38Block53Stack1 := (recoveredBlock38Block53Stack1) asAsap2Name.
            recoveredBlock38Block53PC := 63.
        ].
        recoveredBlock38Block53Step = 63 ifTrue: [
            recoveredBlock38Block53Local2 := recoveredBlock38Block53Stack1.
            recoveredBlock38Block53PC := 64.
        ].
        recoveredBlock38Block53Step = 64 ifTrue: [
            recoveredBlock38Block53Stack0 := (recoveredBlock38Block53Stack0) simEnvironment.
            recoveredBlock38Block53PC := 66.
        ].
        recoveredBlock38Block53Step = 66 ifTrue: [
            recoveredBlock38Block53Stack1 := recoveredBlock38Block53Arg1.
            recoveredBlock38Block53PC := 67.
        ].
        recoveredBlock38Block53Step = 67 ifTrue: [
            recoveredBlock38Block53Stack0 := (recoveredBlock38Block53Stack0) getSimNodeForDataElementByLabel: (recoveredBlock38Block53Stack1).
            recoveredBlock38Block53PC := 69.
        ].
        recoveredBlock38Block53Step = 69 ifTrue: [
            recoveredBlock38Block53Local1 := recoveredBlock38Block53Stack0.
            recoveredBlock38Block53PC := 70.
        ].
        recoveredBlock38Block53Step = 70 ifTrue: [
            recoveredBlock38Block53Stack0 := nil.
            recoveredBlock38Block53PC := 71.
        ].
        recoveredBlock38Block53Step = 71 ifTrue: [
            recoveredBlock38Block53Stack1 := recoveredBlock38Block53Local1.
            recoveredBlock38Block53PC := 72.
        ].
        recoveredBlock38Block53Step = 72 ifTrue: [
            (recoveredBlock38Block53Stack1 == nil) ifTrue: [recoveredBlock38Block53PC := 100] ifFalse: [recoveredBlock38Block53PC := 76].
        ].
        recoveredBlock38Block53Step = 76 ifTrue: [
            recoveredBlock38Block53PC := 77.
        ].
        recoveredBlock38Block53Step = 77 ifTrue: [
            recoveredBlock38Block53Stack0 := recoveredBlock38Block53Local1.
            recoveredBlock38Block53PC := 78.
        ].
        recoveredBlock38Block53Step = 78 ifTrue: [
            recoveredBlock38Block53Stack0 := (recoveredBlock38Block53Stack0) isNoneVolatileVariable.
            recoveredBlock38Block53PC := 80.
        ].
        recoveredBlock38Block53Step = 80 ifTrue: [
            (recoveredBlock38Block53Stack0) ifTrue: [recoveredBlock38Block53PC := 84] ifFalse: [recoveredBlock38Block53PC := 94].
        ].
        recoveredBlock38Block53Step = 84 ifTrue: [
            recoveredBlock38Block53Stack0 := recoveredLocal3.
            recoveredBlock38Block53PC := 87.
        ].
        recoveredBlock38Block53Step = 87 ifTrue: [
            recoveredBlock38Block53Stack1 := recoveredBlock38Block53Local2.
            recoveredBlock38Block53PC := 88.
        ].
        recoveredBlock38Block53Step = 88 ifTrue: [
            recoveredBlock38Block53Stack0 := (recoveredBlock38Block53Stack0) add: (recoveredBlock38Block53Stack1).
            recoveredBlock38Block53PC := 90.
        ].
        recoveredBlock38Block53Step = 90 ifTrue: [
            recoveredBlock38Block53PC := 100.
        ].
        recoveredBlock38Block53Step = 94 ifTrue: [
            recoveredBlock38Block53Stack0 := recoveredLocal4.
            recoveredBlock38Block53PC := 97.
        ].
        recoveredBlock38Block53Step = 97 ifTrue: [
            recoveredBlock38Block53Stack1 := recoveredBlock38Block53Local2.
            recoveredBlock38Block53PC := 98.
        ].
        recoveredBlock38Block53Step = 98 ifTrue: [
            recoveredBlock38Block53Stack0 := (recoveredBlock38Block53Stack0) add: (recoveredBlock38Block53Stack1).
            recoveredBlock38Block53PC := 100.
        ].
        recoveredBlock38Block53Step = 100 ifTrue: [
            recoveredBlock38Block53Result := recoveredBlock38Block53Stack0.
            recoveredBlock38Block53Done := true.
        ].
    ].
    recoveredBlock38Block53Result
].
            recoveredBlock38PC := 101.
        ].
        recoveredBlock38Step = 101 ifTrue: [
            (recoveredBlock38Stack0) do: (recoveredBlock38Stack1).
            recoveredBlock38PC := 103.
        ].
        recoveredBlock38Step = 103 ifTrue: [
            recoveredBlock38Stack0 := CfsReadWriteFileStream.
            recoveredBlock38PC := 105.
        ].
        recoveredBlock38Step = 105 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 106.
        ].
        recoveredBlock38Step = 106 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) labelListFileName.
            recoveredBlock38PC := 107.
        ].
        recoveredBlock38Step = 107 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) openEmpty: (recoveredBlock38Stack1).
            recoveredBlock38PC := 109.
        ].
        recoveredBlock38Step = 109 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Stack0.
            recoveredBlock38PC := 110.
        ].
        recoveredBlock38Step = 110 ifTrue: [
            recoveredLocal1 := recoveredBlock38Stack1.
            recoveredBlock38PC := 113.
        ].
        recoveredBlock38Step = 113 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) isCfsError.
            recoveredBlock38PC := 115.
        ].
        recoveredBlock38Step = 115 ifTrue: [
            (recoveredBlock38Stack0) ifTrue: [recoveredBlock38PC := 118] ifFalse: [recoveredBlock38PC := 140].
        ].
        recoveredBlock38Step = 118 ifTrue: [
            recoveredBlock38Stack0 := RBUserInfo.
            recoveredBlock38PC := 120.
        ].
        recoveredBlock38Step = 120 ifTrue: [
            recoveredBlock38Stack1 := 'The file "'.
            recoveredBlock38PC := 122.
        ].
        recoveredBlock38Step = 122 ifTrue: [
            recoveredBlock38Stack2 := self.
            recoveredBlock38PC := 123.
        ].
        recoveredBlock38Step = 123 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) labelListFileName.
            recoveredBlock38PC := 124.
        ].
        recoveredBlock38Step = 124 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) , (recoveredBlock38Stack2).
            recoveredBlock38PC := 126.
        ].
        recoveredBlock38Step = 126 ifTrue: [
            recoveredBlock38Stack2 := '" could not be opened.\ Please check if the file exist or if it is locked by another application.'.
            recoveredBlock38PC := 128.
        ].
        recoveredBlock38Step = 128 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) withCrs.
            recoveredBlock38PC := 130.
        ].
        recoveredBlock38Step = 130 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) , (recoveredBlock38Stack2).
            recoveredBlock38PC := 132.
        ].
        recoveredBlock38Step = 132 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) errorMessage: (recoveredBlock38Stack1).
            recoveredBlock38PC := 134.
        ].
        recoveredBlock38Step = 134 ifTrue: [
            (recoveredBlock38Stack0) prompt.
            recoveredBlock38PC := 136.
        ].
        recoveredBlock38Step = 136 ifTrue: [
            recoveredBlock38PC := 225.
        ].
        recoveredBlock38Step = 140 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal4.
            recoveredBlock38PC := 143.
        ].
        recoveredBlock38Step = 143 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) notEmpty.
            recoveredBlock38PC := 145.
        ].
        recoveredBlock38Step = 145 ifTrue: [
            (recoveredBlock38Stack0) ifTrue: [recoveredBlock38PC := 148] ifFalse: [recoveredBlock38PC := 180].
        ].
        recoveredBlock38Step = 148 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal1.
            recoveredBlock38PC := 151.
        ].
        recoveredBlock38Step = 151 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Stack0.
            recoveredBlock38PC := 152.
        ].
        recoveredBlock38Step = 152 ifTrue: [
            recoveredBlock38Stack2 := '[RAMCELL]'.
            recoveredBlock38PC := 154.
        ].
        recoveredBlock38Step = 154 ifTrue: [
            (recoveredBlock38Stack1) nextPutAll: (recoveredBlock38Stack2).
            recoveredBlock38PC := 156.
        ].
        recoveredBlock38Step = 156 ifTrue: [
            (recoveredBlock38Stack0) cr.
            recoveredBlock38PC := 158.
        ].
        recoveredBlock38Step = 158 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal4.
            recoveredBlock38PC := 161.
        ].
        recoveredBlock38Step = 161 ifTrue: [
            recoveredBlock38Stack1 := [:recoveredBlock38Block161Arg1 | 
    | recoveredBlock38Block161Value0 recoveredBlock38Block161Value1 recoveredBlock38Block161Value2 recoveredBlock38Block161Value3 |
    recoveredBlock38Block161Value0 := recoveredLocal1.
    recoveredBlock38Block161Value1 := recoveredBlock38Block161Value0.
    recoveredBlock38Block161Value2 := recoveredBlock38Block161Arg1.
    (recoveredBlock38Block161Value1) nextPutAll: (recoveredBlock38Block161Value2).
    recoveredBlock38Block161Value3 := (recoveredBlock38Block161Value0) cr.
    recoveredBlock38Block161Value3
].
            recoveredBlock38PC := 178.
        ].
        recoveredBlock38Step = 178 ifTrue: [
            (recoveredBlock38Stack0) do: (recoveredBlock38Stack1).
            recoveredBlock38PC := 180.
        ].
        recoveredBlock38Step = 180 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal3.
            recoveredBlock38PC := 183.
        ].
        recoveredBlock38Step = 183 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) notEmpty.
            recoveredBlock38PC := 185.
        ].
        recoveredBlock38Step = 185 ifTrue: [
            (recoveredBlock38Stack0) ifTrue: [recoveredBlock38PC := 188] ifFalse: [recoveredBlock38PC := 220].
        ].
        recoveredBlock38Step = 188 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal1.
            recoveredBlock38PC := 191.
        ].
        recoveredBlock38Step = 191 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Stack0.
            recoveredBlock38PC := 192.
        ].
        recoveredBlock38Step = 192 ifTrue: [
            recoveredBlock38Stack2 := '[LABEL]'.
            recoveredBlock38PC := 194.
        ].
        recoveredBlock38Step = 194 ifTrue: [
            (recoveredBlock38Stack1) nextPutAll: (recoveredBlock38Stack2).
            recoveredBlock38PC := 196.
        ].
        recoveredBlock38Step = 196 ifTrue: [
            (recoveredBlock38Stack0) cr.
            recoveredBlock38PC := 198.
        ].
        recoveredBlock38Step = 198 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal3.
            recoveredBlock38PC := 201.
        ].
        recoveredBlock38Step = 201 ifTrue: [
            recoveredBlock38Stack1 := [:recoveredBlock38Block201Arg1 | 
    | recoveredBlock38Block201Value0 recoveredBlock38Block201Value1 recoveredBlock38Block201Value2 recoveredBlock38Block201Value3 |
    recoveredBlock38Block201Value0 := recoveredLocal1.
    recoveredBlock38Block201Value1 := recoveredBlock38Block201Value0.
    recoveredBlock38Block201Value2 := recoveredBlock38Block201Arg1.
    (recoveredBlock38Block201Value1) nextPutAll: (recoveredBlock38Block201Value2).
    recoveredBlock38Block201Value3 := (recoveredBlock38Block201Value0) cr.
    recoveredBlock38Block201Value3
].
            recoveredBlock38PC := 218.
        ].
        recoveredBlock38Step = 218 ifTrue: [
            (recoveredBlock38Stack0) do: (recoveredBlock38Stack1).
            recoveredBlock38PC := 220.
        ].
        recoveredBlock38Step = 220 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal1.
            recoveredBlock38PC := 223.
        ].
        recoveredBlock38Step = 223 ifTrue: [
            (recoveredBlock38Stack0) close.
            recoveredBlock38PC := 225.
        ].
        recoveredBlock38Step = 225 ifTrue: [
            recoveredBlock38Stack0 := self.
            recoveredBlock38PC := 226.
        ].
        recoveredBlock38Step = 226 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) shell.
            recoveredBlock38PC := 228.
        ].
        recoveredBlock38Step = 228 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) osWidget.
            recoveredBlock38PC := 230.
        ].
        recoveredBlock38Step = 230 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) clearAppModal.
            recoveredBlock38PC := 232.
        ].
        recoveredBlock38Step = 232 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack0.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    (recoveredValue8) showBusyCursorWhile: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20569784; bytecode file offset 0xe660d8"
!SGSimDataloggerView methodsFor: 'recovered'!
importOldLabelList
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) labelListFileName.
    recoveredValue1 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := SGMonitorStreamDummy.
    recoveredValue5 := (recoveredValue4) create.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := System.
    recoveredValue7 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 recoveredBlock31Value7 recoveredBlock31Value8 recoveredBlock31Value9 recoveredBlock31Value10 recoveredBlock31Value11 recoveredBlock31Value12 recoveredBlock31Value13 recoveredBlock31Value14 recoveredBlock31Value15 recoveredBlock31Value16 recoveredBlock31Value17 recoveredBlock31Value18 recoveredBlock31Value19 recoveredBlock31Value20 |
    recoveredBlock31Value0 := (self) shell.
    recoveredBlock31Value1 := (recoveredBlock31Value0) osWidget.
    (recoveredBlock31Value1) setAppModal.
    recoveredBlock31Value2 := WinProfile.
    recoveredBlock31Value3 := (recoveredBlock31Value2) create.
    recoveredBlock31Value4 := (self) labelListFileName.
    recoveredBlock31Value5 := (recoveredBlock31Value3) getSectionEntries: ('LABEL') from: (recoveredBlock31Value4).
    recoveredLocal5 := recoveredBlock31Value5.
    recoveredBlock31Value6 := WinProfile.
    recoveredBlock31Value7 := (recoveredBlock31Value6) create.
    recoveredBlock31Value8 := (self) labelListFileName.
    recoveredBlock31Value9 := (recoveredBlock31Value7) getSectionEntries: ('RAMCELL') from: (recoveredBlock31Value8).
    recoveredLocal6 := recoveredBlock31Value9.
    recoveredBlock31Value10 := recoveredLocal5.
    recoveredBlock31Value11 := (recoveredBlock31Value10) keys.
    recoveredBlock31Value12 := (recoveredBlock31Value11) asOrderedCollection.
    recoveredBlock31Value13 := recoveredLocal6.
    recoveredBlock31Value14 := (recoveredBlock31Value13) keys.
    recoveredBlock31Value15 := (recoveredBlock31Value14) asOrderedCollection.
    recoveredBlock31Value16 := (recoveredBlock31Value12) , (recoveredBlock31Value15).
    recoveredBlock31Value17 := [:recoveredBlock31Block86Arg1 | 
    | recoveredBlock31Block86Local1 recoveredBlock31Block86Local2 recoveredBlock31Block86Local3 recoveredBlock31Block86Stack0 recoveredBlock31Block86Stack1 recoveredBlock31Block86Stack2 recoveredBlock31Block86Stack3 recoveredBlock31Block86Stack4 recoveredBlock31Block86PC recoveredBlock31Block86Step recoveredBlock31Block86Done recoveredBlock31Block86Result |
    recoveredBlock31Block86Stack0 := self.
    recoveredBlock31Block86PC := 92.
    recoveredBlock31Block86Done := false.
    [recoveredBlock31Block86Done not] whileTrue: [
        recoveredBlock31Block86Step := recoveredBlock31Block86PC.
        recoveredBlock31Block86Step = 92 ifTrue: [
            recoveredBlock31Block86Stack1 := recoveredBlock31Block86Arg1.
            recoveredBlock31Block86PC := 93.
        ].
        recoveredBlock31Block86Step = 93 ifTrue: [
            recoveredBlock31Block86Stack2 := '.'.
            recoveredBlock31Block86PC := 95.
        ].
        recoveredBlock31Block86Step = 95 ifTrue: [
            recoveredBlock31Block86Stack1 := (recoveredBlock31Block86Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock31Block86Stack2).
            recoveredBlock31Block86PC := 97.
        ].
        recoveredBlock31Block86Step = 97 ifTrue: [
            recoveredBlock31Block86Local1 := recoveredBlock31Block86Stack1.
            recoveredBlock31Block86PC := 98.
        ].
        recoveredBlock31Block86Step = 98 ifTrue: [
            recoveredBlock31Block86Stack1 := ''.
            recoveredBlock31Block86PC := 100.
        ].
        recoveredBlock31Block86Step = 100 ifTrue: [
            recoveredLocal2 := recoveredBlock31Block86Stack1.
            recoveredBlock31Block86PC := 103.
        ].
        recoveredBlock31Block86Step = 103 ifTrue: [
            recoveredBlock31Block86Stack1 := recoveredBlock31Block86Local1.
            recoveredBlock31Block86PC := 104.
        ].
        recoveredBlock31Block86Step = 104 ifTrue: [
            recoveredBlock31Block86Stack2 := [:recoveredBlock31Block86Block104Arg1 | 
    | recoveredBlock31Block86Block104Value0 recoveredBlock31Block86Block104Value1 recoveredBlock31Block86Block104Value2 recoveredBlock31Block86Block104Value3 recoveredBlock31Block86Block104Value4 |
    recoveredBlock31Block86Block104Value0 := recoveredLocal2.
    recoveredBlock31Block86Block104Value1 := recoveredBlock31Block86Block104Arg1.
    recoveredBlock31Block86Block104Value2 := (recoveredBlock31Block86Block104Value0) , (recoveredBlock31Block86Block104Value1).
    recoveredBlock31Block86Block104Value3 := (recoveredBlock31Block86Block104Value2) , ('\').
    recoveredBlock31Block86Block104Value4 := recoveredBlock31Block86Block104Value3.
    recoveredLocal2 := recoveredBlock31Block86Block104Value4.
    recoveredBlock31Block86Block104Value3
].
            recoveredBlock31Block86PC := 125.
        ].
        recoveredBlock31Block86Step = 125 ifTrue: [
            (recoveredBlock31Block86Stack1) reverseDo: (recoveredBlock31Block86Stack2).
            recoveredBlock31Block86PC := 127.
        ].
        recoveredBlock31Block86Step = 127 ifTrue: [
            recoveredBlock31Block86Stack1 := recoveredBlock31Block86Local1.
            recoveredBlock31Block86PC := 128.
        ].
        recoveredBlock31Block86Step = 128 ifTrue: [
            recoveredBlock31Block86Stack1 := (recoveredBlock31Block86Stack1) size.
            recoveredBlock31Block86PC := 130.
        ].
        recoveredBlock31Block86Step = 130 ifTrue: [
            recoveredBlock31Block86Stack2 := 1.
            recoveredBlock31Block86PC := 132.
        ].
        recoveredBlock31Block86Step = 132 ifTrue: [
            recoveredBlock31Block86Stack1 := (recoveredBlock31Block86Stack1) > (recoveredBlock31Block86Stack2).
            recoveredBlock31Block86PC := 133.
        ].
        recoveredBlock31Block86Step = 133 ifTrue: [
            (recoveredBlock31Block86Stack1) ifTrue: [recoveredBlock31Block86PC := 136] ifFalse: [recoveredBlock31Block86PC := 160].
        ].
        recoveredBlock31Block86Step = 136 ifTrue: [
            recoveredBlock31Block86Stack1 := 'Kli'.
            recoveredBlock31Block86PC := 138.
        ].
        recoveredBlock31Block86Step = 138 ifTrue: [
            recoveredBlock31Block86Stack2 := 'Call_60437'.
            recoveredBlock31Block86PC := 140.
        ].
        recoveredBlock31Block86Step = 140 ifTrue: [
            recoveredBlock31Block86Stack1 := (recoveredBlock31Block86Stack1) == (recoveredBlock31Block86Stack2).
            recoveredBlock31Block86PC := 141.
        ].
        recoveredBlock31Block86Step = 141 ifTrue: [
            recoveredBlock31Block86PC := 142.
        ].
        recoveredBlock31Block86Step = 142 ifTrue: [
            recoveredBlock31Block86Stack1 := recoveredLocal2.
            recoveredBlock31Block86PC := 145.
        ].
        recoveredBlock31Block86Step = 145 ifTrue: [
            recoveredBlock31Block86Stack2 := self.
            recoveredBlock31Block86PC := 146.
        ].
        recoveredBlock31Block86Step = 146 ifTrue: [
            recoveredBlock31Block86Stack2 := (recoveredBlock31Block86Stack2) mainController.
            recoveredBlock31Block86PC := 148.
        ].
        recoveredBlock31Block86Step = 148 ifTrue: [
            recoveredBlock31Block86Stack2 := (recoveredBlock31Block86Stack2) getTopClass.
            recoveredBlock31Block86PC := 150.
        ].
        recoveredBlock31Block86Step = 150 ifTrue: [
            recoveredBlock31Block86Stack2 := (recoveredBlock31Block86Stack2) label.
            recoveredBlock31Block86PC := 152.
        ].
        recoveredBlock31Block86Step = 152 ifTrue: [
            recoveredBlock31Block86Stack1 := (recoveredBlock31Block86Stack1) , (recoveredBlock31Block86Stack2).
            recoveredBlock31Block86PC := 154.
        ].
        recoveredBlock31Block86Step = 154 ifTrue: [
            recoveredLocal2 := recoveredBlock31Block86Stack1.
            recoveredBlock31Block86PC := 157.
        ].
        recoveredBlock31Block86Step = 157 ifTrue: [
            recoveredBlock31Block86PC := 176.
        ].
        recoveredBlock31Block86Step = 160 ifTrue: [
            recoveredBlock31Block86Stack1 := recoveredLocal2.
            recoveredBlock31Block86PC := 163.
        ].
        recoveredBlock31Block86Step = 163 ifTrue: [
            recoveredBlock31Block86Stack2 := 1.
            recoveredBlock31Block86PC := 165.
        ].
        recoveredBlock31Block86Step = 165 ifTrue: [
            recoveredBlock31Block86Stack3 := recoveredLocal2.
            recoveredBlock31Block86PC := 168.
        ].
        recoveredBlock31Block86Step = 168 ifTrue: [
            recoveredBlock31Block86Stack3 := (recoveredBlock31Block86Stack3) size.
            recoveredBlock31Block86PC := 170.
        ].
        recoveredBlock31Block86Step = 170 ifTrue: [
            recoveredBlock31Block86Stack3 := (recoveredBlock31Block86Stack3) + (-1).
            recoveredBlock31Block86PC := 171.
        ].
        recoveredBlock31Block86Step = 171 ifTrue: [
            recoveredBlock31Block86Stack1 := (recoveredBlock31Block86Stack1) copyFrom: (recoveredBlock31Block86Stack2) to: (recoveredBlock31Block86Stack3).
            recoveredBlock31Block86PC := 173.
        ].
        recoveredBlock31Block86Step = 173 ifTrue: [
            recoveredLocal2 := recoveredBlock31Block86Stack1.
            recoveredBlock31Block86PC := 176.
        ].
        recoveredBlock31Block86Step = 176 ifTrue: [
            recoveredBlock31Block86Stack1 := nil.
            recoveredBlock31Block86PC := 177.
        ].
        recoveredBlock31Block86Step = 177 ifTrue: [
            recoveredBlock31Block86Stack2 := recoveredLocal2.
            recoveredBlock31Block86PC := 180.
        ].
        recoveredBlock31Block86Step = 180 ifTrue: [
            recoveredBlock31Block86Stack2 := (recoveredBlock31Block86Stack2) notEmpty.
            recoveredBlock31Block86PC := 182.
        ].
        recoveredBlock31Block86Step = 182 ifTrue: [
            (recoveredBlock31Block86Stack2) ifTrue: [recoveredBlock31Block86PC := 186] ifFalse: [recoveredBlock31Block86PC := 195].
        ].
        recoveredBlock31Block86Step = 186 ifTrue: [
            recoveredBlock31Block86PC := 187.
        ].
        recoveredBlock31Block86Step = 187 ifTrue: [
            recoveredBlock31Block86Stack1 := recoveredLocal3.
            recoveredBlock31Block86PC := 190.
        ].
        recoveredBlock31Block86Step = 190 ifTrue: [
            recoveredBlock31Block86Stack2 := recoveredLocal2.
            recoveredBlock31Block86PC := 193.
        ].
        recoveredBlock31Block86Step = 193 ifTrue: [
            recoveredBlock31Block86Stack1 := (recoveredBlock31Block86Stack1) add: (recoveredBlock31Block86Stack2).
            recoveredBlock31Block86PC := 195.
        ].
        recoveredBlock31Block86Step = 195 ifTrue: [
            recoveredBlock31Block86Result := recoveredBlock31Block86Stack1.
            recoveredBlock31Block86Done := true.
        ].
    ].
    recoveredBlock31Block86Result
].
    (recoveredBlock31Value16) do: (recoveredBlock31Value17).
    recoveredBlock31Value18 := (self) shell.
    recoveredBlock31Value19 := (recoveredBlock31Value18) osWidget.
    recoveredBlock31Value20 := (recoveredBlock31Value19) clearAppModal.
    recoveredBlock31Value20
].
    (recoveredValue6) showBusyCursorWhile: (recoveredValue7).
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := (self) addLabels: (recoveredValue8).
    recoveredValue10 := [
    | recoveredBlock214Value0 recoveredBlock214Value1 recoveredBlock214Value2 recoveredBlock214Value3 recoveredBlock214Value4 recoveredBlock214Value5 |
    recoveredBlock214Value0 := RBUserInfo.
    recoveredBlock214Value1 := (self) labelListFileName.
    recoveredBlock214Value2 := ('The file "') , (recoveredBlock214Value1).
    recoveredBlock214Value3 := (recoveredBlock214Value2) , ('" containes no usable labels!!').
    recoveredBlock214Value4 := (recoveredBlock214Value0) errorMessage: (recoveredBlock214Value3).
    recoveredBlock214Value5 := (recoveredBlock214Value4) prompt.
    ^recoveredBlock214Value5
].
    (recoveredValue9) ifNil: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20569920; bytecode file offset 0xe66274"
!SGSimDataloggerView methodsFor: 'recovered'!
importLabelListCSV
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelListFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := CfsReadFileStream.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelListFileName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'The file "'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelListFileName.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := '" could not be opened!!'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 recoveredBlock63Value4 recoveredBlock63Value5 recoveredBlock63Value6 recoveredBlock63Value7 recoveredBlock63Value8 recoveredBlock63Value9 recoveredBlock63Value10 |
    recoveredBlock63Value0 := (self) shell.
    recoveredBlock63Value1 := (recoveredBlock63Value0) osWidget.
    (recoveredBlock63Value1) setAppModal.
    recoveredBlock63Value2 := recoveredLocal2.
    recoveredBlock63Value3 := (recoveredBlock63Value2) contents.
    recoveredBlock63Value4 := (recoveredBlock63Value3) replaceCrLfWith: ($,).
    recoveredBlock63Value5 := (recoveredBlock63Value4) zapBlanks.
    recoveredBlock63Value6 := (recoveredBlock63Value5) asArrayOfSubstringsSeparatedBy: (',').
    recoveredBlock63Value7 := [:recoveredBlock63Block92Arg1 | 
    | recoveredBlock63Block92Local1 recoveredBlock63Block92Stack0 recoveredBlock63Block92Stack1 recoveredBlock63Block92Stack2 recoveredBlock63Block92Stack3 recoveredBlock63Block92Stack4 recoveredBlock63Block92PC recoveredBlock63Block92Step recoveredBlock63Block92Done recoveredBlock63Block92Result |
    recoveredBlock63Block92Stack0 := self.
    recoveredBlock63Block92PC := 98.
    recoveredBlock63Block92Done := false.
    [recoveredBlock63Block92Done not] whileTrue: [
        recoveredBlock63Block92Step := recoveredBlock63Block92PC.
        recoveredBlock63Block92Step = 98 ifTrue: [
            recoveredBlock63Block92Stack1 := ''.
            recoveredBlock63Block92PC := 100.
        ].
        recoveredBlock63Block92Step = 100 ifTrue: [
            recoveredLocal4 := recoveredBlock63Block92Stack1.
            recoveredBlock63Block92PC := 103.
        ].
        recoveredBlock63Block92Step = 103 ifTrue: [
            recoveredBlock63Block92Stack1 := recoveredBlock63Block92Arg1.
            recoveredBlock63Block92PC := 104.
        ].
        recoveredBlock63Block92Step = 104 ifTrue: [
            recoveredBlock63Block92Stack2 := '.'.
            recoveredBlock63Block92PC := 106.
        ].
        recoveredBlock63Block92Step = 106 ifTrue: [
            recoveredBlock63Block92Stack1 := (recoveredBlock63Block92Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock63Block92Stack2).
            recoveredBlock63Block92PC := 108.
        ].
        recoveredBlock63Block92Step = 108 ifTrue: [
            recoveredBlock63Block92Local1 := recoveredBlock63Block92Stack1.
            recoveredBlock63Block92PC := 109.
        ].
        recoveredBlock63Block92Step = 109 ifTrue: [
            recoveredBlock63Block92Stack1 := recoveredBlock63Block92Local1.
            recoveredBlock63Block92PC := 110.
        ].
        recoveredBlock63Block92Step = 110 ifTrue: [
            recoveredBlock63Block92Stack2 := [:recoveredBlock63Block92Block110Arg1 | 
    | recoveredBlock63Block92Block110Value0 recoveredBlock63Block92Block110Value1 recoveredBlock63Block92Block110Value2 recoveredBlock63Block92Block110Value3 recoveredBlock63Block92Block110Value4 |
    recoveredBlock63Block92Block110Value0 := recoveredLocal4.
    recoveredBlock63Block92Block110Value1 := recoveredBlock63Block92Block110Arg1.
    recoveredBlock63Block92Block110Value2 := (recoveredBlock63Block92Block110Value0) , (recoveredBlock63Block92Block110Value1).
    recoveredBlock63Block92Block110Value3 := (recoveredBlock63Block92Block110Value2) , ('\').
    recoveredBlock63Block92Block110Value4 := recoveredBlock63Block92Block110Value3.
    recoveredLocal4 := recoveredBlock63Block92Block110Value4.
    recoveredBlock63Block92Block110Value3
].
            recoveredBlock63Block92PC := 131.
        ].
        recoveredBlock63Block92Step = 131 ifTrue: [
            (recoveredBlock63Block92Stack1) reverseDo: (recoveredBlock63Block92Stack2).
            recoveredBlock63Block92PC := 133.
        ].
        recoveredBlock63Block92Step = 133 ifTrue: [
            recoveredBlock63Block92Stack1 := recoveredBlock63Block92Local1.
            recoveredBlock63Block92PC := 134.
        ].
        recoveredBlock63Block92Step = 134 ifTrue: [
            recoveredBlock63Block92Stack1 := (recoveredBlock63Block92Stack1) size.
            recoveredBlock63Block92PC := 136.
        ].
        recoveredBlock63Block92Step = 136 ifTrue: [
            recoveredBlock63Block92Stack2 := 1.
            recoveredBlock63Block92PC := 138.
        ].
        recoveredBlock63Block92Step = 138 ifTrue: [
            recoveredBlock63Block92Stack1 := (recoveredBlock63Block92Stack1) > (recoveredBlock63Block92Stack2).
            recoveredBlock63Block92PC := 139.
        ].
        recoveredBlock63Block92Step = 139 ifTrue: [
            (recoveredBlock63Block92Stack1) ifTrue: [recoveredBlock63Block92PC := 142] ifFalse: [recoveredBlock63Block92PC := 160].
        ].
        recoveredBlock63Block92Step = 142 ifTrue: [
            recoveredBlock63Block92Stack1 := recoveredLocal4.
            recoveredBlock63Block92PC := 145.
        ].
        recoveredBlock63Block92Step = 145 ifTrue: [
            recoveredBlock63Block92Stack2 := self.
            recoveredBlock63Block92PC := 146.
        ].
        recoveredBlock63Block92Step = 146 ifTrue: [
            recoveredBlock63Block92Stack2 := (recoveredBlock63Block92Stack2) mainController.
            recoveredBlock63Block92PC := 148.
        ].
        recoveredBlock63Block92Step = 148 ifTrue: [
            recoveredBlock63Block92Stack2 := (recoveredBlock63Block92Stack2) getTopClass.
            recoveredBlock63Block92PC := 150.
        ].
        recoveredBlock63Block92Step = 150 ifTrue: [
            recoveredBlock63Block92Stack2 := (recoveredBlock63Block92Stack2) label.
            recoveredBlock63Block92PC := 152.
        ].
        recoveredBlock63Block92Step = 152 ifTrue: [
            recoveredBlock63Block92Stack1 := (recoveredBlock63Block92Stack1) , (recoveredBlock63Block92Stack2).
            recoveredBlock63Block92PC := 154.
        ].
        recoveredBlock63Block92Step = 154 ifTrue: [
            recoveredLocal4 := recoveredBlock63Block92Stack1.
            recoveredBlock63Block92PC := 157.
        ].
        recoveredBlock63Block92Step = 157 ifTrue: [
            recoveredBlock63Block92PC := 176.
        ].
        recoveredBlock63Block92Step = 160 ifTrue: [
            recoveredBlock63Block92Stack1 := recoveredLocal4.
            recoveredBlock63Block92PC := 163.
        ].
        recoveredBlock63Block92Step = 163 ifTrue: [
            recoveredBlock63Block92Stack2 := 1.
            recoveredBlock63Block92PC := 165.
        ].
        recoveredBlock63Block92Step = 165 ifTrue: [
            recoveredBlock63Block92Stack3 := recoveredLocal4.
            recoveredBlock63Block92PC := 168.
        ].
        recoveredBlock63Block92Step = 168 ifTrue: [
            recoveredBlock63Block92Stack3 := (recoveredBlock63Block92Stack3) size.
            recoveredBlock63Block92PC := 170.
        ].
        recoveredBlock63Block92Step = 170 ifTrue: [
            recoveredBlock63Block92Stack3 := (recoveredBlock63Block92Stack3) + (-1).
            recoveredBlock63Block92PC := 171.
        ].
        recoveredBlock63Block92Step = 171 ifTrue: [
            recoveredBlock63Block92Stack1 := (recoveredBlock63Block92Stack1) copyFrom: (recoveredBlock63Block92Stack2) to: (recoveredBlock63Block92Stack3).
            recoveredBlock63Block92PC := 173.
        ].
        recoveredBlock63Block92Step = 173 ifTrue: [
            recoveredLocal4 := recoveredBlock63Block92Stack1.
            recoveredBlock63Block92PC := 176.
        ].
        recoveredBlock63Block92Step = 176 ifTrue: [
            recoveredBlock63Block92Stack1 := nil.
            recoveredBlock63Block92PC := 177.
        ].
        recoveredBlock63Block92Step = 177 ifTrue: [
            recoveredBlock63Block92Stack2 := recoveredLocal4.
            recoveredBlock63Block92PC := 180.
        ].
        recoveredBlock63Block92Step = 180 ifTrue: [
            recoveredBlock63Block92Stack2 := (recoveredBlock63Block92Stack2) notEmpty.
            recoveredBlock63Block92PC := 182.
        ].
        recoveredBlock63Block92Step = 182 ifTrue: [
            (recoveredBlock63Block92Stack2) ifTrue: [recoveredBlock63Block92PC := 186] ifFalse: [recoveredBlock63Block92PC := 195].
        ].
        recoveredBlock63Block92Step = 186 ifTrue: [
            recoveredBlock63Block92PC := 187.
        ].
        recoveredBlock63Block92Step = 187 ifTrue: [
            recoveredBlock63Block92Stack1 := recoveredLocal5.
            recoveredBlock63Block92PC := 190.
        ].
        recoveredBlock63Block92Step = 190 ifTrue: [
            recoveredBlock63Block92Stack2 := recoveredLocal4.
            recoveredBlock63Block92PC := 193.
        ].
        recoveredBlock63Block92Step = 193 ifTrue: [
            recoveredBlock63Block92Stack1 := (recoveredBlock63Block92Stack1) add: (recoveredBlock63Block92Stack2).
            recoveredBlock63Block92PC := 195.
        ].
        recoveredBlock63Block92Step = 195 ifTrue: [
            recoveredBlock63Block92Result := recoveredBlock63Block92Stack1.
            recoveredBlock63Block92Done := true.
        ].
    ].
    recoveredBlock63Block92Result
].
    (recoveredBlock63Value6) do: (recoveredBlock63Value7).
    recoveredBlock63Value8 := (self) shell.
    recoveredBlock63Value9 := (recoveredBlock63Value8) osWidget.
    recoveredBlock63Value10 := (recoveredBlock63Value9) clearAppModal.
    recoveredBlock63Value10
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) addLabels: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock214Value0 recoveredBlock214Value1 recoveredBlock214Value2 recoveredBlock214Value3 recoveredBlock214Value4 recoveredBlock214Value5 |
    recoveredBlock214Value0 := RBUserInfo.
    recoveredBlock214Value1 := (self) labelListFileName.
    recoveredBlock214Value2 := ('The file "') , (recoveredBlock214Value1).
    recoveredBlock214Value3 := (recoveredBlock214Value2) , ('" containes no usable labels!!').
    recoveredBlock214Value4 := (recoveredBlock214Value0) errorMessage: (recoveredBlock214Value3).
    recoveredBlock214Value5 := (recoveredBlock214Value4) prompt.
    ^recoveredBlock214Value5
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058f114; bytecode file offset 0xe8ba5c"
!SGSimDataloggerView methodsFor: 'recovered'!
loadLabelList
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelListFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := '\'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTopClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := SGSimEnvironment.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSeparatorForTabIndex.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 recoveredBlock45Value4 recoveredBlock45Value5 recoveredBlock45Value6 recoveredBlock45Value7 recoveredBlock45Value8 recoveredBlock45Value9 recoveredBlock45Value10 recoveredBlock45Value11 recoveredBlock45Value12 recoveredBlock45Value13 recoveredBlock45Value14 recoveredBlock45Value15 recoveredBlock45Value16 recoveredBlock45Value17 recoveredBlock45Value18 recoveredBlock45Value19 recoveredBlock45Value20 recoveredBlock45Value21 |
    recoveredBlock45Value0 := (self) shell.
    recoveredBlock45Value1 := (recoveredBlock45Value0) osWidget.
    (recoveredBlock45Value1) setAppModal.
    recoveredBlock45Value2 := OrderedCollection.
    recoveredBlock45Value3 := (recoveredBlock45Value2) new.
    recoveredBlock45Value4 := recoveredBlock45Value3.
    recoveredLocal4 := recoveredBlock45Value4.
    recoveredBlock45Value5 := recoveredBlock45Value3.
    recoveredBlock45Value6 := WinProfile.
    recoveredBlock45Value7 := (recoveredBlock45Value6) create.
    recoveredBlock45Value8 := (self) labelListFileName.
    recoveredBlock45Value9 := (recoveredBlock45Value7) getSectionEntries: ('LABEL') from: (recoveredBlock45Value8).
    recoveredBlock45Value10 := (recoveredBlock45Value9) keys.
    (recoveredBlock45Value5) addAll: (recoveredBlock45Value10).
    recoveredBlock45Value11 := recoveredBlock45Value3.
    recoveredBlock45Value12 := WinProfile.
    recoveredBlock45Value13 := (recoveredBlock45Value12) create.
    recoveredBlock45Value14 := (self) labelListFileName.
    recoveredBlock45Value15 := (recoveredBlock45Value13) getSectionEntries: ('RAMCELL') from: (recoveredBlock45Value14).
    recoveredBlock45Value16 := (recoveredBlock45Value15) keys.
    (recoveredBlock45Value11) addAll: (recoveredBlock45Value16).
    recoveredBlock45Value17 := recoveredLocal4.
    recoveredBlock45Value18 := [:recoveredBlock45Block100Arg1 | 
    | recoveredBlock45Block100Local1 recoveredBlock45Block100Local2 recoveredBlock45Block100Local3 recoveredBlock45Block100Local4 recoveredBlock45Block100Stack0 recoveredBlock45Block100Stack1 recoveredBlock45Block100Stack2 recoveredBlock45Block100Stack3 recoveredBlock45Block100Stack4 recoveredBlock45Block100PC recoveredBlock45Block100Step recoveredBlock45Block100Done recoveredBlock45Block100Result |
    recoveredBlock45Block100Stack0 := self.
    recoveredBlock45Block100PC := 106.
    recoveredBlock45Block100Done := false.
    [recoveredBlock45Block100Done not] whileTrue: [
        recoveredBlock45Block100Step := recoveredBlock45Block100PC.
        recoveredBlock45Block100Step = 106 ifTrue: [
            recoveredBlock45Block100Stack1 := false.
            recoveredBlock45Block100PC := 107.
        ].
        recoveredBlock45Block100Step = 107 ifTrue: [
            recoveredBlock45Block100Local4 := recoveredBlock45Block100Stack1.
            recoveredBlock45Block100PC := 110.
        ].
        recoveredBlock45Block100Step = 110 ifTrue: [
            recoveredBlock45Block100Stack1 := recoveredBlock45Block100Arg1.
            recoveredBlock45Block100PC := 113.
        ].
        recoveredBlock45Block100Step = 113 ifTrue: [
            recoveredBlock45Block100Stack2 := [:recoveredBlock45Block100Block113Arg1 | 
    | recoveredBlock45Block100Block113Stack0 recoveredBlock45Block100Block113Stack1 recoveredBlock45Block100Block113Stack2 recoveredBlock45Block100Block113Stack3 recoveredBlock45Block100Block113PC recoveredBlock45Block100Block113Step recoveredBlock45Block100Block113Done recoveredBlock45Block100Block113Result |
    recoveredBlock45Block100Block113Stack0 := nil.
    recoveredBlock45Block100Block113PC := 120.
    recoveredBlock45Block100Block113Done := false.
    [recoveredBlock45Block100Block113Done not] whileTrue: [
        recoveredBlock45Block100Block113Step := recoveredBlock45Block100Block113PC.
        recoveredBlock45Block100Block113Step = 120 ifTrue: [
            recoveredBlock45Block100Block113Stack1 := recoveredBlock45Block100Block113Arg1.
            recoveredBlock45Block100Block113PC := 121.
        ].
        recoveredBlock45Block100Block113Step = 121 ifTrue: [
            recoveredBlock45Block100Block113Stack2 := $..
            recoveredBlock45Block100Block113PC := 124.
        ].
        recoveredBlock45Block100Block113Step = 124 ifTrue: [
            (recoveredBlock45Block100Block113Stack1 ~~ recoveredBlock45Block100Block113Stack2) ifTrue: [recoveredBlock45Block100Block113PC := 140] ifFalse: [recoveredBlock45Block100Block113PC := 128].
        ].
        recoveredBlock45Block100Block113Step = 128 ifTrue: [
            recoveredBlock45Block100Block113Stack1 := true.
            recoveredBlock45Block100Block113PC := 129.
        ].
        recoveredBlock45Block100Block113Step = 129 ifTrue: [
            recoveredBlock45Block100Local4 := recoveredBlock45Block100Block113Stack1.
            recoveredBlock45Block100Block113PC := 132.
        ].
        recoveredBlock45Block100Block113Step = 132 ifTrue: [
            recoveredBlock45Block100Block113Stack1 := $\.
            recoveredBlock45Block100Block113PC := 136.
        ].
        recoveredBlock45Block100Block113Step = 136 ifTrue: [
            recoveredBlock45Block100Block113PC := 141.
        ].
        recoveredBlock45Block100Block113Step = 140 ifTrue: [
            recoveredBlock45Block100Block113Stack1 := recoveredBlock45Block100Block113Arg1.
            recoveredBlock45Block100Block113PC := 141.
        ].
        recoveredBlock45Block100Block113Step = 141 ifTrue: [
            recoveredBlock45Block100Block113Result := recoveredBlock45Block100Block113Stack1.
            recoveredBlock45Block100Block113Done := true.
        ].
    ].
    recoveredBlock45Block100Block113Result
].
            recoveredBlock45Block100PC := 142.
        ].
        recoveredBlock45Block100Step = 142 ifTrue: [
            recoveredBlock45Block100Stack1 := (recoveredBlock45Block100Stack1) collect: (recoveredBlock45Block100Stack2).
            recoveredBlock45Block100PC := 144.
        ].
        recoveredBlock45Block100Step = 144 ifTrue: [
            recoveredBlock45Block100Local3 := recoveredBlock45Block100Stack1.
            recoveredBlock45Block100PC := 147.
        ].
        recoveredBlock45Block100Step = 147 ifTrue: [
            recoveredBlock45Block100Stack1 := recoveredBlock45Block100Local4.
            recoveredBlock45Block100PC := 150.
        ].
        recoveredBlock45Block100Step = 150 ifTrue: [
            (recoveredBlock45Block100Stack1) ifTrue: [recoveredBlock45Block100PC := 154] ifFalse: [recoveredBlock45Block100PC := 165].
        ].
        recoveredBlock45Block100Step = 154 ifTrue: [
            recoveredBlock45Block100Stack1 := recoveredBlock45Block100Local3.
            recoveredBlock45Block100PC := 157.
        ].
        recoveredBlock45Block100Step = 157 ifTrue: [
            recoveredBlock45Block100Stack2 := recoveredLocal2.
            recoveredBlock45Block100PC := 160.
        ].
        recoveredBlock45Block100Step = 160 ifTrue: [
            recoveredBlock45Block100Stack1 := (recoveredBlock45Block100Stack1) , (recoveredBlock45Block100Stack2).
            recoveredBlock45Block100PC := 162.
        ].
        recoveredBlock45Block100Step = 162 ifTrue: [
            recoveredBlock45Block100Local3 := recoveredBlock45Block100Stack1.
            recoveredBlock45Block100PC := 165.
        ].
        recoveredBlock45Block100Step = 165 ifTrue: [
            recoveredBlock45Block100Stack1 := recoveredBlock45Block100Local3.
            recoveredBlock45Block100PC := 168.
        ].
        recoveredBlock45Block100Step = 168 ifTrue: [
            recoveredBlock45Block100Stack2 := recoveredLocal2.
            recoveredBlock45Block100PC := 171.
        ].
        recoveredBlock45Block100Step = 171 ifTrue: [
            recoveredBlock45Block100Stack3 := recoveredBlock45Block100Local4.
            recoveredBlock45Block100PC := 174.
        ].
        recoveredBlock45Block100Step = 174 ifTrue: [
            recoveredBlock45Block100Stack0 := (recoveredBlock45Block100Stack0) getSimNodeForLabel: (recoveredBlock45Block100Stack1) projectLabel: (recoveredBlock45Block100Stack2) isHierarchicalLabel: (recoveredBlock45Block100Stack3).
            recoveredBlock45Block100PC := 177.
        ].
        recoveredBlock45Block100Step = 177 ifTrue: [
            recoveredBlock45Block100Local1 := recoveredBlock45Block100Stack0.
            recoveredBlock45Block100PC := 180.
        ].
        recoveredBlock45Block100Step = 180 ifTrue: [
            recoveredBlock45Block100Stack0 := recoveredBlock45Block100Local1.
            recoveredBlock45Block100PC := 183.
        ].
        recoveredBlock45Block100Step = 183 ifTrue: [
            (recoveredBlock45Block100Stack0 ~~ nil) ifTrue: [recoveredBlock45Block100PC := 215] ifFalse: [recoveredBlock45Block100PC := 186].
        ].
        recoveredBlock45Block100Step = 186 ifTrue: [
            recoveredBlock45Block100Stack0 := recoveredBlock45Block100Local3.
            recoveredBlock45Block100PC := 189.
        ].
        recoveredBlock45Block100Step = 189 ifTrue: [
            recoveredBlock45Block100Stack1 := recoveredLocal1.
            recoveredBlock45Block100PC := 192.
        ].
        recoveredBlock45Block100Step = 192 ifTrue: [
            recoveredBlock45Block100Stack0 := (recoveredBlock45Block100Stack0) asArrayOfSubstringsSeparatedBy: (recoveredBlock45Block100Stack1).
            recoveredBlock45Block100PC := 194.
        ].
        recoveredBlock45Block100Step = 194 ifTrue: [
            recoveredBlock45Block100Stack0 := (recoveredBlock45Block100Stack0) last.
            recoveredBlock45Block100PC := 196.
        ].
        recoveredBlock45Block100Step = 196 ifTrue: [
            recoveredBlock45Block100Local2 := recoveredBlock45Block100Stack0.
            recoveredBlock45Block100PC := 199.
        ].
        recoveredBlock45Block100Step = 199 ifTrue: [
            recoveredBlock45Block100Stack0 := self.
            recoveredBlock45Block100PC := 200.
        ].
        recoveredBlock45Block100Step = 200 ifTrue: [
            recoveredBlock45Block100Stack1 := recoveredBlock45Block100Local2.
            recoveredBlock45Block100PC := 203.
        ].
        recoveredBlock45Block100Step = 203 ifTrue: [
            recoveredBlock45Block100Stack2 := recoveredLocal2.
            recoveredBlock45Block100PC := 206.
        ].
        recoveredBlock45Block100Step = 206 ifTrue: [
            recoveredBlock45Block100Stack3 := recoveredBlock45Block100Local4.
            recoveredBlock45Block100PC := 209.
        ].
        recoveredBlock45Block100Step = 209 ifTrue: [
            recoveredBlock45Block100Stack0 := (recoveredBlock45Block100Stack0) getSimNodeForLabel: (recoveredBlock45Block100Stack1) projectLabel: (recoveredBlock45Block100Stack2) isHierarchicalLabel: (recoveredBlock45Block100Stack3).
            recoveredBlock45Block100PC := 212.
        ].
        recoveredBlock45Block100Step = 212 ifTrue: [
            recoveredBlock45Block100Local1 := recoveredBlock45Block100Stack0.
            recoveredBlock45Block100PC := 215.
        ].
        recoveredBlock45Block100Step = 215 ifTrue: [
            recoveredBlock45Block100Stack0 := nil.
            recoveredBlock45Block100PC := 216.
        ].
        recoveredBlock45Block100Step = 216 ifTrue: [
            recoveredBlock45Block100Stack1 := recoveredBlock45Block100Local1.
            recoveredBlock45Block100PC := 219.
        ].
        recoveredBlock45Block100Step = 219 ifTrue: [
            (recoveredBlock45Block100Stack1 == nil) ifTrue: [recoveredBlock45Block100PC := 234] ifFalse: [recoveredBlock45Block100PC := 222].
        ].
        recoveredBlock45Block100Step = 222 ifTrue: [
            recoveredBlock45Block100PC := 223.
        ].
        recoveredBlock45Block100Step = 223 ifTrue: [
            recoveredBlock45Block100Stack0 := recoveredLocal3.
            recoveredBlock45Block100PC := 226.
        ].
        recoveredBlock45Block100Step = 226 ifTrue: [
            recoveredBlock45Block100Stack1 := recoveredBlock45Block100Local3.
            recoveredBlock45Block100PC := 229.
        ].
        recoveredBlock45Block100Step = 229 ifTrue: [
            recoveredBlock45Block100Stack2 := recoveredBlock45Block100Local1.
            recoveredBlock45Block100PC := 232.
        ].
        recoveredBlock45Block100Step = 232 ifTrue: [
            recoveredBlock45Block100Stack0 := (recoveredBlock45Block100Stack0) at: (recoveredBlock45Block100Stack1) put: (recoveredBlock45Block100Stack2).
            recoveredBlock45Block100PC := 234.
        ].
        recoveredBlock45Block100Step = 234 ifTrue: [
            recoveredBlock45Block100Result := recoveredBlock45Block100Stack0.
            recoveredBlock45Block100Done := true.
        ].
    ].
    recoveredBlock45Block100Result
].
    (recoveredBlock45Value17) do: (recoveredBlock45Value18).
    recoveredBlock45Value19 := (self) shell.
    recoveredBlock45Value20 := (recoveredBlock45Value19) osWidget.
    recoveredBlock45Value21 := (recoveredBlock45Value20) clearAppModal.
    recoveredBlock45Value21
].
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) addLabelTable: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 273] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := 'The file "'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelListFileName.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := '" containes no usable labels!!'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a20a4; bytecode file offset 0xe9ea08"
!SGSimDataloggerView methodsFor: 'recovered'!
importLabelListCFG
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelListFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := CfsReadFileStream.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelListFileName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'The file "'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelListFileName.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := '" could not be opened!!'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock63Local1 recoveredBlock63Local2 recoveredBlock63Stack0 recoveredBlock63Stack1 recoveredBlock63Stack2 recoveredBlock63Stack3 recoveredBlock63PC recoveredBlock63Step recoveredBlock63Done recoveredBlock63Result |
    recoveredBlock63Stack0 := self.
    recoveredBlock63PC := 70.
    recoveredBlock63Done := false.
    [recoveredBlock63Done not] whileTrue: [
        recoveredBlock63Step := recoveredBlock63PC.
        recoveredBlock63Step = 70 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) shell.
            recoveredBlock63PC := 72.
        ].
        recoveredBlock63Step = 72 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) osWidget.
            recoveredBlock63PC := 74.
        ].
        recoveredBlock63Step = 74 ifTrue: [
            (recoveredBlock63Stack0) setAppModal.
            recoveredBlock63PC := 76.
        ].
        recoveredBlock63Step = 76 ifTrue: [
            recoveredBlock63Stack0 := self.
            recoveredBlock63PC := 77.
        ].
        recoveredBlock63Step = 77 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) mainController.
            recoveredBlock63PC := 79.
        ].
        recoveredBlock63Step = 79 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) getTopClass.
            recoveredBlock63PC := 81.
        ].
        recoveredBlock63Step = 81 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) label.
            recoveredBlock63PC := 83.
        ].
        recoveredBlock63Step = 83 ifTrue: [
            recoveredLocal1 := recoveredBlock63Stack0.
            recoveredBlock63PC := 86.
        ].
        recoveredBlock63Step = 86 ifTrue: [
            recoveredBlock63PC := 242.
        ].
        recoveredBlock63Step = 90 ifTrue: [
            recoveredBlock63Stack0 := recoveredLocal3.
            recoveredBlock63PC := 93.
        ].
        recoveredBlock63Step = 93 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) nextLine.
            recoveredBlock63PC := 95.
        ].
        recoveredBlock63Step = 95 ifTrue: [
            recoveredLocal2 := recoveredBlock63Stack0.
            recoveredBlock63PC := 98.
        ].
        recoveredBlock63Step = 98 ifTrue: [
            recoveredBlock63Stack0 := recoveredLocal2.
            recoveredBlock63PC := 101.
        ].
        recoveredBlock63Step = 101 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) notEmpty.
            recoveredBlock63PC := 103.
        ].
        recoveredBlock63Step = 103 ifTrue: [
            (recoveredBlock63Stack0) ifTrue: [recoveredBlock63PC := 106] ifFalse: [recoveredBlock63PC := 242].
        ].
        recoveredBlock63Step = 106 ifTrue: [
            recoveredBlock63Stack0 := '/*'.
            recoveredBlock63PC := 108.
        ].
        recoveredBlock63Step = 108 ifTrue: [
            recoveredBlock63Stack1 := recoveredLocal2.
            recoveredBlock63PC := 111.
        ].
        recoveredBlock63Step = 111 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) trimBlanks.
            recoveredBlock63PC := 113.
        ].
        recoveredBlock63Step = 113 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) first.
            recoveredBlock63PC := 115.
        ].
        recoveredBlock63Step = 115 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) includes: (recoveredBlock63Stack1).
            recoveredBlock63PC := 117.
        ].
        recoveredBlock63Step = 117 ifTrue: [
            (recoveredBlock63Stack0) ifTrue: [recoveredBlock63PC := 242] ifFalse: [recoveredBlock63PC := 120].
        ].
        recoveredBlock63Step = 120 ifTrue: [
            recoveredBlock63Stack0 := recoveredLocal2.
            recoveredBlock63PC := 123.
        ].
        recoveredBlock63Step = 123 ifTrue: [
            recoveredBlock63Stack1 := ';'.
            recoveredBlock63PC := 125.
        ].
        recoveredBlock63Step = 125 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) asArrayOfSubstringsSeparatedBy: (recoveredBlock63Stack1).
            recoveredBlock63PC := 127.
        ].
        recoveredBlock63Step = 127 ifTrue: [
            recoveredBlock63Stack1 := recoveredBlock63Stack0.
            recoveredBlock63PC := 128.
        ].
        recoveredBlock63Step = 128 ifTrue: [
            recoveredBlock63Local2 := recoveredBlock63Stack1.
            recoveredBlock63PC := 129.
        ].
        recoveredBlock63Step = 129 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) notEmpty.
            recoveredBlock63PC := 131.
        ].
        recoveredBlock63Step = 131 ifTrue: [
            (recoveredBlock63Stack0) ifTrue: [recoveredBlock63PC := 134] ifFalse: [recoveredBlock63PC := 240].
        ].
        recoveredBlock63Step = 134 ifTrue: [
            recoveredBlock63Stack0 := ''.
            recoveredBlock63PC := 136.
        ].
        recoveredBlock63Step = 136 ifTrue: [
            recoveredLocal5 := recoveredBlock63Stack0.
            recoveredBlock63PC := 139.
        ].
        recoveredBlock63Step = 139 ifTrue: [
            recoveredBlock63Stack0 := recoveredBlock63Local2.
            recoveredBlock63PC := 140.
        ].
        recoveredBlock63Step = 140 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) first.
            recoveredBlock63PC := 142.
        ].
        recoveredBlock63Step = 142 ifTrue: [
            recoveredBlock63Stack1 := '.'.
            recoveredBlock63PC := 144.
        ].
        recoveredBlock63Step = 144 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) asArrayOfSubstringsSeparatedBy: (recoveredBlock63Stack1).
            recoveredBlock63PC := 146.
        ].
        recoveredBlock63Step = 146 ifTrue: [
            recoveredBlock63Local1 := recoveredBlock63Stack0.
            recoveredBlock63PC := 147.
        ].
        recoveredBlock63Step = 147 ifTrue: [
            recoveredBlock63Stack0 := 'Kli'.
            recoveredBlock63PC := 149.
        ].
        recoveredBlock63Step = 149 ifTrue: [
            recoveredBlock63Stack1 := 'Call_2007400173'.
            recoveredBlock63PC := 151.
        ].
        recoveredBlock63Step = 151 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) == (recoveredBlock63Stack1).
            recoveredBlock63PC := 152.
        ].
        recoveredBlock63Step = 152 ifTrue: [
            recoveredBlock63PC := 153.
        ].
        recoveredBlock63Step = 153 ifTrue: [
            recoveredBlock63Stack0 := recoveredBlock63Local1.
            recoveredBlock63PC := 154.
        ].
        recoveredBlock63Step = 154 ifTrue: [
            recoveredBlock63Stack1 := [:recoveredBlock63Block154Arg1 | 
    | recoveredBlock63Block154Value0 recoveredBlock63Block154Value1 recoveredBlock63Block154Value2 recoveredBlock63Block154Value3 recoveredBlock63Block154Value4 |
    recoveredBlock63Block154Value0 := recoveredLocal5.
    recoveredBlock63Block154Value1 := recoveredBlock63Block154Arg1.
    recoveredBlock63Block154Value2 := (recoveredBlock63Block154Value0) , (recoveredBlock63Block154Value1).
    recoveredBlock63Block154Value3 := (recoveredBlock63Block154Value2) , ('\').
    recoveredBlock63Block154Value4 := recoveredBlock63Block154Value3.
    recoveredLocal5 := recoveredBlock63Block154Value4.
    recoveredBlock63Block154Value3
].
            recoveredBlock63PC := 175.
        ].
        recoveredBlock63Step = 175 ifTrue: [
            (recoveredBlock63Stack0) do: (recoveredBlock63Stack1).
            recoveredBlock63PC := 177.
        ].
        recoveredBlock63Step = 177 ifTrue: [
            recoveredBlock63Stack0 := recoveredBlock63Local1.
            recoveredBlock63PC := 178.
        ].
        recoveredBlock63Step = 178 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) size.
            recoveredBlock63PC := 180.
        ].
        recoveredBlock63Step = 180 ifTrue: [
            recoveredBlock63Stack1 := 1.
            recoveredBlock63PC := 182.
        ].
        recoveredBlock63Step = 182 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) > (recoveredBlock63Stack1).
            recoveredBlock63PC := 183.
        ].
        recoveredBlock63Step = 183 ifTrue: [
            (recoveredBlock63Stack0) ifTrue: [recoveredBlock63PC := 186] ifFalse: [recoveredBlock63PC := 206].
        ].
        recoveredBlock63Step = 186 ifTrue: [
            recoveredBlock63Stack0 := 'Kli'.
            recoveredBlock63PC := 188.
        ].
        recoveredBlock63Step = 188 ifTrue: [
            recoveredBlock63Stack1 := 'Call_2007400173'.
            recoveredBlock63PC := 190.
        ].
        recoveredBlock63Step = 190 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) == (recoveredBlock63Stack1).
            recoveredBlock63PC := 191.
        ].
        recoveredBlock63Step = 191 ifTrue: [
            recoveredBlock63PC := 192.
        ].
        recoveredBlock63Step = 192 ifTrue: [
            recoveredBlock63Stack0 := recoveredLocal5.
            recoveredBlock63PC := 195.
        ].
        recoveredBlock63Step = 195 ifTrue: [
            recoveredBlock63Stack1 := recoveredLocal1.
            recoveredBlock63PC := 198.
        ].
        recoveredBlock63Step = 198 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) , (recoveredBlock63Stack1).
            recoveredBlock63PC := 200.
        ].
        recoveredBlock63Step = 200 ifTrue: [
            recoveredLocal5 := recoveredBlock63Stack0.
            recoveredBlock63PC := 203.
        ].
        recoveredBlock63Step = 203 ifTrue: [
            recoveredBlock63PC := 222.
        ].
        recoveredBlock63Step = 206 ifTrue: [
            recoveredBlock63Stack0 := recoveredLocal5.
            recoveredBlock63PC := 209.
        ].
        recoveredBlock63Step = 209 ifTrue: [
            recoveredBlock63Stack1 := 1.
            recoveredBlock63PC := 211.
        ].
        recoveredBlock63Step = 211 ifTrue: [
            recoveredBlock63Stack2 := recoveredLocal5.
            recoveredBlock63PC := 214.
        ].
        recoveredBlock63Step = 214 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) size.
            recoveredBlock63PC := 216.
        ].
        recoveredBlock63Step = 216 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) + (-1).
            recoveredBlock63PC := 217.
        ].
        recoveredBlock63Step = 217 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) copyFrom: (recoveredBlock63Stack1) to: (recoveredBlock63Stack2).
            recoveredBlock63PC := 219.
        ].
        recoveredBlock63Step = 219 ifTrue: [
            recoveredLocal5 := recoveredBlock63Stack0.
            recoveredBlock63PC := 222.
        ].
        recoveredBlock63Step = 222 ifTrue: [
            recoveredBlock63Stack0 := recoveredLocal5.
            recoveredBlock63PC := 225.
        ].
        recoveredBlock63Step = 225 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) notEmpty.
            recoveredBlock63PC := 227.
        ].
        recoveredBlock63Step = 227 ifTrue: [
            (recoveredBlock63Stack0) ifTrue: [recoveredBlock63PC := 230] ifFalse: [recoveredBlock63PC := 238].
        ].
        recoveredBlock63Step = 230 ifTrue: [
            recoveredBlock63Stack0 := recoveredLocal6.
            recoveredBlock63PC := 233.
        ].
        recoveredBlock63Step = 233 ifTrue: [
            recoveredBlock63Stack1 := recoveredLocal5.
            recoveredBlock63PC := 236.
        ].
        recoveredBlock63Step = 236 ifTrue: [
            (recoveredBlock63Stack0) add: (recoveredBlock63Stack1).
            recoveredBlock63PC := 238.
        ].
        recoveredBlock63Step = 238 ifTrue: [
            recoveredBlock63Stack0 := nil.
            recoveredBlock63PC := 239.
        ].
        recoveredBlock63Step = 239 ifTrue: [
            recoveredBlock63Local1 := recoveredBlock63Stack0.
            recoveredBlock63PC := 240.
        ].
        recoveredBlock63Step = 240 ifTrue: [
            recoveredBlock63Stack0 := nil.
            recoveredBlock63PC := 241.
        ].
        recoveredBlock63Step = 241 ifTrue: [
            recoveredBlock63Local2 := recoveredBlock63Stack0.
            recoveredBlock63PC := 242.
        ].
        recoveredBlock63Step = 242 ifTrue: [
            recoveredBlock63Stack0 := recoveredLocal3.
            recoveredBlock63PC := 245.
        ].
        recoveredBlock63Step = 245 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) atEnd.
            recoveredBlock63PC := 247.
        ].
        recoveredBlock63Step = 247 ifTrue: [
            (recoveredBlock63Stack0) ifTrue: [recoveredBlock63PC := 250] ifFalse: [recoveredBlock63PC := 90].
        ].
        recoveredBlock63Step = 250 ifTrue: [
            recoveredBlock63Stack0 := self.
            recoveredBlock63PC := 251.
        ].
        recoveredBlock63Step = 251 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) shell.
            recoveredBlock63PC := 253.
        ].
        recoveredBlock63Step = 253 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) osWidget.
            recoveredBlock63PC := 255.
        ].
        recoveredBlock63Step = 255 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) clearAppModal.
            recoveredBlock63PC := 257.
        ].
        recoveredBlock63Step = 257 ifTrue: [
            recoveredBlock63Result := recoveredBlock63Stack0.
            recoveredBlock63Done := true.
        ].
    ].
    recoveredBlock63Result
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) addLabels: (recoveredStack1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock266Value0 recoveredBlock266Value1 recoveredBlock266Value2 recoveredBlock266Value3 recoveredBlock266Value4 recoveredBlock266Value5 |
    recoveredBlock266Value0 := RBUserInfo.
    recoveredBlock266Value1 := (self) labelListFileName.
    recoveredBlock266Value2 := ('The file "') , (recoveredBlock266Value1).
    recoveredBlock266Value3 := (recoveredBlock266Value2) , ('" containes no usable labels!!').
    recoveredBlock266Value4 := (recoveredBlock266Value0) errorMessage: (recoveredBlock266Value3).
    recoveredBlock266Value5 := (recoveredBlock266Value4) prompt.
    ^recoveredBlock266Value5
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ca3d8; bytecode file offset 0xec6d44"
!SGSimDataloggerView methodsFor: 'recovered'!
addLabels: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := (self) shell.
    recoveredBlock27Value1 := (recoveredBlock27Value0) osWidget.
    (recoveredBlock27Value1) setAppModal.
    recoveredBlock27Value2 := recoveredArg1.
    recoveredBlock27Value3 := [:recoveredBlock27Block43Arg1 | 
    | recoveredBlock27Block43Local1 recoveredBlock27Block43Local2 recoveredBlock27Block43Stack0 recoveredBlock27Block43Stack1 recoveredBlock27Block43Stack2 recoveredBlock27Block43Stack3 recoveredBlock27Block43Stack4 recoveredBlock27Block43Stack5 recoveredBlock27Block43Stack6 recoveredBlock27Block43PC recoveredBlock27Block43Step recoveredBlock27Block43Done recoveredBlock27Block43Result |
    recoveredBlock27Block43Stack0 := self.
    recoveredBlock27Block43PC := 50.
    recoveredBlock27Block43Done := false.
    [recoveredBlock27Block43Done not] whileTrue: [
        recoveredBlock27Block43Step := recoveredBlock27Block43PC.
        recoveredBlock27Block43Step = 50 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Arg1.
            recoveredBlock27Block43PC := 51.
        ].
        recoveredBlock27Block43Step = 51 ifTrue: [
            recoveredBlock27Block43Local2 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 52.
        ].
        recoveredBlock27Block43Step = 52 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Arg1.
            recoveredBlock27Block43PC := 53.
        ].
        recoveredBlock27Block43Step = 53 ifTrue: [
            recoveredBlock27Block43Stack2 := '__'.
            recoveredBlock27Block43PC := 55.
        ].
        recoveredBlock27Block43Step = 55 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) includesSubstring: (recoveredBlock27Block43Stack2).
            recoveredBlock27Block43PC := 57.
        ].
        recoveredBlock27Block43Step = 57 ifTrue: [
            (recoveredBlock27Block43Stack1) ifTrue: [recoveredBlock27Block43PC := 60] ifFalse: [recoveredBlock27Block43PC := 166].
        ].
        recoveredBlock27Block43Step = 60 ifTrue: [
            recoveredBlock27Block43Stack1 := 'Kli'.
            recoveredBlock27Block43PC := 62.
        ].
        recoveredBlock27Block43Step = 62 ifTrue: [
            recoveredBlock27Block43Stack2 := 'Call_74369'.
            recoveredBlock27Block43PC := 64.
        ].
        recoveredBlock27Block43Step = 64 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) == (recoveredBlock27Block43Stack2).
            recoveredBlock27Block43PC := 65.
        ].
        recoveredBlock27Block43Step = 65 ifTrue: [
            recoveredBlock27Block43PC := 66.
        ].
        recoveredBlock27Block43Step = 66 ifTrue: [
            recoveredBlock27Block43Stack1 := nil.
            recoveredBlock27Block43PC := 67.
        ].
        recoveredBlock27Block43Step = 67 ifTrue: [
            recoveredLocal3 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 70.
        ].
        recoveredBlock27Block43Step = 70 ifTrue: [
            recoveredBlock27Block43Stack1 := nil.
            recoveredBlock27Block43PC := 71.
        ].
        recoveredBlock27Block43Step = 71 ifTrue: [
            recoveredLocal2 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 74.
        ].
        recoveredBlock27Block43Step = 74 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Local2.
            recoveredBlock27Block43PC := 75.
        ].
        recoveredBlock27Block43Step = 75 ifTrue: [
            recoveredBlock27Block43Stack2 := 1.
            recoveredBlock27Block43PC := 77.
        ].
        recoveredBlock27Block43Step = 77 ifTrue: [
            recoveredBlock27Block43Stack3 := recoveredBlock27Block43Local2.
            recoveredBlock27Block43PC := 78.
        ].
        recoveredBlock27Block43Step = 78 ifTrue: [
            recoveredBlock27Block43Stack4 := '__'.
            recoveredBlock27Block43PC := 80.
        ].
        recoveredBlock27Block43Step = 80 ifTrue: [
            recoveredBlock27Block43Stack3 := (recoveredBlock27Block43Stack3) indexOfString: (recoveredBlock27Block43Stack4).
            recoveredBlock27Block43PC := 82.
        ].
        recoveredBlock27Block43Step = 82 ifTrue: [
            recoveredBlock27Block43Stack3 := (recoveredBlock27Block43Stack3) + (-1).
            recoveredBlock27Block43PC := 83.
        ].
        recoveredBlock27Block43Step = 83 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) copyFrom: (recoveredBlock27Block43Stack2) to: (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 85.
        ].
        recoveredBlock27Block43Step = 85 ifTrue: [
            recoveredBlock27Block43Local1 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 86.
        ].
        recoveredBlock27Block43Step = 86 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Local1.
            recoveredBlock27Block43PC := 87.
        ].
        recoveredBlock27Block43Step = 87 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) first.
            recoveredBlock27Block43PC := 89.
        ].
        recoveredBlock27Block43Step = 89 ifTrue: [
            recoveredBlock27Block43Stack2 := $x.
            recoveredBlock27Block43PC := 92.
        ].
        recoveredBlock27Block43Step = 92 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) = (recoveredBlock27Block43Stack2).
            recoveredBlock27Block43PC := 93.
        ].
        recoveredBlock27Block43Step = 93 ifTrue: [
            (recoveredBlock27Block43Stack1) ifTrue: [recoveredBlock27Block43PC := 96] ifFalse: [recoveredBlock27Block43PC := 164].
        ].
        recoveredBlock27Block43Step = 96 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Local1.
            recoveredBlock27Block43PC := 97.
        ].
        recoveredBlock27Block43Step = 97 ifTrue: [
            recoveredBlock27Block43Stack2 := $y.
            recoveredBlock27Block43PC := 100.
        ].
        recoveredBlock27Block43Step = 100 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) includes: (recoveredBlock27Block43Stack2).
            recoveredBlock27Block43PC := 102.
        ].
        recoveredBlock27Block43Step = 102 ifTrue: [
            (recoveredBlock27Block43Stack1) ifTrue: [recoveredBlock27Block43PC := 106] ifFalse: [recoveredBlock27Block43PC := 138].
        ].
        recoveredBlock27Block43Step = 106 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Local1.
            recoveredBlock27Block43PC := 107.
        ].
        recoveredBlock27Block43Step = 107 ifTrue: [
            recoveredBlock27Block43Stack2 := 2.
            recoveredBlock27Block43PC := 109.
        ].
        recoveredBlock27Block43Step = 109 ifTrue: [
            recoveredBlock27Block43Stack3 := recoveredBlock27Block43Local1.
            recoveredBlock27Block43PC := 110.
        ].
        recoveredBlock27Block43Step = 110 ifTrue: [
            recoveredBlock27Block43Stack4 := 'y'.
            recoveredBlock27Block43PC := 112.
        ].
        recoveredBlock27Block43Step = 112 ifTrue: [
            recoveredBlock27Block43Stack3 := (recoveredBlock27Block43Stack3) indexOfString: (recoveredBlock27Block43Stack4).
            recoveredBlock27Block43PC := 114.
        ].
        recoveredBlock27Block43Step = 114 ifTrue: [
            recoveredBlock27Block43Stack3 := (recoveredBlock27Block43Stack3) + (-1).
            recoveredBlock27Block43PC := 115.
        ].
        recoveredBlock27Block43Step = 115 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) copyFrom: (recoveredBlock27Block43Stack2) to: (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 117.
        ].
        recoveredBlock27Block43Step = 117 ifTrue: [
            recoveredLocal3 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 120.
        ].
        recoveredBlock27Block43Step = 120 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Local1.
            recoveredBlock27Block43PC := 121.
        ].
        recoveredBlock27Block43Step = 121 ifTrue: [
            recoveredBlock27Block43Stack2 := recoveredBlock27Block43Local1.
            recoveredBlock27Block43PC := 122.
        ].
        recoveredBlock27Block43Step = 122 ifTrue: [
            recoveredBlock27Block43Stack3 := 'y'.
            recoveredBlock27Block43PC := 124.
        ].
        recoveredBlock27Block43Step = 124 ifTrue: [
            recoveredBlock27Block43Stack2 := (recoveredBlock27Block43Stack2) indexOfString: (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 126.
        ].
        recoveredBlock27Block43Step = 126 ifTrue: [
            recoveredBlock27Block43Stack2 := (recoveredBlock27Block43Stack2) + (1).
            recoveredBlock27Block43PC := 127.
        ].
        recoveredBlock27Block43Step = 127 ifTrue: [
            recoveredBlock27Block43Stack3 := recoveredBlock27Block43Local1.
            recoveredBlock27Block43PC := 128.
        ].
        recoveredBlock27Block43Step = 128 ifTrue: [
            recoveredBlock27Block43Stack3 := (recoveredBlock27Block43Stack3) size.
            recoveredBlock27Block43PC := 130.
        ].
        recoveredBlock27Block43Step = 130 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) copyFrom: (recoveredBlock27Block43Stack2) to: (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 132.
        ].
        recoveredBlock27Block43Step = 132 ifTrue: [
            recoveredLocal2 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 135.
        ].
        recoveredBlock27Block43Step = 135 ifTrue: [
            recoveredBlock27Block43PC := 149.
        ].
        recoveredBlock27Block43Step = 138 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Local1.
            recoveredBlock27Block43PC := 139.
        ].
        recoveredBlock27Block43Step = 139 ifTrue: [
            recoveredBlock27Block43Stack2 := 2.
            recoveredBlock27Block43PC := 141.
        ].
        recoveredBlock27Block43Step = 141 ifTrue: [
            recoveredBlock27Block43Stack3 := recoveredBlock27Block43Local1.
            recoveredBlock27Block43PC := 142.
        ].
        recoveredBlock27Block43Step = 142 ifTrue: [
            recoveredBlock27Block43Stack3 := (recoveredBlock27Block43Stack3) size.
            recoveredBlock27Block43PC := 144.
        ].
        recoveredBlock27Block43Step = 144 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) copyFrom: (recoveredBlock27Block43Stack2) to: (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 146.
        ].
        recoveredBlock27Block43Step = 146 ifTrue: [
            recoveredLocal3 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 149.
        ].
        recoveredBlock27Block43Step = 149 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Local2.
            recoveredBlock27Block43PC := 150.
        ].
        recoveredBlock27Block43Step = 150 ifTrue: [
            recoveredBlock27Block43Stack2 := recoveredBlock27Block43Local2.
            recoveredBlock27Block43PC := 151.
        ].
        recoveredBlock27Block43Step = 151 ifTrue: [
            recoveredBlock27Block43Stack3 := '__'.
            recoveredBlock27Block43PC := 153.
        ].
        recoveredBlock27Block43Step = 153 ifTrue: [
            recoveredBlock27Block43Stack2 := (recoveredBlock27Block43Stack2) indexOfString: (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 155.
        ].
        recoveredBlock27Block43Step = 155 ifTrue: [
            recoveredBlock27Block43Stack3 := 2.
            recoveredBlock27Block43PC := 157.
        ].
        recoveredBlock27Block43Step = 157 ifTrue: [
            recoveredBlock27Block43Stack2 := (recoveredBlock27Block43Stack2) + (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 158.
        ].
        recoveredBlock27Block43Step = 158 ifTrue: [
            recoveredBlock27Block43Stack3 := recoveredBlock27Block43Local2.
            recoveredBlock27Block43PC := 159.
        ].
        recoveredBlock27Block43Step = 159 ifTrue: [
            recoveredBlock27Block43Stack3 := (recoveredBlock27Block43Stack3) size.
            recoveredBlock27Block43PC := 161.
        ].
        recoveredBlock27Block43Step = 161 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) copyFrom: (recoveredBlock27Block43Stack2) to: (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 163.
        ].
        recoveredBlock27Block43Step = 163 ifTrue: [
            recoveredBlock27Block43Local2 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 164.
        ].
        recoveredBlock27Block43Step = 164 ifTrue: [
            recoveredBlock27Block43Stack1 := nil.
            recoveredBlock27Block43PC := 165.
        ].
        recoveredBlock27Block43Step = 165 ifTrue: [
            recoveredBlock27Block43Local1 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 166.
        ].
        recoveredBlock27Block43Step = 166 ifTrue: [
            recoveredBlock27Block43Stack0 := (recoveredBlock27Block43Stack0) mainController.
            recoveredBlock27Block43PC := 168.
        ].
        recoveredBlock27Block43Step = 168 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Local2.
            recoveredBlock27Block43PC := 169.
        ].
        recoveredBlock27Block43Step = 169 ifTrue: [
            recoveredBlock27Block43Stack0 := (recoveredBlock27Block43Stack0) getDataElementForLabel: (recoveredBlock27Block43Stack1).
            recoveredBlock27Block43PC := 171.
        ].
        recoveredBlock27Block43Step = 171 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Stack0.
            recoveredBlock27Block43PC := 172.
        ].
        recoveredBlock27Block43Step = 172 ifTrue: [
            recoveredLocal6 := recoveredBlock27Block43Stack1.
            recoveredBlock27Block43PC := 175.
        ].
        recoveredBlock27Block43Step = 175 ifTrue: [
            (recoveredBlock27Block43Stack0 == nil) ifTrue: [recoveredBlock27Block43PC := 284] ifFalse: [recoveredBlock27Block43PC := 178].
        ].
        recoveredBlock27Block43Step = 178 ifTrue: [
            recoveredBlock27Block43Stack0 := recoveredLocal6.
            recoveredBlock27Block43PC := 181.
        ].
        recoveredBlock27Block43Step = 181 ifTrue: [
            recoveredBlock27Block43Stack1 := RBDataVector.
            recoveredBlock27Block43PC := 183.
        ].
        recoveredBlock27Block43Step = 183 ifTrue: [
            recoveredBlock27Block43Stack0 := (recoveredBlock27Block43Stack0) isKindOf: (recoveredBlock27Block43Stack1).
            recoveredBlock27Block43PC := 185.
        ].
        recoveredBlock27Block43Step = 185 ifTrue: [
            (recoveredBlock27Block43Stack0) ifTrue: [recoveredBlock27Block43PC := 188] ifFalse: [recoveredBlock27Block43PC := 272].
        ].
        recoveredBlock27Block43Step = 188 ifTrue: [
            recoveredBlock27Block43Stack0 := nil.
            recoveredBlock27Block43PC := 189.
        ].
        recoveredBlock27Block43Step = 189 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredLocal3.
            recoveredBlock27Block43PC := 192.
        ].
        recoveredBlock27Block43Step = 192 ifTrue: [
            (recoveredBlock27Block43Stack1 == nil) ifTrue: [recoveredBlock27Block43PC := 268] ifFalse: [recoveredBlock27Block43PC := 196].
        ].
        recoveredBlock27Block43Step = 196 ifTrue: [
            recoveredBlock27Block43PC := 197.
        ].
        recoveredBlock27Block43Step = 197 ifTrue: [
            recoveredBlock27Block43Stack0 := recoveredLocal3.
            recoveredBlock27Block43PC := 200.
        ].
        recoveredBlock27Block43Step = 200 ifTrue: [
            recoveredBlock27Block43Stack0 := (recoveredBlock27Block43Stack0) asInteger.
            recoveredBlock27Block43PC := 202.
        ].
        recoveredBlock27Block43Step = 202 ifTrue: [
            recoveredLocal3 := recoveredBlock27Block43Stack0.
            recoveredBlock27Block43PC := 205.
        ].
        recoveredBlock27Block43Step = 205 ifTrue: [
            recoveredBlock27Block43Stack0 := recoveredLocal2.
            recoveredBlock27Block43PC := 208.
        ].
        recoveredBlock27Block43Step = 208 ifTrue: [
            (recoveredBlock27Block43Stack0 == nil) ifTrue: [recoveredBlock27Block43PC := 248] ifFalse: [recoveredBlock27Block43PC := 212].
        ].
        recoveredBlock27Block43Step = 212 ifTrue: [
            recoveredBlock27Block43Stack0 := recoveredLocal2.
            recoveredBlock27Block43PC := 215.
        ].
        recoveredBlock27Block43Step = 215 ifTrue: [
            recoveredBlock27Block43Stack0 := (recoveredBlock27Block43Stack0) asInteger.
            recoveredBlock27Block43PC := 217.
        ].
        recoveredBlock27Block43Step = 217 ifTrue: [
            recoveredLocal2 := recoveredBlock27Block43Stack0.
            recoveredBlock27Block43PC := 220.
        ].
        recoveredBlock27Block43Step = 220 ifTrue: [
            recoveredBlock27Block43Stack0 := recoveredLocal5.
            recoveredBlock27Block43PC := 223.
        ].
        recoveredBlock27Block43Step = 223 ifTrue: [
            recoveredBlock27Block43Stack1 := self.
            recoveredBlock27Block43PC := 224.
        ].
        recoveredBlock27Block43Step = 224 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) simEnvironment.
            recoveredBlock27Block43PC := 226.
        ].
        recoveredBlock27Block43Step = 226 ifTrue: [
            recoveredBlock27Block43Stack2 := recoveredLocal6.
            recoveredBlock27Block43PC := 229.
        ].
        recoveredBlock27Block43Step = 229 ifTrue: [
            recoveredBlock27Block43Stack3 := Array.
            recoveredBlock27Block43PC := 231.
        ].
        recoveredBlock27Block43Step = 231 ifTrue: [
            recoveredBlock27Block43Stack4 := recoveredLocal3.
            recoveredBlock27Block43PC := 234.
        ].
        recoveredBlock27Block43Step = 234 ifTrue: [
            recoveredBlock27Block43Stack5 := recoveredLocal2.
            recoveredBlock27Block43PC := 237.
        ].
        recoveredBlock27Block43Step = 237 ifTrue: [
            recoveredBlock27Block43Stack4 := (recoveredBlock27Block43Stack4) @ (recoveredBlock27Block43Stack5).
            recoveredBlock27Block43PC := 239.
        ].
        recoveredBlock27Block43Step = 239 ifTrue: [
            recoveredBlock27Block43Stack3 := (recoveredBlock27Block43Stack3) with: (recoveredBlock27Block43Stack4).
            recoveredBlock27Block43PC := 241.
        ].
        recoveredBlock27Block43Step = 241 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) createDataElementsForTable: (recoveredBlock27Block43Stack2) indices: (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 243.
        ].
        recoveredBlock27Block43Step = 243 ifTrue: [
            recoveredBlock27Block43Stack0 := (recoveredBlock27Block43Stack0) addAll: (recoveredBlock27Block43Stack1).
            recoveredBlock27Block43PC := 245.
        ].
        recoveredBlock27Block43Step = 245 ifTrue: [
            recoveredBlock27Block43PC := 268.
        ].
        recoveredBlock27Block43Step = 248 ifTrue: [
            recoveredBlock27Block43Stack0 := recoveredLocal5.
            recoveredBlock27Block43PC := 251.
        ].
        recoveredBlock27Block43Step = 251 ifTrue: [
            recoveredBlock27Block43Stack1 := self.
            recoveredBlock27Block43PC := 252.
        ].
        recoveredBlock27Block43Step = 252 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) simEnvironment.
            recoveredBlock27Block43PC := 254.
        ].
        recoveredBlock27Block43Step = 254 ifTrue: [
            recoveredBlock27Block43Stack2 := recoveredLocal6.
            recoveredBlock27Block43PC := 257.
        ].
        recoveredBlock27Block43Step = 257 ifTrue: [
            recoveredBlock27Block43Stack3 := Array.
            recoveredBlock27Block43PC := 259.
        ].
        recoveredBlock27Block43Step = 259 ifTrue: [
            recoveredBlock27Block43Stack4 := recoveredLocal3.
            recoveredBlock27Block43PC := 262.
        ].
        recoveredBlock27Block43Step = 262 ifTrue: [
            recoveredBlock27Block43Stack3 := (recoveredBlock27Block43Stack3) with: (recoveredBlock27Block43Stack4).
            recoveredBlock27Block43PC := 264.
        ].
        recoveredBlock27Block43Step = 264 ifTrue: [
            recoveredBlock27Block43Stack1 := (recoveredBlock27Block43Stack1) createDataElementsForTable: (recoveredBlock27Block43Stack2) indices: (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 266.
        ].
        recoveredBlock27Block43Step = 266 ifTrue: [
            recoveredBlock27Block43Stack0 := (recoveredBlock27Block43Stack0) addAll: (recoveredBlock27Block43Stack1).
            recoveredBlock27Block43PC := 268.
        ].
        recoveredBlock27Block43Step = 268 ifTrue: [
            recoveredBlock27Block43PC := 280.
        ].
        recoveredBlock27Block43Step = 272 ifTrue: [
            recoveredBlock27Block43Stack0 := recoveredLocal5.
            recoveredBlock27Block43PC := 275.
        ].
        recoveredBlock27Block43Step = 275 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredLocal6.
            recoveredBlock27Block43PC := 278.
        ].
        recoveredBlock27Block43Step = 278 ifTrue: [
            recoveredBlock27Block43Stack0 := (recoveredBlock27Block43Stack0) add: (recoveredBlock27Block43Stack1).
            recoveredBlock27Block43PC := 280.
        ].
        recoveredBlock27Block43Step = 280 ifTrue: [
            recoveredBlock27Block43PC := 297.
        ].
        recoveredBlock27Block43Step = 284 ifTrue: [
            recoveredBlock27Block43Stack0 := recoveredLocal1.
            recoveredBlock27Block43PC := 287.
        ].
        recoveredBlock27Block43Step = 287 ifTrue: [
            recoveredBlock27Block43Stack1 := recoveredBlock27Block43Stack0.
            recoveredBlock27Block43PC := 288.
        ].
        recoveredBlock27Block43Step = 288 ifTrue: [
            recoveredBlock27Block43Stack2 := 'Can not restore data logger element for label: '.
            recoveredBlock27Block43PC := 290.
        ].
        recoveredBlock27Block43Step = 290 ifTrue: [
            recoveredBlock27Block43Stack3 := recoveredBlock27Block43Arg1.
            recoveredBlock27Block43PC := 291.
        ].
        recoveredBlock27Block43Step = 291 ifTrue: [
            recoveredBlock27Block43Stack2 := (recoveredBlock27Block43Stack2) , (recoveredBlock27Block43Stack3).
            recoveredBlock27Block43PC := 293.
        ].
        recoveredBlock27Block43Step = 293 ifTrue: [
            (recoveredBlock27Block43Stack1) nextPutAll: (recoveredBlock27Block43Stack2).
            recoveredBlock27Block43PC := 295.
        ].
        recoveredBlock27Block43Step = 295 ifTrue: [
            recoveredBlock27Block43Stack0 := (recoveredBlock27Block43Stack0) cr.
            recoveredBlock27Block43PC := 297.
        ].
        recoveredBlock27Block43Step = 297 ifTrue: [
            recoveredBlock27Block43Result := recoveredBlock27Block43Stack0.
            recoveredBlock27Block43Done := true.
        ].
    ].
    recoveredBlock27Block43Result
].
    (recoveredBlock27Value2) do: (recoveredBlock27Value3).
    recoveredBlock27Value4 := (self) shell.
    recoveredBlock27Value5 := (recoveredBlock27Value4) osWidget.
    recoveredBlock27Value6 := (recoveredBlock27Value5) clearAppModal.
    recoveredBlock27Value6
].
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) clearDataList.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack0) logElements: (recoveredStack1).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2069b904; bytecode file offset 0xf98358"
!SGSimDataloggerView methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal15 := recoveredStack1.
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
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    recoveredBlock24Value2 := (self) defaultTitle.
    (recoveredBlock24Value1) title: (recoveredBlock24Value2).
    recoveredBlock24Value3 := recoveredBlock24Value0.
    recoveredBlock24Value4 := recoveredLocal15.
    recoveredBlock24Value5 := (439) * (recoveredBlock24Value4).
    recoveredBlock24Value6 := (recoveredBlock24Value5) rounded.
    (recoveredBlock24Value3) height: (recoveredBlock24Value6).
    recoveredBlock24Value7 := recoveredLocal16.
    recoveredBlock24Value8 := (300) * (recoveredBlock24Value7).
    recoveredBlock24Value9 := (recoveredBlock24Value8) rounded.
    recoveredBlock24Value10 := (recoveredBlock24Value0) width: (recoveredBlock24Value9).
    recoveredBlock24Value10
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := [:block2812d1e0Arg1 | 
    | block2812d1e0Value0 block2812d1e0Value1 block2812d1e0Value2 |
    block2812d1e0Value0 := block2812d1e0Arg1.
    block2812d1e0Value1 := XmASNEEDED.
    block2812d1e0Value2 := (block2812d1e0Value0) scrollBarDisplayPolicy: (block2812d1e0Value1).
    block2812d1e0Value2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'elemToolBar'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := [:block2812d204Arg1 | 
    | block2812d204Value0 block2812d204Value1 |
    block2812d204Value0 := block2812d204Arg1.
    block2812d204Value1 := (block2812d204Value0) height: (24).
    block2812d204Value1
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasToolBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := 'toolBar'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := 'dataList'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := [:block2812d228Arg1 | 
    | block2812d228Value0 block2812d228Value1 block2812d228Value2 block2812d228Value3 |
    block2812d228Value0 := block2812d228Arg1.
    block2812d228Value1 := block2812d228Value0.
    block2812d228Value2 := XmEXTENDEDSELECT.
    (block2812d228Value1) selectionPolicy: (block2812d228Value2).
    block2812d228Value3 := (block2812d228Value0) itemHeight: (20).
    block2812d228Value3
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'aScrolledIconList1'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'dataList'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'textFile'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := [:recoveredBlock229Arg1 | 
    | recoveredBlock229Value0 recoveredBlock229Value1 recoveredBlock229Value2 recoveredBlock229Value3 recoveredBlock229Value4 recoveredBlock229Value5 recoveredBlock229Value6 recoveredBlock229Value7 recoveredBlock229Value8 recoveredBlock229Value9 recoveredBlock229Value10 recoveredBlock229Value11 recoveredBlock229Value12 |
    recoveredBlock229Value0 := recoveredBlock229Arg1.
    recoveredBlock229Value1 := recoveredBlock229Value0.
    recoveredBlock229Value2 := recoveredLocal15.
    recoveredBlock229Value3 := (314) * (recoveredBlock229Value2).
    recoveredBlock229Value4 := (recoveredBlock229Value3) rounded.
    (recoveredBlock229Value1) y: (recoveredBlock229Value4).
    recoveredBlock229Value5 := recoveredBlock229Value0.
    recoveredBlock229Value6 := recoveredLocal16.
    recoveredBlock229Value7 := (133) * (recoveredBlock229Value6).
    recoveredBlock229Value8 := (recoveredBlock229Value7) rounded.
    (recoveredBlock229Value5) x: (recoveredBlock229Value8).
    recoveredBlock229Value9 := recoveredLocal16.
    recoveredBlock229Value10 := (53) * (recoveredBlock229Value9).
    recoveredBlock229Value11 := (recoveredBlock229Value10) rounded.
    recoveredBlock229Value12 := (recoveredBlock229Value0) width: (recoveredBlock229Value11).
    recoveredBlock229Value12
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'textFile'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := 'textFormat'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := [:recoveredBlock295Arg1 | 
    | recoveredBlock295Value0 recoveredBlock295Value1 recoveredBlock295Value2 recoveredBlock295Value3 recoveredBlock295Value4 recoveredBlock295Value5 recoveredBlock295Value6 recoveredBlock295Value7 recoveredBlock295Value8 recoveredBlock295Value9 recoveredBlock295Value10 recoveredBlock295Value11 recoveredBlock295Value12 |
    recoveredBlock295Value0 := recoveredBlock295Arg1.
    recoveredBlock295Value1 := recoveredBlock295Value0.
    recoveredBlock295Value2 := recoveredLocal15.
    recoveredBlock295Value3 := (371) * (recoveredBlock295Value2).
    recoveredBlock295Value4 := (recoveredBlock295Value3) rounded.
    (recoveredBlock295Value1) y: (recoveredBlock295Value4).
    recoveredBlock295Value5 := recoveredBlock295Value0.
    recoveredBlock295Value6 := recoveredLocal16.
    recoveredBlock295Value7 := (5) * (recoveredBlock295Value6).
    recoveredBlock295Value8 := (recoveredBlock295Value7) rounded.
    (recoveredBlock295Value5) x: (recoveredBlock295Value8).
    recoveredBlock295Value9 := recoveredLocal16.
    recoveredBlock295Value10 := (53) * (recoveredBlock295Value9).
    recoveredBlock295Value11 := (recoveredBlock295Value10) rounded.
    recoveredBlock295Value12 := (recoveredBlock295Value0) width: (recoveredBlock295Value11).
    recoveredBlock295Value12
].
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := 'textFormat'.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := 'triggerLevel'.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := [:recoveredBlock360Arg1 | 
    | recoveredBlock360Value0 recoveredBlock360Value1 recoveredBlock360Value2 recoveredBlock360Value3 recoveredBlock360Value4 recoveredBlock360Value5 recoveredBlock360Value6 recoveredBlock360Value7 recoveredBlock360Value8 recoveredBlock360Value9 recoveredBlock360Value10 recoveredBlock360Value11 recoveredBlock360Value12 |
    recoveredBlock360Value0 := recoveredBlock360Arg1.
    recoveredBlock360Value1 := recoveredBlock360Value0.
    recoveredBlock360Value2 := recoveredLocal15.
    recoveredBlock360Value3 := (337) * (recoveredBlock360Value2).
    recoveredBlock360Value4 := (recoveredBlock360Value3) rounded.
    (recoveredBlock360Value1) y: (recoveredBlock360Value4).
    recoveredBlock360Value5 := recoveredBlock360Value0.
    recoveredBlock360Value6 := recoveredLocal16.
    recoveredBlock360Value7 := (215) * (recoveredBlock360Value6).
    recoveredBlock360Value8 := (recoveredBlock360Value7) rounded.
    (recoveredBlock360Value5) x: (recoveredBlock360Value8).
    recoveredBlock360Value9 := recoveredLocal16.
    recoveredBlock360Value10 := (115) * (recoveredBlock360Value9).
    recoveredBlock360Value11 := (recoveredBlock360Value10) rounded.
    recoveredBlock360Value12 := (recoveredBlock360Value0) width: (recoveredBlock360Value11).
    recoveredBlock360Value12
].
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := 'triggerLevel'.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := 'triggerSlope'.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack3 := [:recoveredBlock427Arg1 | 
    | recoveredBlock427Value0 recoveredBlock427Value1 recoveredBlock427Value2 recoveredBlock427Value3 recoveredBlock427Value4 recoveredBlock427Value5 recoveredBlock427Value6 recoveredBlock427Value7 recoveredBlock427Value8 recoveredBlock427Value9 recoveredBlock427Value10 recoveredBlock427Value11 recoveredBlock427Value12 |
    recoveredBlock427Value0 := recoveredBlock427Arg1.
    recoveredBlock427Value1 := recoveredBlock427Value0.
    recoveredBlock427Value2 := recoveredLocal16.
    recoveredBlock427Value3 := (170) * (recoveredBlock427Value2).
    recoveredBlock427Value4 := (recoveredBlock427Value3) rounded.
    (recoveredBlock427Value1) x: (recoveredBlock427Value4).
    recoveredBlock427Value5 := recoveredBlock427Value0.
    recoveredBlock427Value6 := recoveredLocal15.
    recoveredBlock427Value7 := (338) * (recoveredBlock427Value6).
    recoveredBlock427Value8 := (recoveredBlock427Value7) rounded.
    (recoveredBlock427Value5) y: (recoveredBlock427Value8).
    recoveredBlock427Value9 := recoveredLocal16.
    recoveredBlock427Value10 := (115) * (recoveredBlock427Value9).
    recoveredBlock427Value11 := (recoveredBlock427Value10) rounded.
    recoveredBlock427Value12 := (recoveredBlock427Value0) width: (recoveredBlock427Value11).
    recoveredBlock427Value12
].
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack2 := 'triggerSlope'.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := 'triggerChannel'.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack3 := [:recoveredBlock495Arg1 | 
    | recoveredBlock495Value0 recoveredBlock495Value1 recoveredBlock495Value2 recoveredBlock495Value3 recoveredBlock495Value4 recoveredBlock495Value5 recoveredBlock495Value6 recoveredBlock495Value7 recoveredBlock495Value8 recoveredBlock495Value9 recoveredBlock495Value10 recoveredBlock495Value11 recoveredBlock495Value12 |
    recoveredBlock495Value0 := recoveredBlock495Arg1.
    recoveredBlock495Value1 := recoveredBlock495Value0.
    recoveredBlock495Value2 := recoveredLocal16.
    recoveredBlock495Value3 := (5) * (recoveredBlock495Value2).
    recoveredBlock495Value4 := (recoveredBlock495Value3) rounded.
    (recoveredBlock495Value1) x: (recoveredBlock495Value4).
    recoveredBlock495Value5 := recoveredBlock495Value0.
    recoveredBlock495Value6 := recoveredLocal15.
    recoveredBlock495Value7 := (360) * (recoveredBlock495Value6).
    recoveredBlock495Value8 := (recoveredBlock495Value7) rounded.
    (recoveredBlock495Value5) y: (recoveredBlock495Value8).
    recoveredBlock495Value9 := recoveredLocal16.
    recoveredBlock495Value10 := (115) * (recoveredBlock495Value9).
    recoveredBlock495Value11 := (recoveredBlock495Value10) rounded.
    recoveredBlock495Value12 := (recoveredBlock495Value0) width: (recoveredBlock495Value11).
    recoveredBlock495Value12
].
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := 'triggerChannel'.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := 'buttonTrigger'.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack3 := [:recoveredBlock561Arg1 | 
    | recoveredBlock561Value0 recoveredBlock561Value1 recoveredBlock561Value2 recoveredBlock561Value3 recoveredBlock561Value4 recoveredBlock561Value5 recoveredBlock561Value6 recoveredBlock561Value7 recoveredBlock561Value8 recoveredBlock561Value9 |
    recoveredBlock561Value0 := recoveredBlock561Arg1.
    recoveredBlock561Value1 := recoveredBlock561Value0.
    recoveredBlock561Value2 := recoveredLocal15.
    recoveredBlock561Value3 := (334) * (recoveredBlock561Value2).
    recoveredBlock561Value4 := (recoveredBlock561Value3) rounded.
    (recoveredBlock561Value1) y: (recoveredBlock561Value4).
    recoveredBlock561Value5 := recoveredBlock561Value0.
    recoveredBlock561Value6 := recoveredLocal16.
    recoveredBlock561Value7 := (5) * (recoveredBlock561Value6).
    recoveredBlock561Value8 := (recoveredBlock561Value7) rounded.
    (recoveredBlock561Value5) x: (recoveredBlock561Value8).
    recoveredBlock561Value9 := (recoveredBlock561Value0) labelString: ('Trigger Condition').
    recoveredBlock561Value9
].
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack2 := 'buttonTrigger'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack2 := 'labelLoggedData'.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack3 := [:recoveredBlock620Arg1 | 
    | recoveredBlock620Value0 recoveredBlock620Value1 recoveredBlock620Value2 recoveredBlock620Value3 recoveredBlock620Value4 recoveredBlock620Value5 recoveredBlock620Value6 recoveredBlock620Value7 recoveredBlock620Value8 recoveredBlock620Value9 recoveredBlock620Value10 recoveredBlock620Value11 recoveredBlock620Value12 recoveredBlock620Value13 recoveredBlock620Value14 recoveredBlock620Value15 recoveredBlock620Value16 recoveredBlock620Value17 recoveredBlock620Value18 recoveredBlock620Value19 recoveredBlock620Value20 recoveredBlock620Value21 recoveredBlock620Value22 |
    recoveredBlock620Value0 := recoveredBlock620Arg1.
    recoveredBlock620Value1 := recoveredBlock620Value0.
    recoveredBlock620Value2 := recoveredLocal16.
    recoveredBlock620Value3 := (5) * (recoveredBlock620Value2).
    recoveredBlock620Value4 := (recoveredBlock620Value3) rounded.
    (recoveredBlock620Value1) x: (recoveredBlock620Value4).
    recoveredBlock620Value5 := recoveredBlock620Value0.
    recoveredBlock620Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock620Value5) alignment: (recoveredBlock620Value6).
    recoveredBlock620Value7 := recoveredBlock620Value0.
    (recoveredBlock620Value7) labelString: ('Logged Data').
    recoveredBlock620Value8 := recoveredBlock620Value0.
    (recoveredBlock620Value8) marginHeight: (0).
    recoveredBlock620Value9 := recoveredBlock620Value0.
    recoveredBlock620Value10 := recoveredLocal15.
    recoveredBlock620Value11 := (71) * (recoveredBlock620Value10).
    recoveredBlock620Value12 := (recoveredBlock620Value11) rounded.
    (recoveredBlock620Value9) y: (recoveredBlock620Value12).
    recoveredBlock620Value13 := recoveredBlock620Value0.
    recoveredBlock620Value14 := recoveredLocal15.
    recoveredBlock620Value15 := (16) * (recoveredBlock620Value14).
    recoveredBlock620Value16 := (recoveredBlock620Value15) rounded.
    (recoveredBlock620Value13) height: (recoveredBlock620Value16).
    recoveredBlock620Value17 := recoveredBlock620Value0.
    recoveredBlock620Value18 := recoveredLocal16.
    recoveredBlock620Value19 := (124) * (recoveredBlock620Value18).
    recoveredBlock620Value20 := (recoveredBlock620Value19) rounded.
    (recoveredBlock620Value17) width: (recoveredBlock620Value20).
    recoveredBlock620Value21 := recoveredBlock620Value0.
    recoveredBlock620Value22 := (self) defaultLabelBlue.
    (recoveredBlock620Value21) foregroundColor: (recoveredBlock620Value22).
    recoveredBlock620Value0
].
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack2 := 'labelLoggedData'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack2 := 'labelMode'.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack3 := [:recoveredBlock732Arg1 | 
    | recoveredBlock732Value0 recoveredBlock732Value1 recoveredBlock732Value2 recoveredBlock732Value3 recoveredBlock732Value4 recoveredBlock732Value5 recoveredBlock732Value6 recoveredBlock732Value7 recoveredBlock732Value8 recoveredBlock732Value9 recoveredBlock732Value10 recoveredBlock732Value11 recoveredBlock732Value12 recoveredBlock732Value13 recoveredBlock732Value14 recoveredBlock732Value15 recoveredBlock732Value16 recoveredBlock732Value17 recoveredBlock732Value18 recoveredBlock732Value19 recoveredBlock732Value20 recoveredBlock732Value21 recoveredBlock732Value22 |
    recoveredBlock732Value0 := recoveredBlock732Arg1.
    recoveredBlock732Value1 := recoveredBlock732Value0.
    recoveredBlock732Value2 := recoveredLocal16.
    recoveredBlock732Value3 := (5) * (recoveredBlock732Value2).
    recoveredBlock732Value4 := (recoveredBlock732Value3) rounded.
    (recoveredBlock732Value1) x: (recoveredBlock732Value4).
    recoveredBlock732Value5 := recoveredBlock732Value0.
    recoveredBlock732Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock732Value5) alignment: (recoveredBlock732Value6).
    recoveredBlock732Value7 := recoveredBlock732Value0.
    (recoveredBlock732Value7) labelString: ('Mode').
    recoveredBlock732Value8 := recoveredBlock732Value0.
    (recoveredBlock732Value8) marginHeight: (0).
    recoveredBlock732Value9 := recoveredBlock732Value0.
    recoveredBlock732Value10 := recoveredLocal15.
    recoveredBlock732Value11 := (35) * (recoveredBlock732Value10).
    recoveredBlock732Value12 := (recoveredBlock732Value11) rounded.
    (recoveredBlock732Value9) y: (recoveredBlock732Value12).
    recoveredBlock732Value13 := recoveredBlock732Value0.
    recoveredBlock732Value14 := recoveredLocal15.
    recoveredBlock732Value15 := (16) * (recoveredBlock732Value14).
    recoveredBlock732Value16 := (recoveredBlock732Value15) rounded.
    (recoveredBlock732Value13) height: (recoveredBlock732Value16).
    recoveredBlock732Value17 := recoveredBlock732Value0.
    recoveredBlock732Value18 := recoveredLocal16.
    recoveredBlock732Value19 := (184) * (recoveredBlock732Value18).
    recoveredBlock732Value20 := (recoveredBlock732Value19) rounded.
    (recoveredBlock732Value17) width: (recoveredBlock732Value20).
    recoveredBlock732Value21 := recoveredBlock732Value0.
    recoveredBlock732Value22 := (self) defaultLabelBlue.
    (recoveredBlock732Value21) foregroundColor: (recoveredBlock732Value22).
    recoveredBlock732Value0
].
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack2 := 'labelMode'.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack2 := [:recoveredBlock838Arg1 | 
    | recoveredBlock838Value0 recoveredBlock838Value1 recoveredBlock838Value2 |
    recoveredBlock838Value0 := recoveredBlock838Arg1.
    recoveredBlock838Value1 := recoveredLocal12.
    recoveredBlock838Value2 := (recoveredBlock838Value0) workWindow: (recoveredBlock838Value1).
    recoveredBlock838Value2
].
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack2 := [:block2812d24cArg1 | 
    | block2812d24cValue0 block2812d24cValue1 block2812d24cValue2 block2812d24cValue3 block2812d24cValue4 block2812d24cValue5 block2812d24cValue6 |
    block2812d24cValue0 := block2812d24cArg1.
    block2812d24cValue1 := block2812d24cValue0.
    block2812d24cValue2 := XmATTACHFORM.
    (block2812d24cValue1) topAttachment: (block2812d24cValue2).
    block2812d24cValue3 := block2812d24cValue0.
    block2812d24cValue4 := XmATTACHFORM.
    (block2812d24cValue3) leftAttachment: (block2812d24cValue4).
    block2812d24cValue5 := XmATTACHFORM.
    block2812d24cValue6 := (block2812d24cValue0) rightAttachment: (block2812d24cValue5).
    block2812d24cValue6
].
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack2 := [:recoveredBlock906Arg1 | 
    | recoveredBlock906Value0 recoveredBlock906Value1 recoveredBlock906Value2 recoveredBlock906Value3 recoveredBlock906Value4 recoveredBlock906Value5 recoveredBlock906Value6 recoveredBlock906Value7 recoveredBlock906Value8 recoveredBlock906Value9 recoveredBlock906Value10 recoveredBlock906Value11 recoveredBlock906Value12 recoveredBlock906Value13 recoveredBlock906Value14 recoveredBlock906Value15 recoveredBlock906Value16 recoveredBlock906Value17 recoveredBlock906Value18 recoveredBlock906Value19 recoveredBlock906Value20 recoveredBlock906Value21 recoveredBlock906Value22 recoveredBlock906Value23 recoveredBlock906Value24 recoveredBlock906Value25 recoveredBlock906Value26 recoveredBlock906Value27 recoveredBlock906Value28 recoveredBlock906Value29 recoveredBlock906Value30 recoveredBlock906Value31 recoveredBlock906Value32 recoveredBlock906Value33 recoveredBlock906Value34 |
    recoveredBlock906Value0 := recoveredBlock906Arg1.
    recoveredBlock906Value1 := recoveredBlock906Value0.
    recoveredBlock906Value2 := XmATTACHWIDGET.
    (recoveredBlock906Value1) bottomAttachment: (recoveredBlock906Value2).
    recoveredBlock906Value3 := recoveredBlock906Value0.
    recoveredBlock906Value4 := recoveredLocal3.
    (recoveredBlock906Value3) bottomWidget: (recoveredBlock906Value4).
    recoveredBlock906Value5 := recoveredBlock906Value0.
    (recoveredBlock906Value5) bottomOffset: (5).
    recoveredBlock906Value6 := recoveredBlock906Value0.
    recoveredBlock906Value7 := XmATTACHWIDGET.
    (recoveredBlock906Value6) topAttachment: (recoveredBlock906Value7).
    recoveredBlock906Value8 := recoveredBlock906Value0.
    recoveredBlock906Value9 := recoveredLocal2.
    (recoveredBlock906Value8) topWidget: (recoveredBlock906Value9).
    recoveredBlock906Value10 := recoveredBlock906Value0.
    recoveredBlock906Value11 := XmATTACHFORM.
    (recoveredBlock906Value10) leftAttachment: (recoveredBlock906Value11).
    recoveredBlock906Value12 := recoveredBlock906Value0.
    (recoveredBlock906Value12) leftOffset: (5).
    recoveredBlock906Value13 := recoveredBlock906Value0.
    recoveredBlock906Value14 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock906Value13) rightAttachment: (recoveredBlock906Value14).
    recoveredBlock906Value15 := recoveredBlock906Value0.
    recoveredBlock906Value16 := recoveredLocal2.
    (recoveredBlock906Value15) rightWidget: (recoveredBlock906Value16).
    recoveredBlock906Value17 := recoveredBlock906Value0.
    recoveredBlock906Value18 := recoveredLocal16.
    recoveredBlock906Value19 := (5) * (recoveredBlock906Value18).
    recoveredBlock906Value20 := (recoveredBlock906Value19) rounded.
    (recoveredBlock906Value17) x: (recoveredBlock906Value20).
    recoveredBlock906Value21 := recoveredBlock906Value0.
    recoveredBlock906Value22 := recoveredLocal15.
    recoveredBlock906Value23 := (99) * (recoveredBlock906Value22).
    recoveredBlock906Value24 := (recoveredBlock906Value23) rounded.
    (recoveredBlock906Value21) y: (recoveredBlock906Value24).
    recoveredBlock906Value25 := recoveredBlock906Value0.
    recoveredBlock906Value26 := XmASNEEDED.
    (recoveredBlock906Value25) scrollBarDisplayPolicy: (recoveredBlock906Value26).
    recoveredBlock906Value27 := recoveredBlock906Value0.
    recoveredBlock906Value28 := recoveredLocal15.
    recoveredBlock906Value29 := (207) * (recoveredBlock906Value28).
    recoveredBlock906Value30 := (recoveredBlock906Value29) rounded.
    (recoveredBlock906Value27) height: (recoveredBlock906Value30).
    recoveredBlock906Value31 := recoveredLocal16.
    recoveredBlock906Value32 := (290) * (recoveredBlock906Value31).
    recoveredBlock906Value33 := (recoveredBlock906Value32) rounded.
    recoveredBlock906Value34 := (recoveredBlock906Value0) width: (recoveredBlock906Value33).
    recoveredBlock906Value34
].
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack2 := [:recoveredBlock1044Arg1 | 
    | recoveredBlock1044Value0 recoveredBlock1044Value1 recoveredBlock1044Value2 recoveredBlock1044Value3 recoveredBlock1044Value4 recoveredBlock1044Value5 recoveredBlock1044Value6 recoveredBlock1044Value7 recoveredBlock1044Value8 recoveredBlock1044Value9 recoveredBlock1044Value10 recoveredBlock1044Value11 recoveredBlock1044Value12 recoveredBlock1044Value13 recoveredBlock1044Value14 recoveredBlock1044Value15 |
    recoveredBlock1044Value0 := recoveredBlock1044Arg1.
    recoveredBlock1044Value1 := recoveredBlock1044Value0.
    recoveredBlock1044Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1044Value1) bottomAttachment: (recoveredBlock1044Value2).
    recoveredBlock1044Value3 := recoveredBlock1044Value0.
    recoveredBlock1044Value4 := recoveredLocal7.
    (recoveredBlock1044Value3) bottomWidget: (recoveredBlock1044Value4).
    recoveredBlock1044Value5 := recoveredBlock1044Value0.
    recoveredBlock1044Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1044Value5) topAttachment: (recoveredBlock1044Value6).
    recoveredBlock1044Value7 := recoveredBlock1044Value0.
    recoveredBlock1044Value8 := recoveredLocal7.
    (recoveredBlock1044Value7) topWidget: (recoveredBlock1044Value8).
    recoveredBlock1044Value9 := recoveredBlock1044Value0.
    recoveredBlock1044Value10 := XmATTACHWIDGET.
    (recoveredBlock1044Value9) leftAttachment: (recoveredBlock1044Value10).
    recoveredBlock1044Value11 := recoveredBlock1044Value0.
    recoveredBlock1044Value12 := recoveredLocal7.
    (recoveredBlock1044Value11) leftWidget: (recoveredBlock1044Value12).
    recoveredBlock1044Value13 := recoveredBlock1044Value0.
    recoveredBlock1044Value14 := XmATTACHFORM.
    (recoveredBlock1044Value13) rightAttachment: (recoveredBlock1044Value14).
    recoveredBlock1044Value15 := (recoveredBlock1044Value0) rightOffset: (5).
    recoveredBlock1044Value15
].
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack2 := [:block2812d270Arg1 | 
    | block2812d270Value0 block2812d270Value1 block2812d270Value2 block2812d270Value3 block2812d270Value4 block2812d270Value5 block2812d270Value6 block2812d270Value7 block2812d270Value8 block2812d270Value9 |
    block2812d270Value0 := block2812d270Arg1.
    block2812d270Value1 := block2812d270Value0.
    block2812d270Value2 := XmATTACHFORM.
    (block2812d270Value1) bottomAttachment: (block2812d270Value2).
    block2812d270Value3 := block2812d270Value0.
    (block2812d270Value3) bottomOffset: (5).
    block2812d270Value4 := block2812d270Value0.
    block2812d270Value5 := XmATTACHFORM.
    (block2812d270Value4) leftAttachment: (block2812d270Value5).
    block2812d270Value6 := block2812d270Value0.
    (block2812d270Value6) leftOffset: (5).
    block2812d270Value7 := block2812d270Value0.
    block2812d270Value8 := XmATTACHPOSITION.
    (block2812d270Value7) rightAttachment: (block2812d270Value8).
    block2812d270Value9 := (block2812d270Value0) rightPosition: (28).
    block2812d270Value9
].
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack2 := [:recoveredBlock1186Arg1 | 
    | recoveredBlock1186Value0 recoveredBlock1186Value1 recoveredBlock1186Value2 recoveredBlock1186Value3 recoveredBlock1186Value4 recoveredBlock1186Value5 recoveredBlock1186Value6 recoveredBlock1186Value7 recoveredBlock1186Value8 recoveredBlock1186Value9 recoveredBlock1186Value10 recoveredBlock1186Value11 recoveredBlock1186Value12 recoveredBlock1186Value13 recoveredBlock1186Value14 recoveredBlock1186Value15 recoveredBlock1186Value16 recoveredBlock1186Value17 recoveredBlock1186Value18 |
    recoveredBlock1186Value0 := recoveredBlock1186Arg1.
    recoveredBlock1186Value1 := recoveredBlock1186Value0.
    recoveredBlock1186Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1186Value1) bottomAttachment: (recoveredBlock1186Value2).
    recoveredBlock1186Value3 := recoveredBlock1186Value0.
    recoveredBlock1186Value4 := recoveredLocal5.
    (recoveredBlock1186Value3) bottomWidget: (recoveredBlock1186Value4).
    recoveredBlock1186Value5 := recoveredBlock1186Value0.
    (recoveredBlock1186Value5) bottomOffset: (-1).
    recoveredBlock1186Value6 := recoveredBlock1186Value0.
    recoveredBlock1186Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1186Value6) topAttachment: (recoveredBlock1186Value7).
    recoveredBlock1186Value8 := recoveredBlock1186Value0.
    recoveredBlock1186Value9 := recoveredLocal5.
    (recoveredBlock1186Value8) topWidget: (recoveredBlock1186Value9).
    recoveredBlock1186Value10 := recoveredBlock1186Value0.
    (recoveredBlock1186Value10) topOffset: (-1).
    recoveredBlock1186Value11 := recoveredBlock1186Value0.
    recoveredBlock1186Value12 := XmATTACHWIDGET.
    (recoveredBlock1186Value11) leftAttachment: (recoveredBlock1186Value12).
    recoveredBlock1186Value13 := recoveredBlock1186Value0.
    recoveredBlock1186Value14 := recoveredLocal5.
    (recoveredBlock1186Value13) leftWidget: (recoveredBlock1186Value14).
    recoveredBlock1186Value15 := recoveredBlock1186Value0.
    (recoveredBlock1186Value15) leftOffset: (5).
    recoveredBlock1186Value16 := recoveredBlock1186Value0.
    recoveredBlock1186Value17 := XmATTACHFORM.
    (recoveredBlock1186Value16) rightAttachment: (recoveredBlock1186Value17).
    recoveredBlock1186Value18 := (recoveredBlock1186Value0) rightOffset: (5).
    recoveredBlock1186Value18
].
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1281.
        ].
        recoveredStep = 1281 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            recoveredStack2 := [:recoveredBlock1284Arg1 | 
    | recoveredBlock1284Value0 recoveredBlock1284Value1 recoveredBlock1284Value2 recoveredBlock1284Value3 recoveredBlock1284Value4 recoveredBlock1284Value5 recoveredBlock1284Value6 recoveredBlock1284Value7 recoveredBlock1284Value8 recoveredBlock1284Value9 recoveredBlock1284Value10 recoveredBlock1284Value11 recoveredBlock1284Value12 |
    recoveredBlock1284Value0 := recoveredBlock1284Arg1.
    recoveredBlock1284Value1 := recoveredBlock1284Value0.
    recoveredBlock1284Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1284Value1) bottomAttachment: (recoveredBlock1284Value2).
    recoveredBlock1284Value3 := recoveredBlock1284Value0.
    recoveredBlock1284Value4 := recoveredLocal4.
    (recoveredBlock1284Value3) bottomWidget: (recoveredBlock1284Value4).
    recoveredBlock1284Value5 := recoveredBlock1284Value0.
    recoveredBlock1284Value6 := XmATTACHWIDGET.
    (recoveredBlock1284Value5) leftAttachment: (recoveredBlock1284Value6).
    recoveredBlock1284Value7 := recoveredBlock1284Value0.
    recoveredBlock1284Value8 := recoveredLocal4.
    (recoveredBlock1284Value7) leftWidget: (recoveredBlock1284Value8).
    recoveredBlock1284Value9 := recoveredBlock1284Value0.
    (recoveredBlock1284Value9) leftOffset: (5).
    recoveredBlock1284Value10 := recoveredBlock1284Value0.
    recoveredBlock1284Value11 := XmATTACHPOSITION.
    (recoveredBlock1284Value10) rightAttachment: (recoveredBlock1284Value11).
    recoveredBlock1284Value12 := (recoveredBlock1284Value0) rightPosition: (70).
    recoveredBlock1284Value12
].
            recoveredPC := 1348.
        ].
        recoveredStep = 1348 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1353.
        ].
        recoveredStep = 1353 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1356.
        ].
        recoveredStep = 1356 ifTrue: [
            recoveredStack2 := [:recoveredBlock1356Arg1 | 
    | recoveredBlock1356Value0 recoveredBlock1356Value1 recoveredBlock1356Value2 recoveredBlock1356Value3 recoveredBlock1356Value4 recoveredBlock1356Value5 recoveredBlock1356Value6 recoveredBlock1356Value7 recoveredBlock1356Value8 recoveredBlock1356Value9 recoveredBlock1356Value10 recoveredBlock1356Value11 |
    recoveredBlock1356Value0 := recoveredBlock1356Arg1.
    recoveredBlock1356Value1 := recoveredBlock1356Value0.
    recoveredBlock1356Value2 := XmATTACHWIDGET.
    (recoveredBlock1356Value1) bottomAttachment: (recoveredBlock1356Value2).
    recoveredBlock1356Value3 := recoveredBlock1356Value0.
    recoveredBlock1356Value4 := recoveredLocal8.
    (recoveredBlock1356Value3) bottomWidget: (recoveredBlock1356Value4).
    recoveredBlock1356Value5 := recoveredBlock1356Value0.
    (recoveredBlock1356Value5) bottomOffset: (10).
    recoveredBlock1356Value6 := recoveredBlock1356Value0.
    recoveredBlock1356Value7 := XmATTACHFORM.
    (recoveredBlock1356Value6) leftAttachment: (recoveredBlock1356Value7).
    recoveredBlock1356Value8 := recoveredBlock1356Value0.
    (recoveredBlock1356Value8) leftOffset: (5).
    recoveredBlock1356Value9 := recoveredBlock1356Value0.
    recoveredBlock1356Value10 := XmATTACHPOSITION.
    (recoveredBlock1356Value9) rightAttachment: (recoveredBlock1356Value10).
    recoveredBlock1356Value11 := (recoveredBlock1356Value0) rightPosition: (55).
    recoveredBlock1356Value11
].
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1421.
        ].
        recoveredStep = 1421 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1424.
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredStack2 := [:recoveredBlock1424Arg1 | 
    | recoveredBlock1424Value0 recoveredBlock1424Value1 recoveredBlock1424Value2 recoveredBlock1424Value3 recoveredBlock1424Value4 recoveredBlock1424Value5 recoveredBlock1424Value6 recoveredBlock1424Value7 |
    recoveredBlock1424Value0 := recoveredBlock1424Arg1.
    recoveredBlock1424Value1 := recoveredBlock1424Value0.
    recoveredBlock1424Value2 := XmATTACHWIDGET.
    (recoveredBlock1424Value1) bottomAttachment: (recoveredBlock1424Value2).
    recoveredBlock1424Value3 := recoveredBlock1424Value0.
    recoveredBlock1424Value4 := recoveredLocal4.
    (recoveredBlock1424Value3) bottomWidget: (recoveredBlock1424Value4).
    recoveredBlock1424Value5 := recoveredBlock1424Value0.
    recoveredBlock1424Value6 := XmATTACHFORM.
    (recoveredBlock1424Value5) leftAttachment: (recoveredBlock1424Value6).
    recoveredBlock1424Value7 := (recoveredBlock1424Value0) leftOffset: (5).
    recoveredBlock1424Value7
].
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1469.
        ].
        recoveredStep = 1469 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack2 := [:recoveredBlock1472Arg1 | 
    | recoveredBlock1472Value0 recoveredBlock1472Value1 recoveredBlock1472Value2 recoveredBlock1472Value3 recoveredBlock1472Value4 recoveredBlock1472Value5 recoveredBlock1472Value6 recoveredBlock1472Value7 recoveredBlock1472Value8 recoveredBlock1472Value9 recoveredBlock1472Value10 recoveredBlock1472Value11 recoveredBlock1472Value12 recoveredBlock1472Value13 recoveredBlock1472Value14 recoveredBlock1472Value15 recoveredBlock1472Value16 |
    recoveredBlock1472Value0 := recoveredBlock1472Arg1.
    recoveredBlock1472Value1 := recoveredBlock1472Value0.
    recoveredBlock1472Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1472Value1) bottomAttachment: (recoveredBlock1472Value2).
    recoveredBlock1472Value3 := recoveredBlock1472Value0.
    recoveredBlock1472Value4 := recoveredLocal1.
    (recoveredBlock1472Value3) bottomWidget: (recoveredBlock1472Value4).
    recoveredBlock1472Value5 := recoveredBlock1472Value0.
    (recoveredBlock1472Value5) bottomOffset: (-20).
    recoveredBlock1472Value6 := recoveredBlock1472Value0.
    recoveredBlock1472Value7 := XmATTACHWIDGET.
    (recoveredBlock1472Value6) topAttachment: (recoveredBlock1472Value7).
    recoveredBlock1472Value8 := recoveredBlock1472Value0.
    recoveredBlock1472Value9 := recoveredLocal1.
    (recoveredBlock1472Value8) topWidget: (recoveredBlock1472Value9).
    recoveredBlock1472Value10 := recoveredBlock1472Value0.
    (recoveredBlock1472Value10) topOffset: (4).
    recoveredBlock1472Value11 := recoveredBlock1472Value0.
    recoveredBlock1472Value12 := XmATTACHFORM.
    (recoveredBlock1472Value11) leftAttachment: (recoveredBlock1472Value12).
    recoveredBlock1472Value13 := recoveredBlock1472Value0.
    (recoveredBlock1472Value13) leftOffset: (5).
    recoveredBlock1472Value14 := recoveredBlock1472Value0.
    recoveredBlock1472Value15 := XmATTACHFORM.
    (recoveredBlock1472Value14) rightAttachment: (recoveredBlock1472Value15).
    recoveredBlock1472Value16 := (recoveredBlock1472Value0) rightOffset: (5).
    recoveredBlock1472Value16
].
            recoveredPC := 1554.
        ].
        recoveredStep = 1554 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1559.
        ].
        recoveredStep = 1559 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1562.
        ].
        recoveredStep = 1562 ifTrue: [
            recoveredStack2 := [:recoveredBlock1562Arg1 | 
    | recoveredBlock1562Value0 recoveredBlock1562Value1 recoveredBlock1562Value2 recoveredBlock1562Value3 recoveredBlock1562Value4 recoveredBlock1562Value5 recoveredBlock1562Value6 recoveredBlock1562Value7 recoveredBlock1562Value8 recoveredBlock1562Value9 recoveredBlock1562Value10 recoveredBlock1562Value11 recoveredBlock1562Value12 recoveredBlock1562Value13 recoveredBlock1562Value14 recoveredBlock1562Value15 recoveredBlock1562Value16 |
    recoveredBlock1562Value0 := recoveredBlock1562Arg1.
    recoveredBlock1562Value1 := recoveredBlock1562Value0.
    recoveredBlock1562Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1562Value1) bottomAttachment: (recoveredBlock1562Value2).
    recoveredBlock1562Value3 := recoveredBlock1562Value0.
    recoveredBlock1562Value4 := recoveredLocal11.
    (recoveredBlock1562Value3) bottomWidget: (recoveredBlock1562Value4).
    recoveredBlock1562Value5 := recoveredBlock1562Value0.
    (recoveredBlock1562Value5) bottomOffset: (-20).
    recoveredBlock1562Value6 := recoveredBlock1562Value0.
    recoveredBlock1562Value7 := XmATTACHWIDGET.
    (recoveredBlock1562Value6) topAttachment: (recoveredBlock1562Value7).
    recoveredBlock1562Value8 := recoveredBlock1562Value0.
    recoveredBlock1562Value9 := recoveredLocal11.
    (recoveredBlock1562Value8) topWidget: (recoveredBlock1562Value9).
    recoveredBlock1562Value10 := recoveredBlock1562Value0.
    (recoveredBlock1562Value10) topOffset: (4).
    recoveredBlock1562Value11 := recoveredBlock1562Value0.
    recoveredBlock1562Value12 := XmATTACHFORM.
    (recoveredBlock1562Value11) leftAttachment: (recoveredBlock1562Value12).
    recoveredBlock1562Value13 := recoveredBlock1562Value0.
    (recoveredBlock1562Value13) leftOffset: (5).
    recoveredBlock1562Value14 := recoveredBlock1562Value0.
    recoveredBlock1562Value15 := XmATTACHFORM.
    (recoveredBlock1562Value14) rightAttachment: (recoveredBlock1562Value15).
    recoveredBlock1562Value16 := (recoveredBlock1562Value0) rightOffset: (5).
    recoveredBlock1562Value16
].
            recoveredPC := 1644.
        ].
        recoveredStep = 1644 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1649.
        ].
        recoveredStep = 1649 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1652.
        ].
        recoveredStep = 1652 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 1656.
        ].
        recoveredStep = 1656 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1657.
        ].
        recoveredStep = 1657 ifTrue: [
            recoveredStack4 := 'aTopLevelShell1Resize:clientData:callData:'.
            recoveredPC := 1660.
        ].
        recoveredStep = 1660 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1661.
        ].
        recoveredStep = 1661 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1665.
        ].
        recoveredStep = 1665 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1668.
        ].
        recoveredStep = 1668 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1672.
        ].
        recoveredStep = 1672 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1673.
        ].
        recoveredStep = 1673 ifTrue: [
            recoveredStack4 := 'dataListvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1676.
        ].
        recoveredStep = 1676 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1677.
        ].
        recoveredStep = 1677 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1681.
        ].
        recoveredStep = 1681 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1684.
        ].
        recoveredStep = 1684 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1688.
        ].
        recoveredStep = 1688 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1689.
        ].
        recoveredStep = 1689 ifTrue: [
            recoveredStack4 := 'triggerLevelModify:clientData:callData:'.
            recoveredPC := 1692.
        ].
        recoveredStep = 1692 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1693.
        ].
        recoveredStep = 1693 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1697.
        ].
        recoveredStep = 1697 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1700.
        ].
        recoveredStep = 1700 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1704.
        ].
        recoveredStep = 1704 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1705.
        ].
        recoveredStep = 1705 ifTrue: [
            recoveredStack4 := 'triggerLevelValue:clientData:callData:'.
            recoveredPC := 1708.
        ].
        recoveredStep = 1708 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1709.
        ].
        recoveredStep = 1709 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1713.
        ].
        recoveredStep = 1713 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1716.
        ].
        recoveredStep = 1716 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1720.
        ].
        recoveredStep = 1720 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1721.
        ].
        recoveredStep = 1721 ifTrue: [
            recoveredStack4 := 'triggerSlopeSingleSelect:clientData:callData:'.
            recoveredPC := 1724.
        ].
        recoveredStep = 1724 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1725.
        ].
        recoveredStep = 1725 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1729.
        ].
        recoveredStep = 1729 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1732.
        ].
        recoveredStep = 1732 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1736.
        ].
        recoveredStep = 1736 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1737.
        ].
        recoveredStep = 1737 ifTrue: [
            recoveredStack4 := 'triggerChannelSingleSelect:clientData:callData:'.
            recoveredPC := 1740.
        ].
        recoveredStep = 1740 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1741.
        ].
        recoveredStep = 1741 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1745.
        ].
        recoveredStep = 1745 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1748.
        ].
        recoveredStep = 1748 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1752.
        ].
        recoveredStep = 1752 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1753.
        ].
        recoveredStep = 1753 ifTrue: [
            recoveredStack4 := 'buttonTriggerValue:clientData:callData:'.
            recoveredPC := 1756.
        ].
        recoveredStep = 1756 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1757.
        ].
        recoveredStep = 1757 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1761.
        ].
        recoveredStep = 1761 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1764.
        ].
        recoveredStep = 1764 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1769.
        ].
        recoveredStep = 1769 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1772.
        ].
        recoveredStep = 1772 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1777.
        ].
        recoveredStep = 1777 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1780.
        ].
        recoveredStep = 1780 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 1783.
        ].
        recoveredStep = 1783 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 1786.
        ].
        recoveredStep = 1786 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1791.
        ].
        recoveredStep = 1791 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

