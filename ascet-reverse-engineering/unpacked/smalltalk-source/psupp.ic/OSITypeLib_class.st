"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003c8ec; bytecode file offset 0x1901b4"
!OSITypeLib class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getTypeInfoCount' 'getTypeInfo:ppitinfo:' 'getTypeInfoType:ptkind:' 'getTypeInfoOfGuid:pptinfo:' 'getLibAttr:' 'getTypeComp:' 'getDocumentation:pbstrName:pbstrDocString:pdwHelpContext:pbstrHelpFile:' 'isName:lHashVal:pfName:' 'findName:lHashVal:rgptinfo:rgmemid:pcFound:' 'releaseTLibAttr:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (12).
    FindName := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (10).
    GetDocumentation := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (8).
    GetLibAttr := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (9).
    GetTypeComp := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (5).
    GetTypeInfo := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (4).
    GetTypeInfoCount := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (7).
    GetTypeInfoOfGuid := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (6).
    GetTypeInfoType := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (11).
    IsName := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (13).
    ReleaseTLibAttr := recoveredValue9.
    ^self
! !

"psupp.ic method 0x2004e5c4; bytecode file offset 0x1a1e98"
!OSITypeLib class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 |
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
    recoveredValue11 := (self) parameterForType: ('uint32').
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    recoveredValue13 := OSUInt8.
    recoveredValue14 := (self) parameterForClass: (recoveredValue13).
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := (recoveredValue9) asArray.
    (recoveredValue7) add: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    (recoveredValue16) add: ('uint32').
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := OrderedCollection.
    recoveredValue19 := (recoveredValue18) new.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := (self) parameterForType: ('uint32').
    (recoveredValue20) add: (recoveredValue21).
    recoveredValue22 := recoveredValue19.
    recoveredValue23 := OSUInt8.
    recoveredValue24 := (self) parameterForClass: (recoveredValue23).
    (recoveredValue22) add: (recoveredValue24).
    recoveredValue25 := (recoveredValue19) asArray.
    (recoveredValue17) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal2.
    (recoveredValue26) add: ('uint32').
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := OrderedCollection.
    recoveredValue29 := (recoveredValue28) new.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := OSGuid.
    recoveredValue32 := (self) parameterForClass: (recoveredValue31).
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := recoveredValue29.
    recoveredValue34 := OSUInt8.
    recoveredValue35 := (self) parameterForClass: (recoveredValue34).
    (recoveredValue33) add: (recoveredValue35).
    recoveredValue36 := (recoveredValue29) asArray.
    (recoveredValue27) add: (recoveredValue36).
    recoveredValue37 := recoveredLocal2.
    (recoveredValue37) add: ('uint32').
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := OrderedCollection.
    recoveredValue40 := (recoveredValue39) new.
    recoveredValue41 := recoveredValue40.
    recoveredValue42 := OSUInt8.
    recoveredValue43 := (self) parameterForClass: (recoveredValue42).
    (recoveredValue41) add: (recoveredValue43).
    recoveredValue44 := (recoveredValue40) asArray.
    (recoveredValue38) add: (recoveredValue44).
    recoveredValue45 := recoveredLocal2.
    (recoveredValue45) add: ('uint32').
    recoveredValue46 := recoveredLocal1.
    recoveredValue47 := OrderedCollection.
    recoveredValue48 := (recoveredValue47) new.
    recoveredValue49 := recoveredValue48.
    recoveredValue50 := OSUInt8.
    recoveredValue51 := (self) parameterForClass: (recoveredValue50).
    (recoveredValue49) add: (recoveredValue51).
    recoveredValue52 := (recoveredValue48) asArray.
    (recoveredValue46) add: (recoveredValue52).
    recoveredValue53 := recoveredLocal2.
    (recoveredValue53) add: ('uint32').
    recoveredValue54 := recoveredLocal1.
    recoveredValue55 := OrderedCollection.
    recoveredValue56 := (recoveredValue55) new.
    recoveredValue57 := recoveredValue56.
    recoveredValue58 := (self) parameterForType: ('int32').
    (recoveredValue57) add: (recoveredValue58).
    recoveredValue59 := recoveredValue56.
    recoveredValue60 := OSUInt8.
    recoveredValue61 := (self) parameterForClass: (recoveredValue60).
    (recoveredValue59) add: (recoveredValue61).
    recoveredValue62 := recoveredValue56.
    recoveredValue63 := OSUInt8.
    recoveredValue64 := (self) parameterForClass: (recoveredValue63).
    (recoveredValue62) add: (recoveredValue64).
    recoveredValue65 := recoveredValue56.
    recoveredValue66 := OSUInt8.
    recoveredValue67 := (self) parameterForClass: (recoveredValue66).
    (recoveredValue65) add: (recoveredValue67).
    recoveredValue68 := recoveredValue56.
    recoveredValue69 := OSUInt8.
    recoveredValue70 := (self) parameterForClass: (recoveredValue69).
    (recoveredValue68) add: (recoveredValue70).
    recoveredValue71 := (recoveredValue56) asArray.
    (recoveredValue54) add: (recoveredValue71).
    recoveredValue72 := recoveredLocal2.
    (recoveredValue72) add: ('uint32').
    recoveredValue73 := recoveredLocal1.
    recoveredValue74 := OrderedCollection.
    recoveredValue75 := (recoveredValue74) new.
    recoveredValue76 := recoveredValue75.
    recoveredValue77 := OSOleStringZ.
    recoveredValue78 := (self) parameterForClass: (recoveredValue77).
    (recoveredValue76) add: (recoveredValue78).
    recoveredValue79 := recoveredValue75.
    recoveredValue80 := (self) parameterForType: ('uint32').
    (recoveredValue79) add: (recoveredValue80).
    recoveredValue81 := recoveredValue75.
    recoveredValue82 := OSUInt8.
    recoveredValue83 := (self) parameterForClass: (recoveredValue82).
    (recoveredValue81) add: (recoveredValue83).
    recoveredValue84 := (recoveredValue75) asArray.
    (recoveredValue73) add: (recoveredValue84).
    recoveredValue85 := recoveredLocal2.
    (recoveredValue85) add: ('uint32').
    recoveredValue86 := recoveredLocal1.
    recoveredValue87 := OrderedCollection.
    recoveredValue88 := (recoveredValue87) new.
    recoveredValue89 := recoveredValue88.
    recoveredValue90 := OSOleStringZ.
    recoveredValue91 := (self) parameterForClass: (recoveredValue90).
    (recoveredValue89) add: (recoveredValue91).
    recoveredValue92 := recoveredValue88.
    recoveredValue93 := (self) parameterForType: ('uint32').
    (recoveredValue92) add: (recoveredValue93).
    recoveredValue94 := recoveredValue88.
    recoveredValue95 := OSUInt8.
    recoveredValue96 := (self) parameterForClass: (recoveredValue95).
    (recoveredValue94) add: (recoveredValue96).
    recoveredValue97 := recoveredValue88.
    recoveredValue98 := OSUInt8.
    recoveredValue99 := (self) parameterForClass: (recoveredValue98).
    (recoveredValue97) add: (recoveredValue99).
    recoveredValue100 := recoveredValue88.
    recoveredValue101 := OSUInt8.
    recoveredValue102 := (self) parameterForClass: (recoveredValue101).
    (recoveredValue100) add: (recoveredValue102).
    recoveredValue103 := (recoveredValue88) asArray.
    (recoveredValue86) add: (recoveredValue103).
    recoveredValue104 := recoveredLocal2.
    (recoveredValue104) add: ('void').
    recoveredValue105 := recoveredLocal1.
    recoveredValue106 := OrderedCollection.
    recoveredValue107 := (recoveredValue106) new.
    recoveredValue108 := recoveredValue107.
    recoveredValue109 := OSTlibattr.
    recoveredValue110 := (self) parameterForClass: (recoveredValue109).
    (recoveredValue108) add: (recoveredValue110).
    recoveredValue111 := (recoveredValue107) asArray.
    (recoveredValue105) add: (recoveredValue111).
    recoveredValue112 := Array.
    recoveredValue113 := recoveredLocal2.
    recoveredValue114 := recoveredLocal1.
    recoveredValue115 := (recoveredValue112) with: (recoveredValue113) with: (recoveredValue114).
    ^recoveredValue115
! !

