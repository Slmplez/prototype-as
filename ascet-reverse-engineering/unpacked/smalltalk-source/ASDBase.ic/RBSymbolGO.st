"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a844; bytecode file offset 0x908be4"
!RBSymbolGO methodsFor: 'recovered'!
isVisible
    | recoveredValue0 |
    recoveredValue0 := (self) visibleFlag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013c2c; bytecode file offset 0x912098"
!RBSymbolGO methodsFor: 'recovered'!
resourceManagerAdapter
    | recoveredValue0 |
    recoveredValue0 := ResourceManagerAdapter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20062f50; bytecode file offset 0x95f8b0"
!RBSymbolGO methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) a.
    recoveredValue1 := (self) b.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006ec54; bytecode file offset 0x96b8a0"
!RBSymbolGO methodsFor: 'recovered'!
a
    | recoveredValue0 |
    recoveredValue0 := a.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f008; bytecode file offset 0x96bc1c"
!RBSymbolGO methodsFor: 'recovered'!
b
    | recoveredValue0 |
    recoveredValue0 := b.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f4d8; bytecode file offset 0x96bf7c"
!RBSymbolGO methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008290c; bytecode file offset 0x97f1c4"
!RBSymbolGO methodsFor: 'recovered'!
forgetBuildingPoint: recoveredArg1
    (self) position: (nil).
    ^nil
! !

"ASDBase.ic method 0x20084c3c; bytecode file offset 0x981ca4"
!RBSymbolGO methodsFor: 'recovered'!
visible: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) visibleFlag: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c5538; bytecode file offset 0x9c1f64"
!RBSymbolGO methodsFor: 'recovered'!
a: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    a := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c57ec; bytecode file offset 0x9c22c8"
!RBSymbolGO methodsFor: 'recovered'!
b: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    b := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5c80; bytecode file offset 0x9c25bc"
!RBSymbolGO methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5f20; bytecode file offset 0x9c2804"
!RBSymbolGO methodsFor: 'recovered'!
visibleFlag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleFlag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eac30; bytecode file offset 0x9e74ec"
!RBSymbolGO methodsFor: 'recovered'!
rememberBuildingPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) position: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f1024; bytecode file offset 0x9ed8d8"
!RBSymbolGO methodsFor: 'recovered'!
visibleFlag
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := visibleFlag.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := visibleFlag.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200fb6ec; bytecode file offset 0x9f7fb0"
!RBSymbolGO methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    (self) a: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    (self) b: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201bf844; bytecode file offset 0xabc10c"
!RBSymbolGO methodsFor: 'recovered'!
logicFrame
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) getPosition.
    recoveredValue1 := (self) a.
    recoveredValue2 := (self) b.
    recoveredValue3 := (recoveredValue1) @ (recoveredValue2).
    recoveredValue4 := (recoveredValue0) - (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := (self) getPosition.
    recoveredValue6 := (self) a.
    recoveredValue7 := (self) b.
    recoveredValue8 := (recoveredValue6) @ (recoveredValue7).
    recoveredValue9 := (recoveredValue5) + (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue10) corner: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x201f55cc; bytecode file offset 0xaf1ea0"
!RBSymbolGO methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) getPosition.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := ('  pos: ') , (recoveredValue5).
    (recoveredValue3) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) cr.
    recoveredValue8 := (recoveredValue1) cr.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202919bc; bytecode file offset 0xb8e2a4"
!RBSymbolGO methodsFor: 'recovered'!
copyForChangeDisplay
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) frame.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := RBRectangleGO.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) center.
    recoveredValue4 := (recoveredValue3) copy.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) extent.
    recoveredValue7 := (recoveredValue6) x.
    recoveredValue8 := (recoveredValue7) // (2).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) extent.
    recoveredValue11 := (recoveredValue10) y.
    recoveredValue12 := (recoveredValue11) // (2).
    recoveredValue13 := (self) lineStyle.
    recoveredValue14 := (recoveredValue13) deepCopy.
    recoveredValue15 := RBAreaStyle.
    recoveredValue16 := (recoveredValue15) createDefault.
    recoveredValue17 := (self) manager.
    recoveredValue18 := (recoveredValue1) createAt: (recoveredValue4) xAxis: (recoveredValue8) yAxis: (recoveredValue12) lineStyle: (recoveredValue14) areaStyle: (recoveredValue16) manager: (recoveredValue17).
    ^recoveredValue18
! !

"ASDBase.ic method 0x203058bc; bytecode file offset 0xc0219c"
!RBSymbolGO methodsFor: 'recovered'!
scale: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) negative.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) x: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) negative.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) a.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) rounded.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) a: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) b.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) b: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

