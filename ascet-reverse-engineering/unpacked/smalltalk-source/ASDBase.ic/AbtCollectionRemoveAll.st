"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20143d14; bytecode file offset 0xa407e0"
!AbtCollectionRemoveAll methodsFor: 'recovered'!
primitiveUndoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := RealValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformActionNamed: ('addAll:') arguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20143d94; bytecode file offset 0xa407e0"
!AbtCollectionRemoveAll methodsFor: 'recovered'!
primitiveUndoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := ShadowValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformActionNamed: ('addAll:') arguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20143f68; bytecode file offset 0xa408b4"
!AbtCollectionRemoveAll methodsFor: 'recovered'!
primitiveRedoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (self) arguments.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (recoveredValue1) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) abtPerformActionNamed: ('removeAll:') arguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20143fa8; bytecode file offset 0xa408b4"
!AbtCollectionRemoveAll methodsFor: 'recovered'!
primitiveRedoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (self) realArguments.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (recoveredValue1) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) abtPerformActionNamed: ('removeAll:') arguments: (recoveredValue4).
    ^recoveredValue5
! !

