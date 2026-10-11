"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002dd8; bytecode file offset 0x8ffcfc"
!SGFormulaParamDialog methodsFor: 'recovered'!
installActionKeys
    ^self
! !

"ASDBase.ic method 0x20042d0c; bytecode file offset 0x9451f8"
!SGFormulaParamDialog methodsFor: 'recovered'!
mapping
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('mapping').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200437ec; bytecode file offset 0x9451f8"
!SGFormulaParamDialog methodsFor: 'recovered'!
formula
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('formula').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200467bc; bytecode file offset 0x9451f8"
!SGFormulaParamDialog methodsFor: 'recovered'!
functions
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('funcBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046cdc; bytecode file offset 0x9451f8"
!SGFormulaParamDialog methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('posText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046f7c; bytecode file offset 0x9451f8"
!SGFormulaParamDialog methodsFor: 'recovered'!
operators
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('operatorBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004748c; bytecode file offset 0x9451f8"
!SGFormulaParamDialog methodsFor: 'recovered'!
cancelButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('cancelButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047cfc; bytecode file offset 0x9451f8"
!SGFormulaParamDialog methodsFor: 'recovered'!
identifiers
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('idList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200482ec; bytecode file offset 0x9451f8"
!SGFormulaParamDialog methodsFor: 'recovered'!
okButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('okButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a9d4; bytecode file offset 0x957a6c"
!SGFormulaParamDialog methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x200786b4; bytecode file offset 0x9757c8"
!SGFormulaParamDialog methodsFor: 'recovered'!
enableAdd
    ^true
! !

"ASDBase.ic method 0x20087438; bytecode file offset 0x983d14"
!SGFormulaParamDialog methodsFor: 'recovered'!
showPosition: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) updatePosition: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008762c; bytecode file offset 0x983f38"
!SGFormulaParamDialog methodsFor: 'recovered'!
focusToFormula: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) formula.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x2008c4dc; bytecode file offset 0x989498"
!SGFormulaParamDialog methodsFor: 'recovered'!
dialog
    (self) widgetAt: ('aDialogShell1').
    ^self
! !

"ASDBase.ic method 0x2009b024; bytecode file offset 0x9978f0"
!SGFormulaParamDialog methodsFor: 'recovered'!
defaultAction: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) itemPosition.
    (recoveredValue0) editItemAt: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200aa648; bytecode file offset 0x9a6f04"
!SGFormulaParamDialog methodsFor: 'recovered'!
updatePosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getInsertionPosition.
    recoveredValue2 := (recoveredValue1) + (1).
    (self) updatePositionValue: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200aeb38; bytecode file offset 0x9ab3fc"
!SGFormulaParamDialog methodsFor: 'recovered'!
cancel: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    result := nil.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200ca208; bytecode file offset 0x9c6acc"
!SGFormulaParamDialog methodsFor: 'recovered'!
losingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (self) formula.
    recoveredValue2 := (recoveredValue1) getString.
    (recoveredValue0) formula: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ea8a0; bytecode file offset 0x9e7168"
!SGFormulaParamDialog methodsFor: 'recovered'!
updatePositionValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) position.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := ('Pos: ') , (recoveredValue2).
    (recoveredValue0) labelString: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012387c; bytecode file offset 0xa20140"
!SGFormulaParamDialog methodsFor: 'recovered'!
visualInfo: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) icon: (nil).
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue3) at: (1).
    (recoveredValue0) label: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20139770; bytecode file offset 0xa36038"
!SGFormulaParamDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) initializeWidgets.
    (self) installActionKeys.
    (self) updateFonts.
    (self) icon: ('EditorFormula').
    ^self
! !

"ASDBase.ic method 0x201515bc; bytecode file offset 0xa4de88"
!SGFormulaParamDialog methodsFor: 'recovered'!
checkFunctionsSensitive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComposite.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) functions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016b5cc; bytecode file offset 0xa67e94"
!SGFormulaParamDialog methodsFor: 'recovered'!
delete
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) identifiers.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) uiController.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) removeIdentifier: (recoveredValue3).
    recoveredValue4 := (self) identifiers.
    recoveredValue5 := (self) uiController.
    recoveredValue6 := (recoveredValue5) identifiers.
    (recoveredValue4) items: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201de3c4; bytecode file offset 0xadac8c"
!SGFormulaParamDialog methodsFor: 'recovered'!
edit
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) editItemAt: (recoveredStack1).
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

"ASDBase.ic method 0x2024e030; bytecode file offset 0xb4a914"
!SGFormulaParamDialog methodsFor: 'recovered'!
popupMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('add') label: ('~Add').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('delete') label: ('~Delete').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('edit') label: ('~Edit').
    recoveredLocal1 := recoveredValue2.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202685d8; bytecode file offset 0xb64eb4"
!SGFormulaParamDialog methodsFor: 'recovered'!
beginEdit: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := EwTextEditPolicy.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) on: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := (0) @ (recoveredValue9).
    (recoveredValue7) selection: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue6) value: (recoveredValue11).
    recoveredValue12 := recoveredArg3.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredLocal2.
    (recoveredValue13) editPolicy: (recoveredValue14).
    (recoveredValue12) doit: (true).
    ^self
! !

