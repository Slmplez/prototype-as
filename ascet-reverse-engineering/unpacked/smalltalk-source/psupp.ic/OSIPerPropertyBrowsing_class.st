"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20032968; bytecode file offset 0x186218"
!OSIPerPropertyBrowsing class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getDisplayString:lpbstr:' 'mapPropertyToPage:lpclsid:' 'getPredefinedStrings:lpcaStringsOut:lpcaCookiesOut:' 'getPredefinedValue:dwCookie:lpvarOut:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    GetDisplayString := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    GetPredefinedStrings := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (7).
    GetPredefinedValue := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (5).
    MapPropertyToPage := recoveredValue3.
    ^self
! !

"psupp.ic method 0x200471dc; bytecode file offset 0x19aaac"
!OSIPerPropertyBrowsing class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 |
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
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := OSUInt8.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) add: ('uint32').
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := OrderedCollection.
    recoveredValue17 := (recoveredValue16) new.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := (self) parameterForType: ('int32').
    (recoveredValue18) add: (recoveredValue19).
    recoveredValue20 := recoveredValue17.
    recoveredValue21 := OSClsid.
    recoveredValue22 := (self) parameterForClass: (recoveredValue21).
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := (recoveredValue17) asArray.
    (recoveredValue15) add: (recoveredValue23).
    recoveredValue24 := recoveredLocal2.
    (recoveredValue24) add: ('uint32').
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := OrderedCollection.
    recoveredValue27 := (recoveredValue26) new.
    recoveredValue28 := recoveredValue27.
    recoveredValue29 := (self) parameterForType: ('int32').
    (recoveredValue28) add: (recoveredValue29).
    recoveredValue30 := recoveredValue27.
    recoveredValue31 := OSCalpolestr.
    recoveredValue32 := (self) parameterForClass: (recoveredValue31).
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := recoveredValue27.
    recoveredValue34 := OSCadword.
    recoveredValue35 := (self) parameterForClass: (recoveredValue34).
    (recoveredValue33) add: (recoveredValue35).
    recoveredValue36 := (recoveredValue27) asArray.
    (recoveredValue25) add: (recoveredValue36).
    recoveredValue37 := recoveredLocal2.
    (recoveredValue37) add: ('uint32').
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := OrderedCollection.
    recoveredValue40 := (recoveredValue39) new.
    recoveredValue41 := recoveredValue40.
    recoveredValue42 := (self) parameterForType: ('int32').
    (recoveredValue41) add: (recoveredValue42).
    recoveredValue43 := recoveredValue40.
    recoveredValue44 := (self) parameterForType: ('uint32').
    (recoveredValue43) add: (recoveredValue44).
    recoveredValue45 := recoveredValue40.
    recoveredValue46 := OSVariant.
    recoveredValue47 := (self) parameterForClass: (recoveredValue46).
    (recoveredValue45) add: (recoveredValue47).
    recoveredValue48 := (recoveredValue40) asArray.
    (recoveredValue38) add: (recoveredValue48).
    recoveredValue49 := Array.
    recoveredValue50 := recoveredLocal2.
    recoveredValue51 := recoveredLocal1.
    recoveredValue52 := (recoveredValue49) with: (recoveredValue50) with: (recoveredValue51).
    ^recoveredValue52
! !

