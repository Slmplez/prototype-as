"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20061410; bytecode file offset 0x95e838"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
widgetSelectedMappingCheckBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('selectedMappingCheckBox').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200616a4; bytecode file offset 0x95e838"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
widgetParameterMappingCheckBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('parameterMappingCheckBox').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061794; bytecode file offset 0x95e838"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
widgetInternalMappingCheckBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('internalMappingCheckBox').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061d0c; bytecode file offset 0x95e838"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
widgetExternalMappingCheckBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('externalMappingCheckBox').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070028; bytecode file offset 0x96cb7c"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
mappingExportUtil
    | recoveredValue0 |
    recoveredValue0 := mappingExportUtil.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007042c; bytecode file offset 0x96ce40"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
internalMapping
    | recoveredValue0 |
    recoveredValue0 := internalMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070638; bytecode file offset 0x96d06c"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
externalMapping
    | recoveredValue0 |
    recoveredValue0 := externalMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007090c; bytecode file offset 0x96d218"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
parameterMapping
    | recoveredValue0 |
    recoveredValue0 := parameterMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070a90; bytecode file offset 0x96d3ec"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
selectedMapping
    | recoveredValue0 |
    recoveredValue0 := selectedMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009ac84; bytecode file offset 0x9976c0"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
selectedMappingValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) set.
    (self) selectedMapping: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ad54; bytecode file offset 0x9976c0"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
internalMappingValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) set.
    (self) internalMapping: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ad74; bytecode file offset 0x9976c0"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
externalMappingValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) set.
    (self) externalMapping: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009adc4; bytecode file offset 0x9976c0"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
parameterMappingValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) set.
    (self) parameterMapping: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a1024; bytecode file offset 0x99db8c"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
widgetOkButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetDictionary.
    (recoveredValue0) at: ('okButton').
    ^self
! !

"ASDBase.ic method 0x200a88f4; bytecode file offset 0x9a51b8"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
selectedMapping: recoveredArg1
    | recoveredValue0 |
    (self) updateUIfromSelectedMappingChange.
    recoveredValue0 := recoveredArg1.
    selectedMapping := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200a8d08; bytecode file offset 0x9a55c0"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
internalMapping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    internalMapping := recoveredValue0.
    (self) updateUIfrom3MappingTypeChange.
    ^self
! !

"ASDBase.ic method 0x200a8d20; bytecode file offset 0x9a55e4"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
externalMapping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    externalMapping := recoveredValue0.
    (self) updateUIfrom3MappingTypeChange.
    ^self
! !

"ASDBase.ic method 0x200a8d44; bytecode file offset 0x9a5614"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
parameterMapping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parameterMapping := recoveredValue0.
    (self) updateUIfrom3MappingTypeChange.
    ^self
! !

"ASDBase.ic method 0x200c65a8; bytecode file offset 0x9c3164"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
mappingExportUtil: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mappingExportUtil := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2034a534; bytecode file offset 0xc46e00"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
updateUIfrom3MappingTypeChange
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalMapping.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalMapping.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalMapping.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMapping.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMapping.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMappingCheckBox.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack0 := (recoveredStack0) widgetSelectedMappingCheckBox.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            selectedMapping := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMappingCheckBox.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            selectedMapping := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20396888; bytecode file offset 0xc931d4"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    super initializeAfterCreate.
    (self) adjustToMinSize.
    (self) updateFonts.
    recoveredValue0 := (self) shell.
    (recoveredValue0) title: ('Export Selections').
    recoveredValue1 := (self) mappingExportUtil.
    recoveredValue2 := (recoveredValue1) hasSelectedMappings.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) widgetInternalMappingCheckBox.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) not.
    (recoveredValue3) set: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) not.
    (self) internalMapping: (recoveredValue7).
    recoveredValue8 := (self) widgetExternalMappingCheckBox.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) not.
    (recoveredValue8) set: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) not.
    (self) externalMapping: (recoveredValue12).
    recoveredValue13 := (self) widgetParameterMappingCheckBox.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) not.
    (recoveredValue13) set: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) not.
    (self) parameterMapping: (recoveredValue17).
    recoveredValue18 := (self) widgetSelectedMappingCheckBox.
    recoveredValue19 := recoveredLocal1.
    (recoveredValue18) set: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    (self) selectedMapping: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x203b47ec; bytecode file offset 0xcb1140"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
