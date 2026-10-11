"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200000c0; bytecode file offset 0x7c350"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
setBusyCursor
    ^self
! !

"winsys.ic method 0x20000130; bytecode file offset 0x7c350"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
resetBusyCursor
    ^self
! !

"winsys.ic method 0x20000138; bytecode file offset 0x7c350"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
setDefaultFocus
    ^self
! !

"winsys.ic method 0x200008cc; bytecode file offset 0x7cc7c"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
snapshots
    | recoveredValue0 |
    recoveredValue0 := Snapshots.
    ^recoveredValue0
! !

"winsys.ic method 0x200009ec; bytecode file offset 0x7cc7c"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
focusWindow
    | recoveredValue0 |
    recoveredValue0 := FocusWindow.
    ^recoveredValue0
! !

"winsys.ic method 0x20001208; bytecode file offset 0x7d460"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
openWindows
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"winsys.ic method 0x20001c28; bytecode file offset 0x7de10"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
restart
    (self) clearSnapshots.
    ^self
! !

"winsys.ic method 0x20001d08; bytecode file offset 0x7decc"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
restartSavedSnapshots: recoveredArg1
    (self) restartSavedSnapshots.
    ^true
! !

"winsys.ic method 0x20001d4c; bytecode file offset 0x7e054"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
dynamicLagTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DynamicLagTime := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001d94; bytecode file offset 0x7e054"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
exitOnLastWindowClose: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ExitOnLastWindowClose := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001e0c; bytecode file offset 0x7e054"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
lagTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    InputSleepLagTime := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008ce4; bytecode file offset 0x84eb4"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
clearSnapshots
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    Snapshots := recoveredValue1.
    FocusWindow := nil.
    ^self
! !

"winsys.ic method 0x20009348; bytecode file offset 0x8551c"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
sleep
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) lagTime.
    DynamicLagTime := recoveredValue0.
    recoveredValue1 := CwAppContext.
    recoveredValue2 := (recoveredValue1) default.
    recoveredValue3 := (recoveredValue2) suspendSmalltalk.
    ^recoveredValue3
! !

"winsys.ic method 0x2000b27c; bytecode file offset 0x87440"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
exitOnLastWindowClose
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExitOnLastWindowClose.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ExitOnLastWindowClose.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000bdf4; bytecode file offset 0x87fbc"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
dynamicLagTime
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DynamicLagTime.
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
            recoveredStack1 := (recoveredStack1) lagTime.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := DynamicLagTime.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000cd94; bytecode file offset 0x88f64"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
initializeSystemPrompters
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) prompter: (self).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) informer: (self).
    (recoveredValue0) confirmer: (self).
    ^self
! !

"winsys.ic method 0x2000cdc0; bytecode file offset 0x88f90"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
defaultMessagesLocale
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultMessagesLocale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := DefaultMessagesLocale.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) localePrimitiveClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMessagesLocale.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000da7c; bytecode file offset 0x89c40"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
lagTime
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := InputSleepLagTime.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 150.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := InputSleepLagTime.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000db24; bytecode file offset 0x89cf8"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
break
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowBreak.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super break.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000e750; bytecode file offset 0x8a928"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
cleanUpBeforeWalkback
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) emergencyInitialize.
    recoveredValue0 := CommonWidgets.
    (recoveredValue0) cleanUpBeforeWalkback.
    recoveredValue1 := CommonGraphics.
    (recoveredValue1) cleanUpBeforeWalkback.
    recoveredValue2 := System.
    (recoveredValue2) resetBusyCursor.
    ^self
! !

"winsys.ic method 0x2000f55c; bytecode file offset 0x8b738"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
initializeNlsSystem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CwAppContext.
    (recoveredValue0) initializeSystem.
    (self) initializeSystemPrompters.
    recoveredValue1 := System.
    (recoveredValue1) resetBusyCursor.
    super initializeNlsSystem.
    ^self
! !

"winsys.ic method 0x20011ae4; bytecode file offset 0x8dcc0"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
recursiveError: recoveredArg1 signal: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := TranscriptTTY.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := MxESd10.
    (recoveredValue1) show: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) outputWalkback: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    (recoveredValue5) signal.
    ^self
! !

