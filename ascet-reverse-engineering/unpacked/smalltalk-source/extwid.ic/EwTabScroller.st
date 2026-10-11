"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20001600; bytecode file offset 0x523c4"
!EwTabScroller methodsFor: 'recovered'!
initialize
    sensitive := true.
    ^self
! !

"extwid.ic method 0x20002348; bytecode file offset 0x53168"
!EwTabScroller methodsFor: 'recovered'!
origin
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) x.
    recoveredValue1 := (self) y.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x200026bc; bytecode file offset 0x534f0"
!EwTabScroller methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := x.
    ^recoveredValue0
! !

"extwid.ic method 0x2000282c; bytecode file offset 0x53678"
!EwTabScroller methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := y.
    ^recoveredValue0
! !

"extwid.ic method 0x2000296c; bytecode file offset 0x53810"
!EwTabScroller methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"extwid.ic method 0x20002b54; bytecode file offset 0x53998"
!EwTabScroller methodsFor: 'recovered'!
height
    | recoveredValue0 |
    recoveredValue0 := height.
    ^recoveredValue0
! !

"extwid.ic method 0x20002cb4; bytecode file offset 0x53ae8"
!EwTabScroller methodsFor: 'recovered'!
sensitive
    | recoveredValue0 |
    recoveredValue0 := sensitive.
    ^recoveredValue0
! !

"extwid.ic method 0x20002d84; bytecode file offset 0x53c68"
!EwTabScroller methodsFor: 'recovered'!
direction
    | recoveredValue0 |
    recoveredValue0 := direction.
    ^recoveredValue0
! !

"extwid.ic method 0x2000488c; bytecode file offset 0x55650"
!EwTabScroller methodsFor: 'recovered'!
right
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := x.
    recoveredValue1 := width.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x200048a8; bytecode file offset 0x5566c"
!EwTabScroller methodsFor: 'recovered'!
bottom
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := y.
    recoveredValue1 := height.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20005fcc; bytecode file offset 0x56d98"
!EwTabScroller methodsFor: 'recovered'!
center
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) origin.
    recoveredValue1 := (self) corner.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (recoveredValue2) // (2).
    ^recoveredValue3
! !

"extwid.ic method 0x20006328; bytecode file offset 0x5710c"
!EwTabScroller methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006398; bytecode file offset 0x57284"
!EwTabScroller methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006580; bytecode file offset 0x57404"
!EwTabScroller methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000679c; bytecode file offset 0x57568"
!EwTabScroller methodsFor: 'recovered'!
height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    height := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200068cc; bytecode file offset 0x576a8"
!EwTabScroller methodsFor: 'recovered'!
sensitive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sensitive := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006984; bytecode file offset 0x577e8"
!EwTabScroller methodsFor: 'recovered'!
direction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    direction := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007e30; bytecode file offset 0x58c08"
!EwTabScroller methodsFor: 'recovered'!
boundingBox
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) origin.
    recoveredValue1 := (self) width.
    recoveredValue2 := (self) height.
    recoveredValue3 := (recoveredValue1) @ (recoveredValue2).
    recoveredValue4 := (recoveredValue0) extent: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x200099e0; bytecode file offset 0x5a7d4"
!EwTabScroller methodsFor: 'recovered'!
corner
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) x.
    recoveredValue1 := (self) width.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (self) y.
    recoveredValue4 := (self) height.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    recoveredValue6 := (recoveredValue2) @ (recoveredValue5).
    ^recoveredValue6
! !

"extwid.ic method 0x2000b448; bytecode file offset 0x5c214"
!EwTabScroller methodsFor: 'recovered'!
containsPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) origin.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x200142dc; bytecode file offset 0x650a0"
!EwTabScroller methodsFor: 'recovered'!
hasLocation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := x.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := y.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := width.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := height.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x200227b0; bytecode file offset 0x735ac"
!EwTabScroller methodsFor: 'recovered'!
fillUsing: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) direction.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := XmARROWUP.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) upArrowPoints.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) direction.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := XmARROWDOWN.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) downArrowPoints.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) direction.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := XmARROWLEFT.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftArrowPoints.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) direction.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := XmARROWRIGHT.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightArrowPoints.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := Convex.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := CoordModeOrigin.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) fillPolygon: (recoveredStack1) points: (recoveredStack2) shape: (recoveredStack3) mode: (recoveredStack4).
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

