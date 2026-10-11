"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2025bbb0; bytecode file offset 0xb5847c"
!SGImageGO class methodsFor: 'recovered'!
createAt: recoveredArg1 manager: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CgDeviceIndependentImage.
    recoveredValue1 := CgIndexedPalette.
    recoveredValue2 := (recoveredValue1) grayRamp: (1).
    recoveredValue3 := (recoveredValue0) width: (10) height: (10) depth: (1) palette: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := DefaultLineStyle.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) createAt: (recoveredValue4) xAxis: (100) yAxis: (199) lineStyle: (recoveredValue5) manager: (recoveredValue6) image: (recoveredValue7).
    ^recoveredValue8
! !

