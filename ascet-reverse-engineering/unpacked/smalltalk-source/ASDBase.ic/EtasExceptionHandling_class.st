"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2013921c; bytecode file offset 0xa35ae0"
!EtasExceptionHandling class methodsFor: 'recovered'!
logException: recoveredArg1 contextFrame: recoveredArg2 callerFrame: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) method.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) method.
    recoveredValue6 := (recoveredValue5) asString.
    recoveredValue7 := ('[ASCET Exception] %1 - %2 (in context %3)') bindWith: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x201fb0e0; bytecode file offset 0xaf79b8"
!EtasExceptionHandling class methodsFor: 'recovered'!
logException: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('[ASCET Exception] ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' - ').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := Transcript.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) show: (recoveredValue7).
    (recoveredValue5) cr.
    recoveredValue8 := OSCall.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) outputDebugString: (recoveredValue10).
    ^self
! !

