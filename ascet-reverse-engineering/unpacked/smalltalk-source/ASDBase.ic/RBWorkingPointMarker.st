"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202e2820; bytecode file offset 0xbdf11c"
!RBWorkingPointMarker methodsFor: 'recovered'!
setGC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredValue2 := GCFunction.
    recoveredValue3 := GCForeground.
    recoveredValue4 := (recoveredValue2) | (recoveredValue3).
    recoveredValue5 := GCLineWidth.
    recoveredValue6 := (recoveredValue4) | (recoveredValue5).
    recoveredValue7 := GCLineStyle.
    recoveredValue8 := (recoveredValue6) | (recoveredValue7).
    recoveredValue9 := CgGCValues.
    recoveredValue10 := (recoveredValue9) new.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := (self) mixingRule.
    (recoveredValue11) function: (recoveredValue12).
    recoveredValue13 := recoveredValue10.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (self) lineColor.
    recoveredValue16 := (recoveredValue14) pixelNearestToColor: (recoveredValue15).
    (recoveredValue13) foreground: (recoveredValue16).
    recoveredValue17 := recoveredValue10.
    recoveredValue18 := (self) lineWidth.
    (recoveredValue17) lineWidth: (recoveredValue18).
    recoveredValue19 := recoveredValue10.
    recoveredValue20 := (self) lineType.
    (recoveredValue19) lineStyle: (recoveredValue20).
    (recoveredValue1) changeGC: (recoveredValue8) values: (recoveredValue10).
    ^self
! !

