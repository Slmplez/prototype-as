"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2032a630; bytecode file offset 0xc26f1c"
!ASDHintOptions class methodsFor: 'recovered'!
availableCustomizableDialogDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Array.
    recoveredValue4 := (recoveredValue3) with: ('Continue animation?') with: (#('Show' 'Hide')).
    (recoveredValue2) at: ('ASDStateColorSameAsAnimationColor') put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: ('MDF Version number higher than 2.0') with: (#('Show' 'Hide')).
    (recoveredValue5) at: ('ASDImportMDFNewerThan200') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := Array.
    recoveredValue10 := (recoveredValue9) with: ('MDF Version number higher than 2.0 used') with: (#('Show' 'Hide')).
    (recoveredValue8) at: ('ASDExperimentWithMDFNewerThan200') put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := Array.
    recoveredValue13 := (recoveredValue12) with: ('Verify Installation Check') with: (#('Show' 'Hide')).
    (recoveredValue11) at: ('ASDVerifyInstallationFinished') put: (recoveredValue13).
    ^recoveredValue1
! !