checkExportMappingOverwriteFilename: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnly: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'The file "'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := '" already exists and is read-only.'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := EtasUserQuestion.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'The file "'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := '" already exists!!\Overwrite existing file?'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'ASDOverwriteFile'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 'OKCANCEL'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 'question'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203d51b4; bytecode file offset 0xcd1ab8"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
updateUIfromSelectedMappingChange
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMapping.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInternalMappingCheckBox.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInternalMappingCheckBox.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) internalMapping: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExternalMappingCheckBox.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExternalMappingCheckBox.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) externalMapping: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetParameterMappingCheckBox.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetParameterMappingCheckBox.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) parameterMapping: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInternalMappingCheckBox.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExternalMappingCheckBox.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetParameterMappingCheckBox.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            selectedMapping := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20401cdc; bytecode file offset 0xcfe5f0"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
getTypeForFilenameDefault
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalMapping.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMapping.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingBase.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableInternalMappingType.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalMapping.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalMapping.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMapping.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingBase.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableExternalMappingType.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalMapping.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalMapping.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMapping.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingBase.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterMappingType.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMapping.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMappingsType.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042f6d8; bytecode file offset 0xd2bfe4"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingBase.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTypeForFilenameDefault.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportFileNameForMappingType: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForXmlOrCsvExportFilePath: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingExportUtil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) allMappingTypes.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) mappingTypes: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalMapping.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingExportUtil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingBase.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableInternalMappingType.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) useMappingsSet: (recoveredStack1) forType: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalMapping.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingExportUtil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingBase.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) variableExternalMappingType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) useMappingsSet: (recoveredStack1) forType: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterMapping.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingExportUtil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingBase.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterMappingType.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) useMappingsSet: (recoveredStack1) forType: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedMapping.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) useSelectedMappings: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingExportUtil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) getExportController.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) exportController: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingExportUtil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) processExport.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045b214; bytecode file offset 0xd57ba8"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
promptForXmlOrCsvExportFilePath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingModified.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) save.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastExportPath.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := '*.XML'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'XML'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := '*.CSV'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'CSV'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'File Name for Export Mapping File'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := '*.XML'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) appendDefaultExtension.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := XmSAVE.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) accessType: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExportMappingOverwriteFilename: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) setLastExportPathFromFile: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2066b0cc; bytecode file offset 0xf67c90"
!ASDMappingExchangeDialog methodsFor: 'recovered'!
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
            widgetDictionary := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 recoveredBlock14Value12 recoveredBlock14Value13 recoveredBlock14Value14 recoveredBlock14Value15 recoveredBlock14Value16 recoveredBlock14Value17 recoveredBlock14Value18 recoveredBlock14Value19 recoveredBlock14Value20 recoveredBlock14Value21 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    recoveredBlock14Value2 := MWMINPUTMODELESS.
    (recoveredBlock14Value1) mwmInputMode: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredBlock14Value0.
    (recoveredBlock14Value3) title: ('Search in Tree').
    recoveredBlock14Value4 := recoveredBlock14Value0.
    recoveredBlock14Value5 := MWMDECORALL.
    recoveredBlock14Value6 := MWMDECORRESIZEH.
    recoveredBlock14Value7 := (recoveredBlock14Value5) | (recoveredBlock14Value6).
    recoveredBlock14Value8 := MWMDECORBORDER.
    recoveredBlock14Value9 := (recoveredBlock14Value7) | (recoveredBlock14Value8).
    recoveredBlock14Value10 := MWMDECORMINIMIZE.
    recoveredBlock14Value11 := (recoveredBlock14Value9) | (recoveredBlock14Value10).
    recoveredBlock14Value12 := MWMDECORMAXIMIZE.
    recoveredBlock14Value13 := (recoveredBlock14Value11) | (recoveredBlock14Value12).
    (recoveredBlock14Value4) mwmDecorations: (recoveredBlock14Value13).
    recoveredBlock14Value14 := recoveredBlock14Value0.
    recoveredBlock14Value15 := (self) class.
    recoveredBlock14Value16 := (recoveredBlock14Value15) minSize.
    recoveredBlock14Value17 := (recoveredBlock14Value16) y.
    (recoveredBlock14Value14) height: (recoveredBlock14Value17).
    recoveredBlock14Value18 := (self) class.
    recoveredBlock14Value19 := (recoveredBlock14Value18) minSize.
    recoveredBlock14Value20 := (recoveredBlock14Value19) x.
    recoveredBlock14Value21 := (recoveredBlock14Value0) width: (recoveredBlock14Value20).
    recoveredBlock14Value21
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := [:block28125fd4Arg1 | 
    | block28125fd4Value0 block28125fd4Value1 block28125fd4Value2 |
    block28125fd4Value0 := block28125fd4Arg1.
    block28125fd4Value1 := block28125fd4Value0.
    (block28125fd4Value1) height: (200).
    block28125fd4Value2 := (block28125fd4Value0) width: (200).
    block28125fd4Value2
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 'mappingTypesFrame'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := [:block28125ff8Arg1 | 
    | block28125ff8Value0 block28125ff8Value1 block28125ff8Value2 |
    block28125ff8Value0 := block28125ff8Arg1.
    block28125ff8Value1 := block28125ff8Value0.
    (block28125ff8Value1) width: (160).
    block28125ff8Value2 := (block28125ff8Value0) labelString: ('Mapping Types').
    block28125ff8Value2
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 'mappingTypesForm'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := 'internalMappingCheckBox'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := [:block2812601cArg1 | 
    | block2812601cValue0 block2812601cValue1 block2812601cValue2 block2812601cValue3 |
    block2812601cValue0 := block2812601cArg1.
    block2812601cValue1 := block2812601cValue0.
    (block2812601cValue1) labelString: ('Message Mapping Internal').
    block2812601cValue2 := block2812601cValue0.
    (block2812601cValue2) height: (24).
    block2812601cValue3 := (block2812601cValue0) width: (200).
    block2812601cValue3
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := 'internalMappingCheckBox'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 'externalMappingCheckBox'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := [:block28126040Arg1 | 
    | block28126040Value0 block28126040Value1 block28126040Value2 block28126040Value3 |
    block28126040Value0 := block28126040Arg1.
    block28126040Value1 := block28126040Value0.
    (block28126040Value1) labelString: ('Message Mapping External').
    block28126040Value2 := block28126040Value0.
    (block28126040Value2) height: (24).
    block28126040Value3 := (block28126040Value0) width: (200).
    block28126040Value3
].
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := 'externalMappingCheckBox'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := 'parameterMappingCheckBox'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := [:block28126064Arg1 | 
    | block28126064Value0 block28126064Value1 block28126064Value2 block28126064Value3 |
    block28126064Value0 := block28126064Arg1.
    block28126064Value1 := block28126064Value0.
    (block28126064Value1) labelString: ('Parameter Mapping').
    block28126064Value2 := block28126064Value0.
    (block28126064Value2) height: (24).
    block28126064Value3 := (block28126064Value0) width: (200).
    block28126064Value3
].
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := 'parameterMappingCheckBox'.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := 'selectedMappingCheckBox'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := [:block28126088Arg1 | 
    | block28126088Value0 block28126088Value1 block28126088Value2 block28126088Value3 |
    block28126088Value0 := block28126088Arg1.
    block28126088Value1 := block28126088Value0.
    (block28126088Value1) labelString: ('Only Selected Elements in Mapping Table').
    block28126088Value2 := block28126088Value0.
    (block28126088Value2) height: (24).
    block28126088Value3 := (block28126088Value0) width: (250).
    block28126088Value3
].
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := 'selectedMappingCheckBox'.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := 'closeButton'.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := [:block281260acArg1 | 
    | block281260acValue0 block281260acValue1 block281260acValue2 block281260acValue3 |
    block281260acValue0 := block281260acArg1.
    block281260acValue1 := block281260acValue0.
    (block281260acValue1) labelString: ('&Close').
    block281260acValue2 := block281260acValue0.
    (block281260acValue2) height: (25).
    block281260acValue3 := (block281260acValue0) width: (80).
    block281260acValue3
].
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := 'closeButton'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := [:block281260d0Arg1 | 
    | block281260d0Value0 block281260d0Value1 block281260d0Value2 block281260d0Value3 |
    block281260d0Value0 := block281260d0Arg1.
    block281260d0Value1 := block281260d0Value0.
    (block281260d0Value1) labelString: ('&OK').
    block281260d0Value2 := block281260d0Value0.
    (block281260d0Value2) height: (25).
    block281260d0Value3 := (block281260d0Value0) width: (80).
    block281260d0Value3
].
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := [:block281260f4Arg1 | 
    | block281260f4Value0 block281260f4Value1 block281260f4Value2 block281260f4Value3 block281260f4Value4 block281260f4Value5 block281260f4Value6 block281260f4Value7 block281260f4Value8 block281260f4Value9 block281260f4Value10 block281260f4Value11 |
    block281260f4Value0 := block281260f4Arg1.
    block281260f4Value1 := block281260f4Value0.
    block281260f4Value2 := XmATTACHFORM.
    (block281260f4Value1) topAttachment: (block281260f4Value2).
    block281260f4Value3 := block281260f4Value0.
    (block281260f4Value3) topOffset: (5).
    block281260f4Value4 := block281260f4Value0.
    block281260f4Value5 := XmATTACHFORM.
    (block281260f4Value4) leftAttachment: (block281260f4Value5).
    block281260f4Value6 := block281260f4Value0.
    (block281260f4Value6) leftOffset: (5).
    block281260f4Value7 := block281260f4Value0.
    block281260f4Value8 := XmATTACHFORM.
    (block281260f4Value7) rightAttachment: (block281260f4Value8).
    block281260f4Value9 := block281260f4Value0.
    (block281260f4Value9) rightOffset: (5).
    block281260f4Value10 := XmATTACHNONE.
    block281260f4Value11 := (block281260f4Value0) bottomAttachment: (block281260f4Value10).
    block281260f4Value11
].
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := [:block28126118Arg1 | 
    | block28126118Value0 block28126118Value1 block28126118Value2 block28126118Value3 block28126118Value4 block28126118Value5 block28126118Value6 |
    block28126118Value0 := block28126118Arg1.
    block28126118Value1 := block28126118Value0.
    block28126118Value2 := XmATTACHFORM.
    (block28126118Value1) topAttachment: (block28126118Value2).
    block28126118Value3 := block28126118Value0.
    (block28126118Value3) topOffset: (5).
    block28126118Value4 := block28126118Value0.
    block28126118Value5 := XmATTACHFORM.
    (block28126118Value4) leftAttachment: (block28126118Value5).
    block28126118Value6 := (block28126118Value0) leftOffset: (5).
    block28126118Value6
].
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := [:recoveredBlock590Arg1 | 
    | recoveredBlock590Value0 recoveredBlock590Value1 recoveredBlock590Value2 recoveredBlock590Value3 recoveredBlock590Value4 recoveredBlock590Value5 recoveredBlock590Value6 recoveredBlock590Value7 recoveredBlock590Value8 |
    recoveredBlock590Value0 := recoveredBlock590Arg1.
    recoveredBlock590Value1 := recoveredBlock590Value0.
    recoveredBlock590Value2 := XmATTACHWIDGET.
    (recoveredBlock590Value1) topAttachment: (recoveredBlock590Value2).
    recoveredBlock590Value3 := recoveredBlock590Value0.
    recoveredBlock590Value4 := recoveredLocal6.
    (recoveredBlock590Value3) topWidget: (recoveredBlock590Value4).
    recoveredBlock590Value5 := recoveredBlock590Value0.
    (recoveredBlock590Value5) topOffset: (5).
    recoveredBlock590Value6 := recoveredBlock590Value0.
    recoveredBlock590Value7 := XmATTACHFORM.
    (recoveredBlock590Value6) leftAttachment: (recoveredBlock590Value7).
    recoveredBlock590Value8 := (recoveredBlock590Value0) leftOffset: (5).
    recoveredBlock590Value8
].
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack2 := [:recoveredBlock644Arg1 | 
    | recoveredBlock644Value0 recoveredBlock644Value1 recoveredBlock644Value2 recoveredBlock644Value3 recoveredBlock644Value4 recoveredBlock644Value5 recoveredBlock644Value6 recoveredBlock644Value7 recoveredBlock644Value8 |
    recoveredBlock644Value0 := recoveredBlock644Arg1.
    recoveredBlock644Value1 := recoveredBlock644Value0.
    recoveredBlock644Value2 := XmATTACHWIDGET.
    (recoveredBlock644Value1) topAttachment: (recoveredBlock644Value2).
    recoveredBlock644Value3 := recoveredBlock644Value0.
    recoveredBlock644Value4 := recoveredLocal5.
    (recoveredBlock644Value3) topWidget: (recoveredBlock644Value4).
    recoveredBlock644Value5 := recoveredBlock644Value0.
    (recoveredBlock644Value5) topOffset: (5).
    recoveredBlock644Value6 := recoveredBlock644Value0.
    recoveredBlock644Value7 := XmATTACHFORM.
    (recoveredBlock644Value6) leftAttachment: (recoveredBlock644Value7).
    recoveredBlock644Value8 := (recoveredBlock644Value0) leftOffset: (5).
    recoveredBlock644Value8
].
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := [:recoveredBlock698Arg1 | 
    | recoveredBlock698Value0 recoveredBlock698Value1 recoveredBlock698Value2 recoveredBlock698Value3 recoveredBlock698Value4 recoveredBlock698Value5 recoveredBlock698Value6 recoveredBlock698Value7 recoveredBlock698Value8 |
    recoveredBlock698Value0 := recoveredBlock698Arg1.
    recoveredBlock698Value1 := recoveredBlock698Value0.
    recoveredBlock698Value2 := XmATTACHWIDGET.
    (recoveredBlock698Value1) topAttachment: (recoveredBlock698Value2).
    recoveredBlock698Value3 := recoveredBlock698Value0.
    recoveredBlock698Value4 := recoveredLocal8.
    (recoveredBlock698Value3) topWidget: (recoveredBlock698Value4).
    recoveredBlock698Value5 := recoveredBlock698Value0.
    (recoveredBlock698Value5) topOffset: (10).
    recoveredBlock698Value6 := recoveredBlock698Value0.
    recoveredBlock698Value7 := XmATTACHFORM.
    (recoveredBlock698Value6) leftAttachment: (recoveredBlock698Value7).
    recoveredBlock698Value8 := (recoveredBlock698Value0) leftOffset: (5).
    recoveredBlock698Value8
].
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack2 := [:recoveredBlock752Arg1 | 
    | recoveredBlock752Value0 recoveredBlock752Value1 recoveredBlock752Value2 recoveredBlock752Value3 recoveredBlock752Value4 recoveredBlock752Value5 recoveredBlock752Value6 recoveredBlock752Value7 recoveredBlock752Value8 recoveredBlock752Value9 recoveredBlock752Value10 |
    recoveredBlock752Value0 := recoveredBlock752Arg1.
    recoveredBlock752Value1 := recoveredBlock752Value0.
    recoveredBlock752Value2 := XmATTACHWIDGET.
    (recoveredBlock752Value1) topAttachment: (recoveredBlock752Value2).
    recoveredBlock752Value3 := recoveredBlock752Value0.
    recoveredBlock752Value4 := recoveredLocal3.
    (recoveredBlock752Value3) topWidget: (recoveredBlock752Value4).
    recoveredBlock752Value5 := recoveredBlock752Value0.
    (recoveredBlock752Value5) topOffset: (5).
    recoveredBlock752Value6 := recoveredBlock752Value0.
    recoveredBlock752Value7 := XmATTACHFORM.
    (recoveredBlock752Value6) rightAttachment: (recoveredBlock752Value7).
    recoveredBlock752Value8 := recoveredBlock752Value0.
    (recoveredBlock752Value8) rightOffset: (5).
    recoveredBlock752Value9 := XmATTACHNONE.
    recoveredBlock752Value10 := (recoveredBlock752Value0) bottomAttachment: (recoveredBlock752Value9).
    recoveredBlock752Value10
].
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack2 := [:recoveredBlock814Arg1 | 
    | recoveredBlock814Value0 recoveredBlock814Value1 recoveredBlock814Value2 recoveredBlock814Value3 recoveredBlock814Value4 recoveredBlock814Value5 recoveredBlock814Value6 recoveredBlock814Value7 recoveredBlock814Value8 recoveredBlock814Value9 recoveredBlock814Value10 recoveredBlock814Value11 recoveredBlock814Value12 |
    recoveredBlock814Value0 := recoveredBlock814Arg1.
    recoveredBlock814Value1 := recoveredBlock814Value0.
    recoveredBlock814Value2 := XmATTACHWIDGET.
    (recoveredBlock814Value1) topAttachment: (recoveredBlock814Value2).
    recoveredBlock814Value3 := recoveredBlock814Value0.
    recoveredBlock814Value4 := recoveredLocal3.
    (recoveredBlock814Value3) topWidget: (recoveredBlock814Value4).
    recoveredBlock814Value5 := recoveredBlock814Value0.
    (recoveredBlock814Value5) topOffset: (5).
    recoveredBlock814Value6 := recoveredBlock814Value0.
    recoveredBlock814Value7 := XmATTACHWIDGET.
    (recoveredBlock814Value6) rightAttachment: (recoveredBlock814Value7).
    recoveredBlock814Value8 := recoveredBlock814Value0.
    recoveredBlock814Value9 := recoveredLocal1.
    (recoveredBlock814Value8) rightWidget: (recoveredBlock814Value9).
    recoveredBlock814Value10 := recoveredBlock814Value0.
    (recoveredBlock814Value10) rightOffset: (5).
    recoveredBlock814Value11 := XmATTACHNONE.
    recoveredBlock814Value12 := (recoveredBlock814Value0) bottomAttachment: (recoveredBlock814Value11).
    recoveredBlock814Value12
].
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack4 := 'close'.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack4 := 'ok'.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredStack4 := 'internalMappingValueChanged:clientData:callData:'.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack4 := 'externalMappingValueChanged:clientData:callData:'.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack4 := 'parameterMappingValueChanged:clientData:callData:'.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack4 := 'selectedMappingValueChanged:clientData:callData:'.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack1 := 'Is exporting only the selected Mappings in the Mapping Table.'.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1045.
        ].
        recoveredStep = 1045 ifTrue: [
            recoveredStack1 := 'Adds the Internal Access Mappings to the exported Mappings.'.
            recoveredPC := 1048.
        ].
        recoveredStep = 1048 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack1 := 'Adds the External Access Mappings to the exported Mappings.'.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack1 := 'Adds the Parameter Mappings to the exported Mappings.'.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

