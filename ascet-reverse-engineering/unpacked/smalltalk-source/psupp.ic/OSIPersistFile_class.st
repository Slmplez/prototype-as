"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034e48; bytecode file offset 0x1886fc"
!OSIPersistFile class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getClassID:' 'isDirty' 'load:dwMode:' 'save:fRemember:' 'saveCompleted:' 'getCurFile:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (9).
    GetCurFile := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    IsDirty := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (6).
    Load := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    Save := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (8).
    SaveCompleted := recoveredValue4.
    ^self
! !

"psupp.ic method 0x20044de8; bytecode file offset 0x1986b0"
!OSIPersistFile class methodsFor: 'recovered'!
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
    recoveredValue11 := OSOleStringZ.
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
    recoveredValue21 := OSOleStringZ.
    recoveredValue22 := (self) parameterForClass: (recoveredValue21).
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue19.
    recoveredValue24 := (self) parameterForType: ('bool').
    (recoveredValue23) add: (recoveredValue24).
    recoveredValue25 := (recoveredValue19) asArray.
    (recoveredValue17) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal2.
    (recoveredValue26) add: ('uint32').
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := OrderedCollection.
    recoveredValue29 := (recoveredValue28) new.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := OSOleStringZ.
    recoveredValue32 := (self) parameterForClass: (recoveredValue31).
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := (recoveredValue29) asArray.
    (recoveredValue27) add: (recoveredValue33).
    recoveredValue34 := recoveredLocal2.
    (recoveredValue34) add: ('uint32').
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := OrderedCollection.
    recoveredValue37 := (recoveredValue36) new.
    recoveredValue38 := recoveredValue37.
    recoveredValue39 := OSUInt8.
    recoveredValue40 := (self) parameterForClass: (recoveredValue39).
    (recoveredValue38) add: (recoveredValue40).
    recoveredValue41 := (recoveredValue37) asArray.
    (recoveredValue35) add: (recoveredValue41).
    recoveredValue42 := Array.
    recoveredValue43 := recoveredLocal2.
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := (recoveredValue42) with: (recoveredValue43) with: (recoveredValue44).
    ^recoveredValue45
! !

