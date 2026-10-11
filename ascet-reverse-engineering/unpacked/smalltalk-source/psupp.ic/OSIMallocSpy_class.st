"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003ed60; bytecode file offset 0x192630"
!OSIMallocSpy class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'preAlloc:' 'postAlloc:' 'preFree:fSpyed:' 'postFree:' 'preRealloc:cbRequest:ppNewRequest:fSpyed:' 'postRealloc:fSpyed:' 'preGetSize:fSpyed:' 'postGetSize:fSpyed:' 'preDidAlloc:fSpyed:' 'postDidAlloc:fSpyed:fActual:' 'preHeapMinimize' 'postHeapMinimize')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (5).
    PostAlloc := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (13).
    PostDidAlloc := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (7).
    PostFree := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (11).
    PostGetSize := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (15).
    PostHeapMinimize := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (9).
    PostRealloc := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (4).
    PreAlloc := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (12).
    PreDidAlloc := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (6).
    PreFree := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (10).
    PreGetSize := recoveredValue9.
    recoveredValue10 := (self) callOutPlatformFunctionAt: (14).
    PreHeapMinimize := recoveredValue10.
    recoveredValue11 := (self) callOutPlatformFunctionAt: (8).
    PreRealloc := recoveredValue11.
    ^self
! !

