"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000650; bytecode file offset 0x4b634"
!DateAndTime class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveSystemOffset
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x20001754; bytecode file offset 0x4c844"
!DateAndTime class methodsFor: 'recovered'!
clockPrecision
    | recoveredValue0 |
    recoveredValue0 := ClockPrecision.
    ^recoveredValue0
! !

"kernel.ic method 0x2000972c; bytecode file offset 0x54658"
!DateAndTime class methodsFor: 'recovered'!
fromMilliseconds: recoveredArg1 offset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) totalMilliseconds: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) offset: (recoveredValue4).
    ^recoveredValue0
! !

"kernel.ic method 0x2000bf98; bytecode file offset 0x56eb0"
!DateAndTime class methodsFor: 'recovered'!
date: recoveredArg1 time: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asMilliseconds.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asMilliseconds.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (self) systemOffset.
    recoveredValue6 := (recoveredValue5) asMilliseconds.
    recoveredValue7 := (recoveredValue4) - (recoveredValue6).
    recoveredValue8 := (self) systemOffset.
    recoveredValue9 := (self) fromMilliseconds: (recoveredValue7) offset: (recoveredValue8).
    ^recoveredValue9
! !

"kernel.ic method 0x2000c0f4; bytecode file offset 0x57008"
!DateAndTime class methodsFor: 'recovered'!
year: recoveredArg1 day: recoveredArg2 hour: recoveredArg3 minute: recoveredArg4 second: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := (self) systemOffset.
    recoveredValue6 := (self) year: (recoveredValue0) day: (recoveredValue1) hour: (recoveredValue2) minute: (recoveredValue3) second: (recoveredValue4) millisecond: (0) offset: (recoveredValue5).
    ^recoveredValue6
! !

"kernel.ic method 0x2000c118; bytecode file offset 0x57028"
!DateAndTime class methodsFor: 'recovered'!
year: recoveredArg1 day: recoveredArg2 hour: recoveredArg3 minute: recoveredArg4 second: recoveredArg5 offset: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := (self) year: (recoveredValue0) day: (recoveredValue1) hour: (recoveredValue2) minute: (recoveredValue3) second: (recoveredValue4) millisecond: (0) offset: (recoveredValue5).
    ^recoveredValue6
! !

"kernel.ic method 0x2000cd14; bytecode file offset 0x57c30"
!DateAndTime class methodsFor: 'recovered'!
now
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Date.
    recoveredValue1 := (recoveredValue0) dateAndTimeNow.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) at: (2).
    recoveredValue6 := (self) date: (recoveredValue3) time: (recoveredValue5).
    ^recoveredValue6
! !

"kernel.ic method 0x2000d4a4; bytecode file offset 0x583b8"
!DateAndTime class methodsFor: 'recovered'!
year: recoveredArg1 month: recoveredArg2 day: recoveredArg3 hour: recoveredArg4 minute: recoveredArg5 second: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := (self) systemOffset.
    recoveredValue7 := (self) year: (recoveredValue0) month: (recoveredValue1) day: (recoveredValue2) hour: (recoveredValue3) minute: (recoveredValue4) second: (recoveredValue5) millisecond: (0) offset: (recoveredValue6).
    ^recoveredValue7
! !

"kernel.ic method 0x2000d4c8; bytecode file offset 0x583d8"
!DateAndTime class methodsFor: 'recovered'!
year: recoveredArg1 month: recoveredArg2 day: recoveredArg3 hour: recoveredArg4 minute: recoveredArg5 second: recoveredArg6 offset: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := recoveredArg7.
    recoveredValue7 := (self) year: (recoveredValue0) month: (recoveredValue1) day: (recoveredValue2) hour: (recoveredValue3) minute: (recoveredValue4) second: (recoveredValue5) millisecond: (0) offset: (recoveredValue6).
    ^recoveredValue7
! !

"kernel.ic method 0x200147d0; bytecode file offset 0x5f6f8"
!DateAndTime class methodsFor: 'recovered'!
year: recoveredArg1 day: recoveredArg2 hour: recoveredArg3 minute: recoveredArg4 second: recoveredArg5 millisecond: recoveredArg6 offset: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := Date.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) newDay: (recoveredValue1) year: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asMilliseconds.
    recoveredValue5 := Time.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := recoveredArg5.
    recoveredValue10 := recoveredArg6.
    recoveredValue11 := (recoveredValue6) hours: (recoveredValue7) minutes: (recoveredValue8) seconds: (recoveredValue9) milliseconds: (recoveredValue10).
    recoveredValue12 := (recoveredValue11) asMilliseconds.
    recoveredValue13 := (recoveredValue4) + (recoveredValue12).
    recoveredValue14 := recoveredArg7.
    recoveredValue15 := (recoveredValue14) asMilliseconds.
    recoveredValue16 := (recoveredValue13) - (recoveredValue15).
    recoveredValue17 := recoveredArg7.
    recoveredValue18 := (self) fromMilliseconds: (recoveredValue16) offset: (recoveredValue17).
    ^recoveredValue18
! !

"kernel.ic method 0x20014ed8; bytecode file offset 0x5fdfc"
!DateAndTime class methodsFor: 'recovered'!
systemOffset
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveSystemOffset.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := SecondsPerDay.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := Duration.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) seconds: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := Duration.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := SecondsPerDay.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) seconds: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20015c58; bytecode file offset 0x60b80"
!DateAndTime class methodsFor: 'recovered'!
year: recoveredArg1 month: recoveredArg2 day: recoveredArg3 hour: recoveredArg4 minute: recoveredArg5 second: recoveredArg6 millisecond: recoveredArg7 offset: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Date.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) newDay: (recoveredValue1) monthIndex: (recoveredValue2) year: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asMilliseconds.
    recoveredValue6 := Time.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := recoveredArg5.
    recoveredValue10 := recoveredArg6.
    recoveredValue11 := recoveredArg7.
    recoveredValue12 := (recoveredValue7) hours: (recoveredValue8) minutes: (recoveredValue9) seconds: (recoveredValue10) milliseconds: (recoveredValue11).
    recoveredValue13 := (recoveredValue12) asMilliseconds.
    recoveredValue14 := (recoveredValue5) + (recoveredValue13).
    recoveredValue15 := recoveredArg8.
    recoveredValue16 := (recoveredValue15) asMilliseconds.
    recoveredValue17 := (recoveredValue14) - (recoveredValue16).
    recoveredValue18 := recoveredArg8.
    recoveredValue19 := (self) fromMilliseconds: (recoveredValue17) offset: (recoveredValue18).
    ^recoveredValue19
! !

"kernel.ic method 0x200177a4; bytecode file offset 0x626c8"
!DateAndTime class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Duration.
    recoveredValue1 := (recoveredValue0) milliseconds: (1).
    ClockPrecision := recoveredValue1.
    recoveredValue2 := Duration.
    recoveredValue3 := (recoveredValue2) days: (0) hours: (12) minutes: (0) seconds: (0).
    HighOffset := recoveredValue3.
    recoveredValue4 := Duration.
    recoveredValue5 := (recoveredValue4) days: (0) hours: (-12) minutes: (0) seconds: (0).
    LowOffset := recoveredValue5.
    ^self
! !

