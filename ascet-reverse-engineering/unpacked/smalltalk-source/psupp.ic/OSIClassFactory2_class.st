"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20030880; bytecode file offset 0x18412c"
!OSIClassFactory2 class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'createInstance:riid:ppvObject:' 'lockServer:' 'getLicInfo:' 'requestLicKey:pbstrKey:' 'createInstanceLic:pUnkReserved:riid:bstrKey:ppvObject:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (8).
    CreateInstanceLic := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    GetLicInfo := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (7).
    RequestLicKey := recoveredValue2.
    ^self
! !

"psupp.ic method 0x20044340; bytecode file offset 0x197c08"
!OSIClassFactory2 class methodsFor: 'recovered'!
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
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := OSLicinfo.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) add: ('uint32').
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := OrderedCollection.
    recoveredValue15 := (recoveredValue14) new.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := (self) parameterForType: ('uint32').
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := recoveredValue15.
    recoveredValue19 := OSUInt8.
    recoveredValue20 := (self) parameterForClass: (recoveredValue19).
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := (recoveredValue15) asArray.
    (recoveredValue13) add: (recoveredValue21).
    recoveredValue22 := recoveredLocal2.
    (recoveredValue22) add: ('uint32').
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := OrderedCollection.
    recoveredValue25 := (recoveredValue24) new.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := OSIUnknown.
    recoveredValue28 := (self) parameterForClass: (recoveredValue27).
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := recoveredValue25.
    recoveredValue30 := OSIUnknown.
    recoveredValue31 := (self) parameterForClass: (recoveredValue30).
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := recoveredValue25.
    recoveredValue33 := OSIid.
    recoveredValue34 := (self) parameterForClass: (recoveredValue33).
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := recoveredValue25.
    recoveredValue36 := OSUInt8.
    recoveredValue37 := (self) parameterForClass: (recoveredValue36).
    (recoveredValue35) add: (recoveredValue37).
    recoveredValue38 := recoveredValue25.
    recoveredValue39 := OSUInt8.
    recoveredValue40 := (self) parameterForClass: (recoveredValue39).
    (recoveredValue38) add: (recoveredValue40).
    recoveredValue41 := (recoveredValue25) asArray.
    (recoveredValue23) add: (recoveredValue41).
    recoveredValue42 := Array.
    recoveredValue43 := recoveredLocal2.
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := (recoveredValue42) with: (recoveredValue43) with: (recoveredValue44).
    ^recoveredValue45
! !