"ASDBase.ic method 0x2028c1cc; bytecode file offset 0xb88aa8"
!SGFormulaParamDialog methodsFor: 'recovered'!
add
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableAdd.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) editIndex.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addIdentifier: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifiers.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) editItemAt: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20294128; bytecode file offset 0xb90a24"
!SGFormulaParamDialog methodsFor: 'recovered'!
funcBox: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) functions.
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setText: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) focusToFormula: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) showPosition: (recoveredStack1) clientData: (recoveredStack2) event: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20294150; bytecode file offset 0xb90a24"
!SGFormulaParamDialog methodsFor: 'recovered'!
operatorBox: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) operators.
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setText: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) focusToFormula: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) showPosition: (recoveredStack1) clientData: (recoveredStack2) event: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b9190; bytecode file offset 0xbb5a68"
!SGFormulaParamDialog methodsFor: 'recovered'!
assignID: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setText: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) focusToFormula: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) showPosition: (recoveredStack1) clientData: (recoveredStack2) event: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d3410; bytecode file offset 0xbcfcec"
!SGFormulaParamDialog methodsFor: 'recovered'!
setText: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectionPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInsertionPosition.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) insertAndShow: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) toPos: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) formula: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036d2bc; bytecode file offset 0xc69bb8"
!SGFormulaParamDialog methodsFor: 'recovered'!
initializeWidgets
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) dialog.
    recoveredValue1 := (self) uiController.
    recoveredValue2 := (recoveredValue1) getParameterName.
    recoveredValue3 := ('Formula Editor for: %1') bindWith: (recoveredValue2).
    (recoveredValue0) title: (recoveredValue3).
    recoveredValue4 := (self) formula.
    recoveredValue5 := (self) uiController.
    recoveredValue6 := (recoveredValue5) getFormula.
    (recoveredValue4) value: (recoveredValue6).
    recoveredValue7 := (self) uiController.
    recoveredValue8 := (recoveredValue7) getFunctions.
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := (self) functions.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue10) items: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue12) size.
    (recoveredValue9) visibleItemCount: (recoveredValue13).
    recoveredValue14 := (self) uiController.
    recoveredValue15 := (recoveredValue14) getOperators.
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := (self) operators.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := recoveredLocal1.
    (recoveredValue17) items: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) size.
    (recoveredValue16) visibleItemCount: (recoveredValue20).
    recoveredValue21 := (self) formula.
    (self) updatePosition: (recoveredValue21).
    (self) checkFunctionsSensitive.
    ^self
! !

"ASDBase.ic method 0x20417a30; bytecode file offset 0xd14320"
!SGFormulaParamDialog methodsFor: 'recovered'!
valueChange: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIdentifiersFromFormula: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'X'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 :recoveredBlock51Arg2 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 |
    recoveredBlock51Value0 := recoveredLocal3.
    recoveredBlock51Value1 := recoveredBlock51Arg1.
    recoveredBlock51Value2 := recoveredBlock51Arg2.
    recoveredBlock51Value3 := (recoveredBlock51Value2) printString.
    recoveredBlock51Value4 := ('X') , (recoveredBlock51Value3).
    recoveredBlock51Value5 := (recoveredBlock51Value0) at: (recoveredBlock51Value1) put: (recoveredBlock51Value4).
    recoveredBlock51Value5
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceIdentifiersIn: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapping.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) setText: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c3d1c; bytecode file offset 0xdc0638"
!SGFormulaParamDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) formula: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeInfoToDataModel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            result := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CwMessagePrompter.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'FormulaError'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := result.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) messageText.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := XmOK.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) buttonType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := XmICONERROR.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) iconType: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := result.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) setInsertionPosition: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := result.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) updatePositionValue: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteUnusedIdentifiers.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := CwMessagePrompter.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'FormulaError'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := XmOK.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) buttonType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := XmICONERROR.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) iconType: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e1214; bytecode file offset 0xdddb2c"
!SGFormulaParamDialog methodsFor: 'recovered'!
endEdit: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
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
            recoveredStack1 := (recoveredStack1) buildValidANSICIdentifier.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := CwMessagePrompter.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'FormulaError'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 'ErrorANSICId'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := XmOK.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) buttonType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := XmICONERROR.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) iconType: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIdentifier: (recoveredStack1) oldValue: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := CwMessagePrompter.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'FormulaError'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'ErrorIdUsed'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := XmOK.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) buttonType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := XmICONERROR.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) iconType: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkOpOrFunction: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := CwMessagePrompter.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'FormulaError'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'ErrorIdIsOpOrFunc'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := XmOK.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) buttonType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := XmICONERROR.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) iconType: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) refreshItem: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2069b010; bytecode file offset 0xf97acc"
!SGFormulaParamDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal20 := recoveredStack1.
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
            recoveredStack3 := [:block2812cf34Arg1 | 
    | block2812cf34Value0 block2812cf34Value1 block2812cf34Value2 block2812cf34Value3 block2812cf34Value4 block2812cf34Value5 block2812cf34Value6 block2812cf34Value7 block2812cf34Value8 block2812cf34Value9 block2812cf34Value10 block2812cf34Value11 block2812cf34Value12 |
    block2812cf34Value0 := block2812cf34Arg1.
    block2812cf34Value1 := block2812cf34Value0.
    block2812cf34Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2812cf34Value1) mwmInputMode: (block2812cf34Value2).
    block2812cf34Value3 := block2812cf34Value0.
    block2812cf34Value4 := MWMDECORALL.
    block2812cf34Value5 := MWMDECORMINIMIZE.
    block2812cf34Value6 := (block2812cf34Value4) | (block2812cf34Value5).
    block2812cf34Value7 := MWMDECORMAXIMIZE.
    block2812cf34Value8 := (block2812cf34Value6) | (block2812cf34Value7).
    (block2812cf34Value3) mwmDecorations: (block2812cf34Value8).
    block2812cf34Value9 := block2812cf34Value0.
    (block2812cf34Value9) title: ('FormulaEditor').
    block2812cf34Value10 := block2812cf34Value0.
    block2812cf34Value11 := (400) rounded.
    (block2812cf34Value10) height: (block2812cf34Value11).
    block2812cf34Value12 := (block2812cf34Value0) width: (500).
    block2812cf34Value12
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'mainWin'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'form'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'form'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'generalForm'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := [:block2812cf58Arg1 | 
    nil
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 'generaleForm'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := 'formulaText'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := [:block2812cf7cArg1 | 
    | block2812cf7cValue0 block2812cf7cValue1 |
    block2812cf7cValue0 := block2812cf7cArg1.
    block2812cf7cValue1 := (block2812cf7cValue0) labelString: ('Formula').
    block2812cf7cValue1
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'formulaText'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := 'formulaTextForm'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := [:block2812cfa0Arg1 | 
    nil
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := 'formulaTextForm'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := 'operatorBox'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := [:block2812cfc4Arg1 | 
    | block2812cfc4Value0 block2812cfc4Value1 |
    block2812cfc4Value0 := block2812cfc4Arg1.
    block2812cfc4Value1 := (block2812cfc4Value0) width: (70).
    block2812cfc4Value1
].
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 'operatorBox'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'funcBox'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := [:block2812cfe8Arg1 | 
    | block2812cfe8Value0 block2812cfe8Value1 |
    block2812cfe8Value0 := block2812cfe8Arg1.
    block2812cfe8Value1 := (block2812cfe8Value0) width: (70).
    block2812cfe8Value1
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'funcBox'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := 'operatorText'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := [:block2812d00cArg1 | 
    | block2812d00cValue0 block2812d00cValue1 block2812d00cValue2 |
    block2812d00cValue0 := block2812d00cArg1.
    block2812d00cValue1 := block2812d00cValue0.
    (block2812d00cValue1) labelString: ('Operator').
    block2812d00cValue2 := (block2812d00cValue0) width: (60).
    block2812d00cValue2
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := 'operatorText'.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := 'funcText'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := [:block2812d030Arg1 | 
    | block2812d030Value0 block2812d030Value1 block2812d030Value2 |
    block2812d030Value0 := block2812d030Arg1.
    block2812d030Value1 := block2812d030Value0.
    (block2812d030Value1) labelString: ('Function').
    block2812d030Value2 := (block2812d030Value0) width: (60).
    block2812d030Value2
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := 'funcText'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := 'formula'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := [:block2812d054Arg1 | 
    | block2812d054Value0 block2812d054Value1 block2812d054Value2 block2812d054Value3 block2812d054Value4 |
    block2812d054Value0 := block2812d054Arg1.
    block2812d054Value1 := block2812d054Value0.
    (block2812d054Value1) height: (200).
    block2812d054Value2 := block2812d054Value0.
    (block2812d054Value2) tabSpacing: (4).
    block2812d054Value3 := XmMULTILINEEDIT.
    block2812d054Value4 := (block2812d054Value0) editMode: (block2812d054Value3).
    block2812d054Value4
].
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack2 := 'formula'.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := [:block2812d078Arg1 | 
    | block2812d078Value0 block2812d078Value1 block2812d078Value2 block2812d078Value3 |
    block2812d078Value0 := block2812d078Arg1.
    block2812d078Value1 := block2812d078Value0.
    (block2812d078Value1) labelString: ('Cancel').
    block2812d078Value2 := block2812d078Value0.
    (block2812d078Value2) height: (24).
    block2812d078Value3 := (block2812d078Value0) width: (80).
    block2812d078Value3
].
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack3 := [:block2812d09cArg1 | 
    | block2812d09cValue0 block2812d09cValue1 block2812d09cValue2 block2812d09cValue3 |
    block2812d09cValue0 := block2812d09cArg1.
    block2812d09cValue1 := block2812d09cValue0.
    (block2812d09cValue1) labelString: ('OK').
    block2812d09cValue2 := block2812d09cValue0.
    (block2812d09cValue2) height: (24).
    block2812d09cValue3 := (block2812d09cValue0) width: (80).
    block2812d09cValue3
].
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack2 := 'posText'.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack3 := [:block2812d0c0Arg1 | 
    | block2812d0c0Value0 block2812d0c0Value1 |
    block2812d0c0Value0 := block2812d0c0Arg1.
    block2812d0c0Value1 := (block2812d0c0Value0) labelString: ('_').
    block2812d0c0Value1
].
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := 'posText'.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := 'formulaText'.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack3 := [:block2812d0e4Arg1 | 
    | block2812d0e4Value0 block2812d0e4Value1 |
    block2812d0e4Value0 := block2812d0e4Arg1.
    block2812d0e4Value1 := (block2812d0e4Value0) labelString: ('ASAM-2MC').
    block2812d0e4Value1
].
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack2 := 'mappingText'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack2 := 'mappingTextForm'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack3 := [:block2812d108Arg1 | 
    nil
].
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack2 := 'mappingTextForm'.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack2 := 'mapping'.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack3 := [:block2812d12cArg1 | 
    | block2812d12cValue0 block2812d12cValue1 block2812d12cValue2 block2812d12cValue3 block2812d12cValue4 block2812d12cValue5 block2812d12cValue6 |
    block2812d12cValue0 := block2812d12cArg1.
    block2812d12cValue1 := block2812d12cValue0.
    (block2812d12cValue1) wordWrap: (true).
    block2812d12cValue2 := block2812d12cValue0.
    (block2812d12cValue2) height: (200).
    block2812d12cValue3 := block2812d12cValue0.
    (block2812d12cValue3) tabSpacing: (4).
    block2812d12cValue4 := block2812d12cValue0.
    (block2812d12cValue4) editable: (false).
    block2812d12cValue5 := XmMULTILINEEDIT.
    block2812d12cValue6 := (block2812d12cValue0) editMode: (block2812d12cValue5).
    block2812d12cValue6
].
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack2 := 'mapping'.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack2 := [:recoveredBlock732Arg1 | 
    | recoveredBlock732Value0 recoveredBlock732Value1 recoveredBlock732Value2 |
    recoveredBlock732Value0 := recoveredBlock732Arg1.
    recoveredBlock732Value1 := recoveredLocal17.
    recoveredBlock732Value2 := (recoveredBlock732Value0) workWindow: (recoveredBlock732Value1).
    recoveredBlock732Value2
].
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack2 := [:recoveredBlock756Arg1 | 
    | recoveredBlock756Value0 recoveredBlock756Value1 recoveredBlock756Value2 recoveredBlock756Value3 recoveredBlock756Value4 recoveredBlock756Value5 recoveredBlock756Value6 recoveredBlock756Value7 recoveredBlock756Value8 recoveredBlock756Value9 recoveredBlock756Value10 recoveredBlock756Value11 recoveredBlock756Value12 recoveredBlock756Value13 recoveredBlock756Value14 |
    recoveredBlock756Value0 := recoveredBlock756Arg1.
    recoveredBlock756Value1 := recoveredBlock756Value0.
    recoveredBlock756Value2 := XmATTACHFORM.
    (recoveredBlock756Value1) leftAttachment: (recoveredBlock756Value2).
    recoveredBlock756Value3 := recoveredBlock756Value0.
    (recoveredBlock756Value3) leftOffset: (0).
    recoveredBlock756Value4 := recoveredBlock756Value0.
    recoveredBlock756Value5 := XmATTACHFORM.
    (recoveredBlock756Value4) rightAttachment: (recoveredBlock756Value5).
    recoveredBlock756Value6 := recoveredBlock756Value0.
    (recoveredBlock756Value6) rightOffset: (0).
    recoveredBlock756Value7 := recoveredBlock756Value0.
    recoveredBlock756Value8 := XmATTACHWIDGET.
    (recoveredBlock756Value7) bottomAttachment: (recoveredBlock756Value8).
    recoveredBlock756Value9 := recoveredBlock756Value0.
    (recoveredBlock756Value9) bottomOffset: (0).
    recoveredBlock756Value10 := recoveredBlock756Value0.
    recoveredBlock756Value11 := recoveredLocal9.
    (recoveredBlock756Value10) bottomWidget: (recoveredBlock756Value11).
    recoveredBlock756Value12 := recoveredBlock756Value0.
    recoveredBlock756Value13 := XmATTACHFORM.
    (recoveredBlock756Value12) topAttachment: (recoveredBlock756Value13).
    recoveredBlock756Value14 := (recoveredBlock756Value0) topOffset: (0).
    recoveredBlock756Value14
].
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack2 := [:block2812d150Arg1 | 
    | block2812d150Value0 block2812d150Value1 block2812d150Value2 block2812d150Value3 block2812d150Value4 block2812d150Value5 block2812d150Value6 block2812d150Value7 block2812d150Value8 block2812d150Value9 block2812d150Value10 block2812d150Value11 block2812d150Value12 |
    block2812d150Value0 := block2812d150Arg1.
    block2812d150Value1 := block2812d150Value0.
    block2812d150Value2 := XmATTACHFORM.
    (block2812d150Value1) topAttachment: (block2812d150Value2).
    block2812d150Value3 := block2812d150Value0.
    (block2812d150Value3) topOffset: (5).
    block2812d150Value4 := block2812d150Value0.
    block2812d150Value5 := XmATTACHFORM.
    (block2812d150Value4) rightAttachment: (block2812d150Value5).
    block2812d150Value6 := block2812d150Value0.
    (block2812d150Value6) rightOffset: (5).
    block2812d150Value7 := block2812d150Value0.
    block2812d150Value8 := XmATTACHFORM.
    (block2812d150Value7) leftAttachment: (block2812d150Value8).
    block2812d150Value9 := block2812d150Value0.
    (block2812d150Value9) leftOffset: (5).
    block2812d150Value10 := block2812d150Value0.
    block2812d150Value11 := XmATTACHPOSITION.
    (block2812d150Value10) bottomOffset: (block2812d150Value11).
    block2812d150Value12 := (block2812d150Value0) bottomPosition: (60).
    block2812d150Value12
].
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            recoveredStack2 := [:block2812d174Arg1 | 
    | block2812d174Value0 block2812d174Value1 block2812d174Value2 block2812d174Value3 block2812d174Value4 block2812d174Value5 block2812d174Value6 |
    block2812d174Value0 := block2812d174Arg1.
    block2812d174Value1 := block2812d174Value0.
    block2812d174Value2 := XmATTACHFORM.
    (block2812d174Value1) leftAttachment: (block2812d174Value2).
    block2812d174Value3 := block2812d174Value0.
    (block2812d174Value3) leftOffset: (0).
    block2812d174Value4 := block2812d174Value0.
    block2812d174Value5 := XmATTACHFORM.
    (block2812d174Value4) bottomAttachment: (block2812d174Value5).
    block2812d174Value6 := block2812d174Value0.
    (block2812d174Value6) bottomOffset: (10).
    block2812d174Value0
].
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack2 := [:recoveredBlock962Arg1 | 
    | recoveredBlock962Value0 recoveredBlock962Value1 recoveredBlock962Value2 recoveredBlock962Value3 recoveredBlock962Value4 recoveredBlock962Value5 recoveredBlock962Value6 recoveredBlock962Value7 recoveredBlock962Value8 |
    recoveredBlock962Value0 := recoveredBlock962Arg1.
    recoveredBlock962Value1 := recoveredBlock962Value0.
    recoveredBlock962Value2 := XmATTACHFORM.
    (recoveredBlock962Value1) bottomAttachment: (recoveredBlock962Value2).
    recoveredBlock962Value3 := recoveredBlock962Value0.
    (recoveredBlock962Value3) bottomOffset: (5).
    recoveredBlock962Value4 := recoveredBlock962Value0.
    recoveredBlock962Value5 := XmATTACHWIDGET.
    (recoveredBlock962Value4) leftAttachment: (recoveredBlock962Value5).
    recoveredBlock962Value6 := recoveredBlock962Value0.
    recoveredBlock962Value7 := recoveredLocal14.
    (recoveredBlock962Value6) leftWidget: (recoveredBlock962Value7).
    recoveredBlock962Value8 := (recoveredBlock962Value0) leftOffset: (5).
    recoveredBlock962Value8
].
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack2 := [:recoveredBlock1016Arg1 | 
    | recoveredBlock1016Value0 recoveredBlock1016Value1 recoveredBlock1016Value2 recoveredBlock1016Value3 recoveredBlock1016Value4 recoveredBlock1016Value5 recoveredBlock1016Value6 recoveredBlock1016Value7 |
    recoveredBlock1016Value0 := recoveredBlock1016Arg1.
    recoveredBlock1016Value1 := recoveredBlock1016Value0.
    recoveredBlock1016Value2 := XmATTACHWIDGET.
    (recoveredBlock1016Value1) leftAttachment: (recoveredBlock1016Value2).
    recoveredBlock1016Value3 := recoveredBlock1016Value0.
    recoveredBlock1016Value4 := recoveredLocal16.
    (recoveredBlock1016Value3) leftWidget: (recoveredBlock1016Value4).
    recoveredBlock1016Value5 := recoveredBlock1016Value0.
    recoveredBlock1016Value6 := XmATTACHFORM.
    (recoveredBlock1016Value5) bottomAttachment: (recoveredBlock1016Value6).
    recoveredBlock1016Value7 := recoveredBlock1016Value0.
    (recoveredBlock1016Value7) bottomOffset: (10).
    recoveredBlock1016Value0
].
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack2 := [:recoveredBlock1064Arg1 | 
    | recoveredBlock1064Value0 recoveredBlock1064Value1 recoveredBlock1064Value2 recoveredBlock1064Value3 recoveredBlock1064Value4 recoveredBlock1064Value5 recoveredBlock1064Value6 recoveredBlock1064Value7 |
    recoveredBlock1064Value0 := recoveredBlock1064Arg1.
    recoveredBlock1064Value1 := recoveredBlock1064Value0.
    recoveredBlock1064Value2 := XmATTACHFORM.
    (recoveredBlock1064Value1) bottomAttachment: (recoveredBlock1064Value2).
    recoveredBlock1064Value3 := recoveredBlock1064Value0.
    (recoveredBlock1064Value3) bottomOffset: (5).
    recoveredBlock1064Value4 := recoveredBlock1064Value0.
    recoveredBlock1064Value5 := XmATTACHWIDGET.
    (recoveredBlock1064Value4) leftAttachment: (recoveredBlock1064Value5).
    recoveredBlock1064Value6 := recoveredLocal13.
    recoveredBlock1064Value7 := (recoveredBlock1064Value0) leftWidget: (recoveredBlock1064Value6).
    recoveredBlock1064Value7
].
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack2 := [:recoveredBlock1112Arg1 | 
    | recoveredBlock1112Value0 recoveredBlock1112Value1 recoveredBlock1112Value2 recoveredBlock1112Value3 recoveredBlock1112Value4 recoveredBlock1112Value5 recoveredBlock1112Value6 recoveredBlock1112Value7 recoveredBlock1112Value8 recoveredBlock1112Value9 recoveredBlock1112Value10 recoveredBlock1112Value11 |
    recoveredBlock1112Value0 := recoveredBlock1112Arg1.
    recoveredBlock1112Value1 := recoveredBlock1112Value0.
    recoveredBlock1112Value2 := XmATTACHNONE.
    (recoveredBlock1112Value1) topAttachment: (recoveredBlock1112Value2).
    recoveredBlock1112Value3 := recoveredBlock1112Value0.
    (recoveredBlock1112Value3) topOffset: (5).
    recoveredBlock1112Value4 := recoveredBlock1112Value0.
    recoveredBlock1112Value5 := XmATTACHFORM.
    (recoveredBlock1112Value4) bottomAttachment: (recoveredBlock1112Value5).
    recoveredBlock1112Value6 := recoveredBlock1112Value0.
    (recoveredBlock1112Value6) bottomOffset: (5).
    recoveredBlock1112Value7 := recoveredBlock1112Value0.
    recoveredBlock1112Value8 := XmATTACHWIDGET.
    (recoveredBlock1112Value7) rightAttachment: (recoveredBlock1112Value8).
    recoveredBlock1112Value9 := recoveredBlock1112Value0.
    recoveredBlock1112Value10 := recoveredLocal9.
    (recoveredBlock1112Value9) rightWidget: (recoveredBlock1112Value10).
    recoveredBlock1112Value11 := (recoveredBlock1112Value0) rightOffset: (5).
    recoveredBlock1112Value11
].
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1180.
        ].
        recoveredStep = 1180 ifTrue: [
            recoveredStack2 := [:block2812d198Arg1 | 
    | block2812d198Value0 block2812d198Value1 block2812d198Value2 block2812d198Value3 block2812d198Value4 block2812d198Value5 block2812d198Value6 block2812d198Value7 block2812d198Value8 block2812d198Value9 |
    block2812d198Value0 := block2812d198Arg1.
    block2812d198Value1 := block2812d198Value0.
    block2812d198Value2 := XmATTACHNONE.
    (block2812d198Value1) topAttachment: (block2812d198Value2).
    block2812d198Value3 := block2812d198Value0.
    (block2812d198Value3) topOffset: (5).
    block2812d198Value4 := block2812d198Value0.
    block2812d198Value5 := XmATTACHFORM.
    (block2812d198Value4) bottomAttachment: (block2812d198Value5).
    block2812d198Value6 := block2812d198Value0.
    (block2812d198Value6) bottomOffset: (5).
    block2812d198Value7 := block2812d198Value0.
    block2812d198Value8 := XmATTACHFORM.
    (block2812d198Value7) rightAttachment: (block2812d198Value8).
    block2812d198Value9 := (block2812d198Value0) rightOffset: (5).
    block2812d198Value9
].
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1239.
        ].
        recoveredStep = 1239 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            recoveredStack2 := [:recoveredBlock1242Arg1 | 
    | recoveredBlock1242Value0 recoveredBlock1242Value1 recoveredBlock1242Value2 recoveredBlock1242Value3 recoveredBlock1242Value4 recoveredBlock1242Value5 recoveredBlock1242Value6 recoveredBlock1242Value7 recoveredBlock1242Value8 recoveredBlock1242Value9 recoveredBlock1242Value10 recoveredBlock1242Value11 recoveredBlock1242Value12 recoveredBlock1242Value13 recoveredBlock1242Value14 |
    recoveredBlock1242Value0 := recoveredBlock1242Arg1.
    recoveredBlock1242Value1 := recoveredBlock1242Value0.
    recoveredBlock1242Value2 := XmATTACHFORM.
    (recoveredBlock1242Value1) rightAttachment: (recoveredBlock1242Value2).
    recoveredBlock1242Value3 := recoveredBlock1242Value0.
    (recoveredBlock1242Value3) rightOffset: (5).
    recoveredBlock1242Value4 := recoveredBlock1242Value0.
    recoveredBlock1242Value5 := XmATTACHFORM.
    (recoveredBlock1242Value4) topAttachment: (recoveredBlock1242Value5).
    recoveredBlock1242Value6 := recoveredBlock1242Value0.
    (recoveredBlock1242Value6) topOffset: (0).
    recoveredBlock1242Value7 := recoveredBlock1242Value0.
    recoveredBlock1242Value8 := XmATTACHFORM.
    (recoveredBlock1242Value7) leftAttachment: (recoveredBlock1242Value8).
    recoveredBlock1242Value9 := recoveredBlock1242Value0.
    (recoveredBlock1242Value9) leftOffset: (5).
    recoveredBlock1242Value10 := recoveredBlock1242Value0.
    recoveredBlock1242Value11 := XmATTACHWIDGET.
    (recoveredBlock1242Value10) bottomAttachment: (recoveredBlock1242Value11).
    recoveredBlock1242Value12 := recoveredBlock1242Value0.
    recoveredBlock1242Value13 := recoveredLocal16.
    (recoveredBlock1242Value12) bottomWidget: (recoveredBlock1242Value13).
    recoveredBlock1242Value14 := (recoveredBlock1242Value0) bottomOffset: (5).
    recoveredBlock1242Value14
].
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack2 := [:recoveredBlock1324Arg1 | 
    | recoveredBlock1324Value0 recoveredBlock1324Value1 recoveredBlock1324Value2 recoveredBlock1324Value3 recoveredBlock1324Value4 recoveredBlock1324Value5 recoveredBlock1324Value6 recoveredBlock1324Value7 recoveredBlock1324Value8 recoveredBlock1324Value9 recoveredBlock1324Value10 recoveredBlock1324Value11 recoveredBlock1324Value12 recoveredBlock1324Value13 |
    recoveredBlock1324Value0 := recoveredBlock1324Arg1.
    recoveredBlock1324Value1 := recoveredBlock1324Value0.
    recoveredBlock1324Value2 := XmATTACHWIDGET.
    (recoveredBlock1324Value1) topAttachment: (recoveredBlock1324Value2).
    recoveredBlock1324Value3 := recoveredBlock1324Value0.
    recoveredBlock1324Value4 := recoveredLocal11.
    (recoveredBlock1324Value3) topWidget: (recoveredBlock1324Value4).
    recoveredBlock1324Value5 := recoveredBlock1324Value0.
    recoveredBlock1324Value6 := XmATTACHFORM.
    (recoveredBlock1324Value5) rightAttachment: (recoveredBlock1324Value6).
    recoveredBlock1324Value7 := recoveredBlock1324Value0.
    (recoveredBlock1324Value7) rightOffset: (5).
    recoveredBlock1324Value8 := recoveredBlock1324Value0.
    recoveredBlock1324Value9 := XmATTACHFORM.
    (recoveredBlock1324Value8) leftAttachment: (recoveredBlock1324Value9).
    recoveredBlock1324Value10 := recoveredBlock1324Value0.
    (recoveredBlock1324Value10) leftOffset: (5).
    recoveredBlock1324Value11 := recoveredBlock1324Value0.
    recoveredBlock1324Value12 := XmATTACHFORM.
    (recoveredBlock1324Value11) bottomAttachment: (recoveredBlock1324Value12).
    recoveredBlock1324Value13 := (recoveredBlock1324Value0) bottomOffset: (5).
    recoveredBlock1324Value13
].
            recoveredPC := 1392.
        ].
        recoveredStep = 1392 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1397.
        ].
        recoveredStep = 1397 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1400.
        ].
        recoveredStep = 1400 ifTrue: [
            recoveredStack2 := [:block2812d1bcArg1 | 
    | block2812d1bcValue0 block2812d1bcValue1 block2812d1bcValue2 block2812d1bcValue3 block2812d1bcValue4 block2812d1bcValue5 block2812d1bcValue6 block2812d1bcValue7 block2812d1bcValue8 block2812d1bcValue9 block2812d1bcValue10 block2812d1bcValue11 block2812d1bcValue12 |
    block2812d1bcValue0 := block2812d1bcArg1.
    block2812d1bcValue1 := block2812d1bcValue0.
    block2812d1bcValue2 := XmATTACHFORM.
    (block2812d1bcValue1) leftAttachment: (block2812d1bcValue2).
    block2812d1bcValue3 := block2812d1bcValue0.
    (block2812d1bcValue3) leftOffset: (5).
    block2812d1bcValue4 := block2812d1bcValue0.
    block2812d1bcValue5 := XmATTACHFORM.
    (block2812d1bcValue4) rightAttachment: (block2812d1bcValue5).
    block2812d1bcValue6 := block2812d1bcValue0.
    (block2812d1bcValue6) rightOffset: (5).
    block2812d1bcValue7 := block2812d1bcValue0.
    block2812d1bcValue8 := XmATTACHFORM.
    (block2812d1bcValue7) bottomAttachment: (block2812d1bcValue8).
    block2812d1bcValue9 := block2812d1bcValue0.
    (block2812d1bcValue9) bottomOffset: (5).
    block2812d1bcValue10 := block2812d1bcValue0.
    block2812d1bcValue11 := XmATTACHFORM.
    (block2812d1bcValue10) topAttachment: (block2812d1bcValue11).
    block2812d1bcValue12 := (block2812d1bcValue0) topOffset: (0).
    block2812d1bcValue12
].
            recoveredPC := 1404.
        ].
        recoveredStep = 1404 ifTrue: [
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack2 := [:recoveredBlock1476Arg1 | 
    | recoveredBlock1476Value0 recoveredBlock1476Value1 recoveredBlock1476Value2 recoveredBlock1476Value3 recoveredBlock1476Value4 recoveredBlock1476Value5 recoveredBlock1476Value6 recoveredBlock1476Value7 |
    recoveredBlock1476Value0 := recoveredBlock1476Arg1.
    recoveredBlock1476Value1 := recoveredBlock1476Value0.
    recoveredBlock1476Value2 := XmATTACHFORM.
    (recoveredBlock1476Value1) rightAttachment: (recoveredBlock1476Value2).
    recoveredBlock1476Value3 := recoveredBlock1476Value0.
    (recoveredBlock1476Value3) rightOffset: (5).
    recoveredBlock1476Value4 := recoveredBlock1476Value0.
    recoveredBlock1476Value5 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1476Value4) topAttachment: (recoveredBlock1476Value5).
    recoveredBlock1476Value6 := recoveredBlock1476Value0.
    recoveredBlock1476Value7 := recoveredLocal14.
    (recoveredBlock1476Value6) topWidget: (recoveredBlock1476Value7).
    recoveredBlock1476Value0
].
            recoveredPC := 1516.
        ].
        recoveredStep = 1516 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1521.
        ].
        recoveredStep = 1521 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1524.
        ].
        recoveredStep = 1524 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1528.
        ].
        recoveredStep = 1528 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1529.
        ].
        recoveredStep = 1529 ifTrue: [
            recoveredStack4 := 'ok:clientData:callData:'.
            recoveredPC := 1532.
        ].
        recoveredStep = 1532 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1537.
        ].
        recoveredStep = 1537 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1545.
        ].
        recoveredStep = 1545 ifTrue: [
            recoveredStack4 := 'cancel:clientData:callData:'.
            recoveredPC := 1548.
        ].
        recoveredStep = 1548 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1549.
        ].
        recoveredStep = 1549 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1553.
        ].
        recoveredStep = 1553 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1557.
        ].
        recoveredStep = 1557 ifTrue: [
            recoveredStack3 := XmNlosingFocusCallback.
            recoveredPC := 1560.
        ].
        recoveredStep = 1560 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1561.
        ].
        recoveredStep = 1561 ifTrue: [
            recoveredStack5 := 'losingFocus:clientData:callData:'.
            recoveredPC := 1564.
        ].
        recoveredStep = 1564 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1565.
        ].
        recoveredStep = 1565 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1569.
        ].
        recoveredStep = 1569 ifTrue: [
            recoveredStack3 := ButtonPressMask.
            recoveredPC := 1572.
        ].
        recoveredStep = 1572 ifTrue: [
            recoveredStack4 := KeyPressMask.
            recoveredPC := 1576.
        ].
        recoveredStep = 1576 ifTrue: [
            recoveredStack3 := (recoveredStack3) | (recoveredStack4).
            recoveredPC := 1578.
        ].
        recoveredStep = 1578 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1579.
        ].
        recoveredStep = 1579 ifTrue: [
            recoveredStack5 := 'showPosition:clientData:event:'.
            recoveredPC := 1582.
        ].
        recoveredStep = 1582 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1583.
        ].
        recoveredStep = 1583 ifTrue: [
            (recoveredStack2) addEventHandler: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1587.
        ].
        recoveredStep = 1587 ifTrue: [
            recoveredStack3 := XmNvalueChangedCallback.
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1591.
        ].
        recoveredStep = 1591 ifTrue: [
            recoveredStack5 := 'valueChange:clientData:callData:'.
            recoveredPC := 1594.
        ].
        recoveredStep = 1594 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1595.
        ].
        recoveredStep = 1595 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 1599.
        ].
        recoveredStep = 1599 ifTrue: [
            recoveredPC := 1600.
        ].
        recoveredStep = 1600 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1603.
        ].
        recoveredStep = 1603 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1604.
        ].
        recoveredStep = 1604 ifTrue: [
            recoveredStack3 := XmNsingleSelectionCallback.
            recoveredPC := 1608.
        ].
        recoveredStep = 1608 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1609.
        ].
        recoveredStep = 1609 ifTrue: [
            recoveredStack5 := 'operatorBox:clientData:callData:'.
            recoveredPC := 1612.
        ].
        recoveredStep = 1612 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1613.
        ].
        recoveredStep = 1613 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 1617.
        ].
        recoveredStep = 1617 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1621.
        ].
        recoveredStep = 1621 ifTrue: [
            recoveredStack4 := 'focusToFormula:clientData:callData:'.
            recoveredPC := 1624.
        ].
        recoveredStep = 1624 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1625.
        ].
        recoveredStep = 1625 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1629.
        ].
        recoveredStep = 1629 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1632.
        ].
        recoveredStep = 1632 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1633.
        ].
        recoveredStep = 1633 ifTrue: [
            recoveredStack3 := XmNsingleSelectionCallback.
            recoveredPC := 1636.
        ].
        recoveredStep = 1636 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1637.
        ].
        recoveredStep = 1637 ifTrue: [
            recoveredStack5 := 'funcBox:clientData:callData:'.
            recoveredPC := 1640.
        ].
        recoveredStep = 1640 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1641.
        ].
        recoveredStep = 1641 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 1645.
        ].
        recoveredStep = 1645 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1648.
        ].
        recoveredStep = 1648 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1649.
        ].
        recoveredStep = 1649 ifTrue: [
            recoveredStack4 := 'focusToFormula:clientData:callData:'.
            recoveredPC := 1652.
        ].
        recoveredStep = 1652 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1653.
        ].
        recoveredStep = 1653 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1657.
        ].
        recoveredStep = 1657 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1660.
        ].
        recoveredStep = 1660 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1664.
        ].
        recoveredStep = 1664 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1665.
        ].
        recoveredStep = 1665 ifTrue: [
            recoveredStack4 := 'focusToFormula:clientData:callData:'.
            recoveredPC := 1668.
        ].
        recoveredStep = 1668 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1669.
        ].
        recoveredStep = 1669 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1673.
        ].
        recoveredStep = 1673 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1676.
        ].
        recoveredStep = 1676 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1680.
        ].
        recoveredStep = 1680 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1681.
        ].
        recoveredStep = 1681 ifTrue: [
            recoveredStack4 := 'focusToFormula:clientData:callData:'.
            recoveredPC := 1684.
        ].
        recoveredStep = 1684 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1685.
        ].
        recoveredStep = 1685 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1689.
        ].
        recoveredStep = 1689 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1692.
        ].
        recoveredStep = 1692 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1697.
        ].
        recoveredStep = 1697 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1700.
        ].
        recoveredStep = 1700 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1705.
        ].
        recoveredStep = 1705 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1708.
        ].
        recoveredStep = 1708 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1713.
        ].
        recoveredStep = 1713 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1716.
        ].
        recoveredStep = 1716 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1721.
        ].
        recoveredStep = 1721 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1724.
        ].
        recoveredStep = 1724 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1729.
        ].
        recoveredStep = 1729 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1732.
        ].
        recoveredStep = 1732 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1737.
        ].
        recoveredStep = 1737 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1740.
        ].
        recoveredStep = 1740 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 1743.
        ].
        recoveredStep = 1743 ifTrue: [
            (recoveredStack1) defaultButton: (recoveredStack2).
            recoveredPC := 1747.
        ].
        recoveredStep = 1747 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1750.
        ].
        recoveredStep = 1750 ifTrue: [
            recoveredStack2 := recoveredLocal22.
            recoveredPC := 1753.
        ].
        recoveredStep = 1753 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 1756.
        ].
        recoveredStep = 1756 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1761.
        ].
        recoveredStep = 1761 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

