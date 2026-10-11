"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000190; bytecode file offset 0x7c350"
!CwAppContext class methodsFor: 'recovered'!
postExiting
    ^self
! !

"winsys.ic method 0x20000980; bytecode file offset 0x7cc7c"
!CwAppContext class methodsFor: 'recovered'!
default
    | recoveredValue0 |
    recoveredValue0 := Default.
    ^recoveredValue0
! !

"winsys.ic method 0x20001228; bytecode file offset 0x7d460"
!CwAppContext class methodsFor: 'recovered'!
idle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Default.
    recoveredValue1 := (recoveredValue0) idle.
    ^recoveredValue1
! !

"winsys.ic method 0x20001b80; bytecode file offset 0x7de10"
!CwAppContext class methodsFor: 'recovered'!
shutDown
    (self) terminateAsyncIOProcess.
    ^self
! !

"winsys.ic method 0x20001d7c; bytecode file offset 0x7e054"
!CwAppContext class methodsFor: 'recovered'!
defaultApplicationName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultApplicationName := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001da0; bytecode file offset 0x7e054"
!CwAppContext class methodsFor: 'recovered'!
defaultApplicationClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultApplicationClass := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001e84; bytecode file offset 0x7e054"
!CwAppContext class methodsFor: 'recovered'!
default: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Default := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20002068; bytecode file offset 0x7e22c"
!CwAppContext class methodsFor: 'recovered'!
asyncIOActive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AsyncIOActive.
    recoveredValue1 := (recoveredValue0) ~~ (false).
    ^recoveredValue1
! !

"winsys.ic method 0x200020d4; bytecode file offset 0x7e36c"
!CwAppContext class methodsFor: 'recovered'!
asyncIOInterrupt
    | recoveredValue0 |
    recoveredValue0 := Default.
    (recoveredValue0) wake.
    ^self
! !

"winsys.ic method 0x2000554c; bytecode file offset 0x81844"
!CwAppContext class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"winsys.ic method 0x2000685c; bytecode file offset 0x82a24"
!CwAppContext class methodsFor: 'recovered'!
asyncIODelay: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AsyncIODelay := recoveredValue0.
    (self) terminateAsyncIOProcess.
    ^self
! !

