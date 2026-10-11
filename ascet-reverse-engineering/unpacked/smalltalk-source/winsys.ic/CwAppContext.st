"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001288; bytecode file offset 0x7d460"
!CwAppContext methodsFor: 'recovered'!
allowBreak
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSWidget.
    recoveredValue1 := (recoveredValue0) isActiveApplication.
    ^recoveredValue1
! !

"winsys.ic method 0x200048cc; bytecode file offset 0x80b84"
!CwAppContext methodsFor: 'recovered'!
isIdle
    ^false
! !

"winsys.ic method 0x20004dac; bytecode file offset 0x80f74"
!CwAppContext methodsFor: 'recovered'!
openDisplay: recoveredArg1 applicationName: recoveredArg2 applicationClass: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) open: (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x20008b70; bytecode file offset 0x84d30"
!CwAppContext methodsFor: 'recovered'!
enableProcs: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := procsEnabled.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    procsEnabled := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"winsys.ic method 0x2000af7c; bytecode file offset 0x8714c"
!CwAppContext methodsFor: 'recovered'!
openDisplay: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) defaultApplicationName.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) defaultApplicationClass.
    recoveredValue5 := (self) openDisplay: (recoveredValue0) applicationName: (recoveredValue2) applicationClass: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x2000b540; bytecode file offset 0x87700"
!CwAppContext methodsFor: 'recovered'!
emptyTimerQueue
    nextTimerExpiry := nil.
    lastCTime := 0.
    cTime := 0.
    ^self
! !

"winsys.ic method 0x2000be58; bytecode file offset 0x88024"
!CwAppContext methodsFor: 'recovered'!
readAndDispatch
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readAndDispatch.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) processBackgroundGraphicRequests.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000c3b8; bytecode file offset 0x88588"
!CwAppContext methodsFor: 'recovered'!
suspendSmalltalk
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) canSleep.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) wake.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000d448; bytecode file offset 0x89610"
!CwAppContext methodsFor: 'recovered'!
readAndDispatchWhile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) readAndDispatch.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20011f04; bytecode file offset 0x8e0d8"
!CwAppContext methodsFor: 'recovered'!
cleanUpBeforeWalkback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := inProc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := MxCW3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) initialize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20012134; bytecode file offset 0x8e308"
!CwAppContext methodsFor: 'recovered'!
sleep
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) canSleep.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ActivitySemaphore.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSignals.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) enableAsyncIO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := ActivitySemaphore.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200123e0; bytecode file offset 0x8e5ac"
!CwAppContext methodsFor: 'recovered'!
removeWorkProc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := workProcs.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [].
    recoveredBlock4Value3 := (recoveredBlock4Value0) remove: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (recoveredValue0) critical.
    ^self
! !

"winsys.ic method 0x200127a8; bytecode file offset 0x8e978"
!CwAppContext methodsFor: 'recovered'!
asyncExecInUI: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) enableAsyncMessages: (false).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := bgGraphicRequests.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := Processor.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) enableAsyncMessages: (recoveredValue5).
    (self) wake.
    ^self
! !

"winsys.ic method 0x200148c4; bytecode file offset 0x90a98"
!CwAppContext methodsFor: 'recovered'!
wake
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := ActivitySemaphore.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSignals.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ActivitySemaphore.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001c3b4; bytecode file offset 0x98584"
!CwAppContext methodsFor: 'recovered'!
addWorkProc: recoveredArg1 selector: recoveredArg2 clientData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 |
    recoveredBlock4Value0 := workProcs.
    recoveredBlock4Value1 := CwCallbackRec.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := recoveredArg2.
    recoveredBlock4Value4 := recoveredArg3.
    recoveredBlock4Value5 := (recoveredBlock4Value1) receiver: (recoveredBlock4Value2) selector: (recoveredBlock4Value3) clientData: (recoveredBlock4Value4).
    recoveredBlock4Value6 := recoveredBlock4Value5.
    recoveredLocal1 := recoveredBlock4Value6.
    recoveredBlock4Value7 := (recoveredBlock4Value0) addFirst: (recoveredBlock4Value5).
    recoveredBlock4Value7
].
    (recoveredValue0) critical.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"winsys.ic method 0x2001f4c8; bytecode file offset 0x9b694"
