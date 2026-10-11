"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d210; bytecode file offset 0x92209c"
!TetrisView methodsFor: 'recovered'!
windowLabelString
    ^'ASCET BDE Tetris'
! !

"ASDBase.ic method 0x2004dfb8; bytecode file offset 0x94d048"
!TetrisView methodsFor: 'recovered'!
automaticMove
    (self) automaticMoveDown.
    ^self
! !

"ASDBase.ic method 0x200e3434; bytecode file offset 0x9dfda8"
!TetrisView methodsFor: 'recovered'!
beginT
    (self) initializeT.
    (self) createFigure.
    (self) timerT.
    ^self
! !

"ASDBase.ic method 0x2017fe7c; bytecode file offset 0xa7c73c"
!TetrisView methodsFor: 'recovered'!
automaticMoveDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectDownCollision: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) createFigure.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) moveDown: (recoveredStack1).
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

"ASDBase.ic method 0x201e2558; bytecode file offset 0xadee24"
!TetrisView methodsFor: 'recovered'!
preClosingActivities
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := timerT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := timerT.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            timerT := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) mementoEnabled: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            super preClosingActivities.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20217ca8; bytecode file offset 0xb14584"
!TetrisView methodsFor: 'recovered'!
moveTLeft
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := busyT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := timerT.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectLeftCollision: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) moveLeft: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20217cb8; bytecode file offset 0xb14584"
!TetrisView methodsFor: 'recovered'!
moveTRight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := busyT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := timerT.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectRightCollision: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) moveRight: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20217cc8; bytecode file offset 0xb14584"
!TetrisView methodsFor: 'recovered'!
moveTDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := busyT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := timerT.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectDownCollision: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) moveDown: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202259c0; bytecode file offset 0xb22298"
!TetrisView methodsFor: 'recovered'!
redrawPane
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) graphPaneController.
    recoveredValue2 := (recoveredValue1) widget.
    recoveredValue3 := Array.
    recoveredValue4 := Rectangle.
    recoveredValue5 := (51) @ (30).
    recoveredValue6 := (250) @ (350).
    recoveredValue7 := (recoveredValue4) origin: (recoveredValue5) corner: (recoveredValue6).
    recoveredValue8 := (recoveredValue3) with: (recoveredValue7).
    (recoveredValue2) displayRects: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x202cda38; bytecode file offset 0xbca314"
!TetrisView methodsFor: 'recovered'!
rotateTLeft
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := busyT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := timerT.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectLeftCollision: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectRightCollision: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectDownCollision: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) rotateLeft: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cda50; bytecode file offset 0xbca314"
!TetrisView methodsFor: 'recovered'!
rotateTRight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := busyT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := timerT.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectLeftCollision: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectRightCollision: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectDownCollision: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) rotateRight: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20361cac; bytecode file offset 0xc5e584"
!TetrisView methodsFor: 'recovered'!
initializeT
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    (self) clearPane.
    recoveredValue0 := (40) @ (40).
    recoveredValue1 := (self) border: (recoveredValue0).
    borderT := recoveredValue1.
    pointsT := 0.
    levelT := 0.
    busyT := false.
    milliSecondsT := 1000.
    recoveredValue2 := (300) @ (40).
    recoveredValue3 := (self) text: (recoveredValue2).
    textT := recoveredValue3.
    recoveredValue4 := (300) @ (100).
    recoveredValue5 := (self) text: (recoveredValue4).
    recoveredValue6 := ('Move Left: Cursor Left\Move Right: Cursor Right\Move Down: Cursor down\Rotate Left: c\Rotate Right v\Exit: x\ \Press s to start') withCrs.
    (recoveredValue5) text: (recoveredValue6).
    recoveredValue7 := (self) uiController.
    recoveredValue8 := (recoveredValue7) graphPaneController.
    (recoveredValue8) redraw.
    ^self
! !

"ASDBase.ic method 0x203b1bb0; bytecode file offset 0xcae4a0"
!TetrisView methodsFor: 'recovered'!
appendActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XKLeft.
    (recoveredValue5) at: (recoveredValue6) put: ('moveTLeft').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := XKRight.
    (recoveredValue7) at: (recoveredValue8) put: ('moveTRight').
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := XKDown.
    (recoveredValue9) at: (recoveredValue10) put: ('moveTDown').
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) at: ($c) put: ('rotateTLeft').
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) at: ($v) put: ('rotateTRight').
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) at: ($x) put: ('exitT').
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) at: ($s) put: ('beginT').
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (self) shell.
    recoveredValue17 := recoveredLocal1.
    (recoveredValue15) at: (recoveredValue16) put: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x203b4740; bytecode file offset 0xcb0ff4"
!TetrisView methodsFor: 'recovered'!
countTPoints: recoveredArg1
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
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := pointsT.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            pointsT := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := pointsT.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 250.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            pointsT := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := pointsT.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 500.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            pointsT := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := pointsT.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 1000.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            pointsT := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f91c4; bytecode file offset 0xcf5ab4"
!TetrisView methodsFor: 'recovered'!
figure2: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := (recoveredValue4) @ (recoveredValue6).
    recoveredValue8 := (self) dot: (recoveredValue7).
    (recoveredValue2) add: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) x.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) y.
    recoveredValue14 := (recoveredValue13) + (20).
    recoveredValue15 := (recoveredValue11) @ (recoveredValue14).
    recoveredValue16 := (self) dot: (recoveredValue15).
    (recoveredValue9) add: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) x.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) y.
    recoveredValue22 := (recoveredValue21) + (40).
    recoveredValue23 := (recoveredValue19) @ (recoveredValue22).
    recoveredValue24 := (self) dot: (recoveredValue23).
    (recoveredValue17) add: (recoveredValue24).
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := (recoveredValue26) x.
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (recoveredValue28) y.
    recoveredValue30 := (recoveredValue29) + (60).
    recoveredValue31 := (recoveredValue27) @ (recoveredValue30).
    recoveredValue32 := (self) dot: (recoveredValue31).
    (recoveredValue25) add: (recoveredValue32).
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 recoveredBlock66Value5 recoveredBlock66Value6 recoveredBlock66Value7 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := (recoveredBlock66Value0) frameGO.
    recoveredBlock66Value2 := RBAreaStyle.
    recoveredBlock66Value3 := CgRGBColor.
    recoveredBlock66Value4 := (recoveredBlock66Value3) green.
    recoveredBlock66Value5 := (recoveredBlock66Value2) createWithColor: (recoveredBlock66Value4).
    (recoveredBlock66Value1) areaStyle: (recoveredBlock66Value5).
    recoveredBlock66Value6 := recoveredBlock66Arg1.
    recoveredBlock66Value7 := (self) redrawGO: (recoveredBlock66Value6).
    recoveredBlock66Value7
].
    (recoveredValue33) do: (recoveredValue34).
    recoveredValue35 := recoveredLocal1.
    ^recoveredValue35
! !

"ASDBase.ic method 0x2040c92c; bytecode file offset 0xd09224"
!TetrisView methodsFor: 'recovered'!
figure7: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := (recoveredValue4) + (20).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) y.
    recoveredValue8 := (recoveredValue5) @ (recoveredValue7).
    recoveredValue9 := (self) dot: (recoveredValue8).
    (recoveredValue2) add: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) x.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) y.
    recoveredValue15 := (recoveredValue12) @ (recoveredValue14).
    recoveredValue16 := (self) dot: (recoveredValue15).
    (recoveredValue10) add: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) x.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) y.
    recoveredValue22 := (recoveredValue21) + (20).
    recoveredValue23 := (recoveredValue19) @ (recoveredValue22).
    recoveredValue24 := (self) dot: (recoveredValue23).
    (recoveredValue17) add: (recoveredValue24).
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := (recoveredValue26) x.
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (recoveredValue28) y.
    recoveredValue30 := (recoveredValue29) + (40).
    recoveredValue31 := (recoveredValue27) @ (recoveredValue30).
    recoveredValue32 := (self) dot: (recoveredValue31).
    (recoveredValue25) add: (recoveredValue32).
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 recoveredBlock66Value5 recoveredBlock66Value6 recoveredBlock66Value7 recoveredBlock66Value8 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := (recoveredBlock66Value0) frameGO.
    recoveredBlock66Value2 := RBAreaStyle.
    recoveredBlock66Value3 := CgScreen.
    recoveredBlock66Value4 := (recoveredBlock66Value3) default.
    recoveredBlock66Value5 := (recoveredBlock66Value4) lookupColor: ('magenta').
    recoveredBlock66Value6 := (recoveredBlock66Value2) createWithColor: (recoveredBlock66Value5).
    (recoveredBlock66Value1) areaStyle: (recoveredBlock66Value6).
    recoveredBlock66Value7 := recoveredBlock66Arg1.
    recoveredBlock66Value8 := (self) redrawGO: (recoveredBlock66Value7).
    recoveredBlock66Value8
].
    (recoveredValue33) do: (recoveredValue34).
    recoveredValue35 := recoveredLocal1.
    ^recoveredValue35
