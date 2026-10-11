"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013c5c; bytecode file offset 0x912098"
!CwPrinterPrompter methodsFor: 'recovered'!
scOk
    | recoveredValue0 |
    recoveredValue0 := SCOk.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200155ac; bytecode file offset 0x912098"
!CwPrinterPrompter methodsFor: 'recovered'!
scCancel
    | recoveredValue0 |
    recoveredValue0 := SCCancel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003cda8; bytecode file offset 0x93bf94"
!CwPrinterPrompter methodsFor: 'recovered'!
hkOk
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HKOk.
    recoveredValue1 := (recoveredValue0) asLowercase.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ea98; bytecode file offset 0x93bf94"
!CwPrinterPrompter methodsFor: 'recovered'!
hkCancel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HKCancel.
    recoveredValue1 := (recoveredValue0) asLowercase.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20087be0; bytecode file offset 0x9845b8"
!CwPrinterPrompter methodsFor: 'recovered'!
scSetup
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCSetup.
    recoveredValue1 := Dots.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009b620; bytecode file offset 0x99803c"
!CwPrinterPrompter methodsFor: 'recovered'!
initializeEtasPrompter
    (self) updateFonts.
    (self) setIcon.
    ^self
! !

"ASDBase.ic method 0x2009d574; bytecode file offset 0x999e50"
!CwPrinterPrompter methodsFor: 'recovered'!
hkSetup
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCSetup.
    recoveredValue1 := (recoveredValue0) getHotkeyString.
    recoveredValue2 := ('Alt-') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20136dc0; bytecode file offset 0xa336b4"
