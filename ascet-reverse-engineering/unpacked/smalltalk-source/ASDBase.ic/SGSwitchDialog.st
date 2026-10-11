"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200061fc; bytecode file offset 0x902de8"
!SGSwitchDialog methodsFor: 'recovered'!
valueChange: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200064ec; bytecode file offset 0x902de8"
!SGSwitchDialog methodsFor: 'recovered'!
modify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20042dfc; bytecode file offset 0x9451f8"
!SGSwitchDialog methodsFor: 'recovered'!
widgetOk
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ok').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043efc; bytecode file offset 0x9451f8"
!SGSwitchDialog methodsFor: 'recovered'!
rowColumn
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('rowCol').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200476dc; bytecode file offset 0x9451f8"
!SGSwitchDialog methodsFor: 'recovered'!
scrolledRowColumn
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('sRowCol').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a728; bytecode file offset 0x957a6c"
!SGSwitchDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005a980; bytecode file offset 0x957a6c"
!SGSwitchDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005aaa0; bytecode file offset 0x957a6c"
!SGSwitchDialog methodsFor: 'recovered'!
resizeShell: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) attachRowColumn.
    ^self
! !

"ASDBase.ic method 0x20070018; bytecode file offset 0x96cb7c"
!SGSwitchDialog methodsFor: 'recovered'!
literals
    | recoveredValue0 |
    recoveredValue0 := literals.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070374; bytecode file offset 0x96ce40"
!SGSwitchDialog methodsFor: 'recovered'!
literalWidgets
    | recoveredValue0 |
    recoveredValue0 := literalWidgets.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070668; bytecode file offset 0x96d06c"
!SGSwitchDialog methodsFor: 'recovered'!
readOnly
    | recoveredValue0 |
    recoveredValue0 := readOnly.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b25f4; bytecode file offset 0x9aeed0"
!SGSwitchDialog methodsFor: 'recovered'!
cancel
    (self) result: (nil).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200c6688; bytecode file offset 0x9c3164"
!SGSwitchDialog methodsFor: 'recovered'!
literals: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    literals := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6ab4; bytecode file offset 0x9c3470"
!SGSwitchDialog methodsFor: 'recovered'!
literalWidgets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    literalWidgets := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6be0; bytecode file offset 0x9c36ec"
!SGSwitchDialog methodsFor: 'recovered'!
readOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    readOnly := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ddf8c; bytecode file offset 0x9da858"
!SGSwitchDialog methodsFor: 'recovered'!
sizeTextLosingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (0) @ (0).
    (recoveredValue0) setSelection: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ed1d0; bytecode file offset 0x9e9aac"
!SGSwitchDialog methodsFor: 'recovered'!
sizeTextFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200f8dfc; bytecode file offset 0x9f56c0"
!SGSwitchDialog methodsFor: 'recovered'!
attachRowColumn
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) rowColumn.
    recoveredValue1 := (self) scrolledRowColumn.
    recoveredValue2 := (recoveredValue1) width.
    recoveredValue3 := (recoveredValue2) - (5).
    (recoveredValue0) width: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2013dccc; bytecode file offset 0xa3a5b0"
!SGSwitchDialog methodsFor: 'recovered'!
initWidgetFonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalWidgets.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbc64Arg1 | 
    | block280cbc64Value0 block280cbc64Value1 block280cbc64Value2 |
    block280cbc64Value0 := SGUserInterfaceSettings.
    block280cbc64Value1 := block280cbc64Arg1.
    block280cbc64Value2 := (block280cbc64Value0) updateLabelFont: (block280cbc64Value1).
    block280cbc64Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20160964; bytecode file offset 0xa5d224"
!SGSwitchDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) shell.
    recoveredValue2 := (recoveredValue1) width.
    recoveredValue3 := (recoveredValue2) + (1).
    (recoveredValue0) width: (recoveredValue3).
    recoveredValue4 := (self) shell.
    recoveredValue5 := (self) shell.
    recoveredValue6 := (recoveredValue5) width.
    recoveredValue7 := (recoveredValue6) + (-1).
    (recoveredValue4) width: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201afaa0; bytecode file offset 0xaac36c"
!SGSwitchDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) createWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) initWidgetFonts.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOnly.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOk.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203206d0; bytecode file offset 0xc1cfb4"
!SGSwitchDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := HKOk.
    (recoveredValue5) at: (recoveredValue6) put: ('ok').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := HKCancel.
    (recoveredValue7) at: (recoveredValue8) put: ('cancel').
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := Character.
    recoveredValue11 := (recoveredValue10) value: (13).
    (recoveredValue9) at: (recoveredValue11) put: ('ok').
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := XKCancel.
    (recoveredValue12) at: (recoveredValue13) put: ('cancel').
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := (self) shell.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue14) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x20437110; bytecode file offset 0xd33a04"
!SGSwitchDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOnly.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalWidgets.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280fdd2cArg1 | 
    | block280fdd2cValue0 block280fdd2cValue1 block280fdd2cValue2 |
    block280fdd2cValue0 := block280fdd2cArg1.
    block280fdd2cValue1 := (block280fdd2cValue0) getString.
    block280fdd2cValue2 := (block280fdd2cValue1) trimBlanks.
    block280fdd2cValue2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35Stack6 recoveredBlock35Stack7 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal1.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) occurrencesOf: (recoveredBlock35Stack2).
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35Stack2 := 1.
            recoveredBlock35PC := 50.
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) > (recoveredBlock35Stack2).
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 54] ifFalse: [recoveredBlock35PC := 67].
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack1 := RBUserInfo.
            recoveredBlock35PC := 56.
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Stack2 := 'Multiple use of '.
            recoveredBlock35PC := 58.
        ].
        recoveredBlock35Step = 58 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Arg1.
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) , (recoveredBlock35Stack3).
            recoveredBlock35PC := 61.
        ].
        recoveredBlock35Step = 61 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) message: (recoveredBlock35Stack2).
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            (recoveredBlock35Stack1) prompt.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 66.
        ].
        recoveredBlock35Step = 66 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 67 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 68.
        ].
        recoveredBlock35Step = 68 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 69.
        ].
        recoveredBlock35Step = 69 ifTrue: [
            recoveredBlock35Stack3 := true.
            recoveredBlock35PC := 70.
        ].
        recoveredBlock35Step = 70 ifTrue: [
            recoveredBlock35Stack4 := true.
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35Stack5 := false.
            recoveredBlock35PC := 72.
        ].
        recoveredBlock35Step = 72 ifTrue: [
            recoveredBlock35Stack6 := true.
            recoveredBlock35PC := 73.
        ].
        recoveredBlock35Step = 73 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) getLiteralAllowBool: (recoveredBlock35Stack3) allowInteger: (recoveredBlock35Stack4) allowFloat: (recoveredBlock35Stack5) allowAnsiC: (recoveredBlock35Stack6).
            recoveredBlock35PC := 76.
        ].
        recoveredBlock35Step = 76 ifTrue: [
            (recoveredBlock35Stack2 ~~ nil) ifTrue: [recoveredBlock35PC := 94] ifFalse: [recoveredBlock35PC := 80].
        ].
        recoveredBlock35Step = 80 ifTrue: [
            recoveredBlock35PC := 81.
        ].
        recoveredBlock35Step = 81 ifTrue: [
            recoveredBlock35Stack1 := RBUserInfo.
            recoveredBlock35PC := 83.
        ].
        recoveredBlock35Step = 83 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 84.
        ].
        recoveredBlock35Step = 84 ifTrue: [
            recoveredBlock35Stack3 := ' is not a valid value !!'.
            recoveredBlock35PC := 86.
        ].
        recoveredBlock35Step = 86 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) , (recoveredBlock35Stack3).
            recoveredBlock35PC := 88.
        ].
        recoveredBlock35Step = 88 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) message: (recoveredBlock35Stack2).
            recoveredBlock35PC := 90.
        ].
        recoveredBlock35Step = 90 ifTrue: [
            (recoveredBlock35Stack1) prompt.
            recoveredBlock35PC := 92.
        ].
        recoveredBlock35Step = 92 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 93.
        ].
        recoveredBlock35Step = 93 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 94 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204fbd58; bytecode file offset 0xdf8684"
