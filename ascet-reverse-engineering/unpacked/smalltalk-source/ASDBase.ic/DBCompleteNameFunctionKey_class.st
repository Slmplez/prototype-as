"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x203bea38; bytecode file offset 0xcbb31c"
!DBCompleteNameFunctionKey class methodsFor: 'recovered'!
keyValueFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) recordClass.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := (recoveredValue2) classNameLength.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (recoveredValue4) nameLength.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := String.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) function.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := (recoveredValue9) + (recoveredValue12).
    recoveredValue14 := (recoveredValue6) new: (recoveredValue13).
    recoveredLocal4 := recoveredValue14.
    recoveredValue15 := recoveredLocal4.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) className.
    (recoveredValue15) uint16At: (0) put: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) name.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) name.
    recoveredValue22 := (recoveredValue21) size.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue22) min: (recoveredValue23).
    recoveredValue25 := (recoveredValue24) + (-1).
    recoveredValue26 := recoveredLocal4.
    recoveredValue27 := recoveredLocal2.
    (recoveredValue19) memcpyFrom: (0) to: (recoveredValue25) into: (recoveredValue26) startingAt: (recoveredValue27).
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (recoveredValue28) function.
    recoveredValue30 := recoveredArg1.
    recoveredValue31 := (recoveredValue30) function.
    recoveredValue32 := (recoveredValue31) size.
    recoveredValue33 := (recoveredValue32) + (-1).
    recoveredValue34 := recoveredLocal4.
    recoveredValue35 := recoveredLocal2.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := (recoveredValue35) + (recoveredValue36).
    (recoveredValue29) memcpyFrom: (0) to: (recoveredValue33) into: (recoveredValue34) startingAt: (recoveredValue37).
    recoveredValue38 := recoveredLocal4.
    ^recoveredValue38
! !

