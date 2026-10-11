"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20143cf4; bytecode file offset 0xa407e0"
!AbtCollectionAdd methodsFor: 'recovered'!
primitiveUndoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := RealValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformAction: ('remove:') withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20143d34; bytecode file offset 0xa407e0"
!AbtCollectionAdd methodsFor: 'recovered'!
primitiveUndoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := ShadowValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformAction: ('remove:') withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20143db4; bytecode file offset 0xa407e0"
!AbtCollectionAdd methodsFor: 'recovered'!
primitiveRedoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := ShadowValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformAction: ('add:') withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20143ef4; bytecode file offset 0xa407e0"
!AbtCollectionAdd methodsFor: 'recovered'!
primitiveRedoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := oldValueDictionary.
    recoveredValue3 := RealValue.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) abtPerformAction: ('add:') withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20164328; bytecode file offset 0xa60c14"
!AbtCollectionAdd methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20221140; bytecode file offset 0xb1da14"
!AbtCollectionAdd methodsFor: 'recovered'!
primitiveExecuteToShadow: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) arguments.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredValue2 := (recoveredValue1) recursiveDeferredUpdateOperation.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := oldValueDictionary.
    recoveredValue4 := ShadowValue.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := actionName.
    recoveredValue8 := Array.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) with: (recoveredValue9).
    (recoveredValue6) abtPerformAction: (recoveredValue7) withArguments: (recoveredValue10).
    recoveredValue11 := (self) arguments.
    recoveredValue12 := (recoveredValue11) at: (1).
    ^recoveredValue12
! !

