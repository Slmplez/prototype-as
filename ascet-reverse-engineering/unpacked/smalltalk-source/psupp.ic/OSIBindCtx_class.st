"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003c868; bytecode file offset 0x190130"
!OSIBindCtx class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'registerObjectBound:' 'revokeObjectBound:' 'releaseBoundObjects' 'setBindOptions:' 'getBindOptions:' 'getRunningObjectTable:' 'registerObjectParam:punk:' 'getObjectParam:ppunk:' 'enumObjectParam:' 'revokeObjectParam:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (12).
    EnumObjectParam := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (8).
    GetBindOptions := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (11).
    GetObjectParam := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (9).
    GetRunningObjectTable := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (4).
    RegisterObjectBound := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (10).
    RegisterObjectParam := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (6).
    ReleaseBoundObjects := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (5).
    RevokeObjectBound := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (13).
    RevokeObjectParam := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (7).
    SetBindOptions := recoveredValue9.
    ^self
! !

"psupp.ic method 0x2004b4c0; bytecode file offset 0x19ed88"
!OSIBindCtx class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 |
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
    recoveredValue11 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) add: ('uint32').
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := OrderedCollection.
    recoveredValue15 := (recoveredValue14) new.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := OSIUnknown.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := (recoveredValue15) asArray.
    (recoveredValue13) add: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    (recoveredValue20) add: ('uint32').
    recoveredValue21 := recoveredLocal1.
    (recoveredValue21) add: (#()).
    recoveredValue22 := recoveredLocal2.
    (recoveredValue22) add: ('uint32').
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := OrderedCollection.
    recoveredValue25 := (recoveredValue24) new.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := OSBindOpts.
    recoveredValue28 := (self) parameterForClass: (recoveredValue27).
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := (recoveredValue25) asArray.
    (recoveredValue23) add: (recoveredValue29).
    recoveredValue30 := recoveredLocal2.
    (recoveredValue30) add: ('uint32').
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := OrderedCollection.
    recoveredValue33 := (recoveredValue32) new.
    recoveredValue34 := recoveredValue33.
    recoveredValue35 := OSBindOpts.
    recoveredValue36 := (self) parameterForClass: (recoveredValue35).
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := (recoveredValue33) asArray.
    (recoveredValue31) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('uint32').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := OrderedCollection.
    recoveredValue41 := (recoveredValue40) new.
    recoveredValue42 := recoveredValue41.
    recoveredValue43 := OSUInt8.
    recoveredValue44 := (self) parameterForClass: (recoveredValue43).
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := (recoveredValue41) asArray.
    (recoveredValue39) add: (recoveredValue45).
    recoveredValue46 := recoveredLocal2.
    (recoveredValue46) add: ('uint32').
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := OrderedCollection.
    recoveredValue49 := (recoveredValue48) new.
    recoveredValue50 := recoveredValue49.
    recoveredValue51 := OSOleStringZ.
    recoveredValue52 := (self) parameterForClass: (recoveredValue51).
    (recoveredValue50) add: (recoveredValue52).
    recoveredValue53 := recoveredValue49.
    recoveredValue54 := OSIUnknown.
    recoveredValue55 := (self) parameterForClass: (recoveredValue54).
    (recoveredValue53) add: (recoveredValue55).
    recoveredValue56 := (recoveredValue49) asArray.
    (recoveredValue47) add: (recoveredValue56).
    recoveredValue57 := recoveredLocal2.
    (recoveredValue57) add: ('uint32').
    recoveredValue58 := recoveredLocal1.
    recoveredValue59 := OrderedCollection.
    recoveredValue60 := (recoveredValue59) new.
    recoveredValue61 := recoveredValue60.
    recoveredValue62 := OSOleStringZ.
    recoveredValue63 := (self) parameterForClass: (recoveredValue62).
    (recoveredValue61) add: (recoveredValue63).
    recoveredValue64 := recoveredValue60.
    recoveredValue65 := OSUInt8.
    recoveredValue66 := (self) parameterForClass: (recoveredValue65).
    (recoveredValue64) add: (recoveredValue66).
    recoveredValue67 := (recoveredValue60) asArray.
    (recoveredValue58) add: (recoveredValue67).
    recoveredValue68 := recoveredLocal2.
    (recoveredValue68) add: ('uint32').
    recoveredValue69 := recoveredLocal1.
    recoveredValue70 := OrderedCollection.
    recoveredValue71 := (recoveredValue70) new.
    recoveredValue72 := recoveredValue71.
    recoveredValue73 := OSUInt8.
    recoveredValue74 := (self) parameterForClass: (recoveredValue73).
    (recoveredValue72) add: (recoveredValue74).
    recoveredValue75 := (recoveredValue71) asArray.
    (recoveredValue69) add: (recoveredValue75).
    recoveredValue76 := recoveredLocal2.
    (recoveredValue76) add: ('uint32').
    recoveredValue77 := recoveredLocal1.
    recoveredValue78 := OrderedCollection.
    recoveredValue79 := (recoveredValue78) new.
    recoveredValue80 := recoveredValue79.
    recoveredValue81 := OSOleStringZ.
    recoveredValue82 := (self) parameterForClass: (recoveredValue81).
    (recoveredValue80) add: (recoveredValue82).
    recoveredValue83 := (recoveredValue79) asArray.
    (recoveredValue77) add: (recoveredValue83).
    recoveredValue84 := Array.
    recoveredValue85 := recoveredLocal2.
    recoveredValue86 := recoveredLocal1.
    recoveredValue87 := (recoveredValue84) with: (recoveredValue85) with: (recoveredValue86).
    ^recoveredValue87
! !

