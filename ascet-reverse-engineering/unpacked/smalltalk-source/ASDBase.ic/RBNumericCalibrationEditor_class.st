"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f5d4; bytecode file offset 0x90bef8"
!RBNumericCalibrationEditor class methodsFor: 'recovered'!
getConvertedViewConfiguration: recoveredArg1 version: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012dbc; bytecode file offset 0x912098"
!RBNumericCalibrationEditor class methodsFor: 'recovered'!
defaultSetupDialogClass
    | recoveredValue0 |
    recoveredValue0 := RBPrecisionDialog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014eb0; bytecode file offset 0x912098"
!RBNumericCalibrationEditor class methodsFor: 'recovered'!
defaultDataConfigObjectClass
    | recoveredValue0 |
    recoveredValue0 := RBCalScalarDataDisplayConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20088260; bytecode file offset 0x984bc0"
!RBNumericCalibrationEditor class methodsFor: 'recovered'!
supportedSourceModels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('KW').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b0480; bytecode file offset 0x9acd4c"
!RBNumericCalibrationEditor class methodsFor: 'recovered'!
typeString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GMVNumericEditor.
    recoveredValue1 := (recoveredValue0) copyWithout: ($~).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f3080; bytecode file offset 0x9ef93c"
!RBNumericCalibrationEditor class methodsFor: 'recovered'!
defaultMinSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultSubWidgetHeight.
    recoveredValue1 := (recoveredValue0) + (4).
    recoveredValue2 := (256) @ (recoveredValue1).
    ^recoveredValue2
! !

