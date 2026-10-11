"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20094494; bytecode file offset 0x990d58"
!DBFirstVersionIdKey methodsFor: 'recovered'!
putKeyValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := keyValue.
    (recoveredValue0) firstVersionId: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2019db70; bytecode file offset 0xa9a44c"
!DBFirstVersionIdKey methodsFor: 'recovered'!
matchFirst: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) keyValueFor: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) keyValueFor: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := (recoveredValue6) min: (recoveredValue8).
    recoveredValue10 := (recoveredValue4) copyFrom: (1) to: (recoveredValue9).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue10) = (recoveredValue11).
    ^recoveredValue12
! !