!CwAppContext methodsFor: 'recovered'!
updateCounter
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondClockValue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := lastCTime.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := cTime.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 86400000.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := lastCTime.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            cTime := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := cTime.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := lastCTime.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            cTime := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            lastCTime := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20020b10; bytecode file offset 0x9cce8"
!CwAppContext methodsFor: 'recovered'!
processBackgroundGraphicRequests
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := bgGraphicRequests.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := bgGraphicRequests.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) wake.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200226c8; bytecode file offset 0x9e8a0"
!CwAppContext methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            workProcs := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block280090acArg1 :block280090acArg2 | 
    | block280090acValue0 block280090acValue1 block280090acValue2 block280090acValue3 block280090acValue4 |
    block280090acValue0 := block280090acArg1.
    block280090acValue1 := (block280090acValue0) key.
    block280090acValue2 := block280090acArg2.
    block280090acValue3 := (block280090acValue2) key.
    block280090acValue4 := (block280090acValue1) < (block280090acValue3).
    block280090acValue4
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            timerProcs := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            nextTimerExpiry := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            cTime := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            lastCTime := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            inProc := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            bgGraphicRequests := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            bgGraphicSemaphore := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            procsEnabled := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200245ec; bytecode file offset 0xa07cc"
!CwAppContext methodsFor: 'recovered'!
enableAsyncIO
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asyncIOActive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := AsyncIOMessage.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asyncIOMessage: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := asyncIOProcess.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) terminateAsyncIOProcess.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            asyncIOProcess := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := asyncIOProcess.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := asyncIOProcess.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDead.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) terminateAsyncIOProcess.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) forkAsyncIOProcess.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200277fc; bytecode file offset 0xa39d0"
!CwAppContext methodsFor: 'recovered'!
canSleep
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asyncIOActive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := procsEnabled.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := workProcs.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := timerProcs.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nextTimerExpiry.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) asyncIOActive.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) updateCounter.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := cTime.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asyncIODelay.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200278cc; bytecode file offset 0xa3aa4"
!CwAppContext methodsFor: 'recovered'!
removeTimeout: recoveredArg1
    | recoveredLocal1 recoveredValue0 |
    recoveredLocal1 := false.
    recoveredValue0 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := timerProcs.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack3 := [
    recoveredLocal1 := true.
    true
].
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            (recoveredBlock8Stack1) remove: (recoveredBlock8Stack2) ifAbsent: (recoveredBlock8Stack3).
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 66] ifFalse: [recoveredBlock8PC := 42].
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Stack1 := timerProcs.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) size.
            recoveredBlock8PC := 46.
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8Stack2 := 0.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            (recoveredBlock8Stack1 ~~ recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 58] ifFalse: [recoveredBlock8PC := 52].
        ].
        recoveredBlock8Step = 52 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) emptyTimerQueue.
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack1 := timerProcs.
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) first.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) key.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            nextTimerExpiry := recoveredBlock8Stack2.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue0) critical.
    ^self
! !

