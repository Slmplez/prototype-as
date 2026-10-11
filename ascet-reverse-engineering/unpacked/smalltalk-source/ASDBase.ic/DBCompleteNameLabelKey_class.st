"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20138e60; bytecode file offset 0xa35728"
!DBCompleteNameLabelKey class methodsFor: 'recovered'!
createWith: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initializeInstances.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) keyValue: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) size.
    (recoveredValue2) keyLength: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2030396c; bytecode file offset 0xc0024c"
!DBCompleteNameLabelKey class methodsFor: 'recovered'!
keyValueFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
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
    recoveredValue10 := (recoveredValue6) new: (recoveredValue9).
    recoveredLocal4 := recoveredValue10.
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) className.
    (recoveredValue11) uint16At: (0) put: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) name.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) name.
    recoveredValue18 := (recoveredValue17) size.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue18) min: (recoveredValue19).
    recoveredValue21 := (recoveredValue20) + (-1).
    recoveredValue22 := recoveredLocal4.
    recoveredValue23 := recoveredLocal2.
    (recoveredValue15) memcpyFrom: (0) to: (recoveredValue21) into: (recoveredValue22) startingAt: (recoveredValue23).
    recoveredValue24 := recoveredLocal4.
    ^recoveredValue24
! !

