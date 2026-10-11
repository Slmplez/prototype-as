"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001188; bytecode file offset 0x8ffcfc"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
focusBackgroundColor
    ^self
! !

"ASDBase.ic method 0x200018d8; bytecode file offset 0x8ffcfc"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
focusForegroundColor
    ^self
! !

"ASDBase.ic method 0x20044aec; bytecode file offset 0x9451f8"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
tbXZView
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tbXZView').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044f3c; bytecode file offset 0x9451f8"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
tbThreeLines
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tb3Lines').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045f9c; bytecode file offset 0x9451f8"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
colorLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('colorLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200461ec; bytecode file offset 0x9451f8"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
amountOfLinesLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('amountOfLinesLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004686c; bytecode file offset 0x9451f8"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
tbAllLines
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tbAllLines').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004771c; bytecode file offset 0x9451f8"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
tbYZView
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tbYZView').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047fbc; bytecode file offset 0x9451f8"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
tbOneLine
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tbOneLine').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004e954; bytecode file offset 0x94d048"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
initializeAfterOpen
    (self) setDefaultIcon.
    ^self
! !

"ASDBase.ic method 0x2008bdf8; bytecode file offset 0x9886b8"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
xAxisIsHex
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) paneController.
    recoveredValue2 := (recoveredValue1) logXAxis.
    recoveredValue3 := (recoveredValue2) hexView.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f8afc; bytecode file offset 0x9f53bc"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
setYZView
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tbXZView.
    (recoveredValue0) set: (false).
    recoveredValue1 := (self) tbYZView.
    (recoveredValue1) set: (true).
    ^self
! !

"ASDBase.ic method 0x200f8eb0; bytecode file offset 0x9f5770"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
setXZView
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tbXZView.
    (recoveredValue0) set: (true).
    recoveredValue1 := (self) tbYZView.
    (recoveredValue1) set: (false).
    ^self
! !

"ASDBase.ic method 0x2014ffc0; bytecode file offset 0xa4c884"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
setThreeLines
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tbOneLine.
    (recoveredValue0) set: (false).
    recoveredValue1 := (self) tbThreeLines.
    (recoveredValue1) set: (true).
    recoveredValue2 := (self) tbAllLines.
    (recoveredValue2) set: (false).
    ^self
! !

"ASDBase.ic method 0x201502c8; bytecode file offset 0xa4cb8c"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
setOneLine
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tbOneLine.
    (recoveredValue0) set: (true).
    recoveredValue1 := (self) tbThreeLines.
    (recoveredValue1) set: (false).
    recoveredValue2 := (self) tbAllLines.
    (recoveredValue2) set: (false).
    ^self
! !

"ASDBase.ic method 0x201ddacc; bytecode file offset 0xada390"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
setAxisGrid
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'gridButton'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202049ec; bytecode file offset 0xb012ec"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
tbOneLineValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) tbThreeLines.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) tbAllLines.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) tbOneLine.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20204a08; bytecode file offset 0xb012ec"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
tb3LinesValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) tbOneLine.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) tbAllLines.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) tbThreeLines.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20204a24; bytecode file offset 0xb012ec"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
tbAllLinesValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) tbThreeLines.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) tbOneLine.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) tbAllLines.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ee3dc; bytecode file offset 0xbeacd0"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    super installActionKeys.
    recoveredValue0 := (self) widgetKeyActions.
    recoveredValue1 := (self) shell.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := HKOneLine.
    (recoveredValue3) at: (recoveredValue4) put: ('setOneLine').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := HKThreeLines.
    (recoveredValue5) at: (recoveredValue6) put: ('setThreeLines').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := HKXZView.
    (recoveredValue7) at: (recoveredValue8) put: ('setXZView').
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := HKYZView.
    (recoveredValue10) at: (recoveredValue11) put: ('setYZView').
    recoveredValue12 := HKAxisGrid.
    (recoveredValue9) at: (recoveredValue12) put: ('setAxisGrid').
    ^self
! !

