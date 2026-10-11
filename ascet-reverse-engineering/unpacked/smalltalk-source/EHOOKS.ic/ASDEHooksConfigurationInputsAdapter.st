"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000120; bytecode file offset 0xf2b4"
!ASDEHooksConfigurationInputsAdapter methodsFor: 'recovered'!
tabLabel
    ^'Inputs'
! !

"EHOOKS.ic method 0x20000174; bytecode file offset 0xf2b4"
!ASDEHooksConfigurationInputsAdapter methodsFor: 'recovered'!
widgetFilterText
    ^'widgetFilterInputs'
! !

"EHOOKS.ic method 0x20000180; bytecode file offset 0xf2b4"
!ASDEHooksConfigurationInputsAdapter methodsFor: 'recovered'!
headingLabel
    ^'ECU Measurement'
! !

"EHOOKS.ic method 0x200003f4; bytecode file offset 0xf544"
!ASDEHooksConfigurationInputsAdapter methodsFor: 'recovered'!
allEcuVariables
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) eHooksConfigBlock.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := (recoveredValue1) allEcuInputVariables.
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20000484; bytecode file offset 0xf5b8"
!ASDEHooksConfigurationInputsAdapter methodsFor: 'recovered'!
isRecentlyAutomapped: recoveredArg1 inWidget: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isInInput: (recoveredValue1).
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20000670; bytecode file offset 0xf7a0"
!ASDEHooksConfigurationInputsAdapter methodsFor: 'recovered'!
supportsBackupCopy
    ^true
! !

"EHOOKS.ic method 0x200006c4; bytecode file offset 0xf800"
!ASDEHooksConfigurationInputsAdapter methodsFor: 'recovered'!
getMappingForAscetVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) eHooksConfigBlock.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getInputMappingForAscetVariable: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x200009c8; bytecode file offset 0xfb04"
!ASDEHooksConfigurationInputsAdapter methodsFor: 'recovered'!
setMappingTo: recoveredArg1 forAscetVariable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) eHooksConfigBlock.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) setInputMappingTo: (recoveredValue2) forAscetVariable: (recoveredValue3).
    ^recoveredValue4
! !

"EHOOKS.ic method 0x20000fa0; bytecode file offset 0x100d4"
!ASDEHooksConfigurationInputsAdapter methodsFor: 'recovered'!
selectEHooksVariableWidget: recoveredArg1 name: recoveredArg2 measurementName: recoveredArg3 index: recoveredArg4 selection: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := (recoveredValue0) menuOpenEHooksECUReadSelectionName: (recoveredValue1) measurementName: (recoveredValue2) index: (recoveredValue3) selection: (recoveredValue4).
    ^recoveredValue5
! !

