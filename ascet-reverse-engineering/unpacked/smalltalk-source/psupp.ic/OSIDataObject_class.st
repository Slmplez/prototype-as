"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003b57c; bytecode file offset 0x18ee40"
!OSIDataObject class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getData:pmedium:' 'getDataHere:pmedium:' 'queryGetData:' 'getCanonicalFormatEtc:pformatetcOut:' 'setData:pmedium:fRelease:' 'enumFormatEtc:ppenumFormatEtc:' 'dAdvise:advf:pAdvSink:pdwConnection:' 'dUnadvise:' 'enumDAdvise:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (10).
    DAdvise := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (11).
    DUnadvise := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (12).
    EnumDAdvise := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (9).
    EnumFormatEtc := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (7).
    GetCanonicalFormatEtc := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (4).
    GetData := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (5).
    GetDataHere := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (6).
    QueryGetData := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (8).
    SetData := recoveredValue8.
    ^self
! !

"psupp.ic method 0x2004d1b4; bytecode file offset 0x1a0a80"
!OSIDataObject class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 |
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
    recoveredValue9 := OSFormatetc.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSStgmedium.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) add: ('uint32').
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := OrderedCollection.
    recoveredValue18 := (recoveredValue17) new.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := OSFormatetc.
    recoveredValue21 := (self) parameterForClass: (recoveredValue20).
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := recoveredValue18.
    recoveredValue23 := OSStgmedium.
    recoveredValue24 := (self) parameterForClass: (recoveredValue23).
    (recoveredValue22) add: (recoveredValue24).
    recoveredValue25 := (recoveredValue18) asArray.
    (recoveredValue16) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal2.
    (recoveredValue26) add: ('uint32').
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := OrderedCollection.
    recoveredValue29 := (recoveredValue28) new.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := OSFormatetc.
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
    recoveredValue39 := OSFormatetc.
    recoveredValue40 := (self) parameterForClass: (recoveredValue39).
    (recoveredValue38) add: (recoveredValue40).
    recoveredValue41 := recoveredValue37.
    recoveredValue42 := OSFormatetc.
    recoveredValue43 := (self) parameterForClass: (recoveredValue42).
    (recoveredValue41) add: (recoveredValue43).
    recoveredValue44 := (recoveredValue37) asArray.
    (recoveredValue35) add: (recoveredValue44).
    recoveredValue45 := recoveredLocal2.
    (recoveredValue45) add: ('uint32').
    recoveredValue46 := recoveredLocal1.
    recoveredValue47 := OrderedCollection.
    recoveredValue48 := (recoveredValue47) new.
    recoveredValue49 := recoveredValue48.
    recoveredValue50 := OSFormatetc.
    recoveredValue51 := (self) parameterForClass: (recoveredValue50).
    (recoveredValue49) add: (recoveredValue51).
    recoveredValue52 := recoveredValue48.
    recoveredValue53 := OSStgmedium.
    recoveredValue54 := (self) parameterForClass: (recoveredValue53).
    (recoveredValue52) add: (recoveredValue54).
    recoveredValue55 := recoveredValue48.
    recoveredValue56 := (self) parameterForType: ('bool').
    (recoveredValue55) add: (recoveredValue56).
    recoveredValue57 := (recoveredValue48) asArray.
    (recoveredValue46) add: (recoveredValue57).
    recoveredValue58 := recoveredLocal2.
    (recoveredValue58) add: ('uint32').
    recoveredValue59 := recoveredLocal1.
    recoveredValue60 := OrderedCollection.
    recoveredValue61 := (recoveredValue60) new.
    recoveredValue62 := recoveredValue61.
    recoveredValue63 := (self) parameterForType: ('uint32').
    (recoveredValue62) add: (recoveredValue63).
    recoveredValue64 := recoveredValue61.
    recoveredValue65 := OSUInt8.
    recoveredValue66 := (self) parameterForClass: (recoveredValue65).
    (recoveredValue64) add: (recoveredValue66).
    recoveredValue67 := (recoveredValue61) asArray.
    (recoveredValue59) add: (recoveredValue67).
    recoveredValue68 := recoveredLocal2.
    (recoveredValue68) add: ('uint32').
    recoveredValue69 := recoveredLocal1.
    recoveredValue70 := OrderedCollection.
    recoveredValue71 := (recoveredValue70) new.
    recoveredValue72 := recoveredValue71.
    recoveredValue73 := OSFormatetc.
    recoveredValue74 := (self) parameterForClass: (recoveredValue73).
    (recoveredValue72) add: (recoveredValue74).
    recoveredValue75 := recoveredValue71.
    recoveredValue76 := (self) parameterForType: ('uint32').
    (recoveredValue75) add: (recoveredValue76).
    recoveredValue77 := recoveredValue71.
    recoveredValue78 := OSIAdviseSink.
    recoveredValue79 := (self) parameterForClass: (recoveredValue78).
    (recoveredValue77) add: (recoveredValue79).
    recoveredValue80 := recoveredValue71.
    recoveredValue81 := OSUInt8.
    recoveredValue82 := (self) parameterForClass: (recoveredValue81).
    (recoveredValue80) add: (recoveredValue82).
    recoveredValue83 := (recoveredValue71) asArray.
    (recoveredValue69) add: (recoveredValue83).
    recoveredValue84 := recoveredLocal2.
    (recoveredValue84) add: ('uint32').
    recoveredValue85 := recoveredLocal1.
    recoveredValue86 := OrderedCollection.
    recoveredValue87 := (recoveredValue86) new.
    recoveredValue88 := recoveredValue87.
    recoveredValue89 := (self) parameterForType: ('uint32').
    (recoveredValue88) add: (recoveredValue89).
    recoveredValue90 := (recoveredValue87) asArray.
    (recoveredValue85) add: (recoveredValue90).
    recoveredValue91 := recoveredLocal2.
    (recoveredValue91) add: ('uint32').
    recoveredValue92 := recoveredLocal1.
    recoveredValue93 := OrderedCollection.
    recoveredValue94 := (recoveredValue93) new.
    recoveredValue95 := recoveredValue94.
    recoveredValue96 := OSUInt8.
    recoveredValue97 := (self) parameterForClass: (recoveredValue96).
    (recoveredValue95) add: (recoveredValue97).
    recoveredValue98 := (recoveredValue94) asArray.
    (recoveredValue92) add: (recoveredValue98).
    recoveredValue99 := Array.
    recoveredValue100 := recoveredLocal2.
    recoveredValue101 := recoveredLocal1.
    recoveredValue102 := (recoveredValue99) with: (recoveredValue100) with: (recoveredValue101).
    ^recoveredValue102
! !