"winsys.ic method 0x20012db8; bytecode file offset 0x8effc"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := CwMessagePrompter.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) message: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue1) syncExecInUI: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20012dd4; bytecode file offset 0x8effc"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
proceed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := CwMessagePrompter.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) proceed: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue1) syncExecInUI: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20012df0; bytecode file offset 0x8effc"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
errorMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := CwMessagePrompter.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) errorMessage: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue1) syncExecInUI: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20012e0c; bytecode file offset 0x8effc"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
confirm: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := CwMessagePrompter.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) confirm: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue1) syncExecInUI: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20012e28; bytecode file offset 0x8effc"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
confirmYesNoCancel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := CwMessagePrompter.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) confirmYesNoCancel: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue1) syncExecInUI: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20014104; bytecode file offset 0x902dc"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
emergencyInitialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) initializeSystem.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageStarted.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) initializeSystemPrompters.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001e440; bytecode file offset 0x9a62c"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
run
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExitAfterWalkback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ExitAfterWalkback := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Snapshots.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'restartSavedSnapshots:'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addWorkProc: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) resetBusyCursor.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            super run.
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

"winsys.ic method 0x200216cc; bytecode file offset 0x9d8ac"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
reportError: recoveredArg1 resumable: recoveredArg2 startBP: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    (self) cleanUpBeforeWalkback.
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := recoveredArg3.
    recoveredBlock4Value3 := super reportError: (recoveredBlock4Value0) resumable: (recoveredBlock4Value1) startBP: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := ExError.
    recoveredValue2 := ExHalt.
    recoveredValue3 := (recoveredValue1) | (recoveredValue2).
    recoveredValue4 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredArg1.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (self) recursiveError: (recoveredBlock33Value0) signal: (recoveredBlock33Value1).
    recoveredBlock33Value2
].
    (recoveredValue0) when: (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"winsys.ic method 0x20021fe4; bytecode file offset 0x9e1b8"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
prompt: recoveredArg1 answer: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := CwTextPrompter.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredArg2.
    recoveredBlock11Value3 := (recoveredBlock11Value0) prompt: (recoveredBlock11Value1) answer: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) syncExecInUI: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200248fc; bytecode file offset 0xa0ae8"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
messageLoop
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EOKAIE'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) readAndDispatch.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondClockValue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondClockValue.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) dynamicLagTime.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            DynamicLagTime := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) sleep.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) readAndDispatch.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 14.
        ].
    ]
! !

"winsys.ic method 0x20024cb0; bytecode file offset 0xa0ec0"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
displayStartupError: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super displayStartupError: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := MxESd2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) addLineDelimiters.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) emergencyInitialize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := CwMessagePrompter.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := CwWMShell.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusShell.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) for: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := XmICONERROR.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) iconType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := XmYESNO.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) buttonType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) primitiveExit.
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

