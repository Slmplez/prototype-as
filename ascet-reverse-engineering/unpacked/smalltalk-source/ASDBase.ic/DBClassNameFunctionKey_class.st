"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202a7d60; bytecode file offset 0xba4638"
!DBClassNameFunctionKey class methodsFor: 'recovered'!
keyValueFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) recordClass.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) classNameLength.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := String.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) function.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := (recoveredValue5) + (recoveredValue8).
    recoveredValue10 := (recoveredValue4) new: (recoveredValue9).
    recoveredLocal3 := recoveredValue10.
    recoveredValue11 := recoveredLocal3.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) className.
    (recoveredValue11) uint16At: (0) put: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) function.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) function.
    recoveredValue18 := (recoveredValue17) size.
    recoveredValue19 := (recoveredValue18) + (-1).
    recoveredValue20 := recoveredLocal3.
    recoveredValue21 := recoveredLocal1.
    (recoveredValue15) memcpyFrom: (0) to: (recoveredValue19) into: (recoveredValue20) startingAt: (recoveredValue21).
    recoveredValue22 := recoveredLocal3.
    ^recoveredValue22
! !

