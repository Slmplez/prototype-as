"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d8b8; bytecode file offset 0x92209c"
!EtasIdleTimeManager methodsFor: 'recovered'!
apiToken
    ^'API'
! !

"ASDBase.ic method 0x2001fc28; bytecode file offset 0x92209c"
!EtasIdleTimeManager methodsFor: 'recovered'!
codeManagerToken
    ^'CodeManager'
! !

"ASDBase.ic method 0x2001fe5c; bytecode file offset 0x92209c"
!EtasIdleTimeManager methodsFor: 'recovered'!
scmToken
    ^'SCM'
! !

"ASDBase.ic method 0x20020d50; bytecode file offset 0x92209c"
!EtasIdleTimeManager methodsFor: 'recovered'!
logFileName
    ^'idletime.log'
! !

"ASDBase.ic method 0x2002534c; bytecode file offset 0x92209c"
!EtasIdleTimeManager methodsFor: 'recovered'!
toolToken
    ^'ASCET'
! !

"ASDBase.ic method 0x2003ca08; bytecode file offset 0x93bf94"
!EtasIdleTimeManager methodsFor: 'recovered'!
initEventTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CwInputEvent.
    recoveredValue1 := (recoveredValue0) InitLastEventTime.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d128; bytecode file offset 0x93bf94"
!EtasIdleTimeManager methodsFor: 'recovered'!
getCurrentCursor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSHcursor.
    recoveredValue1 := (recoveredValue0) getCursor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e0a8; bytecode file offset 0x93bf94"
!EtasIdleTimeManager methodsFor: 'recovered'!
applicationHasModalDialog
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSShell.
    recoveredValue1 := (recoveredValue0) hasAppModalWidgets.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e2b8; bytecode file offset 0x93bf94"
!EtasIdleTimeManager methodsFor: 'recovered'!
getEventTime
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CwInputEvent.
    recoveredValue1 := (recoveredValue0) LastEventTime.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048a1c; bytecode file offset 0x9452d8"
!EtasIdleTimeManager methodsFor: 'recovered'!
resetActive
    active := false.
    ^self
! !

"ASDBase.ic method 0x2004df4c; bytecode file offset 0x94d048"
!EtasIdleTimeManager methodsFor: 'recovered'!
codeManagerIdle
    (self) removeCodeManagerToken.
    ^self
! !

"ASDBase.ic method 0x2004dff4; bytecode file offset 0x94d048"
!EtasIdleTimeManager methodsFor: 'recovered'!
scmBusy
    (self) createSCMToken.
    ^self
! !

"ASDBase.ic method 0x2004e000; bytecode file offset 0x94d048"
!EtasIdleTimeManager methodsFor: 'recovered'!
scmIdle
    (self) removeSCMToken.
    ^self
! !

"ASDBase.ic method 0x2004e3f0; bytecode file offset 0x94d048"
!EtasIdleTimeManager methodsFor: 'recovered'!
apiClientDisconnected
    (self) removeAPIToken.
    ^self
! !

"ASDBase.ic method 0x2004f098; bytecode file offset 0x94d048"
!EtasIdleTimeManager methodsFor: 'recovered'!
codeManagerBusy
    (self) createCodeManagerToken.
    ^self
! !

"ASDBase.ic method 0x2004f770; bytecode file offset 0x94d048"
!EtasIdleTimeManager methodsFor: 'recovered'!
apiClientCommandReceived
    (self) createAPIToken.
    ^self
! !

"ASDBase.ic method 0x2004fe78; bytecode file offset 0x94d048"
!EtasIdleTimeManager methodsFor: 'recovered'!
apiClientCommandAnswered
    (self) removeAPIToken.
    ^self
! !

"ASDBase.ic method 0x20062278; bytecode file offset 0x95ebd4"
!EtasIdleTimeManager methodsFor: 'recovered'!
applicationHasBusyCursor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getCurrentCursor.
    recoveredValue1 := (self) getBusyCursor.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200883ac; bytecode file offset 0x984cf8"
!EtasIdleTimeManager methodsFor: 'recovered'!
registerOnCodeManager
    | recoveredValue0 |
    recoveredValue0 := SGCodeManagerView.
    (recoveredValue0) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200883ec; bytecode file offset 0x984cf8"
!EtasIdleTimeManager methodsFor: 'recovered'!
registerOnEtasLicenseManager
    | recoveredValue0 |
    recoveredValue0 := EtasLicenseManager.
    (recoveredValue0) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x2008843c; bytecode file offset 0x984cf8"
!EtasIdleTimeManager methodsFor: 'recovered'!
registerOnToolAPI
    | recoveredValue0 |
    recoveredValue0 := EtasCebraToolServer.
    (recoveredValue0) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x2008947c; bytecode file offset 0x985ef8"
