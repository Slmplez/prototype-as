"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200701a8; bytecode file offset 0x96cb7c"
!SGWidthSelectionDialog methodsFor: 'recovered'!
gc
    | recoveredValue0 |
    recoveredValue0 := gc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070434; bytecode file offset 0x96ce40"
!SGWidthSelectionDialog methodsFor: 'recovered'!
palette
    | recoveredValue0 |
    recoveredValue0 := palette.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070658; bytecode file offset 0x96d06c"
!SGWidthSelectionDialog methodsFor: 'recovered'!
pointPressedOn
    | recoveredValue0 |
    recoveredValue0 := pointPressedOn.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200720e0; bytecode file offset 0x96ee04"
!SGWidthSelectionDialog methodsFor: 'recovered'!
cellsX
    ^1
! !

"ASDBase.ic method 0x20072e68; bytecode file offset 0x96f7ac"
!SGWidthSelectionDialog methodsFor: 'recovered'!
cellsY
    ^5
! !

"ASDBase.ic method 0x200875dc; bytecode file offset 0x983f38"
!SGWidthSelectionDialog methodsFor: 'recovered'!
destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) gc.
    (recoveredValue0) freeGC.
    ^self
! !

"ASDBase.ic method 0x200c6590; bytecode file offset 0x9c3164"
!SGWidthSelectionDialog methodsFor: 'recovered'!
gc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    gc := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6b0c; bytecode file offset 0x9c3470"
!SGWidthSelectionDialog methodsFor: 'recovered'!
palette: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    palette := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6cd0; bytecode file offset 0x9c36ec"
!SGWidthSelectionDialog methodsFor: 'recovered'!
pointPressedOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pointPressedOn := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6e64; bytecode file offset 0x9c38d8"
!SGWidthSelectionDialog methodsFor: 'recovered'!
leftTop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    leftTop := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010ba18; bytecode file offset 0xa085f0"
!SGWidthSelectionDialog methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := CgIndexedPalette.
    recoveredValue1 := (recoveredValue0) default.
    (self) palette: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013596c; bytecode file offset 0xa32230"