"ASDBase.ic method 0x20333114; bytecode file offset 0xc2f9f4"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            result := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) tbOneLine.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'lines'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) tbThreeLines.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'lines'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) tbAllLines.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'lines'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'all'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            super ok.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20618ab4; bytecode file offset 0xf15498"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) setTitle.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) noResize: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'xScaleLabel'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := SCTimeAxis.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'yScaleLabel'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := SCValueAxis.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'fromLabel'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := LLFrom.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'toLabel'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := LLTo.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'gridButton'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := LLAxisGrid.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := SCSingleWAxis.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := SCCancel.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := SCOk.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := SCHelp.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) tbOneLine.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := SCOneLine.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) tbThreeLines.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := SCThreeLines.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) tbAllLines.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := SCAllLines.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) amountOfLinesLabel.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := SCVisibleLines.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexView.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := 'xExtentField'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 167] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 'xExtentField'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) xExt.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMin.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 'wMinField'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) wMin.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := 'wMaxField'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) wMax.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := 'wMinField'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := 'wMaxField'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := 'gridButton'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasGrid.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) tbOneLine.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayOneLine.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) tbThreeLines.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayThreeLines.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) tbAllLines.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayAllLines.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) canChangeAxisGrid.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := 'gridButton'.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 318] ifFalse: [recoveredPC := 290].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSingleWAxis.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) canChangeSingleWAxis.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 318] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := 'singleWAxisButton'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := 'xScaleLabel'.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := SCXAxis.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) xAxisIsHex.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := 'xMinField'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := (recoveredStack2) xMin.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := 'xMaxField'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := (recoveredStack2) xMax.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := 'fromXLabel'.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := LLFrom2.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := 'toXLabel'.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := LLTo2.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack0 := (recoveredStack0) isXZView.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 412] ifFalse: [recoveredPC := 426].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := 'xScaleLabel'.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := SCXAxisName.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredPC := 436.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := 'xScaleLabel'.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := SCYAxisName.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepLabel.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := SCIncDecStep.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStep.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 480] ifFalse: [recoveredPC := 454].
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := 'Change to hex!!'.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredPC := 513.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterMethod.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStepText.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack2 := (recoveredStack2) incDecStep.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromValue: (recoveredStack2).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206c1a20; bytecode file offset 0xfbe53c"
!RBMultiLineGDUSetupDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28133450Arg1 | 
    | block28133450Value0 block28133450Value1 block28133450Value2 block28133450Value3 block28133450Value4 block28133450Value5 |
    block28133450Value0 := block28133450Arg1.
    block28133450Value1 := block28133450Value0.
    block28133450Value2 := MWMINPUTSYSTEMMODAL.
    (block28133450Value1) mwmInputMode: (block28133450Value2).
    block28133450Value3 := block28133450Value0.
    (block28133450Value3) title: ('Darstellungs-Setup').
    block28133450Value4 := block28133450Value0.
    (block28133450Value4) height: (230).
    block28133450Value5 := (block28133450Value0) width: (350).
    block28133450Value5
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal25.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'wMinField'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:block28133474Arg1 | 
    | block28133474Value0 block28133474Value1 block28133474Value2 block28133474Value3 block28133474Value4 |
    block28133474Value0 := block28133474Arg1.
    block28133474Value1 := block28133474Value0.
    (block28133474Value1) y: (30).
    block28133474Value2 := block28133474Value0.
    (block28133474Value2) x: (70).
    block28133474Value3 := block28133474Value0.
    (block28133474Value3) height: (25).
    block28133474Value4 := (block28133474Value0) width: (60).
    block28133474Value4
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'wMinField'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := [:block28133498Arg1 | 
    | block28133498Value0 block28133498Value1 block28133498Value2 block28133498Value3 block28133498Value4 block28133498Value5 block28133498Value6 |
    block28133498Value0 := block28133498Arg1.
    block28133498Value1 := block28133498Value0.
    (block28133498Value1) x: (295).
    block28133498Value2 := block28133498Value0.
    (block28133498Value2) showAsDefault: (1).
    block28133498Value3 := block28133498Value0.
    (block28133498Value3) labelString: ('Ok').
    block28133498Value4 := block28133498Value0.
    (block28133498Value4) y: (10).
    block28133498Value5 := block28133498Value0.
    (block28133498Value5) height: (30).
    block28133498Value6 := (block28133498Value0) width: (110).
    block28133498Value6
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := [:block281334bcArg1 | 
    | block281334bcValue0 block281334bcValue1 block281334bcValue2 block281334bcValue3 block281334bcValue4 block281334bcValue5 |
    block281334bcValue0 := block281334bcArg1.
    block281334bcValue1 := block281334bcValue0.
    (block281334bcValue1) x: (295).
    block281334bcValue2 := block281334bcValue0.
    (block281334bcValue2) labelString: ('Abbruch').
    block281334bcValue3 := block281334bcValue0.
    (block281334bcValue3) y: (45).
    block281334bcValue4 := block281334bcValue0.
    (block281334bcValue4) height: (30).
    block281334bcValue5 := (block281334bcValue0) width: (110).
    block281334bcValue5
].
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := [:block281334e0Arg1 | 
    | block281334e0Value0 block281334e0Value1 block281334e0Value2 block281334e0Value3 block281334e0Value4 block281334e0Value5 |
    block281334e0Value0 := block281334e0Arg1.
    block281334e0Value1 := block281334e0Value0.
    (block281334e0Value1) x: (295).
    block281334e0Value2 := block281334e0Value0.
    (block281334e0Value2) labelString: ('Hilfe').
    block281334e0Value3 := block281334e0Value0.
    (block281334e0Value3) y: (80).
    block281334e0Value4 := block281334e0Value0.
    (block281334e0Value4) height: (30).
    block281334e0Value5 := (block281334e0Value0) width: (110).
    block281334e0Value5
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'gridButton'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := [:block28133504Arg1 | 
    | block28133504Value0 block28133504Value1 block28133504Value2 block28133504Value3 block28133504Value4 block28133504Value5 block28133504Value6 block28133504Value7 block28133504Value8 |
    block28133504Value0 := block28133504Arg1.
    block28133504Value1 := block28133504Value0.
    (block28133504Value1) marginRight: (10).
    block28133504Value2 := block28133504Value0.
    (block28133504Value2) marginWidth: (0).
    block28133504Value3 := block28133504Value0.
    (block28133504Value3) marginHeight: (0).
    block28133504Value4 := block28133504Value0.
    (block28133504Value4) y: (285).
    block28133504Value5 := block28133504Value0.
    (block28133504Value5) marginBottom: (10).
    block28133504Value6 := block28133504Value0.
    (block28133504Value6) x: (15).
    block28133504Value7 := block28133504Value0.
    (block28133504Value7) labelString: ('Achsengitter').
    block28133504Value8 := (block28133504Value0) height: (20).
    block28133504Value8
].
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := 'gridButton'.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := 'xMinField'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := [:block28133528Arg1 | 
    | block28133528Value0 block28133528Value1 block28133528Value2 block28133528Value3 block28133528Value4 |
    block28133528Value0 := block28133528Arg1.
    block28133528Value1 := block28133528Value0.
    (block28133528Value1) y: (96).
    block28133528Value2 := block28133528Value0.
    (block28133528Value2) x: (44).
    block28133528Value3 := block28133528Value0.
    (block28133528Value3) height: (25).
    block28133528Value4 := (block28133528Value0) width: (60).
    block28133528Value4
].
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := 'xMinField'.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack3 := [:block2813354cArg1 | 
    | block2813354cValue0 block2813354cValue1 block2813354cValue2 block2813354cValue3 |
    block2813354cValue0 := block2813354cArg1.
    block2813354cValue1 := block2813354cValue0.
    (block2813354cValue1) y: (160).
    block2813354cValue2 := block2813354cValue0.
    (block2813354cValue2) height: (4).
    block2813354cValue3 := (block2813354cValue0) width: (285).
    block2813354cValue3
].
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack3 := [:block28133570Arg1 | 
    | block28133570Value0 block28133570Value1 block28133570Value2 block28133570Value3 block28133570Value4 block28133570Value5 block28133570Value6 block28133570Value7 |
    block28133570Value0 := block28133570Arg1.
    block28133570Value1 := block28133570Value0.
    (block28133570Value1) x: (285).
    block28133570Value2 := block28133570Value0.
    block28133570Value3 := XmSINGLELINE.
    (block28133570Value2) separatorType: (block28133570Value3).
    block28133570Value4 := block28133570Value0.
    block28133570Value5 := XmVERTICAL.
    (block28133570Value4) orientation: (block28133570Value5).
    block28133570Value6 := block28133570Value0.
    (block28133570Value6) height: (319).
    block28133570Value7 := (block28133570Value0) width: (3).
    block28133570Value7
].
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack2 := 'yScaleLabel'.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack3 := [:recoveredBlock570Arg1 | 
    | recoveredBlock570Value0 recoveredBlock570Value1 recoveredBlock570Value2 recoveredBlock570Value3 recoveredBlock570Value4 recoveredBlock570Value5 recoveredBlock570Value6 recoveredBlock570Value7 recoveredBlock570Value8 recoveredBlock570Value9 recoveredBlock570Value10 |
    recoveredBlock570Value0 := recoveredBlock570Arg1.
    recoveredBlock570Value1 := recoveredBlock570Value0.
    (recoveredBlock570Value1) x: (10).
    recoveredBlock570Value2 := recoveredBlock570Value0.
    recoveredBlock570Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock570Value2) alignment: (recoveredBlock570Value3).
    recoveredBlock570Value4 := recoveredBlock570Value0.
    (recoveredBlock570Value4) labelString: ('y-Skalierung').
    recoveredBlock570Value5 := recoveredBlock570Value0.
    (recoveredBlock570Value5) marginWidth: (0).
    recoveredBlock570Value6 := recoveredBlock570Value0.
    (recoveredBlock570Value6) marginHeight: (0).
    recoveredBlock570Value7 := recoveredBlock570Value0.
    (recoveredBlock570Value7) y: (10).
    recoveredBlock570Value8 := recoveredBlock570Value0.
    (recoveredBlock570Value8) height: (20).
    recoveredBlock570Value9 := (self) defaultLabelBlue.
    recoveredBlock570Value10 := (recoveredBlock570Value0) foregroundColor: (recoveredBlock570Value9).
    recoveredBlock570Value10
].
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack2 := 'yScaleLabel'.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := 'fromLabel'.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack3 := [:block28133594Arg1 | 
    | block28133594Value0 block28133594Value1 block28133594Value2 block28133594Value3 block28133594Value4 block28133594Value5 block28133594Value6 block28133594Value7 block28133594Value8 block28133594Value9 |
    block28133594Value0 := block28133594Arg1.
    block28133594Value1 := block28133594Value0.
    (block28133594Value1) x: (20).
    block28133594Value2 := block28133594Value0.
    block28133594Value3 := XmALIGNMENTBEGINNING.
    (block28133594Value2) alignment: (block28133594Value3).
    block28133594Value4 := block28133594Value0.
    (block28133594Value4) labelString: ('von').
    block28133594Value5 := block28133594Value0.
    (block28133594Value5) marginWidth: (0).
    block28133594Value6 := block28133594Value0.
    (block28133594Value6) marginHeight: (0).
    block28133594Value7 := block28133594Value0.
    (block28133594Value7) y: (35).
    block28133594Value8 := block28133594Value0.
    (block28133594Value8) height: (20).
    block28133594Value9 := (block28133594Value0) marginBottom: (10).
    block28133594Value9
].
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack2 := 'fromLabel'.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack2 := 'toLabel'.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack3 := [:block281335b8Arg1 | 
    | block281335b8Value0 block281335b8Value1 block281335b8Value2 block281335b8Value3 block281335b8Value4 block281335b8Value5 block281335b8Value6 block281335b8Value7 block281335b8Value8 block281335b8Value9 |
    block281335b8Value0 := block281335b8Arg1.
    block281335b8Value1 := block281335b8Value0.
    (block281335b8Value1) x: (97).
    block281335b8Value2 := block281335b8Value0.
    block281335b8Value3 := XmALIGNMENTBEGINNING.
    (block281335b8Value2) alignment: (block281335b8Value3).
    block281335b8Value4 := block281335b8Value0.
    (block281335b8Value4) labelString: ('bis').
    block281335b8Value5 := block281335b8Value0.
    (block281335b8Value5) marginWidth: (0).
    block281335b8Value6 := block281335b8Value0.
    (block281335b8Value6) marginHeight: (0).
    block281335b8Value7 := block281335b8Value0.
    (block281335b8Value7) y: (25).
    block281335b8Value8 := block281335b8Value0.
    (block281335b8Value8) height: (20).
    block281335b8Value9 := (block281335b8Value0) marginBottom: (10).
    block281335b8Value9
].
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := 'toLabel'.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack2 := 'xScaleLabel'.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack3 := [:recoveredBlock816Arg1 | 
    | recoveredBlock816Value0 recoveredBlock816Value1 recoveredBlock816Value2 recoveredBlock816Value3 recoveredBlock816Value4 recoveredBlock816Value5 recoveredBlock816Value6 recoveredBlock816Value7 recoveredBlock816Value8 recoveredBlock816Value9 recoveredBlock816Value10 recoveredBlock816Value11 |
    recoveredBlock816Value0 := recoveredBlock816Arg1.
    recoveredBlock816Value1 := recoveredBlock816Value0.
    (recoveredBlock816Value1) x: (12).
    recoveredBlock816Value2 := recoveredBlock816Value0.
    recoveredBlock816Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock816Value2) alignment: (recoveredBlock816Value3).
    recoveredBlock816Value4 := recoveredBlock816Value0.
    (recoveredBlock816Value4) labelString: ('x-Achse').
    recoveredBlock816Value5 := recoveredBlock816Value0.
    (recoveredBlock816Value5) marginWidth: (0).
    recoveredBlock816Value6 := recoveredBlock816Value0.
    (recoveredBlock816Value6) marginHeight: (0).
    recoveredBlock816Value7 := recoveredBlock816Value0.
    (recoveredBlock816Value7) y: (70).
    recoveredBlock816Value8 := recoveredBlock816Value0.
    (recoveredBlock816Value8) height: (20).
    recoveredBlock816Value9 := recoveredBlock816Value0.
    (recoveredBlock816Value9) width: (68).
    recoveredBlock816Value10 := (self) defaultLabelBlue.
    recoveredBlock816Value11 := (recoveredBlock816Value0) foregroundColor: (recoveredBlock816Value10).
    recoveredBlock816Value11
].
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack2 := 'xScaleLabel'.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack2 := 'fromXLabel'.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack3 := [:block281335dcArg1 | 
    | block281335dcValue0 block281335dcValue1 block281335dcValue2 block281335dcValue3 block281335dcValue4 block281335dcValue5 block281335dcValue6 block281335dcValue7 |
    block281335dcValue0 := block281335dcArg1.
    block281335dcValue1 := block281335dcValue0.
    (block281335dcValue1) x: (10).
    block281335dcValue2 := block281335dcValue0.
    block281335dcValue3 := XmALIGNMENTBEGINNING.
    (block281335dcValue2) alignment: (block281335dcValue3).
    block281335dcValue4 := block281335dcValue0.
    (block281335dcValue4) labelString: ('von').
    block281335dcValue5 := block281335dcValue0.
    (block281335dcValue5) marginWidth: (0).
    block281335dcValue6 := block281335dcValue0.
    (block281335dcValue6) marginHeight: (0).
    block281335dcValue7 := (block281335dcValue0) y: (96).
    block281335dcValue7
].
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack2 := 'fromXLabel'.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack2 := 'xMaxField'.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack3 := [:block28133600Arg1 | 
    | block28133600Value0 block28133600Value1 block28133600Value2 block28133600Value3 block28133600Value4 |
    block28133600Value0 := block28133600Arg1.
    block28133600Value1 := block28133600Value0.
    (block28133600Value1) y: (75).
    block28133600Value2 := block28133600Value0.
    (block28133600Value2) x: (120).
    block28133600Value3 := block28133600Value0.
    (block28133600Value3) height: (25).
    block28133600Value4 := (block28133600Value0) width: (60).
    block28133600Value4
].
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            recoveredStack2 := 'xMaxField'.
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredStack2 := 'amountOfLinesLabel'.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack3 := [:recoveredBlock1038Arg1 | 
    | recoveredBlock1038Value0 recoveredBlock1038Value1 recoveredBlock1038Value2 recoveredBlock1038Value3 recoveredBlock1038Value4 recoveredBlock1038Value5 recoveredBlock1038Value6 recoveredBlock1038Value7 recoveredBlock1038Value8 recoveredBlock1038Value9 |
    recoveredBlock1038Value0 := recoveredBlock1038Arg1.
    recoveredBlock1038Value1 := recoveredBlock1038Value0.
    (recoveredBlock1038Value1) x: (3).
    recoveredBlock1038Value2 := recoveredBlock1038Value0.
    recoveredBlock1038Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1038Value2) alignment: (recoveredBlock1038Value3).
    recoveredBlock1038Value4 := recoveredBlock1038Value0.
    (recoveredBlock1038Value4) labelString: ('Anzahl der Kennlinien').
    recoveredBlock1038Value5 := recoveredBlock1038Value0.
    (recoveredBlock1038Value5) marginWidth: (0).
    recoveredBlock1038Value6 := recoveredBlock1038Value0.
    (recoveredBlock1038Value6) marginHeight: (0).
    recoveredBlock1038Value7 := recoveredBlock1038Value0.
    (recoveredBlock1038Value7) y: (219).
    recoveredBlock1038Value8 := (self) defaultLabelBlue.
    recoveredBlock1038Value9 := (recoveredBlock1038Value0) foregroundColor: (recoveredBlock1038Value8).
    recoveredBlock1038Value9
].
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1095.
        ].
        recoveredStep = 1095 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            recoveredStack2 := 'amountOfLinesLabel'.
            recoveredPC := 1106.
        ].
        recoveredStep = 1106 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1111.
        ].
        recoveredStep = 1111 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            recoveredStack2 := 'tbOneLine'.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack3 := [:block28133624Arg1 | 
    | block28133624Value0 block28133624Value1 block28133624Value2 block28133624Value3 block28133624Value4 block28133624Value5 block28133624Value6 block28133624Value7 block28133624Value8 |
    block28133624Value0 := block28133624Arg1.
    block28133624Value1 := block28133624Value0.
    (block28133624Value1) marginRight: (10).
    block28133624Value2 := block28133624Value0.
    (block28133624Value2) marginWidth: (0).
    block28133624Value3 := block28133624Value0.
    (block28133624Value3) marginHeight: (0).
    block28133624Value4 := block28133624Value0.
    (block28133624Value4) y: (237).
    block28133624Value5 := block28133624Value0.
    (block28133624Value5) marginBottom: (10).
    block28133624Value6 := block28133624Value0.
    (block28133624Value6) x: (7).
    block28133624Value7 := block28133624Value0.
    (block28133624Value7) labelString: ('1').
    block28133624Value8 := (block28133624Value0) height: (20).
    block28133624Value8
].
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack2 := 'tbOneLine'.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 1185.
        ].
        recoveredStep = 1185 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1187.
        ].
        recoveredStep = 1187 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack2 := 'tb3Lines'.
            recoveredPC := 1194.
        ].
        recoveredStep = 1194 ifTrue: [
            recoveredStack3 := [:block28133648Arg1 | 
    | block28133648Value0 block28133648Value1 block28133648Value2 block28133648Value3 block28133648Value4 block28133648Value5 block28133648Value6 block28133648Value7 block28133648Value8 |
    block28133648Value0 := block28133648Arg1.
    block28133648Value1 := block28133648Value0.
    (block28133648Value1) marginRight: (10).
    block28133648Value2 := block28133648Value0.
    (block28133648Value2) marginWidth: (0).
    block28133648Value3 := block28133648Value0.
    (block28133648Value3) marginHeight: (0).
    block28133648Value4 := block28133648Value0.
    (block28133648Value4) y: (237).
    block28133648Value5 := block28133648Value0.
    (block28133648Value5) marginBottom: (10).
    block28133648Value6 := block28133648Value0.
    (block28133648Value6) x: (87).
    block28133648Value7 := block28133648Value0.
    (block28133648Value7) labelString: ('3').
    block28133648Value8 := (block28133648Value0) height: (20).
    block28133648Value8
].
            recoveredPC := 1198.
        ].
        recoveredStep = 1198 ifTrue: [
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1257.
        ].
        recoveredStep = 1257 ifTrue: [
            recoveredStack2 := 'tb3Lines'.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1268.
        ].
        recoveredStep = 1268 ifTrue: [
            recoveredStack2 := 'tbAllLines'.
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            recoveredStack3 := [:block2813366cArg1 | 
    | block2813366cValue0 block2813366cValue1 block2813366cValue2 block2813366cValue3 block2813366cValue4 block2813366cValue5 block2813366cValue6 block2813366cValue7 block2813366cValue8 |
    block2813366cValue0 := block2813366cArg1.
    block2813366cValue1 := block2813366cValue0.
    (block2813366cValue1) marginRight: (10).
    block2813366cValue2 := block2813366cValue0.
    (block2813366cValue2) marginWidth: (0).
    block2813366cValue3 := block2813366cValue0.
    (block2813366cValue3) marginHeight: (0).
    block2813366cValue4 := block2813366cValue0.
    (block2813366cValue4) y: (236).
    block2813366cValue5 := block2813366cValue0.
    (block2813366cValue5) marginBottom: (10).
    block2813366cValue6 := block2813366cValue0.
    (block2813366cValue6) x: (169).
    block2813366cValue7 := block2813366cValue0.
    (block2813366cValue7) labelString: ('alle').
    block2813366cValue8 := (block2813366cValue0) height: (20).
    block2813366cValue8
].
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1327.
        ].
        recoveredStep = 1327 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1329.
        ].
        recoveredStep = 1329 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1335.
        ].
        recoveredStep = 1335 ifTrue: [
            recoveredStack2 := 'tbAllLines'.
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1341.
        ].
        recoveredStep = 1341 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1343.
        ].
        recoveredStep = 1343 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1346.
        ].
        recoveredStep = 1346 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 1350.
        ].
        recoveredStep = 1350 ifTrue: [
            recoveredStack3 := [:block28133690Arg1 | 
    | block28133690Value0 block28133690Value1 block28133690Value2 block28133690Value3 block28133690Value4 |
    block28133690Value0 := block28133690Arg1.
    block28133690Value1 := block28133690Value0.
    (block28133690Value1) y: (25).
    block28133690Value2 := block28133690Value0.
    (block28133690Value2) x: (120).
    block28133690Value3 := block28133690Value0.
    (block28133690Value3) height: (25).
    block28133690Value4 := (block28133690Value0) width: (60).
    block28133690Value4
].
            recoveredPC := 1354.
        ].
        recoveredStep = 1354 ifTrue: [
            recoveredPC := 1380.
        ].
        recoveredStep = 1380 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1382.
        ].
        recoveredStep = 1382 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1384.
        ].
        recoveredStep = 1384 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1397.
        ].
        recoveredStep = 1397 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1402.
        ].
        recoveredStep = 1402 ifTrue: [
            recoveredStack2 := 'toXLabel'.
            recoveredPC := 1406.
        ].
        recoveredStep = 1406 ifTrue: [
            recoveredStack3 := [:block281336b4Arg1 | 
    | block281336b4Value0 block281336b4Value1 block281336b4Value2 block281336b4Value3 block281336b4Value4 block281336b4Value5 block281336b4Value6 block281336b4Value7 block281336b4Value8 block281336b4Value9 |
    block281336b4Value0 := block281336b4Arg1.
    block281336b4Value1 := block281336b4Value0.
    (block281336b4Value1) x: (197).
    block281336b4Value2 := block281336b4Value0.
    block281336b4Value3 := XmALIGNMENTBEGINNING.
    (block281336b4Value2) alignment: (block281336b4Value3).
    block281336b4Value4 := block281336b4Value0.
    (block281336b4Value4) labelString: ('bis').
    block281336b4Value5 := block281336b4Value0.
    (block281336b4Value5) marginWidth: (0).
    block281336b4Value6 := block281336b4Value0.
    (block281336b4Value6) marginHeight: (0).
    block281336b4Value7 := block281336b4Value0.
    (block281336b4Value7) y: (93).
    block281336b4Value8 := block281336b4Value0.
    (block281336b4Value8) height: (20).
    block281336b4Value9 := (block281336b4Value0) marginBottom: (10).
    block281336b4Value9
].
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1467.
        ].
        recoveredStep = 1467 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1469.
        ].
        recoveredStep = 1469 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1475.
        ].
        recoveredStep = 1475 ifTrue: [
            recoveredStack2 := 'toXLabel'.
            recoveredPC := 1478.
        ].
        recoveredStep = 1478 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1483.
        ].
        recoveredStep = 1483 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1486.
        ].
        recoveredStep = 1486 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            recoveredStack3 := [:block281336d8Arg1 | 
    | block281336d8Value0 block281336d8Value1 block281336d8Value2 |
    block281336d8Value0 := block281336d8Arg1.
    block281336d8Value1 := block281336d8Value0.
    (block281336d8Value1) value: ('Change to hex!! ').
    block281336d8Value2 := (block281336d8Value0) height: (25).
    block281336d8Value2
].
            recoveredPC := 1494.
        ].
        recoveredStep = 1494 ifTrue: [
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1516.
        ].
        recoveredStep = 1516 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1518.
        ].
        recoveredStep = 1518 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1521.
        ].
        recoveredStep = 1521 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1524.
        ].
        recoveredStep = 1524 ifTrue: [
            recoveredStack2 := 'incDecStepText'.
            recoveredPC := 1528.
        ].
        recoveredStep = 1528 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1531.
        ].
        recoveredStep = 1531 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1536.
        ].
        recoveredStep = 1536 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            recoveredStack3 := [:recoveredBlock1540Arg1 | 
    | recoveredBlock1540Value0 recoveredBlock1540Value1 recoveredBlock1540Value2 recoveredBlock1540Value3 recoveredBlock1540Value4 recoveredBlock1540Value5 recoveredBlock1540Value6 recoveredBlock1540Value7 recoveredBlock1540Value8 |
    recoveredBlock1540Value0 := recoveredBlock1540Arg1.
    recoveredBlock1540Value1 := recoveredBlock1540Value0.
    (recoveredBlock1540Value1) x: (145).
    recoveredBlock1540Value2 := recoveredBlock1540Value0.
    recoveredBlock1540Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1540Value2) alignment: (recoveredBlock1540Value3).
    recoveredBlock1540Value4 := recoveredBlock1540Value0.
    (recoveredBlock1540Value4) labelString: ('Column width').
    recoveredBlock1540Value5 := recoveredBlock1540Value0.
    (recoveredBlock1540Value5) y: (134).
    recoveredBlock1540Value6 := recoveredBlock1540Value0.
    (recoveredBlock1540Value6) height: (20).
    recoveredBlock1540Value7 := (self) defaultLabelBlue.
    recoveredBlock1540Value8 := (recoveredBlock1540Value0) foregroundColor: (recoveredBlock1540Value7).
    recoveredBlock1540Value8
].
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1595.
        ].
        recoveredStep = 1595 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1597.
        ].
        recoveredStep = 1597 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1600.
        ].
        recoveredStep = 1600 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1603.
        ].
        recoveredStep = 1603 ifTrue: [
            recoveredStack2 := 'incDecStepLabel'.
            recoveredPC := 1606.
        ].
        recoveredStep = 1606 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1609.
        ].
        recoveredStep = 1609 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1611.
        ].
        recoveredStep = 1611 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 1614.
        ].
        recoveredStep = 1614 ifTrue: [
            recoveredStack2 := [:recoveredBlock1614Arg1 | 
    | recoveredBlock1614Value0 recoveredBlock1614Value1 recoveredBlock1614Value2 |
    recoveredBlock1614Value0 := recoveredBlock1614Arg1.
    recoveredBlock1614Value1 := recoveredLocal23.
    recoveredBlock1614Value2 := (recoveredBlock1614Value0) workWindow: (recoveredBlock1614Value1).
    recoveredBlock1614Value2
].
            recoveredPC := 1630.
        ].
        recoveredStep = 1630 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1635.
        ].
        recoveredStep = 1635 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1638.
        ].
        recoveredStep = 1638 ifTrue: [
            recoveredStack2 := [:recoveredBlock1638Arg1 | 
    | recoveredBlock1638Value0 recoveredBlock1638Value1 recoveredBlock1638Value2 recoveredBlock1638Value3 recoveredBlock1638Value4 recoveredBlock1638Value5 recoveredBlock1638Value6 recoveredBlock1638Value7 recoveredBlock1638Value8 recoveredBlock1638Value9 |
    recoveredBlock1638Value0 := recoveredBlock1638Arg1.
    recoveredBlock1638Value1 := recoveredBlock1638Value0.
    recoveredBlock1638Value2 := XmATTACHWIDGET.
    (recoveredBlock1638Value1) topAttachment: (recoveredBlock1638Value2).
    recoveredBlock1638Value3 := recoveredBlock1638Value0.
    recoveredBlock1638Value4 := recoveredLocal14.
    (recoveredBlock1638Value3) topWidget: (recoveredBlock1638Value4).
    recoveredBlock1638Value5 := recoveredBlock1638Value0.
    recoveredBlock1638Value6 := XmATTACHWIDGET.
    (recoveredBlock1638Value5) leftAttachment: (recoveredBlock1638Value6).
    recoveredBlock1638Value7 := recoveredBlock1638Value0.
    recoveredBlock1638Value8 := recoveredLocal13.
    (recoveredBlock1638Value7) leftWidget: (recoveredBlock1638Value8).
    recoveredBlock1638Value9 := (recoveredBlock1638Value0) leftOffset: (3).
    recoveredBlock1638Value9
].
            recoveredPC := 1686.
        ].
        recoveredStep = 1686 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1691.
        ].
        recoveredStep = 1691 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1694.
        ].
        recoveredStep = 1694 ifTrue: [
            recoveredStack2 := [:recoveredBlock1694Arg1 | 
    | recoveredBlock1694Value0 recoveredBlock1694Value1 recoveredBlock1694Value2 recoveredBlock1694Value3 recoveredBlock1694Value4 recoveredBlock1694Value5 |
    recoveredBlock1694Value0 := recoveredBlock1694Arg1.
    recoveredBlock1694Value1 := recoveredBlock1694Value0.
    recoveredBlock1694Value2 := XmATTACHWIDGET.
    (recoveredBlock1694Value1) leftAttachment: (recoveredBlock1694Value2).
    recoveredBlock1694Value3 := recoveredBlock1694Value0.
    recoveredBlock1694Value4 := recoveredLocal15.
    (recoveredBlock1694Value3) leftWidget: (recoveredBlock1694Value4).
    recoveredBlock1694Value5 := (recoveredBlock1694Value0) leftOffset: (5).
    recoveredBlock1694Value5
].
            recoveredPC := 1726.
        ].
        recoveredStep = 1726 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1731.
        ].
        recoveredStep = 1731 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1734.
        ].
        recoveredStep = 1734 ifTrue: [
            recoveredStack2 := [:recoveredBlock1734Arg1 | 
    | recoveredBlock1734Value0 recoveredBlock1734Value1 recoveredBlock1734Value2 recoveredBlock1734Value3 recoveredBlock1734Value4 recoveredBlock1734Value5 |
    recoveredBlock1734Value0 := recoveredBlock1734Arg1.
    recoveredBlock1734Value1 := recoveredBlock1734Value0.
    recoveredBlock1734Value2 := XmATTACHWIDGET.
    (recoveredBlock1734Value1) leftAttachment: (recoveredBlock1734Value2).
    recoveredBlock1734Value3 := recoveredBlock1734Value0.
    recoveredBlock1734Value4 := recoveredLocal15.
    (recoveredBlock1734Value3) leftWidget: (recoveredBlock1734Value4).
    recoveredBlock1734Value5 := (recoveredBlock1734Value0) leftOffset: (5).
    recoveredBlock1734Value5
].
            recoveredPC := 1766.
        ].
        recoveredStep = 1766 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1771.
        ].
        recoveredStep = 1771 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1774.
        ].
        recoveredStep = 1774 ifTrue: [
            recoveredStack2 := [:recoveredBlock1774Arg1 | 
    | recoveredBlock1774Value0 recoveredBlock1774Value1 recoveredBlock1774Value2 recoveredBlock1774Value3 recoveredBlock1774Value4 recoveredBlock1774Value5 |
    recoveredBlock1774Value0 := recoveredBlock1774Arg1.
    recoveredBlock1774Value1 := recoveredBlock1774Value0.
    recoveredBlock1774Value2 := XmATTACHWIDGET.
    (recoveredBlock1774Value1) leftAttachment: (recoveredBlock1774Value2).
    recoveredBlock1774Value3 := recoveredBlock1774Value0.
    recoveredBlock1774Value4 := recoveredLocal15.
    (recoveredBlock1774Value3) leftWidget: (recoveredBlock1774Value4).
    recoveredBlock1774Value5 := (recoveredBlock1774Value0) leftOffset: (5).
    recoveredBlock1774Value5
].
            recoveredPC := 1806.
        ].
        recoveredStep = 1806 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1811.
        ].
        recoveredStep = 1811 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1814.
        ].
        recoveredStep = 1814 ifTrue: [
            recoveredStack2 := [:recoveredBlock1814Arg1 | 
    | recoveredBlock1814Value0 recoveredBlock1814Value1 recoveredBlock1814Value2 recoveredBlock1814Value3 recoveredBlock1814Value4 recoveredBlock1814Value5 recoveredBlock1814Value6 recoveredBlock1814Value7 recoveredBlock1814Value8 |
    recoveredBlock1814Value0 := recoveredBlock1814Arg1.
    recoveredBlock1814Value1 := recoveredBlock1814Value0.
    recoveredBlock1814Value2 := XmATTACHWIDGET.
    (recoveredBlock1814Value1) topAttachment: (recoveredBlock1814Value2).
    recoveredBlock1814Value3 := recoveredBlock1814Value0.
    recoveredBlock1814Value4 := recoveredLocal2.
    (recoveredBlock1814Value3) topWidget: (recoveredBlock1814Value4).
    recoveredBlock1814Value5 := recoveredBlock1814Value0.
    (recoveredBlock1814Value5) topOffset: (5).
    recoveredBlock1814Value6 := recoveredBlock1814Value0.
    recoveredBlock1814Value7 := XmATTACHFORM.
    (recoveredBlock1814Value6) leftAttachment: (recoveredBlock1814Value7).
    recoveredBlock1814Value8 := (recoveredBlock1814Value0) leftOffset: (5).
    recoveredBlock1814Value8
].
            recoveredPC := 1860.
        ].
        recoveredStep = 1860 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1865.
        ].
        recoveredStep = 1865 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1868.
        ].
        recoveredStep = 1868 ifTrue: [
            recoveredStack2 := [:recoveredBlock1868Arg1 | 
    | recoveredBlock1868Value0 recoveredBlock1868Value1 recoveredBlock1868Value2 recoveredBlock1868Value3 recoveredBlock1868Value4 recoveredBlock1868Value5 recoveredBlock1868Value6 recoveredBlock1868Value7 recoveredBlock1868Value8 recoveredBlock1868Value9 |
    recoveredBlock1868Value0 := recoveredBlock1868Arg1.
    recoveredBlock1868Value1 := recoveredBlock1868Value0.
    recoveredBlock1868Value2 := XmATTACHWIDGET.
    (recoveredBlock1868Value1) topAttachment: (recoveredBlock1868Value2).
    recoveredBlock1868Value3 := recoveredBlock1868Value0.
    recoveredBlock1868Value4 := recoveredLocal11.
    (recoveredBlock1868Value3) topWidget: (recoveredBlock1868Value4).
    recoveredBlock1868Value5 := recoveredBlock1868Value0.
    recoveredBlock1868Value6 := XmATTACHWIDGET.
    (recoveredBlock1868Value5) leftAttachment: (recoveredBlock1868Value6).
    recoveredBlock1868Value7 := recoveredBlock1868Value0.
    recoveredBlock1868Value8 := recoveredLocal10.
    (recoveredBlock1868Value7) leftWidget: (recoveredBlock1868Value8).
    recoveredBlock1868Value9 := (recoveredBlock1868Value0) leftOffset: (3).
    recoveredBlock1868Value9
].
            recoveredPC := 1916.
        ].
        recoveredStep = 1916 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1921.
        ].
        recoveredStep = 1921 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1924.
        ].
        recoveredStep = 1924 ifTrue: [
            recoveredStack2 := [:recoveredBlock1924Arg1 | 
    | recoveredBlock1924Value0 recoveredBlock1924Value1 recoveredBlock1924Value2 recoveredBlock1924Value3 recoveredBlock1924Value4 recoveredBlock1924Value5 recoveredBlock1924Value6 recoveredBlock1924Value7 recoveredBlock1924Value8 recoveredBlock1924Value9 recoveredBlock1924Value10 recoveredBlock1924Value11 |
    recoveredBlock1924Value0 := recoveredBlock1924Arg1.
    recoveredBlock1924Value1 := recoveredBlock1924Value0.
    recoveredBlock1924Value2 := XmATTACHWIDGET.
    (recoveredBlock1924Value1) topAttachment: (recoveredBlock1924Value2).
    recoveredBlock1924Value3 := recoveredBlock1924Value0.
    recoveredBlock1924Value4 := recoveredLocal17.
    (recoveredBlock1924Value3) topWidget: (recoveredBlock1924Value4).
    recoveredBlock1924Value5 := recoveredBlock1924Value0.
    (recoveredBlock1924Value5) topOffset: (5).
    recoveredBlock1924Value6 := recoveredBlock1924Value0.
    recoveredBlock1924Value7 := XmATTACHFORM.
    (recoveredBlock1924Value6) leftAttachment: (recoveredBlock1924Value7).
    recoveredBlock1924Value8 := recoveredBlock1924Value0.
    recoveredBlock1924Value9 := XmATTACHWIDGET.
    (recoveredBlock1924Value8) rightAttachment: (recoveredBlock1924Value9).
    recoveredBlock1924Value10 := recoveredLocal15.
    recoveredBlock1924Value11 := (recoveredBlock1924Value0) rightWidget: (recoveredBlock1924Value10).
    recoveredBlock1924Value11
].
            recoveredPC := 1980.
        ].
        recoveredStep = 1980 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1985.
        ].
        recoveredStep = 1985 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1988.
        ].
        recoveredStep = 1988 ifTrue: [
            recoveredStack2 := [:block281336fcArg1 | 
    | block281336fcValue0 block281336fcValue1 block281336fcValue2 block281336fcValue3 block281336fcValue4 block281336fcValue5 block281336fcValue6 block281336fcValue7 |
    block281336fcValue0 := block281336fcArg1.
    block281336fcValue1 := block281336fcValue0.
    block281336fcValue2 := XmATTACHFORM.
    (block281336fcValue1) bottomAttachment: (block281336fcValue2).
    block281336fcValue3 := block281336fcValue0.
    block281336fcValue4 := XmATTACHFORM.
    (block281336fcValue3) topAttachment: (block281336fcValue4).
    block281336fcValue5 := block281336fcValue0.
    block281336fcValue6 := XmATTACHOPPOSITEFORM.
    (block281336fcValue5) leftAttachment: (block281336fcValue6).
    block281336fcValue7 := (block281336fcValue0) leftOffset: (-123).
    block281336fcValue7
].
            recoveredPC := 1992.
        ].
        recoveredStep = 1992 ifTrue: [
            recoveredPC := 2032.
        ].
        recoveredStep = 2032 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2037.
        ].
        recoveredStep = 2037 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2040.
        ].
        recoveredStep = 2040 ifTrue: [
            recoveredStack2 := [:block28133720Arg1 | 
    | block28133720Value0 block28133720Value1 block28133720Value2 block28133720Value3 block28133720Value4 block28133720Value5 block28133720Value6 |
    block28133720Value0 := block28133720Arg1.
    block28133720Value1 := block28133720Value0.
    block28133720Value2 := XmATTACHFORM.
    (block28133720Value1) topAttachment: (block28133720Value2).
    block28133720Value3 := block28133720Value0.
    (block28133720Value3) topOffset: (5).
    block28133720Value4 := block28133720Value0.
    block28133720Value5 := XmATTACHFORM.
    (block28133720Value4) leftAttachment: (block28133720Value5).
    block28133720Value6 := (block28133720Value0) leftOffset: (5).
    block28133720Value6
].
            recoveredPC := 2044.
        ].
        recoveredStep = 2044 ifTrue: [
            recoveredPC := 2080.
        ].
        recoveredStep = 2080 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2085.
        ].
        recoveredStep = 2085 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2088.
        ].
        recoveredStep = 2088 ifTrue: [
            recoveredStack2 := [:recoveredBlock2088Arg1 | 
    | recoveredBlock2088Value0 recoveredBlock2088Value1 recoveredBlock2088Value2 recoveredBlock2088Value3 recoveredBlock2088Value4 recoveredBlock2088Value5 recoveredBlock2088Value6 recoveredBlock2088Value7 |
    recoveredBlock2088Value0 := recoveredBlock2088Arg1.
    recoveredBlock2088Value1 := recoveredBlock2088Value0.
    recoveredBlock2088Value2 := XmATTACHWIDGET.
    (recoveredBlock2088Value1) topAttachment: (recoveredBlock2088Value2).
    recoveredBlock2088Value3 := recoveredBlock2088Value0.
    recoveredBlock2088Value4 := recoveredLocal14.
    (recoveredBlock2088Value3) topWidget: (recoveredBlock2088Value4).
    recoveredBlock2088Value5 := recoveredBlock2088Value0.
    recoveredBlock2088Value6 := XmATTACHFORM.
    (recoveredBlock2088Value5) leftAttachment: (recoveredBlock2088Value6).
    recoveredBlock2088Value7 := (recoveredBlock2088Value0) leftOffset: (5).
    recoveredBlock2088Value7
].
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack2 := [:recoveredBlock2136Arg1 | 
    | recoveredBlock2136Value0 recoveredBlock2136Value1 recoveredBlock2136Value2 recoveredBlock2136Value3 recoveredBlock2136Value4 recoveredBlock2136Value5 recoveredBlock2136Value6 recoveredBlock2136Value7 recoveredBlock2136Value8 recoveredBlock2136Value9 |
    recoveredBlock2136Value0 := recoveredBlock2136Arg1.
    recoveredBlock2136Value1 := recoveredBlock2136Value0.
    recoveredBlock2136Value2 := XmATTACHWIDGET.
    (recoveredBlock2136Value1) topAttachment: (recoveredBlock2136Value2).
    recoveredBlock2136Value3 := recoveredBlock2136Value0.
    recoveredBlock2136Value4 := recoveredLocal14.
    (recoveredBlock2136Value3) topWidget: (recoveredBlock2136Value4).
    recoveredBlock2136Value5 := recoveredBlock2136Value0.
    recoveredBlock2136Value6 := XmATTACHWIDGET.
    (recoveredBlock2136Value5) leftAttachment: (recoveredBlock2136Value6).
    recoveredBlock2136Value7 := recoveredBlock2136Value0.
    recoveredBlock2136Value8 := recoveredLocal22.
    (recoveredBlock2136Value7) leftWidget: (recoveredBlock2136Value8).
    recoveredBlock2136Value9 := (recoveredBlock2136Value0) leftOffset: (5).
    recoveredBlock2136Value9
].
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2189.
        ].
        recoveredStep = 2189 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            recoveredStack2 := [:recoveredBlock2192Arg1 | 
    | recoveredBlock2192Value0 recoveredBlock2192Value1 recoveredBlock2192Value2 recoveredBlock2192Value3 recoveredBlock2192Value4 recoveredBlock2192Value5 recoveredBlock2192Value6 recoveredBlock2192Value7 recoveredBlock2192Value8 |
    recoveredBlock2192Value0 := recoveredBlock2192Arg1.
    recoveredBlock2192Value1 := recoveredBlock2192Value0.
    recoveredBlock2192Value2 := XmATTACHWIDGET.
    (recoveredBlock2192Value1) topAttachment: (recoveredBlock2192Value2).
    recoveredBlock2192Value3 := recoveredBlock2192Value0.
    recoveredBlock2192Value4 := recoveredLocal22.
    (recoveredBlock2192Value3) topWidget: (recoveredBlock2192Value4).
    recoveredBlock2192Value5 := recoveredBlock2192Value0.
    (recoveredBlock2192Value5) topOffset: (5).
    recoveredBlock2192Value6 := recoveredBlock2192Value0.
    recoveredBlock2192Value7 := XmATTACHFORM.
    (recoveredBlock2192Value6) leftAttachment: (recoveredBlock2192Value7).
    recoveredBlock2192Value8 := (recoveredBlock2192Value0) leftOffset: (5).
    recoveredBlock2192Value8
].
            recoveredPC := 2238.
        ].
        recoveredStep = 2238 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2243.
        ].
        recoveredStep = 2243 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2246.
        ].
        recoveredStep = 2246 ifTrue: [
            recoveredStack2 := [:recoveredBlock2246Arg1 | 
    | recoveredBlock2246Value0 recoveredBlock2246Value1 recoveredBlock2246Value2 recoveredBlock2246Value3 recoveredBlock2246Value4 recoveredBlock2246Value5 recoveredBlock2246Value6 recoveredBlock2246Value7 |
    recoveredBlock2246Value0 := recoveredBlock2246Arg1.
    recoveredBlock2246Value1 := recoveredBlock2246Value0.
    recoveredBlock2246Value2 := XmATTACHWIDGET.
    (recoveredBlock2246Value1) topAttachment: (recoveredBlock2246Value2).
    recoveredBlock2246Value3 := recoveredBlock2246Value0.
    recoveredBlock2246Value4 := recoveredLocal11.
    (recoveredBlock2246Value3) topWidget: (recoveredBlock2246Value4).
    recoveredBlock2246Value5 := recoveredBlock2246Value0.
    recoveredBlock2246Value6 := XmATTACHFORM.
    (recoveredBlock2246Value5) leftAttachment: (recoveredBlock2246Value6).
    recoveredBlock2246Value7 := (recoveredBlock2246Value0) leftOffset: (5).
    recoveredBlock2246Value7
].
            recoveredPC := 2286.
        ].
        recoveredStep = 2286 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2291.
        ].
        recoveredStep = 2291 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2294.
        ].
        recoveredStep = 2294 ifTrue: [
            recoveredStack2 := [:recoveredBlock2294Arg1 | 
    | recoveredBlock2294Value0 recoveredBlock2294Value1 recoveredBlock2294Value2 recoveredBlock2294Value3 recoveredBlock2294Value4 recoveredBlock2294Value5 recoveredBlock2294Value6 recoveredBlock2294Value7 recoveredBlock2294Value8 |
    recoveredBlock2294Value0 := recoveredBlock2294Arg1.
    recoveredBlock2294Value1 := recoveredBlock2294Value0.
    recoveredBlock2294Value2 := XmATTACHWIDGET.
    (recoveredBlock2294Value1) topAttachment: (recoveredBlock2294Value2).
    recoveredBlock2294Value3 := recoveredBlock2294Value0.
    recoveredBlock2294Value4 := recoveredLocal11.
    (recoveredBlock2294Value3) topWidget: (recoveredBlock2294Value4).
    recoveredBlock2294Value5 := recoveredBlock2294Value0.
    recoveredBlock2294Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2294Value5) leftAttachment: (recoveredBlock2294Value6).
    recoveredBlock2294Value7 := recoveredLocal4.
    recoveredBlock2294Value8 := (recoveredBlock2294Value0) leftWidget: (recoveredBlock2294Value7).
    recoveredBlock2294Value8
].
            recoveredPC := 2336.
        ].
        recoveredStep = 2336 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2341.
        ].
        recoveredStep = 2341 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2344.
        ].
        recoveredStep = 2344 ifTrue: [
            recoveredStack2 := [:recoveredBlock2344Arg1 | 
    | recoveredBlock2344Value0 recoveredBlock2344Value1 recoveredBlock2344Value2 recoveredBlock2344Value3 recoveredBlock2344Value4 recoveredBlock2344Value5 recoveredBlock2344Value6 recoveredBlock2344Value7 recoveredBlock2344Value8 |
    recoveredBlock2344Value0 := recoveredBlock2344Arg1.
    recoveredBlock2344Value1 := recoveredBlock2344Value0.
    recoveredBlock2344Value2 := XmATTACHWIDGET.
    (recoveredBlock2344Value1) topAttachment: (recoveredBlock2344Value2).
    recoveredBlock2344Value3 := recoveredBlock2344Value0.
    recoveredBlock2344Value4 := recoveredLocal16.
    (recoveredBlock2344Value3) topWidget: (recoveredBlock2344Value4).
    recoveredBlock2344Value5 := recoveredBlock2344Value0.
    (recoveredBlock2344Value5) topOffset: (5).
    recoveredBlock2344Value6 := recoveredBlock2344Value0.
    recoveredBlock2344Value7 := XmATTACHFORM.
    (recoveredBlock2344Value6) leftAttachment: (recoveredBlock2344Value7).
    recoveredBlock2344Value8 := (recoveredBlock2344Value0) leftOffset: (5).
    recoveredBlock2344Value8
].
            recoveredPC := 2390.
        ].
        recoveredStep = 2390 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2395.
        ].
        recoveredStep = 2395 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2398.
        ].
        recoveredStep = 2398 ifTrue: [
            recoveredStack2 := [:recoveredBlock2398Arg1 | 
    | recoveredBlock2398Value0 recoveredBlock2398Value1 recoveredBlock2398Value2 recoveredBlock2398Value3 recoveredBlock2398Value4 recoveredBlock2398Value5 recoveredBlock2398Value6 recoveredBlock2398Value7 |
    recoveredBlock2398Value0 := recoveredBlock2398Arg1.
    recoveredBlock2398Value1 := recoveredBlock2398Value0.
    recoveredBlock2398Value2 := XmATTACHWIDGET.
    (recoveredBlock2398Value1) topAttachment: (recoveredBlock2398Value2).
    recoveredBlock2398Value3 := recoveredBlock2398Value0.
    recoveredBlock2398Value4 := recoveredLocal8.
    (recoveredBlock2398Value3) topWidget: (recoveredBlock2398Value4).
    recoveredBlock2398Value5 := recoveredBlock2398Value0.
    recoveredBlock2398Value6 := XmATTACHFORM.
    (recoveredBlock2398Value5) leftAttachment: (recoveredBlock2398Value6).
    recoveredBlock2398Value7 := (recoveredBlock2398Value0) leftOffset: (5).
    recoveredBlock2398Value7
].
            recoveredPC := 2438.
        ].
        recoveredStep = 2438 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2443.
        ].
        recoveredStep = 2443 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2446.
        ].
        recoveredStep = 2446 ifTrue: [
            recoveredStack2 := [:recoveredBlock2446Arg1 | 
    | recoveredBlock2446Value0 recoveredBlock2446Value1 recoveredBlock2446Value2 recoveredBlock2446Value3 recoveredBlock2446Value4 recoveredBlock2446Value5 recoveredBlock2446Value6 recoveredBlock2446Value7 recoveredBlock2446Value8 recoveredBlock2446Value9 |
    recoveredBlock2446Value0 := recoveredBlock2446Arg1.
    recoveredBlock2446Value1 := recoveredBlock2446Value0.
    recoveredBlock2446Value2 := XmATTACHWIDGET.
    (recoveredBlock2446Value1) topAttachment: (recoveredBlock2446Value2).
    recoveredBlock2446Value3 := recoveredBlock2446Value0.
    recoveredBlock2446Value4 := recoveredLocal8.
    (recoveredBlock2446Value3) topWidget: (recoveredBlock2446Value4).
    recoveredBlock2446Value5 := recoveredBlock2446Value0.
    recoveredBlock2446Value6 := XmATTACHWIDGET.
    (recoveredBlock2446Value5) leftAttachment: (recoveredBlock2446Value6).
    recoveredBlock2446Value7 := recoveredBlock2446Value0.
    recoveredBlock2446Value8 := recoveredLocal7.
    (recoveredBlock2446Value7) leftWidget: (recoveredBlock2446Value8).
    recoveredBlock2446Value9 := (recoveredBlock2446Value0) leftOffset: (5).
    recoveredBlock2446Value9
].
            recoveredPC := 2494.
        ].
        recoveredStep = 2494 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2499.
        ].
        recoveredStep = 2499 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2502.
        ].
        recoveredStep = 2502 ifTrue: [
            recoveredStack2 := [:recoveredBlock2502Arg1 | 
    | recoveredBlock2502Value0 recoveredBlock2502Value1 recoveredBlock2502Value2 recoveredBlock2502Value3 recoveredBlock2502Value4 recoveredBlock2502Value5 recoveredBlock2502Value6 recoveredBlock2502Value7 recoveredBlock2502Value8 recoveredBlock2502Value9 |
    recoveredBlock2502Value0 := recoveredBlock2502Arg1.
    recoveredBlock2502Value1 := recoveredBlock2502Value0.
    recoveredBlock2502Value2 := XmATTACHWIDGET.
    (recoveredBlock2502Value1) topAttachment: (recoveredBlock2502Value2).
    recoveredBlock2502Value3 := recoveredBlock2502Value0.
    recoveredBlock2502Value4 := recoveredLocal8.
    (recoveredBlock2502Value3) topWidget: (recoveredBlock2502Value4).
    recoveredBlock2502Value5 := recoveredBlock2502Value0.
    recoveredBlock2502Value6 := XmATTACHWIDGET.
    (recoveredBlock2502Value5) leftAttachment: (recoveredBlock2502Value6).
    recoveredBlock2502Value7 := recoveredBlock2502Value0.
    recoveredBlock2502Value8 := recoveredLocal6.
    (recoveredBlock2502Value7) leftWidget: (recoveredBlock2502Value8).
    recoveredBlock2502Value9 := (recoveredBlock2502Value0) leftOffset: (5).
    recoveredBlock2502Value9
].
            recoveredPC := 2550.
        ].
        recoveredStep = 2550 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2555.
        ].
        recoveredStep = 2555 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2558.
        ].
        recoveredStep = 2558 ifTrue: [
            recoveredStack2 := [:recoveredBlock2558Arg1 | 
    | recoveredBlock2558Value0 recoveredBlock2558Value1 recoveredBlock2558Value2 recoveredBlock2558Value3 recoveredBlock2558Value4 recoveredBlock2558Value5 recoveredBlock2558Value6 recoveredBlock2558Value7 recoveredBlock2558Value8 recoveredBlock2558Value9 |
    recoveredBlock2558Value0 := recoveredBlock2558Arg1.
    recoveredBlock2558Value1 := recoveredBlock2558Value0.
    recoveredBlock2558Value2 := XmATTACHWIDGET.
    (recoveredBlock2558Value1) topAttachment: (recoveredBlock2558Value2).
    recoveredBlock2558Value3 := recoveredBlock2558Value0.
    recoveredBlock2558Value4 := recoveredLocal14.
    (recoveredBlock2558Value3) topWidget: (recoveredBlock2558Value4).
    recoveredBlock2558Value5 := recoveredBlock2558Value0.
    recoveredBlock2558Value6 := XmATTACHWIDGET.
    (recoveredBlock2558Value5) leftAttachment: (recoveredBlock2558Value6).
    recoveredBlock2558Value7 := recoveredBlock2558Value0.
    recoveredBlock2558Value8 := recoveredLocal12.
    (recoveredBlock2558Value7) leftWidget: (recoveredBlock2558Value8).
    recoveredBlock2558Value9 := (recoveredBlock2558Value0) leftOffset: (3).
    recoveredBlock2558Value9
].
            recoveredPC := 2606.
        ].
        recoveredStep = 2606 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2611.
        ].
        recoveredStep = 2611 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2614.
        ].
        recoveredStep = 2614 ifTrue: [
            recoveredStack2 := [:recoveredBlock2614Arg1 | 
    | recoveredBlock2614Value0 recoveredBlock2614Value1 recoveredBlock2614Value2 recoveredBlock2614Value3 recoveredBlock2614Value4 recoveredBlock2614Value5 recoveredBlock2614Value6 recoveredBlock2614Value7 recoveredBlock2614Value8 recoveredBlock2614Value9 |
    recoveredBlock2614Value0 := recoveredBlock2614Arg1.
    recoveredBlock2614Value1 := recoveredBlock2614Value0.
    recoveredBlock2614Value2 := XmATTACHWIDGET.
    (recoveredBlock2614Value1) topAttachment: (recoveredBlock2614Value2).
    recoveredBlock2614Value3 := recoveredBlock2614Value0.
    recoveredBlock2614Value4 := recoveredLocal11.
    (recoveredBlock2614Value3) topWidget: (recoveredBlock2614Value4).
    recoveredBlock2614Value5 := recoveredBlock2614Value0.
    recoveredBlock2614Value6 := XmATTACHWIDGET.
    (recoveredBlock2614Value5) leftAttachment: (recoveredBlock2614Value6).
    recoveredBlock2614Value7 := recoveredBlock2614Value0.
    recoveredBlock2614Value8 := recoveredLocal17.
    (recoveredBlock2614Value7) leftWidget: (recoveredBlock2614Value8).
    recoveredBlock2614Value9 := (recoveredBlock2614Value0) leftOffset: (5).
    recoveredBlock2614Value9
].
            recoveredPC := 2662.
        ].
        recoveredStep = 2662 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2667.
        ].
        recoveredStep = 2667 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2670.
        ].
        recoveredStep = 2670 ifTrue: [
            recoveredStack2 := [:recoveredBlock2670Arg1 | 
    | recoveredBlock2670Value0 recoveredBlock2670Value1 recoveredBlock2670Value2 recoveredBlock2670Value3 recoveredBlock2670Value4 recoveredBlock2670Value5 recoveredBlock2670Value6 recoveredBlock2670Value7 recoveredBlock2670Value8 recoveredBlock2670Value9 recoveredBlock2670Value10 recoveredBlock2670Value11 recoveredBlock2670Value12 |
    recoveredBlock2670Value0 := recoveredBlock2670Arg1.
    recoveredBlock2670Value1 := recoveredBlock2670Value0.
    recoveredBlock2670Value2 := XmATTACHWIDGET.
    (recoveredBlock2670Value1) topAttachment: (recoveredBlock2670Value2).
    recoveredBlock2670Value3 := recoveredBlock2670Value0.
    recoveredBlock2670Value4 := recoveredLocal1.
    (recoveredBlock2670Value3) topWidget: (recoveredBlock2670Value4).
    recoveredBlock2670Value5 := recoveredBlock2670Value0.
    recoveredBlock2670Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2670Value5) rightAttachment: (recoveredBlock2670Value6).
    recoveredBlock2670Value7 := recoveredBlock2670Value0.
    recoveredBlock2670Value8 := recoveredLocal5.
    (recoveredBlock2670Value7) rightWidget: (recoveredBlock2670Value8).
    recoveredBlock2670Value9 := recoveredBlock2670Value0.
    recoveredBlock2670Value10 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2670Value9) leftAttachment: (recoveredBlock2670Value10).
    recoveredBlock2670Value11 := recoveredLocal1.
    recoveredBlock2670Value12 := (recoveredBlock2670Value0) leftWidget: (recoveredBlock2670Value11).
    recoveredBlock2670Value12
].
            recoveredPC := 2728.
        ].
        recoveredStep = 2728 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2733.
        ].
        recoveredStep = 2733 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2736.
        ].
        recoveredStep = 2736 ifTrue: [
            recoveredStack2 := [:recoveredBlock2736Arg1 | 
    | recoveredBlock2736Value0 recoveredBlock2736Value1 recoveredBlock2736Value2 recoveredBlock2736Value3 recoveredBlock2736Value4 recoveredBlock2736Value5 recoveredBlock2736Value6 |
    recoveredBlock2736Value0 := recoveredBlock2736Arg1.
    recoveredBlock2736Value1 := recoveredBlock2736Value0.
    recoveredBlock2736Value2 := XmATTACHWIDGET.
    (recoveredBlock2736Value1) topAttachment: (recoveredBlock2736Value2).
    recoveredBlock2736Value3 := recoveredBlock2736Value0.
    recoveredBlock2736Value4 := recoveredLocal7.
    (recoveredBlock2736Value3) topWidget: (recoveredBlock2736Value4).
    recoveredBlock2736Value5 := XmATTACHFORM.
    recoveredBlock2736Value6 := (recoveredBlock2736Value0) leftAttachment: (recoveredBlock2736Value5).
    recoveredBlock2736Value6
].
            recoveredPC := 2770.
        ].
        recoveredStep = 2770 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2775.
        ].
        recoveredStep = 2775 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 2778.
        ].
        recoveredStep = 2778 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 2782.
        ].
        recoveredStep = 2782 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2783.
        ].
        recoveredStep = 2783 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 2786.
        ].
        recoveredStep = 2786 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2787.
        ].
        recoveredStep = 2787 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2791.
        ].
        recoveredStep = 2791 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 2794.
        ].
        recoveredStep = 2794 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2798.
        ].
        recoveredStep = 2798 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2799.
        ].
        recoveredStep = 2799 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2802.
        ].
        recoveredStep = 2802 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2803.
        ].
        recoveredStep = 2803 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2807.
        ].
        recoveredStep = 2807 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 2810.
        ].
        recoveredStep = 2810 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2814.
        ].
        recoveredStep = 2814 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2815.
        ].
        recoveredStep = 2815 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2818.
        ].
        recoveredStep = 2818 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2819.
        ].
        recoveredStep = 2819 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2823.
        ].
        recoveredStep = 2823 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2826.
        ].
        recoveredStep = 2826 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2830.
        ].
        recoveredStep = 2830 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2831.
        ].
        recoveredStep = 2831 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 2834.
        ].
        recoveredStep = 2834 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2835.
        ].
        recoveredStep = 2835 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2839.
        ].
        recoveredStep = 2839 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2842.
        ].
        recoveredStep = 2842 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2846.
        ].
        recoveredStep = 2846 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2847.
        ].
        recoveredStep = 2847 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 2850.
        ].
        recoveredStep = 2850 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2851.
        ].
        recoveredStep = 2851 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2855.
        ].
        recoveredStep = 2855 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 2858.
        ].
        recoveredStep = 2858 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2862.
        ].
        recoveredStep = 2862 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2863.
        ].
        recoveredStep = 2863 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2866.
        ].
        recoveredStep = 2866 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2867.
        ].
        recoveredStep = 2867 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2871.
        ].
        recoveredStep = 2871 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 2874.
        ].
        recoveredStep = 2874 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2878.
        ].
        recoveredStep = 2878 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2879.
        ].
        recoveredStep = 2879 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2882.
        ].
        recoveredStep = 2882 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2883.
        ].
        recoveredStep = 2883 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2887.
        ].
        recoveredStep = 2887 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2890.
        ].
        recoveredStep = 2890 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2894.
        ].
        recoveredStep = 2894 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2895.
        ].
        recoveredStep = 2895 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2898.
        ].
        recoveredStep = 2898 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2899.
        ].
        recoveredStep = 2899 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2903.
        ].
        recoveredStep = 2903 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2906.
        ].
        recoveredStep = 2906 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2910.
        ].
        recoveredStep = 2910 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2911.
        ].
        recoveredStep = 2911 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2914.
        ].
        recoveredStep = 2914 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2915.
        ].
        recoveredStep = 2915 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2919.
        ].
        recoveredStep = 2919 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2922.
        ].
        recoveredStep = 2922 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2926.
        ].
        recoveredStep = 2926 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2927.
        ].
        recoveredStep = 2927 ifTrue: [
            recoveredStack4 := 'tbOneLineValue:clientData:callData:'.
            recoveredPC := 2930.
        ].
        recoveredStep = 2930 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2931.
        ].
        recoveredStep = 2931 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2935.
        ].
        recoveredStep = 2935 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2938.
        ].
        recoveredStep = 2938 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2942.
        ].
        recoveredStep = 2942 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2943.
        ].
        recoveredStep = 2943 ifTrue: [
            recoveredStack4 := 'tb3LinesValue:clientData:callData:'.
            recoveredPC := 2946.
        ].
        recoveredStep = 2946 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2947.
        ].
        recoveredStep = 2947 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2951.
        ].
        recoveredStep = 2951 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2954.
        ].
        recoveredStep = 2954 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2958.
        ].
        recoveredStep = 2958 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2959.
        ].
        recoveredStep = 2959 ifTrue: [
            recoveredStack4 := 'tbAllLinesValue:clientData:callData:'.
            recoveredPC := 2962.
        ].
        recoveredStep = 2962 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2963.
        ].
        recoveredStep = 2963 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2967.
        ].
        recoveredStep = 2967 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2970.
        ].
        recoveredStep = 2970 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2974.
        ].
        recoveredStep = 2974 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2975.
        ].
        recoveredStep = 2975 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2978.
        ].
        recoveredStep = 2978 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2979.
        ].
        recoveredStep = 2979 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2983.
        ].
        recoveredStep = 2983 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2986.
        ].
        recoveredStep = 2986 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2990.
        ].
        recoveredStep = 2990 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2991.
        ].
        recoveredStep = 2991 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2994.
        ].
        recoveredStep = 2994 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2995.
        ].
        recoveredStep = 2995 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2999.
        ].
        recoveredStep = 2999 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 3002.
        ].
        recoveredStep = 3002 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 3006.
        ].
        recoveredStep = 3006 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 3007.
        ].
        recoveredStep = 3007 ifTrue: [
            recoveredStack4 := 'incDecStepTextModify:clientData:callData:'.
            recoveredPC := 3010.
        ].
        recoveredStep = 3010 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 3011.
        ].
        recoveredStep = 3011 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 3015.
        ].
        recoveredStep = 3015 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 3018.
        ].
        recoveredStep = 3018 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3023.
        ].
        recoveredStep = 3023 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 3026.
        ].
        recoveredStep = 3026 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3031.
        ].
        recoveredStep = 3031 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 3034.
        ].
        recoveredStep = 3034 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3039.
        ].
        recoveredStep = 3039 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 3042.
        ].
        recoveredStep = 3042 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3047.
        ].
        recoveredStep = 3047 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 3050.
        ].
        recoveredStep = 3050 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3055.
        ].
        recoveredStep = 3055 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 3058.
        ].
        recoveredStep = 3058 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3063.
        ].
        recoveredStep = 3063 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 3066.
        ].
        recoveredStep = 3066 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3071.
        ].
        recoveredStep = 3071 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 3074.
        ].
        recoveredStep = 3074 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3079.
        ].
        recoveredStep = 3079 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 3082.
        ].
        recoveredStep = 3082 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3087.
        ].
        recoveredStep = 3087 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 3090.
        ].
        recoveredStep = 3090 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3095.
        ].
        recoveredStep = 3095 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 3098.
        ].
        recoveredStep = 3098 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 3103.
        ].
        recoveredStep = 3103 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 3106.
        ].
        recoveredStep = 3106 ifTrue: [
            recoveredStack2 := recoveredLocal26.
            recoveredPC := 3109.
        ].
        recoveredStep = 3109 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 3112.
        ].
        recoveredStep = 3112 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 3117.
        ].
        recoveredStep = 3117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

