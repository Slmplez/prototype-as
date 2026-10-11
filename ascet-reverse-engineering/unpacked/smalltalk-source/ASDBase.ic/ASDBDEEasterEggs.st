"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200000d0; bytecode file offset 0x8ffcfc"
!ASDBDEEasterEggs methodsFor: 'recovered'!
switchToBrowseWidget
    ^self
! !

"ASDBase.ic method 0x20000130; bytecode file offset 0x8ffcfc"
!ASDBDEEasterEggs methodsFor: 'recovered'!
writeDefaultToolbarVisibility
    ^self
! !

"ASDBase.ic method 0x20001380; bytecode file offset 0x8ffcfc"
!ASDBDEEasterEggs methodsFor: 'recovered'!
writeDefaultPaletteVisibility
    ^self
! !

"ASDBase.ic method 0x20001800; bytecode file offset 0x8ffcfc"
!ASDBDEEasterEggs methodsFor: 'recovered'!
writeToolbarOrders
    ^self
! !

"ASDBase.ic method 0x200019d8; bytecode file offset 0x8ffcfc"
!ASDBDEEasterEggs methodsFor: 'recovered'!
writeDefaultToolbarConfiguration
    ^self
! !

"ASDBase.ic method 0x20001ad8; bytecode file offset 0x8ffcfc"
!ASDBDEEasterEggs methodsFor: 'recovered'!
updateToolbarSensitive
    ^self
! !

"ASDBase.ic method 0x20002430; bytecode file offset 0x8ffcfc"
!ASDBDEEasterEggs methodsFor: 'recovered'!
automaticMove
    ^self
! !

"ASDBase.ic method 0x20005138; bytecode file offset 0x90206c"
!ASDBDEEasterEggs methodsFor: 'recovered'!
updateForObserver: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005eb4; bytecode file offset 0x902de8"
!ASDBDEEasterEggs methodsFor: 'recovered'!
motion: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000643c; bytecode file offset 0x902de8"
!ASDBDEEasterEggs methodsFor: 'recovered'!
topShellFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000cb54; bytecode file offset 0x909658"
!ASDBDEEasterEggs methodsFor: 'recovered'!
storeChangesPromptYesNoCancel: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20075f94; bytecode file offset 0x9757c8"
!ASDBDEEasterEggs methodsFor: 'recovered'!
isClosingPossible
    ^true
! !

"ASDBase.ic method 0x2007be8c; bytecode file offset 0x97c330"
!ASDBDEEasterEggs methodsFor: 'recovered'!
isSequencingAvailable
    ^false
! !

"ASDBase.ic method 0x2007decc; bytecode file offset 0x97c330"
!ASDBDEEasterEggs methodsFor: 'recovered'!
responseToButtonClick
    ^false
! !

"ASDBase.ic method 0x200b1af0; bytecode file offset 0x9ae3a8"
!ASDBDEEasterEggs methodsFor: 'recovered'!
endT
    | recoveredValue0 |
    recoveredValue0 := timerT.
    (recoveredValue0) terminate.
    timerT := nil.
    ^self
! !

"ASDBase.ic method 0x200bd938; bytecode file offset 0x9ba1fc"
!ASDBDEEasterEggs methodsFor: 'recovered'!
redrawRects: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) graphPaneController.
    recoveredValue2 := (recoveredValue1) widget.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) displayRects: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200caa34; bytecode file offset 0x9c72f0"
!ASDBDEEasterEggs methodsFor: 'recovered'!
updateContents
    | recoveredLocal1 recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) updateContents.
    (self) redraw.
    ^self
! !

"ASDBase.ic method 0x200dac58; bytecode file offset 0x9d7520"
!ASDBDEEasterEggs methodsFor: 'recovered'!
redrawGO: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) graphPaneController.
    recoveredValue2 := (recoveredValue1) widget.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) giveRedisplayRects.
    (recoveredValue2) displayRects: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201136d4; bytecode file offset 0xa0ff90"
!ASDBDEEasterEggs methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 12.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015e168; bytecode file offset 0xa5aa24"
!ASDBDEEasterEggs methodsFor: 'recovered'!
exitT
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
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
            (recoveredStack0) close.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022ede8; bytecode file offset 0xb2b6dc"
!ASDBDEEasterEggs methodsFor: 'recovered'!
visiblePaletteButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) paletteElementsName.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue6) at: (recoveredValue8) put: (recoveredValue9).
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := (self) class.
    recoveredValue12 := (recoveredValue11) paletteBasicBlocksName.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue10) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal3.
    ^recoveredValue14
! !

"ASDBase.ic method 0x2028b0f4; bytecode file offset 0xb87a0c"
!ASDBDEEasterEggs methodsFor: 'recovered'!
visibleToolbarButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := (self) toolbarGeneralsName.
    recoveredValue10 := recoveredLocal3.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := (self) toolbarElementsName.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := (self) toolbarBasicBlocksName.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue14) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal4.
    ^recoveredValue17
! !

"ASDBase.ic method 0x2028b118; bytecode file offset 0xb87a0c"
!ASDBDEEasterEggs methodsFor: 'recovered'!
availableToolbarButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := (self) toolbarGeneralsName.
    recoveredValue10 := recoveredLocal3.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := (self) toolbarElementsName.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := (self) toolbarBasicBlocksName.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue14) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal4.
    ^recoveredValue17
! !

