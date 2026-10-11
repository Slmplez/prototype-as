"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200cabdc; bytecode file offset 0x9c749c"
!ASDMappingExportUtil class methodsFor: 'recovered'!
new
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) initialize.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20365814; bytecode file offset 0xc620f8"
!ASDMappingExportUtil class methodsFor: 'recovered'!
exportFor: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) exportUtilClass.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) mappingBase: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) getExportController.
    (recoveredValue6) exportController: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredArg2.
    (recoveredValue9) fileName: (recoveredValue10).
    recoveredValue11 := recoveredValue3.
    (recoveredValue11) useSelectedMappings: (false).
    recoveredLocal1 := recoveredValue3.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) class.
    recoveredValue14 := (recoveredValue13) allMappingTypes.
    recoveredValue15 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredBlock43Value0 := recoveredLocal1.
    recoveredBlock43Value1 := recoveredBlock43Arg1.
    recoveredBlock43Value2 := (recoveredBlock43Value0) useMappingsSet: (true) forType: (recoveredBlock43Value1).
    recoveredBlock43Value2
].
    (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) processExportSilent: (true).
    ^recoveredValue17
! !

