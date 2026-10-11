"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20045a44; bytecode file offset 0x199338"
!OSIOleObject class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'setClientSite:' 'getClientSite:' 'setHostNames:szContainerObj:' 'close:' 'setMoniker:pmk:' 'getMoniker:dwWhichMoniker:ppmk:' 'initFromData:fCreation:dwReserved:' 'getClipboardData:ppDataObject:' 'doVerb:lpmsg:pActiveSite:lindex:hwndParent:lprcPosRect:' 'enumVerbs:' 'update' 'isUpToDate' 'getUserClassID:' 'getUserType:pszUserType:' 'setExtent:psizel:' 'getExtent:psizel:' 'advise:pdwConnection:' 'unadvise:' 'enumAdvise:' 'getMiscStatus:pdwStatus:' 'setColorScheme:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (20).
    Advise := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (7).
    Close := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (12).
    DoVerb := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (22).
    EnumAdvise := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (13).
    EnumVerbs := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (5).
    GetClientSite := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (11).
    GetClipboardData := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (19).
    GetExtent := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (23).
    GetMiscStatus := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (9).
    GetMoniker := recoveredValue9.
    recoveredValue10 := (self) callOutPlatformFunctionAt: (16).
    GetUserClassID := recoveredValue10.
    recoveredValue11 := (self) callOutPlatformFunctionAt: (17).
    GetUserType := recoveredValue11.
    recoveredValue12 := (self) callOutPlatformFunctionAt: (10).
    InitFromData := recoveredValue12.
    recoveredValue13 := (self) callOutPlatformFunctionAt: (15).
    IsUpToDate := recoveredValue13.
    recoveredValue14 := (self) callOutPlatformFunctionAt: (4).
    SetClientSite := recoveredValue14.
    recoveredValue15 := (self) callOutPlatformFunctionAt: (24).
    SetColorScheme := recoveredValue15.
    recoveredValue16 := (self) callOutPlatformFunctionAt: (18).
    SetExtent := recoveredValue16.
    recoveredValue17 := (self) callOutPlatformFunctionAt: (6).
    SetHostNames := recoveredValue17.
    recoveredValue18 := (self) callOutPlatformFunctionAt: (8).
    SetMoniker := recoveredValue18.
    recoveredValue19 := (self) callOutPlatformFunctionAt: (21).
    Unadvise := recoveredValue19.
    recoveredValue20 := (self) callOutPlatformFunctionAt: (14).
    Update := recoveredValue20.
    ^self
! !

