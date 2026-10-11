"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020a20; bytecode file offset 0x92209c"
!ASDGraphicalCalibrationViewsApp class methodsFor: 'recovered'!
packagerIncludeClassNames
    ^#('RBOneDCharTableGraphCalibrationEditor' 'RBTwoDCharTable3DViewer')
! !

"ASDBase.ic method 0x20209b04; bytecode file offset 0xb063f0"
!ASDGraphicalCalibrationViewsApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := RBCalibrationWindow.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := RBOneDCharTableGraphCalibrationEditor.
    recoveredValue3 := RBOneDCharTableGraphCalibrationEditor.
    recoveredValue4 := (recoveredValue3) supportedSourceModels.
    (recoveredValue1) registerGraphEditorClass: (recoveredValue2) forDataTypes: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := RBTwoDCharTable3DViewer.
    recoveredValue7 := RBTwoDCharTable3DViewer.
    recoveredValue8 := (recoveredValue7) supportedSourceModels.
    (recoveredValue5) registerGraphEditorClass: (recoveredValue6) forDataTypes: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := RBTwoDCharTable2DGraphEditor.
    recoveredValue11 := RBTwoDCharTable2DGraphEditor.
    recoveredValue12 := (recoveredValue11) supportedSourceModels.
    (recoveredValue9) registerGraphEditorClass: (recoveredValue10) forDataTypes: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x20209b24; bytecode file offset 0xb063f0"
!ASDGraphicalCalibrationViewsApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := RBCalibrationWindow.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := RBOneDCharTableGraphCalibrationEditor.
    recoveredValue3 := RBOneDCharTableGraphCalibrationEditor.
    recoveredValue4 := (recoveredValue3) supportedSourceModels.
    (recoveredValue1) unregisterGraphEditorClass: (recoveredValue2) forDataTypes: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := RBTwoDCharTable3DViewer.
    recoveredValue7 := RBTwoDCharTable3DViewer.
    recoveredValue8 := (recoveredValue7) supportedSourceModels.
    (recoveredValue5) unregisterGraphEditorClass: (recoveredValue6) forDataTypes: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := RBTwoDCharTable2DGraphEditor.
    recoveredValue11 := RBTwoDCharTable2DGraphEditor.
    recoveredValue12 := (recoveredValue11) supportedSourceModels.
    (recoveredValue9) unregisterGraphEditorClass: (recoveredValue10) forDataTypes: (recoveredValue12).
    ^self
! !