"winsys.ic method 0x2002e480; bytecode file offset 0xaa698"
!CwAppContext methodsFor: 'recovered'!
forkAsyncIOProcess
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := Processor.
    (recoveredBlock4Value0) enableAsyncMessages: (false).
    recoveredBlock4Value1 := [
    | recoveredBlock4Block15Stack0 recoveredBlock4Block15Stack1 recoveredBlock4Block15Stack2 recoveredBlock4Block15Stack3 recoveredBlock4Block15PC recoveredBlock4Block15Step recoveredBlock4Block15Done recoveredBlock4Block15Result |
    recoveredBlock4Block15Stack0 := nil.
    recoveredBlock4Block15PC := 22.
    recoveredBlock4Block15Done := false.
    [recoveredBlock4Block15Done not] whileTrue: [
        recoveredBlock4Block15Step := recoveredBlock4Block15PC.
        recoveredBlock4Block15Step = 22 ifTrue: [
            recoveredBlock4Block15Stack1 := Delay.
            recoveredBlock4Block15PC := 24.
        ].
        recoveredBlock4Block15Step = 24 ifTrue: [
            recoveredBlock4Block15Stack2 := CwAppContext.
            recoveredBlock4Block15PC := 26.
        ].
        recoveredBlock4Block15Step = 26 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) asyncIODelay.
            recoveredBlock4Block15PC := 28.
        ].
        recoveredBlock4Block15Step = 28 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) forMilliseconds: (recoveredBlock4Block15Stack2).
            recoveredBlock4Block15PC := 30.
        ].
        recoveredBlock4Block15Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15PC := 33.
        ].
        recoveredBlock4Block15Step = 33 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal1.
            recoveredBlock4Block15PC := 36.
        ].
        recoveredBlock4Block15Step = 36 ifTrue: [
            (recoveredBlock4Block15Stack1) wait.
            recoveredBlock4Block15PC := 38.
        ].
        recoveredBlock4Block15Step = 38 ifTrue: [
            recoveredBlock4Block15Stack1 := Default.
            recoveredBlock4Block15PC := 40.
        ].
        recoveredBlock4Block15Step = 40 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) isIdle.
            recoveredBlock4Block15PC := 42.
        ].
        recoveredBlock4Block15Step = 42 ifTrue: [
            (recoveredBlock4Block15Stack1) ifTrue: [recoveredBlock4Block15PC := 50] ifFalse: [recoveredBlock4Block15PC := 46].
        ].
        recoveredBlock4Block15Step = 46 ifTrue: [
            recoveredBlock4Block15Stack1 := CwAppContext.
            recoveredBlock4Block15PC := 48.
        ].
        recoveredBlock4Block15Step = 48 ifTrue: [
            (recoveredBlock4Block15Stack1) asyncIOInterrupt.
            recoveredBlock4Block15PC := 50.
        ].
        recoveredBlock4Block15Step = 50 ifTrue: [
            recoveredBlock4Block15PC := 33.
        ].
    ].
    recoveredBlock4Block15Result
].
    recoveredBlock4Value2 := [
    | recoveredBlock4Block54Value0 recoveredBlock4Block54Value1 recoveredBlock4Block54Value2 recoveredBlock4Block54Value3 |
    recoveredBlock4Block54Value0 := Processor.
    (recoveredBlock4Block54Value0) enableAsyncMessages: (true).
    AsyncIOActive := false.
    (self) wake.
    recoveredBlock4Block54Value1 := System.
    recoveredBlock4Block54Value2 := MxCW4.
    recoveredBlock4Block54Value3 := (recoveredBlock4Block54Value1) errorMessage: (recoveredBlock4Block54Value2).
    recoveredBlock4Block54Value3
].
    recoveredBlock4Value3 := (recoveredBlock4Value1) whenExceptionDo: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) newProcess.
    asyncIOProcess := recoveredValue1.
    recoveredValue2 := asyncIOProcess.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) processName: ('CwAsyncIOProcess').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := Processor.
    recoveredValue6 := (recoveredValue5) userInterruptPriority.
    (recoveredValue4) priority: (recoveredValue6).
    (recoveredValue2) resume.
    ^self
! !

