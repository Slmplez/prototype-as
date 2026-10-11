"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023120; bytecode file offset 0x92209c"
!SGSimDataloggerView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('activateChangeLoggerFile' 'activateStartLogger' 'activateStopLogger')
! !

"ASDBase.ic method 0x20048c30; bytecode file offset 0x945728"
!SGSimDataloggerView class methodsFor: 'recovered'!
clearTimerDelay
    TimerDelay := nil.
    ^self
! !

"ASDBase.ic method 0x2007fd44; bytecode file offset 0x97c600"
!SGSimDataloggerView class methodsFor: 'recovered'!
collapsedHeight
    ^30
! !

"ASDBase.ic method 0x20080824; bytecode file offset 0x97d0d8"
!SGSimDataloggerView class methodsFor: 'recovered'!
defaultDelayTime
    ^966
! !

"ASDBase.ic method 0x200b0218; bytecode file offset 0x9acadc"
!SGSimDataloggerView class methodsFor: 'recovered'!
initTimerDelay
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Delay.
    recoveredValue1 := (self) defaultDelayTime.
    recoveredValue2 := (recoveredValue0) forMilliseconds: (recoveredValue1).
    TimerDelay := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x201051ac; bytecode file offset 0xa01b38"
!SGSimDataloggerView class methodsFor: 'recovered'!
TimerDelay
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TimerDelay.
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
            (recoveredStack1) initTimerDelay.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := TimerDelay.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20138e90; bytecode file offset 0xa35758"
!SGSimDataloggerView class methodsFor: 'recovered'!
createForMeasureCtrl: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGSimDataloggerCtrl.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue3) createFor: (recoveredValue4) measureCtrl: (recoveredValue5).
    (recoveredValue2) uiController: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

