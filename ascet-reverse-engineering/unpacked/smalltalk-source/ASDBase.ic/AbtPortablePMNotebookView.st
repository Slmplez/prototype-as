"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200eea4c; bytecode file offset 0x9eb320"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
createWidget
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := super createWidget.
    recoveredLocal1 := recoveredValue0.
    (self) updateTabSize.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20100ca8; bytecode file offset 0x9fd5a4"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
abtAddSubpart: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super abtAddSubpart: (recoveredValue0) named: (recoveredValue1).
    (self) updateTabSize.
    ^self
! !

"ASDBase.ic method 0x20100ce4; bytecode file offset 0x9fd5a4"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
removeComponentNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super removeComponentNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    (self) updateTabSize.
    ^self
! !

"ASDBase.ic method 0x20111a28; bytecode file offset 0xa0e324"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
abtAddSubpart: recoveredArg1 named: recoveredArg2 atIndex: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super abtAddSubpart: (recoveredValue0) named: (recoveredValue1) atIndex: (recoveredValue2).
    (self) updateTabSize.
    ^self
! !

"ASDBase.ic method 0x20113d28; bytecode file offset 0xa105e8"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
subpartNamed: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super subpartNamed: (recoveredValue0) put: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    (self) updateTabSize.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012780c; bytecode file offset 0xa240f4"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
subpartNamed: recoveredArg1 put: recoveredArg2 partIndex: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super subpartNamed: (recoveredValue0) put: (recoveredValue1) partIndex: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    (self) updateTabSize.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2012f548; bytecode file offset 0xa2be10"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := EwConstants.
    recoveredValue1 := (recoveredValue0) at: ('XmSPIRAL').
    bindingType := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201935f0; bytecode file offset 0xa8fed8"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
pageButtonWidth: recoveredArg1
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
            pageButtonWidth := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) pageButtonWidth: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'pageButtonWidthChanged'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201937e8; bytecode file offset 0xa900d0"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
pageButtonHeight: recoveredArg1
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
            pageButtonHeight := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) pageButtonHeight: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'pageButtonHeightChanged'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019387c; bytecode file offset 0xa90150"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
orientation: recoveredArg1
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
            orientation := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) orientation: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'orientationChanged'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a5170; bytecode file offset 0xaa1a30"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
backPagePosition: recoveredArg1
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
            backPagePosition := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := backPagePosition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) backPagePosition: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'backPagePositionChanged'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201aeb34; bytecode file offset 0xaab3ec"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
pageButtonWidth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) pageButtonWidth.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := pageButtonWidth.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := pageButtonWidth.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201aeb68; bytecode file offset 0xaab420"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
minorTabHeight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) minorTabHeight.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := minorTabHeight.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := minorTabHeight.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 25.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201aeb90; bytecode file offset 0xaab448"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
backPagePosition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) backPagePosition.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := backPagePosition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := backPagePosition.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201aebe0; bytecode file offset 0xaab498"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
minorTabWidth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) minorTabWidth.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := minorTabWidth.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := minorTabWidth.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 50.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201aec08; bytecode file offset 0xaab4c0"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
majorTabHeight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) majorTabHeight.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := majorTabHeight.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := majorTabHeight.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 25.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201aec30; bytecode file offset 0xaab4e8"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
pageButtonHeight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) pageButtonHeight.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := pageButtonHeight.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := pageButtonHeight.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201aec58; bytecode file offset 0xaab510"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
majorTabWidth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) majorTabWidth.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := majorTabWidth.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := majorTabWidth.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 50.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201aeca8; bytecode file offset 0xaab560"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
orientation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) orientation.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e2338; bytecode file offset 0xadebfc"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
bindingType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindingType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := bindingType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := bindingType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := EwConstants.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'XmSPIRAL'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e7b98; bytecode file offset 0xae4464"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
removeInterestInPage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super removeInterestInPage: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue1) abrRemoveInterestIn: ('tabLabel') ifAbsent: (recoveredValue2) from: (self).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [].
    (recoveredValue3) abrRemoveInterestIn: ('tabType') ifAbsent: (recoveredValue4) from: (self).
    ^self
! !