"winsys.ic method 0x2002f02c; bytecode file offset 0xab220"
!CwAppContext methodsFor: 'recovered'!
syncExecInUI: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) runningInUI.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Semaphore.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := bgGraphicRequests.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 |
    recoveredBlock36Value0 := recoveredArg1.
    recoveredBlock36Value1 := [
    | recoveredBlock36Block45Value0 recoveredBlock36Block45Value1 |
    recoveredLocal1 := true.
    recoveredBlock36Block45Value0 := recoveredLocal4.
    recoveredBlock36Block45Value1 := (recoveredBlock36Block45Value0) signal.
    recoveredBlock36Block45Value1
].
    recoveredBlock36Value2 := (recoveredBlock36Value0) whenExceptionDo: (recoveredBlock36Value1).
    recoveredLocal3 := recoveredBlock36Value2.
    recoveredBlock36Value3 := recoveredLocal4.
    recoveredBlock36Value4 := (recoveredBlock36Value3) signal.
    recoveredBlock36Value4
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) wake.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := MxCW5.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20031834; bytecode file offset 0xada30"
!CwAppContext methodsFor: 'recovered'!
addTimeout: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 43200000.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := NlsCatCW.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22Stack6 recoveredBlock22Stack7 recoveredBlock22Stack8 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nextTimerExpiry.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            (recoveredBlock22Stack1 ~~ nil) ifTrue: [recoveredBlock22PC := 50] ifFalse: [recoveredBlock22PC := 34].
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack1 := Time.
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) millisecondClockValue.
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            lastCTime := recoveredBlock22Stack1.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            (recoveredBlock22Stack1) updateCounter.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack1 := cTime.
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg1.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (recoveredBlock22Stack2).
            recoveredBlock22PC := 59.
        ].
        recoveredBlock22Step = 59 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 60.
        ].
        recoveredBlock22Step = 60 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack2.
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack2 := nextTimerExpiry.
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            (recoveredBlock22Stack1 ~~ recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 75] ifFalse: [recoveredBlock22PC := 68].
        ].
        recoveredBlock22Step = 68 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 71.
        ].
        recoveredBlock22Step = 71 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (1).
            recoveredBlock22PC := 72.
        ].
        recoveredBlock22Step = 72 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack1 := timerProcs.
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 77 ifTrue: [
            recoveredBlock22Stack2 := Association.
            recoveredBlock22PC := 79.
        ].
        recoveredBlock22Step = 79 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal2.
            recoveredBlock22PC := 82.
        ].
        recoveredBlock22Step = 82 ifTrue: [
            recoveredBlock22Stack4 := CwCallbackRec.
            recoveredBlock22PC := 84.
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack5 := recoveredArg2.
            recoveredBlock22PC := 87.
        ].
        recoveredBlock22Step = 87 ifTrue: [
            recoveredBlock22Stack6 := recoveredArg3.
            recoveredBlock22PC := 90.
        ].
        recoveredBlock22Step = 90 ifTrue: [
            recoveredBlock22Stack7 := recoveredArg4.
            recoveredBlock22PC := 93.
        ].
        recoveredBlock22Step = 93 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) receiver: (recoveredBlock22Stack5) selector: (recoveredBlock22Stack6) clientData: (recoveredBlock22Stack7).
            recoveredBlock22PC := 96.
        ].
        recoveredBlock22Step = 96 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) key: (recoveredBlock22Stack3) value: (recoveredBlock22Stack4).
            recoveredBlock22PC := 98.
        ].
        recoveredBlock22Step = 98 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 99.
        ].
        recoveredBlock22Step = 99 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack3.
            recoveredBlock22PC := 102.
        ].
        recoveredBlock22Step = 102 ifTrue: [
            (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 104.
        ].
        recoveredBlock22Step = 104 ifTrue: [
            recoveredBlock22Stack1 := timerProcs.
            recoveredBlock22PC := 106.
        ].
        recoveredBlock22Step = 106 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) first.
            recoveredBlock22PC := 108.
        ].
        recoveredBlock22Step = 108 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) key.
            recoveredBlock22PC := 110.
        ].
        recoveredBlock22Step = 110 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 111.
        ].
        recoveredBlock22Step = 111 ifTrue: [
            nextTimerExpiry := recoveredBlock22Stack2.
            recoveredBlock22PC := 113.
        ].
        recoveredBlock22Step = 113 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200395f0; bytecode file offset 0xb57dc"
