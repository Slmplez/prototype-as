"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002c8fc; bytecode file offset 0x180284"
!OSIPSFactoryBuffer class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'createProxy:riid:ppProxy:ppv:' 'createStub:pUnkServer:ppStub:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    CreateProxy := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    CreateStub := recoveredValue1.
    ^self
! !

"psupp.ic method 0x200413e4; bytecode file offset 0x194ca4"
!OSIPSFactoryBuffer class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
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
    recoveredValue9 := OSIUnknown.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSIid.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := OSUInt8.
    recoveredValue16 := (self) parameterForClass: (recoveredValue15).
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue7.
    recoveredValue18 := OSUInt8.
    recoveredValue19 := (self) parameterForClass: (recoveredValue18).
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue20).
    recoveredValue21 := recoveredLocal2.
    (recoveredValue21) add: ('uint32').
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := OrderedCollection.
    recoveredValue24 := (recoveredValue23) new.
    recoveredValue25 := recoveredValue24.
    recoveredValue26 := OSIid.
    recoveredValue27 := (self) parameterForClass: (recoveredValue26).
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := recoveredValue24.
    recoveredValue29 := OSIUnknown.
    recoveredValue30 := (self) parameterForClass: (recoveredValue29).
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := recoveredValue24.
    recoveredValue32 := OSUInt8.
    recoveredValue33 := (self) parameterForClass: (recoveredValue32).
    (recoveredValue31) add: (recoveredValue33).
    recoveredValue34 := (recoveredValue24) asArray.
    (recoveredValue22) add: (recoveredValue34).
    recoveredValue35 := Array.
    recoveredValue36 := recoveredLocal2.
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := (recoveredValue35) with: (recoveredValue36) with: (recoveredValue37).
    ^recoveredValue38
! !

