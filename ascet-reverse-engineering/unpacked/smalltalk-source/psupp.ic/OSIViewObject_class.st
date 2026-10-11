"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20036878; bytecode file offset 0x18a130"
!OSIViewObject class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'draw:lindex:pvAspect:ptd:hdcTargetDev:hdcDraw:lprcBounds:lprcWBounds:pfnContinue:dwContinue:' 'getColorSet:lindex:pvAspect:ptd:hicTargetDev:ppColorSet:' 'freeze:lindex:pvAspect:pdwFreeze:' 'unfreeze:' 'setAdvise:advf:pAdvSink:' 'getAdvise:pAdvf:ppAdvSink:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    Draw := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    Freeze := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (9).
    GetAdvise := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (5).
    GetColorSet := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (8).
    SetAdvise := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (7).
    Unfreeze := recoveredValue5.
    ^self
! !

"psupp.ic method 0x2004e438; bytecode file offset 0x1a1d10"
!OSIViewObject class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 |
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
    recoveredValue11 := (self) parameterForType: ('int32').
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue7.
    recoveredValue13 := OSUInt8.
    recoveredValue14 := (self) parameterForClass: (recoveredValue13).
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue7.
    recoveredValue16 := OSDvtargetdevice.
    recoveredValue17 := (self) parameterForClass: (recoveredValue16).
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := recoveredValue7.
    recoveredValue19 := OSHdc.
    recoveredValue20 := (self) parameterForType: ('immediate') class: (recoveredValue19).
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue7.
    recoveredValue22 := OSHdc.
    recoveredValue23 := (self) parameterForType: ('immediate') class: (recoveredValue22).
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue7.
    recoveredValue25 := OSRectl.
    recoveredValue26 := (self) parameterForClass: (recoveredValue25).
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue7.
    recoveredValue28 := OSRectl.
    recoveredValue29 := (self) parameterForClass: (recoveredValue28).
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := recoveredValue7.
    recoveredValue31 := OSUInt8.
    recoveredValue32 := (self) parameterForClass: (recoveredValue31).
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := recoveredValue7.
    recoveredValue34 := (self) parameterForType: ('uint32').
    (recoveredValue33) add: (recoveredValue34).
    recoveredValue35 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue35).
    recoveredValue36 := recoveredLocal2.
    (recoveredValue36) add: ('uint32').
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := OrderedCollection.
    recoveredValue39 := (recoveredValue38) new.
    recoveredValue40 := recoveredValue39.
    recoveredValue41 := (self) parameterForType: ('uint32').
    (recoveredValue40) add: (recoveredValue41).
    recoveredValue42 := recoveredValue39.
    recoveredValue43 := (self) parameterForType: ('int32').
    (recoveredValue42) add: (recoveredValue43).
    recoveredValue44 := recoveredValue39.
    recoveredValue45 := OSUInt8.
    recoveredValue46 := (self) parameterForClass: (recoveredValue45).
    (recoveredValue44) add: (recoveredValue46).
    recoveredValue47 := recoveredValue39.
    recoveredValue48 := OSDvtargetdevice.
    recoveredValue49 := (self) parameterForClass: (recoveredValue48).
    (recoveredValue47) add: (recoveredValue49).
    recoveredValue50 := recoveredValue39.
    recoveredValue51 := OSHdc.
    recoveredValue52 := (self) parameterForType: ('immediate') class: (recoveredValue51).
    (recoveredValue50) add: (recoveredValue52).
    recoveredValue53 := recoveredValue39.
    recoveredValue54 := OSUInt8.
    recoveredValue55 := (self) parameterForClass: (recoveredValue54).
    (recoveredValue53) add: (recoveredValue55).
    recoveredValue56 := (recoveredValue39) asArray.
    (recoveredValue37) add: (recoveredValue56).
    recoveredValue57 := recoveredLocal2.
    (recoveredValue57) add: ('uint32').
    recoveredValue58 := recoveredLocal1.
    recoveredValue59 := OrderedCollection.
    recoveredValue60 := (recoveredValue59) new.
    recoveredValue61 := recoveredValue60.
    recoveredValue62 := (self) parameterForType: ('uint32').
    (recoveredValue61) add: (recoveredValue62).
    recoveredValue63 := recoveredValue60.
    recoveredValue64 := (self) parameterForType: ('int32').
    (recoveredValue63) add: (recoveredValue64).
    recoveredValue65 := recoveredValue60.
    recoveredValue66 := OSUInt8.
    recoveredValue67 := (self) parameterForClass: (recoveredValue66).
    (recoveredValue65) add: (recoveredValue67).
    recoveredValue68 := recoveredValue60.
    recoveredValue69 := OSUInt8.
    recoveredValue70 := (self) parameterForClass: (recoveredValue69).
    (recoveredValue68) add: (recoveredValue70).
    recoveredValue71 := (recoveredValue60) asArray.
    (recoveredValue58) add: (recoveredValue71).
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
    recoveredValue86 := (self) parameterForType: ('uint32').
    (recoveredValue85) add: (recoveredValue86).
    recoveredValue87 := recoveredValue82.
    recoveredValue88 := OSIAdviseSink.
    recoveredValue89 := (self) parameterForClass: (recoveredValue88).
    (recoveredValue87) add: (recoveredValue89).
    recoveredValue90 := (recoveredValue82) asArray.
    (recoveredValue80) add: (recoveredValue90).
    recoveredValue91 := recoveredLocal2.
    (recoveredValue91) add: ('uint32').
    recoveredValue92 := recoveredLocal1.
    recoveredValue93 := OrderedCollection.
    recoveredValue94 := (recoveredValue93) new.
    recoveredValue95 := recoveredValue94.
    recoveredValue96 := OSUInt8.
    recoveredValue97 := (self) parameterForClass: (recoveredValue96).
    (recoveredValue95) add: (recoveredValue97).
    recoveredValue98 := recoveredValue94.
    recoveredValue99 := OSUInt8.
    recoveredValue100 := (self) parameterForClass: (recoveredValue99).
    (recoveredValue98) add: (recoveredValue100).
    recoveredValue101 := recoveredValue94.
    recoveredValue102 := OSUInt8.
    recoveredValue103 := (self) parameterForClass: (recoveredValue102).
    (recoveredValue101) add: (recoveredValue103).
    recoveredValue104 := (recoveredValue94) asArray.
    (recoveredValue92) add: (recoveredValue104).
    recoveredValue105 := Array.
    recoveredValue106 := recoveredLocal2.
    recoveredValue107 := recoveredLocal1.
    recoveredValue108 := (recoveredValue105) with: (recoveredValue106) with: (recoveredValue107).
    ^recoveredValue108
! !

