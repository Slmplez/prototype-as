"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003c760; bytecode file offset 0x190028"
!OSICreateTypeLib class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'createTypeInfo:tkind:lplpictinfo:' 'setName:' 'setVersion:wMinorVerNum:' 'setGuid:' 'setDocString:' 'setHelpFileName:' 'setHelpContext:' 'setLcid:' 'setLibFlags:' 'saveAllChanges')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    CreateTypeInfo := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (13).
    SaveAllChanges := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (8).
    SetDocString := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    SetGuid := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (10).
    SetHelpContext := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (9).
    SetHelpFileName := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (11).
    SetLcid := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (12).
    SetLibFlags := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (5).
    SetName := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (6).
    SetVersion := recoveredValue9.
    ^self
! !

"psupp.ic method 0x2004bb18; bytecode file offset 0x19f3e8"
!OSICreateTypeLib class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 |
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
    recoveredValue9 := OSOleStringZ.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := (self) parameterForType: ('int32').
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := OSUInt8.
    recoveredValue15 := (self) parameterForClass: (recoveredValue14).
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    (recoveredValue17) add: ('uint32').
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := OrderedCollection.
    recoveredValue20 := (recoveredValue19) new.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := OSOleStringZ.
    recoveredValue23 := (self) parameterForClass: (recoveredValue22).
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := (recoveredValue20) asArray.
    (recoveredValue18) add: (recoveredValue24).
    recoveredValue25 := recoveredLocal2.
    (recoveredValue25) add: ('uint32').
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := OrderedCollection.
    recoveredValue28 := (recoveredValue27) new.
    recoveredValue29 := recoveredValue28.
    recoveredValue30 := (self) parameterForType: ('uint16').
    (recoveredValue29) add: (recoveredValue30).
    recoveredValue31 := recoveredValue28.
    recoveredValue32 := (self) parameterForType: ('uint16').
    (recoveredValue31) add: (recoveredValue32).
    recoveredValue33 := (recoveredValue28) asArray.
    (recoveredValue26) add: (recoveredValue33).
    recoveredValue34 := recoveredLocal2.
    (recoveredValue34) add: ('uint32').
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := OrderedCollection.
    recoveredValue37 := (recoveredValue36) new.
    recoveredValue38 := recoveredValue37.
    recoveredValue39 := OSGuid.
    recoveredValue40 := (self) parameterForClass: (recoveredValue39).
    (recoveredValue38) add: (recoveredValue40).
    recoveredValue41 := (recoveredValue37) asArray.
    (recoveredValue35) add: (recoveredValue41).
    recoveredValue42 := recoveredLocal2.
    (recoveredValue42) add: ('uint32').
    recoveredValue43 := recoveredLocal1.
    recoveredValue44 := OrderedCollection.
    recoveredValue45 := (recoveredValue44) new.
    recoveredValue46 := recoveredValue45.
    recoveredValue47 := OSOleStringZ.
    recoveredValue48 := (self) parameterForClass: (recoveredValue47).
    (recoveredValue46) add: (recoveredValue48).
    recoveredValue49 := (recoveredValue45) asArray.
    (recoveredValue43) add: (recoveredValue49).
    recoveredValue50 := recoveredLocal2.
    (recoveredValue50) add: ('uint32').
    recoveredValue51 := recoveredLocal1.
    recoveredValue52 := OrderedCollection.
    recoveredValue53 := (recoveredValue52) new.
    recoveredValue54 := recoveredValue53.
    recoveredValue55 := OSOleStringZ.
    recoveredValue56 := (self) parameterForClass: (recoveredValue55).
    (recoveredValue54) add: (recoveredValue56).
    recoveredValue57 := (recoveredValue53) asArray.
    (recoveredValue51) add: (recoveredValue57).
    recoveredValue58 := recoveredLocal2.
    (recoveredValue58) add: ('uint32').
    recoveredValue59 := recoveredLocal1.
    recoveredValue60 := OrderedCollection.
    recoveredValue61 := (recoveredValue60) new.
    recoveredValue62 := recoveredValue61.
    recoveredValue63 := (self) parameterForType: ('uint32').
    (recoveredValue62) add: (recoveredValue63).
    recoveredValue64 := (recoveredValue61) asArray.
    (recoveredValue59) add: (recoveredValue64).
    recoveredValue65 := recoveredLocal2.
    (recoveredValue65) add: ('uint32').
    recoveredValue66 := recoveredLocal1.
    recoveredValue67 := OrderedCollection.
    recoveredValue68 := (recoveredValue67) new.
    recoveredValue69 := recoveredValue68.
    recoveredValue70 := (self) parameterForType: ('uint32').
    (recoveredValue69) add: (recoveredValue70).
    recoveredValue71 := (recoveredValue68) asArray.
    (recoveredValue66) add: (recoveredValue71).
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
    (recoveredValue80) add: (#()).
    recoveredValue81 := Array.
    recoveredValue82 := recoveredLocal2.
    recoveredValue83 := recoveredLocal1.
    recoveredValue84 := (recoveredValue81) with: (recoveredValue82) with: (recoveredValue83).
    ^recoveredValue84
! !