"extwid.ic method 0x20027984; bytecode file offset 0x78768"
!EwTabScroller methodsFor: 'recovered'!
leftArrowPoints
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := (self) width.
    recoveredValue1 := (recoveredValue0) // (3).
    recoveredLocal7 := recoveredValue1.
    recoveredValue2 := (self) height.
    recoveredValue3 := (recoveredValue2) // (4).
    recoveredLocal6 := recoveredValue3.
    recoveredValue4 := (self) x.
    recoveredValue5 := recoveredLocal7.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    recoveredLocal5 := recoveredValue6.
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := recoveredLocal7.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredLocal4 := recoveredValue9.
    recoveredValue10 := (self) y.
    recoveredValue11 := recoveredLocal6.
    recoveredValue12 := (recoveredValue10) + (recoveredValue11).
    recoveredLocal3 := recoveredValue12.
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := recoveredLocal6.
    recoveredValue15 := (recoveredValue13) + (recoveredValue14).
    recoveredValue16 := (recoveredValue15) + (1).
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := recoveredLocal6.
    recoveredValue19 := (recoveredValue17) + (recoveredValue18).
    recoveredValue20 := (recoveredValue19) + (1).
    recoveredLocal1 := recoveredValue20.
    recoveredValue21 := Array.
    recoveredValue22 := (recoveredValue21) new: (3).
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal4.
    recoveredValue25 := recoveredLocal3.
    recoveredValue26 := (recoveredValue24) @ (recoveredValue25).
    (recoveredValue23) at: (1) put: (recoveredValue26).
    recoveredValue27 := recoveredValue22.
    recoveredValue28 := recoveredLocal5.
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := (recoveredValue28) @ (recoveredValue29).
    (recoveredValue27) at: (2) put: (recoveredValue30).
    recoveredValue31 := recoveredValue22.
    recoveredValue32 := recoveredLocal4.
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := (recoveredValue32) @ (recoveredValue33).
    (recoveredValue31) at: (3) put: (recoveredValue34).
    ^recoveredValue22
! !

"extwid.ic method 0x20027a00; bytecode file offset 0x787e4"
!EwTabScroller methodsFor: 'recovered'!
upArrowPoints
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := (self) width.
    recoveredValue1 := (recoveredValue0) // (4).
    recoveredLocal7 := recoveredValue1.
    recoveredValue2 := (self) height.
    recoveredValue3 := (recoveredValue2) // (3).
    recoveredLocal6 := recoveredValue3.
    recoveredValue4 := (self) x.
    recoveredValue5 := recoveredLocal7.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    recoveredLocal5 := recoveredValue6.
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := recoveredLocal7.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredValue10 := (recoveredValue9) + (1).
    recoveredLocal4 := recoveredValue10.
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := recoveredLocal7.
    recoveredValue13 := (recoveredValue11) + (recoveredValue12).
    recoveredValue14 := (recoveredValue13) + (1).
    recoveredLocal3 := recoveredValue14.
    recoveredValue15 := (self) y.
    recoveredValue16 := recoveredLocal6.
    recoveredValue17 := (recoveredValue15) + (recoveredValue16).
    recoveredLocal2 := recoveredValue17.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := recoveredLocal6.
    recoveredValue20 := (recoveredValue18) + (recoveredValue19).
    recoveredLocal1 := recoveredValue20.
    recoveredValue21 := Array.
    recoveredValue22 := (recoveredValue21) new: (3).
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal5.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := (recoveredValue24) @ (recoveredValue25).
    (recoveredValue23) at: (1) put: (recoveredValue26).
    recoveredValue27 := recoveredValue22.
    recoveredValue28 := recoveredLocal4.
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := (recoveredValue28) @ (recoveredValue29).
    (recoveredValue27) at: (2) put: (recoveredValue30).
    recoveredValue31 := recoveredValue22.
    recoveredValue32 := recoveredLocal3.
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := (recoveredValue32) @ (recoveredValue33).
    (recoveredValue31) at: (3) put: (recoveredValue34).
    ^recoveredValue22
! !

"extwid.ic method 0x20027a7c; bytecode file offset 0x78860"
!EwTabScroller methodsFor: 'recovered'!
downArrowPoints
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := (self) width.
    recoveredValue1 := (recoveredValue0) // (4).
    recoveredLocal7 := recoveredValue1.
    recoveredValue2 := (self) height.
    recoveredValue3 := (recoveredValue2) // (3).
    recoveredLocal6 := recoveredValue3.
    recoveredValue4 := (self) x.
    recoveredValue5 := recoveredLocal7.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    recoveredLocal5 := recoveredValue6.
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := recoveredLocal7.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredValue10 := (recoveredValue9) + (1).
    recoveredLocal4 := recoveredValue10.
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := recoveredLocal7.
    recoveredValue13 := (recoveredValue11) + (recoveredValue12).
    recoveredValue14 := (recoveredValue13) + (1).
    recoveredLocal3 := recoveredValue14.
    recoveredValue15 := (self) y.
    recoveredValue16 := recoveredLocal6.
    recoveredValue17 := (recoveredValue15) + (recoveredValue16).
    recoveredLocal2 := recoveredValue17.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := recoveredLocal6.
    recoveredValue20 := (recoveredValue18) + (recoveredValue19).
    recoveredLocal1 := recoveredValue20.
    recoveredValue21 := Array.
    recoveredValue22 := (recoveredValue21) new: (3).
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal5.
    recoveredValue25 := recoveredLocal2.
    recoveredValue26 := (recoveredValue24) @ (recoveredValue25).
    (recoveredValue23) at: (1) put: (recoveredValue26).
    recoveredValue27 := recoveredValue22.
    recoveredValue28 := recoveredLocal4.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := (recoveredValue28) @ (recoveredValue29).
    (recoveredValue27) at: (2) put: (recoveredValue30).
    recoveredValue31 := recoveredValue22.
    recoveredValue32 := recoveredLocal3.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := (recoveredValue32) @ (recoveredValue33).
    (recoveredValue31) at: (3) put: (recoveredValue34).
    ^recoveredValue22