!EtasIdleTimeManager methodsFor: 'recovered'!
initVetoBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    vetoBox := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008ced4; bytecode file offset 0x989db0"
!EtasIdleTimeManager methodsFor: 'recovered'!
removeToolToken
    | recoveredValue0 |
    recoveredValue0 := (self) toolToken.
    (self) removeToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008cf04; bytecode file offset 0x989db0"
!EtasIdleTimeManager methodsFor: 'recovered'!
removeAPIToken
    | recoveredValue0 |
    recoveredValue0 := (self) apiToken.
    (self) removeToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d014; bytecode file offset 0x989db0"
!EtasIdleTimeManager methodsFor: 'recovered'!
createAPIToken
    | recoveredValue0 |
    recoveredValue0 := (self) apiToken.
    (self) addToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d274; bytecode file offset 0x989db0"
!EtasIdleTimeManager methodsFor: 'recovered'!
createSCMToken
    | recoveredValue0 |
    recoveredValue0 := (self) scmToken.
    (self) addToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d2d4; bytecode file offset 0x989db0"
!EtasIdleTimeManager methodsFor: 'recovered'!
removeCodeManagerToken
    | recoveredValue0 |
    recoveredValue0 := (self) codeManagerToken.
    (self) removeToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d324; bytecode file offset 0x989db0"
!EtasIdleTimeManager methodsFor: 'recovered'!
removeSCMToken
    | recoveredValue0 |
    recoveredValue0 := (self) scmToken.
    (self) removeToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d374; bytecode file offset 0x989db0"
!EtasIdleTimeManager methodsFor: 'recovered'!
createToolToken
    | recoveredValue0 |
    recoveredValue0 := (self) toolToken.
    (self) addToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d3e4; bytecode file offset 0x989db0"
!EtasIdleTimeManager methodsFor: 'recovered'!
createCodeManagerToken
    | recoveredValue0 |
    recoveredValue0 := (self) codeManagerToken.
    (self) addToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009bc94; bytecode file offset 0x998660"
!EtasIdleTimeManager methodsFor: 'recovered'!
idleTime
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Time.
    recoveredValue1 := (self) idleTimeMS.
    recoveredValue2 := (recoveredValue1) abs.
    recoveredValue3 := (recoveredValue0) fromMilliseconds: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009c6f8; bytecode file offset 0x998fec"
!EtasIdleTimeManager methodsFor: 'recovered'!
logFilePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getETASLogFilePath.
    recoveredValue2 := (self) logFileName.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a01b4; bytecode file offset 0x99ca6c"
!EtasIdleTimeManager methodsFor: 'recovered'!
setActive
    active := true.
    (self) logStateIdleTimerActivated.
    ^self
! !

"ASDBase.ic method 0x200da6dc; bytecode file offset 0x9d7154"
!EtasIdleTimeManager methodsFor: 'recovered'!
addToken: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) vetoBox.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    (self) initEventTime.
    ^self
! !

"ASDBase.ic method 0x200e0d54; bytecode file offset 0x9dd614"
!EtasIdleTimeManager methodsFor: 'recovered'!
registerOnSCMInterface
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMInstalled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) scmStartObservingSCMActions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e20ec; bytecode file offset 0x9de9a0"
!EtasIdleTimeManager methodsFor: 'recovered'!
isActive
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
            recoveredStack2 := active.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := active.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e9d74; bytecode file offset 0x9e6630"
!EtasIdleTimeManager methodsFor: 'recovered'!
featureCheckout: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isServerLicense.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) setActive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fcac4; bytecode file offset 0x9f9388"
!EtasIdleTimeManager methodsFor: 'recovered'!
removeToken: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) initEventTime.
    recoveredValue0 := (self) vetoBox.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201056f0; bytecode file offset 0xa01fb4"
!EtasIdleTimeManager methodsFor: 'recovered'!
vetoBox
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := vetoBox.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initVetoBox.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := vetoBox.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107944; bytecode file offset 0xa04208"
!EtasIdleTimeManager methodsFor: 'recovered'!
isIdleTimeRunning
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
            recoveredStack2 := ASDGeneralOptions.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionIdleTimeShutdownActive.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isActive.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201292f8; bytecode file offset 0xa25c54"
