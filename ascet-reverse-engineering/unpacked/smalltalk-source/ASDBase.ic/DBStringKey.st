"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20147300; bytecode file offset 0xa43bc8"
!DBStringKey methodsFor: 'recovered'!
wildCardMatch: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Kk') == ('Call_70959').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) keyValueFor: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) keyValueFor: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue2) match: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2019db88; bytecode file offset 0xa9a44c"
!DBStringKey methodsFor: 'recovered'!
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

