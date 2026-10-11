"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200329f8; bytecode file offset 0x1862a8"
!OSIDispatch class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getTypeInfoCount:' 'getTypeInfo:lcid:pptinfo:' 'getIDsOfNames:rgszNames:cNames:lcid:rgdispid:' 'invoke:riid:lcid:wFlags:pdispparams:pvarResult:pexcepinfo:puArgErr:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    GetIDsOfNames := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    GetTypeInfo := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (4).
    GetTypeInfoCount := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    Invoke := recoveredValue3.
    ^self
! !

"psupp.ic method 0x2004a510; bytecode file offset 0x19dde4"
!OSIDispatch class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 |
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
    recoveredValue9 := OSUInt8.
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
    recoveredValue19 := (self) parameterForType: ('uint32').
    (recoveredValue18) add: (recoveredValue19).
    recoveredValue20 := recoveredValue15.
    recoveredValue21 := OSUInt8.
    recoveredValue22 := (self) parameterForClass: (recoveredValue21).
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := (recoveredValue15) asArray.
    (recoveredValue13) add: (recoveredValue23).
    recoveredValue24 := recoveredLocal2.
    (recoveredValue24) add: ('uint32').
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := OrderedCollection.
    recoveredValue27 := (recoveredValue26) new.
    recoveredValue28 := recoveredValue27.
    recoveredValue29 := OSIid.
    recoveredValue30 := (self) parameterForClass: (recoveredValue29).
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := recoveredValue27.
    recoveredValue32 := OSUInt8.
    recoveredValue33 := (self) parameterForClass: (recoveredValue32).
    (recoveredValue31) add: (recoveredValue33).
    recoveredValue34 := recoveredValue27.
    recoveredValue35 := (self) parameterForType: ('uint32').
    (recoveredValue34) add: (recoveredValue35).
    recoveredValue36 := recoveredValue27.
    recoveredValue37 := (self) parameterForType: ('uint32').
    (recoveredValue36) add: (recoveredValue37).
    recoveredValue38 := recoveredValue27.
    recoveredValue39 := OSUInt8.
    recoveredValue40 := (self) parameterForClass: (recoveredValue39).
    (recoveredValue38) add: (recoveredValue40).
    recoveredValue41 := (recoveredValue27) asArray.
    (recoveredValue25) add: (recoveredValue41).
    recoveredValue42 := recoveredLocal2.
    (recoveredValue42) add: ('uint32').
    recoveredValue43 := recoveredLocal1.
    recoveredValue44 := OrderedCollection.
    recoveredValue45 := (recoveredValue44) new.
    recoveredValue46 := recoveredValue45.
    recoveredValue47 := (self) parameterForType: ('int32').
    (recoveredValue46) add: (recoveredValue47).
    recoveredValue48 := recoveredValue45.
    recoveredValue49 := OSIid.
    recoveredValue50 := (self) parameterForClass: (recoveredValue49).
    (recoveredValue48) add: (recoveredValue50).
    recoveredValue51 := recoveredValue45.
    recoveredValue52 := (self) parameterForType: ('uint32').
    (recoveredValue51) add: (recoveredValue52).
    recoveredValue53 := recoveredValue45.
    recoveredValue54 := (self) parameterForType: ('uint16').
    (recoveredValue53) add: (recoveredValue54).
    recoveredValue55 := recoveredValue45.
    recoveredValue56 := OSDispparams.
    recoveredValue57 := (self) parameterForClass: (recoveredValue56).
    (recoveredValue55) add: (recoveredValue57).
    recoveredValue58 := recoveredValue45.
    recoveredValue59 := OSVariantarg.
    recoveredValue60 := (self) parameterForClass: (recoveredValue59).
    (recoveredValue58) add: (recoveredValue60).
    recoveredValue61 := recoveredValue45.
    recoveredValue62 := OSExcepinfo.
    recoveredValue63 := (self) parameterForClass: (recoveredValue62).
    (recoveredValue61) add: (recoveredValue63).
    recoveredValue64 := recoveredValue45.
    recoveredValue65 := OSUInt8.
    recoveredValue66 := (self) parameterForClass: (recoveredValue65).
    (recoveredValue64) add: (recoveredValue66).
    recoveredValue67 := (recoveredValue45) asArray.
    (recoveredValue43) add: (recoveredValue67).
    recoveredValue68 := Array.
    recoveredValue69 := recoveredLocal2.
    recoveredValue70 := recoveredLocal1.
    recoveredValue71 := (recoveredValue68) with: (recoveredValue69) with: (recoveredValue70).
    ^recoveredValue71
! !

