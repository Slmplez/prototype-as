"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200468ec; bytecode file offset 0x9451f8"
!RBButtonPalette methodsFor: 'recovered'!
buttonBar
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonBar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20059da0; bytecode file offset 0x9566ac"
!RBButtonPalette methodsFor: 'recovered'!
addButton: recoveredArg1 widgetID: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200a9b94; bytecode file offset 0x9a6780"
!RBButtonPalette methodsFor: 'recovered'!
createPaletteContentIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) widgetDictionary.
    (self) addButtons: (recoveredValue0) widgetDictionary: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20265038; bytecode file offset 0xb61904"
!RBButtonPalette methodsFor: 'recovered'!
calculateHeight
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) buttonBar.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) y.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    recoveredBlock11Value3 := (recoveredBlock11Value2) height.
    recoveredBlock11Value4 := (recoveredBlock11Value1) + (recoveredBlock11Value3).
    recoveredBlock11Value5 := recoveredLocal1.
    recoveredBlock11Value6 := (recoveredBlock11Value4) max: (recoveredBlock11Value5).
    recoveredBlock11Value7 := recoveredBlock11Value6.
    recoveredLocal1 := recoveredBlock11Value7.
    recoveredBlock11Value6
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202b76e0; bytecode file offset 0xbb3fc4"
!RBButtonPalette methodsFor: 'recovered'!
addSeparator: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := (self) class.
    recoveredBlock7Value3 := (recoveredBlock7Value2) buttonSize.
    (recoveredBlock7Value1) height: (recoveredBlock7Value3).
    recoveredBlock7Value4 := recoveredBlock7Value0.
    (recoveredBlock7Value4) width: (10).
    recoveredBlock7Value5 := recoveredBlock7Value0.
    (recoveredBlock7Value5) recomputeSize: (false).
    recoveredBlock7Value6 := recoveredBlock7Value0.
    recoveredBlock7Value7 := XmICON.
    (recoveredBlock7Value6) labelType: (recoveredBlock7Value7).
    recoveredBlock7Value8 := XmALIGNMENTEND.
    recoveredBlock7Value9 := (recoveredBlock7Value0) alignment: (recoveredBlock7Value8).
    recoveredBlock7Value9
].
    recoveredValue2 := (recoveredValue0) createLabel: ('separator') argBlock: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) manageChild.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202b7748; bytecode file offset 0xbb402c"
!RBButtonPalette methodsFor: 'recovered'!
addSeparatorLine: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    (recoveredBlock7Value1) height: (2).
    recoveredBlock7Value2 := recoveredBlock7Value0.
    recoveredBlock7Value3 := (self) class.
    recoveredBlock7Value4 := (recoveredBlock7Value3) paletteWidth.
    (recoveredBlock7Value2) width: (recoveredBlock7Value4).
    recoveredBlock7Value5 := recoveredBlock7Value0.
    (recoveredBlock7Value5) recomputeSize: (false).
    recoveredBlock7Value6 := recoveredBlock7Value0.
    recoveredBlock7Value7 := XmICON.
    (recoveredBlock7Value6) labelType: (recoveredBlock7Value7).
    recoveredBlock7Value8 := XmALIGNMENTEND.
    recoveredBlock7Value9 := (recoveredBlock7Value0) alignment: (recoveredBlock7Value8).
    recoveredBlock7Value9
].
    recoveredValue2 := (recoveredValue0) createLabel: ('separatorLine') argBlock: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) manageChild.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20391b98; bytecode file offset 0xc8e494"