!CwPrinterPrompter methodsFor: 'recovered'!
setIcon
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBWindowsResourceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultIcon.
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6834; bytecode file offset 0xae3120"
!CwPrinterPrompter methodsFor: 'recovered'!
addKeyPressEventsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := KeyPressMask.
    (recoveredValue0) addEventHandler: (recoveredValue1) receiver: (self) selector: ('keyPress:clientData:callData:') clientData: (nil).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (self) addKeyPressEventsFor: (recoveredBlock16Value0).
    recoveredBlock16Value1
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201ec82c; bytecode file offset 0xae9138"
!CwPrinterPrompter methodsFor: 'recovered'!
updateFonts
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBFontGlobal.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) shell.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (self) updateFont: (recoveredBlock12Value0) for: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2021065c; bytecode file offset 0xb0cf50"
!CwPrinterPrompter methodsFor: 'recovered'!
updateFont: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) updateWidgetFont: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (self) updateFont: (recoveredBlock16Value0) for: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203ee410; bytecode file offset 0xcead14"
!CwPrinterPrompter methodsFor: 'recovered'!
promptWithEtasFonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            resultOK := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultPrinterDisplayName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) displayName: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) validateDisplayName.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) createShell.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) createEtasSpecificChildren.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addUnmapCallback.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) setModalState.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) initializeEtasPrompter.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAndDispatch.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) sleep.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) updateDisplay.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := resultOK.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayName.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0928; bytecode file offset 0xced220"
!CwPrinterPrompter methodsFor: 'recovered'!
keyPress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Mod1Mask.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := Mod1Mask.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) keysym.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLetter.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'Alt-'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) hkOk.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) ok: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) hkCancel.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) cancel: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) hkSetup.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) setup: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20622a04; bytecode file offset 0xf1f3c4"
!CwPrinterPrompter methodsFor: 'recovered'!
createEtasSpecificChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'form'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block2811ee58Arg1 | 
    | block2811ee58Value0 block2811ee58Value1 block2811ee58Value2 block2811ee58Value3 block2811ee58Value4 |
    block2811ee58Value0 := block2811ee58Arg1.
    block2811ee58Value1 := block2811ee58Value0.
    (block2811ee58Value1) autoUnmanage: (false).
    block2811ee58Value2 := block2811ee58Value0.
    (block2811ee58Value2) marginWidth: (10).
    block2811ee58Value3 := block2811ee58Value0.
    (block2811ee58Value3) marginHeight: (10).
    block2811ee58Value4 := (block2811ee58Value0) verticalSpacing: (5).
    block2811ee58Value4
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'PrintersLabel'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block2811ee7cArg1 | 
    | block2811ee7cValue0 block2811ee7cValue1 block2811ee7cValue2 block2811ee7cValue3 block2811ee7cValue4 |
    block2811ee7cValue0 := block2811ee7cArg1.
    block2811ee7cValue1 := block2811ee7cValue0.
    block2811ee7cValue2 := MxCP1.
    (block2811ee7cValue1) labelString: (block2811ee7cValue2).
    block2811ee7cValue3 := XmALIGNMENTBEGINNING.
    block2811ee7cValue4 := (block2811ee7cValue0) alignment: (block2811ee7cValue3).
    block2811ee7cValue4
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'PrinterList'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) printerNameList.
            recoveredBlock69PC := 78.
        ].
        recoveredBlock69Step = 78 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) isEmpty.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            (recoveredBlock69Stack0) ifTrue: [recoveredBlock69PC := 84] ifFalse: [recoveredBlock69PC := 90].
        ].
        recoveredBlock69Step = 84 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 85.
        ].
        recoveredBlock69Step = 85 ifTrue: [
            recoveredBlock69Stack1 := 200.
            recoveredBlock69PC := 88.
        ].
        recoveredBlock69Step = 88 ifTrue: [
            (recoveredBlock69Stack0) width: (recoveredBlock69Stack1).
            recoveredBlock69PC := 90.
        ].
        recoveredBlock69Step = 90 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 91.
        ].
        recoveredBlock69Step = 91 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Stack0.
            recoveredBlock69PC := 92.
        ].
        recoveredBlock69Step = 92 ifTrue: [
            recoveredBlock69Stack2 := XmSINGLESELECT.
            recoveredBlock69PC := 94.
        ].
        recoveredBlock69Step = 94 ifTrue: [
            (recoveredBlock69Stack1) selectionPolicy: (recoveredBlock69Stack2).
            recoveredBlock69Stack1 := recoveredBlock69Stack0.
            recoveredBlock69PC := 97.
        ].
        recoveredBlock69Step = 97 ifTrue: [
            recoveredBlock69Stack2 := 5.
            recoveredBlock69PC := 99.
        ].
        recoveredBlock69Step = 99 ifTrue: [
            (recoveredBlock69Stack1) visibleItemCount: (recoveredBlock69Stack2).
            recoveredBlock69PC := 101.
        ].
        recoveredBlock69Step = 101 ifTrue: [
            recoveredBlock69Stack1 := self.
            recoveredBlock69PC := 102.
        ].
        recoveredBlock69Step = 102 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) printerNameList.
            recoveredBlock69PC := 104.
        ].
        recoveredBlock69Step = 104 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) items: (recoveredBlock69Stack1).
            recoveredBlock69PC := 106.
        ].
        recoveredBlock69Step = 106 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack0.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := 'ok:clientData:callData:'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := 'select:clientData:callData:'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedPosition.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := 'buttons'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := [:block2811eea0Arg1 | 
    | block2811eea0Value0 block2811eea0Value1 block2811eea0Value2 block2811eea0Value3 block2811eea0Value4 block2811eea0Value5 block2811eea0Value6 block2811eea0Value7 block2811eea0Value8 |
    block2811eea0Value0 := block2811eea0Arg1.
    block2811eea0Value1 := block2811eea0Value0.
    (block2811eea0Value1) numColumns: (1).
    block2811eea0Value2 := block2811eea0Value0.
    (block2811eea0Value2) marginWidth: (10).
    block2811eea0Value3 := block2811eea0Value0.
    (block2811eea0Value3) marginHeight: (10).
    block2811eea0Value4 := block2811eea0Value0.
    (block2811eea0Value4) spacing: (10).
    block2811eea0Value5 := block2811eea0Value0.
    block2811eea0Value6 := XmPACKCOLUMN.
    (block2811eea0Value5) packing: (block2811eea0Value6).
    block2811eea0Value7 := XmVERTICAL.
    block2811eea0Value8 := (block2811eea0Value0) orientation: (block2811eea0Value7).
    block2811eea0Value8
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := 'OK'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := [:recoveredBlock203Arg1 | 
    | recoveredBlock203Value0 recoveredBlock203Value1 recoveredBlock203Value2 |
    recoveredBlock203Value0 := recoveredBlock203Arg1.
    recoveredBlock203Value1 := (self) scOk.
    recoveredBlock203Value2 := (recoveredBlock203Value0) labelString: (recoveredBlock203Value1).
    recoveredBlock203Value2
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := 'ok:clientData:callData:'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := 'Cancel'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := [:recoveredBlock239Arg1 | 
    | recoveredBlock239Value0 recoveredBlock239Value1 recoveredBlock239Value2 |
    recoveredBlock239Value0 := recoveredBlock239Arg1.
    recoveredBlock239Value1 := (self) scCancel.
    recoveredBlock239Value2 := (recoveredBlock239Value0) labelString: (recoveredBlock239Value1).
    recoveredBlock239Value2
].
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := 'cancel:clientData:callData:'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := 'Setup'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := [:recoveredBlock275Arg1 | 
    | recoveredBlock275Stack0 recoveredBlock275Stack1 recoveredBlock275Stack2 recoveredBlock275Stack3 recoveredBlock275Stack4 recoveredBlock275Stack5 recoveredBlock275Stack6 recoveredBlock275PC recoveredBlock275Step recoveredBlock275Done recoveredBlock275Result |
    recoveredBlock275Stack0 := self.
    recoveredBlock275PC := 282.
    recoveredBlock275Done := false.
    [recoveredBlock275Done not] whileTrue: [
        recoveredBlock275Step := recoveredBlock275PC.
        recoveredBlock275Step = 282 ifTrue: [
            recoveredBlock275Stack1 := recoveredBlock275Arg1.
            recoveredBlock275PC := 283.
        ].
        recoveredBlock275Step = 283 ifTrue: [
            recoveredBlock275Stack2 := recoveredBlock275Stack1.
            recoveredBlock275PC := 284.
        ].
        recoveredBlock275Step = 284 ifTrue: [
            recoveredBlock275Stack3 := true.
            recoveredBlock275PC := 285.
        ].
        recoveredBlock275Step = 285 ifTrue: [
            recoveredBlock275Stack4 := recoveredLocal4.
            recoveredBlock275PC := 288.
        ].
        recoveredBlock275Step = 288 ifTrue: [
            recoveredBlock275Stack5 := 0.
            recoveredBlock275PC := 290.
        ].
        recoveredBlock275Step = 290 ifTrue: [
            recoveredBlock275Stack4 := (recoveredBlock275Stack4) > (recoveredBlock275Stack5).
            recoveredBlock275PC := 291.
        ].
        recoveredBlock275Step = 291 ifTrue: [
            (recoveredBlock275Stack4) ifTrue: [recoveredBlock275PC := 303] ifFalse: [recoveredBlock275PC := 294].
        ].
        recoveredBlock275Step = 294 ifTrue: [
            recoveredBlock275PC := 295.
        ].
        recoveredBlock275Step = 295 ifTrue: [
            recoveredBlock275Stack3 := self.
            recoveredBlock275PC := 296.
        ].
        recoveredBlock275Step = 296 ifTrue: [
            recoveredBlock275Stack3 := (recoveredBlock275Stack3) printerNameList.
            recoveredBlock275PC := 298.
        ].
        recoveredBlock275Step = 298 ifTrue: [
            recoveredBlock275Stack3 := (recoveredBlock275Stack3) size.
            recoveredBlock275PC := 300.
        ].
        recoveredBlock275Step = 300 ifTrue: [
            recoveredBlock275Stack4 := 0.
            recoveredBlock275PC := 302.
        ].
        recoveredBlock275Step = 302 ifTrue: [
            recoveredBlock275Stack3 := (recoveredBlock275Stack3) ~= (recoveredBlock275Stack4).
            recoveredBlock275PC := 303.
        ].
        recoveredBlock275Step = 303 ifTrue: [
            (recoveredBlock275Stack2) sensitive: (recoveredBlock275Stack3).
            recoveredBlock275PC := 305.
        ].
        recoveredBlock275Step = 305 ifTrue: [
            recoveredBlock275Stack2 := self.
            recoveredBlock275PC := 306.
        ].
        recoveredBlock275Step = 306 ifTrue: [
            recoveredBlock275Stack2 := (recoveredBlock275Stack2) scSetup.
            recoveredBlock275PC := 308.
        ].
        recoveredBlock275Step = 308 ifTrue: [
            recoveredBlock275Stack1 := (recoveredBlock275Stack1) labelString: (recoveredBlock275Stack2).
            recoveredBlock275PC := 310.
        ].
        recoveredBlock275Step = 310 ifTrue: [
            recoveredBlock275Result := recoveredBlock275Stack1.
            recoveredBlock275Done := true.
        ].
    ].
    recoveredBlock275Result
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            setupButton := recoveredStack0.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := setupButton.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := 'setup:clientData:callData:'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := [:block2811eec4Arg1 | 
    | block2811eec4Value0 block2811eec4Value1 block2811eec4Value2 block2811eec4Value3 block2811eec4Value4 block2811eec4Value5 block2811eec4Value6 |
    block2811eec4Value0 := block2811eec4Arg1.
    block2811eec4Value1 := block2811eec4Value0.
    block2811eec4Value2 := XmATTACHFORM.
    (block2811eec4Value1) topAttachment: (block2811eec4Value2).
    block2811eec4Value3 := block2811eec4Value0.
    block2811eec4Value4 := XmATTACHFORM.
    (block2811eec4Value3) leftAttachment: (block2811eec4Value4).
    block2811eec4Value5 := XmATTACHFORM.
    block2811eec4Value6 := (block2811eec4Value0) rightAttachment: (block2811eec4Value5).
    block2811eec4Value6
].
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := [:recoveredBlock360Arg1 | 
    | recoveredBlock360Value0 recoveredBlock360Value1 recoveredBlock360Value2 recoveredBlock360Value3 recoveredBlock360Value4 recoveredBlock360Value5 recoveredBlock360Value6 recoveredBlock360Value7 recoveredBlock360Value8 recoveredBlock360Value9 recoveredBlock360Value10 recoveredBlock360Value11 recoveredBlock360Value12 |
    recoveredBlock360Value0 := recoveredBlock360Arg1.
    recoveredBlock360Value1 := recoveredBlock360Value0.
    recoveredBlock360Value2 := XmATTACHWIDGET.
    (recoveredBlock360Value1) topAttachment: (recoveredBlock360Value2).
    recoveredBlock360Value3 := recoveredBlock360Value0.
    recoveredBlock360Value4 := recoveredLocal7.
    (recoveredBlock360Value3) topWidget: (recoveredBlock360Value4).
    recoveredBlock360Value5 := recoveredBlock360Value0.
    recoveredBlock360Value6 := XmATTACHFORM.
    (recoveredBlock360Value5) bottomAttachment: (recoveredBlock360Value6).
    recoveredBlock360Value7 := recoveredBlock360Value0.
    recoveredBlock360Value8 := XmATTACHFORM.
    (recoveredBlock360Value7) leftAttachment: (recoveredBlock360Value8).
    recoveredBlock360Value9 := recoveredBlock360Value0.
    recoveredBlock360Value10 := XmATTACHWIDGET.
    (recoveredBlock360Value9) rightAttachment: (recoveredBlock360Value10).
    recoveredBlock360Value11 := recoveredLocal3.
    recoveredBlock360Value12 := (recoveredBlock360Value0) rightWidget: (recoveredBlock360Value11).
    recoveredBlock360Value12
].
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := [:recoveredBlock420Arg1 | 
    | recoveredBlock420Value0 recoveredBlock420Value1 recoveredBlock420Value2 recoveredBlock420Value3 recoveredBlock420Value4 recoveredBlock420Value5 recoveredBlock420Value6 recoveredBlock420Value7 recoveredBlock420Value8 |
    recoveredBlock420Value0 := recoveredBlock420Arg1.
    recoveredBlock420Value1 := recoveredBlock420Value0.
    recoveredBlock420Value2 := XmATTACHWIDGET.
    (recoveredBlock420Value1) topAttachment: (recoveredBlock420Value2).
    recoveredBlock420Value3 := recoveredBlock420Value0.
    recoveredBlock420Value4 := recoveredLocal7.
    (recoveredBlock420Value3) topWidget: (recoveredBlock420Value4).
    recoveredBlock420Value5 := recoveredBlock420Value0.
    recoveredBlock420Value6 := XmATTACHFORM.
    (recoveredBlock420Value5) rightAttachment: (recoveredBlock420Value6).
    recoveredBlock420Value7 := XmATTACHFORM.
    recoveredBlock420Value8 := (recoveredBlock420Value0) bottomAttachment: (recoveredBlock420Value7).
    recoveredBlock420Value8
].
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := setupButton.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack0 := setupButton.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack0) addKeyPressEventsFor: (recoveredStack1).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