"ASDBase.ic method 0x202c4014; bytecode file offset 0xbc08f0"
!ASDBDEEasterEggs methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultIcon.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) initializeOuterPageSpecificationIcon: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressDialog.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressDialog.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (2) denominator: (3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) initWidgetFonts.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) initSpecial.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) initContents.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressDialog.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressDialog.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ffbf4; bytecode file offset 0xbfc4e8"
!ASDBDEEasterEggs methodsFor: 'recovered'!
text: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := SGMultiLineCommentGO.
    recoveredValue1 := (0) @ (0).
    recoveredValue2 := ('Points: \Lines: ') withCrs.
    recoveredValue3 := FontCommentText.
    recoveredValue4 := (recoveredValue3) font.
    recoveredValue5 := DefaultLineStyle.
    recoveredValue6 := (recoveredValue5) deepCopy.
    recoveredValue7 := (self) uiController.
    recoveredValue8 := (recoveredValue7) graphPaneController.
    recoveredValue9 := (recoveredValue8) graphicObjects.
    recoveredValue10 := (recoveredValue0) createAt: (recoveredValue1) text: (recoveredValue2) alignment: ('TaLeft') font: (recoveredValue4) lineStyle: (recoveredValue6) manager: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := (self) uiController.
    recoveredValue12 := (recoveredValue11) graphPaneController.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) x.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) y.
    recoveredValue18 := (recoveredValue15) @ (recoveredValue17).
    (recoveredValue12) addGO: (recoveredValue13) insertInLine: (false) atPosition: (recoveredValue18) display: (true).
    recoveredValue19 := recoveredLocal1.
    ^recoveredValue19
! !

"ASDBase.ic method 0x2031b470; bytecode file offset 0xc17d48"
!ASDBDEEasterEggs methodsFor: 'recovered'!
timerT
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := [
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) shell.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            (recoveredBlock14Stack1 ~~ nil) ifTrue: [recoveredBlock14PC := 33] ifFalse: [recoveredBlock14PC := 26].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := timerT.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            (recoveredBlock14Stack1) terminate.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            timerT := recoveredBlock14Stack1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            (recoveredBlock14Stack1) automaticMove.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack1 := Delay.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack2 := milliSecondsT.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) forMilliseconds: (recoveredBlock14Stack2).
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            (recoveredBlock14Stack1) wait.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := true.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 20] ifFalse: [recoveredBlock14PC := 47].
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) userSchedulingPriority.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) forkAt: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            timerT := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b10dc; bytecode file offset 0xcad9c4"
!ASDBDEEasterEggs methodsFor: 'recovered'!
moveRight: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 recoveredBlock13Value10 recoveredBlock13Value11 recoveredBlock13Value12 recoveredBlock13Value13 recoveredBlock13Value14 recoveredBlock13Value15 recoveredBlock13Value16 recoveredBlock13Value17 recoveredBlock13Value18 recoveredBlock13Value19 recoveredBlock13Value20 recoveredBlock13Value21 recoveredBlock13Value22 recoveredBlock13Value23 recoveredBlock13Value24 recoveredBlock13Value25 recoveredBlock13Value26 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := Rectangle.
    recoveredBlock13Value2 := recoveredBlock13Arg1.
    recoveredBlock13Value3 := (recoveredBlock13Value2) logicFrame.
    recoveredBlock13Value4 := (recoveredBlock13Value3) origin.
    recoveredBlock13Value5 := recoveredBlock13Arg1.
    recoveredBlock13Value6 := (recoveredBlock13Value5) logicFrame.
    recoveredBlock13Value7 := (recoveredBlock13Value6) corner.
    recoveredBlock13Value8 := (recoveredBlock13Value7) + (1).
    recoveredBlock13Value9 := (recoveredBlock13Value1) origin: (recoveredBlock13Value4) corner: (recoveredBlock13Value8).
    (recoveredBlock13Value0) add: (recoveredBlock13Value9).
    recoveredBlock13Value10 := recoveredBlock13Arg1.
    recoveredBlock13Value11 := (recoveredBlock13Value10) getPosition.
    recoveredBlock13Value12 := recoveredBlock13Arg1.
    recoveredBlock13Value13 := (recoveredBlock13Value12) getPosition.
    recoveredBlock13Value14 := (recoveredBlock13Value13) x.
    recoveredBlock13Value15 := (recoveredBlock13Value14) + (20).
    (recoveredBlock13Value11) x: (recoveredBlock13Value15).
    recoveredBlock13Value16 := recoveredLocal1.
    recoveredBlock13Value17 := Rectangle.
    recoveredBlock13Value18 := recoveredBlock13Arg1.
    recoveredBlock13Value19 := (recoveredBlock13Value18) logicFrame.
    recoveredBlock13Value20 := (recoveredBlock13Value19) origin.
    recoveredBlock13Value21 := recoveredBlock13Arg1.
    recoveredBlock13Value22 := (recoveredBlock13Value21) logicFrame.
    recoveredBlock13Value23 := (recoveredBlock13Value22) corner.
    recoveredBlock13Value24 := (recoveredBlock13Value23) + (1).
    recoveredBlock13Value25 := (recoveredBlock13Value17) origin: (recoveredBlock13Value20) corner: (recoveredBlock13Value24).
    recoveredBlock13Value26 := (recoveredBlock13Value16) add: (recoveredBlock13Value25).
    recoveredBlock13Value26
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) redrawRects: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203b1168; bytecode file offset 0xcada50"
!ASDBDEEasterEggs methodsFor: 'recovered'!
moveLeft: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 recoveredBlock13Value10 recoveredBlock13Value11 recoveredBlock13Value12 recoveredBlock13Value13 recoveredBlock13Value14 recoveredBlock13Value15 recoveredBlock13Value16 recoveredBlock13Value17 recoveredBlock13Value18 recoveredBlock13Value19 recoveredBlock13Value20 recoveredBlock13Value21 recoveredBlock13Value22 recoveredBlock13Value23 recoveredBlock13Value24 recoveredBlock13Value25 recoveredBlock13Value26 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := Rectangle.
    recoveredBlock13Value2 := recoveredBlock13Arg1.
    recoveredBlock13Value3 := (recoveredBlock13Value2) logicFrame.
    recoveredBlock13Value4 := (recoveredBlock13Value3) origin.
    recoveredBlock13Value5 := recoveredBlock13Arg1.
    recoveredBlock13Value6 := (recoveredBlock13Value5) logicFrame.
    recoveredBlock13Value7 := (recoveredBlock13Value6) corner.
    recoveredBlock13Value8 := (recoveredBlock13Value7) + (1).
    recoveredBlock13Value9 := (recoveredBlock13Value1) origin: (recoveredBlock13Value4) corner: (recoveredBlock13Value8).
    (recoveredBlock13Value0) add: (recoveredBlock13Value9).
    recoveredBlock13Value10 := recoveredBlock13Arg1.
    recoveredBlock13Value11 := (recoveredBlock13Value10) getPosition.
    recoveredBlock13Value12 := recoveredBlock13Arg1.
    recoveredBlock13Value13 := (recoveredBlock13Value12) getPosition.
    recoveredBlock13Value14 := (recoveredBlock13Value13) x.
    recoveredBlock13Value15 := (recoveredBlock13Value14) - (20).
    (recoveredBlock13Value11) x: (recoveredBlock13Value15).
    recoveredBlock13Value16 := recoveredLocal1.
    recoveredBlock13Value17 := Rectangle.
    recoveredBlock13Value18 := recoveredBlock13Arg1.
    recoveredBlock13Value19 := (recoveredBlock13Value18) logicFrame.
    recoveredBlock13Value20 := (recoveredBlock13Value19) origin.
    recoveredBlock13Value21 := recoveredBlock13Arg1.
    recoveredBlock13Value22 := (recoveredBlock13Value21) logicFrame.
    recoveredBlock13Value23 := (recoveredBlock13Value22) corner.
    recoveredBlock13Value24 := (recoveredBlock13Value23) + (1).
    recoveredBlock13Value25 := (recoveredBlock13Value17) origin: (recoveredBlock13Value20) corner: (recoveredBlock13Value24).
    recoveredBlock13Value26 := (recoveredBlock13Value16) add: (recoveredBlock13Value25).
    recoveredBlock13Value26
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) redrawRects: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203cc92c; bytecode file offset 0xcc9214"
!ASDBDEEasterEggs methodsFor: 'recovered'!
moveDown: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    busyT := true.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 recoveredBlock16Value9 recoveredBlock16Value10 recoveredBlock16Value11 recoveredBlock16Value12 recoveredBlock16Value13 recoveredBlock16Value14 recoveredBlock16Value15 recoveredBlock16Value16 recoveredBlock16Value17 recoveredBlock16Value18 recoveredBlock16Value19 recoveredBlock16Value20 recoveredBlock16Value21 recoveredBlock16Value22 recoveredBlock16Value23 recoveredBlock16Value24 recoveredBlock16Value25 recoveredBlock16Value26 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := Rectangle.
    recoveredBlock16Value2 := recoveredBlock16Arg1.
    recoveredBlock16Value3 := (recoveredBlock16Value2) logicFrame.
    recoveredBlock16Value4 := (recoveredBlock16Value3) origin.
    recoveredBlock16Value5 := recoveredBlock16Arg1.
    recoveredBlock16Value6 := (recoveredBlock16Value5) logicFrame.
    recoveredBlock16Value7 := (recoveredBlock16Value6) corner.
    recoveredBlock16Value8 := (recoveredBlock16Value7) + (1).
    recoveredBlock16Value9 := (recoveredBlock16Value1) origin: (recoveredBlock16Value4) corner: (recoveredBlock16Value8).
    (recoveredBlock16Value0) add: (recoveredBlock16Value9).
    recoveredBlock16Value10 := recoveredBlock16Arg1.
    recoveredBlock16Value11 := (recoveredBlock16Value10) getPosition.
    recoveredBlock16Value12 := recoveredBlock16Arg1.
    recoveredBlock16Value13 := (recoveredBlock16Value12) getPosition.
    recoveredBlock16Value14 := (recoveredBlock16Value13) y.
    recoveredBlock16Value15 := (recoveredBlock16Value14) + (20).
    (recoveredBlock16Value11) y: (recoveredBlock16Value15).
    recoveredBlock16Value16 := recoveredLocal1.
    recoveredBlock16Value17 := Rectangle.
    recoveredBlock16Value18 := recoveredBlock16Arg1.
    recoveredBlock16Value19 := (recoveredBlock16Value18) logicFrame.
    recoveredBlock16Value20 := (recoveredBlock16Value19) origin.
    recoveredBlock16Value21 := recoveredBlock16Arg1.
    recoveredBlock16Value22 := (recoveredBlock16Value21) logicFrame.
    recoveredBlock16Value23 := (recoveredBlock16Value22) corner.
    recoveredBlock16Value24 := (recoveredBlock16Value23) + (1).
    recoveredBlock16Value25 := (recoveredBlock16Value17) origin: (recoveredBlock16Value20) corner: (recoveredBlock16Value24).
    recoveredBlock16Value26 := (recoveredBlock16Value16) add: (recoveredBlock16Value25).
    recoveredBlock16Value26
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) redrawRects: (recoveredValue4).
    busyT := false.
    ^self
