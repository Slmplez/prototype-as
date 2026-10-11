"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003d5e8; bytecode file offset 0x190eb4"
!OSIPropertyPage class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'setPageSite:' 'activate:lprc:bModal:' 'deactivate' 'getPageInfo:' 'setObjects:ppunk:' 'show:' 'move:' 'isPageDirty' 'apply' 'help:' 'translateAccelerator:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (5).
    Activate := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (12).
    Apply := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (6).
    Deactivate := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    GetPageInfo := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (13).
    Help := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (11).
    IsPageDirty := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (10).
    Move := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (8).
    SetObjects := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (4).
    SetPageSite := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (9).
    Show := recoveredValue9.
    recoveredValue10 := (self) callOutPlatformFunctionAt: (14).
    TranslateAccelerator := recoveredValue10.
    ^self
! !

"psupp.ic method 0x2004bc50; bytecode file offset 0x19f534"
!OSIPropertyPage class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 |
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
    recoveredValue9 := OSIPropertyPageSite.
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
    recoveredValue17 := OSHwnd.
    recoveredValue18 := (self) parameterForType: ('immediate') class: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := recoveredValue15.
    recoveredValue20 := OSRect.
    recoveredValue21 := (self) parameterForClass: (recoveredValue20).
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := recoveredValue15.
    recoveredValue23 := (self) parameterForType: ('bool').
    (recoveredValue22) add: (recoveredValue23).
    recoveredValue24 := (recoveredValue15) asArray.
    (recoveredValue13) add: (recoveredValue24).
    recoveredValue25 := recoveredLocal2.
    (recoveredValue25) add: ('uint32').
    recoveredValue26 := recoveredLocal1.
    (recoveredValue26) add: (#()).
    recoveredValue27 := recoveredLocal2.
    (recoveredValue27) add: ('uint32').
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := OrderedCollection.
    recoveredValue30 := (recoveredValue29) new.
    recoveredValue31 := recoveredValue30.
    recoveredValue32 := OSProppageinfo.
    recoveredValue33 := (self) parameterForClass: (recoveredValue32).
    (recoveredValue31) add: (recoveredValue33).
    recoveredValue34 := (recoveredValue30) asArray.
    (recoveredValue28) add: (recoveredValue34).
    recoveredValue35 := recoveredLocal2.
    (recoveredValue35) add: ('uint32').
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := OrderedCollection.
    recoveredValue38 := (recoveredValue37) new.
    recoveredValue39 := recoveredValue38.
    recoveredValue40 := (self) parameterForType: ('uint32').
    (recoveredValue39) add: (recoveredValue40).
    recoveredValue41 := recoveredValue38.
    recoveredValue42 := OSUInt8.
    recoveredValue43 := (self) parameterForClass: (recoveredValue42).
    (recoveredValue41) add: (recoveredValue43).
    recoveredValue44 := (recoveredValue38) asArray.
    (recoveredValue36) add: (recoveredValue44).
    recoveredValue45 := recoveredLocal2.
    (recoveredValue45) add: ('uint32').
    recoveredValue46 := recoveredLocal1.
    recoveredValue47 := OrderedCollection.
    recoveredValue48 := (recoveredValue47) new.
    recoveredValue49 := recoveredValue48.
    recoveredValue50 := (self) parameterForType: ('uint32').
    (recoveredValue49) add: (recoveredValue50).
    recoveredValue51 := (recoveredValue48) asArray.
    (recoveredValue46) add: (recoveredValue51).
    recoveredValue52 := recoveredLocal2.
    (recoveredValue52) add: ('uint32').
    recoveredValue53 := recoveredLocal1.
    recoveredValue54 := OrderedCollection.
    recoveredValue55 := (recoveredValue54) new.
    recoveredValue56 := recoveredValue55.
    recoveredValue57 := OSRect.
    recoveredValue58 := (self) parameterForClass: (recoveredValue57).
    (recoveredValue56) add: (recoveredValue58).
    recoveredValue59 := (recoveredValue55) asArray.
    (recoveredValue53) add: (recoveredValue59).
    recoveredValue60 := recoveredLocal2.
    (recoveredValue60) add: ('uint32').
    recoveredValue61 := recoveredLocal1.
    (recoveredValue61) add: (#()).
    recoveredValue62 := recoveredLocal2.
    (recoveredValue62) add: ('uint32').
    recoveredValue63 := recoveredLocal1.
    (recoveredValue63) add: (#()).
    recoveredValue64 := recoveredLocal2.
    (recoveredValue64) add: ('uint32').
    recoveredValue65 := recoveredLocal1.
    recoveredValue66 := OrderedCollection.
    recoveredValue67 := (recoveredValue66) new.
    recoveredValue68 := recoveredValue67.
    recoveredValue69 := OSOleStringZ.
    recoveredValue70 := (self) parameterForClass: (recoveredValue69).
    (recoveredValue68) add: (recoveredValue70).
    recoveredValue71 := (recoveredValue67) asArray.
    (recoveredValue65) add: (recoveredValue71).
    recoveredValue72 := recoveredLocal2.
    (recoveredValue72) add: ('uint32').
    recoveredValue73 := recoveredLocal1.
    recoveredValue74 := OrderedCollection.
    recoveredValue75 := (recoveredValue74) new.
    recoveredValue76 := recoveredValue75.
    recoveredValue77 := OSMsg.
    recoveredValue78 := (self) parameterForClass: (recoveredValue77).
    (recoveredValue76) add: (recoveredValue78).
    recoveredValue79 := (recoveredValue75) asArray.
    (recoveredValue73) add: (recoveredValue79).
    recoveredValue80 := Array.
    recoveredValue81 := recoveredLocal2.
    recoveredValue82 := recoveredLocal1.
    recoveredValue83 := (recoveredValue80) with: (recoveredValue81) with: (recoveredValue82).
    ^recoveredValue83
! !

