"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200134dc; bytecode file offset 0x912098"
!EtasFcvt class methodsFor: 'recovered'!
stringRepresentation
    | recoveredValue0 |
    recoveredValue0 := EtasFloatFormatterFCVT.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200daea0; bytecode file offset 0x9d7774"
!EtasFcvt class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 significantDigits: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) handleInfinity: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) fcvt: (recoveredValue2) significantDigits: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20101984; bytecode file offset 0x9fe244"
!EtasFcvt class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 significantDigits: recoveredArg2 floatSeparator: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) handleInfinity: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) fcvt: (recoveredValue2) significantDigits: (recoveredValue3) floatSeparator: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20111e2c; bytecode file offset 0xa0e6ec"
!EtasFcvt class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 significantDigits: recoveredArg2 on: recoveredArg3 floatSeparator: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) handleInfinity: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) fcvt: (recoveredValue2) significantDigits: (recoveredValue3) on: (recoveredValue4) floatSeparator: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20246348; bytecode file offset 0xb42c0c"
!EtasFcvt class methodsFor: 'recovered'!
floatEqualWithSigDig: recoveredArg1 with: recoveredArg2 significantDigits: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) handleInfinity: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) handleInfinity: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := RBBcrtl32DLL.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (self) evaluateDigits: (recoveredValue7) maxDigits: (0) postDigits: (recoveredValue8).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := (self) evaluateDigits: (recoveredValue10) maxDigits: (0) postDigits: (recoveredValue11).
    recoveredValue13 := (recoveredValue4) floatEqualWithSigDig: (recoveredValue5) with: (recoveredValue6) significantDigits: (recoveredValue9) with: (recoveredValue12).
    ^recoveredValue13
! !