! !

"ASDBase.ic method 0x203cc9bc; bytecode file offset 0xcc92a4"
!ASDBDEEasterEggs methodsFor: 'recovered'!
moveUp: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    busyT := true.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 recoveredBlock16Value9 recoveredBlock16Value10 recoveredBlock16Value11 recoveredBlock16Value12 recoveredBlock16Value13 recoveredBlock16Value14 recoveredBlock16Value15 recoveredBlock16Value16 recoveredBlock16Value17 recoveredBlock16Value18 recoveredBlock16Value19 recoveredBlock16Value20 recoveredBlock16Value21 recoveredBlock16Value22 recoveredBlock16Value23 recoveredBlock16Value24 recoveredBlock16Value25 recoveredBlock16Value26 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := Rectangle.
    recoveredBlock16Value2 := recoveredBlock16Arg1.
    recoveredBlock16Value3 := (recoveredBlock16Value2) logicFrame.
    recoveredBlock16Value4 := (recoveredBlock16Value3) origin.
    recoveredBlock16Value5 := recoveredBlock16Arg1.
    recoveredBlock16Value6 := (recoveredBlock16Value5) logicFrame.
    recoveredBlock16Value7 := (recoveredBlock16Value6) corner.
    recoveredBlock16Value8 := (recoveredBlock16Value7) + (1).
    recoveredBlock16Value9 := (recoveredBlock16Value1) origin: (recoveredBlock16Value4) corner: (recoveredBlock16Value8).
    (recoveredBlock16Value0) add: (recoveredBlock16Value9).
    recoveredBlock16Value10 := recoveredBlock16Arg1.
    recoveredBlock16Value11 := (recoveredBlock16Value10) getPosition.
    recoveredBlock16Value12 := recoveredBlock16Arg1.
    recoveredBlock16Value13 := (recoveredBlock16Value12) getPosition.
    recoveredBlock16Value14 := (recoveredBlock16Value13) y.
    recoveredBlock16Value15 := (recoveredBlock16Value14) - (20).
    (recoveredBlock16Value11) y: (recoveredBlock16Value15).
    recoveredBlock16Value16 := recoveredLocal1.
    recoveredBlock16Value17 := Rectangle.
    recoveredBlock16Value18 := recoveredBlock16Arg1.
    recoveredBlock16Value19 := (recoveredBlock16Value18) logicFrame.
    recoveredBlock16Value20 := (recoveredBlock16Value19) origin.
    recoveredBlock16Value21 := recoveredBlock16Arg1.
    recoveredBlock16Value22 := (recoveredBlock16Value21) logicFrame.
    recoveredBlock16Value23 := (recoveredBlock16Value22) corner.
    recoveredBlock16Value24 := (recoveredBlock16Value23) + (1).
    recoveredBlock16Value25 := (recoveredBlock16Value17) origin: (recoveredBlock16Value20) corner: (recoveredBlock16Value24).
    recoveredBlock16Value26 := (recoveredBlock16Value16) add: (recoveredBlock16Value25).
    recoveredBlock16Value26
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) redrawRects: (recoveredValue4).
    busyT := false.
    ^self
