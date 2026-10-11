"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200404a0; bytecode file offset 0x193d78"
!OSIPicture class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getHandle:' 'getHPal:' 'getType:' 'getWidth:' 'getHeight:' 'render:x:y:cx:cy:xSrc:ySrc:cxSrc:cySrc:lprcWBounds:' 'setHPal:' 'getCurDC:' 'selectPicture:phdcOut:phbmpOut:' 'getKeepOriginalFormat:' 'putKeepOriginalFormat:' 'pictureChanged' 'saveAsFile:fSaveMemCopy:lpcbSize:' 'getAttributes:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (17).
    GetAttributes := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (11).
    GetCurDC := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (4).
    GetHandle := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (8).
    GetHeight := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (5).
    GetHPal := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (13).
    GetKeepOriginalFormat := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (6).
    GetType := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (7).
    GetWidth := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (15).
    PictureChanged := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (14).
    PutKeepOriginalFormat := recoveredValue9.
    recoveredValue10 := (self) callOutPlatformFunctionAt: (9).
    Render := recoveredValue10.
    recoveredValue11 := (self) callOutPlatformFunctionAt: (16).
    SaveAsFile := recoveredValue11.
    recoveredValue12 := (self) callOutPlatformFunctionAt: (12).
    SelectPicture := recoveredValue12.
    recoveredValue13 := (self) callOutPlatformFunctionAt: (10).
    SetHPal := recoveredValue13.
    ^self
! !

