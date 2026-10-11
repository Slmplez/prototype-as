"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001ea0; bytecode file offset 0x8ffcfc"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
updateValue
    ^self
! !

"ASDBase.ic method 0x20014298; bytecode file offset 0x912098"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
bitmapClass
    | recoveredValue0 |
    recoveredValue0 := RBRenderableBitmapString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001de10; bytecode file offset 0x92209c"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
defaultValue
    ^#()
! !

"ASDBase.ic method 0x20078d54; bytecode file offset 0x9757c8"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
isMultiSelectConfgurationOption
    ^true
! !

"ASDBase.ic method 0x20091178; bytecode file offset 0x98de70"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
default
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super default.
    recoveredValue1 := (recoveredValue0) asArray.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20091510; bytecode file offset 0x98de70"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super value.
    recoveredValue1 := (recoveredValue0) asArray.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009bba4; bytecode file offset 0x998660"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
widgetsWithContextMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) widget.
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200baadc; bytecode file offset 0x9b7394"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
lines: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lines := recoveredValue0.
    (self) needsUpdate: (true).
    ^self
! !

"ASDBase.ic method 0x200c6580; bytecode file offset 0x9c3164"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
items: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    items := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6a44; bytecode file offset 0x9c3470"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
markerIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    markerIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6c38; bytecode file offset 0x9c36ec"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
markerIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    markerIcon := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6e74; bytecode file offset 0x9c38d8"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
noMarkerIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    noMarkerIcon := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c70b0; bytecode file offset 0x9c3a8c"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
selectColumnName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectColumnName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7204; bytecode file offset 0x9c3c10"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
decisionColumnName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    decisionColumnName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9b68; bytecode file offset 0x9c65cc"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
decisionCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) getValueFor: (recoveredValue2).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20106b6c; bytecode file offset 0xa03430"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
selectColumnName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectColumnName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Dialog'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := selectColumnName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106c0c; bytecode file offset 0xa034d0"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
decisionColumnName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := decisionColumnName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Decision'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := decisionColumnName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010a11c; bytecode file offset 0xa069e8"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
widgetOptionLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010a1ec; bytecode file offset 0xa06ab8"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
widgetOptionList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010b18c; bytecode file offset 0xa07a50"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
widgetHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) items.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (self) lines.
    recoveredValue3 := (recoveredValue1) min: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) * (20).
    recoveredValue5 := (recoveredValue4) + (25).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20116a3c; bytecode file offset 0xa132f0"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
lines
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lines.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            lines := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := lines.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116b68; bytecode file offset 0xa1341c"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
markerIndex
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := markerIndex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            markerIndex := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := markerIndex.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ad14; bytecode file offset 0xa275d0"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
items
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := items.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            items := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := items.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013bf60; bytecode file offset 0xa38820"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
markerIcon
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := markerIcon.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkBoxIconSet.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            markerIcon := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := markerIcon.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013c088; bytecode file offset 0xa38948"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
noMarkerIcon
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := noMarkerIcon.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkBoxIconNotSet.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            noMarkerIcon := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := noMarkerIcon.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014b590; bytecode file offset 0xa47e54"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
updateValueAt: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) getValuesAsDictionary.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) getValuesFromDictionary: (recoveredValue4).
    (self) value: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201886ac; bytecode file offset 0xa84f7c"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
decisionEndEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) newValue.
    (self) updateValueAt: (recoveredValue1) with: (recoveredValue3).
    recoveredValue4 := (self) widgetOptionList.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) itemPosition.
    recoveredValue7 := (1) @ (recoveredValue6).
    (recoveredValue4) refreshCell: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201cb2b0; bytecode file offset 0xac7b74"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
updateOptionValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetOptionList.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isDestroyed.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) refresh.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d9a6c; bytecode file offset 0xad6378"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
xmlDefault: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArrayOfSubstringsSeparatedBy: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280d5d44Arg1 | 
    | block280d5d44Value0 block280d5d44Value1 |
    block280d5d44Value0 := block280d5d44Arg1.
    block280d5d44Value1 := (block280d5d44Value0) isEmpty.
    block280d5d44Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) reject: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d9a8c; bytecode file offset 0xad6378"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