! !

"ASDBase.ic method 0x20426f10; bytecode file offset 0xd2382c"
!ASDBDEEasterEggs methodsFor: 'recovered'!
detectLeftCollision: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) graphPaneController.
    recoveredValue2 := (recoveredValue1) graphicObjects.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock8Arg1 | 
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
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) includes: (recoveredBlock8Stack3).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 31] ifFalse: [recoveredBlock8PC := 24].
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
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) ~= (recoveredBlock8Stack2).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue5 := (recoveredValue3) reject: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := [:recoveredBlock40Block49Arg1 | 
    | recoveredBlock40Block49Stack0 recoveredBlock40Block49Stack1 recoveredBlock40Block49Stack2 recoveredBlock40Block49Stack3 recoveredBlock40Block49Stack4 recoveredBlock40Block49Stack5 recoveredBlock40Block49PC recoveredBlock40Block49Step recoveredBlock40Block49Done recoveredBlock40Block49Result |
    recoveredBlock40Block49Stack0 := self.
    recoveredBlock40Block49PC := 56.
    recoveredBlock40Block49Done := false.
    [recoveredBlock40Block49Done not] whileTrue: [
        recoveredBlock40Block49Step := recoveredBlock40Block49PC.
        recoveredBlock40Block49Step = 56 ifTrue: [
            recoveredBlock40Block49Stack1 := nil.
            recoveredBlock40Block49PC := 57.
        ].
        recoveredBlock40Block49Step = 57 ifTrue: [
            recoveredBlock40Block49Stack2 := recoveredBlock40Block49Arg1.
            recoveredBlock40Block49PC := 58.
        ].
        recoveredBlock40Block49Step = 58 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) getPosition.
            recoveredBlock40Block49PC := 60.
        ].
        recoveredBlock40Block49Step = 60 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) x.
            recoveredBlock40Block49PC := 62.
        ].
        recoveredBlock40Block49Step = 62 ifTrue: [
            recoveredBlock40Block49Stack3 := recoveredBlock40Arg1.
            recoveredBlock40Block49PC := 65.
        ].
        recoveredBlock40Block49Step = 65 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) getPosition.
            recoveredBlock40Block49PC := 67.
        ].
        recoveredBlock40Block49Step = 67 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) x.
            recoveredBlock40Block49PC := 69.
        ].
        recoveredBlock40Block49Step = 69 ifTrue: [
            recoveredBlock40Block49Stack4 := 20.
            recoveredBlock40Block49PC := 71.
        ].
        recoveredBlock40Block49Step = 71 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) + (recoveredBlock40Block49Stack4).
            recoveredBlock40Block49PC := 72.
        ].
        recoveredBlock40Block49Step = 72 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) = (recoveredBlock40Block49Stack3).
            recoveredBlock40Block49PC := 73.
        ].
        recoveredBlock40Block49Step = 73 ifTrue: [
            (recoveredBlock40Block49Stack2) ifTrue: [recoveredBlock40Block49PC := 76] ifFalse: [recoveredBlock40Block49PC := 95].
        ].
        recoveredBlock40Block49Step = 76 ifTrue: [
            recoveredBlock40Block49Stack2 := recoveredBlock40Block49Arg1.
            recoveredBlock40Block49PC := 77.
        ].
        recoveredBlock40Block49Step = 77 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) getPosition.
            recoveredBlock40Block49PC := 79.
        ].
        recoveredBlock40Block49Step = 79 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) y.
            recoveredBlock40Block49PC := 81.
        ].
        recoveredBlock40Block49Step = 81 ifTrue: [
            recoveredBlock40Block49Stack3 := recoveredBlock40Arg1.
            recoveredBlock40Block49PC := 84.
        ].
        recoveredBlock40Block49Step = 84 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) getPosition.
            recoveredBlock40Block49PC := 86.
        ].
        recoveredBlock40Block49Step = 86 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) y.
            recoveredBlock40Block49PC := 88.
        ].
        recoveredBlock40Block49Step = 88 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) = (recoveredBlock40Block49Stack3).
            recoveredBlock40Block49PC := 89.
        ].
        recoveredBlock40Block49Step = 89 ifTrue: [
            (recoveredBlock40Block49Stack2) ifTrue: [recoveredBlock40Block49PC := 92] ifFalse: [recoveredBlock40Block49PC := 95].
        ].
        recoveredBlock40Block49Step = 92 ifTrue: [
            recoveredBlock40Block49PC := 93.
        ].
        recoveredBlock40Block49Step = 93 ifTrue: [
            recoveredBlock40Block49Stack1 := true.
            recoveredBlock40Block49PC := 94.
        ].
        recoveredBlock40Block49Step = 94 ifTrue: [
            ^recoveredBlock40Block49Stack1
        ].
        recoveredBlock40Block49Step = 95 ifTrue: [
            recoveredBlock40Block49Result := recoveredBlock40Block49Stack1.
            recoveredBlock40Block49Done := true.
        ].
    ].
    recoveredBlock40Block49Result
].
    recoveredBlock40Value2 := (recoveredBlock40Value0) do: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
    (recoveredValue6) do: (recoveredValue7).
    ^false
