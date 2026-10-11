"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001071c; bytecode file offset 0x90d208"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) ok.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200108f0; bytecode file offset 0x90d208"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) cancel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200480fc; bytecode file offset 0x9451f8"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
enumComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('enumComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004aaf0; bytecode file offset 0x9473a4"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
setModeGroupMode
    modeGroupMode := true.
    ^self
! !

"ASDBase.ic method 0x20084210; bytecode file offset 0x981ca4"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
preSelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) selection: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009ad44; bytecode file offset 0x9976c0"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
enumComboBoxSingleSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    (self) selection: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a065c; bytecode file offset 0x99cf14"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
cancel
    (self) close.
    result := nil.
    ^nil
! !

"ASDBase.ic method 0x200c6890; bytecode file offset 0x9c3164"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
selection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selection := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c698c; bytecode file offset 0x9c3470"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
availableEnums: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    availableEnums := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5bc0; bytecode file offset 0x9d247c"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
initialize
    super initialize.
    modeGroupMode := false.
    ^self
! !

"ASDBase.ic method 0x2013be60; bytecode file offset 0xa38718"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
selection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstAvailableEnum.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := selection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013bed4; bytecode file offset 0xa3878c"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
availableEnums
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := availableEnums.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := availableEnums.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015937c; bytecode file offset 0xa55c3c"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
firstAvailableEnum
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableEnums.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20242b60; bytecode file offset 0xb3f430"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumComboBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) selection: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) selection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) selection.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            result := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d2478; bytecode file offset 0xbced58"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XKCancel.
    (recoveredValue2) at: (recoveredValue3) put: ('cancel').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := Character.
    recoveredValue6 := (recoveredValue5) value: (13).
    (recoveredValue4) at: (recoveredValue6) put: ('ok').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: ('Alt-o') put: ('ok').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: ('Alt-c') put: ('cancel').
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) shell.
    (self) setActionDict: (recoveredValue9) forWidget: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2030baec; bytecode file offset 0xc083dc"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumComboBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ea318Arg1 | 
    | block280ea318Value0 block280ea318Value1 |
    block280ea318Value0 := block280ea318Arg1.
    block280ea318Value1 := (block280ea318Value0) labelWithPath.
    block280ea318Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumComboBox.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) availableEnums.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280ea33cArg1 :block280ea33cArg2 | 
    | block280ea33cValue0 block280ea33cValue1 block280ea33cValue2 block280ea33cValue3 block280ea33cValue4 block280ea33cValue5 block280ea33cValue6 |
    block280ea33cValue0 := EsString.
    block280ea33cValue1 := (block280ea33cValue0) sortBlockNumeric.
    block280ea33cValue2 := block280ea33cArg1.
    block280ea33cValue3 := (block280ea33cValue2) labelWithPath.
    block280ea33cValue4 := block280ea33cArg2.
    block280ea33cValue5 := (block280ea33cValue4) labelWithPath.
    block280ea33cValue6 := (block280ea33cValue1) value: (block280ea33cValue3) value: (block280ea33cValue5).
    block280ea33cValue6
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumComboBox.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) grayBackground.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20662c00; bytecode file offset 0xf5f614"
!SGEnumerationSelectionDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal9 := recoveredStack1.
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
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25Stack5 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            (recoveredBlock25Stack2) mwmInputMode: (recoveredBlock25Stack3).
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack3 := modeGroupMode.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            (recoveredBlock25Stack3) ifTrue: [recoveredBlock25PC := 44] ifFalse: [recoveredBlock25PC := 50].
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack3 := 'Mode Group Selection'.
            recoveredBlock25PC := 46.
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Stack3 := 'Enumeration Selection'.
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            (recoveredBlock25Stack2) title: (recoveredBlock25Stack3).
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack3 := MWMDECORALL.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack4 := MWMDECORMINIMIZE.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) | (recoveredBlock25Stack4).
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            recoveredBlock25Stack4 := MWMDECORMAXIMIZE.
            recoveredBlock25PC := 63.
        ].
        recoveredBlock25Step = 63 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) | (recoveredBlock25Stack4).
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            (recoveredBlock25Stack2) mwmDecorations: (recoveredBlock25Stack3).
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 68.
        ].
        recoveredBlock25Step = 68 ifTrue: [
            recoveredBlock25Stack3 := 85.
            recoveredBlock25PC := 72.
        ].
        recoveredBlock25Step = 72 ifTrue: [
            recoveredBlock25Stack4 := recoveredLocal9.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) * (recoveredBlock25Stack4).
            recoveredBlock25PC := 76.
        ].
        recoveredBlock25Step = 76 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) rounded.
            recoveredBlock25PC := 78.
        ].
        recoveredBlock25Step = 78 ifTrue: [
            (recoveredBlock25Stack2) height: (recoveredBlock25Stack3).
            recoveredBlock25PC := 80.
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack2 := 254.
            recoveredBlock25PC := 84.
        ].
        recoveredBlock25Step = 84 ifTrue: [
            recoveredBlock25Stack3 := recoveredLocal10.
            recoveredBlock25PC := 87.
        ].
        recoveredBlock25Step = 87 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) * (recoveredBlock25Stack3).
            recoveredBlock25PC := 88.
        ].
        recoveredBlock25Step = 88 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) rounded.
            recoveredBlock25PC := 90.
        ].
        recoveredBlock25Step = 90 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) width: (recoveredBlock25Stack2).
            recoveredBlock25PC := 92.
        ].
        recoveredBlock25Step = 92 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Value0 recoveredBlock157Value1 recoveredBlock157Value2 recoveredBlock157Value3 recoveredBlock157Value4 recoveredBlock157Value5 recoveredBlock157Value6 recoveredBlock157Value7 recoveredBlock157Value8 recoveredBlock157Value9 recoveredBlock157Value10 recoveredBlock157Value11 recoveredBlock157Value12 recoveredBlock157Value13 recoveredBlock157Value14 recoveredBlock157Value15 recoveredBlock157Value16 recoveredBlock157Value17 recoveredBlock157Value18 recoveredBlock157Value19 recoveredBlock157Value20 recoveredBlock157Value21 |
    recoveredBlock157Value0 := recoveredBlock157Arg1.
    recoveredBlock157Value1 := recoveredBlock157Value0.
    recoveredBlock157Value2 := recoveredLocal10.
    recoveredBlock157Value3 := (147) * (recoveredBlock157Value2).
    recoveredBlock157Value4 := (recoveredBlock157Value3) rounded.
    (recoveredBlock157Value1) x: (recoveredBlock157Value4).
    recoveredBlock157Value5 := recoveredBlock157Value0.
    (recoveredBlock157Value5) marginRight: (10).
    recoveredBlock157Value6 := recoveredBlock157Value0.
    (recoveredBlock157Value6) labelString: ('&Cancel').
    recoveredBlock157Value7 := recoveredBlock157Value0.
    (recoveredBlock157Value7) marginWidth: (0).
    recoveredBlock157Value8 := recoveredBlock157Value0.
    (recoveredBlock157Value8) marginHeight: (0).
    recoveredBlock157Value9 := recoveredBlock157Value0.
    recoveredBlock157Value10 := recoveredLocal9.
    recoveredBlock157Value11 := (45) * (recoveredBlock157Value10).
    recoveredBlock157Value12 := (recoveredBlock157Value11) rounded.
    (recoveredBlock157Value9) y: (recoveredBlock157Value12).
    recoveredBlock157Value13 := recoveredBlock157Value0.
    recoveredBlock157Value14 := recoveredLocal9.
    recoveredBlock157Value15 := (30) * (recoveredBlock157Value14).
    recoveredBlock157Value16 := (recoveredBlock157Value15) rounded.
    (recoveredBlock157Value13) height: (recoveredBlock157Value16).
    recoveredBlock157Value17 := recoveredBlock157Value0.
    (recoveredBlock157Value17) marginBottom: (10).
    recoveredBlock157Value18 := recoveredLocal10.
    recoveredBlock157Value19 := (75) * (recoveredBlock157Value18).
    recoveredBlock157Value20 := (recoveredBlock157Value19) rounded.
    recoveredBlock157Value21 := (recoveredBlock157Value0) width: (recoveredBlock157Value20).
    recoveredBlock157Value21
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := [:recoveredBlock259Arg1 | 
    | recoveredBlock259Value0 recoveredBlock259Value1 recoveredBlock259Value2 recoveredBlock259Value3 recoveredBlock259Value4 recoveredBlock259Value5 recoveredBlock259Value6 recoveredBlock259Value7 recoveredBlock259Value8 recoveredBlock259Value9 recoveredBlock259Value10 recoveredBlock259Value11 recoveredBlock259Value12 recoveredBlock259Value13 recoveredBlock259Value14 recoveredBlock259Value15 recoveredBlock259Value16 recoveredBlock259Value17 recoveredBlock259Value18 recoveredBlock259Value19 recoveredBlock259Value20 |
    recoveredBlock259Value0 := recoveredBlock259Arg1.
    recoveredBlock259Value1 := recoveredBlock259Value0.
    recoveredBlock259Value2 := recoveredLocal10.
    recoveredBlock259Value3 := (482) * (recoveredBlock259Value2).
    recoveredBlock259Value4 := (recoveredBlock259Value3) rounded.
    (recoveredBlock259Value1) x: (recoveredBlock259Value4).
    recoveredBlock259Value5 := recoveredBlock259Value0.
    recoveredBlock259Value6 := XmSINGLELINE.
    (recoveredBlock259Value5) separatorType: (recoveredBlock259Value6).
    recoveredBlock259Value7 := recoveredBlock259Value0.
    recoveredBlock259Value8 := XmVERTICAL.
    (recoveredBlock259Value7) orientation: (recoveredBlock259Value8).
    recoveredBlock259Value9 := recoveredBlock259Value0.
    recoveredBlock259Value10 := recoveredLocal9.
    recoveredBlock259Value11 := (35) * (recoveredBlock259Value10).
    recoveredBlock259Value12 := (recoveredBlock259Value11) rounded.
    (recoveredBlock259Value9) y: (recoveredBlock259Value12).
    recoveredBlock259Value13 := recoveredBlock259Value0.
    recoveredBlock259Value14 := recoveredLocal9.
    recoveredBlock259Value15 := (370) * (recoveredBlock259Value14).
    recoveredBlock259Value16 := (recoveredBlock259Value15) rounded.
    (recoveredBlock259Value13) height: (recoveredBlock259Value16).
    recoveredBlock259Value17 := recoveredLocal10.
    recoveredBlock259Value18 := (1) * (recoveredBlock259Value17).
    recoveredBlock259Value19 := (recoveredBlock259Value18) rounded.
    recoveredBlock259Value20 := (recoveredBlock259Value0) width: (recoveredBlock259Value19).
    recoveredBlock259Value20
].
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := [:recoveredBlock347Arg1 | 
    | recoveredBlock347Value0 recoveredBlock347Value1 recoveredBlock347Value2 recoveredBlock347Value3 recoveredBlock347Value4 recoveredBlock347Value5 recoveredBlock347Value6 recoveredBlock347Value7 recoveredBlock347Value8 recoveredBlock347Value9 recoveredBlock347Value10 recoveredBlock347Value11 recoveredBlock347Value12 recoveredBlock347Value13 recoveredBlock347Value14 recoveredBlock347Value15 recoveredBlock347Value16 recoveredBlock347Value17 recoveredBlock347Value18 recoveredBlock347Value19 recoveredBlock347Value20 recoveredBlock347Value21 |
    recoveredBlock347Value0 := recoveredBlock347Arg1.
    recoveredBlock347Value1 := recoveredBlock347Value0.
    recoveredBlock347Value2 := recoveredLocal10.
    recoveredBlock347Value3 := (141) * (recoveredBlock347Value2).
    recoveredBlock347Value4 := (recoveredBlock347Value3) rounded.
    (recoveredBlock347Value1) x: (recoveredBlock347Value4).
    recoveredBlock347Value5 := recoveredBlock347Value0.
    (recoveredBlock347Value5) marginRight: (10).
    recoveredBlock347Value6 := recoveredBlock347Value0.
    (recoveredBlock347Value6) labelString: ('&OK').
    recoveredBlock347Value7 := recoveredBlock347Value0.
    (recoveredBlock347Value7) marginWidth: (0).
    recoveredBlock347Value8 := recoveredBlock347Value0.
    (recoveredBlock347Value8) marginHeight: (0).
    recoveredBlock347Value9 := recoveredBlock347Value0.
    recoveredBlock347Value10 := recoveredLocal9.
    recoveredBlock347Value11 := (5) * (recoveredBlock347Value10).
    recoveredBlock347Value12 := (recoveredBlock347Value11) rounded.
    (recoveredBlock347Value9) y: (recoveredBlock347Value12).
    recoveredBlock347Value13 := recoveredBlock347Value0.
    recoveredBlock347Value14 := recoveredLocal9.
    recoveredBlock347Value15 := (30) * (recoveredBlock347Value14).
    recoveredBlock347Value16 := (recoveredBlock347Value15) rounded.
    (recoveredBlock347Value13) height: (recoveredBlock347Value16).
    recoveredBlock347Value17 := recoveredBlock347Value0.
    (recoveredBlock347Value17) marginBottom: (10).
    recoveredBlock347Value18 := recoveredLocal10.
    recoveredBlock347Value19 := (75) * (recoveredBlock347Value18).
    recoveredBlock347Value20 := (recoveredBlock347Value19) rounded.
    recoveredBlock347Value21 := (recoveredBlock347Value0) width: (recoveredBlock347Value20).
    recoveredBlock347Value21
].
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := 'label'.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack3 := [:recoveredBlock449Arg1 | 
    | recoveredBlock449Stack0 recoveredBlock449Stack1 recoveredBlock449Stack2 recoveredBlock449Stack3 recoveredBlock449Stack4 recoveredBlock449Stack5 recoveredBlock449PC recoveredBlock449Step recoveredBlock449Done recoveredBlock449Result |
    recoveredBlock449Stack0 := self.
    recoveredBlock449PC := 456.
    recoveredBlock449Done := false.
    [recoveredBlock449Done not] whileTrue: [
        recoveredBlock449Step := recoveredBlock449PC.
        recoveredBlock449Step = 456 ifTrue: [
            recoveredBlock449Stack1 := recoveredBlock449Arg1.
            recoveredBlock449PC := 457.
        ].
        recoveredBlock449Step = 457 ifTrue: [
            recoveredBlock449Stack2 := recoveredBlock449Stack1.
            recoveredBlock449PC := 458.
        ].
        recoveredBlock449Step = 458 ifTrue: [
            recoveredBlock449Stack3 := 5.
            recoveredBlock449PC := 460.
        ].
        recoveredBlock449Step = 460 ifTrue: [
            recoveredBlock449Stack4 := recoveredLocal10.
            recoveredBlock449PC := 463.
        ].
        recoveredBlock449Step = 463 ifTrue: [
            recoveredBlock449Stack3 := (recoveredBlock449Stack3) * (recoveredBlock449Stack4).
            recoveredBlock449PC := 464.
        ].
        recoveredBlock449Step = 464 ifTrue: [
            recoveredBlock449Stack3 := (recoveredBlock449Stack3) rounded.
            recoveredBlock449PC := 466.
        ].
        recoveredBlock449Step = 466 ifTrue: [
            (recoveredBlock449Stack2) x: (recoveredBlock449Stack3).
            recoveredBlock449Stack2 := recoveredBlock449Stack1.
            recoveredBlock449PC := 469.
        ].
        recoveredBlock449Step = 469 ifTrue: [
            recoveredBlock449Stack3 := XmALIGNMENTBEGINNING.
            recoveredBlock449PC := 471.
        ].
        recoveredBlock449Step = 471 ifTrue: [
            (recoveredBlock449Stack2) alignment: (recoveredBlock449Stack3).
            recoveredBlock449Stack2 := recoveredBlock449Stack1.
            recoveredBlock449PC := 474.
        ].
        recoveredBlock449Step = 474 ifTrue: [
            recoveredBlock449Stack3 := modeGroupMode.
            recoveredBlock449PC := 476.
        ].
        recoveredBlock449Step = 476 ifTrue: [
            (recoveredBlock449Stack3) ifTrue: [recoveredBlock449PC := 480] ifFalse: [recoveredBlock449PC := 486].
        ].
        recoveredBlock449Step = 480 ifTrue: [
            recoveredBlock449Stack3 := 'Mode Group Type'.
            recoveredBlock449PC := 482.
        ].
        recoveredBlock449Step = 482 ifTrue: [
            recoveredBlock449PC := 488.
        ].
        recoveredBlock449Step = 486 ifTrue: [
            recoveredBlock449Stack3 := 'Enumeration Type'.
            recoveredBlock449PC := 488.
        ].
        recoveredBlock449Step = 488 ifTrue: [
            (recoveredBlock449Stack2) labelString: (recoveredBlock449Stack3).
            recoveredBlock449Stack2 := recoveredBlock449Stack1.
            recoveredBlock449PC := 491.
        ].
        recoveredBlock449Step = 491 ifTrue: [
            recoveredBlock449Stack3 := 5.
            recoveredBlock449PC := 493.
        ].
        recoveredBlock449Step = 493 ifTrue: [
            recoveredBlock449Stack4 := recoveredLocal9.
            recoveredBlock449PC := 496.
        ].
        recoveredBlock449Step = 496 ifTrue: [
            recoveredBlock449Stack3 := (recoveredBlock449Stack3) * (recoveredBlock449Stack4).
            recoveredBlock449PC := 497.
        ].
        recoveredBlock449Step = 497 ifTrue: [
            recoveredBlock449Stack3 := (recoveredBlock449Stack3) rounded.
            recoveredBlock449PC := 499.
        ].
        recoveredBlock449Step = 499 ifTrue: [
            (recoveredBlock449Stack2) y: (recoveredBlock449Stack3).
            recoveredBlock449Stack2 := recoveredBlock449Stack1.
            recoveredBlock449PC := 502.
        ].
        recoveredBlock449Step = 502 ifTrue: [
            recoveredBlock449Stack3 := self.
            recoveredBlock449PC := 503.
        ].
        recoveredBlock449Step = 503 ifTrue: [
            recoveredBlock449Stack3 := (recoveredBlock449Stack3) defaultLabelBlue.
            recoveredBlock449PC := 505.
        ].
        recoveredBlock449Step = 505 ifTrue: [
            (recoveredBlock449Stack2) foregroundColor: (recoveredBlock449Stack3).
            recoveredBlock449PC := 507.
        ].
        recoveredBlock449Step = 507 ifTrue: [
            recoveredBlock449Result := recoveredBlock449Stack1.
            recoveredBlock449Done := true.
        ].
    ].
    recoveredBlock449Result
].
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack2 := 'label'.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack2 := 'enumComboBox'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack3 := [:recoveredBlock530Arg1 | 
    | recoveredBlock530Value0 recoveredBlock530Value1 recoveredBlock530Value2 recoveredBlock530Value3 recoveredBlock530Value4 recoveredBlock530Value5 recoveredBlock530Value6 recoveredBlock530Value7 recoveredBlock530Value8 recoveredBlock530Value9 recoveredBlock530Value10 recoveredBlock530Value11 recoveredBlock530Value12 recoveredBlock530Value13 recoveredBlock530Value14 recoveredBlock530Value15 recoveredBlock530Value16 recoveredBlock530Value17 |
    recoveredBlock530Value0 := recoveredBlock530Arg1.
    recoveredBlock530Value1 := recoveredBlock530Value0.
    recoveredBlock530Value2 := recoveredLocal10.
    recoveredBlock530Value3 := (8) * (recoveredBlock530Value2).
    recoveredBlock530Value4 := (recoveredBlock530Value3) rounded.
    (recoveredBlock530Value1) x: (recoveredBlock530Value4).
    recoveredBlock530Value5 := recoveredBlock530Value0.
    (recoveredBlock530Value5) visibleItemCount: (25).
    recoveredBlock530Value6 := recoveredBlock530Value0.
    recoveredBlock530Value7 := recoveredLocal9.
    recoveredBlock530Value8 := (34) * (recoveredBlock530Value7).
    recoveredBlock530Value9 := (recoveredBlock530Value8) rounded.
    (recoveredBlock530Value6) y: (recoveredBlock530Value9).
    recoveredBlock530Value10 := recoveredBlock530Value0.
    recoveredBlock530Value11 := recoveredLocal9.
    recoveredBlock530Value12 := (24) * (recoveredBlock530Value11).
    recoveredBlock530Value13 := (recoveredBlock530Value12) rounded.
    (recoveredBlock530Value10) height: (recoveredBlock530Value13).
    recoveredBlock530Value14 := recoveredLocal10.
    recoveredBlock530Value15 := (148) * (recoveredBlock530Value14).
    recoveredBlock530Value16 := (recoveredBlock530Value15) rounded.
    recoveredBlock530Value17 := (recoveredBlock530Value0) width: (recoveredBlock530Value16).
    recoveredBlock530Value17
].
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack2 := 'enumComboBox'.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack2 := [:recoveredBlock612Arg1 | 
    | recoveredBlock612Value0 recoveredBlock612Value1 recoveredBlock612Value2 |
    recoveredBlock612Value0 := recoveredBlock612Arg1.
    recoveredBlock612Value1 := recoveredLocal6.
    recoveredBlock612Value2 := (recoveredBlock612Value0) workWindow: (recoveredBlock612Value1).
    recoveredBlock612Value2
].
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack2 := [:recoveredBlock636Arg1 | 
    | recoveredBlock636Value0 recoveredBlock636Value1 recoveredBlock636Value2 recoveredBlock636Value3 recoveredBlock636Value4 |
    recoveredBlock636Value0 := recoveredBlock636Arg1.
    recoveredBlock636Value1 := recoveredBlock636Value0.
    recoveredBlock636Value2 := recoveredLocal5.
    (recoveredBlock636Value1) cancelButton: (recoveredBlock636Value2).
    recoveredBlock636Value3 := recoveredLocal3.
    recoveredBlock636Value4 := (recoveredBlock636Value0) defaultButton: (recoveredBlock636Value3).
    recoveredBlock636Value4
].
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack2 := [:recoveredBlock668Arg1 | 
    | recoveredBlock668Value0 recoveredBlock668Value1 recoveredBlock668Value2 recoveredBlock668Value3 recoveredBlock668Value4 recoveredBlock668Value5 recoveredBlock668Value6 recoveredBlock668Value7 recoveredBlock668Value8 |
    recoveredBlock668Value0 := recoveredBlock668Arg1.
    recoveredBlock668Value1 := recoveredBlock668Value0.
    recoveredBlock668Value2 := XmATTACHWIDGET.
    (recoveredBlock668Value1) topAttachment: (recoveredBlock668Value2).
    recoveredBlock668Value3 := recoveredBlock668Value0.
    recoveredBlock668Value4 := recoveredLocal3.
    (recoveredBlock668Value3) topWidget: (recoveredBlock668Value4).
    recoveredBlock668Value5 := recoveredBlock668Value0.
    (recoveredBlock668Value5) topOffset: (10).
    recoveredBlock668Value6 := recoveredBlock668Value0.
    recoveredBlock668Value7 := XmATTACHFORM.
    (recoveredBlock668Value6) rightAttachment: (recoveredBlock668Value7).
    recoveredBlock668Value8 := (recoveredBlock668Value0) rightOffset: (5).
    recoveredBlock668Value8
].
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack2 := [:recoveredBlock722Arg1 | 
    | recoveredBlock722Value0 recoveredBlock722Value1 recoveredBlock722Value2 recoveredBlock722Value3 recoveredBlock722Value4 recoveredBlock722Value5 recoveredBlock722Value6 recoveredBlock722Value7 recoveredBlock722Value8 recoveredBlock722Value9 recoveredBlock722Value10 recoveredBlock722Value11 |
    recoveredBlock722Value0 := recoveredBlock722Arg1.
    recoveredBlock722Value1 := recoveredBlock722Value0.
    recoveredBlock722Value2 := XmATTACHFORM.
    (recoveredBlock722Value1) bottomAttachment: (recoveredBlock722Value2).
    recoveredBlock722Value3 := recoveredBlock722Value0.
    (recoveredBlock722Value3) bottomOffset: (5).
    recoveredBlock722Value4 := recoveredBlock722Value0.
    recoveredBlock722Value5 := XmATTACHFORM.
    (recoveredBlock722Value4) topAttachment: (recoveredBlock722Value5).
    recoveredBlock722Value6 := recoveredBlock722Value0.
    (recoveredBlock722Value6) topOffset: (5).
    recoveredBlock722Value7 := recoveredBlock722Value0.
    recoveredBlock722Value8 := XmATTACHWIDGET.
    (recoveredBlock722Value7) rightAttachment: (recoveredBlock722Value8).
    recoveredBlock722Value9 := recoveredBlock722Value0.
    recoveredBlock722Value10 := recoveredLocal3.
    (recoveredBlock722Value9) rightWidget: (recoveredBlock722Value10).
    recoveredBlock722Value11 := (recoveredBlock722Value0) rightOffset: (10).
    recoveredBlock722Value11
].
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack2 := [:block2812532cArg1 | 
    | block2812532cValue0 block2812532cValue1 block2812532cValue2 block2812532cValue3 block2812532cValue4 block2812532cValue5 block2812532cValue6 |
    block2812532cValue0 := block2812532cArg1.
    block2812532cValue1 := block2812532cValue0.
    block2812532cValue2 := XmATTACHFORM.
    (block2812532cValue1) topAttachment: (block2812532cValue2).
    block2812532cValue3 := block2812532cValue0.
    (block2812532cValue3) topOffset: (5).
    block2812532cValue4 := block2812532cValue0.
    block2812532cValue5 := XmATTACHFORM.
    (block2812532cValue4) rightAttachment: (block2812532cValue5).
    block2812532cValue6 := (block2812532cValue0) rightOffset: (5).
    block2812532cValue6
].
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack2 := [:recoveredBlock838Arg1 | 
    | recoveredBlock838Value0 recoveredBlock838Value1 recoveredBlock838Value2 recoveredBlock838Value3 recoveredBlock838Value4 recoveredBlock838Value5 recoveredBlock838Value6 recoveredBlock838Value7 |
    recoveredBlock838Value0 := recoveredBlock838Arg1.
    recoveredBlock838Value1 := recoveredBlock838Value0.
    recoveredBlock838Value2 := XmATTACHFORM.
    (recoveredBlock838Value1) topAttachment: (recoveredBlock838Value2).
    recoveredBlock838Value3 := recoveredBlock838Value0.
    (recoveredBlock838Value3) topOffset: (5).
    recoveredBlock838Value4 := recoveredBlock838Value0.
    recoveredBlock838Value5 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock838Value4) leftAttachment: (recoveredBlock838Value5).
    recoveredBlock838Value6 := recoveredLocal1.
    recoveredBlock838Value7 := (recoveredBlock838Value0) leftWidget: (recoveredBlock838Value6).
    recoveredBlock838Value7
].
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack2 := [:recoveredBlock886Arg1 | 
    | recoveredBlock886Value0 recoveredBlock886Value1 recoveredBlock886Value2 recoveredBlock886Value3 recoveredBlock886Value4 recoveredBlock886Value5 recoveredBlock886Value6 recoveredBlock886Value7 recoveredBlock886Value8 |
    recoveredBlock886Value0 := recoveredBlock886Arg1.
    recoveredBlock886Value1 := recoveredBlock886Value0.
    recoveredBlock886Value2 := XmATTACHFORM.
    (recoveredBlock886Value1) leftAttachment: (recoveredBlock886Value2).
    recoveredBlock886Value3 := recoveredBlock886Value0.
    (recoveredBlock886Value3) leftOffset: (5).
    recoveredBlock886Value4 := recoveredBlock886Value0.
    recoveredBlock886Value5 := XmATTACHWIDGET.
    (recoveredBlock886Value4) rightAttachment: (recoveredBlock886Value5).
    recoveredBlock886Value6 := recoveredBlock886Value0.
    recoveredBlock886Value7 := recoveredLocal4.
    (recoveredBlock886Value6) rightWidget: (recoveredBlock886Value7).
    recoveredBlock886Value8 := (recoveredBlock886Value0) rightOffset: (5).
    recoveredBlock886Value8
].
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            recoveredStack4 := 'enumComboBoxSingleSelect:clientData:callData:'.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