! !

"ASDBase.ic method 0x2040c9dc; bytecode file offset 0xd092cc"
!TetrisView methodsFor: 'recovered'!
figure6: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := (recoveredValue4) @ (recoveredValue6).
    recoveredValue8 := (self) dot: (recoveredValue7).
    (recoveredValue2) add: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) x.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) y.
    recoveredValue14 := (recoveredValue13) + (20).
    recoveredValue15 := (recoveredValue11) @ (recoveredValue14).
    recoveredValue16 := (self) dot: (recoveredValue15).
    (recoveredValue9) add: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) x.
    recoveredValue20 := (recoveredValue19) + (20).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) y.
    recoveredValue23 := (recoveredValue20) @ (recoveredValue22).
    recoveredValue24 := (self) dot: (recoveredValue23).
    (recoveredValue17) add: (recoveredValue24).
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := (recoveredValue26) x.
    recoveredValue28 := (recoveredValue27) + (20).
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) y.
    recoveredValue31 := (recoveredValue30) + (20).
    recoveredValue32 := (recoveredValue28) @ (recoveredValue31).
    recoveredValue33 := (self) dot: (recoveredValue32).
    (recoveredValue25) add: (recoveredValue33).
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 recoveredBlock69Value4 recoveredBlock69Value5 recoveredBlock69Value6 recoveredBlock69Value7 |
    recoveredBlock69Value0 := recoveredBlock69Arg1.
    recoveredBlock69Value1 := (recoveredBlock69Value0) frameGO.
    recoveredBlock69Value2 := RBAreaStyle.
    recoveredBlock69Value3 := CgRGBColor.
    recoveredBlock69Value4 := (recoveredBlock69Value3) darkPink.
    recoveredBlock69Value5 := (recoveredBlock69Value2) createWithColor: (recoveredBlock69Value4).
    (recoveredBlock69Value1) areaStyle: (recoveredBlock69Value5).
    recoveredBlock69Value6 := recoveredBlock69Arg1.
    recoveredBlock69Value7 := (self) redrawGO: (recoveredBlock69Value6).
    recoveredBlock69Value7
].
    (recoveredValue34) do: (recoveredValue35).
    recoveredValue36 := recoveredLocal1.
    ^recoveredValue36
! !

"ASDBase.ic method 0x2040ca84; bytecode file offset 0xd09374"
!TetrisView methodsFor: 'recovered'!
figure3: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := (recoveredValue4) @ (recoveredValue6).
    recoveredValue8 := (self) dot: (recoveredValue7).
    (recoveredValue2) add: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) x.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) y.
    recoveredValue14 := (recoveredValue13) + (20).
    recoveredValue15 := (recoveredValue11) @ (recoveredValue14).
    recoveredValue16 := (self) dot: (recoveredValue15).
    (recoveredValue9) add: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) x.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) y.
    recoveredValue22 := (recoveredValue21) + (40).
    recoveredValue23 := (recoveredValue19) @ (recoveredValue22).
    recoveredValue24 := (self) dot: (recoveredValue23).
    (recoveredValue17) add: (recoveredValue24).
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := (recoveredValue26) x.
    recoveredValue28 := (recoveredValue27) + (20).
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) y.
    recoveredValue31 := (recoveredValue30) + (20).
    recoveredValue32 := (recoveredValue28) @ (recoveredValue31).
    recoveredValue33 := (self) dot: (recoveredValue32).
    (recoveredValue25) add: (recoveredValue33).
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 recoveredBlock69Value4 recoveredBlock69Value5 recoveredBlock69Value6 recoveredBlock69Value7 |
    recoveredBlock69Value0 := recoveredBlock69Arg1.
    recoveredBlock69Value1 := (recoveredBlock69Value0) frameGO.
    recoveredBlock69Value2 := RBAreaStyle.
    recoveredBlock69Value3 := CgRGBColor.
    recoveredBlock69Value4 := (recoveredBlock69Value3) blue.
    recoveredBlock69Value5 := (recoveredBlock69Value2) createWithColor: (recoveredBlock69Value4).
    (recoveredBlock69Value1) areaStyle: (recoveredBlock69Value5).
    recoveredBlock69Value6 := recoveredBlock69Arg1.
    recoveredBlock69Value7 := (self) redrawGO: (recoveredBlock69Value6).
    recoveredBlock69Value7
].
    (recoveredValue34) do: (recoveredValue35).
    recoveredValue36 := recoveredLocal1.
    ^recoveredValue36
! !

"ASDBase.ic method 0x20415af0; bytecode file offset 0xd123e0"
!TetrisView methodsFor: 'recovered'!
figure1: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := (recoveredValue4) + (20).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) y.
    recoveredValue8 := (recoveredValue5) @ (recoveredValue7).
    recoveredValue9 := (self) dot: (recoveredValue8).
    (recoveredValue2) add: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) x.
    recoveredValue13 := (recoveredValue12) + (20).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) y.
    recoveredValue16 := (recoveredValue15) + (20).
    recoveredValue17 := (recoveredValue13) @ (recoveredValue16).
    recoveredValue18 := (self) dot: (recoveredValue17).
    (recoveredValue10) add: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) x.
    recoveredValue22 := (recoveredValue21) + (20).
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) y.
    recoveredValue25 := (recoveredValue24) + (40).
    recoveredValue26 := (recoveredValue22) @ (recoveredValue25).
    recoveredValue27 := (self) dot: (recoveredValue26).
    (recoveredValue19) add: (recoveredValue27).
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) x.
    recoveredValue31 := recoveredArg1.
    recoveredValue32 := (recoveredValue31) y.
    recoveredValue33 := (recoveredValue30) @ (recoveredValue32).
    recoveredValue34 := (self) dot: (recoveredValue33).
    (recoveredValue28) add: (recoveredValue34).
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 recoveredBlock72Value5 recoveredBlock72Value6 recoveredBlock72Value7 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := (recoveredBlock72Value0) frameGO.
    recoveredBlock72Value2 := RBAreaStyle.
    recoveredBlock72Value3 := CgRGBColor.
    recoveredBlock72Value4 := (recoveredBlock72Value3) red.
    recoveredBlock72Value5 := (recoveredBlock72Value2) createWithColor: (recoveredBlock72Value4).
    (recoveredBlock72Value1) areaStyle: (recoveredBlock72Value5).
    recoveredBlock72Value6 := recoveredBlock72Arg1.
    recoveredBlock72Value7 := (self) redrawGO: (recoveredBlock72Value6).
    recoveredBlock72Value7
].
    (recoveredValue35) do: (recoveredValue36).
    recoveredValue37 := recoveredLocal1.
    ^recoveredValue37
! !

