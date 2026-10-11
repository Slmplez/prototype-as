"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20039ac0; bytecode file offset 0x18d380"
!OSIOleUILinkContainer class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getNextLink:' 'setLinkUpdateOptions:dwUpdateOpt:' 'getLinkUpdateOptions:lpdwUpdateOpt:' 'setLinkSource:lpszDisplayName:lenFileName:pchEaten:fValidateSource:' 'getLinkSource:lplpszDisplayName:lplenFileName:lplpszFullLinkType:lplpszShortLinkType:lpfSourceAvailable:lpfIsSelected:' 'openLinkSource:' 'updateLink:fErrorMessage:fReserved:' 'cancelLink:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (11).
    CancelLink := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (8).
    GetLinkSource := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (6).
    GetLinkUpdateOptions := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (4).
    GetNextLink := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (9).
    OpenLinkSource := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (7).
    SetLinkSource := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (5).
    SetLinkUpdateOptions := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (10).
    UpdateLink := recoveredValue7.
    ^self
! !

"psupp.ic method 0x2004d9bc; bytecode file offset 0x1a1280"
!OSIOleUILinkContainer class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 |
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
    recoveredValue16 := (self) parameterForType: ('uint32').
    (recoveredValue15) add: (recoveredValue16).
    recoveredValue17 := recoveredValue14.
    recoveredValue18 := (self) parameterForType: ('uint32').
    (recoveredValue17) add: (recoveredValue18).
    recoveredValue19 := (recoveredValue14) asArray.
    (recoveredValue12) add: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    (recoveredValue20) add: ('uint32').
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := OrderedCollection.
    recoveredValue23 := (recoveredValue22) new.
    recoveredValue24 := recoveredValue23.
    recoveredValue25 := (self) parameterForType: ('uint32').
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := recoveredValue23.
    recoveredValue27 := OSUInt8.
    recoveredValue28 := (self) parameterForClass: (recoveredValue27).
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := (recoveredValue23) asArray.
    (recoveredValue21) add: (recoveredValue29).
    recoveredValue30 := recoveredLocal2.
    (recoveredValue30) add: ('uint32').
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := OrderedCollection.
    recoveredValue33 := (recoveredValue32) new.
    recoveredValue34 := recoveredValue33.
    recoveredValue35 := (self) parameterForType: ('uint32').
    (recoveredValue34) add: (recoveredValue35).
    recoveredValue36 := recoveredValue33.
    recoveredValue37 := OSStringZ.
    recoveredValue38 := (self) parameterForClass: (recoveredValue37).
    (recoveredValue36) add: (recoveredValue38).
    recoveredValue39 := recoveredValue33.
    recoveredValue40 := (self) parameterForType: ('uint32').
    (recoveredValue39) add: (recoveredValue40).
    recoveredValue41 := recoveredValue33.
    recoveredValue42 := OSUInt8.
    recoveredValue43 := (self) parameterForClass: (recoveredValue42).
    (recoveredValue41) add: (recoveredValue43).
    recoveredValue44 := recoveredValue33.
    recoveredValue45 := (self) parameterForType: ('bool').
    (recoveredValue44) add: (recoveredValue45).
    recoveredValue46 := (recoveredValue33) asArray.
    (recoveredValue31) add: (recoveredValue46).
    recoveredValue47 := recoveredLocal2.
    (recoveredValue47) add: ('uint32').
    recoveredValue48 := recoveredLocal1.
    recoveredValue49 := OrderedCollection.
    recoveredValue50 := (recoveredValue49) new.
    recoveredValue51 := recoveredValue50.
    recoveredValue52 := (self) parameterForType: ('uint32').
    (recoveredValue51) add: (recoveredValue52).
    recoveredValue53 := recoveredValue50.
    recoveredValue54 := OSUInt8.
    recoveredValue55 := (self) parameterForClass: (recoveredValue54).
    (recoveredValue53) add: (recoveredValue55).
    recoveredValue56 := recoveredValue50.
    recoveredValue57 := OSUInt8.
    recoveredValue58 := (self) parameterForClass: (recoveredValue57).
    (recoveredValue56) add: (recoveredValue58).
    recoveredValue59 := recoveredValue50.
    recoveredValue60 := OSUInt8.
    recoveredValue61 := (self) parameterForClass: (recoveredValue60).
    (recoveredValue59) add: (recoveredValue61).
    recoveredValue62 := recoveredValue50.
    recoveredValue63 := OSUInt8.
    recoveredValue64 := (self) parameterForClass: (recoveredValue63).
    (recoveredValue62) add: (recoveredValue64).
    recoveredValue65 := recoveredValue50.
    recoveredValue66 := OSUInt8.
    recoveredValue67 := (self) parameterForClass: (recoveredValue66).
    (recoveredValue65) add: (recoveredValue67).
    recoveredValue68 := recoveredValue50.
    recoveredValue69 := OSUInt8.
    recoveredValue70 := (self) parameterForClass: (recoveredValue69).
    (recoveredValue68) add: (recoveredValue70).
    recoveredValue71 := (recoveredValue50) asArray.
    (recoveredValue48) add: (recoveredValue71).
    recoveredValue72 := recoveredLocal2.
    (recoveredValue72) add: ('uint32').
    recoveredValue73 := recoveredLocal1.
    recoveredValue74 := OrderedCollection.
    recoveredValue75 := (recoveredValue74) new.
    recoveredValue76 := recoveredValue75.
    recoveredValue77 := (self) parameterForType: ('uint32').
    (recoveredValue76) add: (recoveredValue77).
    recoveredValue78 := (recoveredValue75) asArray.
    (recoveredValue73) add: (recoveredValue78).
    recoveredValue79 := recoveredLocal2.
    (recoveredValue79) add: ('uint32').
    recoveredValue80 := recoveredLocal1.
    recoveredValue81 := OrderedCollection.
    recoveredValue82 := (recoveredValue81) new.
    recoveredValue83 := recoveredValue82.
    recoveredValue84 := (self) parameterForType: ('uint32').
    (recoveredValue83) add: (recoveredValue84).
    recoveredValue85 := recoveredValue82.
    recoveredValue86 := (self) parameterForType: ('bool').
    (recoveredValue85) add: (recoveredValue86).
    recoveredValue87 := recoveredValue82.
    recoveredValue88 := (self) parameterForType: ('bool').
    (recoveredValue87) add: (recoveredValue88).
    recoveredValue89 := (recoveredValue82) asArray.
    (recoveredValue80) add: (recoveredValue89).
    recoveredValue90 := recoveredLocal2.
    (recoveredValue90) add: ('uint32').
    recoveredValue91 := recoveredLocal1.
    recoveredValue92 := OrderedCollection.
    recoveredValue93 := (recoveredValue92) new.
    recoveredValue94 := recoveredValue93.
    recoveredValue95 := (self) parameterForType: ('uint32').
    (recoveredValue94) add: (recoveredValue95).
    recoveredValue96 := (recoveredValue93) asArray.
    (recoveredValue91) add: (recoveredValue96).
    recoveredValue97 := Array.
    recoveredValue98 := recoveredLocal2.
    recoveredValue99 := recoveredLocal1.
    recoveredValue100 := (recoveredValue97) with: (recoveredValue98) with: (recoveredValue99).
    ^recoveredValue100
! !

