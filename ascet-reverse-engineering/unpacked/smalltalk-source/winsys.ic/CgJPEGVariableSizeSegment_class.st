"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2002ca20; bytecode file offset 0xa8c00"
!CgJPEGVariableSizeSegment class methodsFor: 'recovered'!
fromStream: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (recoveredValue4) size.
    (recoveredValue2) read: (recoveredValue3) startingAt: (1) nbyte: (recoveredValue5).
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := (self) reference: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := ByteArray.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) segmentLength.
    recoveredValue11 := (recoveredValue10) + (2).
    recoveredValue12 := (recoveredValue8) new: (recoveredValue11).
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredValue13.
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := (recoveredValue15) at: (1).
    (recoveredValue14) at: (1) put: (recoveredValue16).
    recoveredValue17 := recoveredValue13.
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := (recoveredValue18) at: (2).
    (recoveredValue17) at: (2) put: (recoveredValue19).
    recoveredValue20 := recoveredValue13.
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := (recoveredValue21) at: (3).
    (recoveredValue20) at: (3) put: (recoveredValue22).
    recoveredValue23 := recoveredLocal3.
    recoveredValue24 := (recoveredValue23) at: (4).
    (recoveredValue13) at: (4) put: (recoveredValue24).
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := recoveredLocal2.
    recoveredValue27 := recoveredLocal2.
    recoveredValue28 := (recoveredValue27) size.
    recoveredValue29 := (recoveredValue28) - (4).
    (recoveredValue25) read: (recoveredValue26) startingAt: (5) nbyte: (recoveredValue29).
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := recoveredLocal2.
    (recoveredValue30) reference: (recoveredValue31).
    recoveredValue32 := recoveredLocal1.
    ^recoveredValue32
! !

