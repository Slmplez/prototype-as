"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201cff50; bytecode file offset 0xacc820"
!RBBezierGO class methodsFor: 'recovered'!
createWithLineStyle: recoveredArg1 manager: recoveredArg2 startPoint: recoveredArg3 endPoint: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) lineStyle: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) initialize.
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) pointA: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) pointB: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg2.
    (recoveredValue8) manager: (recoveredValue9).
    recoveredValue10 := (recoveredValue0) buildBezPoints.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201eb09c; bytecode file offset 0xae796c"
!RBBezierGO class methodsFor: 'recovered'!
createWithLineStyle: recoveredArg1 manager: recoveredArg2 startPoint: recoveredArg3 endPoint: recoveredArg4 bezPoints: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) lineStyle: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) initialize.
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) pointA: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) pointB: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) bezPoints: (recoveredValue9).
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue0) manager: (recoveredValue10).
    ^recoveredValue11
! !

