"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20143d74; bytecode file offset 0xa407e0"
!AbtCollectionAddAllBeforeIndex methodsFor: 'recovered'!
primitiveUndoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := ShadowValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformActionNamed: ('removeAll:') arguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20143dd4; bytecode file offset 0xa407e0"
!AbtCollectionAddAllBeforeIndex methodsFor: 'recovered'!
primitiveUndoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := RealValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformActionNamed: ('removeAll:') arguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20193e68; bytecode file offset 0xa907b4"
!AbtCollectionAddAllBeforeIndex methodsFor: 'recovered'!
primitiveRedoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (self) arguments.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (self) arguments.
    recoveredValue5 := (recoveredValue4) at: (2).
    recoveredValue6 := (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) abtPerformActionNamed: ('addAll:beforeIndex:') arguments: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20193ec8; bytecode file offset 0xa907b4"
!AbtCollectionAddAllBeforeIndex methodsFor: 'recovered'!
primitiveRedoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (self) realArguments.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (self) realArguments.
    recoveredValue5 := (recoveredValue4) at: (2).
    recoveredValue6 := (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) abtPerformActionNamed: ('addAll:beforeIndex:') arguments: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2025b4c8; bytecode file offset 0xb57e24"
!AbtCollectionAddAllBeforeIndex methodsFor: 'recovered'!
primitiveExecuteToShadow: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) arguments.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredValue2 := (recoveredValue1) recursiveDeferredUpdateOperation.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := oldValueDictionary.
    recoveredValue4 := ShadowValue.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := Array.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) arguments.
    recoveredValue10 := (recoveredValue9) at: (2).
    recoveredValue11 := (recoveredValue7) with: (recoveredValue8) with: (recoveredValue10).
    (recoveredValue6) abtPerformActionNamed: ('addAll:beforeIndex:') arguments: (recoveredValue11).
    recoveredValue12 := (self) arguments.
    recoveredValue13 := (recoveredValue12) at: (1).
    ^recoveredValue13
! !