!EtasIdleTimeManager methodsFor: 'recovered'!
getBusyCursor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := busyCursor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OSWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) busyCursor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            busyCursor := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := busyCursor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013e688; bytecode file offset 0xa3af50"
!EtasIdleTimeManager methodsFor: 'recovered'!
isIdleTimePassed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIdleTimeRunning.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionIdleTimeShutdownTime.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) idleTime.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20152ec4; bytecode file offset 0xa4f788"
!EtasIdleTimeManager methodsFor: 'recovered'!
featureCheckin: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasLicenseManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isServerLicenseUsed.
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
            (recoveredStack1) setActive.
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
            (recoveredStack1) resetActive.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201589fc; bytecode file offset 0xa552c4"
!EtasIdleTimeManager methodsFor: 'recovered'!
resetLog
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) logFilePath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201894f0; bytecode file offset 0xa85db8"
!EtasIdleTimeManager methodsFor: 'recovered'!
useMinutesAsSeconds
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'MinuteToSecond'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ToolSettings\FLEXnet'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018c904; bytecode file offset 0xa89228"
!EtasIdleTimeManager methodsFor: 'recovered'!
logStateIdleTimerActivated
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Date.
    recoveredValue1 := (recoveredValue0) dateAndTimeNow.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue2) , (': ').
    (self) log: (recoveredValue3).
    (self) log: ('Idle timer activated').
    (self) logCr.
    ^self
! !

"ASDBase.ic method 0x2018c92c; bytecode file offset 0xa89228"
!EtasIdleTimeManager methodsFor: 'recovered'!
logStateIdleTimerShutdownCancelt
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Date.
    recoveredValue1 := (recoveredValue0) dateAndTimeNow.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue2) , (': ').
    (self) log: (recoveredValue3).
    (self) log: ('Automatic shutdown canceled.').
    (self) logCr.
    ^self
! !

"ASDBase.ic method 0x2018c954; bytecode file offset 0xa89228"
!EtasIdleTimeManager methodsFor: 'recovered'!
logStateIdleTimeCloseWindows
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Date.
    recoveredValue1 := (recoveredValue0) dateAndTimeNow.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue2) , (': ').
    (self) log: (recoveredValue3).
    (self) log: ('Close open windows').
    (self) logCr.
    ^self
! !

"ASDBase.ic method 0x2018f0f0; bytecode file offset 0xa8b9b4"
!EtasIdleTimeManager methodsFor: 'recovered'!
vetoAvailable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) vetoBox.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationHasModalDialog.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationHasBusyCursor.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a332c; bytecode file offset 0xa9fbfc"
!EtasIdleTimeManager methodsFor: 'recovered'!
initialize
    super initialize.
    (self) registerOnSCMInterface.
    (self) registerOnToolAPI.
    (self) registerOnCodeManager.
    (self) registerOnEtasLicenseManager.
    (self) resetLog.
    ^self
! !

"ASDBase.ic method 0x201b792c; bytecode file offset 0xab41fc"
!EtasIdleTimeManager methodsFor: 'recovered'!
logCr
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) logFilePath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) openAppend: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) setToEnd.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201efee8; bytecode file offset 0xaec7c4"
!EtasIdleTimeManager methodsFor: 'recovered'!
logStateIdleTimeCloseAscet
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Date.
    recoveredValue1 := (recoveredValue0) dateAndTimeNow.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue2) , (': ').
    (self) log: (recoveredValue3).
    recoveredValue4 := MainController.
    recoveredValue5 := (recoveredValue4) toolName.
    recoveredValue6 := ('Close ') , (recoveredValue5).
    (self) log: (recoveredValue6).
    (self) logCr.
    ^self
! !

"ASDBase.ic method 0x20237c08; bytecode file offset 0xb344e8"
!EtasIdleTimeManager methodsFor: 'recovered'!
log: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) logFilePath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) openAppend: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) setToEnd.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := Lf.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := LineDelimiter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyReplaceAll: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20246a2c; bytecode file offset 0xb43310"
!EtasIdleTimeManager methodsFor: 'recovered'!
logStateIdlePeriodPassed
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Date.
    recoveredValue1 := (recoveredValue0) dateAndTimeNow.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue2) , (': ').
    (self) log: (recoveredValue3).
    recoveredValue4 := ASDGeneralOptions.
    recoveredValue5 := (recoveredValue4) instance.
    recoveredValue6 := (recoveredValue5) optionIdleTimeShutdownPeriod.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := ('Idle period (') , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , (' minutes) passed').
    (self) log: (recoveredValue9).
    (self) logCr.
    ^self
! !

"ASDBase.ic method 0x2028adc0; bytecode file offset 0xb87688"
!EtasIdleTimeManager methodsFor: 'recovered'!
idleTimeMS
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) vetoAvailable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) initEventTime.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) millisecondClockValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEventTime.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) initEventTime.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