"ASDBase.ic method 0x20415b98; bytecode file offset 0xd12488"
!TetrisView methodsFor: 'recovered'!
figure5: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := (recoveredValue4) + (20).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) y.
    recoveredValue8 := (recoveredValue5) @ (recoveredValue7).
    recoveredValue9 := (self) dot: (recoveredValue8).
    (recoveredValue2) add: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) x.
    recoveredValue13 := (recoveredValue12) + (20).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) y.
    recoveredValue16 := (recoveredValue15) + (20).
    recoveredValue17 := (recoveredValue13) @ (recoveredValue16).
    recoveredValue18 := (self) dot: (recoveredValue17).
    (recoveredValue10) add: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) x.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := (recoveredValue22) y.
    recoveredValue24 := (recoveredValue23) + (20).
    recoveredValue25 := (recoveredValue21) @ (recoveredValue24).
    recoveredValue26 := (self) dot: (recoveredValue25).
    (recoveredValue19) add: (recoveredValue26).
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (recoveredValue28) x.
    recoveredValue30 := recoveredArg1.
    recoveredValue31 := (recoveredValue30) y.
    recoveredValue32 := (recoveredValue31) + (40).
    recoveredValue33 := (recoveredValue29) @ (recoveredValue32).
    recoveredValue34 := (self) dot: (recoveredValue33).
    (recoveredValue27) add: (recoveredValue34).
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 recoveredBlock72Value5 recoveredBlock72Value6 recoveredBlock72Value7 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := (recoveredBlock72Value0) frameGO.
    recoveredBlock72Value2 := RBAreaStyle.
    recoveredBlock72Value3 := CgRGBColor.
    recoveredBlock72Value4 := (recoveredBlock72Value3) cyan.
    recoveredBlock72Value5 := (recoveredBlock72Value2) createWithColor: (recoveredBlock72Value4).
    (recoveredBlock72Value1) areaStyle: (recoveredBlock72Value5).
    recoveredBlock72Value6 := recoveredBlock72Arg1.
    recoveredBlock72Value7 := (self) redrawGO: (recoveredBlock72Value6).
    recoveredBlock72Value7
].
    (recoveredValue35) do: (recoveredValue36).
    recoveredValue37 := recoveredLocal1.
    ^recoveredValue37
! !

"ASDBase.ic method 0x20415c40; bytecode file offset 0xd12530"
!TetrisView methodsFor: 'recovered'!
figure4: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := (recoveredValue4) @ (recoveredValue6).
    recoveredValue8 := (self) dot: (recoveredValue7).
    (recoveredValue2) add: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) x.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) y.
    recoveredValue14 := (recoveredValue13) + (20).
    recoveredValue15 := (recoveredValue11) @ (recoveredValue14).
    recoveredValue16 := (self) dot: (recoveredValue15).
    (recoveredValue9) add: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) x.
    recoveredValue20 := (recoveredValue19) + (20).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) y.
    recoveredValue23 := (recoveredValue22) + (20).
    recoveredValue24 := (recoveredValue20) @ (recoveredValue23).
    recoveredValue25 := (self) dot: (recoveredValue24).
    (recoveredValue17) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) x.
    recoveredValue29 := (recoveredValue28) + (20).
    recoveredValue30 := recoveredArg1.
    recoveredValue31 := (recoveredValue30) y.
    recoveredValue32 := (recoveredValue31) + (40).
    recoveredValue33 := (recoveredValue29) @ (recoveredValue32).
    recoveredValue34 := (self) dot: (recoveredValue33).
    (recoveredValue26) add: (recoveredValue34).
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 recoveredBlock72Value5 recoveredBlock72Value6 recoveredBlock72Value7 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := (recoveredBlock72Value0) frameGO.
    recoveredBlock72Value2 := RBAreaStyle.
    recoveredBlock72Value3 := CgRGBColor.
    recoveredBlock72Value4 := (recoveredBlock72Value3) yellow.
    recoveredBlock72Value5 := (recoveredBlock72Value2) createWithColor: (recoveredBlock72Value4).
    (recoveredBlock72Value1) areaStyle: (recoveredBlock72Value5).
    recoveredBlock72Value6 := recoveredBlock72Arg1.
    recoveredBlock72Value7 := (self) redrawGO: (recoveredBlock72Value6).
    recoveredBlock72Value7
].
    (recoveredValue35) do: (recoveredValue36).
    recoveredValue37 := recoveredLocal1.
    ^recoveredValue37
! !

