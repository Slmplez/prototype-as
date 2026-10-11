"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000eeb8; bytecode file offset 0x8b084"
!CgDeviceIndependentImage class methodsFor: 'recovered'!
width: recoveredArg1 height: recoveredArg2 depth: recoveredArg3 palette: recoveredArg4 scanlinePad: recoveredArg5 data: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := (recoveredValue0) initialize: (recoveredValue1) height: (recoveredValue2) depth: (recoveredValue3) palette: (recoveredValue4) scanlinePad: (recoveredValue5) data: (recoveredValue6).
    ^recoveredValue7
! !

"winsys.ic method 0x2001f940; bytecode file offset 0x9bb0c"
!CgDeviceIndependentImage class methodsFor: 'recovered'!
width: recoveredArg1 height: recoveredArg2 depth: recoveredArg3 palette: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredLocal2 := 4.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (7).
    recoveredValue4 := (recoveredValue3) // (8).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) + (-1).
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue8) // (recoveredValue9).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue10) * (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := recoveredArg3.
    recoveredValue16 := recoveredArg4.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := ByteArray.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := recoveredArg2.
    recoveredValue21 := (recoveredValue19) * (recoveredValue20).
    recoveredValue22 := (recoveredValue18) new: (recoveredValue21).
    recoveredValue23 := (self) width: (recoveredValue13) height: (recoveredValue14) depth: (recoveredValue15) palette: (recoveredValue16) scanlinePad: (recoveredValue17) data: (recoveredValue22).
    ^recoveredValue23
! !