!SGWidthSelectionDialog methodsFor: 'recovered'!
buttonPress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Button1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) point.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) pointPressedOn: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20135998; bytecode file offset 0xa3226c"
!SGWidthSelectionDialog methodsFor: 'recovered'!
dialogShellFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) reason.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := XmCRLOSINGFOCUS.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a016c; bytecode file offset 0xa9ca6c"
!SGWidthSelectionDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := leftTop.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := leftTop.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) x: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := leftTop.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20201c08; bytecode file offset 0xafe544"
!SGWidthSelectionDialog methodsFor: 'recovered'!
setGCForegroundFor: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) window.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) whitePixel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) setForeground: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) palette.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) nearestPixelValue: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) setForeground: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20303710; bytecode file offset 0xbfffe0"
!SGWidthSelectionDialog methodsFor: 'recovered'!
buttonRelease: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Button1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) pointPressedOn.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) widthAt: (recoveredStack2) widget: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) point.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) widthAt: (recoveredStack2) widget: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) result: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037b974; bytecode file offset 0xc7828c"
!SGWidthSelectionDialog methodsFor: 'recovered'!
computedCellDimensions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) cellsX.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) cellsY.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) cellsX.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) cellsY.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20476ba0; bytecode file offset 0xd7347c"
!SGWidthSelectionDialog methodsFor: 'recovered'!
widthAt: recoveredArg1 widget: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) palette.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) computedCellDimensions: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) cellsX.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) cellsY.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) containsPoint: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 34] ifFalse: [recoveredLocal1 := nil. recoveredPC := 106]] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 26] ifFalse: [recoveredLocal2 := nil. recoveredPC := 121]] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 119] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20559fc4; bytecode file offset 0xe568ec"
!SGWidthSelectionDialog methodsFor: 'recovered'!
drawingAreaExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) setPalette: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := GCForeground.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := GCBackground.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := CgGCValues.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) palette.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := (recoveredStack6) white.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := (recoveredStack5) nearestPixelValue: (recoveredStack6).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack4) foreground: (recoveredStack5).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) palette.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := CgRGBColor.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := (recoveredStack5) white.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) nearestPixelValue: (recoveredStack5).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) background: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) createGC: (recoveredStack2) values: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) gc: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) palette.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) computedCellDimensions: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) cellsX.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 209.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) cellsY.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := CgRGBColor.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) black.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack2) setForeground: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := GCLineWidth.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := CgGCValues.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack5) lineWidth: (recoveredStack6).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) changeGC: (recoveredStack3) values: (recoveredStack4).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := GCLineWidth.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := CgGCValues.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack5) lineWidth: (recoveredStack6).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) changeGC: (recoveredStack3) values: (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) window.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := (recoveredStack3) gc.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack5 := (recoveredStack5) y.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack7 := recoveredLocal6.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack7 := (recoveredStack7) x.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack7 := recoveredLocal6.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack7 := (recoveredStack7) y.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack8 := 2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack7 := (recoveredStack7) // (recoveredStack8).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack8 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (recoveredStack8).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack2) drawLine: (recoveredStack3) x1: (recoveredStack4) y1: (recoveredStack5) x2: (recoveredStack6) y2: (recoveredStack7).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 88] ifFalse: [recoveredLocal1 := nil. recoveredPC := 208]] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 78] ifFalse: [recoveredLocal2 := nil. recoveredPC := 226]] ifFalse: [recoveredPC := 215].
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cc1e8; bytecode file offset 0xec8b5c"
!SGWidthSelectionDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('ETAS-Notification Window').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := MWMDECORBORDER.
    (recoveredBlock25Value4) mwmDecorations: (recoveredBlock25Value5).
    recoveredBlock25Value6 := recoveredBlock25Value0.
    recoveredBlock25Value7 := recoveredLocal5.
    recoveredBlock25Value8 := (50) * (recoveredBlock25Value7).
    recoveredBlock25Value9 := (recoveredBlock25Value8) rounded.
    (recoveredBlock25Value6) height: (recoveredBlock25Value9).
    recoveredBlock25Value10 := recoveredLocal6.
    recoveredBlock25Value11 := (100) * (recoveredBlock25Value10).
    recoveredBlock25Value12 := (recoveredBlock25Value11) rounded.
    recoveredBlock25Value13 := (recoveredBlock25Value0) width: (recoveredBlock25Value12).
    recoveredBlock25Value13
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 recoveredBlock91Value4 recoveredBlock91Value5 recoveredBlock91Value6 recoveredBlock91Value7 recoveredBlock91Value8 |
    recoveredBlock91Value0 := recoveredBlock91Arg1.
    recoveredBlock91Value1 := recoveredBlock91Value0.
    recoveredBlock91Value2 := recoveredLocal5.
    recoveredBlock91Value3 := (200) * (recoveredBlock91Value2).
    recoveredBlock91Value4 := (recoveredBlock91Value3) rounded.
    (recoveredBlock91Value1) height: (recoveredBlock91Value4).
    recoveredBlock91Value5 := recoveredLocal6.
    recoveredBlock91Value6 := (400) * (recoveredBlock91Value5).
    recoveredBlock91Value7 := (recoveredBlock91Value6) rounded.
    recoveredBlock91Value8 := (recoveredBlock91Value0) width: (recoveredBlock91Value7).
    recoveredBlock91Value8
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := 'colorArea'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := [:recoveredBlock168Arg1 | 
    | recoveredBlock168Value0 recoveredBlock168Value1 recoveredBlock168Value2 recoveredBlock168Value3 recoveredBlock168Value4 recoveredBlock168Value5 recoveredBlock168Value6 recoveredBlock168Value7 recoveredBlock168Value8 |
    recoveredBlock168Value0 := recoveredBlock168Arg1.
    recoveredBlock168Value1 := recoveredBlock168Value0.
    recoveredBlock168Value2 := recoveredLocal5.
    recoveredBlock168Value3 := (195) * (recoveredBlock168Value2).
    recoveredBlock168Value4 := (recoveredBlock168Value3) rounded.
    (recoveredBlock168Value1) height: (recoveredBlock168Value4).
    recoveredBlock168Value5 := recoveredLocal6.
    recoveredBlock168Value6 := (249) * (recoveredBlock168Value5).
    recoveredBlock168Value7 := (recoveredBlock168Value6) rounded.
    recoveredBlock168Value8 := (recoveredBlock168Value0) width: (recoveredBlock168Value7).
    recoveredBlock168Value8
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := 'colorArea'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := [:recoveredBlock221Arg1 | 
    | recoveredBlock221Value0 recoveredBlock221Value1 recoveredBlock221Value2 |
    recoveredBlock221Value0 := recoveredBlock221Arg1.
    recoveredBlock221Value1 := recoveredLocal2.
    recoveredBlock221Value2 := (recoveredBlock221Value0) workWindow: (recoveredBlock221Value1).
    recoveredBlock221Value2
].
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := [:block28118f90Arg1 | 
    | block28118f90Value0 block28118f90Value1 block28118f90Value2 block28118f90Value3 block28118f90Value4 block28118f90Value5 block28118f90Value6 block28118f90Value7 block28118f90Value8 |
    block28118f90Value0 := block28118f90Arg1.
    block28118f90Value1 := block28118f90Value0.
    block28118f90Value2 := XmATTACHFORM.
    (block28118f90Value1) bottomAttachment: (block28118f90Value2).
    block28118f90Value3 := block28118f90Value0.
    block28118f90Value4 := XmATTACHFORM.
    (block28118f90Value3) topAttachment: (block28118f90Value4).
    block28118f90Value5 := block28118f90Value0.
    block28118f90Value6 := XmATTACHFORM.
    (block28118f90Value5) leftAttachment: (block28118f90Value6).
    block28118f90Value7 := XmATTACHFORM.
    block28118f90Value8 := (block28118f90Value0) rightAttachment: (block28118f90Value7).
    block28118f90Value8
].
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack4 := 'dialogShellFocus:clientData:callData:'.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack4 := 'destroy:clientData:callData:'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack4 := 'drawingAreaExpose:clientData:callData:'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := ButtonReleaseMask.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack4 := 'buttonRelease:clientData:callData:'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack4 := 'buttonPress:clientData:callData:'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