!RBButtonPalette methodsFor: 'recovered'!
addButtonBar: recoveredArg1 widgetID: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 recoveredBlock7Value13 recoveredBlock7Value14 recoveredBlock7Value15 recoveredBlock7Value16 recoveredBlock7Value17 recoveredBlock7Value18 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    (recoveredBlock7Value1) spacing: (0).
    recoveredBlock7Value2 := recoveredBlock7Value0.
    recoveredBlock7Value3 := (self) class.
    recoveredBlock7Value4 := (recoveredBlock7Value3) paletteWidth.
    (recoveredBlock7Value2) width: (recoveredBlock7Value4).
    recoveredBlock7Value5 := recoveredBlock7Value0.
    recoveredBlock7Value6 := XmPACKTIGHT.
    (recoveredBlock7Value5) packing: (recoveredBlock7Value6).
    recoveredBlock7Value7 := recoveredBlock7Value0.
    (recoveredBlock7Value7) marginHeight: (0).
    recoveredBlock7Value8 := recoveredBlock7Value0.
    recoveredBlock7Value9 := XmHORIZONTAL.
    (recoveredBlock7Value8) orientation: (recoveredBlock7Value9).
    recoveredBlock7Value10 := recoveredBlock7Value0.
    recoveredBlock7Value11 := XmATTACHFORM.
    (recoveredBlock7Value10) topAttachment: (recoveredBlock7Value11).
    recoveredBlock7Value12 := recoveredBlock7Value0.
    (recoveredBlock7Value12) topOffset: (1).
    recoveredBlock7Value13 := recoveredBlock7Value0.
    recoveredBlock7Value14 := XmATTACHFORM.
    (recoveredBlock7Value13) bottomAttachment: (recoveredBlock7Value14).
    recoveredBlock7Value15 := recoveredBlock7Value0.
    recoveredBlock7Value16 := XmATTACHFORM.
    (recoveredBlock7Value15) leftAttachment: (recoveredBlock7Value16).
    recoveredBlock7Value17 := recoveredBlock7Value0.
    recoveredBlock7Value18 := XmATTACHFORM.
    (recoveredBlock7Value17) rightAttachment: (recoveredBlock7Value18).
    recoveredBlock7Value0
].
    recoveredValue4 := (recoveredValue0) createRowColumn: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) manageChild.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20409c1c; bytecode file offset 0xd0651c"
!RBButtonPalette methodsFor: 'recovered'!
paletteButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonIDForSelector: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := ' ('.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := ASDUserActionObserver.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'Palette'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) userInterface.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) addUserAction: (recoveredStack1) type: (recoveredStack2) window: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20452c6c; bytecode file offset 0xd4f564"
!RBButtonPalette methodsFor: 'recovered'!
addButtons: recoveredArg1 widgetDictionary: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) asdGeneralOptions.
    recoveredValue2 := (recoveredValue1) optionDisabledButtons.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) addButtonBar: (recoveredValue3) widgetID: ('buttonBar').
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue5) at: ('buttonBar') put: (recoveredValue6).
    recoveredValue7 := (self) userInterface.
    recoveredValue8 := (recoveredValue7) visiblePaletteButtons.
    recoveredValue9 := (self) paletteName.
    recoveredValue10 := (recoveredValue8) at: (recoveredValue9).
    recoveredValue11 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Stack2 := recoveredLocal1.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) includes: (recoveredBlock41Stack3).
            recoveredBlock41PC := 55.
        ].
        recoveredBlock41Step = 55 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 101] ifFalse: [recoveredBlock41PC := 58].
        ].
        recoveredBlock41Step = 58 ifTrue: [
            recoveredBlock41PC := 59.
        ].
        recoveredBlock41Step = 59 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack2 := 'Separator'.
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) = (recoveredBlock41Stack2).
            recoveredBlock41PC := 63.
        ].
        recoveredBlock41Step = 63 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 66] ifFalse: [recoveredBlock41PC := 76].
        ].
        recoveredBlock41Step = 66 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 67.
        ].
        recoveredBlock41Step = 67 ifTrue: [
            recoveredBlock41Stack2 := recoveredLocal2.
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) addSeparator: (recoveredBlock41Stack2).
            recoveredBlock41PC := 72.
        ].
        recoveredBlock41Step = 72 ifTrue: [
            recoveredBlock41PC := 101.
        ].
        recoveredBlock41Step = 76 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 77.
        ].
        recoveredBlock41Step = 77 ifTrue: [
            recoveredBlock41Stack2 := 'SeparatorLine'.
            recoveredBlock41PC := 79.
        ].
        recoveredBlock41Step = 79 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) = (recoveredBlock41Stack2).
            recoveredBlock41PC := 80.
        ].
        recoveredBlock41Step = 80 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 84] ifFalse: [recoveredBlock41PC := 94].
        ].
        recoveredBlock41Step = 84 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 85.
        ].
        recoveredBlock41Step = 85 ifTrue: [
            recoveredBlock41Stack2 := recoveredLocal2.
            recoveredBlock41PC := 88.
        ].
        recoveredBlock41Step = 88 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) addSeparatorLine: (recoveredBlock41Stack2).
            recoveredBlock41PC := 90.
        ].
        recoveredBlock41Step = 90 ifTrue: [
            recoveredBlock41PC := 101.
        ].
        recoveredBlock41Step = 94 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 95.
        ].
        recoveredBlock41Step = 95 ifTrue: [
            recoveredBlock41Stack2 := recoveredLocal2.
            recoveredBlock41PC := 98.
        ].
        recoveredBlock41Step = 98 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 99.
        ].
        recoveredBlock41Step = 99 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) addButton: (recoveredBlock41Stack2) widgetID: (recoveredBlock41Stack3).
            recoveredBlock41PC := 101.
        ].
        recoveredBlock41Step = 101 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    (self) addSeparatorLine: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20455cbc; bytecode file offset 0xd525cc"
