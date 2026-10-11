"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20029dd4; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
addRow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) addRow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d294; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
getElementsForConditions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) conditionNames.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d654; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
conditionColumns
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) conditionColumns.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e864; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
getMethodColumnIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) instructionColumns.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ed04; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
rows
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) rows.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030474; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
getElementsForInstructions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) instructionNames.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031174; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
canAddRow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) canAddRow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032364; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
canAddCondition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) canAddCondition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032cc4; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
canAddInstruction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) canAddInstruction.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034344; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
instructionColumns
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) instructionColumns.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200368d4; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
getRows
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) rows.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200378f4; bytecode file offset 0x934580"
!ConditionalTableCtrl methodsFor: 'recovered'!
canDeleteRow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) canDeleteRow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050d10; bytecode file offset 0x94d5ec"
!ConditionalTableCtrl methodsFor: 'recovered'!
getDefaultRow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) rows.
    recoveredValue2 := (recoveredValue1) + (-1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051f74; bytecode file offset 0x94f0e0"
!ConditionalTableCtrl methodsFor: 'recovered'!
getMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) methods.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057748; bytecode file offset 0x956284"
!ConditionalTableCtrl methodsFor: 'recovered'!
moveInstructionColumnLeft: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) moveInstructionColumnLeft: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058be8; bytecode file offset 0x956284"
!ConditionalTableCtrl methodsFor: 'recovered'!
moveInstructionColumnRight: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) moveInstructionColumnRight: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200661e4; bytecode file offset 0x963428"
!ConditionalTableCtrl methodsFor: 'recovered'!
model
    | recoveredValue0 |
    recoveredValue0 := model.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006784c; bytecode file offset 0x9646f8"
!ConditionalTableCtrl methodsFor: 'recovered'!
view
    | recoveredValue0 |
    recoveredValue0 := view.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20085b80; bytecode file offset 0x98245c"
!ConditionalTableCtrl methodsFor: 'recovered'!
removeConditionColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) removeConditionColumn: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20085b90; bytecode file offset 0x98245c"
!ConditionalTableCtrl methodsFor: 'recovered'!
moveConditionColumnRight: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) moveConditionColumnRight: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20085ba0; bytecode file offset 0x98245c"
!ConditionalTableCtrl methodsFor: 'recovered'!
moveConditionColumnLeft: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) moveConditionColumnLeft: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20085bbc; bytecode file offset 0x982498"
!ConditionalTableCtrl methodsFor: 'recovered'!
moveRowUp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := (recoveredValue0) moveRowUp: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20085bdc; bytecode file offset 0x982498"
!ConditionalTableCtrl methodsFor: 'recovered'!
addRowBehind: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := (recoveredValue0) addRow: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008642c; bytecode file offset 0x982e18"
!ConditionalTableCtrl methodsFor: 'recovered'!
getElementForCondition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) conditionNames.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086468; bytecode file offset 0x982e18"
!ConditionalTableCtrl methodsFor: 'recovered'!
getElementForInstruction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) instructionNames.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20097358; bytecode file offset 0x993c14"
!ConditionalTableCtrl methodsFor: 'recovered'!
removeInstructionColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) removeInstructionColumn: (recoveredValue1) notify: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a1ca4; bytecode file offset 0x99e5c8"
!ConditionalTableCtrl methodsFor: 'recovered'!
canRemoveColumn
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) canRemoveCondition.
    recoveredValue2 := (self) model.
    recoveredValue3 := (recoveredValue2) canRemoveInstruction.
    recoveredValue4 := (recoveredValue1) | (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200af6c4; bytecode file offset 0x9abf98"
!ConditionalTableCtrl methodsFor: 'recovered'!
getAllUsedElements
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getElementsForConditions.
    recoveredValue1 := (self) getElementsForInstructions.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be3f4; bytecode file offset 0x9bb178"
!ConditionalTableCtrl methodsFor: 'recovered'!
model: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    model := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beec8; bytecode file offset 0x9bc0b4"
!ConditionalTableCtrl methodsFor: 'recovered'!
view: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    view := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200da9b8; bytecode file offset 0x9d727c"
!ConditionalTableCtrl methodsFor: 'recovered'!
getInstructionValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) y.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := (recoveredValue0) getInstructionValue: (recoveredValue2) row: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200e48c8; bytecode file offset 0x9e119c"
!ConditionalTableCtrl methodsFor: 'recovered'!
releaseController
    | recoveredValue0 |
    recoveredValue0 := (self) model.
    (recoveredValue0) removeDependent: (self).
    (self) model: (nil).
    ^self
