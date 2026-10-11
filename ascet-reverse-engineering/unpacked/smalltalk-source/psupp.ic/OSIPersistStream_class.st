"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20032c80; bytecode file offset 0x186530"
!OSIPersistStream class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getClassID:' 'isDirty' 'load:' 'save:fClearDirty:' 'getSizeMax:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (8).
    GetSizeMax := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    IsDirty := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (6).
    Load := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    Save := recoveredValue3.
    ^self
! !

"psupp.ic method 0x20041180; bytecode file offset 0x194a48"
!OSIPersistStream class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
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
    recoveredValue11 := OSIStream.
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
    recoveredValue19 := OSIStream.
    recoveredValue20 := (self) parameterForClass: (recoveredValue19).
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue17.
    recoveredValue22 := (self) parameterForType: ('bool').
    (recoveredValue21) add: (recoveredValue22).
    recoveredValue23 := (recoveredValue17) asArray.
    (recoveredValue15) add: (recoveredValue23).
    recoveredValue24 := recoveredLocal2.
    (recoveredValue24) add: ('uint32').
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := OrderedCollection.
    recoveredValue27 := (recoveredValue26) new.
    recoveredValue28 := recoveredValue27.
    recoveredValue29 := OSUlargeInteger.
    recoveredValue30 := (self) parameterForClass: (recoveredValue29).
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := (recoveredValue27) asArray.
    (recoveredValue25) add: (recoveredValue31).
    recoveredValue32 := Array.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue32) with: (recoveredValue33) with: (recoveredValue34).
    ^recoveredValue35
! !

