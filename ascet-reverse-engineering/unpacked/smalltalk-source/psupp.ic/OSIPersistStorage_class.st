"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20036a44; bytecode file offset 0x18a2fc"
!OSIPersistStorage class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getClassID:' 'isDirty' 'initNew:' 'load:' 'save:fSameAsLoad:' 'saveCompleted:' 'handsOffStorage')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (10).
    HandsOffStorage := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    InitNew := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (5).
    IsDirty := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    Load := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (8).
    Save := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (9).
    SaveCompleted := recoveredValue5.
    ^self
! !

"psupp.ic method 0x200451a0; bytecode file offset 0x198a64"
!OSIPersistStorage class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
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
    recoveredValue11 := OSIStorage.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := (recoveredValue9) asArray.
    (recoveredValue7) add: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) add: ('uint32').
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := OrderedCollection.
    recoveredValue17 := (recoveredValue16) new.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := OSIStorage.
    recoveredValue20 := (self) parameterForClass: (recoveredValue19).
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := (recoveredValue17) asArray.
    (recoveredValue15) add: (recoveredValue21).
    recoveredValue22 := recoveredLocal2.
    (recoveredValue22) add: ('uint32').
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := OrderedCollection.
    recoveredValue25 := (recoveredValue24) new.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := OSIStorage.
    recoveredValue28 := (self) parameterForClass: (recoveredValue27).
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := recoveredValue25.
    recoveredValue30 := (self) parameterForType: ('bool').
    (recoveredValue29) add: (recoveredValue30).
    recoveredValue31 := (recoveredValue25) asArray.
    (recoveredValue23) add: (recoveredValue31).
    recoveredValue32 := recoveredLocal2.
    (recoveredValue32) add: ('uint32').
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := OrderedCollection.
    recoveredValue35 := (recoveredValue34) new.
    recoveredValue36 := recoveredValue35.
    recoveredValue37 := OSIStorage.
    recoveredValue38 := (self) parameterForClass: (recoveredValue37).
    (recoveredValue36) add: (recoveredValue38).
    recoveredValue39 := (recoveredValue35) asArray.
    (recoveredValue33) add: (recoveredValue39).
    recoveredValue40 := recoveredLocal2.
    (recoveredValue40) add: ('uint32').
    recoveredValue41 := recoveredLocal1.
    (recoveredValue41) add: (#()).
    recoveredValue42 := Array.
    recoveredValue43 := recoveredLocal2.
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := (recoveredValue42) with: (recoveredValue43) with: (recoveredValue44).
    ^recoveredValue45
! !