"psupp.ic method 0x20051804; bytecode file offset 0x1a5100"
!OSIOleObject class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 recoveredValue151 recoveredValue152 recoveredValue153 recoveredValue154 recoveredValue155 recoveredValue156 recoveredValue157 recoveredValue158 recoveredValue159 recoveredValue160 recoveredValue161 recoveredValue162 recoveredValue163 recoveredValue164 recoveredValue165 recoveredValue166 recoveredValue167 recoveredValue168 recoveredValue169 recoveredValue170 recoveredValue171 recoveredValue172 recoveredValue173 recoveredValue174 recoveredValue175 recoveredValue176 recoveredValue177 recoveredValue178 recoveredValue179 recoveredValue180 recoveredValue181 recoveredValue182 recoveredValue183 recoveredValue184 recoveredValue185 recoveredValue186 recoveredValue187 recoveredValue188 recoveredValue189 recoveredValue190 recoveredValue191 recoveredValue192 recoveredValue193 recoveredValue194 recoveredValue195 recoveredValue196 recoveredValue197 recoveredValue198 recoveredValue199 recoveredValue200 |
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
    recoveredValue9 := OSIOleClientSite.
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
    recoveredValue25 := OSOleStringZ.
    recoveredValue26 := (self) parameterForClass: (recoveredValue25).
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue23.
    recoveredValue28 := OSOleStringZ.
    recoveredValue29 := (self) parameterForClass: (recoveredValue28).
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := (recoveredValue23) asArray.
    (recoveredValue21) add: (recoveredValue30).
    recoveredValue31 := recoveredLocal2.
    (recoveredValue31) add: ('uint32').
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := OrderedCollection.
    recoveredValue34 := (recoveredValue33) new.
    recoveredValue35 := recoveredValue34.
    recoveredValue36 := (self) parameterForType: ('uint32').
    (recoveredValue35) add: (recoveredValue36).
    recoveredValue37 := (recoveredValue34) asArray.
    (recoveredValue32) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('uint32').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := OrderedCollection.
    recoveredValue41 := (recoveredValue40) new.
    recoveredValue42 := recoveredValue41.
    recoveredValue43 := (self) parameterForType: ('uint32').
    (recoveredValue42) add: (recoveredValue43).
    recoveredValue44 := recoveredValue41.
    recoveredValue45 := OSIMoniker.
    recoveredValue46 := (self) parameterForClass: (recoveredValue45).
    (recoveredValue44) add: (recoveredValue46).
    recoveredValue47 := (recoveredValue41) asArray.
    (recoveredValue39) add: (recoveredValue47).
    recoveredValue48 := recoveredLocal2.
    (recoveredValue48) add: ('uint32').
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := OrderedCollection.
    recoveredValue51 := (recoveredValue50) new.
    recoveredValue52 := recoveredValue51.
    recoveredValue53 := (self) parameterForType: ('uint32').
    (recoveredValue52) add: (recoveredValue53).
    recoveredValue54 := recoveredValue51.
    recoveredValue55 := (self) parameterForType: ('uint32').
    (recoveredValue54) add: (recoveredValue55).
    recoveredValue56 := recoveredValue51.
    recoveredValue57 := OSUInt8.
    recoveredValue58 := (self) parameterForClass: (recoveredValue57).
    (recoveredValue56) add: (recoveredValue58).
    recoveredValue59 := (recoveredValue51) asArray.
    (recoveredValue49) add: (recoveredValue59).
    recoveredValue60 := recoveredLocal2.
    (recoveredValue60) add: ('uint32').
    recoveredValue61 := recoveredLocal1.
    recoveredValue62 := OrderedCollection.
    recoveredValue63 := (recoveredValue62) new.
    recoveredValue64 := recoveredValue63.
    recoveredValue65 := OSIDataObject.
    recoveredValue66 := (self) parameterForClass: (recoveredValue65).
    (recoveredValue64) add: (recoveredValue66).
    recoveredValue67 := recoveredValue63.
    recoveredValue68 := (self) parameterForType: ('bool').
    (recoveredValue67) add: (recoveredValue68).
    recoveredValue69 := recoveredValue63.
    recoveredValue70 := (self) parameterForType: ('uint32').
    (recoveredValue69) add: (recoveredValue70).
    recoveredValue71 := (recoveredValue63) asArray.
    (recoveredValue61) add: (recoveredValue71).
    recoveredValue72 := recoveredLocal2.
    (recoveredValue72) add: ('uint32').
    recoveredValue73 := recoveredLocal1.
    recoveredValue74 := OrderedCollection.
    recoveredValue75 := (recoveredValue74) new.
    recoveredValue76 := recoveredValue75.
    recoveredValue77 := (self) parameterForType: ('uint32').
    (recoveredValue76) add: (recoveredValue77).
    recoveredValue78 := recoveredValue75.
    recoveredValue79 := OSUInt8.
    recoveredValue80 := (self) parameterForClass: (recoveredValue79).
    (recoveredValue78) add: (recoveredValue80).
    recoveredValue81 := (recoveredValue75) asArray.
    (recoveredValue73) add: (recoveredValue81).
    recoveredValue82 := recoveredLocal2.
    (recoveredValue82) add: ('uint32').
    recoveredValue83 := recoveredLocal1.
    recoveredValue84 := OrderedCollection.
    recoveredValue85 := (recoveredValue84) new.
    recoveredValue86 := recoveredValue85.
    recoveredValue87 := (self) parameterForType: ('int32').
    (recoveredValue86) add: (recoveredValue87).
    recoveredValue88 := recoveredValue85.
    recoveredValue89 := OSMsg.
    recoveredValue90 := (self) parameterForClass: (recoveredValue89).
    (recoveredValue88) add: (recoveredValue90).
    recoveredValue91 := recoveredValue85.
    recoveredValue92 := OSIOleClientSite.
    recoveredValue93 := (self) parameterForClass: (recoveredValue92).
    (recoveredValue91) add: (recoveredValue93).
    recoveredValue94 := recoveredValue85.
    recoveredValue95 := (self) parameterForType: ('int32').
    (recoveredValue94) add: (recoveredValue95).
    recoveredValue96 := recoveredValue85.
    recoveredValue97 := OSHwnd.
    recoveredValue98 := (self) parameterForType: ('immediate') class: (recoveredValue97).
    (recoveredValue96) add: (recoveredValue98).
    recoveredValue99 := recoveredValue85.
    recoveredValue100 := OSRect.
    recoveredValue101 := (self) parameterForClass: (recoveredValue100).
    (recoveredValue99) add: (recoveredValue101).
    recoveredValue102 := (recoveredValue85) asArray.
    (recoveredValue83) add: (recoveredValue102).
    recoveredValue103 := recoveredLocal2.
    (recoveredValue103) add: ('uint32').
    recoveredValue104 := recoveredLocal1.
    recoveredValue105 := OrderedCollection.
    recoveredValue106 := (recoveredValue105) new.
    recoveredValue107 := recoveredValue106.
    recoveredValue108 := OSUInt8.
    recoveredValue109 := (self) parameterForClass: (recoveredValue108).
    (recoveredValue107) add: (recoveredValue109).
    recoveredValue110 := (recoveredValue106) asArray.
    (recoveredValue104) add: (recoveredValue110).
    recoveredValue111 := recoveredLocal2.
    (recoveredValue111) add: ('uint32').
    recoveredValue112 := recoveredLocal1.
    (recoveredValue112) add: (#()).
    recoveredValue113 := recoveredLocal2.
    (recoveredValue113) add: ('uint32').
    recoveredValue114 := recoveredLocal1.
    (recoveredValue114) add: (#()).
    recoveredValue115 := recoveredLocal2.
    (recoveredValue115) add: ('uint32').
    recoveredValue116 := recoveredLocal1.
    recoveredValue117 := OrderedCollection.
    recoveredValue118 := (recoveredValue117) new.
    recoveredValue119 := recoveredValue118.
    recoveredValue120 := OSClsid.
    recoveredValue121 := (self) parameterForClass: (recoveredValue120).
    (recoveredValue119) add: (recoveredValue121).
    recoveredValue122 := (recoveredValue118) asArray.
    (recoveredValue116) add: (recoveredValue122).
    recoveredValue123 := recoveredLocal2.
    (recoveredValue123) add: ('uint32').
    recoveredValue124 := recoveredLocal1.
    recoveredValue125 := OrderedCollection.
    recoveredValue126 := (recoveredValue125) new.
    recoveredValue127 := recoveredValue126.
    recoveredValue128 := (self) parameterForType: ('uint32').
    (recoveredValue127) add: (recoveredValue128).
    recoveredValue129 := recoveredValue126.
    recoveredValue130 := OSUInt8.
    recoveredValue131 := (self) parameterForClass: (recoveredValue130).
    (recoveredValue129) add: (recoveredValue131).
    recoveredValue132 := (recoveredValue126) asArray.
    (recoveredValue124) add: (recoveredValue132).
    recoveredValue133 := recoveredLocal2.
    (recoveredValue133) add: ('uint32').
    recoveredValue134 := recoveredLocal1.
    recoveredValue135 := OrderedCollection.
    recoveredValue136 := (recoveredValue135) new.
    recoveredValue137 := recoveredValue136.
    recoveredValue138 := (self) parameterForType: ('uint32').
    (recoveredValue137) add: (recoveredValue138).
    recoveredValue139 := recoveredValue136.
    recoveredValue140 := OSSizel.
    recoveredValue141 := (self) parameterForClass: (recoveredValue140).
    (recoveredValue139) add: (recoveredValue141).
    recoveredValue142 := (recoveredValue136) asArray.
    (recoveredValue134) add: (recoveredValue142).
    recoveredValue143 := recoveredLocal2.
    (recoveredValue143) add: ('uint32').
    recoveredValue144 := recoveredLocal1.
    recoveredValue145 := OrderedCollection.
    recoveredValue146 := (recoveredValue145) new.
    recoveredValue147 := recoveredValue146.
    recoveredValue148 := (self) parameterForType: ('uint32').
    (recoveredValue147) add: (recoveredValue148).
    recoveredValue149 := recoveredValue146.
    recoveredValue150 := OSSizel.
    recoveredValue151 := (self) parameterForClass: (recoveredValue150).
    (recoveredValue149) add: (recoveredValue151).
    recoveredValue152 := (recoveredValue146) asArray.
    (recoveredValue144) add: (recoveredValue152).
    recoveredValue153 := recoveredLocal2.
    (recoveredValue153) add: ('uint32').
    recoveredValue154 := recoveredLocal1.
    recoveredValue155 := OrderedCollection.
    recoveredValue156 := (recoveredValue155) new.
    recoveredValue157 := recoveredValue156.
    recoveredValue158 := OSIAdviseSink.
    recoveredValue159 := (self) parameterForClass: (recoveredValue158).
    (recoveredValue157) add: (recoveredValue159).
    recoveredValue160 := recoveredValue156.
    recoveredValue161 := OSUInt8.
    recoveredValue162 := (self) parameterForClass: (recoveredValue161).
    (recoveredValue160) add: (recoveredValue162).
    recoveredValue163 := (recoveredValue156) asArray.
    (recoveredValue154) add: (recoveredValue163).
    recoveredValue164 := recoveredLocal2.
    (recoveredValue164) add: ('uint32').
    recoveredValue165 := recoveredLocal1.
    recoveredValue166 := OrderedCollection.
    recoveredValue167 := (recoveredValue166) new.
    recoveredValue168 := recoveredValue167.
    recoveredValue169 := (self) parameterForType: ('uint32').
    (recoveredValue168) add: (recoveredValue169).
    recoveredValue170 := (recoveredValue167) asArray.
    (recoveredValue165) add: (recoveredValue170).
    recoveredValue171 := recoveredLocal2.
    (recoveredValue171) add: ('uint32').
    recoveredValue172 := recoveredLocal1.
    recoveredValue173 := OrderedCollection.
    recoveredValue174 := (recoveredValue173) new.
    recoveredValue175 := recoveredValue174.
    recoveredValue176 := OSUInt8.
    recoveredValue177 := (self) parameterForClass: (recoveredValue176).
    (recoveredValue175) add: (recoveredValue177).
    recoveredValue178 := (recoveredValue174) asArray.
    (recoveredValue172) add: (recoveredValue178).
    recoveredValue179 := recoveredLocal2.
    (recoveredValue179) add: ('uint32').
    recoveredValue180 := recoveredLocal1.
    recoveredValue181 := OrderedCollection.
    recoveredValue182 := (recoveredValue181) new.
    recoveredValue183 := recoveredValue182.
    recoveredValue184 := (self) parameterForType: ('uint32').
    (recoveredValue183) add: (recoveredValue184).
    recoveredValue185 := recoveredValue182.
    recoveredValue186 := OSUInt8.
    recoveredValue187 := (self) parameterForClass: (recoveredValue186).
    (recoveredValue185) add: (recoveredValue187).
    recoveredValue188 := (recoveredValue182) asArray.
    (recoveredValue180) add: (recoveredValue188).
    recoveredValue189 := recoveredLocal2.
    (recoveredValue189) add: ('uint32').
    recoveredValue190 := recoveredLocal1.
    recoveredValue191 := OrderedCollection.
    recoveredValue192 := (recoveredValue191) new.
    recoveredValue193 := recoveredValue192.
    recoveredValue194 := OSLogpalette.
    recoveredValue195 := (self) parameterForClass: (recoveredValue194).
    (recoveredValue193) add: (recoveredValue195).
    recoveredValue196 := (recoveredValue192) asArray.
    (recoveredValue190) add: (recoveredValue196).
    recoveredValue197 := Array.
    recoveredValue198 := recoveredLocal2.
    recoveredValue199 := recoveredLocal1.
    recoveredValue200 := (recoveredValue197) with: (recoveredValue198) with: (recoveredValue199).
    ^recoveredValue200
! !