! !

"ASDBase.ic method 0x200eade0; bytecode file offset 0x9e76a4"
!ConditionalTableCtrl methodsFor: 'recovered'!
getConditionValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := (recoveredValue2) + (-1).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) y.
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (recoveredValue0) getConditionValue: (recoveredValue3) row: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201111d8; bytecode file offset 0xa0da9c"
!ConditionalTableCtrl methodsFor: 'recovered'!
setInstructionValue: recoveredArg1 forCell: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) x.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) y.
    recoveredValue6 := (recoveredValue5) + (1).
    (recoveredValue0) setInstructionValue: (recoveredValue1) column: (recoveredValue3) row: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201226f0; bytecode file offset 0xa1efc4"
!ConditionalTableCtrl methodsFor: 'recovered'!
initialize: recoveredArg1 withView: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) model: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) view: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x20123318; bytecode file offset 0xa1fbdc"
!ConditionalTableCtrl methodsFor: 'recovered'!
setConditionValue: recoveredArg1 forCell: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) x.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := (recoveredValue6) + (1).
    (recoveredValue0) setConditionValue: (recoveredValue1) column: (recoveredValue4) row: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2014a328; bytecode file offset 0xa46bf4"
!ConditionalTableCtrl methodsFor: 'recovered'!
getAllElements
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) primitiveVariables.
    recoveredValue3 := (recoveredValue2) asOrderedCollection.
    recoveredValue4 := (self) model.
    recoveredValue5 := (recoveredValue4) item.
    recoveredValue6 := (recoveredValue5) methodElements.
    recoveredValue7 := (recoveredValue6) asOrderedCollection.
    recoveredValue8 := (recoveredValue3) , (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2015120c; bytecode file offset 0xa4dad4"
!ConditionalTableCtrl methodsFor: 'recovered'!
isColumnRemoved
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) conditionColumns.
    recoveredValue2 := (self) view.
    recoveredValue3 := (recoveredValue2) conditionColumns.
    recoveredValue4 := (recoveredValue1) ~= (recoveredValue3).
    recoveredValue5 := (self) model.
    recoveredValue6 := (recoveredValue5) instructionColumns.
    recoveredValue7 := (self) view.
    recoveredValue8 := (recoveredValue7) instructionColumns.
    recoveredValue9 := (recoveredValue6) ~= (recoveredValue8).
    recoveredValue10 := (recoveredValue4) | (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x2017554c; bytecode file offset 0xa71e0c"
!ConditionalTableCtrl methodsFor: 'recovered'!
deleteRow: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) model.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) rows.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) deleteRow: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20175578; bytecode file offset 0xa71e38"
!ConditionalTableCtrl methodsFor: 'recovered'!
moveRowDown: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) model.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) rows.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) moveRowDown: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20199468; bytecode file offset 0xa95ddc"
!ConditionalTableCtrl methodsFor: 'recovered'!
columnsRemovedDialog
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('\') withCrs.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := RBUserInfo.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := ('The Conditional Table is using Elements which no longer exist!!') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('The corresponding columns were removed!!').
    recoveredValue5 := (recoveredValue1) message: (recoveredValue4).
    (recoveredValue5) prompt.
    ^self
! !

"ASDBase.ic method 0x20199490; bytecode file offset 0xa95ddc"
!ConditionalTableCtrl methodsFor: 'recovered'!
methodsRemovedDialog
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('\') withCrs.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := RBUserInfo.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := ('Found other methods then ''trigger''!!') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('These methods were removed!!').
    recoveredValue5 := (recoveredValue1) message: (recoveredValue4).
    (recoveredValue5) prompt.
    ^self
! !

"ASDBase.ic method 0x201a84e8; bytecode file offset 0xaa4da8"
!ConditionalTableCtrl methodsFor: 'recovered'!
addInstruction: recoveredArg1 element: recoveredArg2
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
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) addInstructionColumn: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) addInstructionColumn: (recoveredStack2) element: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b6120; bytecode file offset 0xab29e0"
!ConditionalTableCtrl methodsFor: 'recovered'!
addCondition: recoveredArg1 element: recoveredArg2
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
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) addConditionColumn: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) addConditionColumn: (recoveredStack2) element: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cc970; bytecode file offset 0xac923c"
!ConditionalTableCtrl methodsFor: 'recovered'!
addMethod: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'trigger'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) addMethod: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cc9ac; bytecode file offset 0xac9278"
!ConditionalTableCtrl methodsFor: 'recovered'!
removeMethod: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'trigger'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) removeMethod: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203bd170; bytecode file offset 0xcb9a60"
!ConditionalTableCtrl methodsFor: 'recovered'!
getImportedMethods
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280f64bcArg1 :block280f64bcArg2 | 
    | block280f64bcValue0 block280f64bcValue1 block280f64bcValue2 block280f64bcValue3 block280f64bcValue4 |
    block280f64bcValue0 := block280f64bcArg1.
    block280f64bcValue1 := (block280f64bcValue0) elementName.
    block280f64bcValue2 := block280f64bcArg2.
    block280f64bcValue3 := (block280f64bcValue2) elementName.
    block280f64bcValue4 := (block280f64bcValue1) < (block280f64bcValue3).
    block280f64bcValue4
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) sgClass.
    recoveredBlock35Value2 := (recoveredBlock35Value1) allMethods.
    recoveredBlock35Value3 := [:recoveredBlock35Block49Arg1 | 
    | recoveredBlock35Block49Value0 recoveredBlock35Block49Value1 recoveredBlock35Block49Value2 recoveredBlock35Block49Value3 recoveredBlock35Block49Value4 recoveredBlock35Block49Value5 recoveredBlock35Block49Value6 |
    recoveredBlock35Block49Value0 := recoveredLocal1.
    recoveredBlock35Block49Value1 := recoveredBlock35Arg1.
    recoveredBlock35Block49Value2 := (recoveredBlock35Block49Value1) label.
    recoveredBlock35Block49Value3 := recoveredBlock35Block49Arg1.
    recoveredBlock35Block49Value4 := (recoveredBlock35Block49Value3) esdlName.
    recoveredBlock35Block49Value5 := (recoveredBlock35Block49Value2) , (recoveredBlock35Block49Value4).
    recoveredBlock35Block49Value6 := (recoveredBlock35Block49Value0) add: (recoveredBlock35Block49Value5).
    recoveredBlock35Block49Value6
].
    recoveredBlock35Value4 := (recoveredBlock35Value2) do: (recoveredBlock35Value3).
    recoveredBlock35Value4
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e8238; bytecode file offset 0xce4b14"
!ConditionalTableCtrl methodsFor: 'recovered'!
checkMethods
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMethods.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGMethod.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'trigger'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithName: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addMethod: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMethods.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMethods.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 :recoveredBlock48Arg2 | 
    | recoveredBlock48Stack0 recoveredBlock48Stack1 recoveredBlock48Stack2 recoveredBlock48Stack3 recoveredBlock48Stack4 recoveredBlock48PC recoveredBlock48Step recoveredBlock48Done recoveredBlock48Result |
    recoveredBlock48Stack0 := self.
    recoveredBlock48PC := 54.
    recoveredBlock48Done := false.
    [recoveredBlock48Done not] whileTrue: [
        recoveredBlock48Step := recoveredBlock48PC.
        recoveredBlock48Step = 54 ifTrue: [
            recoveredBlock48Stack1 := nil.
            recoveredBlock48PC := 55.
        ].
        recoveredBlock48Step = 55 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 56.
        ].
        recoveredBlock48Step = 56 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) methodName.
            recoveredBlock48PC := 58.
        ].
        recoveredBlock48Step = 58 ifTrue: [
            recoveredBlock48Stack3 := 'trigger'.
            recoveredBlock48PC := 60.
        ].
        recoveredBlock48Step = 60 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) ~= (recoveredBlock48Stack3).
            recoveredBlock48PC := 61.
        ].
        recoveredBlock48Step = 61 ifTrue: [
            (recoveredBlock48Stack2) ifTrue: [recoveredBlock48PC := 64] ifFalse: [recoveredBlock48PC := 74].
        ].
        recoveredBlock48Step = 64 ifTrue: [
            recoveredBlock48PC := 65.
        ].
        recoveredBlock48Step = 65 ifTrue: [
            recoveredBlock48Stack1 := self.
            recoveredBlock48PC := 66.
        ].
        recoveredBlock48Step = 66 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 67.
        ].
        recoveredBlock48Step = 67 ifTrue: [
            (recoveredBlock48Stack1) removeMethod: (recoveredBlock48Stack2).
            recoveredBlock48PC := 69.
        ].
        recoveredBlock48Step = 69 ifTrue: [
            recoveredBlock48Stack1 := true.
            recoveredBlock48PC := 70.
        ].
        recoveredBlock48Step = 70 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Stack1.
            recoveredBlock48PC := 71.
        ].
        recoveredBlock48Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock48Stack2.
            recoveredBlock48PC := 74.
        ].
        recoveredBlock48Step = 74 ifTrue: [
            recoveredBlock48Result := recoveredBlock48Stack1.
            recoveredBlock48Done := true.
        ].
    ].
    recoveredBlock48Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) methodsRemovedDialog.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fa814; bytecode file offset 0xcf70f8"
