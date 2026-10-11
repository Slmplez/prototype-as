"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034df8; bytecode file offset 0x1886ac"
!OSIPersistMemory class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getClassID:' 'isDirty' 'load:cbSize:' 'save:fClearDirty:cbSize:' 'getSizeMax:' 'initNew')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (8).
    GetSizeMax := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (9).
    InitNew := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (5).
    IsDirty := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (6).
    Load := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (7).
    Save := recoveredValue4.
    ^self
! !

"psupp.ic method 0x200448d8; bytecode file offset 0x19819c"
!OSIPersistMemory class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 |
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
    recoveredValue11 := OSUInt8.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue9.
    recoveredValue14 := (self) parameterForType: ('uint32').
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := (recoveredValue9) asArray.
    (recoveredValue7) add: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    (recoveredValue16) add: ('uint32').
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := OrderedCollection.
    recoveredValue19 := (recoveredValue18) new.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := OSUInt8.
    recoveredValue22 := (self) parameterForClass: (recoveredValue21).
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue19.
    recoveredValue24 := (self) parameterForType: ('bool').
    (recoveredValue23) add: (recoveredValue24).
    recoveredValue25 := recoveredValue19.
    recoveredValue26 := (self) parameterForType: ('uint32').
    (recoveredValue25) add: (recoveredValue26).
    recoveredValue27 := (recoveredValue19) asArray.
    (recoveredValue17) add: (recoveredValue27).
    recoveredValue28 := recoveredLocal2.
    (recoveredValue28) add: ('uint32').
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := OrderedCollection.
    recoveredValue31 := (recoveredValue30) new.
    recoveredValue32 := recoveredValue31.
    recoveredValue33 := OSUInt8.
    recoveredValue34 := (self) parameterForClass: (recoveredValue33).
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := (recoveredValue31) asArray.
    (recoveredValue29) add: (recoveredValue35).
    recoveredValue36 := recoveredLocal2.
    (recoveredValue36) add: ('uint32').
    recoveredValue37 := recoveredLocal1.
    (recoveredValue37) add: (#()).
    recoveredValue38 := Array.
    recoveredValue39 := recoveredLocal2.
    recoveredValue40 := recoveredLocal1.
    recoveredValue41 := (recoveredValue38) with: (recoveredValue39) with: (recoveredValue40).
    ^recoveredValue41
! !

