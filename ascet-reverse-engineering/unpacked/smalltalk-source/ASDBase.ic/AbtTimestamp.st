"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002878; bytecode file offset 0x8ffcfc"
!AbtTimestamp methodsFor: 'recovered'!
abtAsTimestamp
    ^self
! !

"ASDBase.ic method 0x2000686c; bytecode file offset 0x908be4"
!AbtTimestamp methodsFor: 'recovered'!
abtAsTime
    | recoveredValue0 |
    recoveredValue0 := (self) time.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200094b8; bytecode file offset 0x908be4"
!AbtTimestamp methodsFor: 'recovered'!
abtAsDate
    | recoveredValue0 |
    recoveredValue0 := (self) date.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a004; bytecode file offset 0x908be4"
!AbtTimestamp methodsFor: 'recovered'!
timestampValue
    | recoveredValue0 |
    recoveredValue0 := (self) asMicroseconds.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002efc4; bytecode file offset 0x934580"
!AbtTimestamp methodsFor: 'recovered'!
milliSeconds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) time.
    recoveredValue1 := (recoveredValue0) milliseconds.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200848b8; bytecode file offset 0x981ca4"
!AbtTimestamp methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printWithMicrosecondsOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a1d50; bytecode file offset 0x99e6ec"
!AbtTimestamp methodsFor: 'recovered'!
totalSeconds
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) date.
    recoveredValue1 := (recoveredValue0) asSeconds.
    recoveredValue2 := (self) time.
    recoveredValue3 := (recoveredValue2) asSeconds.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bb79c; bytecode file offset 0x9b8054"
!AbtTimestamp methodsFor: 'recovered'!
microSeconds: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rem: (1000).
    uSecs := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200bdc2c; bytecode file offset 0x9bb178"
!AbtTimestamp methodsFor: 'recovered'!
date: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    date := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf090; bytecode file offset 0x9bc0b4"
!AbtTimestamp methodsFor: 'recovered'!
time: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    time := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d3d1c; bytecode file offset 0x9d05e0"
!AbtTimestamp methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) totalSeconds.
    recoveredValue1 := (recoveredValue0) * (1000000).
    recoveredValue2 := (self) microSeconds.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (recoveredValue3) hash.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ff824; bytecode file offset 0x9fc0e4"
!AbtTimestamp methodsFor: 'recovered'!
milliSeconds: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) time.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) milliseconds: (recoveredValue1).
    (self) microSeconds: (0).
    ^self
! !

"ASDBase.ic method 0x20114c80; bytecode file offset 0xa11544"
!AbtTimestamp methodsFor: 'recovered'!
asBytesExcludingMicroseconds
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) totalSeconds.
    (recoveredValue2) uint32At: (0) put: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20140034; bytecode file offset 0xa3c8f8"
!AbtTimestamp methodsFor: 'recovered'!
asMicroseconds
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) date.
    recoveredValue1 := (recoveredValue0) asMilliseconds.
    recoveredValue2 := (self) time.
    recoveredValue3 := (recoveredValue2) asMilliseconds.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (recoveredValue4) * (1000).
    recoveredValue6 := (self) microSeconds.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2014d180; bytecode file offset 0xa49a38"
!AbtTimestamp methodsFor: 'recovered'!
microSeconds
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := uSecs.
    recoveredValue1 := [
    uSecs := 0.
    0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017edf4; bytecode file offset 0xa7b6b4"
!AbtTimestamp methodsFor: 'recovered'!
date
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := date.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Date.
    recoveredBlock6Value1 := (recoveredBlock6Value0) fromDays: (0).
    recoveredBlock6Value2 := recoveredBlock6Value1.
    date := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017efd4; bytecode file offset 0xa7b894"
!AbtTimestamp methodsFor: 'recovered'!
time
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := time.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Time.
    recoveredBlock6Value1 := (recoveredBlock6Value0) fromSeconds: (0).
    recoveredBlock6Value2 := recoveredBlock6Value1.
    time := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2022f6a8; bytecode file offset 0xb2bf84"
!AbtTimestamp methodsFor: 'recovered'!
abtAsDateAndTime
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := DateAndTime.
    recoveredValue1 := (self) date.
    recoveredValue2 := (recoveredValue1) year.
    recoveredValue3 := (self) date.
    recoveredValue4 := (recoveredValue3) monthIndex.
    recoveredValue5 := (self) date.
    recoveredValue6 := (recoveredValue5) dayOfMonth.
    recoveredValue7 := (self) time.
    recoveredValue8 := (recoveredValue7) hours.
    recoveredValue9 := (self) time.
    recoveredValue10 := (recoveredValue9) minutes.
    recoveredValue11 := (self) time.
    recoveredValue12 := (recoveredValue11) seconds.
    recoveredValue13 := (recoveredValue0) year: (recoveredValue2) month: (recoveredValue4) day: (recoveredValue6) hour: (recoveredValue8) minute: (recoveredValue10) second: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x2024f77c; bytecode file offset 0xb4c050"
!AbtTimestamp methodsFor: 'recovered'!
totalSeconds: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Time.
    recoveredValue2 := (recoveredValue1) secondsPerDay.
    recoveredValue3 := (recoveredValue0) \\ (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := Date.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) - (recoveredValue6).
    recoveredValue8 := Time.
    recoveredValue9 := (recoveredValue8) secondsPerDay.
    recoveredValue10 := (recoveredValue7) // (recoveredValue9).
    recoveredValue11 := (recoveredValue4) fromDays: (recoveredValue10).
    (self) date: (recoveredValue11).
    recoveredValue12 := Time.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue12) fromSeconds: (recoveredValue13).
    (self) time: (recoveredValue14).
    (self) microSeconds: (0).
    ^self