!CwAppContext methodsFor: 'recovered'!
idle
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := procsEnabled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := nextTimerExpiry.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            (recoveredBlock16Stack2 == nil) ifTrue: [recoveredBlock16PC := 99] ifFalse: [recoveredBlock16PC := 28].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := false.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredLocal2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            (recoveredBlock16Stack1) updateCounter.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack2 := cTime.
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Stack3 := nextTimerExpiry.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) >= (recoveredBlock16Stack3).
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 46] ifFalse: [recoveredBlock16PC := 99].
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredBlock16Stack1 := timerProcs.
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) removeFirst.
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredLocal3 := recoveredBlock16Stack1.
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack1 := timerProcs.
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isEmpty.
            recoveredBlock16PC := 56.
        ].
        recoveredBlock16Step = 56 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 60] ifFalse: [recoveredBlock16PC := 66].
        ].
        recoveredBlock16Step = 60 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 61.
        ].
        recoveredBlock16Step = 61 ifTrue: [
            (recoveredBlock16Stack1) emptyTimerQueue.
            recoveredBlock16PC := 63.
        ].
        recoveredBlock16Step = 63 ifTrue: [
            recoveredBlock16PC := 74.
        ].
        recoveredBlock16Step = 66 ifTrue: [
            recoveredBlock16Stack1 := timerProcs.
            recoveredBlock16PC := 68.
        ].
        recoveredBlock16Step = 68 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) first.
            recoveredBlock16PC := 70.
        ].
        recoveredBlock16Step = 70 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) key.
            recoveredBlock16PC := 72.
        ].
        recoveredBlock16Step = 72 ifTrue: [
            nextTimerExpiry := recoveredBlock16Stack1.
            recoveredBlock16PC := 74.
        ].
        recoveredBlock16Step = 74 ifTrue: [
            recoveredBlock16Stack1 := true.
            recoveredBlock16PC := 75.
        ].
        recoveredBlock16Step = 75 ifTrue: [
            inProc := recoveredBlock16Stack1.
            recoveredBlock16PC := 77.
        ].
        recoveredBlock16Step = 77 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal3.
            recoveredBlock16PC := 80.
        ].
        recoveredBlock16Step = 80 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) value.
            recoveredBlock16PC := 82.
        ].
        recoveredBlock16Step = 82 ifTrue: [
            (recoveredBlock16Stack1) send.
            recoveredBlock16PC := 84.
        ].
        recoveredBlock16Step = 84 ifTrue: [
            recoveredBlock16Stack1 := inProc.
            recoveredBlock16PC := 86.
        ].
        recoveredBlock16Step = 86 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 92] ifFalse: [recoveredBlock16PC := 90].
        ].
        recoveredBlock16Step = 90 ifTrue: [
            recoveredBlock16Stack1 := false.
            recoveredBlock16PC := 91.
        ].
        recoveredBlock16Step = 91 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 92 ifTrue: [
            recoveredBlock16Stack1 := false.
            recoveredBlock16PC := 93.
        ].
        recoveredBlock16Step = 93 ifTrue: [
            inProc := recoveredBlock16Stack1.
            recoveredBlock16PC := 95.
        ].
        recoveredBlock16Step = 95 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal2.
            recoveredBlock16PC := 98.
        ].
        recoveredBlock16Step = 98 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 99 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock102Stack0 recoveredBlock102Stack1 recoveredBlock102Stack2 recoveredBlock102Stack3 recoveredBlock102PC recoveredBlock102Step recoveredBlock102Done recoveredBlock102Result |
    recoveredBlock102Stack0 := self.
    recoveredBlock102PC := 108.
    recoveredBlock102Done := false.
    [recoveredBlock102Done not] whileTrue: [
        recoveredBlock102Step := recoveredBlock102PC.
        recoveredBlock102Step = 108 ifTrue: [
            recoveredBlock102Stack1 := nil.
            recoveredBlock102PC := 109.
        ].
        recoveredBlock102Step = 109 ifTrue: [
            recoveredBlock102Stack2 := workProcs.
            recoveredBlock102PC := 111.
        ].
        recoveredBlock102Step = 111 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) notEmpty.
            recoveredBlock102PC := 113.
        ].
        recoveredBlock102Step = 113 ifTrue: [
            (recoveredBlock102Stack2) ifTrue: [recoveredBlock102PC := 116] ifFalse: [recoveredBlock102PC := 175].
        ].
        recoveredBlock102Step = 116 ifTrue: [
            recoveredBlock102PC := 117.
        ].
        recoveredBlock102Step = 117 ifTrue: [
            recoveredBlock102Stack1 := workProcs.
            recoveredBlock102PC := 119.
        ].
        recoveredBlock102Step = 119 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) removeFirst.
            recoveredBlock102PC := 120.
        ].
        recoveredBlock102Step = 120 ifTrue: [
            recoveredLocal3 := recoveredBlock102Stack1.
            recoveredBlock102PC := 123.
        ].
        recoveredBlock102Step = 123 ifTrue: [
            recoveredBlock102Stack1 := true.
            recoveredBlock102PC := 124.
        ].
        recoveredBlock102Step = 124 ifTrue: [
            inProc := recoveredBlock102Stack1.
            recoveredBlock102PC := 126.
        ].
        recoveredBlock102Step = 126 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal3.
            recoveredBlock102PC := 129.
        ].
        recoveredBlock102Step = 129 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) send.
            recoveredBlock102PC := 131.
        ].
        recoveredBlock102Step = 131 ifTrue: [
            recoveredLocal1 := recoveredBlock102Stack1.
            recoveredBlock102PC := 134.
        ].
        recoveredBlock102Step = 134 ifTrue: [
            recoveredBlock102Stack1 := inProc.
            recoveredBlock102PC := 136.
        ].
        recoveredBlock102Step = 136 ifTrue: [
            (recoveredBlock102Stack1) ifTrue: [recoveredBlock102PC := 142] ifFalse: [recoveredBlock102PC := 140].
        ].
        recoveredBlock102Step = 140 ifTrue: [
            recoveredBlock102Stack1 := false.
            recoveredBlock102PC := 141.
        ].
        recoveredBlock102Step = 141 ifTrue: [
            ^recoveredBlock102Stack1
        ].
        recoveredBlock102Step = 142 ifTrue: [
            recoveredBlock102Stack1 := false.
            recoveredBlock102PC := 143.
        ].
        recoveredBlock102Step = 143 ifTrue: [
            inProc := recoveredBlock102Stack1.
            recoveredBlock102PC := 145.
        ].
        recoveredBlock102Step = 145 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal1.
            recoveredBlock102PC := 148.
        ].
        recoveredBlock102Step = 148 ifTrue: [
            recoveredBlock102Stack2 := false.
            recoveredBlock102PC := 149.
        ].
        recoveredBlock102Step = 149 ifTrue: [
            (recoveredBlock102Stack1 ~~ recoveredBlock102Stack2) ifTrue: [recoveredBlock102PC := 168] ifFalse: [recoveredBlock102PC := 152].
        ].
        recoveredBlock102Step = 152 ifTrue: [
            recoveredBlock102Stack1 := workProcs.
            recoveredBlock102PC := 154.
        ].
        recoveredBlock102Step = 154 ifTrue: [
            recoveredBlock102Stack2 := recoveredLocal3.
            recoveredBlock102PC := 157.
        ].
        recoveredBlock102Step = 157 ifTrue: [
            (recoveredBlock102Stack1) addLast: (recoveredBlock102Stack2).
            recoveredBlock102PC := 159.
        ].
        recoveredBlock102Step = 159 ifTrue: [
            recoveredBlock102Stack1 := false.
            recoveredBlock102PC := 160.
        ].
        recoveredBlock102Step = 160 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Stack1.
            recoveredBlock102PC := 161.
        ].
        recoveredBlock102Step = 161 ifTrue: [
            recoveredLocal2 := recoveredBlock102Stack2.
            recoveredBlock102PC := 164.
        ].
        recoveredBlock102Step = 164 ifTrue: [
            recoveredBlock102PC := 175.
        ].
        recoveredBlock102Step = 168 ifTrue: [
            recoveredBlock102Stack1 := workProcs.
            recoveredBlock102PC := 170.
        ].
        recoveredBlock102Step = 170 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) isEmpty.
            recoveredBlock102PC := 171.
        ].
        recoveredBlock102Step = 171 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Stack1.
            recoveredBlock102PC := 172.
        ].
        recoveredBlock102Step = 172 ifTrue: [
            recoveredLocal2 := recoveredBlock102Stack2.
            recoveredBlock102PC := 175.
        ].
        recoveredBlock102Step = 175 ifTrue: [
            recoveredBlock102Result := recoveredBlock102Stack1.
            recoveredBlock102Done := true.
        ].
    ].
    recoveredBlock102Result
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

