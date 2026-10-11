"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2016bc04; bytecode file offset 0xa684d0"
!DBClassNameLabelKey class methodsFor: 'recovered'!
keyValueFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := String.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) recordClass.
    recoveredValue3 := (recoveredValue2) classNameLength.
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) className.
    (recoveredValue5) uint16At: (0) put: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