! !

"ASDBase.ic method 0x20426f48; bytecode file offset 0xd2382c"
!ASDBDEEasterEggs methodsFor: 'recovered'!
detectUpCollision: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) graphPaneController.
    recoveredValue2 := (recoveredValue1) graphicObjects.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock8Arg1 | 
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
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) includes: (recoveredBlock8Stack3).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 31] ifFalse: [recoveredBlock8PC := 24].
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
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) ~= (recoveredBlock8Stack2).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue5 := (recoveredValue3) reject: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := [:recoveredBlock40Block49Arg1 | 
    | recoveredBlock40Block49Stack0 recoveredBlock40Block49Stack1 recoveredBlock40Block49Stack2 recoveredBlock40Block49Stack3 recoveredBlock40Block49Stack4 recoveredBlock40Block49Stack5 recoveredBlock40Block49PC recoveredBlock40Block49Step recoveredBlock40Block49Done recoveredBlock40Block49Result |
    recoveredBlock40Block49Stack0 := self.
    recoveredBlock40Block49PC := 56.
    recoveredBlock40Block49Done := false.
    [recoveredBlock40Block49Done not] whileTrue: [
        recoveredBlock40Block49Step := recoveredBlock40Block49PC.
        recoveredBlock40Block49Step = 56 ifTrue: [
            recoveredBlock40Block49Stack1 := nil.
            recoveredBlock40Block49PC := 57.
        ].
        recoveredBlock40Block49Step = 57 ifTrue: [
            recoveredBlock40Block49Stack2 := recoveredBlock40Block49Arg1.
            recoveredBlock40Block49PC := 58.
        ].
        recoveredBlock40Block49Step = 58 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) getPosition.
            recoveredBlock40Block49PC := 60.
        ].
        recoveredBlock40Block49Step = 60 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) y.
            recoveredBlock40Block49PC := 62.
        ].
        recoveredBlock40Block49Step = 62 ifTrue: [
            recoveredBlock40Block49Stack3 := recoveredBlock40Arg1.
            recoveredBlock40Block49PC := 65.
        ].
        recoveredBlock40Block49Step = 65 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) getPosition.
            recoveredBlock40Block49PC := 67.
        ].
        recoveredBlock40Block49Step = 67 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) y.
            recoveredBlock40Block49PC := 69.
        ].
        recoveredBlock40Block49Step = 69 ifTrue: [
            recoveredBlock40Block49Stack4 := 20.
            recoveredBlock40Block49PC := 71.
        ].
        recoveredBlock40Block49Step = 71 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) + (recoveredBlock40Block49Stack4).
            recoveredBlock40Block49PC := 72.
        ].
        recoveredBlock40Block49Step = 72 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) = (recoveredBlock40Block49Stack3).
            recoveredBlock40Block49PC := 73.
        ].
        recoveredBlock40Block49Step = 73 ifTrue: [
            (recoveredBlock40Block49Stack2) ifTrue: [recoveredBlock40Block49PC := 76] ifFalse: [recoveredBlock40Block49PC := 95].
        ].
        recoveredBlock40Block49Step = 76 ifTrue: [
            recoveredBlock40Block49Stack2 := recoveredBlock40Block49Arg1.
            recoveredBlock40Block49PC := 77.
        ].
        recoveredBlock40Block49Step = 77 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) getPosition.
            recoveredBlock40Block49PC := 79.
        ].
        recoveredBlock40Block49Step = 79 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) x.
            recoveredBlock40Block49PC := 81.
        ].
        recoveredBlock40Block49Step = 81 ifTrue: [
            recoveredBlock40Block49Stack3 := recoveredBlock40Arg1.
            recoveredBlock40Block49PC := 84.
        ].
        recoveredBlock40Block49Step = 84 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) getPosition.
            recoveredBlock40Block49PC := 86.
        ].
        recoveredBlock40Block49Step = 86 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) x.
            recoveredBlock40Block49PC := 88.
        ].
        recoveredBlock40Block49Step = 88 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) = (recoveredBlock40Block49Stack3).
            recoveredBlock40Block49PC := 89.
        ].
        recoveredBlock40Block49Step = 89 ifTrue: [
            (recoveredBlock40Block49Stack2) ifTrue: [recoveredBlock40Block49PC := 92] ifFalse: [recoveredBlock40Block49PC := 95].
        ].
        recoveredBlock40Block49Step = 92 ifTrue: [
            recoveredBlock40Block49PC := 93.
        ].
        recoveredBlock40Block49Step = 93 ifTrue: [
            recoveredBlock40Block49Stack1 := true.
            recoveredBlock40Block49PC := 94.
        ].
        recoveredBlock40Block49Step = 94 ifTrue: [
            ^recoveredBlock40Block49Stack1
        ].
        recoveredBlock40Block49Step = 95 ifTrue: [
            recoveredBlock40Block49Result := recoveredBlock40Block49Stack1.
            recoveredBlock40Block49Done := true.
        ].
    ].
    recoveredBlock40Block49Result
].
    recoveredBlock40Value2 := (recoveredBlock40Value0) do: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
    (recoveredValue6) do: (recoveredValue7).
    ^false
! !