!ConditionalTableCtrl methodsFor: 'recovered'!
getUnusedElementsForCondition
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) conditionNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveVariables.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) includes: (recoveredBlock13Value1).
    recoveredBlock13Value3 := (recoveredBlock13Value2) not.
    recoveredBlock13Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:block280f9d20Arg1 :block280f9d20Arg2 | 
    | block280f9d20Value0 block280f9d20Value1 block280f9d20Value2 block280f9d20Value3 block280f9d20Value4 |
    block280f9d20Value0 := block280f9d20Arg1.
    block280f9d20Value1 := (block280f9d20Value0) elementName.
    block280f9d20Value2 := block280f9d20Arg2.
    block280f9d20Value3 := (block280f9d20Value2) elementName.
    block280f9d20Value4 := (block280f9d20Value1) < (block280f9d20Value3).
    block280f9d20Value4
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodElements.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 |
    recoveredBlock51Value0 := recoveredLocal1.
    recoveredBlock51Value1 := recoveredBlock51Arg1.
    recoveredBlock51Value2 := (recoveredBlock51Value0) includes: (recoveredBlock51Value1).
    recoveredBlock51Value3 := (recoveredBlock51Value2) not.
    recoveredBlock51Value3
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := [:block280f9d44Arg1 :block280f9d44Arg2 | 
    | block280f9d44Value0 block280f9d44Value1 block280f9d44Value2 block280f9d44Value3 block280f9d44Value4 |
    block280f9d44Value0 := block280f9d44Arg1.
    block280f9d44Value1 := (block280f9d44Value0) elementName.
    block280f9d44Value2 := block280f9d44Arg2.
    block280f9d44Value3 := (block280f9d44Value2) elementName.
    block280f9d44Value4 := (block280f9d44Value1) < (block280f9d44Value3).
    block280f9d44Value4
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040de0c; bytecode file offset 0xd0a6f8"
!ConditionalTableCtrl methodsFor: 'recovered'!
getUnusedElementsForInstruction
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) instructionNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveVariables.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) includes: (recoveredBlock13Value1).
    recoveredBlock13Value3 := (recoveredBlock13Value2) not.
    recoveredBlock13Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:block280fb13cArg1 :block280fb13cArg2 | 
    | block280fb13cValue0 block280fb13cValue1 block280fb13cValue2 block280fb13cValue3 block280fb13cValue4 |
    block280fb13cValue0 := block280fb13cArg1.
    block280fb13cValue1 := (block280fb13cValue0) elementName.
    block280fb13cValue2 := block280fb13cArg2.
    block280fb13cValue3 := (block280fb13cValue2) elementName.
    block280fb13cValue4 := (block280fb13cValue1) < (block280fb13cValue3).
    block280fb13cValue4
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodElements.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := (recoveredBlock51Value0) isVariable.
    recoveredBlock51Value2 := recoveredLocal1.
    recoveredBlock51Value3 := recoveredBlock51Arg1.
    recoveredBlock51Value4 := (recoveredBlock51Value2) includes: (recoveredBlock51Value3).
    recoveredBlock51Value5 := (recoveredBlock51Value4) not.
    recoveredBlock51Value6 := (recoveredBlock51Value1) & (recoveredBlock51Value5).
    recoveredBlock51Value6
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [:block280fb160Arg1 :block280fb160Arg2 | 
    | block280fb160Value0 block280fb160Value1 block280fb160Value2 block280fb160Value3 block280fb160Value4 |
    block280fb160Value0 := block280fb160Arg1.
    block280fb160Value1 := (block280fb160Value0) elementName.
    block280fb160Value2 := block280fb160Arg2.
    block280fb160Value3 := (block280fb160Value2) elementName.
    block280fb160Value4 := (block280fb160Value1) < (block280fb160Value3).
    block280fb160Value4
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e8414; bytecode file offset 0xde4cf8"
!ConditionalTableCtrl methodsFor: 'recovered'!
checkElements
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllUsedElements.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 :recoveredBlock9Arg2 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := false.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredLocal2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack2 := 'methods'.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) = (recoveredBlock9Stack2).
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 30] ifFalse: [recoveredBlock9PC := 38].
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredLocal2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) getAllElements.
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack2 := [:recoveredBlock9Block40Arg1 | 
    | recoveredBlock9Block40Stack0 recoveredBlock9Block40Stack1 recoveredBlock9Block40Stack2 recoveredBlock9Block40Stack3 recoveredBlock9Block40Stack4 recoveredBlock9Block40PC recoveredBlock9Block40Step recoveredBlock9Block40Done recoveredBlock9Block40Result |
    recoveredBlock9Block40Stack0 := nil.
    recoveredBlock9Block40PC := 46.
    recoveredBlock9Block40Done := false.
    [recoveredBlock9Block40Done not] whileTrue: [
        recoveredBlock9Block40Step := recoveredBlock9Block40PC.
        recoveredBlock9Block40Step = 46 ifTrue: [
            recoveredBlock9Block40Stack1 := nil.
            recoveredBlock9Block40PC := 47.
        ].
        recoveredBlock9Block40Step = 47 ifTrue: [
            recoveredBlock9Block40Stack2 := recoveredBlock9Arg1.
            recoveredBlock9Block40PC := 50.
        ].
        recoveredBlock9Block40Step = 50 ifTrue: [
            recoveredBlock9Block40Stack2 := (recoveredBlock9Block40Stack2) aliasName.
            recoveredBlock9Block40PC := 51.
        ].
        recoveredBlock9Block40Step = 51 ifTrue: [
            recoveredBlock9Block40Stack3 := recoveredBlock9Block40Arg1.
            recoveredBlock9Block40PC := 52.
        ].
        recoveredBlock9Block40Step = 52 ifTrue: [
            recoveredBlock9Block40Stack3 := (recoveredBlock9Block40Stack3) aliasName.
            recoveredBlock9Block40PC := 53.
        ].
        recoveredBlock9Block40Step = 53 ifTrue: [
            recoveredBlock9Block40Stack2 := (recoveredBlock9Block40Stack2) = (recoveredBlock9Block40Stack3).
            recoveredBlock9Block40PC := 54.
        ].
        recoveredBlock9Block40Step = 54 ifTrue: [
            (recoveredBlock9Block40Stack2) ifTrue: [recoveredBlock9Block40PC := 58] ifFalse: [recoveredBlock9Block40PC := 64].
        ].
        recoveredBlock9Block40Step = 58 ifTrue: [
            recoveredBlock9Block40PC := 59.
        ].
        recoveredBlock9Block40Step = 59 ifTrue: [
            recoveredBlock9Block40Stack1 := true.
            recoveredBlock9Block40PC := 60.
        ].
        recoveredBlock9Block40Step = 60 ifTrue: [
            recoveredBlock9Block40Stack2 := recoveredBlock9Block40Stack1.
            recoveredBlock9Block40PC := 61.
        ].
        recoveredBlock9Block40Step = 61 ifTrue: [
            recoveredLocal2 := recoveredBlock9Block40Stack2.
            recoveredBlock9Block40PC := 64.
        ].
        recoveredBlock9Block40Step = 64 ifTrue: [
            recoveredBlock9Block40Result := recoveredBlock9Block40Stack1.
            recoveredBlock9Block40Done := true.
        ].
    ].
    recoveredBlock9Block40Result
].
            recoveredBlock9PC := 65.
        ].
        recoveredBlock9Step = 65 ifTrue: [
            (recoveredBlock9Stack1) do: (recoveredBlock9Stack2).
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 68.
        ].
        recoveredBlock9Step = 68 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal2.
            recoveredBlock9PC := 71.
        ].
        recoveredBlock9Step = 71 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 150] ifFalse: [recoveredBlock9PC := 74].
        ].
        recoveredBlock9Step = 74 ifTrue: [
            recoveredBlock9PC := 75.
        ].
        recoveredBlock9Step = 75 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 76.
        ].
        recoveredBlock9Step = 76 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) getElementsForConditions.
            recoveredBlock9PC := 78.
        ].
        recoveredBlock9Step = 78 ifTrue: [
            recoveredBlock9Stack2 := [:recoveredBlock9Block78Arg1 :recoveredBlock9Block78Arg2 | 
    | recoveredBlock9Block78Stack0 recoveredBlock9Block78Stack1 recoveredBlock9Block78Stack2 recoveredBlock9Block78Stack3 recoveredBlock9Block78Stack4 recoveredBlock9Block78PC recoveredBlock9Block78Step recoveredBlock9Block78Done recoveredBlock9Block78Result |
    recoveredBlock9Block78Stack0 := self.
    recoveredBlock9Block78PC := 84.
    recoveredBlock9Block78Done := false.
    [recoveredBlock9Block78Done not] whileTrue: [
        recoveredBlock9Block78Step := recoveredBlock9Block78PC.
        recoveredBlock9Block78Step = 84 ifTrue: [
            recoveredBlock9Block78Stack1 := nil.
            recoveredBlock9Block78PC := 85.
        ].
        recoveredBlock9Block78Step = 85 ifTrue: [
            recoveredBlock9Block78Stack2 := recoveredBlock9Block78Arg1.
            recoveredBlock9Block78PC := 86.
        ].
        recoveredBlock9Block78Step = 86 ifTrue: [
            recoveredBlock9Block78Stack2 := (recoveredBlock9Block78Stack2) aliasName.
            recoveredBlock9Block78PC := 87.
        ].
        recoveredBlock9Block78Step = 87 ifTrue: [
            recoveredBlock9Block78Stack3 := recoveredBlock9Arg1.
            recoveredBlock9Block78PC := 90.
        ].
        recoveredBlock9Block78Step = 90 ifTrue: [
            recoveredBlock9Block78Stack3 := (recoveredBlock9Block78Stack3) aliasName.
            recoveredBlock9Block78PC := 91.
        ].
        recoveredBlock9Block78Step = 91 ifTrue: [
            recoveredBlock9Block78Stack2 := (recoveredBlock9Block78Stack2) = (recoveredBlock9Block78Stack3).
            recoveredBlock9Block78PC := 92.
        ].
        recoveredBlock9Block78Step = 92 ifTrue: [
            (recoveredBlock9Block78Stack2) ifTrue: [recoveredBlock9Block78PC := 96] ifFalse: [recoveredBlock9Block78PC := 101].
        ].
        recoveredBlock9Block78Step = 96 ifTrue: [
            recoveredBlock9Block78PC := 97.
        ].
        recoveredBlock9Block78Step = 97 ifTrue: [
            recoveredBlock9Block78Stack1 := self.
            recoveredBlock9Block78PC := 98.
        ].
        recoveredBlock9Block78Step = 98 ifTrue: [
            recoveredBlock9Block78Stack2 := recoveredBlock9Block78Arg2.
            recoveredBlock9Block78PC := 99.
        ].
        recoveredBlock9Block78Step = 99 ifTrue: [
            recoveredBlock9Block78Stack1 := (recoveredBlock9Block78Stack1) removeConditionColumn: (recoveredBlock9Block78Stack2).
            recoveredBlock9Block78PC := 101.
        ].
        recoveredBlock9Block78Step = 101 ifTrue: [
            recoveredBlock9Block78Result := recoveredBlock9Block78Stack1.
            recoveredBlock9Block78Done := true.
        ].
    ].
    recoveredBlock9Block78Result
].
            recoveredBlock9PC := 102.
        ].
        recoveredBlock9Step = 102 ifTrue: [
            (recoveredBlock9Stack1) doWithIndex: (recoveredBlock9Stack2).
            recoveredBlock9PC := 104.
        ].
        recoveredBlock9Step = 104 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 105.
        ].
        recoveredBlock9Step = 105 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) getElementsForInstructions.
            recoveredBlock9PC := 107.
        ].
        recoveredBlock9Step = 107 ifTrue: [
            recoveredBlock9Stack2 := [:recoveredBlock9Block107Arg1 :recoveredBlock9Block107Arg2 | 
    | recoveredBlock9Block107Stack0 recoveredBlock9Block107Stack1 recoveredBlock9Block107Stack2 recoveredBlock9Block107Stack3 recoveredBlock9Block107Stack4 recoveredBlock9Block107PC recoveredBlock9Block107Step recoveredBlock9Block107Done recoveredBlock9Block107Result |
    recoveredBlock9Block107Stack0 := self.
    recoveredBlock9Block107PC := 114.
    recoveredBlock9Block107Done := false.
    [recoveredBlock9Block107Done not] whileTrue: [
        recoveredBlock9Block107Step := recoveredBlock9Block107PC.
        recoveredBlock9Block107Step = 114 ifTrue: [
            recoveredBlock9Block107Stack1 := nil.
            recoveredBlock9Block107PC := 115.
        ].
        recoveredBlock9Block107Step = 115 ifTrue: [
            recoveredBlock9Block107Stack2 := recoveredBlock9Block107Arg1.
            recoveredBlock9Block107PC := 116.
        ].
        recoveredBlock9Block107Step = 116 ifTrue: [
            recoveredBlock9Block107Stack3 := 'methods'.
            recoveredBlock9Block107PC := 118.
        ].
        recoveredBlock9Block107Step = 118 ifTrue: [
            recoveredBlock9Block107Stack2 := (recoveredBlock9Block107Stack2) ~= (recoveredBlock9Block107Stack3).
            recoveredBlock9Block107PC := 119.
        ].
        recoveredBlock9Block107Step = 119 ifTrue: [
            (recoveredBlock9Block107Stack2) ifTrue: [recoveredBlock9Block107PC := 122] ifFalse: [recoveredBlock9Block107PC := 142].
        ].
        recoveredBlock9Block107Step = 122 ifTrue: [
            recoveredBlock9Block107PC := 123.
        ].
        recoveredBlock9Block107Step = 123 ifTrue: [
            recoveredBlock9Block107Stack1 := nil.
            recoveredBlock9Block107PC := 124.
        ].
        recoveredBlock9Block107Step = 124 ifTrue: [
            recoveredBlock9Block107Stack2 := recoveredBlock9Block107Arg1.
            recoveredBlock9Block107PC := 125.
        ].
        recoveredBlock9Block107Step = 125 ifTrue: [
            recoveredBlock9Block107Stack2 := (recoveredBlock9Block107Stack2) aliasName.
            recoveredBlock9Block107PC := 126.
        ].
        recoveredBlock9Block107Step = 126 ifTrue: [
            recoveredBlock9Block107Stack3 := recoveredBlock9Arg1.
            recoveredBlock9Block107PC := 129.
        ].
        recoveredBlock9Block107Step = 129 ifTrue: [
            recoveredBlock9Block107Stack3 := (recoveredBlock9Block107Stack3) aliasName.
            recoveredBlock9Block107PC := 130.
        ].
        recoveredBlock9Block107Step = 130 ifTrue: [
            recoveredBlock9Block107Stack2 := (recoveredBlock9Block107Stack2) = (recoveredBlock9Block107Stack3).
            recoveredBlock9Block107PC := 131.
        ].
        recoveredBlock9Block107Step = 131 ifTrue: [
            (recoveredBlock9Block107Stack2) ifTrue: [recoveredBlock9Block107PC := 134] ifFalse: [recoveredBlock9Block107PC := 142].
        ].
        recoveredBlock9Block107Step = 134 ifTrue: [
            recoveredBlock9Block107PC := 135.
        ].
        recoveredBlock9Block107Step = 135 ifTrue: [
            recoveredBlock9Block107Stack1 := self.
            recoveredBlock9Block107PC := 136.
        ].
        recoveredBlock9Block107Step = 136 ifTrue: [
            recoveredBlock9Block107Stack1 := (recoveredBlock9Block107Stack1) model.
            recoveredBlock9Block107PC := 138.
        ].
        recoveredBlock9Block107Step = 138 ifTrue: [
            recoveredBlock9Block107Stack2 := recoveredBlock9Block107Arg2.
            recoveredBlock9Block107PC := 139.
        ].
        recoveredBlock9Block107Step = 139 ifTrue: [
            recoveredBlock9Block107Stack3 := true.
            recoveredBlock9Block107PC := 140.
        ].
        recoveredBlock9Block107Step = 140 ifTrue: [
            recoveredBlock9Block107Stack1 := (recoveredBlock9Block107Stack1) removeInstructionColumn: (recoveredBlock9Block107Stack2) notify: (recoveredBlock9Block107Stack3).
            recoveredBlock9Block107PC := 142.
        ].
        recoveredBlock9Block107Step = 142 ifTrue: [
            recoveredBlock9Block107Result := recoveredBlock9Block107Stack1.
            recoveredBlock9Block107Done := true.
        ].
    ].
    recoveredBlock9Block107Result
].
            recoveredBlock9PC := 143.
        ].
        recoveredBlock9Step = 143 ifTrue: [
            (recoveredBlock9Stack1) doWithIndex: (recoveredBlock9Stack2).
            recoveredBlock9PC := 145.
        ].
        recoveredBlock9Step = 145 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 146.
        ].
        recoveredBlock9Step = 146 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 147.
        ].
        recoveredBlock9Step = 147 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 150.
        ].
        recoveredBlock9Step = 150 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) columnsRemovedDialog.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