!RBButtonPalette methodsFor: 'recovered'!
addButton: recoveredArg1 widgetID: recoveredArg2 icon: recoveredArg3 userData: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 recoveredBlock11Value11 recoveredBlock11Value12 recoveredBlock11Value13 recoveredBlock11Value14 recoveredBlock11Value15 recoveredBlock11Value16 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredBlock11Value0.
    recoveredBlock11Value2 := XmICON.
    (recoveredBlock11Value1) labelType: (recoveredBlock11Value2).
    recoveredBlock11Value3 := recoveredBlock11Value0.
    recoveredBlock11Value4 := recoveredArg3.
    (recoveredBlock11Value3) labelIcon: (recoveredBlock11Value4).
    recoveredBlock11Value5 := recoveredBlock11Value0.
    recoveredBlock11Value6 := recoveredArg3.
    recoveredBlock11Value7 := (recoveredBlock11Value6) getGrayedIcon.
    (recoveredBlock11Value5) labelInsensitiveIcon: (recoveredBlock11Value7).
    recoveredBlock11Value8 := recoveredBlock11Value0.
    recoveredBlock11Value9 := recoveredArg4.
    (recoveredBlock11Value8) userData: (recoveredBlock11Value9).
    recoveredBlock11Value10 := recoveredBlock11Value0.
    recoveredBlock11Value11 := (self) class.
    recoveredBlock11Value12 := (recoveredBlock11Value11) buttonSize.
    (recoveredBlock11Value10) height: (recoveredBlock11Value12).
    recoveredBlock11Value13 := recoveredBlock11Value0.
    recoveredBlock11Value14 := (self) class.
    recoveredBlock11Value15 := (recoveredBlock11Value14) buttonSize.
    (recoveredBlock11Value13) width: (recoveredBlock11Value15).
    recoveredBlock11Value16 := recoveredBlock11Value0.
    (recoveredBlock11Value16) recomputeSize: (false).
    recoveredBlock11Value0
].
    recoveredValue4 := (recoveredValue0) createPushButton: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) manageChild.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) userInterface.
    recoveredValue7 := (recoveredValue6) bubbleHelpManager.
    recoveredValue8 := [
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 recoveredBlock76Value3 recoveredBlock76Value4 |
    recoveredBlock76Value0 := (self) userInterface.
    recoveredBlock76Value1 := (recoveredBlock76Value0) registeredToolbarItems.
    recoveredBlock76Value2 := recoveredArg2.
    recoveredBlock76Value3 := (recoveredBlock76Value1) at: (recoveredBlock76Value2).
    recoveredBlock76Value4 := (recoveredBlock76Value3) tooltip.
    recoveredBlock76Value4
].
    recoveredValue9 := recoveredLocal1.
    (recoveredValue7) addHelpString: (recoveredValue8) forWidget: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := XmNactivateCallback.
    (recoveredValue10) addCallback: (recoveredValue11) receiver: (self) selector: ('paletteButtonActivate:clientData:callData:') clientData: (nil).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