"ASDBase.ic method 0x20426fe8; bytecode file offset 0xd23904"
!ASDBDEEasterEggs methodsFor: 'recovered'!
detectDownCollision: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) graphPaneController.
    recoveredValue2 := (recoveredValue1) graphicObjects.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock8Arg1 | 
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
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) includes: (recoveredBlock8Stack3).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 31] ifFalse: [recoveredBlock8PC := 24].
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
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) ~= (recoveredBlock8Stack2).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue5 := (recoveredValue3) reject: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := [:recoveredBlock40Block49Arg1 | 
    | recoveredBlock40Block49Stack0 recoveredBlock40Block49Stack1 recoveredBlock40Block49Stack2 recoveredBlock40Block49Stack3 recoveredBlock40Block49Stack4 recoveredBlock40Block49Stack5 recoveredBlock40Block49PC recoveredBlock40Block49Step recoveredBlock40Block49Done recoveredBlock40Block49Result |
    recoveredBlock40Block49Stack0 := self.
    recoveredBlock40Block49PC := 56.
    recoveredBlock40Block49Done := false.
    [recoveredBlock40Block49Done not] whileTrue: [
        recoveredBlock40Block49Step := recoveredBlock40Block49PC.
        recoveredBlock40Block49Step = 56 ifTrue: [
            recoveredBlock40Block49Stack1 := nil.
            recoveredBlock40Block49PC := 57.
        ].
        recoveredBlock40Block49Step = 57 ifTrue: [
            recoveredBlock40Block49Stack2 := recoveredBlock40Block49Arg1.
            recoveredBlock40Block49PC := 58.
        ].
        recoveredBlock40Block49Step = 58 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) getPosition.
            recoveredBlock40Block49PC := 60.
        ].
        recoveredBlock40Block49Step = 60 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) y.
            recoveredBlock40Block49PC := 62.
        ].
        recoveredBlock40Block49Step = 62 ifTrue: [
            recoveredBlock40Block49Stack3 := recoveredBlock40Arg1.
            recoveredBlock40Block49PC := 65.
        ].
        recoveredBlock40Block49Step = 65 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) getPosition.
            recoveredBlock40Block49PC := 67.
        ].
        recoveredBlock40Block49Step = 67 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) y.
            recoveredBlock40Block49PC := 69.
        ].
        recoveredBlock40Block49Step = 69 ifTrue: [
            recoveredBlock40Block49Stack4 := 20.
            recoveredBlock40Block49PC := 71.
        ].
        recoveredBlock40Block49Step = 71 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) - (recoveredBlock40Block49Stack4).
            recoveredBlock40Block49PC := 72.
        ].
        recoveredBlock40Block49Step = 72 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) = (recoveredBlock40Block49Stack3).
            recoveredBlock40Block49PC := 73.
        ].
        recoveredBlock40Block49Step = 73 ifTrue: [
            (recoveredBlock40Block49Stack2) ifTrue: [recoveredBlock40Block49PC := 76] ifFalse: [recoveredBlock40Block49PC := 95].
        ].
        recoveredBlock40Block49Step = 76 ifTrue: [
            recoveredBlock40Block49Stack2 := recoveredBlock40Block49Arg1.
            recoveredBlock40Block49PC := 77.
        ].
        recoveredBlock40Block49Step = 77 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) getPosition.
            recoveredBlock40Block49PC := 79.
        ].
        recoveredBlock40Block49Step = 79 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) x.
            recoveredBlock40Block49PC := 81.
        ].
        recoveredBlock40Block49Step = 81 ifTrue: [
            recoveredBlock40Block49Stack3 := recoveredBlock40Arg1.
            recoveredBlock40Block49PC := 84.
        ].
        recoveredBlock40Block49Step = 84 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) getPosition.
            recoveredBlock40Block49PC := 86.
        ].
        recoveredBlock40Block49Step = 86 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) x.
            recoveredBlock40Block49PC := 88.
        ].
        recoveredBlock40Block49Step = 88 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) = (recoveredBlock40Block49Stack3).
            recoveredBlock40Block49PC := 89.
        ].
        recoveredBlock40Block49Step = 89 ifTrue: [
            (recoveredBlock40Block49Stack2) ifTrue: [recoveredBlock40Block49PC := 92] ifFalse: [recoveredBlock40Block49PC := 95].
        ].
        recoveredBlock40Block49Step = 92 ifTrue: [
            recoveredBlock40Block49PC := 93.
        ].
        recoveredBlock40Block49Step = 93 ifTrue: [
            recoveredBlock40Block49Stack1 := true.
            recoveredBlock40Block49PC := 94.
        ].
        recoveredBlock40Block49Step = 94 ifTrue: [
            ^recoveredBlock40Block49Stack1
        ].
        recoveredBlock40Block49Step = 95 ifTrue: [
            recoveredBlock40Block49Result := recoveredBlock40Block49Stack1.
            recoveredBlock40Block49Done := true.
        ].
    ].
    recoveredBlock40Block49Result
].
    recoveredBlock40Value2 := (recoveredBlock40Value0) do: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
    (recoveredValue6) do: (recoveredValue7).
    ^false
! !

