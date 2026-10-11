"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x2000012c; bytecode file offset 0xf2b4"
!ASDEHooksConfigurationOutputsAdapter methodsFor: 'recovered'!
widgetFilterText
    ^'widgetFilterOutputs'
! !

"EHOOKS.ic method 0x20000144; bytecode file offset 0xf2b4"
!ASDEHooksConfigurationOutputsAdapter methodsFor: 'recovered'!
headingLabel
    ^'ECU Write Hook'
! !

"EHOOKS.ic method 0x20000150; bytecode file offset 0xf2b4"
!ASDEHooksConfigurationOutputsAdapter methodsFor: 'recovered'!
tabLabel
    ^'Outputs'
! !

"EHOOKS.ic method 0x20000408; bytecode file offset 0xf544"
!ASDEHooksConfigurationOutputsAdapter methodsFor: 'recovered'!
allEcuVariables
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) eHooksConfigBlock.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := (recoveredValue1) allEcuOutputVariables.
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20000478; bytecode file offset 0xf5b8"
!ASDEHooksConfigurationOutputsAdapter methodsFor: 'recovered'!
isRecentlyAutomapped: recoveredArg1 inWidget: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isInOutput: (recoveredValue1).
    ^recoveredValue2
! !

"EHOOKS.ic method 0x200006b0; bytecode file offset 0xf800"
!ASDEHooksConfigurationOutputsAdapter methodsFor: 'recovered'!
getMappingForAscetVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) eHooksConfigBlock.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getOutputMappingForAscetVariable: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x200009b4; bytecode file offset 0xfb04"
!ASDEHooksConfigurationOutputsAdapter methodsFor: 'recovered'!
setMappingTo: recoveredArg1 forAscetVariable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) eHooksConfigBlock.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) setOutputMappingTo: (recoveredValue2) forAscetVariable: (recoveredValue3).
    ^recoveredValue4
! !

"EHOOKS.ic method 0x20000f94; bytecode file offset 0x100d4"
!ASDEHooksConfigurationOutputsAdapter methodsFor: 'recovered'!
selectEHooksVariableWidget: recoveredArg1 name: recoveredArg2 measurementName: recoveredArg3 index: recoveredArg4 selection: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := (recoveredValue0) menuOpenEHooksECUWriteSelectionName: (recoveredValue1) measurementName: (recoveredValue2) index: (recoveredValue3) selection: (recoveredValue4).
    ^recoveredValue5
! !

