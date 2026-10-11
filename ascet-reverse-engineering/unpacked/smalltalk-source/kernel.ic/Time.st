"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20001c50; bytecode file offset 0x4ce64"
!Time methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asMilliseconds.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"kernel.ic method 0x20003c78; bytecode file offset 0x4ec04"
!Time methodsFor: 'recovered'!
hours
    | recoveredValue0 |
    recoveredValue0 := hours.
    ^recoveredValue0
! !

"kernel.ic method 0x20003de4; bytecode file offset 0x4ed88"
!Time methodsFor: 'recovered'!
minutes
    | recoveredValue0 |
    recoveredValue0 := minutes.
    ^recoveredValue0
! !

"kernel.ic method 0x20003e98; bytecode file offset 0x4eebc"
!Time methodsFor: 'recovered'!
seconds
    | recoveredValue0 |
    recoveredValue0 := seconds.
    ^recoveredValue0
! !

"kernel.ic method 0x20003ffc; bytecode file offset 0x4ef68"
!Time methodsFor: 'recovered'!
milliseconds
    | recoveredValue0 |
    recoveredValue0 := milliseconds.
    ^recoveredValue0
! !

"kernel.ic method 0x20004098; bytecode file offset 0x4efbc"
!Time methodsFor: 'recovered'!
asMilliseconds
    | recoveredValue0 |
    recoveredValue0 := millisecondsFromMidnight.
    ^recoveredValue0
! !

"kernel.ic method 0x20005854; bytecode file offset 0x50764"
!Time methodsFor: 'recovered'!
< recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := millisecondsFromMidnight.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asMilliseconds.
    recoveredValue3 := (recoveredValue0) < (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x200062ec; bytecode file offset 0x51210"
!Time methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Formatter.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printTime: (self) on: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x200073cc; bytecode file offset 0x522e4"
!Time methodsFor: 'recovered'!
addTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := millisecondsFromMidnight.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asMilliseconds.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (recoveredValue0) fromMilliseconds: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x200073ec; bytecode file offset 0x52304"
!Time methodsFor: 'recovered'!
subtractTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := millisecondsFromMidnight.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asMilliseconds.
    recoveredValue4 := (recoveredValue1) - (recoveredValue3).
    recoveredValue5 := (recoveredValue0) fromMilliseconds: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2000a448; bytecode file offset 0x55354"
!Time methodsFor: 'recovered'!
asSeconds
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := millisecondsFromMidnight.
    recoveredValue1 := (recoveredValue0) + (500).
    recoveredValue2 := (recoveredValue1) // (1000).
    ^recoveredValue2
! !

"kernel.ic method 0x2000b2a8; bytecode file offset 0x561b8"
!Time methodsFor: 'recovered'!
milliseconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := millisecondsFromMidnight.
    recoveredValue1 := (self) milliseconds.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    millisecondsFromMidnight := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    milliseconds := recoveredValue5.
    ^self
! !

"kernel.ic method 0x2000be50; bytecode file offset 0x56d64"
!Time methodsFor: 'recovered'!
= recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := millisecondsFromMidnight.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMilliseconds.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200152c4; bytecode file offset 0x601ec"
!Time methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($().
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) name.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    (recoveredValue0) nextPutAll: (' fromMilliseconds: ').
    recoveredValue5 := (self) asMilliseconds.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) storeOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) nextPut: ($)).
    ^self
! !

"kernel.ic method 0x2001631c; bytecode file offset 0x61228"
!Time methodsFor: 'recovered'!
hours: recoveredArg1 minutes: recoveredArg2 seconds: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    hours := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    minutes := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    seconds := recoveredValue2.
    milliseconds := 0.
    recoveredValue3 := hours.
    recoveredValue4 := (recoveredValue3) * (60).
    recoveredValue5 := minutes.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    recoveredValue7 := (recoveredValue6) * (60).
    recoveredValue8 := seconds.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredValue10 := (recoveredValue9) * (1000).
    millisecondsFromMidnight := recoveredValue10.
    ^self
! !

"kernel.ic method 0x200174ac; bytecode file offset 0x623b8"
!Time methodsFor: 'recovered'!
hours: recoveredArg1 minutes: recoveredArg2 seconds: recoveredArg3 milliseconds: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    hours := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    minutes := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    seconds := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    milliseconds := recoveredValue3.
    recoveredValue4 := hours.
    recoveredValue5 := (recoveredValue4) * (60).
    recoveredValue6 := minutes.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredValue8 := (recoveredValue7) * (60).
    recoveredValue9 := seconds.
    recoveredValue10 := (recoveredValue8) + (recoveredValue9).
    recoveredValue11 := (recoveredValue10) * (1000).
    recoveredValue12 := milliseconds.
    recoveredValue13 := (recoveredValue11) + (recoveredValue12).
    millisecondsFromMidnight := recoveredValue13.
    ^self
! !

"kernel.ic method 0x2001ba00; bytecode file offset 0x6690c"
!Time methodsFor: 'recovered'!
setFromSeconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) // (3600).
    hours := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := hours.
    recoveredValue4 := (recoveredValue3) * (3600).
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredValue6 := (recoveredValue5) // (60).
    minutes := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := hours.
    recoveredValue9 := (recoveredValue8) * (3600).
    recoveredValue10 := (recoveredValue7) - (recoveredValue9).
    recoveredValue11 := minutes.
    recoveredValue12 := (recoveredValue11) * (60).
    recoveredValue13 := (recoveredValue10) - (recoveredValue12).
    seconds := recoveredValue13.
    milliseconds := 0.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) * (1000).
    millisecondsFromMidnight := recoveredValue15.
    ^self
! !

"kernel.ic method 0x2001f530; bytecode file offset 0x6a444"
!Time methodsFor: 'recovered'!
setFromMilliseconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) // (3600000).
    hours := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := hours.
    recoveredValue4 := (recoveredValue3) * (3600000).
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredValue6 := (recoveredValue5) // (60000).
    minutes := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := hours.
    recoveredValue9 := (recoveredValue8) * (3600000).
    recoveredValue10 := (recoveredValue7) - (recoveredValue9).
    recoveredValue11 := minutes.
    recoveredValue12 := (recoveredValue11) * (60000).
    recoveredValue13 := (recoveredValue10) - (recoveredValue12).
    recoveredValue14 := (recoveredValue13) // (1000).
    seconds := recoveredValue14.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := hours.
    recoveredValue17 := (recoveredValue16) * (3600000).
    recoveredValue18 := (recoveredValue15) - (recoveredValue17).
    recoveredValue19 := minutes.
    recoveredValue20 := (recoveredValue19) * (60000).
    recoveredValue21 := (recoveredValue18) - (recoveredValue20).
    recoveredValue22 := seconds.
    recoveredValue23 := (recoveredValue22) * (1000).
    recoveredValue24 := (recoveredValue21) - (recoveredValue23).
    milliseconds := recoveredValue24.
    recoveredValue25 := recoveredArg1.
    millisecondsFromMidnight := recoveredValue25.
    ^self
! !

