"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005a00; bytecode file offset 0x902744"
!SGNameGO methodsFor: 'recovered'!
removeGO: recoveredArg1 display: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2007d6cc; bytecode file offset 0x97c330"
!SGNameGO methodsFor: 'recovered'!
viewsEnabled
    ^false
! !

"ASDBase.ic method 0x2009d3dc; bytecode file offset 0x999c94"
!SGNameGO methodsFor: 'recovered'!
height
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := font.
    recoveredValue1 := (recoveredValue0) height.
    recoveredValue2 := (recoveredValue1) // (2).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e6370; bytecode file offset 0x9e2ce4"
!SGNameGO methodsFor: 'recovered'!
buildingFinished
    super buildingFinished.
    (self) visible: (true).
    ^self
! !

"ASDBase.ic method 0x200eb400; bytecode file offset 0x9e7cbc"
!SGNameGO methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := manager.
    recoveredValue1 := (recoveredValue0) getBlock.
    recoveredValue2 := manager.
    recoveredValue3 := (recoveredValue2) getBlock.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) changeToActiveState: (recoveredValue3) display: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20111958; bytecode file offset 0xa0e214"
!SGNameGO methodsFor: 'recovered'!
setPosition: recoveredArg1 alignment: recoveredArg2 visibleFlag: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) position: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) alignment: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    visibleFlag := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20135bb4; bytecode file offset 0xa32470"
!SGNameGO methodsFor: 'recovered'!
initForPortGO: recoveredArg1 lineStyle: recoveredArg2 font: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    super initRBLineStyle: (recoveredValue0) manager: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    font := recoveredValue2.
    visibleFlag := true.
    ^self
! !

"ASDBase.ic method 0x20148bc8; bytecode file offset 0xa45484"
!SGNameGO methodsFor: 'recovered'!
setPosition: recoveredArg1 alignment: recoveredArg2 visibleFlag: recoveredArg3 text: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) position: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) alignment: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    visibleFlag := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    text := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016a1e4; bytecode file offset 0xa66aa0"
!SGNameGO methodsFor: 'recovered'!
initForSGClassGO: recoveredArg1 lineStyle: recoveredArg2 font: recoveredArg3 text: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    super initRBLineStyle: (recoveredValue0) manager: (recoveredValue1).
    recoveredValue2 := recoveredArg4.
    text := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    font := recoveredValue3.
    visibleFlag := true.
    ^self
! !

"ASDBase.ic method 0x204a73b0; bytecode file offset 0xda3cac"
!SGNameGO methodsFor: 'recovered'!
changeText
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := text.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            oldText := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := CwTextPrompter.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'New Text:'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := text.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt: (recoveredStack2) answer: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := oldText.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsNonPrintables.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) nonPrintableMessage.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeText.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) changeStarted.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            visibleFlag := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            text := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := CwTextPrompter.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'New Text:'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := text.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt: (recoveredStack1) answer: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := oldText.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := oldText.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            text := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            visibleFlag := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) displayOneRect: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            text := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := manager.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateText: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            oldText := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            visibleFlag := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

