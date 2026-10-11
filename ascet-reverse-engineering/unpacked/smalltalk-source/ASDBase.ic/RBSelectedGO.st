"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a594; bytecode file offset 0x934580"
!RBSelectedGO methodsFor: 'recovered'!
graphSensitivePoints
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graphObject.
    recoveredValue1 := (recoveredValue0) selectPoints.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009a328; bytecode file offset 0x997194"
!RBSelectedGO methodsFor: 'recovered'!
graphObjectSensitivePoint: recoveredArg1 moveTo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graphObject.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) selectPoint: (recoveredValue1) moveTo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010fd88; bytecode file offset 0xa0c64c"
!RBSelectedGO methodsFor: 'recovered'!
characterInput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graphObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) characterInput: (recoveredValue1).
    recoveredValue2 := (self) graphObject.
    recoveredValue3 := (recoveredValue2) selectPoints.
    (self) updateSensitivePointsFrom: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20167630; bytecode file offset 0xa63ef8"
!RBSelectedGO methodsFor: 'recovered'!
controlKeyInput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) graphObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) controlKeyInput: (recoveredValue1).
    recoveredValue2 := (self) graphObject.
    recoveredValue3 := (recoveredValue2) selectPoints.
    (self) updateSensitivePointsFrom: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := super controlKeyInput: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20171f5c; bytecode file offset 0xa6e848"
!RBSelectedGO methodsFor: 'recovered'!
fontCursorConstant
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sensitivePointObjects.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) activeObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontCursorConstantForSelectPoint: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