"psupp.ic method 0x2004f8b0; bytecode file offset 0x1a318c"
!OSIPicture class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 |
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
    recoveredValue9 := OSUInt8.
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
    recoveredValue17 := OSUInt8.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := (recoveredValue15) asArray.
    (recoveredValue13) add: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    (recoveredValue20) add: ('uint32').
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := OrderedCollection.
    recoveredValue23 := (recoveredValue22) new.
    recoveredValue24 := recoveredValue23.
    recoveredValue25 := OSUInt8.
    recoveredValue26 := (self) parameterForClass: (recoveredValue25).
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := (recoveredValue23) asArray.
    (recoveredValue21) add: (recoveredValue27).
    recoveredValue28 := recoveredLocal2.
    (recoveredValue28) add: ('uint32').
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := OrderedCollection.
    recoveredValue31 := (recoveredValue30) new.
    recoveredValue32 := recoveredValue31.
    recoveredValue33 := OSUInt8.
    recoveredValue34 := (self) parameterForClass: (recoveredValue33).
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := (recoveredValue31) asArray.
    (recoveredValue29) add: (recoveredValue35).
    recoveredValue36 := recoveredLocal2.
    (recoveredValue36) add: ('uint32').
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := OrderedCollection.
    recoveredValue39 := (recoveredValue38) new.
    recoveredValue40 := recoveredValue39.
    recoveredValue41 := OSUInt8.
    recoveredValue42 := (self) parameterForClass: (recoveredValue41).
    (recoveredValue40) add: (recoveredValue42).
    recoveredValue43 := (recoveredValue39) asArray.
    (recoveredValue37) add: (recoveredValue43).
    recoveredValue44 := recoveredLocal2.
    (recoveredValue44) add: ('uint32').
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := OrderedCollection.
    recoveredValue47 := (recoveredValue46) new.
    recoveredValue48 := recoveredValue47.
    recoveredValue49 := OSHdc.
    recoveredValue50 := (self) parameterForType: ('immediate') class: (recoveredValue49).
    (recoveredValue48) add: (recoveredValue50).
    recoveredValue51 := recoveredValue47.
    recoveredValue52 := (self) parameterForType: ('int32').
    (recoveredValue51) add: (recoveredValue52).
    recoveredValue53 := recoveredValue47.
    recoveredValue54 := (self) parameterForType: ('int32').
    (recoveredValue53) add: (recoveredValue54).
    recoveredValue55 := recoveredValue47.
    recoveredValue56 := (self) parameterForType: ('int32').
    (recoveredValue55) add: (recoveredValue56).
    recoveredValue57 := recoveredValue47.
    recoveredValue58 := (self) parameterForType: ('int32').
    (recoveredValue57) add: (recoveredValue58).
    recoveredValue59 := recoveredValue47.
    recoveredValue60 := (self) parameterForType: ('int32').
    (recoveredValue59) add: (recoveredValue60).
    recoveredValue61 := recoveredValue47.
    recoveredValue62 := (self) parameterForType: ('int32').
    (recoveredValue61) add: (recoveredValue62).
    recoveredValue63 := recoveredValue47.
    recoveredValue64 := (self) parameterForType: ('int32').
    (recoveredValue63) add: (recoveredValue64).
    recoveredValue65 := recoveredValue47.
    recoveredValue66 := (self) parameterForType: ('int32').
    (recoveredValue65) add: (recoveredValue66).
    recoveredValue67 := recoveredValue47.
    recoveredValue68 := OSRect.
    recoveredValue69 := (self) parameterForClass: (recoveredValue68).
    (recoveredValue67) add: (recoveredValue69).
    recoveredValue70 := (recoveredValue47) asArray.
    (recoveredValue45) add: (recoveredValue70).
    recoveredValue71 := recoveredLocal2.
    (recoveredValue71) add: ('uint32').
    recoveredValue72 := recoveredLocal1.
    recoveredValue73 := OrderedCollection.
    recoveredValue74 := (recoveredValue73) new.
    recoveredValue75 := recoveredValue74.
    recoveredValue76 := (self) parameterForType: ('uint32').
    (recoveredValue75) add: (recoveredValue76).
    recoveredValue77 := (recoveredValue74) asArray.
    (recoveredValue72) add: (recoveredValue77).
    recoveredValue78 := recoveredLocal2.
    (recoveredValue78) add: ('uint32').
    recoveredValue79 := recoveredLocal1.
    recoveredValue80 := OrderedCollection.
    recoveredValue81 := (recoveredValue80) new.
    recoveredValue82 := recoveredValue81.
    recoveredValue83 := OSHdc.
    recoveredValue84 := (self) parameterForClass: (recoveredValue83).
    (recoveredValue82) add: (recoveredValue84).
    recoveredValue85 := (recoveredValue81) asArray.
    (recoveredValue79) add: (recoveredValue85).
    recoveredValue86 := recoveredLocal2.
    (recoveredValue86) add: ('uint32').
    recoveredValue87 := recoveredLocal1.
    recoveredValue88 := OrderedCollection.
    recoveredValue89 := (recoveredValue88) new.
    recoveredValue90 := recoveredValue89.
    recoveredValue91 := OSHdc.
    recoveredValue92 := (self) parameterForType: ('immediate') class: (recoveredValue91).
    (recoveredValue90) add: (recoveredValue92).
    recoveredValue93 := recoveredValue89.
    recoveredValue94 := OSHdc.
    recoveredValue95 := (self) parameterForClass: (recoveredValue94).
    (recoveredValue93) add: (recoveredValue95).
    recoveredValue96 := recoveredValue89.
    recoveredValue97 := OSUInt8.
    recoveredValue98 := (self) parameterForClass: (recoveredValue97).
    (recoveredValue96) add: (recoveredValue98).
    recoveredValue99 := (recoveredValue89) asArray.
    (recoveredValue87) add: (recoveredValue99).
    recoveredValue100 := recoveredLocal2.
    (recoveredValue100) add: ('uint32').
    recoveredValue101 := recoveredLocal1.
    recoveredValue102 := OrderedCollection.
    recoveredValue103 := (recoveredValue102) new.
    recoveredValue104 := recoveredValue103.
    recoveredValue105 := OSUInt8.
    recoveredValue106 := (self) parameterForClass: (recoveredValue105).
    (recoveredValue104) add: (recoveredValue106).
    recoveredValue107 := (recoveredValue103) asArray.
    (recoveredValue101) add: (recoveredValue107).
    recoveredValue108 := recoveredLocal2.
    (recoveredValue108) add: ('uint32').
    recoveredValue109 := recoveredLocal1.
    recoveredValue110 := OrderedCollection.
    recoveredValue111 := (recoveredValue110) new.
    recoveredValue112 := recoveredValue111.
    recoveredValue113 := (self) parameterForType: ('bool').
    (recoveredValue112) add: (recoveredValue113).
    recoveredValue114 := (recoveredValue111) asArray.
    (recoveredValue109) add: (recoveredValue114).
    recoveredValue115 := recoveredLocal2.
    (recoveredValue115) add: ('uint32').
    recoveredValue116 := recoveredLocal1.
    (recoveredValue116) add: (#()).
    recoveredValue117 := recoveredLocal2.
    (recoveredValue117) add: ('uint32').
    recoveredValue118 := recoveredLocal1.
    recoveredValue119 := OrderedCollection.
    recoveredValue120 := (recoveredValue119) new.
    recoveredValue121 := recoveredValue120.
    recoveredValue122 := OSIStream.
    recoveredValue123 := (self) parameterForClass: (recoveredValue122).
    (recoveredValue121) add: (recoveredValue123).
    recoveredValue124 := recoveredValue120.
    recoveredValue125 := (self) parameterForType: ('bool').
    (recoveredValue124) add: (recoveredValue125).
    recoveredValue126 := recoveredValue120.
    recoveredValue127 := OSUInt8.
    recoveredValue128 := (self) parameterForClass: (recoveredValue127).
    (recoveredValue126) add: (recoveredValue128).
    recoveredValue129 := (recoveredValue120) asArray.
    (recoveredValue118) add: (recoveredValue129).
    recoveredValue130 := recoveredLocal2.
    (recoveredValue130) add: ('uint32').
    recoveredValue131 := recoveredLocal1.
    recoveredValue132 := OrderedCollection.
    recoveredValue133 := (recoveredValue132) new.
    recoveredValue134 := recoveredValue133.
    recoveredValue135 := OSUInt8.
    recoveredValue136 := (self) parameterForClass: (recoveredValue135).
    (recoveredValue134) add: (recoveredValue136).
    recoveredValue137 := (recoveredValue133) asArray.
    (recoveredValue131) add: (recoveredValue137).
    recoveredValue138 := Array.
    recoveredValue139 := recoveredLocal2.
    recoveredValue140 := recoveredLocal1.
    recoveredValue141 := (recoveredValue138) with: (recoveredValue139) with: (recoveredValue140).
    ^recoveredValue141
! !

