"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034ce0; bytecode file offset 0x188594"
!OSIOleUIObjInfo class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getObjectInfo:lpdwObjSize:lplpszLabel:lplpszType:lplpszShortType:lplpszLocation:' 'getConvertInfo:lpClassID:lpwFormat:lpConvertDefaultClassID:lplpClsidExclude:lpcClsidExclude:' 'convertObject:clsidNew:' 'getViewInfo:phMetaPict:pdvAspect:pnCurrentScale:' 'setViewInfo:hMetaPict:dvAspect:nCurrentScale:bRelativeToOrig:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    ConvertObject := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    GetConvertInfo := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (4).
    GetObjectInfo := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    GetViewInfo := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (8).
    SetViewInfo := recoveredValue4.
    ^self
! !

"psupp.ic method 0x2004d05c; bytecode file offset 0x1a0930"
!OSIOleUIObjInfo class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 |
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
    recoveredValue9 := (self) parameterForType: ('uint32').
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := OSUInt8.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := OSUInt8.
    recoveredValue15 := (self) parameterForClass: (recoveredValue14).
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredValue7.
    recoveredValue17 := OSUInt8.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := recoveredValue7.
    recoveredValue20 := OSUInt8.
    recoveredValue21 := (self) parameterForClass: (recoveredValue20).
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := recoveredValue7.
    recoveredValue23 := OSUInt8.
    recoveredValue24 := (self) parameterForClass: (recoveredValue23).
    (recoveredValue22) add: (recoveredValue24).
    recoveredValue25 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal2.
    (recoveredValue26) add: ('uint32').
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := OrderedCollection.
    recoveredValue29 := (recoveredValue28) new.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := (self) parameterForType: ('uint32').
    (recoveredValue30) add: (recoveredValue31).
    recoveredValue32 := recoveredValue29.
    recoveredValue33 := OSClsid.
    recoveredValue34 := (self) parameterForClass: (recoveredValue33).
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := recoveredValue29.
    recoveredValue36 := OSUInt8.
    recoveredValue37 := (self) parameterForClass: (recoveredValue36).
    (recoveredValue35) add: (recoveredValue37).
    recoveredValue38 := recoveredValue29.
    recoveredValue39 := OSClsid.
    recoveredValue40 := (self) parameterForClass: (recoveredValue39).
    (recoveredValue38) add: (recoveredValue40).
    recoveredValue41 := recoveredValue29.
    recoveredValue42 := OSUInt8.
    recoveredValue43 := (self) parameterForClass: (recoveredValue42).
    (recoveredValue41) add: (recoveredValue43).
    recoveredValue44 := recoveredValue29.
    recoveredValue45 := OSUInt8.
    recoveredValue46 := (self) parameterForClass: (recoveredValue45).
    (recoveredValue44) add: (recoveredValue46).
    recoveredValue47 := (recoveredValue29) asArray.
    (recoveredValue27) add: (recoveredValue47).
    recoveredValue48 := recoveredLocal2.
    (recoveredValue48) add: ('uint32').
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := OrderedCollection.
    recoveredValue51 := (recoveredValue50) new.
    recoveredValue52 := recoveredValue51.
    recoveredValue53 := (self) parameterForType: ('uint32').
    (recoveredValue52) add: (recoveredValue53).
    recoveredValue54 := recoveredValue51.
    recoveredValue55 := OSClsid.
    recoveredValue56 := (self) parameterForClass: (recoveredValue55).
    (recoveredValue54) add: (recoveredValue56).
    recoveredValue57 := (recoveredValue51) asArray.
    (recoveredValue49) add: (recoveredValue57).
    recoveredValue58 := recoveredLocal2.
    (recoveredValue58) add: ('uint32').
    recoveredValue59 := recoveredLocal1.
    recoveredValue60 := OrderedCollection.
    recoveredValue61 := (recoveredValue60) new.
    recoveredValue62 := recoveredValue61.
    recoveredValue63 := (self) parameterForType: ('uint32').
    (recoveredValue62) add: (recoveredValue63).
    recoveredValue64 := recoveredValue61.
    recoveredValue65 := OSHglobal.
    recoveredValue66 := (self) parameterForClass: (recoveredValue65).
    (recoveredValue64) add: (recoveredValue66).
    recoveredValue67 := recoveredValue61.
    recoveredValue68 := OSUInt8.
    recoveredValue69 := (self) parameterForClass: (recoveredValue68).
    (recoveredValue67) add: (recoveredValue69).
    recoveredValue70 := recoveredValue61.
    recoveredValue71 := OSUInt8.
    recoveredValue72 := (self) parameterForClass: (recoveredValue71).
    (recoveredValue70) add: (recoveredValue72).
    recoveredValue73 := (recoveredValue61) asArray.
    (recoveredValue59) add: (recoveredValue73).
    recoveredValue74 := recoveredLocal2.
    (recoveredValue74) add: ('uint32').
    recoveredValue75 := recoveredLocal1.
    recoveredValue76 := OrderedCollection.
    recoveredValue77 := (recoveredValue76) new.
    recoveredValue78 := recoveredValue77.
    recoveredValue79 := (self) parameterForType: ('uint32').
    (recoveredValue78) add: (recoveredValue79).
    recoveredValue80 := recoveredValue77.
    recoveredValue81 := OSHglobal.
    recoveredValue82 := (self) parameterForType: ('immediate') class: (recoveredValue81).
    (recoveredValue80) add: (recoveredValue82).
    recoveredValue83 := recoveredValue77.
    recoveredValue84 := (self) parameterForType: ('uint32').
    (recoveredValue83) add: (recoveredValue84).
    recoveredValue85 := recoveredValue77.
    recoveredValue86 := (self) parameterForType: ('int32').
    (recoveredValue85) add: (recoveredValue86).
    recoveredValue87 := recoveredValue77.
    recoveredValue88 := (self) parameterForType: ('bool').
    (recoveredValue87) add: (recoveredValue88).
    recoveredValue89 := (recoveredValue77) asArray.
    (recoveredValue75) add: (recoveredValue89).
    recoveredValue90 := Array.
    recoveredValue91 := recoveredLocal2.
    recoveredValue92 := recoveredLocal1.
    recoveredValue93 := (recoveredValue90) with: (recoveredValue91) with: (recoveredValue92).
    ^recoveredValue93
! !