! !

"extwid.ic method 0x20027e4c; bytecode file offset 0x78c30"
!EwTabScroller methodsFor: 'recovered'!
rightArrowPoints
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := (self) width.
    recoveredValue1 := (recoveredValue0) // (3).
    recoveredLocal7 := recoveredValue1.
    recoveredValue2 := (self) height.
    recoveredValue3 := (recoveredValue2) // (4).
    recoveredLocal6 := recoveredValue3.
    recoveredValue4 := (self) x.
    recoveredValue5 := recoveredLocal7.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    recoveredLocal5 := recoveredValue6.
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := recoveredLocal7.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredLocal4 := recoveredValue9.
    recoveredValue10 := (self) y.
    recoveredValue11 := recoveredLocal6.
    recoveredValue12 := (recoveredValue10) + (recoveredValue11).
    recoveredLocal3 := recoveredValue12.
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := recoveredLocal6.
    recoveredValue15 := (recoveredValue13) + (recoveredValue14).
    recoveredValue16 := (recoveredValue15) + (1).
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := recoveredLocal6.
    recoveredValue19 := (recoveredValue17) + (recoveredValue18).
    recoveredValue20 := (recoveredValue19) + (1).
    recoveredLocal1 := recoveredValue20.
    recoveredValue21 := Array.
    recoveredValue22 := (recoveredValue21) new: (3).
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal5.
    recoveredValue25 := recoveredLocal3.
    recoveredValue26 := (recoveredValue24) @ (recoveredValue25).
    (recoveredValue23) at: (1) put: (recoveredValue26).
    recoveredValue27 := recoveredValue22.
    recoveredValue28 := recoveredLocal4.
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := (recoveredValue28) @ (recoveredValue29).
    (recoveredValue27) at: (2) put: (recoveredValue30).
    recoveredValue31 := recoveredValue22.
    recoveredValue32 := recoveredLocal5.
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := (recoveredValue32) @ (recoveredValue33).
    (recoveredValue31) at: (3) put: (recoveredValue34).
    ^recoveredValue22
! !

"extwid.ic method 0x2002acfc; bytecode file offset 0x7baf4"
!EwTabScroller methodsFor: 'recovered'!
drawUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := recoveredArg1.
    (self) fillUsing: (recoveredValue0).
    recoveredValue1 := (self) x.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := (self) x.
    recoveredValue3 := (self) width.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := (self) y.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := (self) y.
    recoveredValue7 := (self) height.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := Array.
    recoveredValue10 := (recoveredValue9) new: (5).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := recoveredLocal5.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := (recoveredValue13) @ (recoveredValue14).
    (recoveredValue12) at: (1) put: (recoveredValue15).
    recoveredValue16 := recoveredValue11.
    recoveredValue17 := recoveredLocal4.
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := (recoveredValue17) @ (recoveredValue18).
    (recoveredValue16) at: (2) put: (recoveredValue19).
    recoveredValue20 := recoveredValue11.
    recoveredValue21 := recoveredLocal4.
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := (recoveredValue21) @ (recoveredValue22).
    (recoveredValue20) at: (3) put: (recoveredValue23).
    recoveredValue24 := recoveredValue11.
    recoveredValue25 := recoveredLocal5.
    recoveredValue26 := recoveredLocal2.
    recoveredValue27 := (recoveredValue25) @ (recoveredValue26).
    (recoveredValue24) at: (4) put: (recoveredValue27).
    recoveredValue28 := recoveredLocal5.
    recoveredValue29 := recoveredLocal3.
    recoveredValue30 := (recoveredValue28) @ (recoveredValue29).
    (recoveredValue11) at: (5) put: (recoveredValue30).
    recoveredValue31 := recoveredArg1.
    recoveredValue32 := (recoveredValue31) drawable.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := (recoveredValue33) gc.
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := CoordModeOrigin.
    (recoveredValue32) drawLines: (recoveredValue34) points: (recoveredValue35) mode: (recoveredValue36).
    ^self
! !

