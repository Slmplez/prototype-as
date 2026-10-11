"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200202d0; bytecode file offset 0x92209c"
!ASDCalibrationViewApp class methodsFor: 'recovered'!
packagerIncludeClassNames
    ^#('RBNumericCalibrationEditor')
! !

"ASDBase.ic method 0x20209b64; bytecode file offset 0xb06458"
!ASDCalibrationViewApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := RBCalibrationWindow.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := RBNumericCalibrationEditor.
    recoveredValue3 := RBNumericCalibrationEditor.
    recoveredValue4 := (recoveredValue3) supportedSourceModels.
    (recoveredValue1) unregisterNumericEditorClass: (recoveredValue2) forDataTypes: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := RBNumericSpecificationEditor.
    recoveredValue7 := RBNumericSpecificationEditor.
    recoveredValue8 := (recoveredValue7) supportedSourceModels.
    (recoveredValue5) unregisterSpecificationClass: (recoveredValue6) forDataTypes: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := RBMultiTableCalibrationEditor.
    recoveredValue11 := RBMultiTableCalibrationEditor.
    recoveredValue12 := (recoveredValue11) supportedSourceModels.
    (recoveredValue9) unregisterNumericEditorClass: (recoveredValue10) forDataTypes: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x20209b88; bytecode file offset 0xb06458"
!ASDCalibrationViewApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := RBCalibrationWindow.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := RBNumericCalibrationEditor.
    recoveredValue3 := RBNumericCalibrationEditor.
    recoveredValue4 := (recoveredValue3) supportedSourceModels.
    (recoveredValue1) registerNumericEditorClass: (recoveredValue2) forDataTypes: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := RBNumericSpecificationEditor.
    recoveredValue7 := RBNumericSpecificationEditor.
    recoveredValue8 := (recoveredValue7) supportedSourceModels.
    (recoveredValue5) registerSpecificationClass: (recoveredValue6) forDataTypes: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := RBMultiTableCalibrationEditor.
    recoveredValue11 := RBMultiTableCalibrationEditor.
    recoveredValue12 := (recoveredValue11) supportedSourceModels.
    (recoveredValue9) registerNumericEditorClass: (recoveredValue10) forDataTypes: (recoveredValue12).
    ^self
! !

