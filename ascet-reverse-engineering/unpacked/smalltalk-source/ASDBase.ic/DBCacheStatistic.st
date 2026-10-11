"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006693c; bytecode file offset 0x963428"
!DBCacheStatistic methodsFor: 'recovered'!
hitCount
    | recoveredValue0 |
    recoveredValue0 := hitCount.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a04; bytecode file offset 0x9646f8"
!DBCacheStatistic methodsFor: 'recovered'!
writeCount
    | recoveredValue0 |
    recoveredValue0 := writeCount.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006880c; bytecode file offset 0x965b90"
!DBCacheStatistic methodsFor: 'recovered'!
readCount
    | recoveredValue0 |
    recoveredValue0 := readCount.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008ab10; bytecode file offset 0x9873cc"
!DBCacheStatistic methodsFor: 'recovered'!
incHit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := hitCount.
    recoveredValue1 := (recoveredValue0) + (1).
    hitCount := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008abe0; bytecode file offset 0x98749c"
!DBCacheStatistic methodsFor: 'recovered'!
accessCount
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := writeCount.
    recoveredValue1 := readCount.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008ada0; bytecode file offset 0x987654"
!DBCacheStatistic methodsFor: 'recovered'!
incWrite
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := writeCount.
    recoveredValue1 := (recoveredValue0) + (1).
    writeCount := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008b004; bytecode file offset 0x9878b8"
!DBCacheStatistic methodsFor: 'recovered'!
incRead
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := readCount.
    recoveredValue1 := (recoveredValue0) + (1).
    readCount := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20118d2c; bytecode file offset 0xa155e0"
!DBCacheStatistic methodsFor: 'recovered'!
initialize
    hitCount := 0.
    writeCount := 0.
    readCount := 0.
    ^self
! !

"ASDBase.ic method 0x201330e4; bytecode file offset 0xa2f9d8"
!DBCacheStatistic methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    (self) printStatisticsOn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201c7404; bytecode file offset 0xac3cb8"
!DBCacheStatistic methodsFor: 'recovered'!
getHitRate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := readCount.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := hitCount.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := readCount.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a11cc; bytecode file offset 0xb9da9c"
!DBCacheStatistic methodsFor: 'recovered'!
printStatisticsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: (' hitRate: ').
    recoveredValue1 := (self) getHitRate.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPutAll: (' reads: ').
    recoveredValue4 := readCount.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) nextPutAll: (' writes: ').
    recoveredValue7 := writeCount.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) printOn: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPutAll: (' hits: ').
    recoveredValue10 := hitCount.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) printOn: (recoveredValue11).
    ^self
! !

