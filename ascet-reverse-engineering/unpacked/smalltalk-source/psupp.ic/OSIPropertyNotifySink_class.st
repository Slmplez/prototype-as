"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002c9c0; bytecode file offset 0x180284"
!OSIPropertyNotifySink class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'onChanged:' 'onRequestEdit:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    OnChanged := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    OnRequestEdit := recoveredValue1.
    ^self
! !

"psupp.ic method 0x2003aa1c; bytecode file offset 0x18e2d4"
!OSIPropertyNotifySink class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) add: ('uint32').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := (self) parameterForType: ('int32').
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    (recoveredValue11) add: ('uint32').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := OrderedCollection.
    recoveredValue14 := (recoveredValue13) new.
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := (self) parameterForType: ('int32').
    (recoveredValue15) add: (recoveredValue16).
    recoveredValue17 := (recoveredValue14) asArray.
    (recoveredValue12) add: (recoveredValue17).
    recoveredValue18 := Array.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (recoveredValue18) with: (recoveredValue19) with: (recoveredValue20).
    ^recoveredValue21
! !

