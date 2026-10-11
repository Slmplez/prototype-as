"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20143e14; bytecode file offset 0xa407e0"
!AbtCollectionRemove methodsFor: 'recovered'!
primitiveUndoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := RealValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformActionNamed: ('add:') arguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20143e34; bytecode file offset 0xa407e0"
!AbtCollectionRemove methodsFor: 'recovered'!
primitiveUndoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := ShadowValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformActionNamed: ('add:') arguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20143fc8; bytecode file offset 0xa408b4"
!AbtCollectionRemove methodsFor: 'recovered'!
primitiveRedoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (self) arguments.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (recoveredValue1) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) abtPerformActionNamed: ('remove:') arguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20143fe8; bytecode file offset 0xa408b4"
!AbtCollectionRemove methodsFor: 'recovered'!
primitiveRedoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (self) realArguments.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (recoveredValue1) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) abtPerformActionNamed: ('remove:') arguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201642e8; bytecode file offset 0xa60c14"
!AbtCollectionRemove methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2022cfac; bytecode file offset 0xb2987c"
!AbtCollectionRemove methodsFor: 'recovered'!
primitiveExecuteToShadow: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) arguments.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredValue5 := (recoveredValue4) recursiveDeferredUpdateOperation.
    (recoveredValue1) at: (1) put: (recoveredValue5).
    recoveredValue6 := oldValueDictionary.
    recoveredValue7 := ShadowValue.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) at: (1).
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := actionName.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue10) abtPerformActionNamed: (recoveredValue11) arguments: (recoveredValue12).
    ^recoveredValue13
! !

