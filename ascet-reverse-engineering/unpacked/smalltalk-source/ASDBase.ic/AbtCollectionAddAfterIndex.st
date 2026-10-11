"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20143df4; bytecode file offset 0xa407e0"
!AbtCollectionAddAfterIndex methodsFor: 'recovered'!
primitiveUndoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := ShadowValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformActionNamed: ('remove:') arguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20143eb4; bytecode file offset 0xa407e0"
!AbtCollectionAddAfterIndex methodsFor: 'recovered'!
primitiveUndoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := RealValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformActionNamed: ('remove:') arguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20164348; bytecode file offset 0xa60c14"
!AbtCollectionAddAfterIndex methodsFor: 'recovered'!
primitiveExecuteToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := oldValueDictionary.
    recoveredValue1 := RealValue.
    recoveredValue2 := (self) arguments.
    recoveredValue3 := (recoveredValue2) at: (1).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := super primitiveExecuteToReal: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20193ea8; bytecode file offset 0xa907b4"
!AbtCollectionAddAfterIndex methodsFor: 'recovered'!
primitiveRedoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (self) arguments.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (self) arguments.
    recoveredValue5 := (recoveredValue4) at: (2).
    recoveredValue6 := (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) abtPerformActionNamed: ('add:afterIndex:') arguments: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20193ee8; bytecode file offset 0xa907b4"
!AbtCollectionAddAfterIndex methodsFor: 'recovered'!
primitiveRedoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (self) realArguments.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (self) realArguments.
    recoveredValue5 := (recoveredValue4) at: (2).
    recoveredValue6 := (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) abtPerformActionNamed: ('add:afterIndex:') arguments: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2025b54c; bytecode file offset 0xb57e24"
!AbtCollectionAddAfterIndex methodsFor: 'recovered'!
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
    (recoveredValue6) abtPerformActionNamed: ('add:afterIndex:') arguments: (recoveredValue11).
    recoveredValue12 := (self) arguments.
    recoveredValue13 := (recoveredValue12) at: (1).
    ^recoveredValue13
! !