"ASDBase.ic method 0x20427020; bytecode file offset 0xd23904"
!ASDBDEEasterEggs methodsFor: 'recovered'!
detectRightCollision: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) graphPaneController.
    recoveredValue2 := (recoveredValue1) graphicObjects.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock8Arg1 | 
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
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) includes: (recoveredBlock8Stack3).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 31] ifFalse: [recoveredBlock8PC := 24].
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
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) ~= (recoveredBlock8Stack2).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue5 := (recoveredValue3) reject: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := [:recoveredBlock40Block49Arg1 | 
    | recoveredBlock40Block49Stack0 recoveredBlock40Block49Stack1 recoveredBlock40Block49Stack2 recoveredBlock40Block49Stack3 recoveredBlock40Block49Stack4 recoveredBlock40Block49Stack5 recoveredBlock40Block49PC recoveredBlock40Block49Step recoveredBlock40Block49Done recoveredBlock40Block49Result |
    recoveredBlock40Block49Stack0 := self.
    recoveredBlock40Block49PC := 56.
    recoveredBlock40Block49Done := false.
    [recoveredBlock40Block49Done not] whileTrue: [
        recoveredBlock40Block49Step := recoveredBlock40Block49PC.
        recoveredBlock40Block49Step = 56 ifTrue: [
            recoveredBlock40Block49Stack1 := nil.
            recoveredBlock40Block49PC := 57.
        ].
        recoveredBlock40Block49Step = 57 ifTrue: [
            recoveredBlock40Block49Stack2 := recoveredBlock40Block49Arg1.
            recoveredBlock40Block49PC := 58.
        ].
        recoveredBlock40Block49Step = 58 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) getPosition.
            recoveredBlock40Block49PC := 60.
        ].
        recoveredBlock40Block49Step = 60 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) x.
            recoveredBlock40Block49PC := 62.
        ].
        recoveredBlock40Block49Step = 62 ifTrue: [
            recoveredBlock40Block49Stack3 := recoveredBlock40Arg1.
            recoveredBlock40Block49PC := 65.
        ].
        recoveredBlock40Block49Step = 65 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) getPosition.
            recoveredBlock40Block49PC := 67.
        ].
        recoveredBlock40Block49Step = 67 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) x.
            recoveredBlock40Block49PC := 69.
        ].
        recoveredBlock40Block49Step = 69 ifTrue: [
            recoveredBlock40Block49Stack4 := 20.
            recoveredBlock40Block49PC := 71.
        ].
        recoveredBlock40Block49Step = 71 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) - (recoveredBlock40Block49Stack4).
            recoveredBlock40Block49PC := 72.
        ].
        recoveredBlock40Block49Step = 72 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) = (recoveredBlock40Block49Stack3).
            recoveredBlock40Block49PC := 73.
        ].
        recoveredBlock40Block49Step = 73 ifTrue: [
            (recoveredBlock40Block49Stack2) ifTrue: [recoveredBlock40Block49PC := 76] ifFalse: [recoveredBlock40Block49PC := 95].
        ].
        recoveredBlock40Block49Step = 76 ifTrue: [
            recoveredBlock40Block49Stack2 := recoveredBlock40Block49Arg1.
            recoveredBlock40Block49PC := 77.
        ].
        recoveredBlock40Block49Step = 77 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) getPosition.
            recoveredBlock40Block49PC := 79.
        ].
        recoveredBlock40Block49Step = 79 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) y.
            recoveredBlock40Block49PC := 81.
        ].
        recoveredBlock40Block49Step = 81 ifTrue: [
            recoveredBlock40Block49Stack3 := recoveredBlock40Arg1.
            recoveredBlock40Block49PC := 84.
        ].
        recoveredBlock40Block49Step = 84 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) getPosition.
            recoveredBlock40Block49PC := 86.
        ].
        recoveredBlock40Block49Step = 86 ifTrue: [
            recoveredBlock40Block49Stack3 := (recoveredBlock40Block49Stack3) y.
            recoveredBlock40Block49PC := 88.
        ].
        recoveredBlock40Block49Step = 88 ifTrue: [
            recoveredBlock40Block49Stack2 := (recoveredBlock40Block49Stack2) = (recoveredBlock40Block49Stack3).
            recoveredBlock40Block49PC := 89.
        ].
        recoveredBlock40Block49Step = 89 ifTrue: [
            (recoveredBlock40Block49Stack2) ifTrue: [recoveredBlock40Block49PC := 92] ifFalse: [recoveredBlock40Block49PC := 95].
        ].
        recoveredBlock40Block49Step = 92 ifTrue: [
            recoveredBlock40Block49PC := 93.
        ].
        recoveredBlock40Block49Step = 93 ifTrue: [
            recoveredBlock40Block49Stack1 := true.
            recoveredBlock40Block49PC := 94.
        ].
        recoveredBlock40Block49Step = 94 ifTrue: [
            ^recoveredBlock40Block49Stack1
        ].
        recoveredBlock40Block49Step = 95 ifTrue: [
            recoveredBlock40Block49Result := recoveredBlock40Block49Stack1.
            recoveredBlock40Block49Done := true.
        ].
    ].
    recoveredBlock40Block49Result
].
    recoveredBlock40Value2 := (recoveredBlock40Value0) do: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
    (recoveredValue6) do: (recoveredValue7).
    ^false
! !