"ASDBase.ic method 0x20232a64; bytecode file offset 0xb2f32c"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
minorTabHeight: recoveredArg1
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
            minorTabHeight := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) updateTabSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) minorTabHeight: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'minorTabHeightChanged'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) minorTabHeight.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20232aa4; bytecode file offset 0xb2f36c"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
minorTabWidth: recoveredArg1
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
            minorTabWidth := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) updateTabSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) minorTabWidth: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'minorTabWidthChanged'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) minorTabWidth.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20232ae4; bytecode file offset 0xb2f3ac"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
majorTabHeight: recoveredArg1
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
            majorTabHeight := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) updateTabSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) majorTabHeight: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'majorTabHeightChanged'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) majorTabHeight.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20232b24; bytecode file offset 0xb2f3ec"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
majorTabWidth: recoveredArg1
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
            majorTabWidth := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) updateTabSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) majorTabWidth: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'majorTabWidthChanged'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) majorTabWidth.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202610a8; bytecode file offset 0xb5d974"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
bindingType: recoveredArg1
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
            bindingType := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := bindingType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := EwConstants.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'XmSPIRAL'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            bindingType := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := bindingType.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) bindingType: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'bindingTypeChanged'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035a728; bytecode file offset 0xc57004"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
addInterestInPage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    super addInterestInPage: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue1) abrRemoveInterestIn: ('tabLabel') ifAbsent: (recoveredValue2) from: (self).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [].
    recoveredValue5 := DirectedMessage.
    recoveredValue6 := (recoveredValue5) selector: ('updateTabSize') arguments: (nil) receiver: (self).
    (recoveredValue3) abtWhenChanged: ('tabLabel') ifAbsent: (recoveredValue4) perform: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := [].
    (recoveredValue7) abrRemoveInterestIn: ('tabType') ifAbsent: (recoveredValue8) from: (self).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [].
    recoveredValue11 := DirectedMessage.
    recoveredValue12 := (recoveredValue11) selector: ('updateTabSize') arguments: (nil) receiver: (self).
    (recoveredValue9) abtWhenChanged: ('tabType') ifAbsent: (recoveredValue10) perform: (recoveredValue12).
    (self) updateTabSize.
    ^self
! !

"ASDBase.ic method 0x20366d8c; bytecode file offset 0xc63660"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
removeSubpartNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := recoveredArg2.
    recoveredBlock20Value1 := (recoveredBlock20Value0) value.
    ^recoveredBlock20Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'tabLabel'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) abrRemoveInterestIn: (recoveredStack2) ifAbsent: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := super removeSubpartNamed: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) updateTabSize.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a0d7c; bytecode file offset 0xd9d660"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
widgetCreationArgBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := super widgetCreationArgBlock.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := bindingType.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 27] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := bindingType.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            (recoveredBlock4Stack0) bindingType: (recoveredBlock4Stack1).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack0 := backPagePosition.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 37] ifFalse: [recoveredBlock4PC := 32].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := backPagePosition.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            (recoveredBlock4Stack0) backPagePosition: (recoveredBlock4Stack1).
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack0 := orientation.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 47] ifFalse: [recoveredBlock4PC := 42].
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack1 := orientation.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            (recoveredBlock4Stack0) orientation: (recoveredBlock4Stack1).
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack1 := minorTabWidth.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 60] ifFalse: [recoveredBlock4PC := 54].
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack1 := minorTabWidth.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            (recoveredBlock4Stack0) minorTabWidth: (recoveredBlock4Stack1).
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack1 := minorTabHeight.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 76] ifFalse: [recoveredBlock4PC := 70].
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack1 := minorTabHeight.
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            (recoveredBlock4Stack0) minorTabHeight: (recoveredBlock4Stack1).
            recoveredBlock4PC := 80.
        ].
        recoveredBlock4Step = 80 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4Stack1 := majorTabWidth.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 92] ifFalse: [recoveredBlock4PC := 86].
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 88 ifTrue: [
            recoveredBlock4PC := 94.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            recoveredBlock4Stack1 := majorTabWidth.
            recoveredBlock4PC := 94.
        ].
        recoveredBlock4Step = 94 ifTrue: [
            (recoveredBlock4Stack0) majorTabWidth: (recoveredBlock4Stack1).
            recoveredBlock4PC := 96.
        ].
        recoveredBlock4Step = 96 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack1 := majorTabHeight.
            recoveredBlock4PC := 99.
        ].
        recoveredBlock4Step = 99 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 108] ifFalse: [recoveredBlock4PC := 102].
        ].
        recoveredBlock4Step = 102 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4PC := 110.
        ].
        recoveredBlock4Step = 108 ifTrue: [
            recoveredBlock4Stack1 := majorTabHeight.
            recoveredBlock4PC := 110.
        ].
        recoveredBlock4Step = 110 ifTrue: [
            (recoveredBlock4Stack0) majorTabHeight: (recoveredBlock4Stack1).
            recoveredBlock4PC := 112.
        ].
        recoveredBlock4Step = 112 ifTrue: [
            recoveredBlock4Stack0 := pageButtonWidth.
            recoveredBlock4PC := 114.
        ].
        recoveredBlock4Step = 114 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 123] ifFalse: [recoveredBlock4PC := 118].
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 119.
        ].
        recoveredBlock4Step = 119 ifTrue: [
            recoveredBlock4Stack1 := pageButtonWidth.
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            (recoveredBlock4Stack0) pageButtonWidth: (recoveredBlock4Stack1).
            recoveredBlock4PC := 123.
        ].
        recoveredBlock4Step = 123 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 124.
        ].
        recoveredBlock4Step = 124 ifTrue: [
            recoveredBlock4Stack1 := pageButtonHeight.
            recoveredBlock4PC := 126.
        ].
        recoveredBlock4Step = 126 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 136] ifFalse: [recoveredBlock4PC := 130].
        ].
        recoveredBlock4Step = 130 ifTrue: [
            recoveredBlock4PC := 131.
        ].
        recoveredBlock4Step = 131 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 132.
        ].
        recoveredBlock4Step = 132 ifTrue: [
            recoveredBlock4Stack1 := pageButtonHeight.
            recoveredBlock4PC := 134.
        ].
        recoveredBlock4Step = 134 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) pageButtonHeight: (recoveredBlock4Stack1).
            recoveredBlock4PC := 136.
        ].
        recoveredBlock4Step = 136 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x20603ce8; bytecode file offset 0xf005ec"
