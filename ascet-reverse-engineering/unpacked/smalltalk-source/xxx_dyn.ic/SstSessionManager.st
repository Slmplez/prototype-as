"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000180c; bytecode file offset 0x62c08"
!SstSessionManager methodsFor: 'recovered'!
sessionClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) sessionClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002a68; bytecode file offset 0x63b88"
!SstSessionManager methodsFor: 'recovered'!
serverUrl
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) accessibleUrls.
    recoveredValue2 := (recoveredValue1) first.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200038b4; bytecode file offset 0x649e8"
!SstSessionManager methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003b04; bytecode file offset 0x64d78"
!SstSessionManager methodsFor: 'recovered'!
configuration
    | recoveredValue0 |
    recoveredValue0 := configuration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000524c; bytecode file offset 0x66318"
!SstSessionManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    sessions := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x200054dc; bytecode file offset 0x665ac"
!SstSessionManager methodsFor: 'recovered'!
shouldReap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) reapSchedule.
    recoveredValue1 := Time.
    recoveredValue2 := (recoveredValue1) now.
    recoveredValue3 := (recoveredValue0) < (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007b40; bytecode file offset 0x68c0c"
!SstSessionManager methodsFor: 'recovered'!
close: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) remove: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) close.
    ^self
! !

"xxx_dyn.ic method 0x20007cd4; bytecode file offset 0x68f50"
!SstSessionManager methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200081d4; bytecode file offset 0x692b8"
!SstSessionManager methodsFor: 'recovered'!
configuration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configuration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009404; bytecode file offset 0x6a4d0"
!SstSessionManager methodsFor: 'recovered'!
open: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) add: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) openFor: (self).
    ^self
! !

"xxx_dyn.ic method 0x20009614; bytecode file offset 0x6a6e0"
!SstSessionManager methodsFor: 'recovered'!
createSessionForRequest: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) basicCreateSessionForRequest: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) open: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000a85c; bytecode file offset 0x6b924"
!SstSessionManager methodsFor: 'recovered'!
reapSchedule
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := reapSchedule.
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
            (recoveredStack1) touchReapSchedule.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := reapSchedule.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000ac9c; bytecode file offset 0x6bd78"
!SstSessionManager methodsFor: 'recovered'!
genSessionIdForRequest: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Time.
    recoveredValue1 := (recoveredValue0) millisecondClockValue.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) sender.
    recoveredValue4 := (recoveredValue3) address.
    recoveredValue5 := (recoveredValue4) hash.
    recoveredValue6 := (recoveredValue1) + (recoveredValue5).
    recoveredValue7 := (recoveredValue6) printString.
    ^recoveredValue7
! !

"xxx_dyn.ic method 0x2000c5d4; bytecode file offset 0x6d6a0"
!SstSessionManager methodsFor: 'recovered'!
configureResponseForRequest: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) session.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) touch.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000da94; bytecode file offset 0x6eb68"
!SstSessionManager methodsFor: 'recovered'!
inactivityTimeoutInterval
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := inactivityTimeoutInterval.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Duration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) configuration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) sessionInactivityTimeout.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) seconds: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            inactivityTimeoutInterval := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := inactivityTimeoutInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000e500; bytecode file offset 0x6f5dc"
!SstSessionManager methodsFor: 'recovered'!
basicCreateSessionForRequest: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) sessionClass.
    recoveredValue2 := (recoveredValue1) for: (self).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) genSessionIdForRequest: (recoveredValue4).
    (recoveredValue2) key: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) session: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"xxx_dyn.ic method 0x200116c0; bytecode file offset 0x72794"
!SstSessionManager methodsFor: 'recovered'!
processRequest: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) session.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoGenerateSessions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSessionForRequest: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200122f4; bytecode file offset 0x733c0"
!SstSessionManager methodsFor: 'recovered'!
removeSessionNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := sessions.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [
    ^self
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) removeKey: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20012320; bytecode file offset 0x733f0"
!SstSessionManager methodsFor: 'recovered'!
remove: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := sessions.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) key.
    recoveredBlock4Value3 := [
    ^self
].
    recoveredBlock4Value4 := (recoveredBlock4Value0) removeKey: (recoveredBlock4Value2) ifAbsent: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20012888; bytecode file offset 0x7395c"
!SstSessionManager methodsFor: 'recovered'!
removeExpiredSessions
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := sessions.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := [:block2800adacArg1 | 
    | block2800adacValue0 block2800adacValue1 |
    block2800adacValue0 := block2800adacArg1.
    block2800adacValue1 := (block2800adacValue0) hasExpired.
    block2800adacValue1
].
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) reject: (recoveredBlock4Stack2).
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            sessions := recoveredBlock4Stack2.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x20013258; bytecode file offset 0x74338"
!SstSessionManager methodsFor: 'recovered'!
touchReapSchedule
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 |
    recoveredBlock4Value0 := Time.
    recoveredBlock4Value1 := Time.
    recoveredBlock4Value2 := (recoveredBlock4Value1) now.
    recoveredBlock4Value3 := (recoveredBlock4Value2) asSeconds.
    recoveredBlock4Value4 := (self) configuration.
    recoveredBlock4Value5 := (recoveredBlock4Value4) sessionReaperInterval.
    recoveredBlock4Value6 := (recoveredBlock4Value3) + (recoveredBlock4Value5).
    recoveredBlock4Value7 := (recoveredBlock4Value0) fromSeconds: (recoveredBlock4Value6).
    recoveredBlock4Value8 := recoveredBlock4Value7.
    reapSchedule := recoveredBlock4Value8.
    recoveredBlock4Value7
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x20014e24; bytecode file offset 0x75efc"
!SstSessionManager methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shouldReap.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) reapExpiredSessions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := sessions.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) key.
    recoveredBlock11Value3 := recoveredArg1.
    recoveredBlock11Value4 := (recoveredBlock11Value0) at: (recoveredBlock11Value2) put: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) critical.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200176e0; bytecode file offset 0x787bc"
