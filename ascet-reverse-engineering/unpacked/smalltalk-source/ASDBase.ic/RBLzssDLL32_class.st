"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025b7c; bytecode file offset 0x923928"
!RBLzssDLL32 class methodsFor: 'recovered'!
fileName
    ^'lzss'
! !

"ASDBase.ic method 0x200b023c; bytecode file offset 0x9acb60"
!RBLzssDLL32 class methodsFor: 'recovered'!
closeDLL
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PlatformLibrary.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue0) logicalName: (recoveredValue1).
    (recoveredValue2) close.
    ^self
! !

"ASDBase.ic method 0x205005d8; bytecode file offset 0xdfceb8"
!RBLzssDLL32 class methodsFor: 'recovered'!
test
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := Time.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := RBLzssDLL32.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredLocal1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) zipIntoMemory: (recoveredBlock6Value2).
    recoveredBlock6Value4 := recoveredBlock6Value3.
    recoveredLocal7 := recoveredBlock6Value4.
    recoveredBlock6Value3
].
    recoveredValue2 := (recoveredValue0) millisecondsToRun: (recoveredValue1).
    recoveredLocal5 := recoveredValue2.
    recoveredValue3 := Time.
    recoveredValue4 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 |
    recoveredBlock31Value0 := RBLzssDLL32.
    recoveredBlock31Value1 := (recoveredBlock31Value0) new.
    recoveredBlock31Value2 := recoveredLocal7.
    recoveredBlock31Value3 := (recoveredBlock31Value1) unzipStringFromMemory: (recoveredBlock31Value2).
    recoveredBlock31Value3
].
    recoveredValue5 := (recoveredValue3) millisecondsToRun: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := Time.
    recoveredValue7 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 |
    recoveredBlock54Value0 := RBLzssDLL32.
    recoveredBlock54Value1 := (recoveredBlock54Value0) new.
    recoveredBlock54Value2 := recoveredLocal1.
    recoveredBlock54Value3 := (recoveredBlock54Value1) compress: (recoveredBlock54Value2).
    recoveredBlock54Value4 := recoveredBlock54Value3.
    recoveredLocal6 := recoveredBlock54Value4.
    recoveredBlock54Value3
].
    recoveredValue8 := (recoveredValue6) millisecondsToRun: (recoveredValue7).
    recoveredLocal4 := recoveredValue8.
    recoveredValue9 := Time.
    recoveredValue10 := [
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 recoveredBlock80Value3 |
    recoveredBlock80Value0 := RBLzssDLL32.
    recoveredBlock80Value1 := (recoveredBlock80Value0) new.
    recoveredBlock80Value2 := recoveredLocal6.
    recoveredBlock80Value3 := (recoveredBlock80Value1) expandString: (recoveredBlock80Value2).
    recoveredBlock80Value3
].
    recoveredValue11 := (recoveredValue9) millisecondsToRun: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    (self) halt.
    recoveredValue12 := Time.
    recoveredValue13 := [
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 recoveredBlock104Value3 |
    recoveredBlock104Value0 := RBLzssDLL32.
    recoveredBlock104Value1 := (recoveredBlock104Value0) new.
    recoveredBlock104Value2 := recoveredLocal6.
    recoveredBlock104Value3 := (recoveredBlock104Value1) unzipStringFromMemory: (recoveredBlock104Value2).
    recoveredBlock104Value3
].
    recoveredValue14 := (recoveredValue12) millisecondsToRun: (recoveredValue13).
    recoveredLocal3 := recoveredValue14.
    recoveredValue15 := Time.
    recoveredValue16 := [
    | recoveredBlock126Value0 recoveredBlock126Value1 recoveredBlock126Value2 recoveredBlock126Value3 |
    recoveredBlock126Value0 := RBLzssDLL32.
    recoveredBlock126Value1 := (recoveredBlock126Value0) new.
    recoveredBlock126Value2 := recoveredLocal7.
    recoveredBlock126Value3 := (recoveredBlock126Value1) expandString: (recoveredBlock126Value2).
    recoveredBlock126Value3
].
    recoveredValue17 := (recoveredValue15) millisecondsToRun: (recoveredValue16).
    recoveredLocal3 := recoveredValue17.
    recoveredValue18 := recoveredLocal7.
    recoveredValue19 := (recoveredValue18) size.
    recoveredValue20 := recoveredLocal6.
    recoveredValue21 := (recoveredValue20) size.
    (recoveredValue19) / (recoveredValue21).
    recoveredValue22 := recoveredLocal5.
    recoveredValue23 := recoveredLocal4.
    (recoveredValue22) / (recoveredValue23).
    recoveredValue24 := recoveredLocal3.
    recoveredValue25 := recoveredLocal2.
    (recoveredValue24) / (recoveredValue25).
    ^self
! !

