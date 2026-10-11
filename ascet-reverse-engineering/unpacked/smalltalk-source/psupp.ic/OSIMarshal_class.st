"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200369e8; bytecode file offset 0x18a2a0"
!OSIMarshal class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getUnmarshalClass:pv:dwDestContext:pvDestContext:mshlflags:pCid:' 'getMarshalSizeMax:pv:dwDestContext:pvDestContext:mshlflags:pSize:' 'marshalInterface:riid:pv:dwDestContext:pvDestContext:mshlflags:' 'unmarshalInterface:riid:ppv:' 'releaseMarshalData:' 'disconnectObject:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (9).
    DisconnectObject := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    GetMarshalSizeMax := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (4).
    GetUnmarshalClass := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (6).
    MarshalInterface := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (8).
    ReleaseMarshalData := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (7).
    UnmarshalInterface := recoveredValue5.
    ^self
! !

"psupp.ic method 0x2004d30c; bytecode file offset 0x1a0bd4"
!OSIMarshal class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 |
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
    recoveredValue9 := OSIid.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSUInt8.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := (self) parameterForType: ('uint32').
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := recoveredValue7.
    recoveredValue17 := OSUInt8.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := recoveredValue7.
    recoveredValue20 := (self) parameterForType: ('uint32').
    (recoveredValue19) add: (recoveredValue20).
    recoveredValue21 := recoveredValue7.
    recoveredValue22 := OSClsid.
    recoveredValue23 := (self) parameterForClass: (recoveredValue22).
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue24).
    recoveredValue25 := recoveredLocal2.
    (recoveredValue25) add: ('uint32').
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := OrderedCollection.
    recoveredValue28 := (recoveredValue27) new.
    recoveredValue29 := recoveredValue28.
    recoveredValue30 := OSIid.
    recoveredValue31 := (self) parameterForClass: (recoveredValue30).
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := recoveredValue28.
    recoveredValue33 := OSUInt8.
    recoveredValue34 := (self) parameterForClass: (recoveredValue33).
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := recoveredValue28.
    recoveredValue36 := (self) parameterForType: ('uint32').
    (recoveredValue35) add: (recoveredValue36).
    recoveredValue37 := recoveredValue28.
    recoveredValue38 := OSUInt8.
    recoveredValue39 := (self) parameterForClass: (recoveredValue38).
    (recoveredValue37) add: (recoveredValue39).
    recoveredValue40 := recoveredValue28.
    recoveredValue41 := (self) parameterForType: ('uint32').
    (recoveredValue40) add: (recoveredValue41).
    recoveredValue42 := recoveredValue28.
    recoveredValue43 := OSUInt8.
    recoveredValue44 := (self) parameterForClass: (recoveredValue43).
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := (recoveredValue28) asArray.
    (recoveredValue26) add: (recoveredValue45).
    recoveredValue46 := recoveredLocal2.
    (recoveredValue46) add: ('uint32').
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := OrderedCollection.
    recoveredValue49 := (recoveredValue48) new.
    recoveredValue50 := recoveredValue49.
    recoveredValue51 := OSIStream.
    recoveredValue52 := (self) parameterForClass: (recoveredValue51).
    (recoveredValue50) add: (recoveredValue52).
    recoveredValue53 := recoveredValue49.
    recoveredValue54 := OSIid.
    recoveredValue55 := (self) parameterForClass: (recoveredValue54).
    (recoveredValue53) add: (recoveredValue55).
    recoveredValue56 := recoveredValue49.
    recoveredValue57 := OSUInt8.
    recoveredValue58 := (self) parameterForClass: (recoveredValue57).
    (recoveredValue56) add: (recoveredValue58).
    recoveredValue59 := recoveredValue49.
    recoveredValue60 := (self) parameterForType: ('uint32').
    (recoveredValue59) add: (recoveredValue60).
    recoveredValue61 := recoveredValue49.
    recoveredValue62 := OSUInt8.
    recoveredValue63 := (self) parameterForClass: (recoveredValue62).
    (recoveredValue61) add: (recoveredValue63).
    recoveredValue64 := recoveredValue49.
    recoveredValue65 := (self) parameterForType: ('uint32').
    (recoveredValue64) add: (recoveredValue65).
    recoveredValue66 := (recoveredValue49) asArray.
    (recoveredValue47) add: (recoveredValue66).
    recoveredValue67 := recoveredLocal2.
    (recoveredValue67) add: ('uint32').
    recoveredValue68 := recoveredLocal1.
    recoveredValue69 := OrderedCollection.
    recoveredValue70 := (recoveredValue69) new.
    recoveredValue71 := recoveredValue70.
    recoveredValue72 := OSIStream.
    recoveredValue73 := (self) parameterForClass: (recoveredValue72).
    (recoveredValue71) add: (recoveredValue73).
    recoveredValue74 := recoveredValue70.
    recoveredValue75 := OSIid.
    recoveredValue76 := (self) parameterForClass: (recoveredValue75).
    (recoveredValue74) add: (recoveredValue76).
    recoveredValue77 := recoveredValue70.
    recoveredValue78 := OSUInt8.
    recoveredValue79 := (self) parameterForClass: (recoveredValue78).
    (recoveredValue77) add: (recoveredValue79).
    recoveredValue80 := (recoveredValue70) asArray.
    (recoveredValue68) add: (recoveredValue80).
    recoveredValue81 := recoveredLocal2.
    (recoveredValue81) add: ('uint32').
    recoveredValue82 := recoveredLocal1.
    recoveredValue83 := OrderedCollection.
    recoveredValue84 := (recoveredValue83) new.
    recoveredValue85 := recoveredValue84.
    recoveredValue86 := OSIStream.
    recoveredValue87 := (self) parameterForClass: (recoveredValue86).
    (recoveredValue85) add: (recoveredValue87).
    recoveredValue88 := (recoveredValue84) asArray.
    (recoveredValue82) add: (recoveredValue88).
    recoveredValue89 := recoveredLocal2.
    (recoveredValue89) add: ('uint32').
    recoveredValue90 := recoveredLocal1.
    recoveredValue91 := OrderedCollection.
    recoveredValue92 := (recoveredValue91) new.
    recoveredValue93 := recoveredValue92.
    recoveredValue94 := (self) parameterForType: ('uint32').
    (recoveredValue93) add: (recoveredValue94).
    recoveredValue95 := (recoveredValue92) asArray.
    (recoveredValue90) add: (recoveredValue95).
    recoveredValue96 := Array.
    recoveredValue97 := recoveredLocal2.
    recoveredValue98 := recoveredLocal1.
    recoveredValue99 := (recoveredValue96) with: (recoveredValue97) with: (recoveredValue98).
    ^recoveredValue99
! !