xmlValue: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArrayOfSubstringsSeparatedBy: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280d5d68Arg1 | 
    | block280d5d68Value0 block280d5d68Value1 |
    block280d5d68Value0 := block280d5d68Arg1.
    block280d5d68Value1 := (block280d5d68Value0) isEmpty.
    block280d5d68Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) reject: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2025c31c; bytecode file offset 0xb58bfc"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
decisionBeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EwComboBoxEditPolicy.
    recoveredValue1 := (self) widgetOptionList.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) editable: (false).
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) item.
    recoveredValue8 := (self) getValuesFor: (recoveredValue7).
    (recoveredValue5) items: (recoveredValue8).
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := (recoveredValue9) value.
    (recoveredValue3) value: (recoveredValue10).
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) doit: (true).
    recoveredValue13 := recoveredLocal1.
    (recoveredValue11) editPolicy: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x2026de28; bytecode file offset 0xb6a6f8"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
getValueFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getValuesAsDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := (self) items.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := [
    | recoveredBlock8Block18Value0 recoveredBlock8Block18Value1 |
    recoveredBlock8Block18Value0 := ASDDisplayStrings.
    recoveredBlock8Block18Value1 := (recoveredBlock8Block18Value0) undefinedDisplayString.
    ^recoveredBlock8Block18Value1
].
    recoveredBlock8Value3 := (recoveredBlock8Value0) at: (recoveredBlock8Value1) ifAbsent: (recoveredBlock8Value2).
    recoveredBlock8Value4 := (recoveredBlock8Value3) at: (2).
    recoveredBlock8Value5 := (recoveredBlock8Value4) first.
    recoveredBlock8Value5
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2027b5e8; bytecode file offset 0xb77ec4"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
getValuesFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ASDDisplayStrings.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefinedDisplayString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b71d8; bytecode file offset 0xbb3b24"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
xmlLastDefault
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastDefault.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) , ('\').
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) , (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := '\'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b7218; bytecode file offset 0xbb3b24"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
xmlDefault
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) , ('\').
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) , (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := '\'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b7238; bytecode file offset 0xbb3b24"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
xmlValue
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) , ('\').
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) , (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := '\'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ff794; bytecode file offset 0xbfc074"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
getValuesAsDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) value.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := '%'.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock11Stack2).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) size.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack2 := 2.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) ~= (recoveredBlock11Stack2).
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 34].
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) first.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) asSymbol.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Local1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) last.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) put: (recoveredBlock11Stack3).
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203272dc; bytecode file offset 0xc23bbc"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
getValuesFromDictionary: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block280ec2bcArg1 :block280ec2bcArg2 | 
    | block280ec2bcValue0 block280ec2bcValue1 block280ec2bcValue2 |
    block280ec2bcValue0 := block280ec2bcArg1.
    block280ec2bcValue1 := block280ec2bcArg2.
    block280ec2bcValue2 := (block280ec2bcValue0) < (block280ec2bcValue1).
    block280ec2bcValue2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (recoveredBlock26Value1) asString.
    recoveredBlock26Value3 := (recoveredBlock26Value2) , ('%').
    recoveredBlock26Value4 := recoveredArg1.
    recoveredBlock26Value5 := recoveredBlock26Arg1.
    recoveredBlock26Value6 := (recoveredBlock26Value4) at: (recoveredBlock26Value5).
    recoveredBlock26Value7 := (recoveredBlock26Value3) , (recoveredBlock26Value6).
    recoveredBlock26Value8 := (recoveredBlock26Value0) add: (recoveredBlock26Value7).
    recoveredBlock26Value8
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20348c20; bytecode file offset 0xc4550c"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
selectCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValuesFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getValueFor: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) markerIndex.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) markerIcon.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) noMarkerIcon.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitmapClass.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c4d28; bytecode file offset 0xcc1624"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
updateOptionWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) updateField.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateField.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) modified.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) updateOptionValue.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) updateOptionWidgetLabel.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) updateOptionWidgetLabelFont.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionList.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) sensitive.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionList.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) white.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionList.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := OS.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := CtlcolorDlg.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSysColor: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromOSRGB: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) needsUpdate: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20452f60; bytecode file offset 0xd4f860"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
createColumns
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := EwTableColumn.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) selectColumnName.
    (recoveredValue4) heading: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) editable: (false).
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) verticalSeparatorThickness: (0).
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) resizable: (true).
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) width: (250).
    recoveredLocal2 := recoveredValue3.
    recoveredValue10 := EwTableColumn.
    recoveredValue11 := (recoveredValue10) new.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := (self) decisionColumnName.
    (recoveredValue12) heading: (recoveredValue13).
    recoveredValue14 := recoveredValue11.
    (recoveredValue14) editable: (true).
    recoveredValue15 := recoveredValue11.
    (recoveredValue15) verticalSeparatorThickness: (0).
    recoveredValue16 := recoveredValue11.
    (recoveredValue16) resizable: (false).
    recoveredValue17 := recoveredValue11.
    (recoveredValue17) width: (50).
    recoveredLocal1 := recoveredValue11.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := XmNcellValueCallback.
    (recoveredValue18) addCallback: (recoveredValue19) receiver: (self) selector: ('selectCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := XmNcellValueCallback.
    (recoveredValue21) addCallback: (recoveredValue22) receiver: (self) selector: ('decisionCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue23 := recoveredValue20.
    recoveredValue24 := XmNbeginEditCallback.
    (recoveredValue23) addCallback: (recoveredValue24) receiver: (self) selector: ('decisionBeginEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue25 := XmNendEditCallback.
    (recoveredValue20) addCallback: (recoveredValue25) receiver: (self) selector: ('decisionEndEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue26 := recoveredLocal3.
    recoveredValue27 := recoveredValue26.
    recoveredValue28 := recoveredLocal2.
    (recoveredValue27) add: (recoveredValue28).
    recoveredValue29 := recoveredLocal1.
    (recoveredValue26) add: (recoveredValue29).
    recoveredValue30 := recoveredLocal3.
    ^recoveredValue30
! !

"ASDBase.ic method 0x2046dd9c; bytecode file offset 0xd6a694"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
xmlUpdateToDefaultFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArrayOfSubstringsSeparatedBy: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:block281013bcArg1 | 
    | block281013bcValue0 block281013bcValue1 |
    block281013bcValue0 := block281013bcArg1.
    block281013bcValue1 := (block281013bcValue0) isEmpty.
    block281013bcValue1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastDefault.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := nil.
            recoveredBlock55PC := 63.
        ].
        recoveredBlock55Step = 63 ifTrue: [
            recoveredBlock55Stack2 := recoveredLocal2.
            recoveredBlock55PC := 66.
        ].
        recoveredBlock55Step = 66 ifTrue: [
            recoveredBlock55Stack3 := recoveredBlock55Arg1.
            recoveredBlock55PC := 67.
        ].
        recoveredBlock55Step = 67 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) includes: (recoveredBlock55Stack3).
            recoveredBlock55PC := 69.
        ].
        recoveredBlock55Step = 69 ifTrue: [
            (recoveredBlock55Stack2) ifTrue: [recoveredBlock55PC := 79] ifFalse: [recoveredBlock55PC := 72].
        ].
        recoveredBlock55Step = 72 ifTrue: [
            recoveredBlock55PC := 73.
        ].
        recoveredBlock55Step = 73 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 76.
        ].
        recoveredBlock55Step = 76 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 77.
        ].
        recoveredBlock55Step = 77 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) add: (recoveredBlock55Stack2).
            recoveredBlock55PC := 79.
        ].
        recoveredBlock55Step = 79 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack1.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Stack0 recoveredBlock85Stack1 recoveredBlock85Stack2 recoveredBlock85Stack3 recoveredBlock85Stack4 recoveredBlock85PC recoveredBlock85Step recoveredBlock85Done recoveredBlock85Result |
    recoveredBlock85Stack0 := self.
    recoveredBlock85PC := 92.
    recoveredBlock85Done := false.
    [recoveredBlock85Done not] whileTrue: [
        recoveredBlock85Step := recoveredBlock85PC.
        recoveredBlock85Step = 92 ifTrue: [
            recoveredBlock85Stack1 := nil.
            recoveredBlock85PC := 93.
        ].
        recoveredBlock85Step = 93 ifTrue: [
            recoveredBlock85Stack2 := self.
            recoveredBlock85PC := 94.
        ].
        recoveredBlock85Step = 94 ifTrue: [
            recoveredBlock85Stack2 := (recoveredBlock85Stack2) default.
            recoveredBlock85PC := 96.
        ].
        recoveredBlock85Step = 96 ifTrue: [
            recoveredBlock85Stack3 := recoveredBlock85Arg1.
            recoveredBlock85PC := 97.
        ].
        recoveredBlock85Step = 97 ifTrue: [
            recoveredBlock85Stack2 := (recoveredBlock85Stack2) includes: (recoveredBlock85Stack3).
            recoveredBlock85PC := 99.
        ].
        recoveredBlock85Step = 99 ifTrue: [
            (recoveredBlock85Stack2) ifTrue: [recoveredBlock85PC := 111] ifFalse: [recoveredBlock85PC := 102].
        ].
        recoveredBlock85Step = 102 ifTrue: [
            recoveredBlock85PC := 103.
        ].
        recoveredBlock85Step = 103 ifTrue: [
            recoveredBlock85Stack1 := recoveredLocal1.
            recoveredBlock85PC := 106.
        ].
        recoveredBlock85Step = 106 ifTrue: [
            recoveredBlock85Stack2 := recoveredBlock85Arg1.
            recoveredBlock85PC := 107.
        ].
        recoveredBlock85Step = 107 ifTrue: [
            recoveredBlock85Stack3 := [].
            recoveredBlock85PC := 109.
        ].
        recoveredBlock85Step = 109 ifTrue: [
            recoveredBlock85Stack1 := (recoveredBlock85Stack1) remove: (recoveredBlock85Stack2) ifAbsent: (recoveredBlock85Stack3).
            recoveredBlock85PC := 111.
        ].
        recoveredBlock85Step = 111 ifTrue: [
            recoveredBlock85Result := recoveredBlock85Stack1.
            recoveredBlock85Done := true.
        ].
    ].
    recoveredBlock85Result
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e8e7c; bytecode file offset 0xee5828"
!EtasMultiSelectConfigurationOption methodsFor: 'recovered'!
createEditWidgetInForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'optionIcon'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := XmICON.
    (recoveredBlock9Value1) labelType: (recoveredBlock9Value2).
    recoveredBlock9Value3 := recoveredBlock9Value0.
    recoveredBlock9Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock9Value3) alignment: (recoveredBlock9Value4).
    recoveredBlock9Value5 := recoveredBlock9Value0.
    (recoveredBlock9Value5) width: (20).
    recoveredBlock9Value6 := (self) optionIcon.
    recoveredBlock9Value7 := (recoveredBlock9Value0) labelIcon: (recoveredBlock9Value6).
    recoveredBlock9Value7
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'optionLabel'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 recoveredBlock50Value6 |
    recoveredBlock50Value0 := recoveredBlock50Arg1.
    recoveredBlock50Value1 := recoveredBlock50Value0.
    recoveredBlock50Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock50Value1) alignment: (recoveredBlock50Value2).
    recoveredBlock50Value3 := recoveredBlock50Value0.
    recoveredBlock50Value4 := (self) label.
    (recoveredBlock50Value3) labelString: (recoveredBlock50Value4).
    recoveredBlock50Value5 := (self) labelWidth.
    recoveredBlock50Value6 := (recoveredBlock50Value0) width: (recoveredBlock50Value5).
    recoveredBlock50Value6
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'optionList'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 recoveredBlock86Value5 recoveredBlock86Value6 recoveredBlock86Value7 recoveredBlock86Value8 recoveredBlock86Value9 recoveredBlock86Value10 recoveredBlock86Value11 recoveredBlock86Value12 recoveredBlock86Value13 recoveredBlock86Value14 recoveredBlock86Value15 recoveredBlock86Value16 recoveredBlock86Value17 recoveredBlock86Value18 recoveredBlock86Value19 recoveredBlock86Value20 recoveredBlock86Value21 recoveredBlock86Value22 recoveredBlock86Value23 recoveredBlock86Value24 recoveredBlock86Value25 recoveredBlock86Value26 recoveredBlock86Value27 |
    recoveredBlock86Value0 := recoveredBlock86Arg1.
    recoveredBlock86Value1 := recoveredBlock86Value0.
    recoveredBlock86Value2 := (self) items.
    recoveredBlock86Value3 := (recoveredBlock86Value2) keys.
    recoveredBlock86Value4 := [:recoveredBlock86Block99Arg1 :recoveredBlock86Block99Arg2 | 
    | recoveredBlock86Block99Value0 recoveredBlock86Block99Value1 recoveredBlock86Block99Value2 recoveredBlock86Block99Value3 recoveredBlock86Block99Value4 recoveredBlock86Block99Value5 recoveredBlock86Block99Value6 recoveredBlock86Block99Value7 recoveredBlock86Block99Value8 |
    recoveredBlock86Block99Value0 := (self) items.
    recoveredBlock86Block99Value1 := recoveredBlock86Block99Arg1.
    recoveredBlock86Block99Value2 := (recoveredBlock86Block99Value0) at: (recoveredBlock86Block99Value1).
    recoveredBlock86Block99Value3 := (recoveredBlock86Block99Value2) at: (1).
    recoveredBlock86Block99Value4 := (self) items.
    recoveredBlock86Block99Value5 := recoveredBlock86Block99Arg2.
    recoveredBlock86Block99Value6 := (recoveredBlock86Block99Value4) at: (recoveredBlock86Block99Value5).
    recoveredBlock86Block99Value7 := (recoveredBlock86Block99Value6) at: (1).
    recoveredBlock86Block99Value8 := (recoveredBlock86Block99Value3) < (recoveredBlock86Block99Value7).
    recoveredBlock86Block99Value8
].
    recoveredBlock86Value5 := (recoveredBlock86Value3) asSortedCollection: (recoveredBlock86Value4).
    (recoveredBlock86Value1) items: (recoveredBlock86Value5).
    recoveredBlock86Value6 := recoveredBlock86Value0.
    (recoveredBlock86Value6) applicationDrawnBackground: (true).
    recoveredBlock86Value7 := recoveredBlock86Value0.
    recoveredBlock86Value8 := (self) createColumns.
    (recoveredBlock86Value7) columns: (recoveredBlock86Value8).
    recoveredBlock86Value9 := recoveredBlock86Value0.
    recoveredBlock86Value10 := XmFLAT.
    (recoveredBlock86Value9) visualStyle: (recoveredBlock86Value10).
    recoveredBlock86Value11 := recoveredBlock86Value0.
    recoveredBlock86Value12 := XmCELLSINGLESELECT.
    (recoveredBlock86Value11) selectionPolicy: (recoveredBlock86Value12).
    recoveredBlock86Value13 := recoveredBlock86Value0.
    recoveredBlock86Value14 := XmETCHROWS.
    (recoveredBlock86Value13) headingVisualStyle: (recoveredBlock86Value14).
    recoveredBlock86Value15 := recoveredBlock86Value0.
    (recoveredBlock86Value15) headingSeparatorThickness: (0).
    recoveredBlock86Value16 := recoveredBlock86Value0.
    (recoveredBlock86Value16) headingHeight: (18).
    recoveredBlock86Value17 := recoveredBlock86Value0.
    (recoveredBlock86Value17) rowSeparators: (false).
    recoveredBlock86Value18 := recoveredBlock86Value0.
    recoveredBlock86Value19 := CgRGBColor.
    recoveredBlock86Value20 := (recoveredBlock86Value19) white.
    (recoveredBlock86Value18) backgroundColor: (recoveredBlock86Value20).
    recoveredBlock86Value21 := recoveredBlock86Value0.
    (recoveredBlock86Value21) itemHeight: (20).
    recoveredBlock86Value22 := recoveredBlock86Value0.
    recoveredBlock86Value23 := (self) fontManager.
    recoveredBlock86Value24 := (recoveredBlock86Value23) listFont.
    (recoveredBlock86Value22) fontList: (recoveredBlock86Value24).
    recoveredBlock86Value25 := recoveredBlock86Value0.
    (recoveredBlock86Value25) separatorsToExtremes: (true).
    recoveredBlock86Value26 := (self) widgetHeight.
    recoveredBlock86Value27 := (recoveredBlock86Value0) height: (recoveredBlock86Value26).
    recoveredBlock86Value27
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := [:block2811afc4Arg1 | 
    | block2811afc4Value0 block2811afc4Value1 block2811afc4Value2 block2811afc4Value3 block2811afc4Value4 block2811afc4Value5 block2811afc4Value6 block2811afc4Value7 block2811afc4Value8 |
    block2811afc4Value0 := block2811afc4Arg1.
    block2811afc4Value1 := block2811afc4Value0.
    block2811afc4Value2 := XmATTACHFORM.
    (block2811afc4Value1) topAttachment: (block2811afc4Value2).
    block2811afc4Value3 := block2811afc4Value0.
    block2811afc4Value4 := XmATTACHFORM.
    (block2811afc4Value3) leftAttachment: (block2811afc4Value4).
    block2811afc4Value5 := block2811afc4Value0.
    block2811afc4Value6 := XmATTACHNONE.
    (block2811afc4Value5) rightAttachment: (block2811afc4Value6).
    block2811afc4Value7 := XmATTACHNONE.
    block2811afc4Value8 := (block2811afc4Value0) bottomAttachment: (block2811afc4Value7).
    block2811afc4Value8
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := [:recoveredBlock250Arg1 | 
    | recoveredBlock250Value0 recoveredBlock250Value1 recoveredBlock250Value2 recoveredBlock250Value3 recoveredBlock250Value4 recoveredBlock250Value5 recoveredBlock250Value6 recoveredBlock250Value7 recoveredBlock250Value8 recoveredBlock250Value9 recoveredBlock250Value10 recoveredBlock250Value11 |
    recoveredBlock250Value0 := recoveredBlock250Arg1.
    recoveredBlock250Value1 := recoveredBlock250Value0.
    recoveredBlock250Value2 := XmATTACHFORM.
    (recoveredBlock250Value1) topAttachment: (recoveredBlock250Value2).
    recoveredBlock250Value3 := recoveredBlock250Value0.
    recoveredBlock250Value4 := XmATTACHNONE.
    (recoveredBlock250Value3) bottomAttachment: (recoveredBlock250Value4).
    recoveredBlock250Value5 := recoveredBlock250Value0.
    recoveredBlock250Value6 := XmATTACHWIDGET.
    (recoveredBlock250Value5) leftAttachment: (recoveredBlock250Value6).
    recoveredBlock250Value7 := recoveredBlock250Value0.
    (recoveredBlock250Value7) leftOffset: (5).
    recoveredBlock250Value8 := recoveredBlock250Value0.
    recoveredBlock250Value9 := recoveredLocal1.
    (recoveredBlock250Value8) leftWidget: (recoveredBlock250Value9).
    recoveredBlock250Value10 := recoveredBlock250Value0.
    recoveredBlock250Value11 := XmATTACHFORM.
    (recoveredBlock250Value10) rightAttachment: (recoveredBlock250Value11).
    recoveredBlock250Value0
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := [:recoveredBlock294Arg1 | 
    | recoveredBlock294Value0 recoveredBlock294Value1 recoveredBlock294Value2 recoveredBlock294Value3 recoveredBlock294Value4 recoveredBlock294Value5 recoveredBlock294Value6 recoveredBlock294Value7 recoveredBlock294Value8 recoveredBlock294Value9 recoveredBlock294Value10 recoveredBlock294Value11 recoveredBlock294Value12 recoveredBlock294Value13 recoveredBlock294Value14 |
    recoveredBlock294Value0 := recoveredBlock294Arg1.
    recoveredBlock294Value1 := recoveredBlock294Value0.
    recoveredBlock294Value2 := XmATTACHWIDGET.
    (recoveredBlock294Value1) topAttachment: (recoveredBlock294Value2).
    recoveredBlock294Value3 := recoveredBlock294Value0.
    recoveredBlock294Value4 := recoveredLocal4.
    (recoveredBlock294Value3) topWidget: (recoveredBlock294Value4).
    recoveredBlock294Value5 := recoveredBlock294Value0.
    (recoveredBlock294Value5) topOffset: (5).
    recoveredBlock294Value6 := recoveredBlock294Value0.
    recoveredBlock294Value7 := XmATTACHFORM.
    (recoveredBlock294Value6) bottomAttachment: (recoveredBlock294Value7).
    recoveredBlock294Value8 := recoveredBlock294Value0.
    recoveredBlock294Value9 := XmATTACHWIDGET.
    (recoveredBlock294Value8) leftAttachment: (recoveredBlock294Value9).
    recoveredBlock294Value10 := recoveredBlock294Value0.
    recoveredBlock294Value11 := recoveredLocal1.
    (recoveredBlock294Value10) leftWidget: (recoveredBlock294Value11).
    recoveredBlock294Value12 := recoveredBlock294Value0.
    (recoveredBlock294Value12) leftOffset: (5).
    recoveredBlock294Value13 := XmATTACHFORM.
    recoveredBlock294Value14 := (recoveredBlock294Value0) rightAttachment: (recoveredBlock294Value13).
    recoveredBlock294Value14
].
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack0) widget: (recoveredStack1).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