"ASDBase.ic method 0x204f8c20; bytecode file offset 0xdf5578"
!ASDBDEEasterEggs methodsFor: 'recovered'!
createWidgetHierarchyPageGraphics: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'scrollingPane'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block28109f3cArg1 | 
    | block28109f3cValue0 block28109f3cValue1 block28109f3cValue2 block28109f3cValue3 block28109f3cValue4 block28109f3cValue5 |
    block28109f3cValue0 := block28109f3cArg1.
    block28109f3cValue1 := block28109f3cValue0.
    (block28109f3cValue1) borderWidth: (1).
    block28109f3cValue2 := block28109f3cValue0.
    block28109f3cValue3 := XmAUTOMATIC.
    (block28109f3cValue2) scrollingPolicy: (block28109f3cValue3).
    block28109f3cValue4 := XmASNEEDED.
    block28109f3cValue5 := (block28109f3cValue0) scrollBarDisplayPolicy: (block28109f3cValue4).
    block28109f3cValue5
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledWindow: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'scrollingPane'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'graphicPane'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:block28109f60Arg1 | 
    | block28109f60Value0 block28109f60Value1 block28109f60Value2 block28109f60Value3 block28109f60Value4 block28109f60Value5 block28109f60Value6 block28109f60Value7 block28109f60Value8 block28109f60Value9 block28109f60Value10 |
    block28109f60Value0 := block28109f60Arg1.
    block28109f60Value1 := block28109f60Value0.
    block28109f60Value2 := ASDBlockDiagramEditorOptions.
    block28109f60Value3 := (block28109f60Value2) instance.
    block28109f60Value4 := (block28109f60Value3) optionDrawingAreaSize.
    block28109f60Value5 := (block28109f60Value4) y.
    (block28109f60Value1) height: (block28109f60Value5).
    block28109f60Value6 := ASDBlockDiagramEditorOptions.
    block28109f60Value7 := (block28109f60Value6) instance.
    block28109f60Value8 := (block28109f60Value7) optionDrawingAreaSize.
    block28109f60Value9 := (block28109f60Value8) x.
    block28109f60Value10 := (block28109f60Value0) width: (block28109f60Value9).
    block28109f60Value10
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRBScrolledDrawingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 'graphicPane'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := PointerMotionMask.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := 'motion:clientData:callData:'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := 'subwidgetFocus:clientData:callData:'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack5 := (recoveredStack5) lastFocusWidget.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 'subwidgetLoosingFocus:clientData:callData:'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := (recoveredStack4) lastFocusWidget.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := [:block28109f84Arg1 | 
    | block28109f84Value0 block28109f84Value1 block28109f84Value2 block28109f84Value3 block28109f84Value4 block28109f84Value5 block28109f84Value6 block28109f84Value7 block28109f84Value8 block28109f84Value9 |
    block28109f84Value0 := block28109f84Arg1.
    block28109f84Value1 := block28109f84Value0.
    block28109f84Value2 := XmATTACHFORM.
    (block28109f84Value1) leftAttachment: (block28109f84Value2).
    block28109f84Value3 := block28109f84Value0.
    block28109f84Value4 := XmATTACHFORM.
    (block28109f84Value3) rightAttachment: (block28109f84Value4).
    block28109f84Value5 := block28109f84Value0.
    block28109f84Value6 := XmATTACHFORM.
    (block28109f84Value5) bottomAttachment: (block28109f84Value6).
    block28109f84Value7 := block28109f84Value0.
    block28109f84Value8 := XmATTACHFORM.
    (block28109f84Value7) topAttachment: (block28109f84Value8).
    block28109f84Value9 := (block28109f84Value0) topOffset: (0).
    block28109f84Value9
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205991ec; bytecode file offset 0xe95b80"
!ASDBDEEasterEggs methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28114fdcArg1 | 
    | block28114fdcValue0 block28114fdcValue1 block28114fdcValue2 block28114fdcValue3 block28114fdcValue4 block28114fdcValue5 block28114fdcValue6 block28114fdcValue7 block28114fdcValue8 block28114fdcValue9 block28114fdcValue10 block28114fdcValue11 block28114fdcValue12 block28114fdcValue13 block28114fdcValue14 block28114fdcValue15 |
    block28114fdcValue0 := block28114fdcArg1.
    block28114fdcValue1 := block28114fdcValue0.
    (block28114fdcValue1) title: ('Window').
    block28114fdcValue2 := block28114fdcValue0.
    (block28114fdcValue2) height: (722).
    block28114fdcValue3 := block28114fdcValue0.
    (block28114fdcValue3) width: (1016).
    block28114fdcValue4 := MWMDECORALL.
    block28114fdcValue5 := MWMDECORBORDER.
    block28114fdcValue6 := (block28114fdcValue4) | (block28114fdcValue5).
    block28114fdcValue7 := MWMDECORTITLE.
    block28114fdcValue8 := (block28114fdcValue6) | (block28114fdcValue7).
    block28114fdcValue9 := MWMDECORMINIMIZE.
    block28114fdcValue10 := (block28114fdcValue8) | (block28114fdcValue9).
    block28114fdcValue11 := MWMDECORMAXIMIZE.
    block28114fdcValue12 := (block28114fdcValue10) | (block28114fdcValue11).
    block28114fdcValue13 := MWMDECORRESIZEH.
    block28114fdcValue14 := (block28114fdcValue12) | (block28114fdcValue13).
    block28114fdcValue15 := (block28114fdcValue0) mwmDecorations: (block28114fdcValue14).
    block28114fdcValue15
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 'form'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'form'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 'notebook'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := [:block28115000Arg1 | 
    | block28115000Value0 block28115000Value1 block28115000Value2 |
    block28115000Value0 := block28115000Arg1.
    block28115000Value1 := block28115000Value0.
    (block28115000Value1) vertical: (true).
    block28115000Value2 := block28115000Value0.
    (block28115000Value2) onBottom: (true).
    block28115000Value0
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasTabStrip: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 'outerNotebook'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := [:recoveredBlock164Arg1 | 
    | recoveredBlock164Value0 recoveredBlock164Value1 recoveredBlock164Value2 |
    recoveredBlock164Value0 := recoveredBlock164Arg1.
    recoveredBlock164Value1 := recoveredLocal22.
    recoveredBlock164Value2 := (recoveredBlock164Value0) workWindow: (recoveredBlock164Value1).
    recoveredBlock164Value2
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := [:block28115024Arg1 | 
    | block28115024Value0 block28115024Value1 block28115024Value2 block28115024Value3 block28115024Value4 block28115024Value5 block28115024Value6 block28115024Value7 block28115024Value8 block28115024Value9 block28115024Value10 block28115024Value11 block28115024Value12 |
    block28115024Value0 := block28115024Arg1.
    block28115024Value1 := block28115024Value0.
    block28115024Value2 := XmATTACHFORM.
    (block28115024Value1) bottomAttachment: (block28115024Value2).
    block28115024Value3 := block28115024Value0.
    (block28115024Value3) bottomOffset: (0).
    block28115024Value4 := block28115024Value0.
    block28115024Value5 := XmATTACHFORM.
    (block28115024Value4) topAttachment: (block28115024Value5).
    block28115024Value6 := block28115024Value0.
    (block28115024Value6) topOffset: (0).
    block28115024Value7 := block28115024Value0.
    block28115024Value8 := XmATTACHFORM.
    (block28115024Value7) leftAttachment: (block28115024Value8).
    block28115024Value9 := block28115024Value0.
    (block28115024Value9) leftOffset: (0).
    block28115024Value10 := block28115024Value0.
    block28115024Value11 := XmATTACHFORM.
    (block28115024Value10) rightAttachment: (block28115024Value11).
    block28115024Value12 := (block28115024Value0) rightOffset: (0).
    block28115024Value12
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := 'topShellFocus:clientData:callData:'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := XmNresizeCallback.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack5 := 'resizeTabStrip:clientData:callData:'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := XmNmodifyVerifyCallback.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack5 := 'modifyVerifyTabStrip:clientData:callData:'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack4 := 'outerSingleSelectionTabStrip:clientData:callData:'.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredLocal25.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

