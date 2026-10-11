"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f514; bytecode file offset 0x90bef8"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
getConvertedViewConfiguration: recoveredArg1 version: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014310; bytecode file offset 0x912098"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
defaultDataConfigObjectClass
    | recoveredValue0 |
    recoveredValue0 := RBCalScalarDataDisplayConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200162b0; bytecode file offset 0x92209c"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
typeString
    ^'Enumeration Editor'
! !

"ASDBase.ic method 0x200627e4; bytecode file offset 0x95f8b0"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
minSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultSubWidgetWidth.
    recoveredValue1 := (self) defaultSubWidgetHeight.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062924; bytecode file offset 0x95f8b0"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
defaultMinSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultSubWidgetWidth.
    recoveredValue1 := (self) defaultSubWidgetHeight.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200734e8; bytecode file offset 0x970b34"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
defaultSetupDialogClass
    ^nil
! !

"ASDBase.ic method 0x2007a8e4; bytecode file offset 0x97c330"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
showValueChanges
    ^false
! !

"ASDBase.ic method 0x2007fb64; bytecode file offset 0x97c428"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
defaultSubWidgetHeight
    ^25
! !

"ASDBase.ic method 0x20080364; bytecode file offset 0x97cc38"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
defaultSubWidgetWidth
    ^180
! !

"ASDBase.ic method 0x200880e4; bytecode file offset 0x984bc0"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
supportedSourceModels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('KWEnum').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1ef8; bytecode file offset 0x9ce7ec"
!RBEnumerationCalibrationEditor class methodsFor: 'recovered'!
basicLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('[') , ('Enumeration Editor').
    recoveredValue1 := (recoveredValue0) , (']').
    ^recoveredValue1
! !