!SGSwitchDialog methodsFor: 'recovered'!
createWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) rowColumn.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal2 := recoveredValue2.
    recoveredLocal1 := 0.
    recoveredValue3 := (self) literals.
    recoveredValue4 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 recoveredBlock21Value14 recoveredBlock21Value15 recoveredBlock21Value16 recoveredBlock21Value17 recoveredBlock21Value18 recoveredBlock21Value19 recoveredBlock21Value20 recoveredBlock21Value21 recoveredBlock21Value22 recoveredBlock21Value23 recoveredBlock21Value24 |
    recoveredBlock21Value0 := recoveredLocal4.
    recoveredBlock21Value1 := [:recoveredBlock21Block33Arg1 | 
    | recoveredBlock21Block33Value0 recoveredBlock21Block33Value1 recoveredBlock21Block33Value2 recoveredBlock21Block33Value3 |
    recoveredBlock21Block33Value0 := recoveredBlock21Block33Arg1.
    recoveredBlock21Block33Value1 := recoveredLocal1.
    recoveredBlock21Block33Value2 := (recoveredBlock21Block33Value1) rounded.
    recoveredBlock21Block33Value3 := (recoveredBlock21Block33Value0) y: (recoveredBlock21Block33Value2).
    recoveredBlock21Block33Value3
].
    recoveredBlock21Value2 := (recoveredBlock21Value0) createEnhancedText: ('t') argBlock: (recoveredBlock21Value1).
    recoveredBlock21Value3 := (recoveredBlock21Value2) manageChild.
    recoveredLocal3 := recoveredBlock21Value3.
    recoveredBlock21Value4 := recoveredLocal3.
    recoveredBlock21Value5 := recoveredBlock21Arg1.
    (recoveredBlock21Value4) setString: (recoveredBlock21Value5).
    recoveredBlock21Value6 := recoveredLocal1.
    recoveredBlock21Value7 := recoveredLocal3.
    recoveredBlock21Value8 := (recoveredBlock21Value7) height.
    recoveredBlock21Value9 := (recoveredBlock21Value6) + (recoveredBlock21Value8).
    recoveredLocal1 := recoveredBlock21Value9.
    recoveredBlock21Value10 := recoveredLocal4.
    recoveredBlock21Value11 := recoveredLocal1.
    (recoveredBlock21Value10) height: (recoveredBlock21Value11).
    recoveredBlock21Value12 := recoveredLocal2.
    recoveredBlock21Value13 := recoveredLocal3.
    (recoveredBlock21Value12) add: (recoveredBlock21Value13).
    recoveredBlock21Value14 := recoveredLocal3.
    recoveredBlock21Value15 := recoveredBlock21Value14.
    recoveredBlock21Value16 := XmNfocusCallback.
    (recoveredBlock21Value15) addCallback: (recoveredBlock21Value16) receiver: (self) selector: ('sizeTextFocus:clientData:callData:') clientData: (nil).
    recoveredBlock21Value17 := recoveredBlock21Value14.
    recoveredBlock21Value18 := XmNlosingFocusCallback.
    (recoveredBlock21Value17) addCallback: (recoveredBlock21Value18) receiver: (self) selector: ('sizeTextLosingFocus:clientData:callData:') clientData: (nil).
    recoveredBlock21Value19 := recoveredBlock21Value14.
    recoveredBlock21Value20 := XmNvalueChangedCallback.
    (recoveredBlock21Value19) addCallback: (recoveredBlock21Value20) receiver: (self) selector: ('valueChange:clientData:callData:') clientData: (nil).
    recoveredBlock21Value21 := XmNmodifyVerifyCallback.
    (recoveredBlock21Value14) addCallback: (recoveredBlock21Value21) receiver: (self) selector: ('modify:clientData:callData:') clientData: (nil).
    recoveredBlock21Value22 := recoveredLocal3.
    (recoveredBlock21Value22) characterMethod: ('checkNone:').
    recoveredBlock21Value23 := recoveredLocal3.
    recoveredBlock21Value24 := (recoveredBlock21Value23) addTabGroup.
    recoveredBlock21Value24
].
    (recoveredValue3) do: (recoveredValue4).
    (self) attachRowColumn.
    recoveredValue5 := recoveredLocal2.
    (self) literalWidgets: (recoveredValue5).
    recoveredValue6 := (self) shell.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) + (250).
    recoveredValue9 := (recoveredValue8) min: (250).
    (recoveredValue6) height: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20661c6c; bytecode file offset 0xf5e674"
!SGSwitchDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 recoveredBlock25Value15 recoveredBlock25Value16 recoveredBlock25Value17 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('Edit Literals').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := MWMDECORALL.
    recoveredBlock25Value6 := MWMDECORMINIMIZE.
    recoveredBlock25Value7 := (recoveredBlock25Value5) | (recoveredBlock25Value6).
    recoveredBlock25Value8 := MWMDECORMAXIMIZE.
    recoveredBlock25Value9 := (recoveredBlock25Value7) | (recoveredBlock25Value8).
    (recoveredBlock25Value4) mwmDecorations: (recoveredBlock25Value9).
    recoveredBlock25Value10 := recoveredBlock25Value0.
    recoveredBlock25Value11 := recoveredLocal10.
    recoveredBlock25Value12 := (233) * (recoveredBlock25Value11).
    recoveredBlock25Value13 := (recoveredBlock25Value12) rounded.
    (recoveredBlock25Value10) height: (recoveredBlock25Value13).
    recoveredBlock25Value14 := recoveredLocal11.
    recoveredBlock25Value15 := (279) * (recoveredBlock25Value14).
    recoveredBlock25Value16 := (recoveredBlock25Value15) rounded.
    recoveredBlock25Value17 := (recoveredBlock25Value0) width: (recoveredBlock25Value16).
    recoveredBlock25Value17
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 recoveredBlock145Value3 recoveredBlock145Value4 recoveredBlock145Value5 recoveredBlock145Value6 recoveredBlock145Value7 recoveredBlock145Value8 recoveredBlock145Value9 recoveredBlock145Value10 recoveredBlock145Value11 recoveredBlock145Value12 recoveredBlock145Value13 recoveredBlock145Value14 recoveredBlock145Value15 recoveredBlock145Value16 recoveredBlock145Value17 recoveredBlock145Value18 recoveredBlock145Value19 recoveredBlock145Value20 |
    recoveredBlock145Value0 := recoveredBlock145Arg1.
    recoveredBlock145Value1 := recoveredBlock145Value0.
    recoveredBlock145Value2 := recoveredLocal11.
    recoveredBlock145Value3 := (482) * (recoveredBlock145Value2).
    recoveredBlock145Value4 := (recoveredBlock145Value3) rounded.
    (recoveredBlock145Value1) x: (recoveredBlock145Value4).
    recoveredBlock145Value5 := recoveredBlock145Value0.
    recoveredBlock145Value6 := XmSINGLELINE.
    (recoveredBlock145Value5) separatorType: (recoveredBlock145Value6).
    recoveredBlock145Value7 := recoveredBlock145Value0.
    recoveredBlock145Value8 := XmVERTICAL.
    (recoveredBlock145Value7) orientation: (recoveredBlock145Value8).
    recoveredBlock145Value9 := recoveredBlock145Value0.
    recoveredBlock145Value10 := recoveredLocal10.
    recoveredBlock145Value11 := (35) * (recoveredBlock145Value10).
    recoveredBlock145Value12 := (recoveredBlock145Value11) rounded.
    (recoveredBlock145Value9) y: (recoveredBlock145Value12).
    recoveredBlock145Value13 := recoveredBlock145Value0.
    recoveredBlock145Value14 := recoveredLocal10.
    recoveredBlock145Value15 := (370) * (recoveredBlock145Value14).
    recoveredBlock145Value16 := (recoveredBlock145Value15) rounded.
    (recoveredBlock145Value13) height: (recoveredBlock145Value16).
    recoveredBlock145Value17 := recoveredLocal11.
    recoveredBlock145Value18 := (1) * (recoveredBlock145Value17).
    recoveredBlock145Value19 := (recoveredBlock145Value18) rounded.
    recoveredBlock145Value20 := (recoveredBlock145Value0) width: (recoveredBlock145Value19).
    recoveredBlock145Value20
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := [:recoveredBlock233Arg1 | 
    | recoveredBlock233Value0 recoveredBlock233Value1 recoveredBlock233Value2 recoveredBlock233Value3 recoveredBlock233Value4 recoveredBlock233Value5 recoveredBlock233Value6 recoveredBlock233Value7 recoveredBlock233Value8 recoveredBlock233Value9 recoveredBlock233Value10 recoveredBlock233Value11 recoveredBlock233Value12 recoveredBlock233Value13 recoveredBlock233Value14 recoveredBlock233Value15 recoveredBlock233Value16 recoveredBlock233Value17 recoveredBlock233Value18 recoveredBlock233Value19 recoveredBlock233Value20 recoveredBlock233Value21 |
    recoveredBlock233Value0 := recoveredBlock233Arg1.
    recoveredBlock233Value1 := recoveredBlock233Value0.
    recoveredBlock233Value2 := recoveredLocal11.
    recoveredBlock233Value3 := (498) * (recoveredBlock233Value2).
    recoveredBlock233Value4 := (recoveredBlock233Value3) rounded.
    (recoveredBlock233Value1) x: (recoveredBlock233Value4).
    recoveredBlock233Value5 := recoveredBlock233Value0.
    (recoveredBlock233Value5) marginRight: (10).
    recoveredBlock233Value6 := recoveredBlock233Value0.
    (recoveredBlock233Value6) labelString: ('&OK').
    recoveredBlock233Value7 := recoveredBlock233Value0.
    (recoveredBlock233Value7) marginWidth: (0).
    recoveredBlock233Value8 := recoveredBlock233Value0.
    (recoveredBlock233Value8) marginHeight: (0).
    recoveredBlock233Value9 := recoveredBlock233Value0.
    recoveredBlock233Value10 := recoveredLocal10.
    recoveredBlock233Value11 := (46) * (recoveredBlock233Value10).
    recoveredBlock233Value12 := (recoveredBlock233Value11) rounded.
    (recoveredBlock233Value9) y: (recoveredBlock233Value12).
    recoveredBlock233Value13 := recoveredBlock233Value0.
    recoveredBlock233Value14 := recoveredLocal10.
    recoveredBlock233Value15 := (30) * (recoveredBlock233Value14).
    recoveredBlock233Value16 := (recoveredBlock233Value15) rounded.
    (recoveredBlock233Value13) height: (recoveredBlock233Value16).
    recoveredBlock233Value17 := recoveredBlock233Value0.
    (recoveredBlock233Value17) marginBottom: (10).
    recoveredBlock233Value18 := recoveredLocal11.
    recoveredBlock233Value19 := (110) * (recoveredBlock233Value18).
    recoveredBlock233Value20 := (recoveredBlock233Value19) rounded.
    recoveredBlock233Value21 := (recoveredBlock233Value0) width: (recoveredBlock233Value20).
    recoveredBlock233Value21
].
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Value0 recoveredBlock335Value1 recoveredBlock335Value2 recoveredBlock335Value3 recoveredBlock335Value4 recoveredBlock335Value5 recoveredBlock335Value6 recoveredBlock335Value7 recoveredBlock335Value8 recoveredBlock335Value9 recoveredBlock335Value10 recoveredBlock335Value11 recoveredBlock335Value12 recoveredBlock335Value13 recoveredBlock335Value14 recoveredBlock335Value15 recoveredBlock335Value16 recoveredBlock335Value17 recoveredBlock335Value18 recoveredBlock335Value19 recoveredBlock335Value20 recoveredBlock335Value21 |
    recoveredBlock335Value0 := recoveredBlock335Arg1.
    recoveredBlock335Value1 := recoveredBlock335Value0.
    recoveredBlock335Value2 := recoveredLocal11.
    recoveredBlock335Value3 := (183) * (recoveredBlock335Value2).
    recoveredBlock335Value4 := (recoveredBlock335Value3) rounded.
    (recoveredBlock335Value1) x: (recoveredBlock335Value4).
    recoveredBlock335Value5 := recoveredBlock335Value0.
    (recoveredBlock335Value5) marginRight: (10).
    recoveredBlock335Value6 := recoveredBlock335Value0.
    (recoveredBlock335Value6) labelString: ('&Cancel').
    recoveredBlock335Value7 := recoveredBlock335Value0.
    (recoveredBlock335Value7) marginWidth: (0).
    recoveredBlock335Value8 := recoveredBlock335Value0.
    (recoveredBlock335Value8) marginHeight: (0).
    recoveredBlock335Value9 := recoveredBlock335Value0.
    recoveredBlock335Value10 := recoveredLocal10.
    recoveredBlock335Value11 := (50) * (recoveredBlock335Value10).
    recoveredBlock335Value12 := (recoveredBlock335Value11) rounded.
    (recoveredBlock335Value9) y: (recoveredBlock335Value12).
    recoveredBlock335Value13 := recoveredBlock335Value0.
    recoveredBlock335Value14 := recoveredLocal10.
    recoveredBlock335Value15 := (30) * (recoveredBlock335Value14).
    recoveredBlock335Value16 := (recoveredBlock335Value15) rounded.
    (recoveredBlock335Value13) height: (recoveredBlock335Value16).
    recoveredBlock335Value17 := recoveredBlock335Value0.
    (recoveredBlock335Value17) marginBottom: (10).
    recoveredBlock335Value18 := recoveredLocal11.
    recoveredBlock335Value19 := (110) * (recoveredBlock335Value18).
    recoveredBlock335Value20 := (recoveredBlock335Value19) rounded.
    recoveredBlock335Value21 := (recoveredBlock335Value0) width: (recoveredBlock335Value20).
    recoveredBlock335Value21
].
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := 'aFrame1'.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := [:recoveredBlock437Arg1 | 
    | recoveredBlock437Value0 recoveredBlock437Value1 recoveredBlock437Value2 recoveredBlock437Value3 recoveredBlock437Value4 recoveredBlock437Value5 recoveredBlock437Value6 recoveredBlock437Value7 recoveredBlock437Value8 recoveredBlock437Value9 recoveredBlock437Value10 recoveredBlock437Value11 recoveredBlock437Value12 recoveredBlock437Value13 recoveredBlock437Value14 recoveredBlock437Value15 recoveredBlock437Value16 recoveredBlock437Value17 recoveredBlock437Value18 recoveredBlock437Value19 |
    recoveredBlock437Value0 := recoveredBlock437Arg1.
    recoveredBlock437Value1 := recoveredBlock437Value0.
    recoveredBlock437Value2 := recoveredLocal11.
    recoveredBlock437Value3 := (5) * (recoveredBlock437Value2).
    recoveredBlock437Value4 := (recoveredBlock437Value3) rounded.
    (recoveredBlock437Value1) x: (recoveredBlock437Value4).
    recoveredBlock437Value5 := recoveredBlock437Value0.
    (recoveredBlock437Value5) labelString: ('Literals').
    recoveredBlock437Value6 := recoveredBlock437Value0.
    recoveredBlock437Value7 := recoveredLocal10.
    recoveredBlock437Value8 := (5) * (recoveredBlock437Value7).
    recoveredBlock437Value9 := (recoveredBlock437Value8) rounded.
    (recoveredBlock437Value6) y: (recoveredBlock437Value9).
    recoveredBlock437Value10 := recoveredBlock437Value0.
    recoveredBlock437Value11 := recoveredLocal10.
    recoveredBlock437Value12 := (205) * (recoveredBlock437Value11).
    recoveredBlock437Value13 := (recoveredBlock437Value12) rounded.
    (recoveredBlock437Value10) height: (recoveredBlock437Value13).
    recoveredBlock437Value14 := recoveredBlock437Value0.
    recoveredBlock437Value15 := recoveredLocal11.
    recoveredBlock437Value16 := (147) * (recoveredBlock437Value15).
    recoveredBlock437Value17 := (recoveredBlock437Value16) rounded.
    (recoveredBlock437Value14) width: (recoveredBlock437Value17).
    recoveredBlock437Value18 := recoveredBlock437Value0.
    recoveredBlock437Value19 := (self) defaultLabelBlue.
    (recoveredBlock437Value18) foregroundColor: (recoveredBlock437Value19).
    recoveredBlock437Value0
].
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack2 := 'aFrame1'.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := 'sRowCol'.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack3 := [:recoveredBlock525Arg1 | 
    | recoveredBlock525Value0 recoveredBlock525Value1 recoveredBlock525Value2 recoveredBlock525Value3 recoveredBlock525Value4 recoveredBlock525Value5 recoveredBlock525Value6 recoveredBlock525Value7 recoveredBlock525Value8 recoveredBlock525Value9 recoveredBlock525Value10 recoveredBlock525Value11 |
    recoveredBlock525Value0 := recoveredBlock525Arg1.
    recoveredBlock525Value1 := recoveredBlock525Value0.
    (recoveredBlock525Value1) borderWidth: (1).
    recoveredBlock525Value2 := recoveredBlock525Value0.
    recoveredBlock525Value3 := XmAUTOMATIC.
    (recoveredBlock525Value2) scrollingPolicy: (recoveredBlock525Value3).
    recoveredBlock525Value4 := recoveredBlock525Value0.
    recoveredBlock525Value5 := recoveredLocal10.
    recoveredBlock525Value6 := (178) * (recoveredBlock525Value5).
    recoveredBlock525Value7 := (recoveredBlock525Value6) rounded.
    (recoveredBlock525Value4) height: (recoveredBlock525Value7).
    recoveredBlock525Value8 := recoveredLocal11.
    recoveredBlock525Value9 := (137) * (recoveredBlock525Value8).
    recoveredBlock525Value10 := (recoveredBlock525Value9) rounded.
    recoveredBlock525Value11 := (recoveredBlock525Value0) width: (recoveredBlock525Value10).
    recoveredBlock525Value11
].
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack2 := 'sRowCol'.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := 'rowCol'.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack3 := [:recoveredBlock594Arg1 | 
    | recoveredBlock594Value0 recoveredBlock594Value1 recoveredBlock594Value2 recoveredBlock594Value3 recoveredBlock594Value4 recoveredBlock594Value5 recoveredBlock594Value6 recoveredBlock594Value7 recoveredBlock594Value8 |
    recoveredBlock594Value0 := recoveredBlock594Arg1.
    recoveredBlock594Value1 := recoveredBlock594Value0.
    recoveredBlock594Value2 := recoveredLocal10.
    recoveredBlock594Value3 := (108) * (recoveredBlock594Value2).
    recoveredBlock594Value4 := (recoveredBlock594Value3) rounded.
    (recoveredBlock594Value1) height: (recoveredBlock594Value4).
    recoveredBlock594Value5 := recoveredLocal11.
    recoveredBlock594Value6 := (87) * (recoveredBlock594Value5).
    recoveredBlock594Value7 := (recoveredBlock594Value6) rounded.
    recoveredBlock594Value8 := (recoveredBlock594Value0) width: (recoveredBlock594Value7).
    recoveredBlock594Value8
].
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRowColumn: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack2 := 'rowCol'.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := [:recoveredBlock650Arg1 | 
    | recoveredBlock650Value0 recoveredBlock650Value1 recoveredBlock650Value2 |
    recoveredBlock650Value0 := recoveredBlock650Arg1.
    recoveredBlock650Value1 := recoveredLocal7.
    recoveredBlock650Value2 := (recoveredBlock650Value0) workWindow: (recoveredBlock650Value1).
    recoveredBlock650Value2
].
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack2 := [:recoveredBlock674Arg1 | 
    | recoveredBlock674Value0 recoveredBlock674Value1 recoveredBlock674Value2 recoveredBlock674Value3 recoveredBlock674Value4 recoveredBlock674Value5 recoveredBlock674Value6 recoveredBlock674Value7 recoveredBlock674Value8 recoveredBlock674Value9 recoveredBlock674Value10 recoveredBlock674Value11 |
    recoveredBlock674Value0 := recoveredBlock674Arg1.
    recoveredBlock674Value1 := recoveredBlock674Value0.
    recoveredBlock674Value2 := XmATTACHFORM.
    (recoveredBlock674Value1) bottomAttachment: (recoveredBlock674Value2).
    recoveredBlock674Value3 := recoveredBlock674Value0.
    (recoveredBlock674Value3) bottomOffset: (5).
    recoveredBlock674Value4 := recoveredBlock674Value0.
    recoveredBlock674Value5 := XmATTACHFORM.
    (recoveredBlock674Value4) topAttachment: (recoveredBlock674Value5).
    recoveredBlock674Value6 := recoveredBlock674Value0.
    (recoveredBlock674Value6) topOffset: (5).
    recoveredBlock674Value7 := recoveredBlock674Value0.
    recoveredBlock674Value8 := XmATTACHWIDGET.
    (recoveredBlock674Value7) rightAttachment: (recoveredBlock674Value8).
    recoveredBlock674Value9 := recoveredBlock674Value0.
    recoveredBlock674Value10 := recoveredLocal5.
    (recoveredBlock674Value9) rightWidget: (recoveredBlock674Value10).
    recoveredBlock674Value11 := (recoveredBlock674Value0) rightOffset: (10).
    recoveredBlock674Value11
].
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack2 := [:block28125230Arg1 | 
    | block28125230Value0 block28125230Value1 block28125230Value2 block28125230Value3 block28125230Value4 block28125230Value5 block28125230Value6 |
    block28125230Value0 := block28125230Arg1.
    block28125230Value1 := block28125230Value0.
    block28125230Value2 := XmATTACHFORM.
    (block28125230Value1) topAttachment: (block28125230Value2).
    block28125230Value3 := block28125230Value0.
    (block28125230Value3) topOffset: (5).
    block28125230Value4 := block28125230Value0.
    block28125230Value5 := XmATTACHFORM.
    (block28125230Value4) rightAttachment: (block28125230Value5).
    block28125230Value6 := (block28125230Value0) rightOffset: (5).
    block28125230Value6
].
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack2 := [:recoveredBlock790Arg1 | 
    | recoveredBlock790Value0 recoveredBlock790Value1 recoveredBlock790Value2 recoveredBlock790Value3 recoveredBlock790Value4 recoveredBlock790Value5 recoveredBlock790Value6 recoveredBlock790Value7 recoveredBlock790Value8 |
    recoveredBlock790Value0 := recoveredBlock790Arg1.
    recoveredBlock790Value1 := recoveredBlock790Value0.
    recoveredBlock790Value2 := XmATTACHWIDGET.
    (recoveredBlock790Value1) topAttachment: (recoveredBlock790Value2).
    recoveredBlock790Value3 := recoveredBlock790Value0.
    recoveredBlock790Value4 := recoveredLocal5.
    (recoveredBlock790Value3) topWidget: (recoveredBlock790Value4).
    recoveredBlock790Value5 := recoveredBlock790Value0.
    (recoveredBlock790Value5) topOffset: (10).
    recoveredBlock790Value6 := recoveredBlock790Value0.
    recoveredBlock790Value7 := XmATTACHFORM.
    (recoveredBlock790Value6) rightAttachment: (recoveredBlock790Value7).
    recoveredBlock790Value8 := (recoveredBlock790Value0) rightOffset: (5).
    recoveredBlock790Value8
].
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack2 := [:recoveredBlock844Arg1 | 
    | recoveredBlock844Value0 recoveredBlock844Value1 recoveredBlock844Value2 recoveredBlock844Value3 recoveredBlock844Value4 recoveredBlock844Value5 recoveredBlock844Value6 recoveredBlock844Value7 recoveredBlock844Value8 recoveredBlock844Value9 recoveredBlock844Value10 recoveredBlock844Value11 recoveredBlock844Value12 recoveredBlock844Value13 recoveredBlock844Value14 |
    recoveredBlock844Value0 := recoveredBlock844Arg1.
    recoveredBlock844Value1 := recoveredBlock844Value0.
    recoveredBlock844Value2 := XmATTACHFORM.
    (recoveredBlock844Value1) bottomAttachment: (recoveredBlock844Value2).
    recoveredBlock844Value3 := recoveredBlock844Value0.
    (recoveredBlock844Value3) bottomOffset: (5).
    recoveredBlock844Value4 := recoveredBlock844Value0.
    recoveredBlock844Value5 := XmATTACHFORM.
    (recoveredBlock844Value4) topAttachment: (recoveredBlock844Value5).
    recoveredBlock844Value6 := recoveredBlock844Value0.
    (recoveredBlock844Value6) topOffset: (5).
    recoveredBlock844Value7 := recoveredBlock844Value0.
    recoveredBlock844Value8 := XmATTACHFORM.
    (recoveredBlock844Value7) leftAttachment: (recoveredBlock844Value8).
    recoveredBlock844Value9 := recoveredBlock844Value0.
    (recoveredBlock844Value9) leftOffset: (5).
    recoveredBlock844Value10 := recoveredBlock844Value0.
    recoveredBlock844Value11 := XmATTACHWIDGET.
    (recoveredBlock844Value10) rightAttachment: (recoveredBlock844Value11).
    recoveredBlock844Value12 := recoveredBlock844Value0.
    recoveredBlock844Value13 := recoveredLocal6.
    (recoveredBlock844Value12) rightWidget: (recoveredBlock844Value13).
    recoveredBlock844Value14 := (recoveredBlock844Value0) rightOffset: (5).
    recoveredBlock844Value14
].
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 926.
        ].
        recoveredStep = 926 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack4 := 'resizeShell:clientData:callData:'.
            recoveredPC := 934.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 982.
        ].
        recoveredStep = 982 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