!SstSessionManager methodsFor: 'recovered'!
closeAll
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := sessions.
    recoveredLocal1 := recoveredBlock4Value0.
    recoveredBlock4Value1 := LookupTable.
    recoveredBlock4Value2 := (recoveredBlock4Value1) new.
    recoveredBlock4Value3 := recoveredBlock4Value2.
    sessions := recoveredBlock4Value3.
    recoveredBlock4Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block2800b058Arg1 | 
    | block2800b058Value0 block2800b058Value1 |
    block2800b058Value0 := block2800b058Arg1.
    block2800b058Value1 := (block2800b058Value0) close.
    block2800b058Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001d06c; bytecode file offset 0x7e144"
!SstSessionManager methodsFor: 'recovered'!
sessionFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := sessions.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasExpired.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) close: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x200257dc; bytecode file offset 0x868d4"
!SstSessionManager methodsFor: 'recovered'!
reapExpiredSessions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
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
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) shouldReap.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 28] ifFalse: [recoveredBlock16PC := 72].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := sessions.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := [:recoveredBlock16Block31Arg1 :recoveredBlock16Block31Arg2 | 
    | recoveredBlock16Block31Stack0 recoveredBlock16Block31Stack1 recoveredBlock16Block31Stack2 recoveredBlock16Block31Stack3 recoveredBlock16Block31Stack4 recoveredBlock16Block31PC recoveredBlock16Block31Step recoveredBlock16Block31Done recoveredBlock16Block31Result |
    recoveredBlock16Block31Stack0 := nil.
    recoveredBlock16Block31PC := 38.
    recoveredBlock16Block31Done := false.
    [recoveredBlock16Block31Done not] whileTrue: [
        recoveredBlock16Block31Step := recoveredBlock16Block31PC.
        recoveredBlock16Block31Step = 38 ifTrue: [
            recoveredBlock16Block31Stack1 := recoveredBlock16Block31Arg2.
            recoveredBlock16Block31PC := 39.
        ].
        recoveredBlock16Block31Step = 39 ifTrue: [
            recoveredBlock16Block31Stack1 := (recoveredBlock16Block31Stack1) hasExpired.
            recoveredBlock16Block31PC := 41.
        ].
        recoveredBlock16Block31Step = 41 ifTrue: [
            (recoveredBlock16Block31Stack1) ifTrue: [recoveredBlock16Block31PC := 44] ifFalse: [recoveredBlock16Block31PC := 54].
        ].
        recoveredBlock16Block31Step = 44 ifTrue: [
            recoveredBlock16Block31Stack1 := recoveredLocal2.
            recoveredBlock16Block31PC := 47.
        ].
        recoveredBlock16Block31Step = 47 ifTrue: [
            recoveredBlock16Block31Stack2 := recoveredBlock16Block31Arg2.
            recoveredBlock16Block31PC := 48.
        ].
        recoveredBlock16Block31Step = 48 ifTrue: [
            recoveredBlock16Block31Stack1 := (recoveredBlock16Block31Stack1) add: (recoveredBlock16Block31Stack2).
            recoveredBlock16Block31PC := 50.
        ].
        recoveredBlock16Block31Step = 50 ifTrue: [
            recoveredBlock16Block31PC := 61.
        ].
        recoveredBlock16Block31Step = 54 ifTrue: [
            recoveredBlock16Block31Stack1 := recoveredLocal1.
            recoveredBlock16Block31PC := 57.
        ].
        recoveredBlock16Block31Step = 57 ifTrue: [
            recoveredBlock16Block31Stack2 := recoveredBlock16Block31Arg1.
            recoveredBlock16Block31PC := 58.
        ].
        recoveredBlock16Block31Step = 58 ifTrue: [
            recoveredBlock16Block31Stack3 := recoveredBlock16Block31Arg2.
            recoveredBlock16Block31PC := 59.
        ].
        recoveredBlock16Block31Step = 59 ifTrue: [
            recoveredBlock16Block31Stack1 := (recoveredBlock16Block31Stack1) at: (recoveredBlock16Block31Stack2) put: (recoveredBlock16Block31Stack3).
            recoveredBlock16Block31PC := 61.
        ].
        recoveredBlock16Block31Step = 61 ifTrue: [
            recoveredBlock16Block31Result := recoveredBlock16Block31Stack1.
            recoveredBlock16Block31Done := true.
        ].
    ].
    recoveredBlock16Block31Result
].
            recoveredBlock16PC := 62.
        ].
        recoveredBlock16Step = 62 ifTrue: [
            (recoveredBlock16Stack1) keysAndValuesDo: (recoveredBlock16Stack2).
            recoveredBlock16PC := 64.
        ].
        recoveredBlock16Step = 64 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 67.
        ].
        recoveredBlock16Step = 67 ifTrue: [
            sessions := recoveredBlock16Stack1.
            recoveredBlock16PC := 69.
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 70.
        ].
        recoveredBlock16Step = 70 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) touchReapSchedule.
            recoveredBlock16PC := 72.
        ].
        recoveredBlock16Step = 72 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:block2800bed4Arg1 | 
    | block2800bed4Value0 block2800bed4Value1 |
    block2800bed4Value0 := block2800bed4Arg1.
    block2800bed4Value1 := (block2800bed4Value0) close.
    block2800bed4Value1
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

