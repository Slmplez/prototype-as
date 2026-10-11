"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20030808; bytecode file offset 0x1840b4"
!OSIPersistPropertyBag class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getClassID:' 'initNew' 'load:pErrorLog:' 'save:fClearDirty:fSaveAllProperties:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (5).
    InitNew := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    Load := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (7).
    Save := recoveredValue2.
    ^self
! !

"psupp.ic method 0x2004069c; bytecode file offset 0x193f64"
!OSIPersistPropertyBag class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) add: ('uint32').
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) add: (#()).
    recoveredValue6 := recoveredLocal2.
    (recoveredValue6) add: ('uint32').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := OrderedCollection.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := OSIPropertyBag.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue9.
    recoveredValue14 := OSIErrorLog.
    recoveredValue15 := (self) parameterForClass: (recoveredValue14).
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := (recoveredValue9) asArray.
    (recoveredValue7) add: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    (recoveredValue17) add: ('uint32').
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := OrderedCollection.
    recoveredValue20 := (recoveredValue19) new.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := OSIPropertyBag.
    recoveredValue23 := (self) parameterForClass: (recoveredValue22).
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue20.
    recoveredValue25 := (self) parameterForType: ('bool').
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := recoveredValue20.
    recoveredValue27 := (self) parameterForType: ('bool').
    (recoveredValue26) add: (recoveredValue27).
    recoveredValue28 := (recoveredValue20) asArray.
    (recoveredValue18) add: (recoveredValue28).
    recoveredValue29 := Array.
    recoveredValue30 := recoveredLocal2.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (recoveredValue29) with: (recoveredValue30) with: (recoveredValue31).
    ^recoveredValue32
! !

