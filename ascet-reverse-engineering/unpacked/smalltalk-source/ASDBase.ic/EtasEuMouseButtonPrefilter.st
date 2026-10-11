"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005c6f4; bytecode file offset 0x959680"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
doubleClickTimeInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) doubleClickInterval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066874; bytecode file offset 0x963428"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
baseTime
    | recoveredValue0 |
    recoveredValue0 := baseTime.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066ce4; bytecode file offset 0x9646f8"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
basePoint
    | recoveredValue0 |
    recoveredValue0 := basePoint.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068044; bytecode file offset 0x965b90"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072900; bytecode file offset 0x96f1c4"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
doubleClickDistanceInterval
    ^2
! !

"ASDBase.ic method 0x200bdbfc; bytecode file offset 0x9bb178"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
baseTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    baseTime := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf3a0; bytecode file offset 0x9bc0b4"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
basePoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    basePoint := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0884; bytecode file offset 0x9bd228"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20110bd4; bytecode file offset 0xa0d4e0"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
processButton3DownAtTime: recoveredArg1 andLocation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) checkTime: (recoveredValue0) andLocation: (recoveredValue1).
    recoveredValue2 := (self) owner.
    (recoveredValue2) processEvent: ('button3Down').
    ^self
! !

"ASDBase.ic method 0x20110bec; bytecode file offset 0xa0d4e0"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
processButton1DownAtTime: recoveredArg1 andLocation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) checkTime: (recoveredValue0) andLocation: (recoveredValue1).
    recoveredValue2 := (self) owner.
    (recoveredValue2) processEvent: ('button1Down').
    ^self
! !

"ASDBase.ic method 0x20110c04; bytecode file offset 0xa0d4e0"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
processButton1UpAtTime: recoveredArg1 andLocation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) checkTime: (recoveredValue0) andLocation: (recoveredValue1).
    recoveredValue2 := (self) owner.
    (recoveredValue2) processEvent: ('button1Up').
    ^self
! !

"ASDBase.ic method 0x20110c1c; bytecode file offset 0xa0d4e0"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
processButton3UpAtTime: recoveredArg1 andLocation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) checkTime: (recoveredValue0) andLocation: (recoveredValue1).
    recoveredValue2 := (self) owner.
    (recoveredValue2) processEvent: ('button3Up').
    ^self
! !

"ASDBase.ic method 0x2034bc14; bytecode file offset 0xc484f4"
!EtasEuMouseButtonPrefilter methodsFor: 'recovered'!
checkTime: recoveredArg1 andLocation: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseTime.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseTime.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) doubleClickTimeInterval.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'criteriaExpired'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) processEvent: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) basePoint.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) basePoint.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (1) denominator: (2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (Fraction) numerator: (1) denominator: (2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) dotProduct: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) doubleClickDistanceInterval.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'criteriaExpired'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) processEvent: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

