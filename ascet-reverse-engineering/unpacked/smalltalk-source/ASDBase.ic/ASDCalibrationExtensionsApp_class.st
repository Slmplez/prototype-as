"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202bac30; bytecode file offset 0xbb7508"
!ASDCalibrationExtensionsApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := RBCalibrationWindow.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := RBBooleanCalibrationEditor.
    recoveredValue3 := RBBooleanCalibrationEditor.
    recoveredValue4 := (recoveredValue3) supportedSourceModels.
    (recoveredValue1) registerNumericEditorClass: (recoveredValue2) forDataTypes: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := RBEnumerationCalibrationEditor.
    recoveredValue7 := RBEnumerationCalibrationEditor.
    recoveredValue8 := (recoveredValue7) supportedSourceModels.
    (recoveredValue5) registerNumericEditorClass: (recoveredValue6) forDataTypes: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := RBBooleanSpecificationEditor.
    recoveredValue11 := RBBooleanSpecificationEditor.
    recoveredValue12 := (recoveredValue11) supportedSourceModels.
    (recoveredValue9) registerSpecificationClass: (recoveredValue10) forDataTypes: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := RBEnumerationSpecificationEditor.
    recoveredValue15 := RBEnumerationSpecificationEditor.
    recoveredValue16 := (recoveredValue15) supportedSourceModels.
    (recoveredValue13) registerSpecificationClass: (recoveredValue14) forDataTypes: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := RBMultiTableSpecificationEditor.
    recoveredValue19 := RBMultiTableSpecificationEditor.
    recoveredValue20 := (recoveredValue19) supportedSourceModels.
    (recoveredValue17) registerSpecificationClass: (recoveredValue18) forDataTypes: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x202bac8c; bytecode file offset 0xbb7564"
!ASDCalibrationExtensionsApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := RBCalibrationWindow.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := RBBooleanCalibrationEditor.
    recoveredValue3 := RBBooleanCalibrationEditor.
    recoveredValue4 := (recoveredValue3) supportedSourceModels.
    (recoveredValue1) unregisterNumericEditorClass: (recoveredValue2) forDataTypes: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := RBEnumerationCalibrationEditor.
    recoveredValue7 := RBEnumerationCalibrationEditor.
    recoveredValue8 := (recoveredValue7) supportedSourceModels.
    (recoveredValue5) unregisterNumericEditorClass: (recoveredValue6) forDataTypes: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := RBEnumerationSpecificationEditor.
    recoveredValue11 := RBBooleanSpecificationEditor.
    recoveredValue12 := (recoveredValue11) supportedSourceModels.
    (recoveredValue9) unregisterSpecificationClass: (recoveredValue10) forDataTypes: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := RBEnumerationSpecificationEditor.
    recoveredValue15 := RBBooleanSpecificationEditor.
    recoveredValue16 := (recoveredValue15) supportedSourceModels.
    (recoveredValue13) unregisterSpecificationClass: (recoveredValue14) forDataTypes: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := RBMultiTableSpecificationEditor.
    recoveredValue19 := RBMultiTableSpecificationEditor.
    recoveredValue20 := (recoveredValue19) supportedSourceModels.
    (recoveredValue17) unregisterSpecificationClass: (recoveredValue18) forDataTypes: (recoveredValue20).
    ^self
! !

