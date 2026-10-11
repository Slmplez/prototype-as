"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006eb50; bytecode file offset 0x96b41c"
!RBSignalGraphObject methodsFor: 'recovered'!
getChannel
    | recoveredValue0 |
    recoveredValue0 := channel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ee34; bytecode file offset 0x96b8a0"
!RBSignalGraphObject methodsFor: 'recovered'!
frame
    | recoveredValue0 |
    recoveredValue0 := coordRect.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f028; bytecode file offset 0x96bc1c"
!RBSignalGraphObject methodsFor: 'recovered'!
getDisplayType
    | recoveredValue0 |
    recoveredValue0 := displayType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f570; bytecode file offset 0x96bf7c"
!RBSignalGraphObject methodsFor: 'recovered'!
getPoints
    | recoveredValue0 |
    recoveredValue0 := pointColl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075364; bytecode file offset 0x9757c8"
!RBSignalGraphObject methodsFor: 'recovered'!
isSignalGraphObject
    ^true
! !

"ASDBase.ic method 0x2007e284; bytecode file offset 0x97c330"
!RBSignalGraphObject methodsFor: 'recovered'!
isMoveable
    ^false
! !

"ASDBase.ic method 0x2009d34c; bytecode file offset 0x999c04"
!RBSignalGraphObject methodsFor: 'recovered'!
getPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := coordRect.
    recoveredValue1 := (recoveredValue0) corner.
    recoveredValue2 := (recoveredValue1) // (2).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c4ef8; bytecode file offset 0x9c1afc"
!RBSignalGraphObject methodsFor: 'recovered'!
channel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    channel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c55c0; bytecode file offset 0x9c1f64"
!RBSignalGraphObject methodsFor: 'recovered'!
coordRect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    coordRect := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5824; bytecode file offset 0x9c22c8"
!RBSignalGraphObject methodsFor: 'recovered'!
setDisplayType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5b98; bytecode file offset 0x9c25bc"
!RBSignalGraphObject methodsFor: 'recovered'!
pointColl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pointColl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d777c; bytecode file offset 0x9d4038"
!RBSignalGraphObject methodsFor: 'recovered'!
capture: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := manager.
    recoveredValue1 := (recoveredValue0) getController.
    recoveredValue2 := channel.
    (recoveredValue1) activateChannel: (recoveredValue2) redraw: (true).
    ^self
! !

"ASDBase.ic method 0x20123a58; bytecode file offset 0xa20310"
!RBSignalGraphObject methodsFor: 'recovered'!
initFrame: recoveredArg1 channel: recoveredArg2 manager: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    coordRect := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    channel := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    manager := recoveredValue2.
    (self) initialize.
    ^self
! !

"ASDBase.ic method 0x201406e4; bytecode file offset 0xa3cfac"
!RBSignalGraphObject methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := RBLineStyle.
    recoveredValue1 := (recoveredValue0) createDefault.
    lineStyle := recoveredValue1.
    displayType := 'line'.
    ^self
! !

"ASDBase.ic method 0x201b3cd8; bytecode file offset 0xab05a0"
!RBSignalGraphObject methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := coordRect.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := coordRect.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) right.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := pointColl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := super lines: (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a9880; bytecode file offset 0xba6148"
!RBSignalGraphObject methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := pointColl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := pointColl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := displayType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'line'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayLineOn: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := displayType.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'step'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayStepOn: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039d65c; bytecode file offset 0xc99f68"
!RBSignalGraphObject methodsFor: 'recovered'!
displayLineOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := GCFunction.
    recoveredValue4 := GCForeground.
    recoveredValue5 := (recoveredValue3) | (recoveredValue4).
    recoveredValue6 := GCLineWidth.
    recoveredValue7 := (recoveredValue5) | (recoveredValue6).
    recoveredValue8 := GCLineStyle.
    recoveredValue9 := (recoveredValue7) | (recoveredValue8).
    recoveredValue10 := CgGCValues.
    recoveredValue11 := (recoveredValue10) new.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := mixingRule.
    (recoveredValue12) function: (recoveredValue13).
    recoveredValue14 := recoveredValue11.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := lineStyle.
    recoveredValue17 := (recoveredValue16) color.
    recoveredValue18 := (recoveredValue15) pixelNearestToColor: (recoveredValue17).
    (recoveredValue14) foreground: (recoveredValue18).
    recoveredValue19 := recoveredValue11.
    (recoveredValue19) lineWidth: (0).
    recoveredValue20 := recoveredValue11.
    recoveredValue21 := lineStyle.
    recoveredValue22 := (recoveredValue21) type.
    (recoveredValue20) lineStyle: (recoveredValue22).
    (recoveredValue2) changeGC: (recoveredValue9) values: (recoveredValue11).
    recoveredValue23 := (self) getController.
    recoveredValue24 := recoveredArg1.
    (recoveredValue23) setSignalClippingOn: (recoveredValue24).
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := (recoveredValue25) window.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := pointColl.
    recoveredValue29 := CoordModeOrigin.
    (recoveredValue26) drawLines: (recoveredValue27) points: (recoveredValue28) mode: (recoveredValue29).
    recoveredValue30 := (self) getController.
    recoveredValue31 := recoveredArg1.
    (recoveredValue30) resetSignalClippingOn: (recoveredValue31).
    ^self
! !

"ASDBase.ic method 0x204a4fac; bytecode file offset 0xda18d0"
!RBSignalGraphObject methodsFor: 'recovered'!
displayStepOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := GCFunction.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := GCLineWidth.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := GCLineStyle.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := CgGCValues.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := mixingRule.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack4) function: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := lineStyle.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack6 := (recoveredStack6) color.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) pixelNearestToColor: (recoveredStack6).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack4) foreground: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack4) lineWidth: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := lineStyle.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := (recoveredStack5) type.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack4) lineStyle: (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) changeGC: (recoveredStack2) values: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) getController.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) setSignalClippingOn: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := pointColl.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := pointColl.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := pointColl.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := pointColl.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack6 := pointColl.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (-1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack6 := (recoveredStack6) y.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack5 := (recoveredStack5) @ (recoveredStack6).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack6 := pointColl.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := CoordModeOrigin.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) drawLines: (recoveredStack2) points: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 74] ifFalse: [recoveredLocal1 := nil. recoveredPC := 130]] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) getController.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) resetSignalClippingOn: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