"psupp.ic method 0x2004e750; bytecode file offset 0x1a201c"
!OSIMallocSpy class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 |
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
    recoveredValue10 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    (recoveredValue11) add: ('uint32').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := OrderedCollection.
    recoveredValue14 := (recoveredValue13) new.
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := OSUInt8.
    recoveredValue17 := (self) parameterForClass: (recoveredValue16).
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := (recoveredValue14) asArray.
    (recoveredValue12) add: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    (recoveredValue19) add: ('uint32').
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := OrderedCollection.
    recoveredValue22 := (recoveredValue21) new.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := OSUInt8.
    recoveredValue25 := (self) parameterForClass: (recoveredValue24).
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue22.
    recoveredValue27 := (self) parameterForType: ('bool').
    (recoveredValue26) add: (recoveredValue27).
    recoveredValue28 := (recoveredValue22) asArray.
    (recoveredValue20) add: (recoveredValue28).
    recoveredValue29 := recoveredLocal2.
    (recoveredValue29) add: ('void').
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := OrderedCollection.
    recoveredValue32 := (recoveredValue31) new.
    recoveredValue33 := recoveredValue32.
    recoveredValue34 := (self) parameterForType: ('bool').
    (recoveredValue33) add: (recoveredValue34).
    recoveredValue35 := (recoveredValue32) asArray.
    (recoveredValue30) add: (recoveredValue35).
    recoveredValue36 := recoveredLocal2.
    (recoveredValue36) add: ('uint32').
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := OrderedCollection.
    recoveredValue39 := (recoveredValue38) new.
    recoveredValue40 := recoveredValue39.
    recoveredValue41 := OSUInt8.
    recoveredValue42 := (self) parameterForClass: (recoveredValue41).
    (recoveredValue40) add: (recoveredValue42).
    recoveredValue43 := recoveredValue39.
    recoveredValue44 := (self) parameterForType: ('uint32').
    (recoveredValue43) add: (recoveredValue44).
    recoveredValue45 := recoveredValue39.
    recoveredValue46 := OSUInt8.
    recoveredValue47 := (self) parameterForClass: (recoveredValue46).
    (recoveredValue45) add: (recoveredValue47).
    recoveredValue48 := recoveredValue39.
    recoveredValue49 := (self) parameterForType: ('bool').
    (recoveredValue48) add: (recoveredValue49).
    recoveredValue50 := (recoveredValue39) asArray.
    (recoveredValue37) add: (recoveredValue50).
    recoveredValue51 := recoveredLocal2.
    (recoveredValue51) add: ('uint32').
    recoveredValue52 := recoveredLocal1.
    recoveredValue53 := OrderedCollection.
    recoveredValue54 := (recoveredValue53) new.
    recoveredValue55 := recoveredValue54.
    recoveredValue56 := OSUInt8.
    recoveredValue57 := (self) parameterForClass: (recoveredValue56).
    (recoveredValue55) add: (recoveredValue57).
    recoveredValue58 := recoveredValue54.
    recoveredValue59 := (self) parameterForType: ('bool').
    (recoveredValue58) add: (recoveredValue59).
    recoveredValue60 := (recoveredValue54) asArray.
    (recoveredValue52) add: (recoveredValue60).
    recoveredValue61 := recoveredLocal2.
    (recoveredValue61) add: ('uint32').
    recoveredValue62 := recoveredLocal1.
    recoveredValue63 := OrderedCollection.
    recoveredValue64 := (recoveredValue63) new.
    recoveredValue65 := recoveredValue64.
    recoveredValue66 := OSUInt8.
    recoveredValue67 := (self) parameterForClass: (recoveredValue66).
    (recoveredValue65) add: (recoveredValue67).
    recoveredValue68 := recoveredValue64.
    recoveredValue69 := (self) parameterForType: ('bool').
    (recoveredValue68) add: (recoveredValue69).
    recoveredValue70 := (recoveredValue64) asArray.
    (recoveredValue62) add: (recoveredValue70).
    recoveredValue71 := recoveredLocal2.
    (recoveredValue71) add: ('uint32').
    recoveredValue72 := recoveredLocal1.
    recoveredValue73 := OrderedCollection.
    recoveredValue74 := (recoveredValue73) new.
    recoveredValue75 := recoveredValue74.
    recoveredValue76 := (self) parameterForType: ('uint32').
    (recoveredValue75) add: (recoveredValue76).
    recoveredValue77 := recoveredValue74.
    recoveredValue78 := (self) parameterForType: ('bool').
    (recoveredValue77) add: (recoveredValue78).
    recoveredValue79 := (recoveredValue74) asArray.
    (recoveredValue72) add: (recoveredValue79).
    recoveredValue80 := recoveredLocal2.
    (recoveredValue80) add: ('uint32').
    recoveredValue81 := recoveredLocal1.
    recoveredValue82 := OrderedCollection.
    recoveredValue83 := (recoveredValue82) new.
    recoveredValue84 := recoveredValue83.
    recoveredValue85 := OSUInt8.
    recoveredValue86 := (self) parameterForClass: (recoveredValue85).
    (recoveredValue84) add: (recoveredValue86).
    recoveredValue87 := recoveredValue83.
    recoveredValue88 := (self) parameterForType: ('bool').
    (recoveredValue87) add: (recoveredValue88).
    recoveredValue89 := (recoveredValue83) asArray.
    (recoveredValue81) add: (recoveredValue89).
    recoveredValue90 := recoveredLocal2.
    (recoveredValue90) add: ('int32').
    recoveredValue91 := recoveredLocal1.
    recoveredValue92 := OrderedCollection.
    recoveredValue93 := (recoveredValue92) new.
    recoveredValue94 := recoveredValue93.
    recoveredValue95 := OSUInt8.
    recoveredValue96 := (self) parameterForClass: (recoveredValue95).
    (recoveredValue94) add: (recoveredValue96).
    recoveredValue97 := recoveredValue93.
    recoveredValue98 := (self) parameterForType: ('bool').
    (recoveredValue97) add: (recoveredValue98).
    recoveredValue99 := recoveredValue93.
    recoveredValue100 := (self) parameterForType: ('int32').
    (recoveredValue99) add: (recoveredValue100).
    recoveredValue101 := (recoveredValue93) asArray.
    (recoveredValue91) add: (recoveredValue101).
    recoveredValue102 := recoveredLocal2.
    (recoveredValue102) add: ('void').
    recoveredValue103 := recoveredLocal1.
    (recoveredValue103) add: (#()).
    recoveredValue104 := recoveredLocal2.
    (recoveredValue104) add: ('void').
    recoveredValue105 := recoveredLocal1.
    (recoveredValue105) add: (#()).
    recoveredValue106 := Array.
    recoveredValue107 := recoveredLocal2.
    recoveredValue108 := recoveredLocal1.
    recoveredValue109 := (recoveredValue106) with: (recoveredValue107) with: (recoveredValue108).
    ^recoveredValue109
! !