"winsys.ic method 0x2000a250; bytecode file offset 0x86418"
!CwAppContext class methodsFor: 'recovered'!
reinitialize
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) initialize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000aacc; bytecode file offset 0x86c94"
!CwAppContext class methodsFor: 'recovered'!
cleanUpBeforeWalkback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) cleanUpBeforeWalkback.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000ab0c; bytecode file offset 0x86cd4"
!CwAppContext class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AsyncIOActive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) asyncIOActive: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000b834; bytecode file offset 0x879fc"
!CwAppContext class methodsFor: 'recovered'!
asyncIOActive: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            AsyncIOActive := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) terminateAsyncIOProcess.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000dac4; bytecode file offset 0x89c9c"
!CwAppContext class methodsFor: 'recovered'!
defaultApplicationName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultApplicationName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'envy'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := DefaultApplicationName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000dad4; bytecode file offset 0x89c9c"
!CwAppContext class methodsFor: 'recovered'!
defaultApplicationClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultApplicationClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'ENVY'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := DefaultApplicationClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20012a80; bytecode file offset 0x8ec54"
!CwAppContext class methodsFor: 'recovered'!
initializeSystem
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := PlatformWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) startRun.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := CgImplementationSupport.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) startRun.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := CommonWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) startRun.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20018f74; bytecode file offset 0x95148"
!CwAppContext class methodsFor: 'recovered'!
asyncIODelay
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AsyncIODelay.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AsyncIODelay.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'CW'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsystemType: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'MOTIF'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 200.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2001a7e4; bytecode file offset 0x969c8"
!CwAppContext class methodsFor: 'recovered'!
preStartUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AsyncIOActive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) installed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := MxCW2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            AsyncIOActive := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) terminateAsyncIOProcess.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001c570; bytecode file offset 0x98754"
!CwAppContext class methodsFor: 'recovered'!
terminateAsyncIOProcess
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | block28008eb4Stack0 block28008eb4Stack1 block28008eb4Stack2 block28008eb4Stack3 block28008eb4PC block28008eb4Step block28008eb4Done block28008eb4Result |
    block28008eb4Stack0 := self.
    block28008eb4PC := 4.
    block28008eb4Done := false.
    [block28008eb4Done not] whileTrue: [
        block28008eb4Step := block28008eb4PC.
        block28008eb4Step = 4 ifTrue: [
            block28008eb4Stack1 := Processor.
            block28008eb4PC := 6.
        ].
        block28008eb4Step = 6 ifTrue: [
            block28008eb4Stack1 := (block28008eb4Stack1) allProcesses.
            block28008eb4PC := 7.
        ].
        block28008eb4Step = 7 ifTrue: [
            block28008eb4Stack2 := [:block28008ed8Arg1 | 
    | block28008ed8Stack0 block28008ed8Stack1 block28008ed8Stack2 block28008ed8Stack3 block28008ed8Stack4 block28008ed8PC block28008ed8Step block28008ed8Done block28008ed8Result |
    block28008ed8Stack0 := self.
    block28008ed8PC := 4.
    block28008ed8Done := false.
    [block28008ed8Done not] whileTrue: [
        block28008ed8Step := block28008ed8PC.
        block28008ed8Step = 4 ifTrue: [
            block28008ed8Stack1 := nil.
            block28008ed8PC := 5.
        ].
        block28008ed8Step = 5 ifTrue: [
            block28008ed8Stack2 := block28008ed8Arg1.
            block28008ed8PC := 6.
        ].
        block28008ed8Step = 6 ifTrue: [
            block28008ed8Stack2 := (block28008ed8Stack2) processName.
            block28008ed8PC := 8.
        ].
        block28008ed8Step = 8 ifTrue: [
            block28008ed8Stack3 := 'CwAsyncIOProcess'.
            block28008ed8PC := 10.
        ].
        block28008ed8Step = 10 ifTrue: [
            block28008ed8Stack2 := (block28008ed8Stack2) = (block28008ed8Stack3).
            block28008ed8PC := 11.
        ].
        block28008ed8Step = 11 ifTrue: [
            (block28008ed8Stack2) ifTrue: [block28008ed8PC := 14] ifFalse: [block28008ed8PC := 18].
        ].
        block28008ed8Step = 14 ifTrue: [
            block28008ed8PC := 15.
        ].
        block28008ed8Step = 15 ifTrue: [
            block28008ed8Stack1 := block28008ed8Arg1.
            block28008ed8PC := 16.
        ].
        block28008ed8Step = 16 ifTrue: [
            block28008ed8Stack1 := (block28008ed8Stack1) terminate.
            block28008ed8PC := 18.
        ].
        block28008ed8Step = 18 ifTrue: [
            block28008ed8Result := block28008ed8Stack1.
            block28008ed8Done := true.
        ].
    ].
    block28008ed8Result
].
            block28008eb4PC := 9.
        ].
        block28008eb4Step = 9 ifTrue: [
            block28008eb4PC := 27.
        ].
        block28008eb4Step = 27 ifTrue: [
            block28008eb4Stack1 := (block28008eb4Stack1) do: (block28008eb4Stack2).
            block28008eb4PC := 29.
        ].
        block28008eb4Step = 29 ifTrue: [
            block28008eb4Result := block28008eb4Stack1.
            block28008eb4Done := true.
        ].
    ].
    block28008eb4Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20025540; bytecode file offset 0xa1740"
!CwAppContext class methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) new.
    (self) default: (recoveredValue0).
    recoveredValue1 := Semaphore.
    recoveredValue2 := (recoveredValue1) new.
    ActivitySemaphore := recoveredValue2.
    recoveredValue3 := DirectedMessage.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) receiver: (self).
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) selector: ('idle').
    recoveredValue7 := (recoveredValue4) arguments: (#()).
    IdleMessage := recoveredValue7.
    recoveredValue8 := DirectedMessage.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) receiver: (self).
    recoveredValue11 := recoveredValue9.
    (recoveredValue11) selector: ('asyncIOInterrupt').
    recoveredValue12 := (recoveredValue9) arguments: (#()).
    AsyncIOMessage := recoveredValue12.
    recoveredValue13 := OSWidget.
    recoveredValue14 := recoveredValue13.
    recoveredValue15 := IdleMessage.
    (recoveredValue14) idleMessage: (recoveredValue15).
    recoveredValue16 := AsyncIOMessage.
    (recoveredValue13) asyncIOMessage: (recoveredValue16).
    ^self
! !