"ASDBase.ic method 0x204425f8; bytecode file offset 0xd3ef0c"
!TetrisView methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOuterNotebook.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOuterNotebook.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetGraphicPane.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetGraphicPane.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := None.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) createGC: (recoveredStack2) values: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) gc: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetGraphicPane.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetGraphicPane.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 450.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 400.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 480.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 430.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'EditorTetris'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) appendActionKeys.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) mementoEnabled: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) initializeT.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'ASCET BDE Tetris'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ed1ac; bytecode file offset 0xde9a98"
!TetrisView methodsFor: 'recovered'!
createFigure
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) removeTLines.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := SGRandom.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) randomInt.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) modulo: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 120.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) figure1: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            figureT := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 120.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) figure2: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            figureT := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 120.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) figure3: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            figureT := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 120.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) figure4: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            figureT := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 120.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) figure5: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            figureT := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := 120.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) figure6: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            figureT := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 120.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) figure7: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            figureT := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := figureT.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectDownCollision: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) endT.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f4684; bytecode file offset 0xdf0f38"
!TetrisView methodsFor: 'recovered'!
countTLevel: recoveredArg1
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
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            levelT := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            milliSecondsT := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 80.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 200.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            milliSecondsT := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 70.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 300.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            milliSecondsT := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 60.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 400.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            milliSecondsT := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 50.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 500.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            milliSecondsT := recoveredStack2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 600.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            milliSecondsT := recoveredStack2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 30.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 700.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            milliSecondsT := recoveredStack2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 800.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            milliSecondsT := recoveredStack2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := levelT.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 900.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            milliSecondsT := recoveredStack2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a62f0; bytecode file offset 0xea2c1c"
!TetrisView methodsFor: 'recovered'!
removeTLines
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := true.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := borderT.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) includes: (recoveredBlock8Stack3).
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 32] ifFalse: [recoveredBlock8PC := 24].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) class.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack2 := SGOperatorGO.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) = (recoveredBlock8Stack2).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) not.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 340.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 recoveredBlock61Value4 recoveredBlock61Value5 recoveredBlock61Value6 recoveredBlock61Value7 recoveredBlock61Value8 |
    recoveredBlock61Value0 := recoveredBlock61Arg1.
    recoveredBlock61Value1 := (recoveredBlock61Value0) frameGO.
    recoveredBlock61Value2 := (recoveredBlock61Value1) position.
    recoveredBlock61Value3 := (recoveredBlock61Value2) y.
    recoveredBlock61Value4 := recoveredLocal4.
    recoveredBlock61Value5 := recoveredLocal3.
    recoveredBlock61Value6 := (recoveredBlock61Value5) * (20).
    recoveredBlock61Value7 := (recoveredBlock61Value4) - (recoveredBlock61Value6).
    recoveredBlock61Value8 := (recoveredBlock61Value3) = (recoveredBlock61Value7).
    recoveredBlock61Value8
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 recoveredBlock107Value3 recoveredBlock107Value4 recoveredBlock107Value5 |
    recoveredBlock107Value0 := (self) uiController.
    recoveredBlock107Value1 := (recoveredBlock107Value0) graphPaneController.
    recoveredBlock107Value2 := (recoveredBlock107Value1) graphicObjects.
    recoveredBlock107Value3 := (recoveredBlock107Value2) children.
    recoveredBlock107Value4 := recoveredBlock107Arg1.
    recoveredBlock107Value5 := (recoveredBlock107Value3) remove: (recoveredBlock107Value4).
    recoveredBlock107Value5
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Stack0 recoveredBlock127Stack1 recoveredBlock127Stack2 recoveredBlock127Stack3 recoveredBlock127Stack4 recoveredBlock127Stack5 recoveredBlock127Stack6 recoveredBlock127PC recoveredBlock127Step recoveredBlock127Done recoveredBlock127Result |
    recoveredBlock127Stack0 := self.
    recoveredBlock127PC := 134.
    recoveredBlock127Done := false.
    [recoveredBlock127Done not] whileTrue: [
        recoveredBlock127Step := recoveredBlock127PC.
        recoveredBlock127Step = 134 ifTrue: [
            recoveredBlock127Stack1 := nil.
            recoveredBlock127PC := 135.
        ].
        recoveredBlock127Step = 135 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 136.
        ].
        recoveredBlock127Step = 136 ifTrue: [
            (recoveredBlock127Stack2 == nil) ifTrue: [recoveredBlock127PC := 180] ifFalse: [recoveredBlock127PC := 140].
        ].
        recoveredBlock127Step = 140 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 141.
        ].
        recoveredBlock127Step = 141 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) frameGO.
            recoveredBlock127PC := 143.
        ].
        recoveredBlock127Step = 143 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) position.
            recoveredBlock127PC := 145.
        ].
        recoveredBlock127Step = 145 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) y.
            recoveredBlock127PC := 147.
        ].
        recoveredBlock127Step = 147 ifTrue: [
            recoveredBlock127Stack3 := recoveredLocal4.
            recoveredBlock127PC := 150.
        ].
        recoveredBlock127Step = 150 ifTrue: [
            recoveredBlock127Stack4 := recoveredLocal3.
            recoveredBlock127PC := 153.
        ].
        recoveredBlock127Step = 153 ifTrue: [
            recoveredBlock127Stack5 := 20.
            recoveredBlock127PC := 155.
        ].
        recoveredBlock127Step = 155 ifTrue: [
            recoveredBlock127Stack4 := (recoveredBlock127Stack4) * (recoveredBlock127Stack5).
            recoveredBlock127PC := 156.
        ].
        recoveredBlock127Step = 156 ifTrue: [
            recoveredBlock127Stack3 := (recoveredBlock127Stack3) - (recoveredBlock127Stack4).
            recoveredBlock127PC := 157.
        ].
        recoveredBlock127Step = 157 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) <= (recoveredBlock127Stack3).
            recoveredBlock127PC := 158.
        ].
        recoveredBlock127Step = 158 ifTrue: [
            (recoveredBlock127Stack2) ifTrue: [recoveredBlock127PC := 162] ifFalse: [recoveredBlock127PC := 180].
        ].
        recoveredBlock127Step = 162 ifTrue: [
            recoveredBlock127PC := 163.
        ].
        recoveredBlock127Step = 163 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Arg1.
            recoveredBlock127PC := 164.
        ].
        recoveredBlock127Step = 164 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) frameGO.
            recoveredBlock127PC := 166.
        ].
        recoveredBlock127Step = 166 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) position.
            recoveredBlock127PC := 168.
        ].
        recoveredBlock127Step = 168 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 169.
        ].
        recoveredBlock127Step = 169 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) frameGO.
            recoveredBlock127PC := 171.
        ].
        recoveredBlock127Step = 171 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) position.
            recoveredBlock127PC := 173.
        ].
        recoveredBlock127Step = 173 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) y.
            recoveredBlock127PC := 175.
        ].
        recoveredBlock127Step = 175 ifTrue: [
            recoveredBlock127Stack3 := 20.
            recoveredBlock127PC := 177.
        ].
        recoveredBlock127Step = 177 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) + (recoveredBlock127Stack3).
            recoveredBlock127PC := 178.
        ].
        recoveredBlock127Step = 178 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) y: (recoveredBlock127Stack2).
            recoveredBlock127PC := 180.
        ].
        recoveredBlock127Step = 180 ifTrue: [
            recoveredBlock127Result := recoveredBlock127Stack1.
            recoveredBlock127Done := true.
        ].
    ].
    recoveredBlock127Result
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) redrawPane.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) countTPoints: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack0) countTLevel: (recoveredStack1).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := textT.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := 'Points: '.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := pointsT.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := 'Lines: '.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := levelT.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) text: (recoveredStack1).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := textT.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) redrawGO: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := textT.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205dcbc0; bytecode file offset 0xed94b4"
!TetrisView methodsFor: 'recovered'!
rotateLeft: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredLocal2 := 2000.
    recoveredLocal3 := 2000.
    recoveredLocal4 := 2000.
    recoveredLocal5 := 2000.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 recoveredBlock32Value6 recoveredBlock32Value7 recoveredBlock32Value8 recoveredBlock32Value9 recoveredBlock32Value10 recoveredBlock32Value11 recoveredBlock32Value12 |
    recoveredBlock32Value0 := recoveredLocal1.
    recoveredBlock32Value1 := Rectangle.
    recoveredBlock32Value2 := recoveredBlock32Arg1.
    recoveredBlock32Value3 := (recoveredBlock32Value2) frameGO.
    recoveredBlock32Value4 := (recoveredBlock32Value3) logicFrame.
    recoveredBlock32Value5 := (recoveredBlock32Value4) origin.
    recoveredBlock32Value6 := recoveredBlock32Arg1.
    recoveredBlock32Value7 := (recoveredBlock32Value6) frameGO.
    recoveredBlock32Value8 := (recoveredBlock32Value7) logicFrame.
    recoveredBlock32Value9 := (recoveredBlock32Value8) corner.
    recoveredBlock32Value10 := (recoveredBlock32Value9) + (1).
    recoveredBlock32Value11 := (recoveredBlock32Value1) origin: (recoveredBlock32Value5) corner: (recoveredBlock32Value10).
    recoveredBlock32Value12 := (recoveredBlock32Value0) add: (recoveredBlock32Value11).
    recoveredBlock32Value12
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Stack0 recoveredBlock66Stack1 recoveredBlock66Stack2 recoveredBlock66Stack3 recoveredBlock66Stack4 recoveredBlock66PC recoveredBlock66Step recoveredBlock66Done recoveredBlock66Result |
    recoveredBlock66Stack0 := self.
    recoveredBlock66PC := 72.
    recoveredBlock66Done := false.
    [recoveredBlock66Done not] whileTrue: [
        recoveredBlock66Step := recoveredBlock66PC.
        recoveredBlock66Step = 72 ifTrue: [
            recoveredBlock66Stack1 := recoveredLocal5.
            recoveredBlock66PC := 75.
        ].
        recoveredBlock66Step = 75 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Arg1.
            recoveredBlock66PC := 76.
        ].
        recoveredBlock66Step = 76 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) frameGO.
            recoveredBlock66PC := 77.
        ].
        recoveredBlock66Step = 77 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) position.
            recoveredBlock66PC := 79.
        ].
        recoveredBlock66Step = 79 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) x.
            recoveredBlock66PC := 81.
        ].
        recoveredBlock66Step = 81 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) > (recoveredBlock66Stack2).
            recoveredBlock66PC := 82.
        ].
        recoveredBlock66Step = 82 ifTrue: [
            (recoveredBlock66Stack1) ifTrue: [recoveredBlock66PC := 86] ifFalse: [recoveredBlock66PC := 95].
        ].
        recoveredBlock66Step = 86 ifTrue: [
            recoveredBlock66Stack1 := recoveredBlock66Arg1.
            recoveredBlock66PC := 87.
        ].
        recoveredBlock66Step = 87 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) frameGO.
            recoveredBlock66PC := 88.
        ].
        recoveredBlock66Step = 88 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) position.
            recoveredBlock66PC := 90.
        ].
        recoveredBlock66Step = 90 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) x.
            recoveredBlock66PC := 92.
        ].
        recoveredBlock66Step = 92 ifTrue: [
            recoveredLocal5 := recoveredBlock66Stack1.
            recoveredBlock66PC := 95.
        ].
        recoveredBlock66Step = 95 ifTrue: [
            recoveredBlock66Stack1 := nil.
            recoveredBlock66PC := 96.
        ].
        recoveredBlock66Step = 96 ifTrue: [
            recoveredBlock66Stack2 := recoveredLocal4.
            recoveredBlock66PC := 99.
        ].
        recoveredBlock66Step = 99 ifTrue: [
            recoveredBlock66Stack3 := recoveredBlock66Arg1.
            recoveredBlock66PC := 100.
        ].
        recoveredBlock66Step = 100 ifTrue: [
            recoveredBlock66Stack3 := (recoveredBlock66Stack3) frameGO.
            recoveredBlock66PC := 101.
        ].
        recoveredBlock66Step = 101 ifTrue: [
            recoveredBlock66Stack3 := (recoveredBlock66Stack3) position.
            recoveredBlock66PC := 103.
        ].
        recoveredBlock66Step = 103 ifTrue: [
            recoveredBlock66Stack3 := (recoveredBlock66Stack3) y.
            recoveredBlock66PC := 105.
        ].
        recoveredBlock66Step = 105 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) > (recoveredBlock66Stack3).
            recoveredBlock66PC := 106.
        ].
        recoveredBlock66Step = 106 ifTrue: [
            (recoveredBlock66Stack2) ifTrue: [recoveredBlock66PC := 110] ifFalse: [recoveredBlock66PC := 121].
        ].
        recoveredBlock66Step = 110 ifTrue: [
            recoveredBlock66PC := 111.
        ].
        recoveredBlock66Step = 111 ifTrue: [
            recoveredBlock66Stack1 := recoveredBlock66Arg1.
            recoveredBlock66PC := 112.
        ].
        recoveredBlock66Step = 112 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) frameGO.
            recoveredBlock66PC := 113.
        ].
        recoveredBlock66Step = 113 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) position.
            recoveredBlock66PC := 115.
        ].
        recoveredBlock66Step = 115 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) y.
            recoveredBlock66PC := 117.
        ].
        recoveredBlock66Step = 117 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Stack1.
            recoveredBlock66PC := 118.
        ].
        recoveredBlock66Step = 118 ifTrue: [
            recoveredLocal4 := recoveredBlock66Stack2.
            recoveredBlock66PC := 121.
        ].
        recoveredBlock66Step = 121 ifTrue: [
            recoveredBlock66Result := recoveredBlock66Stack1.
            recoveredBlock66Done := true.
        ].
    ].
    recoveredBlock66Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Local1 recoveredBlock127Local2 recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 recoveredBlock127Value14 recoveredBlock127Value15 recoveredBlock127Value16 recoveredBlock127Value17 recoveredBlock127Value18 recoveredBlock127Value19 recoveredBlock127Value20 recoveredBlock127Value21 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := (recoveredBlock127Value0) frameGO.
    recoveredBlock127Value2 := (recoveredBlock127Value1) position.
    recoveredBlock127Value3 := (recoveredBlock127Value2) x.
    recoveredBlock127Value4 := recoveredLocal5.
    recoveredBlock127Value5 := (recoveredBlock127Value3) - (recoveredBlock127Value4).
    recoveredBlock127Local2 := recoveredBlock127Value5.
    recoveredBlock127Value6 := recoveredBlock127Arg1.
    recoveredBlock127Value7 := (recoveredBlock127Value6) frameGO.
    recoveredBlock127Value8 := (recoveredBlock127Value7) position.
    recoveredBlock127Value9 := (recoveredBlock127Value8) y.
    recoveredBlock127Value10 := recoveredLocal4.
    recoveredBlock127Value11 := (recoveredBlock127Value9) - (recoveredBlock127Value10).
    recoveredBlock127Local1 := recoveredBlock127Value11.
    recoveredBlock127Value12 := recoveredBlock127Arg1.
    recoveredBlock127Value13 := (recoveredBlock127Value12) frameGO.
    recoveredBlock127Value14 := (recoveredBlock127Value13) position.
    recoveredBlock127Value15 := recoveredBlock127Local1.
    (recoveredBlock127Value14) x: (recoveredBlock127Value15).
    recoveredBlock127Value16 := recoveredBlock127Arg1.
    recoveredBlock127Value17 := (recoveredBlock127Value16) frameGO.
    recoveredBlock127Value18 := (recoveredBlock127Value17) position.
    recoveredBlock127Value19 := recoveredBlock127Local2.
    recoveredBlock127Value20 := (60) - (recoveredBlock127Value19).
    recoveredBlock127Value21 := (recoveredBlock127Value18) y: (recoveredBlock127Value20).
    recoveredBlock127Value21
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Stack0 recoveredBlock179Stack1 recoveredBlock179Stack2 recoveredBlock179Stack3 recoveredBlock179Stack4 recoveredBlock179PC recoveredBlock179Step recoveredBlock179Done recoveredBlock179Result |
    recoveredBlock179Stack0 := self.
    recoveredBlock179PC := 186.
    recoveredBlock179Done := false.
    [recoveredBlock179Done not] whileTrue: [
        recoveredBlock179Step := recoveredBlock179PC.
        recoveredBlock179Step = 186 ifTrue: [
            recoveredBlock179Stack1 := recoveredLocal3.
            recoveredBlock179PC := 189.
        ].
        recoveredBlock179Step = 189 ifTrue: [
            recoveredBlock179Stack2 := recoveredBlock179Arg1.
            recoveredBlock179PC := 190.
        ].
        recoveredBlock179Step = 190 ifTrue: [
            recoveredBlock179Stack2 := (recoveredBlock179Stack2) frameGO.
            recoveredBlock179PC := 191.
        ].
        recoveredBlock179Step = 191 ifTrue: [
            recoveredBlock179Stack2 := (recoveredBlock179Stack2) position.
            recoveredBlock179PC := 193.
        ].
        recoveredBlock179Step = 193 ifTrue: [
            recoveredBlock179Stack2 := (recoveredBlock179Stack2) x.
            recoveredBlock179PC := 195.
        ].
        recoveredBlock179Step = 195 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) > (recoveredBlock179Stack2).
            recoveredBlock179PC := 196.
        ].
        recoveredBlock179Step = 196 ifTrue: [
            (recoveredBlock179Stack1) ifTrue: [recoveredBlock179PC := 200] ifFalse: [recoveredBlock179PC := 209].
        ].
        recoveredBlock179Step = 200 ifTrue: [
            recoveredBlock179Stack1 := recoveredBlock179Arg1.
            recoveredBlock179PC := 201.
        ].
        recoveredBlock179Step = 201 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) frameGO.
            recoveredBlock179PC := 202.
        ].
        recoveredBlock179Step = 202 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) position.
            recoveredBlock179PC := 204.
        ].
        recoveredBlock179Step = 204 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) x.
            recoveredBlock179PC := 206.
        ].
        recoveredBlock179Step = 206 ifTrue: [
            recoveredLocal3 := recoveredBlock179Stack1.
            recoveredBlock179PC := 209.
        ].
        recoveredBlock179Step = 209 ifTrue: [
            recoveredBlock179Stack1 := nil.
            recoveredBlock179PC := 210.
        ].
        recoveredBlock179Step = 210 ifTrue: [
            recoveredBlock179Stack2 := recoveredLocal2.
            recoveredBlock179PC := 213.
        ].
        recoveredBlock179Step = 213 ifTrue: [
            recoveredBlock179Stack3 := recoveredBlock179Arg1.
            recoveredBlock179PC := 214.
        ].
        recoveredBlock179Step = 214 ifTrue: [
            recoveredBlock179Stack3 := (recoveredBlock179Stack3) frameGO.
            recoveredBlock179PC := 215.
        ].
        recoveredBlock179Step = 215 ifTrue: [
            recoveredBlock179Stack3 := (recoveredBlock179Stack3) position.
            recoveredBlock179PC := 217.
        ].
        recoveredBlock179Step = 217 ifTrue: [
            recoveredBlock179Stack3 := (recoveredBlock179Stack3) y.
            recoveredBlock179PC := 219.
        ].
        recoveredBlock179Step = 219 ifTrue: [
            recoveredBlock179Stack2 := (recoveredBlock179Stack2) > (recoveredBlock179Stack3).
            recoveredBlock179PC := 220.
        ].
        recoveredBlock179Step = 220 ifTrue: [
            (recoveredBlock179Stack2) ifTrue: [recoveredBlock179PC := 224] ifFalse: [recoveredBlock179PC := 235].
        ].
        recoveredBlock179Step = 224 ifTrue: [
            recoveredBlock179PC := 225.
        ].
        recoveredBlock179Step = 225 ifTrue: [
            recoveredBlock179Stack1 := recoveredBlock179Arg1.
            recoveredBlock179PC := 226.
        ].
        recoveredBlock179Step = 226 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) frameGO.
            recoveredBlock179PC := 227.
        ].
        recoveredBlock179Step = 227 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) position.
            recoveredBlock179PC := 229.
        ].
        recoveredBlock179Step = 229 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) y.
            recoveredBlock179PC := 231.
        ].
        recoveredBlock179Step = 231 ifTrue: [
            recoveredBlock179Stack2 := recoveredBlock179Stack1.
            recoveredBlock179PC := 232.
        ].
        recoveredBlock179Step = 232 ifTrue: [
            recoveredLocal2 := recoveredBlock179Stack2.
            recoveredBlock179PC := 235.
        ].
        recoveredBlock179Step = 235 ifTrue: [
            recoveredBlock179Result := recoveredBlock179Stack1.
            recoveredBlock179Done := true.
        ].
    ].
    recoveredBlock179Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [:recoveredBlock241Arg1 | 
    | recoveredBlock241Value0 recoveredBlock241Value1 recoveredBlock241Value2 recoveredBlock241Value3 recoveredBlock241Value4 recoveredBlock241Value5 recoveredBlock241Value6 recoveredBlock241Value7 recoveredBlock241Value8 recoveredBlock241Value9 recoveredBlock241Value10 recoveredBlock241Value11 recoveredBlock241Value12 recoveredBlock241Value13 recoveredBlock241Value14 recoveredBlock241Value15 recoveredBlock241Value16 recoveredBlock241Value17 recoveredBlock241Value18 |
    recoveredBlock241Value0 := recoveredBlock241Arg1.
    recoveredBlock241Value1 := (recoveredBlock241Value0) frameGO.
    recoveredBlock241Value2 := (recoveredBlock241Value1) position.
    recoveredBlock241Value3 := recoveredBlock241Arg1.
    recoveredBlock241Value4 := (recoveredBlock241Value3) frameGO.
    recoveredBlock241Value5 := (recoveredBlock241Value4) position.
    recoveredBlock241Value6 := (recoveredBlock241Value5) x.
    recoveredBlock241Value7 := recoveredLocal3.
    recoveredBlock241Value8 := (recoveredBlock241Value6) - (recoveredBlock241Value7).
    (recoveredBlock241Value2) x: (recoveredBlock241Value8).
    recoveredBlock241Value9 := recoveredBlock241Arg1.
    recoveredBlock241Value10 := (recoveredBlock241Value9) frameGO.
    recoveredBlock241Value11 := (recoveredBlock241Value10) position.
    recoveredBlock241Value12 := recoveredBlock241Arg1.
    recoveredBlock241Value13 := (recoveredBlock241Value12) frameGO.
    recoveredBlock241Value14 := (recoveredBlock241Value13) position.
    recoveredBlock241Value15 := (recoveredBlock241Value14) y.
    recoveredBlock241Value16 := recoveredLocal2.
    recoveredBlock241Value17 := (recoveredBlock241Value15) - (recoveredBlock241Value16).
    recoveredBlock241Value18 := (recoveredBlock241Value11) y: (recoveredBlock241Value17).
    recoveredBlock241Value18
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := [:recoveredBlock286Arg1 | 
    | recoveredBlock286Value0 recoveredBlock286Value1 recoveredBlock286Value2 recoveredBlock286Value3 recoveredBlock286Value4 recoveredBlock286Value5 recoveredBlock286Value6 recoveredBlock286Value7 recoveredBlock286Value8 recoveredBlock286Value9 recoveredBlock286Value10 recoveredBlock286Value11 recoveredBlock286Value12 recoveredBlock286Value13 recoveredBlock286Value14 recoveredBlock286Value15 recoveredBlock286Value16 recoveredBlock286Value17 recoveredBlock286Value18 |
    recoveredBlock286Value0 := recoveredBlock286Arg1.
    recoveredBlock286Value1 := (recoveredBlock286Value0) frameGO.
    recoveredBlock286Value2 := (recoveredBlock286Value1) position.
    recoveredBlock286Value3 := recoveredBlock286Arg1.
    recoveredBlock286Value4 := (recoveredBlock286Value3) frameGO.
    recoveredBlock286Value5 := (recoveredBlock286Value4) position.
    recoveredBlock286Value6 := (recoveredBlock286Value5) x.
    recoveredBlock286Value7 := recoveredLocal5.
    recoveredBlock286Value8 := (recoveredBlock286Value6) + (recoveredBlock286Value7).
    (recoveredBlock286Value2) x: (recoveredBlock286Value8).
    recoveredBlock286Value9 := recoveredBlock286Arg1.
    recoveredBlock286Value10 := (recoveredBlock286Value9) frameGO.
    recoveredBlock286Value11 := (recoveredBlock286Value10) position.
    recoveredBlock286Value12 := recoveredBlock286Arg1.
    recoveredBlock286Value13 := (recoveredBlock286Value12) frameGO.
    recoveredBlock286Value14 := (recoveredBlock286Value13) position.
    recoveredBlock286Value15 := (recoveredBlock286Value14) y.
    recoveredBlock286Value16 := recoveredLocal4.
    recoveredBlock286Value17 := (recoveredBlock286Value15) + (recoveredBlock286Value16).
    recoveredBlock286Value18 := (recoveredBlock286Value11) y: (recoveredBlock286Value17).
    recoveredBlock286Value18
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := [:recoveredBlock330Arg1 | 
    | recoveredBlock330Value0 recoveredBlock330Value1 recoveredBlock330Value2 recoveredBlock330Value3 recoveredBlock330Value4 recoveredBlock330Value5 recoveredBlock330Value6 recoveredBlock330Value7 recoveredBlock330Value8 recoveredBlock330Value9 recoveredBlock330Value10 recoveredBlock330Value11 recoveredBlock330Value12 |
    recoveredBlock330Value0 := recoveredLocal1.
    recoveredBlock330Value1 := Rectangle.
    recoveredBlock330Value2 := recoveredBlock330Arg1.
    recoveredBlock330Value3 := (recoveredBlock330Value2) frameGO.
    recoveredBlock330Value4 := (recoveredBlock330Value3) logicFrame.
    recoveredBlock330Value5 := (recoveredBlock330Value4) origin.
    recoveredBlock330Value6 := recoveredBlock330Arg1.
    recoveredBlock330Value7 := (recoveredBlock330Value6) frameGO.
    recoveredBlock330Value8 := (recoveredBlock330Value7) logicFrame.
    recoveredBlock330Value9 := (recoveredBlock330Value8) corner.
    recoveredBlock330Value10 := (recoveredBlock330Value9) + (1).
    recoveredBlock330Value11 := (recoveredBlock330Value1) origin: (recoveredBlock330Value5) corner: (recoveredBlock330Value10).
    recoveredBlock330Value12 := (recoveredBlock330Value0) add: (recoveredBlock330Value11).
    recoveredBlock330Value12
].
    (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    (self) redrawRects: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x205e0f18; bytecode file offset 0xedd80c"
!TetrisView methodsFor: 'recovered'!
rotateRight: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredLocal2 := 2000.
    recoveredLocal3 := 2000.
    recoveredLocal4 := 2000.
    recoveredLocal5 := 2000.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 recoveredBlock32Value6 recoveredBlock32Value7 recoveredBlock32Value8 recoveredBlock32Value9 recoveredBlock32Value10 recoveredBlock32Value11 recoveredBlock32Value12 |
    recoveredBlock32Value0 := recoveredLocal1.
    recoveredBlock32Value1 := Rectangle.
    recoveredBlock32Value2 := recoveredBlock32Arg1.
    recoveredBlock32Value3 := (recoveredBlock32Value2) frameGO.
    recoveredBlock32Value4 := (recoveredBlock32Value3) logicFrame.
    recoveredBlock32Value5 := (recoveredBlock32Value4) origin.
    recoveredBlock32Value6 := recoveredBlock32Arg1.
    recoveredBlock32Value7 := (recoveredBlock32Value6) frameGO.
    recoveredBlock32Value8 := (recoveredBlock32Value7) logicFrame.
    recoveredBlock32Value9 := (recoveredBlock32Value8) corner.
    recoveredBlock32Value10 := (recoveredBlock32Value9) + (1).
    recoveredBlock32Value11 := (recoveredBlock32Value1) origin: (recoveredBlock32Value5) corner: (recoveredBlock32Value10).
    recoveredBlock32Value12 := (recoveredBlock32Value0) add: (recoveredBlock32Value11).
    recoveredBlock32Value12
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) redrawRects: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71Stack4 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := recoveredLocal5.
            recoveredBlock71PC := 81.
        ].
        recoveredBlock71Step = 81 ifTrue: [
            recoveredBlock71Stack2 := recoveredBlock71Arg1.
            recoveredBlock71PC := 82.
        ].
        recoveredBlock71Step = 82 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) frameGO.
            recoveredBlock71PC := 83.
        ].
        recoveredBlock71Step = 83 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) position.
            recoveredBlock71PC := 85.
        ].
        recoveredBlock71Step = 85 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) x.
            recoveredBlock71PC := 87.
        ].
        recoveredBlock71Step = 87 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) > (recoveredBlock71Stack2).
            recoveredBlock71PC := 88.
        ].
        recoveredBlock71Step = 88 ifTrue: [
            (recoveredBlock71Stack1) ifTrue: [recoveredBlock71PC := 92] ifFalse: [recoveredBlock71PC := 101].
        ].
        recoveredBlock71Step = 92 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Arg1.
            recoveredBlock71PC := 93.
        ].
        recoveredBlock71Step = 93 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) frameGO.
            recoveredBlock71PC := 94.
        ].
        recoveredBlock71Step = 94 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) position.
            recoveredBlock71PC := 96.
        ].
        recoveredBlock71Step = 96 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) x.
            recoveredBlock71PC := 98.
        ].
        recoveredBlock71Step = 98 ifTrue: [
            recoveredLocal5 := recoveredBlock71Stack1.
            recoveredBlock71PC := 101.
        ].
        recoveredBlock71Step = 101 ifTrue: [
            recoveredBlock71Stack1 := nil.
            recoveredBlock71PC := 102.
        ].
        recoveredBlock71Step = 102 ifTrue: [
            recoveredBlock71Stack2 := recoveredLocal4.
            recoveredBlock71PC := 105.
        ].
        recoveredBlock71Step = 105 ifTrue: [
            recoveredBlock71Stack3 := recoveredBlock71Arg1.
            recoveredBlock71PC := 106.
        ].
        recoveredBlock71Step = 106 ifTrue: [
            recoveredBlock71Stack3 := (recoveredBlock71Stack3) frameGO.
            recoveredBlock71PC := 107.
        ].
        recoveredBlock71Step = 107 ifTrue: [
            recoveredBlock71Stack3 := (recoveredBlock71Stack3) position.
            recoveredBlock71PC := 109.
        ].
        recoveredBlock71Step = 109 ifTrue: [
            recoveredBlock71Stack3 := (recoveredBlock71Stack3) y.
            recoveredBlock71PC := 111.
        ].
        recoveredBlock71Step = 111 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) > (recoveredBlock71Stack3).
            recoveredBlock71PC := 112.
        ].
        recoveredBlock71Step = 112 ifTrue: [
            (recoveredBlock71Stack2) ifTrue: [recoveredBlock71PC := 116] ifFalse: [recoveredBlock71PC := 127].
        ].
        recoveredBlock71Step = 116 ifTrue: [
            recoveredBlock71PC := 117.
        ].
        recoveredBlock71Step = 117 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Arg1.
            recoveredBlock71PC := 118.
        ].
        recoveredBlock71Step = 118 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) frameGO.
            recoveredBlock71PC := 119.
        ].
        recoveredBlock71Step = 119 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) position.
            recoveredBlock71PC := 121.
        ].
        recoveredBlock71Step = 121 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) y.
            recoveredBlock71PC := 123.
        ].
        recoveredBlock71Step = 123 ifTrue: [
            recoveredBlock71Stack2 := recoveredBlock71Stack1.
            recoveredBlock71PC := 124.
        ].
        recoveredBlock71Step = 124 ifTrue: [
            recoveredLocal4 := recoveredBlock71Stack2.
            recoveredBlock71PC := 127.
        ].
        recoveredBlock71Step = 127 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack1.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Local1 recoveredBlock133Local2 recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 recoveredBlock133Value4 recoveredBlock133Value5 recoveredBlock133Value6 recoveredBlock133Value7 recoveredBlock133Value8 recoveredBlock133Value9 recoveredBlock133Value10 recoveredBlock133Value11 recoveredBlock133Value12 recoveredBlock133Value13 recoveredBlock133Value14 recoveredBlock133Value15 recoveredBlock133Value16 recoveredBlock133Value17 recoveredBlock133Value18 recoveredBlock133Value19 recoveredBlock133Value20 recoveredBlock133Value21 |
    recoveredBlock133Value0 := recoveredBlock133Arg1.
    recoveredBlock133Value1 := (recoveredBlock133Value0) frameGO.
    recoveredBlock133Value2 := (recoveredBlock133Value1) position.
    recoveredBlock133Value3 := (recoveredBlock133Value2) x.
    recoveredBlock133Value4 := recoveredLocal5.
    recoveredBlock133Value5 := (recoveredBlock133Value3) - (recoveredBlock133Value4).
    recoveredBlock133Local2 := recoveredBlock133Value5.
    recoveredBlock133Value6 := recoveredBlock133Arg1.
    recoveredBlock133Value7 := (recoveredBlock133Value6) frameGO.
    recoveredBlock133Value8 := (recoveredBlock133Value7) position.
    recoveredBlock133Value9 := (recoveredBlock133Value8) y.
    recoveredBlock133Value10 := recoveredLocal4.
    recoveredBlock133Value11 := (recoveredBlock133Value9) - (recoveredBlock133Value10).
    recoveredBlock133Local1 := recoveredBlock133Value11.
    recoveredBlock133Value12 := recoveredBlock133Arg1.
    recoveredBlock133Value13 := (recoveredBlock133Value12) frameGO.
    recoveredBlock133Value14 := (recoveredBlock133Value13) position.
    recoveredBlock133Value15 := recoveredBlock133Local2.
    (recoveredBlock133Value14) y: (recoveredBlock133Value15).
    recoveredBlock133Value16 := recoveredBlock133Arg1.
    recoveredBlock133Value17 := (recoveredBlock133Value16) frameGO.
    recoveredBlock133Value18 := (recoveredBlock133Value17) position.
    recoveredBlock133Value19 := recoveredBlock133Local1.
    recoveredBlock133Value20 := (60) - (recoveredBlock133Value19).
    recoveredBlock133Value21 := (recoveredBlock133Value18) x: (recoveredBlock133Value20).
    recoveredBlock133Value21
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [:recoveredBlock185Arg1 | 
    | recoveredBlock185Stack0 recoveredBlock185Stack1 recoveredBlock185Stack2 recoveredBlock185Stack3 recoveredBlock185Stack4 recoveredBlock185PC recoveredBlock185Step recoveredBlock185Done recoveredBlock185Result |
    recoveredBlock185Stack0 := self.
    recoveredBlock185PC := 192.
    recoveredBlock185Done := false.
    [recoveredBlock185Done not] whileTrue: [
        recoveredBlock185Step := recoveredBlock185PC.
        recoveredBlock185Step = 192 ifTrue: [
            recoveredBlock185Stack1 := recoveredLocal3.
            recoveredBlock185PC := 195.
        ].
        recoveredBlock185Step = 195 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Arg1.
            recoveredBlock185PC := 196.
        ].
        recoveredBlock185Step = 196 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) frameGO.
            recoveredBlock185PC := 197.
        ].
        recoveredBlock185Step = 197 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) position.
            recoveredBlock185PC := 199.
        ].
        recoveredBlock185Step = 199 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) x.
            recoveredBlock185PC := 201.
        ].
        recoveredBlock185Step = 201 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) > (recoveredBlock185Stack2).
            recoveredBlock185PC := 202.
        ].
        recoveredBlock185Step = 202 ifTrue: [
            (recoveredBlock185Stack1) ifTrue: [recoveredBlock185PC := 206] ifFalse: [recoveredBlock185PC := 215].
        ].
        recoveredBlock185Step = 206 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Arg1.
            recoveredBlock185PC := 207.
        ].
        recoveredBlock185Step = 207 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) frameGO.
            recoveredBlock185PC := 208.
        ].
        recoveredBlock185Step = 208 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) position.
            recoveredBlock185PC := 210.
        ].
        recoveredBlock185Step = 210 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) x.
            recoveredBlock185PC := 212.
        ].
        recoveredBlock185Step = 212 ifTrue: [
            recoveredLocal3 := recoveredBlock185Stack1.
            recoveredBlock185PC := 215.
        ].
        recoveredBlock185Step = 215 ifTrue: [
            recoveredBlock185Stack1 := nil.
            recoveredBlock185PC := 216.
        ].
        recoveredBlock185Step = 216 ifTrue: [
            recoveredBlock185Stack2 := recoveredLocal2.
            recoveredBlock185PC := 219.
        ].
        recoveredBlock185Step = 219 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Arg1.
            recoveredBlock185PC := 220.
        ].
        recoveredBlock185Step = 220 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) frameGO.
            recoveredBlock185PC := 221.
        ].
        recoveredBlock185Step = 221 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) position.
            recoveredBlock185PC := 223.
        ].
        recoveredBlock185Step = 223 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) y.
            recoveredBlock185PC := 225.
        ].
        recoveredBlock185Step = 225 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) > (recoveredBlock185Stack3).
            recoveredBlock185PC := 226.
        ].
        recoveredBlock185Step = 226 ifTrue: [
            (recoveredBlock185Stack2) ifTrue: [recoveredBlock185PC := 230] ifFalse: [recoveredBlock185PC := 241].
        ].
        recoveredBlock185Step = 230 ifTrue: [
            recoveredBlock185PC := 231.
        ].
        recoveredBlock185Step = 231 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Arg1.
            recoveredBlock185PC := 232.
        ].
        recoveredBlock185Step = 232 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) frameGO.
            recoveredBlock185PC := 233.
        ].
        recoveredBlock185Step = 233 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) position.
            recoveredBlock185PC := 235.
        ].
        recoveredBlock185Step = 235 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) y.
            recoveredBlock185PC := 237.
        ].
        recoveredBlock185Step = 237 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Stack1.
            recoveredBlock185PC := 238.
        ].
        recoveredBlock185Step = 238 ifTrue: [
            recoveredLocal2 := recoveredBlock185Stack2.
            recoveredBlock185PC := 241.
        ].
        recoveredBlock185Step = 241 ifTrue: [
            recoveredBlock185Result := recoveredBlock185Stack1.
            recoveredBlock185Done := true.
        ].
    ].
    recoveredBlock185Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := [:recoveredBlock247Arg1 | 
    | recoveredBlock247Value0 recoveredBlock247Value1 recoveredBlock247Value2 recoveredBlock247Value3 recoveredBlock247Value4 recoveredBlock247Value5 recoveredBlock247Value6 recoveredBlock247Value7 recoveredBlock247Value8 recoveredBlock247Value9 recoveredBlock247Value10 recoveredBlock247Value11 recoveredBlock247Value12 recoveredBlock247Value13 recoveredBlock247Value14 recoveredBlock247Value15 recoveredBlock247Value16 recoveredBlock247Value17 recoveredBlock247Value18 |
    recoveredBlock247Value0 := recoveredBlock247Arg1.
    recoveredBlock247Value1 := (recoveredBlock247Value0) frameGO.
    recoveredBlock247Value2 := (recoveredBlock247Value1) position.
    recoveredBlock247Value3 := recoveredBlock247Arg1.
    recoveredBlock247Value4 := (recoveredBlock247Value3) frameGO.
    recoveredBlock247Value5 := (recoveredBlock247Value4) position.
    recoveredBlock247Value6 := (recoveredBlock247Value5) x.
    recoveredBlock247Value7 := recoveredLocal3.
    recoveredBlock247Value8 := (recoveredBlock247Value6) - (recoveredBlock247Value7).
    (recoveredBlock247Value2) x: (recoveredBlock247Value8).
    recoveredBlock247Value9 := recoveredBlock247Arg1.
    recoveredBlock247Value10 := (recoveredBlock247Value9) frameGO.
    recoveredBlock247Value11 := (recoveredBlock247Value10) position.
    recoveredBlock247Value12 := recoveredBlock247Arg1.
    recoveredBlock247Value13 := (recoveredBlock247Value12) frameGO.
    recoveredBlock247Value14 := (recoveredBlock247Value13) position.
    recoveredBlock247Value15 := (recoveredBlock247Value14) y.
    recoveredBlock247Value16 := recoveredLocal2.
    recoveredBlock247Value17 := (recoveredBlock247Value15) - (recoveredBlock247Value16).
    recoveredBlock247Value18 := (recoveredBlock247Value11) y: (recoveredBlock247Value17).
    recoveredBlock247Value18
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := [:recoveredBlock292Arg1 | 
    | recoveredBlock292Value0 recoveredBlock292Value1 recoveredBlock292Value2 recoveredBlock292Value3 recoveredBlock292Value4 recoveredBlock292Value5 recoveredBlock292Value6 recoveredBlock292Value7 recoveredBlock292Value8 recoveredBlock292Value9 recoveredBlock292Value10 recoveredBlock292Value11 recoveredBlock292Value12 recoveredBlock292Value13 recoveredBlock292Value14 recoveredBlock292Value15 recoveredBlock292Value16 recoveredBlock292Value17 recoveredBlock292Value18 |
    recoveredBlock292Value0 := recoveredBlock292Arg1.
    recoveredBlock292Value1 := (recoveredBlock292Value0) frameGO.
    recoveredBlock292Value2 := (recoveredBlock292Value1) position.
    recoveredBlock292Value3 := recoveredBlock292Arg1.
    recoveredBlock292Value4 := (recoveredBlock292Value3) frameGO.
    recoveredBlock292Value5 := (recoveredBlock292Value4) position.
    recoveredBlock292Value6 := (recoveredBlock292Value5) x.
    recoveredBlock292Value7 := recoveredLocal5.
    recoveredBlock292Value8 := (recoveredBlock292Value6) + (recoveredBlock292Value7).
    (recoveredBlock292Value2) x: (recoveredBlock292Value8).
    recoveredBlock292Value9 := recoveredBlock292Arg1.
    recoveredBlock292Value10 := (recoveredBlock292Value9) frameGO.
    recoveredBlock292Value11 := (recoveredBlock292Value10) position.
    recoveredBlock292Value12 := recoveredBlock292Arg1.
    recoveredBlock292Value13 := (recoveredBlock292Value12) frameGO.
    recoveredBlock292Value14 := (recoveredBlock292Value13) position.
    recoveredBlock292Value15 := (recoveredBlock292Value14) y.
    recoveredBlock292Value16 := recoveredLocal4.
    recoveredBlock292Value17 := (recoveredBlock292Value15) + (recoveredBlock292Value16).
    recoveredBlock292Value18 := (recoveredBlock292Value11) y: (recoveredBlock292Value17).
    recoveredBlock292Value18
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := [:recoveredBlock336Arg1 | 
    | recoveredBlock336Value0 recoveredBlock336Value1 recoveredBlock336Value2 recoveredBlock336Value3 recoveredBlock336Value4 recoveredBlock336Value5 recoveredBlock336Value6 recoveredBlock336Value7 recoveredBlock336Value8 recoveredBlock336Value9 recoveredBlock336Value10 recoveredBlock336Value11 recoveredBlock336Value12 |
    recoveredBlock336Value0 := recoveredLocal1.
    recoveredBlock336Value1 := Rectangle.
    recoveredBlock336Value2 := recoveredBlock336Arg1.
    recoveredBlock336Value3 := (recoveredBlock336Value2) frameGO.
    recoveredBlock336Value4 := (recoveredBlock336Value3) logicFrame.
    recoveredBlock336Value5 := (recoveredBlock336Value4) origin.
    recoveredBlock336Value6 := recoveredBlock336Arg1.
    recoveredBlock336Value7 := (recoveredBlock336Value6) frameGO.
    recoveredBlock336Value8 := (recoveredBlock336Value7) logicFrame.
    recoveredBlock336Value9 := (recoveredBlock336Value8) corner.
    recoveredBlock336Value10 := (recoveredBlock336Value9) + (1).
    recoveredBlock336Value11 := (recoveredBlock336Value1) origin: (recoveredBlock336Value5) corner: (recoveredBlock336Value10).
    recoveredBlock336Value12 := (recoveredBlock336Value0) add: (recoveredBlock336Value11).
    recoveredBlock336Value12
].
    (recoveredValue15) do: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    (self) redrawRects: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x206530ac; bytecode file offset 0xf4f99c"
!TetrisView methodsFor: 'recovered'!
border: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := 20.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := 40.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := 60.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack5 := 80.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := 100.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := 120.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack5 := 140.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := 160.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack5 := 180.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := 200.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack5 := 220.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack5 := 240.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack5 := 260.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack5 := 280.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack5 := 300.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack5 := 20.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack5 := 40.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack5 := 60.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack5 := 80.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack5 := 100.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack5 := 120.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack5 := 140.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack5 := 160.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack5 := 180.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack5 := 200.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack5 := 220.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack5 := 240.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack5 := 260.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack5 := 280.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack5 := 300.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack4 := 220.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack4 := 20.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack4 := 40.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack4 := 60.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack4 := 80.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack4 := 100.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack4 := 120.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack4 := 140.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack4 := 160.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack4 := 180.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack4 := 200.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack2 := (recoveredStack2) dot: (recoveredStack3).
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack2 := [:block28123754Arg1 | 
    | block28123754Value0 block28123754Value1 block28123754Value2 block28123754Value3 block28123754Value4 block28123754Value5 block28123754Value6 |
    block28123754Value0 := block28123754Arg1.
    block28123754Value1 := (block28123754Value0) frameGO.
    block28123754Value2 := RBAreaStyle.
    block28123754Value3 := CgRGBColor.
    block28123754Value4 := (block28123754Value3) darkGray.
    block28123754Value5 := (block28123754Value2) createWithColor: (block28123754Value4).
    block28123754Value6 := (block28123754Value1) areaStyle: (block28123754Value5).
    block28123754Value6
].
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