!AbtPortablePMNotebookView methodsFor: 'recovered'!
updateTabSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := fontList.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := CgFontStruct.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := fontList.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Stack0 recoveredBlock88Stack1 recoveredBlock88Stack2 recoveredBlock88Stack3 recoveredBlock88Stack4 recoveredBlock88PC recoveredBlock88Step recoveredBlock88Done recoveredBlock88Result |
    recoveredBlock88Stack0 := self.
    recoveredBlock88PC := 94.
    recoveredBlock88Done := false.
    [recoveredBlock88Done not] whileTrue: [
        recoveredBlock88Step := recoveredBlock88PC.
        recoveredBlock88Step = 94 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg1.
            recoveredBlock88PC := 95.
        ].
        recoveredBlock88Step = 95 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) tabLabel.
            recoveredBlock88PC := 97.
        ].
        recoveredBlock88Step = 97 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) isString.
            recoveredBlock88PC := 99.
        ].
        recoveredBlock88Step = 99 ifTrue: [
            (recoveredBlock88Stack1) ifTrue: [recoveredBlock88PC := 102] ifFalse: [recoveredBlock88PC := 202].
        ].
        recoveredBlock88Step = 102 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg1.
            recoveredBlock88PC := 103.
        ].
        recoveredBlock88Step = 103 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) tabType.
            recoveredBlock88PC := 105.
        ].
        recoveredBlock88Step = 105 ifTrue: [
            recoveredBlock88Stack2 := XmMAJOR.
            recoveredBlock88PC := 107.
        ].
        recoveredBlock88Step = 107 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) = (recoveredBlock88Stack2).
            recoveredBlock88PC := 108.
        ].
        recoveredBlock88Step = 108 ifTrue: [
            (recoveredBlock88Stack1) ifTrue: [recoveredBlock88PC := 112] ifFalse: [recoveredBlock88PC := 149].
        ].
        recoveredBlock88Step = 112 ifTrue: [
            recoveredBlock88Stack1 := recoveredLocal1.
            recoveredBlock88PC := 115.
        ].
        recoveredBlock88Step = 115 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) height.
            recoveredBlock88PC := 117.
        ].
        recoveredBlock88Step = 117 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal6.
            recoveredBlock88PC := 120.
        ].
        recoveredBlock88Step = 120 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) + (recoveredBlock88Stack2).
            recoveredBlock88PC := 121.
        ].
        recoveredBlock88Step = 121 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal10.
            recoveredBlock88PC := 124.
        ].
        recoveredBlock88Step = 124 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) max: (recoveredBlock88Stack2).
            recoveredBlock88PC := 126.
        ].
        recoveredBlock88Step = 126 ifTrue: [
            recoveredLocal10 := recoveredBlock88Stack1.
            recoveredBlock88PC := 129.
        ].
        recoveredBlock88Step = 129 ifTrue: [
            recoveredBlock88Stack1 := recoveredLocal1.
            recoveredBlock88PC := 132.
        ].
        recoveredBlock88Step = 132 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 133.
        ].
        recoveredBlock88Step = 133 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) tabLabel.
            recoveredBlock88PC := 135.
        ].
        recoveredBlock88Step = 135 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) textWidth: (recoveredBlock88Stack2).
            recoveredBlock88PC := 137.
        ].
        recoveredBlock88Step = 137 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal7.
            recoveredBlock88PC := 140.
        ].
        recoveredBlock88Step = 140 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) + (recoveredBlock88Stack2).
            recoveredBlock88PC := 141.
        ].
        recoveredBlock88Step = 141 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal11.
            recoveredBlock88PC := 144.
        ].
        recoveredBlock88Step = 144 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) max: (recoveredBlock88Stack2).
            recoveredBlock88PC := 146.
        ].
        recoveredBlock88Step = 146 ifTrue: [
            recoveredLocal11 := recoveredBlock88Stack1.
            recoveredBlock88PC := 149.
        ].
        recoveredBlock88Step = 149 ifTrue: [
            recoveredBlock88Stack1 := nil.
            recoveredBlock88PC := 150.
        ].
        recoveredBlock88Step = 150 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 151.
        ].
        recoveredBlock88Step = 151 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) tabType.
            recoveredBlock88PC := 153.
        ].
        recoveredBlock88Step = 153 ifTrue: [
            recoveredBlock88Stack3 := XmMINOR.
            recoveredBlock88PC := 155.
        ].
        recoveredBlock88Step = 155 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) = (recoveredBlock88Stack3).
            recoveredBlock88PC := 156.
        ].
        recoveredBlock88Step = 156 ifTrue: [
            (recoveredBlock88Stack2) ifTrue: [recoveredBlock88PC := 160] ifFalse: [recoveredBlock88PC := 199].
        ].
        recoveredBlock88Step = 160 ifTrue: [
            recoveredBlock88PC := 161.
        ].
        recoveredBlock88Step = 161 ifTrue: [
            recoveredBlock88Stack1 := recoveredLocal1.
            recoveredBlock88PC := 164.
        ].
        recoveredBlock88Step = 164 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) height.
            recoveredBlock88PC := 166.
        ].
        recoveredBlock88Step = 166 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal6.
            recoveredBlock88PC := 169.
        ].
        recoveredBlock88Step = 169 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) + (recoveredBlock88Stack2).
            recoveredBlock88PC := 170.
        ].
        recoveredBlock88Step = 170 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal8.
            recoveredBlock88PC := 173.
        ].
        recoveredBlock88Step = 173 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) max: (recoveredBlock88Stack2).
            recoveredBlock88PC := 175.
        ].
        recoveredBlock88Step = 175 ifTrue: [
            recoveredLocal8 := recoveredBlock88Stack1.
            recoveredBlock88PC := 178.
        ].
        recoveredBlock88Step = 178 ifTrue: [
            recoveredBlock88Stack1 := recoveredLocal1.
            recoveredBlock88PC := 181.
        ].
        recoveredBlock88Step = 181 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 182.
        ].
        recoveredBlock88Step = 182 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) tabLabel.
            recoveredBlock88PC := 184.
        ].
        recoveredBlock88Step = 184 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) textWidth: (recoveredBlock88Stack2).
            recoveredBlock88PC := 186.
        ].
        recoveredBlock88Step = 186 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal7.
            recoveredBlock88PC := 189.
        ].
        recoveredBlock88Step = 189 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) + (recoveredBlock88Stack2).
            recoveredBlock88PC := 190.
        ].
        recoveredBlock88Step = 190 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal9.
            recoveredBlock88PC := 193.
        ].
        recoveredBlock88Step = 193 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) max: (recoveredBlock88Stack2).
            recoveredBlock88PC := 195.
        ].
        recoveredBlock88Step = 195 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Stack1.
            recoveredBlock88PC := 196.
        ].
        recoveredBlock88Step = 196 ifTrue: [
            recoveredLocal9 := recoveredBlock88Stack2.
            recoveredBlock88PC := 199.
        ].
        recoveredBlock88Step = 199 ifTrue: [
            recoveredBlock88PC := 311.
        ].
        recoveredBlock88Step = 202 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg1.
            recoveredBlock88PC := 203.
        ].
        recoveredBlock88Step = 203 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) tabType.
            recoveredBlock88PC := 205.
        ].
        recoveredBlock88Step = 205 ifTrue: [
            recoveredBlock88Stack2 := XmMAJOR.
            recoveredBlock88PC := 207.
        ].
        recoveredBlock88Step = 207 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) = (recoveredBlock88Stack2).
            recoveredBlock88PC := 208.
        ].
        recoveredBlock88Step = 208 ifTrue: [
            (recoveredBlock88Stack1) ifTrue: [recoveredBlock88PC := 212] ifFalse: [recoveredBlock88PC := 256].
        ].
        recoveredBlock88Step = 212 ifTrue: [
            recoveredBlock88Stack1 := majorTabHeight.
            recoveredBlock88PC := 214.
        ].
        recoveredBlock88Step = 214 ifTrue: [
            (recoveredBlock88Stack1 ~~ nil) ifTrue: [recoveredBlock88PC := 224] ifFalse: [recoveredBlock88PC := 218].
        ].
        recoveredBlock88Step = 218 ifTrue: [
            recoveredBlock88Stack1 := 30.
            recoveredBlock88PC := 220.
        ].
        recoveredBlock88Step = 220 ifTrue: [
            recoveredBlock88PC := 226.
        ].
        recoveredBlock88Step = 224 ifTrue: [
            recoveredBlock88Stack1 := majorTabHeight.
            recoveredBlock88PC := 226.
        ].
        recoveredBlock88Step = 226 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal10.
            recoveredBlock88PC := 229.
        ].
        recoveredBlock88Step = 229 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) max: (recoveredBlock88Stack2).
            recoveredBlock88PC := 231.
        ].
        recoveredBlock88Step = 231 ifTrue: [
            recoveredLocal10 := recoveredBlock88Stack1.
            recoveredBlock88PC := 234.
        ].
        recoveredBlock88Step = 234 ifTrue: [
            recoveredBlock88Stack1 := majorTabWidth.
            recoveredBlock88PC := 236.
        ].
        recoveredBlock88Step = 236 ifTrue: [
            (recoveredBlock88Stack1 ~~ nil) ifTrue: [recoveredBlock88PC := 246] ifFalse: [recoveredBlock88PC := 240].
        ].
        recoveredBlock88Step = 240 ifTrue: [
            recoveredBlock88Stack1 := 30.
            recoveredBlock88PC := 242.
        ].
        recoveredBlock88Step = 242 ifTrue: [
            recoveredBlock88PC := 248.
        ].
        recoveredBlock88Step = 246 ifTrue: [
            recoveredBlock88Stack1 := majorTabWidth.
            recoveredBlock88PC := 248.
        ].
        recoveredBlock88Step = 248 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal11.
            recoveredBlock88PC := 251.
        ].
        recoveredBlock88Step = 251 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) max: (recoveredBlock88Stack2).
            recoveredBlock88PC := 253.
        ].
        recoveredBlock88Step = 253 ifTrue: [
            recoveredLocal11 := recoveredBlock88Stack1.
            recoveredBlock88PC := 256.
        ].
        recoveredBlock88Step = 256 ifTrue: [
            recoveredBlock88Stack1 := nil.
            recoveredBlock88PC := 257.
        ].
        recoveredBlock88Step = 257 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 258.
        ].
        recoveredBlock88Step = 258 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) tabType.
            recoveredBlock88PC := 260.
        ].
        recoveredBlock88Step = 260 ifTrue: [
            recoveredBlock88Stack3 := XmMINOR.
            recoveredBlock88PC := 262.
        ].
        recoveredBlock88Step = 262 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) = (recoveredBlock88Stack3).
            recoveredBlock88PC := 263.
        ].
        recoveredBlock88Step = 263 ifTrue: [
            (recoveredBlock88Stack2) ifTrue: [recoveredBlock88PC := 266] ifFalse: [recoveredBlock88PC := 311].
        ].
        recoveredBlock88Step = 266 ifTrue: [
            recoveredBlock88PC := 267.
        ].
        recoveredBlock88Step = 267 ifTrue: [
            recoveredBlock88Stack1 := minorTabHeight.
            recoveredBlock88PC := 269.
        ].
        recoveredBlock88Step = 269 ifTrue: [
            (recoveredBlock88Stack1 ~~ nil) ifTrue: [recoveredBlock88PC := 278] ifFalse: [recoveredBlock88PC := 272].
        ].
        recoveredBlock88Step = 272 ifTrue: [
            recoveredBlock88Stack1 := 30.
            recoveredBlock88PC := 274.
        ].
        recoveredBlock88Step = 274 ifTrue: [
            recoveredBlock88PC := 280.
        ].
        recoveredBlock88Step = 278 ifTrue: [
            recoveredBlock88Stack1 := minorTabHeight.
            recoveredBlock88PC := 280.
        ].
        recoveredBlock88Step = 280 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal8.
            recoveredBlock88PC := 283.
        ].
        recoveredBlock88Step = 283 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) max: (recoveredBlock88Stack2).
            recoveredBlock88PC := 285.
        ].
        recoveredBlock88Step = 285 ifTrue: [
            recoveredLocal8 := recoveredBlock88Stack1.
            recoveredBlock88PC := 288.
        ].
        recoveredBlock88Step = 288 ifTrue: [
            recoveredBlock88Stack1 := minorTabWidth.
            recoveredBlock88PC := 290.
        ].
        recoveredBlock88Step = 290 ifTrue: [
            (recoveredBlock88Stack1 ~~ nil) ifTrue: [recoveredBlock88PC := 300] ifFalse: [recoveredBlock88PC := 294].
        ].
        recoveredBlock88Step = 294 ifTrue: [
            recoveredBlock88Stack1 := 30.
            recoveredBlock88PC := 296.
        ].
        recoveredBlock88Step = 296 ifTrue: [
            recoveredBlock88PC := 302.
        ].
        recoveredBlock88Step = 300 ifTrue: [
            recoveredBlock88Stack1 := minorTabWidth.
            recoveredBlock88PC := 302.
        ].
        recoveredBlock88Step = 302 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal9.
            recoveredBlock88PC := 305.
        ].
        recoveredBlock88Step = 305 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) max: (recoveredBlock88Stack2).
            recoveredBlock88PC := 307.
        ].
        recoveredBlock88Step = 307 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Stack1.
            recoveredBlock88PC := 308.
        ].
        recoveredBlock88Step = 308 ifTrue: [
            recoveredLocal9 := recoveredBlock88Stack2.
            recoveredBlock88PC := 311.
        ].
        recoveredBlock88Step = 311 ifTrue: [
            recoveredBlock88Result := recoveredBlock88Stack1.
            recoveredBlock88Done := true.
        ].
    ].
    recoveredBlock88Result
].
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := majorTabDimensions.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 330] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredPC := 332.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := majorTabDimensions.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := minorTabDimensions.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 340].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredPC := 352.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := minorTabDimensions.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := majorTabWidth.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 379] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 379].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            (recoveredStack1) majorTabWidth: (recoveredStack2).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := majorTabHeight.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 403] ifFalse: [recoveredPC := 384].
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 396] ifFalse: [recoveredPC := 403].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) majorTabHeight: (recoveredStack2).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := minorTabWidth.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 427] ifFalse: [recoveredPC := 408].
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 420] ifFalse: [recoveredPC := 427].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            (recoveredStack1) minorTabWidth: (recoveredStack2).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := minorTabHeight.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 451] ifFalse: [recoveredPC := 432].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 444] ifFalse: [recoveredPC := 451].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack1) minorTabHeight: (recoveredStack2).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