"winsys.ic method 0x200264ac; bytecode file offset 0xa26a8"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
saving
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    Snapshots := recoveredValue1.
    FocusWindow := nil.
    recoveredValue2 := CwTopLevelShell.
    recoveredValue3 := (recoveredValue2) focusShell.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) openWindows.
    recoveredValue5 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21Stack6 recoveredBlock21Stack7 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := Snapshots.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := CwWidgetHierarchySnapshot.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack3 := 'defaultResourceSnapshotInfo'.
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Arg1.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) snapshotWidgets.
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack5 := recoveredBlock21Arg1.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack6 := 'restartWindowFromSnapshot:'.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) getSnapshot: (recoveredBlock21Stack3) forWidgets: (recoveredBlock21Stack4) owner: (recoveredBlock21Stack5) restartSelector: (recoveredBlock21Stack6).
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            (recoveredBlock21Stack1) add: (recoveredBlock21Stack2).
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) shell.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Stack3 := recoveredLocal1.
            recoveredBlock21PC := 52.
        ].
        recoveredBlock21Step = 52 ifTrue: [
            (recoveredBlock21Stack2 ~~ recoveredBlock21Stack3) ifTrue: [recoveredBlock21PC := 61] ifFalse: [recoveredBlock21PC := 56].
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            FocusWindow := recoveredBlock21Stack2.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x200360b4; bytecode file offset 0xb22bc"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
restartSavedSnapshots
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) snapshots.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWindow.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) clearSnapshots.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) setBusyCursor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            (recoveredBlock22Stack1) relocalize.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            (recoveredBlock22Stack1) restart.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) owner.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) shell.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) window.
            recoveredBlock22PC := 48.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            (recoveredBlock22Stack2 == nil) ifTrue: [recoveredBlock22PC := 67] ifFalse: [recoveredBlock22PC := 52].
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 56.
        ].
        recoveredBlock22Step = 56 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) window.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) display.
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) busyCursor.
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) defineCursor: (recoveredBlock22Stack2).
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) setDefaultFocus.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) resetBusyCursor.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Stack0 recoveredBlock105Stack1 recoveredBlock105Stack2 recoveredBlock105Stack3 recoveredBlock105PC recoveredBlock105Step recoveredBlock105Done recoveredBlock105Result |
    recoveredBlock105Stack0 := self.
    recoveredBlock105PC := 112.
    recoveredBlock105Done := false.
    [recoveredBlock105Done not] whileTrue: [
        recoveredBlock105Step := recoveredBlock105PC.
        recoveredBlock105Step = 112 ifTrue: [
            recoveredBlock105Stack1 := recoveredBlock105Arg1.
            recoveredBlock105PC := 113.
        ].
        recoveredBlock105Step = 113 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) owner.
            recoveredBlock105PC := 115.
        ].
        recoveredBlock105Step = 115 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) shell.
            recoveredBlock105PC := 117.
        ].
        recoveredBlock105Step = 117 ifTrue: [
            recoveredLocal1 := recoveredBlock105Stack1.
            recoveredBlock105PC := 120.
        ].
        recoveredBlock105Step = 120 ifTrue: [
            recoveredBlock105Stack1 := nil.
            recoveredBlock105PC := 121.
        ].
        recoveredBlock105Step = 121 ifTrue: [
            recoveredBlock105Stack2 := recoveredLocal1.
            recoveredBlock105PC := 124.
        ].
        recoveredBlock105Step = 124 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) isDestroyed.
            recoveredBlock105PC := 126.
        ].
        recoveredBlock105Step = 126 ifTrue: [
            (recoveredBlock105Stack2) ifTrue: [recoveredBlock105PC := 148] ifFalse: [recoveredBlock105PC := 130].
        ].
        recoveredBlock105Step = 130 ifTrue: [
            recoveredBlock105PC := 131.
        ].
        recoveredBlock105Step = 131 ifTrue: [
            recoveredBlock105Stack1 := nil.
            recoveredBlock105PC := 132.
        ].
        recoveredBlock105Step = 132 ifTrue: [
            recoveredBlock105Stack2 := recoveredLocal1.
            recoveredBlock105PC := 135.
        ].
        recoveredBlock105Step = 135 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) window.
            recoveredBlock105PC := 137.
        ].
        recoveredBlock105Step = 137 ifTrue: [
            (recoveredBlock105Stack2 == nil) ifTrue: [recoveredBlock105PC := 148] ifFalse: [recoveredBlock105PC := 140].
        ].
        recoveredBlock105Step = 140 ifTrue: [
            recoveredBlock105PC := 141.
        ].
        recoveredBlock105Step = 141 ifTrue: [
            recoveredBlock105Stack1 := recoveredLocal1.
            recoveredBlock105PC := 144.
        ].
        recoveredBlock105Step = 144 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) window.
            recoveredBlock105PC := 146.
        ].
        recoveredBlock105Step = 146 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) undefineCursor.
            recoveredBlock105PC := 148.
        ].
        recoveredBlock105Step = 148 ifTrue: [
            recoveredBlock105Result := recoveredBlock105Stack1.
            recoveredBlock105Done := true.
        ].
    ].
    recoveredBlock105Result
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2003c6e0; bytecode file offset 0xb88f8"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
saveImage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageFileName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block28009454Arg1 | 
    | block28009454Value0 block28009454Value1 block28009454Value2 block28009454Value3 |
    block28009454Value0 := block28009454Arg1.
    block28009454Value1 := CfsDirectoryDescriptor.
    block28009454Value2 := (block28009454Value1) pathSeparator.
    block28009454Value3 := (block28009454Value0) = (block28009454Value2).
    block28009454Value3
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) findLast: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'image.$$$'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) getcwd.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) startUpDirectory.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) chdir: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) imageFileName: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93Stack4 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := recoveredLocal3.
            recoveredBlock93PC := 103.
        ].
        recoveredBlock93Step = 103 ifTrue: [
            super saveImage: (recoveredBlock93Stack1).
            recoveredBlock93PC := 107.
        ].
        recoveredBlock93Step = 107 ifTrue: [
            recoveredBlock93Stack0 := CfsFileDescriptor.
            recoveredBlock93PC := 109.
        ].
        recoveredBlock93Step = 109 ifTrue: [
            recoveredBlock93Stack1 := recoveredArg1.
            recoveredBlock93PC := 112.
        ].
        recoveredBlock93Step = 112 ifTrue: [
            (recoveredBlock93Stack0) remove: (recoveredBlock93Stack1).
            recoveredBlock93PC := 114.
        ].
        recoveredBlock93Step = 114 ifTrue: [
            recoveredBlock93Stack0 := nil.
            recoveredBlock93PC := 115.
        ].
        recoveredBlock93Step = 115 ifTrue: [
            recoveredBlock93Stack1 := CfsFileDescriptor.
            recoveredBlock93PC := 117.
        ].
        recoveredBlock93Step = 117 ifTrue: [
            recoveredBlock93Stack2 := recoveredLocal3.
            recoveredBlock93PC := 120.
        ].
        recoveredBlock93Step = 120 ifTrue: [
            recoveredBlock93Stack3 := recoveredArg1.
            recoveredBlock93PC := 123.
        ].
        recoveredBlock93Step = 123 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) rename: (recoveredBlock93Stack2) new: (recoveredBlock93Stack3).
            recoveredBlock93PC := 125.
        ].
        recoveredBlock93Step = 125 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Stack1.
            recoveredBlock93PC := 126.
        ].
        recoveredBlock93Step = 126 ifTrue: [
            recoveredLocal2 := recoveredBlock93Stack2.
            recoveredBlock93PC := 129.
        ].
        recoveredBlock93Step = 129 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) isCfsError.
            recoveredBlock93PC := 131.
        ].
        recoveredBlock93Step = 131 ifTrue: [
            (recoveredBlock93Stack1) ifTrue: [recoveredBlock93PC := 134] ifFalse: [recoveredBlock93PC := 143].
        ].
        recoveredBlock93Step = 134 ifTrue: [
            recoveredBlock93PC := 135.
        ].
        recoveredBlock93Step = 135 ifTrue: [
            recoveredBlock93Stack0 := self.
            recoveredBlock93PC := 136.
        ].
        recoveredBlock93Step = 136 ifTrue: [
            recoveredBlock93Stack1 := recoveredLocal2.
            recoveredBlock93PC := 139.
        ].
        recoveredBlock93Step = 139 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) printString.
            recoveredBlock93PC := 141.
        ].
        recoveredBlock93Step = 141 ifTrue: [
            recoveredBlock93Stack0 := (recoveredBlock93Stack0) error: (recoveredBlock93Stack1).
            recoveredBlock93PC := 143.
        ].
        recoveredBlock93Step = 143 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack0.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock144Stack0 recoveredBlock144Stack1 recoveredBlock144Stack2 recoveredBlock144Stack3 recoveredBlock144Stack4 recoveredBlock144PC recoveredBlock144Step recoveredBlock144Done recoveredBlock144Result |
    recoveredBlock144Stack0 := self.
    recoveredBlock144PC := 150.
    recoveredBlock144Done := false.
    [recoveredBlock144Done not] whileTrue: [
        recoveredBlock144Step := recoveredBlock144PC.
        recoveredBlock144Step = 150 ifTrue: [
            recoveredBlock144Stack1 := System.
            recoveredBlock144PC := 152.
        ].
        recoveredBlock144Step = 152 ifTrue: [
            recoveredBlock144Stack2 := recoveredLocal4.
            recoveredBlock144PC := 155.
        ].
        recoveredBlock144Step = 155 ifTrue: [
            (recoveredBlock144Stack1) imageFileName: (recoveredBlock144Stack2).
            recoveredBlock144PC := 157.
        ].
        recoveredBlock144Step = 157 ifTrue: [
            recoveredBlock144Stack1 := CfsFileDescriptor.
            recoveredBlock144PC := 159.
        ].
        recoveredBlock144Step = 159 ifTrue: [
            recoveredBlock144Stack2 := recoveredLocal3.
            recoveredBlock144PC := 162.
        ].
        recoveredBlock144Step = 162 ifTrue: [
            (recoveredBlock144Stack1) remove: (recoveredBlock144Stack2).
            recoveredBlock144PC := 164.
        ].
        recoveredBlock144Step = 164 ifTrue: [
            recoveredBlock144Stack1 := nil.
            recoveredBlock144PC := 165.
        ].
        recoveredBlock144Step = 165 ifTrue: [
            recoveredBlock144Stack2 := CfsDirectoryDescriptor.
            recoveredBlock144PC := 167.
        ].
        recoveredBlock144Step = 167 ifTrue: [
            recoveredBlock144Stack3 := recoveredLocal6.
            recoveredBlock144PC := 170.
        ].
        recoveredBlock144Step = 170 ifTrue: [
            recoveredBlock144Stack2 := (recoveredBlock144Stack2) chdir: (recoveredBlock144Stack3).
            recoveredBlock144PC := 172.
        ].
        recoveredBlock144Step = 172 ifTrue: [
            recoveredBlock144Stack3 := recoveredBlock144Stack2.
            recoveredBlock144PC := 173.
        ].
        recoveredBlock144Step = 173 ifTrue: [
            recoveredLocal2 := recoveredBlock144Stack3.
            recoveredBlock144PC := 176.
        ].
        recoveredBlock144Step = 176 ifTrue: [
            recoveredBlock144Stack2 := (recoveredBlock144Stack2) isCfsError.
            recoveredBlock144PC := 178.
        ].
        recoveredBlock144Step = 178 ifTrue: [
            (recoveredBlock144Stack2) ifTrue: [recoveredBlock144PC := 182] ifFalse: [recoveredBlock144PC := 191].
        ].
        recoveredBlock144Step = 182 ifTrue: [
            recoveredBlock144PC := 183.
        ].
        recoveredBlock144Step = 183 ifTrue: [
            recoveredBlock144Stack1 := self.
            recoveredBlock144PC := 184.
        ].
        recoveredBlock144Step = 184 ifTrue: [
            recoveredBlock144Stack2 := recoveredLocal2.
            recoveredBlock144PC := 187.
        ].
        recoveredBlock144Step = 187 ifTrue: [
            recoveredBlock144Stack2 := (recoveredBlock144Stack2) printString.
            recoveredBlock144PC := 189.
        ].
        recoveredBlock144Step = 189 ifTrue: [
            recoveredBlock144Stack1 := (recoveredBlock144Stack1) error: (recoveredBlock144Stack2).
            recoveredBlock144PC := 191.
        ].
        recoveredBlock144Step = 191 ifTrue: [
            recoveredBlock144Result := recoveredBlock144Stack1.
            recoveredBlock144Done := true.
        ].
    ].
    recoveredBlock144Result
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) whenExceptionDo: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) chdir: (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200424c4; bytecode file offset 0xbe738"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
outputWalkback: recoveredArg1 process: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := -1.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) walkbackFileName.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) copy.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredLocal3 := recoveredBlock4Stack0.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 220.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := [
    | recoveredBlock4Block24Value0 recoveredBlock4Block24Value1 recoveredBlock4Block24Value2 recoveredBlock4Block24Value3 |
    recoveredBlock4Block24Value0 := CfsWriteFileStream.
    recoveredBlock4Block24Value1 := recoveredLocal3.
    recoveredBlock4Block24Value2 := (recoveredBlock4Block24Value0) open: (recoveredBlock4Block24Value1).
    recoveredBlock4Block24Value3 := recoveredBlock4Block24Value2.
    recoveredLocal1 := recoveredBlock4Block24Value3.
    recoveredBlock4Block24Value2
].
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack1 := ExError.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack2 := ExHalt.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) | (recoveredBlock4Stack2).
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block47Arg1 | 
    | recoveredBlock4Block47Stack0 recoveredBlock4Block47Stack1 recoveredBlock4Block47Stack2 recoveredBlock4Block47Stack3 recoveredBlock4Block47Stack4 recoveredBlock4Block47Stack5 recoveredBlock4Block47PC recoveredBlock4Block47Step recoveredBlock4Block47Done recoveredBlock4Block47Result |
    recoveredBlock4Block47Stack0 := self.
    recoveredBlock4Block47PC := 54.
    recoveredBlock4Block47Done := false.
    [recoveredBlock4Block47Done not] whileTrue: [
        recoveredBlock4Block47Step := recoveredBlock4Block47PC.
        recoveredBlock4Block47Step = 54 ifTrue: [
            recoveredBlock4Block47Stack1 := TranscriptTTY.
            recoveredBlock4Block47PC := 56.
        ].
        recoveredBlock4Block47Step = 56 ifTrue: [
            recoveredBlock4Block47Stack1 := (recoveredBlock4Block47Stack1) default.
            recoveredBlock4Block47PC := 58.
        ].
        recoveredBlock4Block47Step = 58 ifTrue: [
            recoveredBlock4Block47Stack2 := recoveredBlock4Block47Stack1.
            recoveredBlock4Block47PC := 59.
        ].
        recoveredBlock4Block47Step = 59 ifTrue: [
            (recoveredBlock4Block47Stack2) cr.
            recoveredBlock4Block47PC := 61.
        ].
        recoveredBlock4Block47Step = 61 ifTrue: [
            recoveredBlock4Block47Stack2 := MxESd9.
            recoveredBlock4Block47PC := 63.
        ].
        recoveredBlock4Block47Step = 63 ifTrue: [
            recoveredBlock4Block47Stack3 := Array.
            recoveredBlock4Block47PC := 65.
        ].
        recoveredBlock4Block47Step = 65 ifTrue: [
            recoveredBlock4Block47Stack4 := recoveredBlock4Block47Arg1.
            recoveredBlock4Block47PC := 66.
        ].
        recoveredBlock4Block47Step = 66 ifTrue: [
            recoveredBlock4Block47Stack4 := (recoveredBlock4Block47Stack4) argument.
            recoveredBlock4Block47PC := 68.
        ].
        recoveredBlock4Block47Step = 68 ifTrue: [
            recoveredBlock4Block47Stack4 := (recoveredBlock4Block47Stack4) isString.
            recoveredBlock4Block47PC := 70.
        ].
        recoveredBlock4Block47Step = 70 ifTrue: [
            (recoveredBlock4Block47Stack4) ifTrue: [recoveredBlock4Block47PC := 74] ifFalse: [recoveredBlock4Block47PC := 80].
        ].
        recoveredBlock4Block47Step = 74 ifTrue: [
            recoveredBlock4Block47Stack4 := recoveredBlock4Block47Arg1.
            recoveredBlock4Block47PC := 75.
        ].
        recoveredBlock4Block47Step = 75 ifTrue: [
            recoveredBlock4Block47Stack4 := (recoveredBlock4Block47Stack4) argument.
            recoveredBlock4Block47PC := 77.
        ].
        recoveredBlock4Block47Step = 77 ifTrue: [
            recoveredBlock4Block47PC := 83.
        ].
        recoveredBlock4Block47Step = 80 ifTrue: [
            recoveredBlock4Block47Stack4 := recoveredBlock4Block47Arg1.
            recoveredBlock4Block47PC := 81.
        ].
        recoveredBlock4Block47Step = 81 ifTrue: [
            recoveredBlock4Block47Stack4 := (recoveredBlock4Block47Stack4) description.
            recoveredBlock4Block47PC := 83.
        ].
        recoveredBlock4Block47Step = 83 ifTrue: [
            recoveredBlock4Block47Stack3 := (recoveredBlock4Block47Stack3) with: (recoveredBlock4Block47Stack4).
            recoveredBlock4Block47PC := 85.
        ].
        recoveredBlock4Block47Step = 85 ifTrue: [
            recoveredBlock4Block47Stack2 := (recoveredBlock4Block47Stack2) debugBindWithArguments: (recoveredBlock4Block47Stack3).
            recoveredBlock4Block47PC := 87.
        ].
        recoveredBlock4Block47Step = 87 ifTrue: [
            (recoveredBlock4Block47Stack1) show: (recoveredBlock4Block47Stack2).
            recoveredBlock4Block47PC := 89.
        ].
        recoveredBlock4Block47Step = 89 ifTrue: [
            recoveredBlock4Block47Stack1 := recoveredArg1.
            recoveredBlock4Block47PC := 92.
        ].
        recoveredBlock4Block47Step = 92 ifTrue: [
            recoveredBlock4Block47Stack2 := recoveredArg2.
            recoveredBlock4Block47PC := 95.
        ].
        recoveredBlock4Block47Step = 95 ifTrue: [
            recoveredBlock4Block47Stack0 := super outputWalkback: (recoveredBlock4Block47Stack1) process: (recoveredBlock4Block47Stack2).
            recoveredBlock4Block47PC := 99.
        ].
        recoveredBlock4Block47Step = 99 ifTrue: [
            ^recoveredBlock4Block47Stack0
        ].
    ].
    recoveredBlock4Block47Result
].
            recoveredBlock4PC := 100.
        ].
        recoveredBlock4Step = 100 ifTrue: [
            (recoveredBlock4Stack0) when: (recoveredBlock4Stack1) do: (recoveredBlock4Stack2).
            recoveredBlock4PC := 102.
        ].
        recoveredBlock4Step = 102 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 105.
        ].
        recoveredBlock4Step = 105 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isCfsError.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 110] ifFalse: [recoveredBlock4PC := 220].
        ].
        recoveredBlock4Step = 110 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal2.
            recoveredBlock4PC := 113.
        ].
        recoveredBlock4Step = 113 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 115.
        ].
        recoveredBlock4Step = 115 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) < (recoveredBlock4Stack1).
            recoveredBlock4PC := 116.
        ].
        recoveredBlock4Step = 116 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 120] ifFalse: [recoveredBlock4PC := 152].
        ].
        recoveredBlock4Step = 120 ifTrue: [
            recoveredBlock4Stack0 := [
    | block28009550Value0 block28009550Value1 |
    block28009550Value0 := CfsFileDescriptor.
    block28009550Value1 := (block28009550Value0) closeDiscardedFileDescriptors.
    block28009550Value1
].
            recoveredBlock4PC := 122.
        ].
        recoveredBlock4Step = 122 ifTrue: [
            recoveredBlock4PC := 131.
        ].
        recoveredBlock4Step = 131 ifTrue: [
            recoveredBlock4Stack1 := ExError.
            recoveredBlock4PC := 133.
        ].
        recoveredBlock4Step = 133 ifTrue: [
            recoveredBlock4Stack2 := ExHalt.
            recoveredBlock4PC := 135.
        ].
        recoveredBlock4Step = 135 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) | (recoveredBlock4Stack2).
            recoveredBlock4PC := 137.
        ].
        recoveredBlock4Step = 137 ifTrue: [
            recoveredBlock4Stack2 := [:block28009574Arg1 | 
    | block28009574Value0 block28009574Value1 |
    block28009574Value0 := block28009574Arg1.
    block28009574Value1 := (block28009574Value0) exitWith: (nil).
    block28009574Value1
].
            recoveredBlock4PC := 139.
        ].
        recoveredBlock4Step = 139 ifTrue: [
            recoveredBlock4PC := 147.
        ].
        recoveredBlock4Step = 147 ifTrue: [
            (recoveredBlock4Stack0) when: (recoveredBlock4Stack1) do: (recoveredBlock4Stack2).
            recoveredBlock4PC := 149.
        ].
        recoveredBlock4Step = 149 ifTrue: [
            recoveredBlock4PC := 213.
        ].
        recoveredBlock4Step = 152 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal2.
            recoveredBlock4PC := 155.
        ].
        recoveredBlock4Step = 155 ifTrue: [
            recoveredBlock4Stack1 := 9.
            recoveredBlock4PC := 157.
        ].
        recoveredBlock4Step = 157 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) > (recoveredBlock4Stack1).
            recoveredBlock4PC := 158.
        ].
        recoveredBlock4Step = 158 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 162] ifFalse: [recoveredBlock4PC := 196].
        ].
        recoveredBlock4Step = 162 ifTrue: [
            recoveredBlock4Stack0 := TranscriptTTY.
            recoveredBlock4PC := 164.
        ].
        recoveredBlock4Step = 164 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) default.
            recoveredBlock4PC := 166.
        ].
        recoveredBlock4Step = 166 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 167.
        ].
        recoveredBlock4Step = 167 ifTrue: [
            (recoveredBlock4Stack1) cr.
            recoveredBlock4PC := 169.
        ].
        recoveredBlock4Step = 169 ifTrue: [
            recoveredBlock4Stack1 := MxESd15.
            recoveredBlock4PC := 171.
        ].
        recoveredBlock4Step = 171 ifTrue: [
            recoveredBlock4Stack2 := Array.
            recoveredBlock4PC := 173.
        ].
        recoveredBlock4Step = 173 ifTrue: [
            recoveredBlock4Stack3 := recoveredLocal1.
            recoveredBlock4PC := 176.
        ].
        recoveredBlock4Step = 176 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) debugPrintString.
            recoveredBlock4PC := 178.
        ].
        recoveredBlock4Step = 178 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) with: (recoveredBlock4Stack3).
            recoveredBlock4PC := 180.
        ].
        recoveredBlock4Step = 180 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) debugBindWithArguments: (recoveredBlock4Stack2).
            recoveredBlock4PC := 182.
        ].
        recoveredBlock4Step = 182 ifTrue: [
            (recoveredBlock4Stack0) show: (recoveredBlock4Stack1).
            recoveredBlock4PC := 184.
        ].
        recoveredBlock4Step = 184 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 185.
        ].
        recoveredBlock4Step = 185 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 188.
        ].
        recoveredBlock4Step = 188 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg2.
            recoveredBlock4PC := 191.
        ].
        recoveredBlock4Step = 191 ifTrue: [
            recoveredBlock4Stack0 := super outputWalkback: (recoveredBlock4Stack1) process: (recoveredBlock4Stack2).
            recoveredBlock4PC := 195.
        ].
        recoveredBlock4Step = 195 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 196 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal3.
            recoveredBlock4PC := 199.
        ].
        recoveredBlock4Step = 199 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 202.
        ].
        recoveredBlock4Step = 202 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) size.
            recoveredBlock4PC := 204.
        ].
        recoveredBlock4Step = 204 ifTrue: [
            recoveredBlock4Stack2 := Character.
            recoveredBlock4PC := 206.
        ].
        recoveredBlock4Step = 206 ifTrue: [
            recoveredBlock4Stack3 := recoveredLocal2.
            recoveredBlock4PC := 209.
        ].
        recoveredBlock4Step = 209 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) digitValue: (recoveredBlock4Stack3).
            recoveredBlock4PC := 211.
        ].
        recoveredBlock4Step = 211 ifTrue: [
            (recoveredBlock4Stack0) at: (recoveredBlock4Stack1) put: (recoveredBlock4Stack2).
            recoveredBlock4PC := 213.
        ].
        recoveredBlock4Step = 213 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal2.
            recoveredBlock4PC := 216.
        ].
        recoveredBlock4Step = 216 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) + (1).
            recoveredBlock4PC := 217.
        ].
        recoveredBlock4Step = 217 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 220.
        ].
        recoveredBlock4Step = 220 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 223.
        ].
        recoveredBlock4Step = 223 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 24] ifFalse: [recoveredBlock4PC := 226].
        ].
        recoveredBlock4Step = 226 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 229.
        ].
        recoveredBlock4Step = 229 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isCfsError.
            recoveredBlock4PC := 231.
        ].
        recoveredBlock4Step = 231 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 24] ifFalse: [recoveredBlock4PC := 234].
        ].
        recoveredBlock4Step = 234 ifTrue: [
            recoveredBlock4Stack0 := TranscriptTTY.
            recoveredBlock4PC := 236.
        ].
        recoveredBlock4Step = 236 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) default.
            recoveredBlock4PC := 238.
        ].
        recoveredBlock4Step = 238 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 239.
        ].
        recoveredBlock4Step = 239 ifTrue: [
            (recoveredBlock4Stack1) cr.
            recoveredBlock4PC := 241.
        ].
        recoveredBlock4Step = 241 ifTrue: [
            recoveredBlock4Stack1 := MxESd11.
            recoveredBlock4PC := 243.
        ].
        recoveredBlock4Step = 243 ifTrue: [
            recoveredBlock4Stack2 := Array.
            recoveredBlock4PC := 245.
        ].
        recoveredBlock4Step = 245 ifTrue: [
            recoveredBlock4Stack3 := recoveredLocal3.
            recoveredBlock4PC := 248.
        ].
        recoveredBlock4Step = 248 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) with: (recoveredBlock4Stack3).
            recoveredBlock4PC := 250.
        ].
        recoveredBlock4Step = 250 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) debugBindWithArguments: (recoveredBlock4Stack2).
            recoveredBlock4PC := 252.
        ].
        recoveredBlock4Step = 252 ifTrue: [
            (recoveredBlock4Stack0) show: (recoveredBlock4Stack1).
            recoveredBlock4PC := 254.
        ].
        recoveredBlock4Step = 254 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 257.
        ].
        recoveredBlock4Step = 257 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 258.
        ].
        recoveredBlock4Step = 258 ifTrue: [
            (recoveredBlock4Stack1) setToEnd.
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 261.
        ].
        recoveredBlock4Step = 261 ifTrue: [
            (recoveredBlock4Stack1) cr.
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 264.
        ].
        recoveredBlock4Step = 264 ifTrue: [
            (recoveredBlock4Stack1) cr.
            recoveredBlock4PC := 266.
        ].
        recoveredBlock4Step = 266 ifTrue: [
            recoveredBlock4Stack1 := MxESd16.
            recoveredBlock4PC := 268.
        ].
        recoveredBlock4Step = 268 ifTrue: [
            recoveredBlock4Stack2 := Array.
            recoveredBlock4PC := 270.
        ].
        recoveredBlock4Step = 270 ifTrue: [
            recoveredBlock4Stack3 := Time.
            recoveredBlock4PC := 272.
        ].
        recoveredBlock4Step = 272 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) now.
            recoveredBlock4PC := 274.
        ].
        recoveredBlock4Step = 274 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) debugPrintString.
            recoveredBlock4PC := 276.
        ].
        recoveredBlock4Step = 276 ifTrue: [
            recoveredBlock4Stack4 := Date.
            recoveredBlock4PC := 278.
        ].
        recoveredBlock4Step = 278 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) today.
            recoveredBlock4PC := 280.
        ].
        recoveredBlock4Step = 280 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) debugPrintString.
            recoveredBlock4PC := 282.
        ].
        recoveredBlock4Step = 282 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) with: (recoveredBlock4Stack3) with: (recoveredBlock4Stack4).
            recoveredBlock4PC := 284.
        ].
        recoveredBlock4Step = 284 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) debugBindWithArguments: (recoveredBlock4Stack2).
            recoveredBlock4PC := 286.
        ].
        recoveredBlock4Step = 286 ifTrue: [
            (recoveredBlock4Stack0) nextPutAll: (recoveredBlock4Stack1).
            recoveredBlock4PC := 288.
        ].
        recoveredBlock4Step = 288 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 289.
        ].
        recoveredBlock4Step = 289 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 292.
        ].
        recoveredBlock4Step = 292 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal1.
            recoveredBlock4PC := 295.
        ].
        recoveredBlock4Step = 295 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg2.
            recoveredBlock4PC := 298.
        ].
        recoveredBlock4Step = 298 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) outputWalkback: (recoveredBlock4Stack1) on: (recoveredBlock4Stack2) process: (recoveredBlock4Stack3).
            recoveredBlock4PC := 301.
        ].
        recoveredBlock4Step = 301 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := ExError.
    recoveredValue2 := ExHalt.
    recoveredValue3 := (recoveredValue1) | (recoveredValue2).
    recoveredValue4 := [:recoveredBlock308Arg1 | 
    | recoveredBlock308Value0 recoveredBlock308Value1 recoveredBlock308Value2 recoveredBlock308Value3 |
    recoveredBlock308Value0 := recoveredArg1.
    recoveredBlock308Value1 := recoveredArg2.
    super outputWalkback: (recoveredBlock308Value0) process: (recoveredBlock308Value1).
    recoveredBlock308Value2 := recoveredBlock308Arg1.
    recoveredBlock308Value3 := (recoveredBlock308Value2) signal.
    recoveredBlock308Value3
].
    (recoveredValue0) when: (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) close.
    ^self
! !

