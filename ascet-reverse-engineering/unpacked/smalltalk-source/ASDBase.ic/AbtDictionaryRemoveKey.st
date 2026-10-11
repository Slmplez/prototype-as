"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200bad90; bytecode file offset 0x9b7664"
!AbtDictionaryRemoveKey methodsFor: 'recovered'!
primitiveUndoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := oldValueDictionary.
    recoveredValue2 := ShadowValue.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) add: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bada4; bytecode file offset 0x9b7664"
!AbtDictionaryRemoveKey methodsFor: 'recovered'!
primitiveUndoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := oldValueDictionary.
    recoveredValue2 := RealValue.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) add: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bb174; bytecode file offset 0x9b7a48"
!AbtDictionaryRemoveKey methodsFor: 'recovered'!
primitiveRedoToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arguments.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bb188; bytecode file offset 0x9b7a48"
!AbtDictionaryRemoveKey methodsFor: 'recovered'!
primitiveRedoToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) realArguments.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20184134; bytecode file offset 0xa80a04"
!AbtDictionaryRemoveKey methodsFor: 'recovered'!
primitiveExecuteToReal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := oldValueDictionary.
    recoveredValue1 := RealValue.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arguments.
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredValue5 := (recoveredValue2) associationAt: (recoveredValue4).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := super primitiveExecuteToReal: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201a3e34; bytecode file offset 0xaa06fc"
!AbtDictionaryRemoveKey methodsFor: 'recovered'!
primitiveExecuteToShadow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := oldValueDictionary.
    recoveredValue1 := ShadowValue.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := arguments.
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredValue5 := (recoveredValue2) associationAt: (recoveredValue4).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := actionName.
    recoveredValue8 := arguments.
    recoveredValue9 := (recoveredValue6) abtPerformActionNamed: (recoveredValue7) arguments: (recoveredValue8).
    ^recoveredValue9
! !

