"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a5c8; bytecode file offset 0x908be4"
!ASDBezierLinePointCache methodsFor: 'recovered'!
bezPoints
    | recoveredValue0 |
    recoveredValue0 := (self) bezierPoints.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003b7ec; bytecode file offset 0x938608"
!ASDBezierLinePointCache methodsFor: 'recovered'!
bezPoints: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) bezierPoints: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065da4; bytecode file offset 0x963428"
!ASDBezierLinePointCache methodsFor: 'recovered'!
bezierGO
    | recoveredValue0 |
    recoveredValue0 := bezierGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066c24; bytecode file offset 0x9646f8"
!ASDBezierLinePointCache methodsFor: 'recovered'!
pointA
    | recoveredValue0 |
    recoveredValue0 := pointA.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200681f4; bytecode file offset 0x965b90"
!ASDBezierLinePointCache methodsFor: 'recovered'!
pointB
    | recoveredValue0 |
    recoveredValue0 := pointB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069720; bytecode file offset 0x966bdc"
!ASDBezierLinePointCache methodsFor: 'recovered'!
bezierPoints
    | recoveredValue0 |
    recoveredValue0 := bezierPoints.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006adec; bytecode file offset 0x967a18"
!ASDBezierLinePointCache methodsFor: 'recovered'!
linePoints
    | recoveredValue0 |
    recoveredValue0 := linePoints.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082e94; bytecode file offset 0x97f798"
!ASDBezierLinePointCache methodsFor: 'recovered'!
bezierGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    bezierGO := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082f00; bytecode file offset 0x97f81c"
!ASDBezierLinePointCache methodsFor: 'recovered'!
pointA: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    pointA := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082fa4; bytecode file offset 0x97f888"
!ASDBezierLinePointCache methodsFor: 'recovered'!
pointB: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    pointB := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083010; bytecode file offset 0x97f8cc"
!ASDBezierLinePointCache methodsFor: 'recovered'!
bezierPoints: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    bezierPoints := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083034; bytecode file offset 0x97f8f8"
!ASDBezierLinePointCache methodsFor: 'recovered'!
linePoints: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    linePoints := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ba870; bytecode file offset 0x9b7128"
!ASDBezierLinePointCache methodsFor: 'recovered'!
initializeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    bezierGO := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) linePointCache: (self).
    ^self
! !

"ASDBase.ic method 0x20359250; bytecode file offset 0xc55b30"
!ASDBezierLinePointCache methodsFor: 'recovered'!
getBezierLinePoints
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bezierGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) pointA.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) pointA.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := bezierGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) pointB.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) pointB.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := bezierGO.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) bezPoints.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) bezPoints.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := bezierGO.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) pointA.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) pointA: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := bezierGO.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) pointB.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) pointB: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := bezierGO.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) bezPoints.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) deepCopy.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) bezPoints: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := bezierGO.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) generateLinePoints.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) linePoints: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) linePoints.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