! !

"ASDBase.ic method 0x20276dc0; bytecode file offset 0xb73694"
!AbtTimestamp methodsFor: 'recovered'!
printWithMicrosecondsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    (self) printWithoutMillisecondsOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPut: ($.).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) time.
    recoveredValue5 := (recoveredValue4) milliseconds.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := (self) padWithZeros: (recoveredValue6) desiredSize: (3).
    (recoveredValue3) nextPutAll: (recoveredValue7).
    recoveredValue8 := (self) microSeconds.
    recoveredValue9 := (recoveredValue8) printString.
    recoveredValue10 := (self) padWithZeros: (recoveredValue9) desiredSize: (3).
    (recoveredValue1) nextPutAll: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20292c80; bytecode file offset 0xb8f548"
!AbtTimestamp methodsFor: 'recovered'!
= recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtCanBeTimestamp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsTimestamp.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) date.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) date.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) time.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) time.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) microSeconds.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) microSeconds.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a79ec; bytecode file offset 0xba42b4"
!AbtTimestamp methodsFor: 'recovered'!
padWithZeros: recoveredArg1 desiredSize: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            recoveredStack1 := (recoveredStack1) species.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := $0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) replaceFrom: (recoveredStack3) to: (recoveredStack4) withObject: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) replaceFrom: (recoveredStack3) to: (recoveredStack4) with: (recoveredStack5) startingAt: (recoveredStack6).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202cc030; bytecode file offset 0xbc8908"
!AbtTimestamp methodsFor: 'recovered'!
timestampValue: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) // (1000).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := Time.
    recoveredValue4 := (recoveredValue3) millisecondsPerDay.
    recoveredValue5 := (recoveredValue2) \\ (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := Date.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) - (recoveredValue8).
    recoveredValue10 := Time.
    recoveredValue11 := (recoveredValue10) millisecondsPerDay.
    recoveredValue12 := (recoveredValue9) // (recoveredValue11).
    recoveredValue13 := (recoveredValue6) fromDays: (recoveredValue12).
    (self) date: (recoveredValue13).
    recoveredValue14 := Time.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue14) fromMilliseconds: (recoveredValue15).
    (self) time: (recoveredValue16).
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) rem: (1000).
    (self) microSeconds: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x2033d6b8; bytecode file offset 0xc39f80"
!AbtTimestamp methodsFor: 'recovered'!
< recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtCanBeTimestamp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsTimestamp.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) date.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) date.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) date.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) date.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) time.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) time.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) time.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) time.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) microSeconds.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) microSeconds.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045fc38; bytecode file offset 0xd5c51c"
!AbtTimestamp methodsFor: 'recovered'!
printWithoutMillisecondsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) date.
    recoveredValue3 := (recoveredValue2) year.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (self) padWithZeros: (recoveredValue4) desiredSize: (4).
    (recoveredValue1) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) nextPut: ($-).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) date.
    recoveredValue9 := (recoveredValue8) monthIndex.
    recoveredValue10 := (recoveredValue9) printString.
    recoveredValue11 := (self) padWithZeros: (recoveredValue10) desiredSize: (2).
    (recoveredValue7) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) nextPut: ($-).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) date.
    recoveredValue15 := (recoveredValue14) dayOfMonth.
    recoveredValue16 := (recoveredValue15) printString.
    recoveredValue17 := (self) padWithZeros: (recoveredValue16) desiredSize: (2).
    (recoveredValue13) nextPutAll: (recoveredValue17).
    recoveredValue18 := recoveredValue0.
    (recoveredValue18) nextPut: ($-).
    recoveredValue19 := recoveredValue0.
    recoveredValue20 := (self) time.
    recoveredValue21 := (recoveredValue20) hours.
    recoveredValue22 := (recoveredValue21) printString.
    recoveredValue23 := (self) padWithZeros: (recoveredValue22) desiredSize: (2).
    (recoveredValue19) nextPutAll: (recoveredValue23).
    recoveredValue24 := recoveredValue0.
    (recoveredValue24) nextPut: ($.).
    recoveredValue25 := recoveredValue0.
    recoveredValue26 := (self) time.
    recoveredValue27 := (recoveredValue26) minutes.
    recoveredValue28 := (recoveredValue27) printString.
    recoveredValue29 := (self) padWithZeros: (recoveredValue28) desiredSize: (2).
    (recoveredValue25) nextPutAll: (recoveredValue29).
    recoveredValue30 := recoveredValue0.
    (recoveredValue30) nextPut: ($.).
    recoveredValue31 := (self) time.
    recoveredValue32 := (recoveredValue31) seconds.
    recoveredValue33 := (recoveredValue32) printString.
    recoveredValue34 := (self) padWithZeros: (recoveredValue33) desiredSize: (2).
    (recoveredValue0) nextPutAll: (recoveredValue34).
    ^self
! !

