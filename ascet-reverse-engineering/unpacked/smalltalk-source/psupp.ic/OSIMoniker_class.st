"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20041018; bytecode file offset 0x1948f4"
!OSIMoniker class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getClassID:' 'isDirty' 'load:' 'save:fClearDirty:' 'getSizeMax:' 'bindToObject:pmkToLeft:riidResult:ppvResult:' 'bindToStorage:pmkToLeft:riid:ppvObj:' 'reduce:dwReduceHowFar:ppmkToLeft:ppmkReduced:' 'composeWith:fOnlyIfNotGeneric:ppmkComposite:' 'enum:ppenumMoniker:' 'isEqual:' 'hash:' 'isRunning:pmkToLeft:pmkNewlyRunning:' 'getTimeOfLastChange:pmkToLeft:pFileTime:' 'inverse:' 'commonPrefixWith:ppmkPrefix:' 'relativePathTo:ppmkRelPath:' 'getDisplayName:pmkToLeft:ppszDisplayName:' 'parseDisplayName:pmkToLeft:pszDisplayName:pchEaten:ppmkOut:' 'isSystemMoniker:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (9).
    BindToObject := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (10).
    BindToStorage := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (19).
    CommonPrefixWith := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (12).
    ComposeWith := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (13).
    Enum := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (21).
    GetDisplayName := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (17).
    GetTimeOfLastChange := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (15).
    Hash := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (18).
    Inverse := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (14).
    IsEqual := recoveredValue9.
    recoveredValue10 := (self) callOutPlatformFunctionAt: (16).
    IsRunning := recoveredValue10.
    recoveredValue11 := (self) callOutPlatformFunctionAt: (23).
    IsSystemMoniker := recoveredValue11.
    recoveredValue12 := (self) callOutPlatformFunctionAt: (22).
    ParseDisplayName := recoveredValue12.
    recoveredValue13 := (self) callOutPlatformFunctionAt: (11).
    Reduce := recoveredValue13.
    recoveredValue14 := (self) callOutPlatformFunctionAt: (20).
    RelativePathTo := recoveredValue14.
    ^self
! !

"psupp.ic method 0x20051334; bytecode file offset 0x1a4c08"
!OSIMoniker class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 recoveredValue151 recoveredValue152 recoveredValue153 recoveredValue154 recoveredValue155 recoveredValue156 recoveredValue157 recoveredValue158 recoveredValue159 recoveredValue160 recoveredValue161 recoveredValue162 recoveredValue163 recoveredValue164 recoveredValue165 recoveredValue166 recoveredValue167 recoveredValue168 recoveredValue169 recoveredValue170 recoveredValue171 recoveredValue172 recoveredValue173 recoveredValue174 recoveredValue175 recoveredValue176 recoveredValue177 recoveredValue178 recoveredValue179 recoveredValue180 recoveredValue181 recoveredValue182 recoveredValue183 recoveredValue184 recoveredValue185 recoveredValue186 recoveredValue187 recoveredValue188 recoveredValue189 recoveredValue190 recoveredValue191 recoveredValue192 recoveredValue193 recoveredValue194 recoveredValue195 recoveredValue196 |
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
    recoveredValue9 := OSIBindCtx.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSIMoniker.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := OSIid.
    recoveredValue16 := (self) parameterForClass: (recoveredValue15).
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue7.
    recoveredValue18 := OSUInt8.
    recoveredValue19 := (self) parameterForClass: (recoveredValue18).
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue20).
    recoveredValue21 := recoveredLocal2.
    (recoveredValue21) add: ('uint32').
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := OrderedCollection.
    recoveredValue24 := (recoveredValue23) new.
    recoveredValue25 := recoveredValue24.
    recoveredValue26 := OSIBindCtx.
    recoveredValue27 := (self) parameterForClass: (recoveredValue26).
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := recoveredValue24.
    recoveredValue29 := OSIMoniker.
    recoveredValue30 := (self) parameterForClass: (recoveredValue29).
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := recoveredValue24.
    recoveredValue32 := OSIid.
    recoveredValue33 := (self) parameterForClass: (recoveredValue32).
    (recoveredValue31) add: (recoveredValue33).
    recoveredValue34 := recoveredValue24.
    recoveredValue35 := OSUInt8.
    recoveredValue36 := (self) parameterForClass: (recoveredValue35).
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := (recoveredValue24) asArray.
    (recoveredValue22) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('uint32').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := OrderedCollection.
    recoveredValue41 := (recoveredValue40) new.
    recoveredValue42 := recoveredValue41.
    recoveredValue43 := OSIBindCtx.
    recoveredValue44 := (self) parameterForClass: (recoveredValue43).
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := recoveredValue41.
    recoveredValue46 := (self) parameterForType: ('uint32').
    (recoveredValue45) add: (recoveredValue46).
    recoveredValue47 := recoveredValue41.
    recoveredValue48 := OSUInt8.
    recoveredValue49 := (self) parameterForClass: (recoveredValue48).
    (recoveredValue47) add: (recoveredValue49).
    recoveredValue50 := recoveredValue41.
    recoveredValue51 := OSUInt8.
    recoveredValue52 := (self) parameterForClass: (recoveredValue51).
    (recoveredValue50) add: (recoveredValue52).
    recoveredValue53 := (recoveredValue41) asArray.
    (recoveredValue39) add: (recoveredValue53).
    recoveredValue54 := recoveredLocal2.
    (recoveredValue54) add: ('uint32').
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := OrderedCollection.
    recoveredValue57 := (recoveredValue56) new.
    recoveredValue58 := recoveredValue57.
    recoveredValue59 := OSIMoniker.
    recoveredValue60 := (self) parameterForClass: (recoveredValue59).
    (recoveredValue58) add: (recoveredValue60).
    recoveredValue61 := recoveredValue57.
    recoveredValue62 := (self) parameterForType: ('bool').
    (recoveredValue61) add: (recoveredValue62).
    recoveredValue63 := recoveredValue57.
    recoveredValue64 := OSUInt8.
    recoveredValue65 := (self) parameterForClass: (recoveredValue64).
    (recoveredValue63) add: (recoveredValue65).
    recoveredValue66 := (recoveredValue57) asArray.
    (recoveredValue55) add: (recoveredValue66).
    recoveredValue67 := recoveredLocal2.
    (recoveredValue67) add: ('uint32').
    recoveredValue68 := recoveredLocal1.
    recoveredValue69 := OrderedCollection.
    recoveredValue70 := (recoveredValue69) new.
    recoveredValue71 := recoveredValue70.
    recoveredValue72 := (self) parameterForType: ('bool').
    (recoveredValue71) add: (recoveredValue72).
    recoveredValue73 := recoveredValue70.
    recoveredValue74 := OSUInt8.
    recoveredValue75 := (self) parameterForClass: (recoveredValue74).
    (recoveredValue73) add: (recoveredValue75).
    recoveredValue76 := (recoveredValue70) asArray.
    (recoveredValue68) add: (recoveredValue76).
    recoveredValue77 := recoveredLocal2.
    (recoveredValue77) add: ('uint32').
    recoveredValue78 := recoveredLocal1.
    recoveredValue79 := OrderedCollection.
    recoveredValue80 := (recoveredValue79) new.
    recoveredValue81 := recoveredValue80.
    recoveredValue82 := OSIMoniker.
    recoveredValue83 := (self) parameterForClass: (recoveredValue82).
    (recoveredValue81) add: (recoveredValue83).
    recoveredValue84 := (recoveredValue80) asArray.
    (recoveredValue78) add: (recoveredValue84).
    recoveredValue85 := recoveredLocal2.
    (recoveredValue85) add: ('uint32').
    recoveredValue86 := recoveredLocal1.
    recoveredValue87 := OrderedCollection.
    recoveredValue88 := (recoveredValue87) new.
    recoveredValue89 := recoveredValue88.
    recoveredValue90 := OSUInt8.
    recoveredValue91 := (self) parameterForClass: (recoveredValue90).
    (recoveredValue89) add: (recoveredValue91).
    recoveredValue92 := (recoveredValue88) asArray.
    (recoveredValue86) add: (recoveredValue92).
    recoveredValue93 := recoveredLocal2.
    (recoveredValue93) add: ('uint32').
    recoveredValue94 := recoveredLocal1.
    recoveredValue95 := OrderedCollection.
    recoveredValue96 := (recoveredValue95) new.
    recoveredValue97 := recoveredValue96.
    recoveredValue98 := OSIBindCtx.
    recoveredValue99 := (self) parameterForClass: (recoveredValue98).
    (recoveredValue97) add: (recoveredValue99).
    recoveredValue100 := recoveredValue96.
    recoveredValue101 := OSIMoniker.
    recoveredValue102 := (self) parameterForClass: (recoveredValue101).
    (recoveredValue100) add: (recoveredValue102).
    recoveredValue103 := recoveredValue96.
    recoveredValue104 := OSIMoniker.
    recoveredValue105 := (self) parameterForClass: (recoveredValue104).
    (recoveredValue103) add: (recoveredValue105).
    recoveredValue106 := (recoveredValue96) asArray.
    (recoveredValue94) add: (recoveredValue106).
    recoveredValue107 := recoveredLocal2.
    (recoveredValue107) add: ('uint32').
    recoveredValue108 := recoveredLocal1.
    recoveredValue109 := OrderedCollection.
    recoveredValue110 := (recoveredValue109) new.
    recoveredValue111 := recoveredValue110.
    recoveredValue112 := OSIBindCtx.
    recoveredValue113 := (self) parameterForClass: (recoveredValue112).
    (recoveredValue111) add: (recoveredValue113).
    recoveredValue114 := recoveredValue110.
    recoveredValue115 := OSIMoniker.
    recoveredValue116 := (self) parameterForClass: (recoveredValue115).
    (recoveredValue114) add: (recoveredValue116).
    recoveredValue117 := recoveredValue110.
    recoveredValue118 := OSFiletime.
    recoveredValue119 := (self) parameterForClass: (recoveredValue118).
    (recoveredValue117) add: (recoveredValue119).
    recoveredValue120 := (recoveredValue110) asArray.
    (recoveredValue108) add: (recoveredValue120).
    recoveredValue121 := recoveredLocal2.
    (recoveredValue121) add: ('uint32').
    recoveredValue122 := recoveredLocal1.
    recoveredValue123 := OrderedCollection.
    recoveredValue124 := (recoveredValue123) new.
    recoveredValue125 := recoveredValue124.
    recoveredValue126 := OSUInt8.
    recoveredValue127 := (self) parameterForClass: (recoveredValue126).
    (recoveredValue125) add: (recoveredValue127).
    recoveredValue128 := (recoveredValue124) asArray.
    (recoveredValue122) add: (recoveredValue128).
    recoveredValue129 := recoveredLocal2.
    (recoveredValue129) add: ('uint32').
    recoveredValue130 := recoveredLocal1.
    recoveredValue131 := OrderedCollection.
    recoveredValue132 := (recoveredValue131) new.
    recoveredValue133 := recoveredValue132.
    recoveredValue134 := OSIMoniker.
    recoveredValue135 := (self) parameterForClass: (recoveredValue134).
    (recoveredValue133) add: (recoveredValue135).
    recoveredValue136 := recoveredValue132.
    recoveredValue137 := OSUInt8.
    recoveredValue138 := (self) parameterForClass: (recoveredValue137).
    (recoveredValue136) add: (recoveredValue138).
    recoveredValue139 := (recoveredValue132) asArray.
    (recoveredValue130) add: (recoveredValue139).
    recoveredValue140 := recoveredLocal2.
    (recoveredValue140) add: ('uint32').
    recoveredValue141 := recoveredLocal1.
    recoveredValue142 := OrderedCollection.
    recoveredValue143 := (recoveredValue142) new.
    recoveredValue144 := recoveredValue143.
    recoveredValue145 := OSIMoniker.
    recoveredValue146 := (self) parameterForClass: (recoveredValue145).
    (recoveredValue144) add: (recoveredValue146).
    recoveredValue147 := recoveredValue143.
    recoveredValue148 := OSUInt8.
    recoveredValue149 := (self) parameterForClass: (recoveredValue148).
    (recoveredValue147) add: (recoveredValue149).
    recoveredValue150 := (recoveredValue143) asArray.
    (recoveredValue141) add: (recoveredValue150).
    recoveredValue151 := recoveredLocal2.
    (recoveredValue151) add: ('uint32').
    recoveredValue152 := recoveredLocal1.
    recoveredValue153 := OrderedCollection.
    recoveredValue154 := (recoveredValue153) new.
    recoveredValue155 := recoveredValue154.
    recoveredValue156 := OSIBindCtx.
    recoveredValue157 := (self) parameterForClass: (recoveredValue156).
    (recoveredValue155) add: (recoveredValue157).
    recoveredValue158 := recoveredValue154.
    recoveredValue159 := OSIMoniker.
    recoveredValue160 := (self) parameterForClass: (recoveredValue159).
    (recoveredValue158) add: (recoveredValue160).
    recoveredValue161 := recoveredValue154.
    recoveredValue162 := OSUInt8.
    recoveredValue163 := (self) parameterForClass: (recoveredValue162).
    (recoveredValue161) add: (recoveredValue163).
    recoveredValue164 := (recoveredValue154) asArray.
    (recoveredValue152) add: (recoveredValue164).
    recoveredValue165 := recoveredLocal2.
    (recoveredValue165) add: ('uint32').
    recoveredValue166 := recoveredLocal1.
    recoveredValue167 := OrderedCollection.
    recoveredValue168 := (recoveredValue167) new.
    recoveredValue169 := recoveredValue168.
    recoveredValue170 := OSIBindCtx.
    recoveredValue171 := (self) parameterForClass: (recoveredValue170).
    (recoveredValue169) add: (recoveredValue171).
    recoveredValue172 := recoveredValue168.
    recoveredValue173 := OSIMoniker.
    recoveredValue174 := (self) parameterForClass: (recoveredValue173).
    (recoveredValue172) add: (recoveredValue174).
    recoveredValue175 := recoveredValue168.
    recoveredValue176 := OSOleStringZ.
    recoveredValue177 := (self) parameterForClass: (recoveredValue176).
    (recoveredValue175) add: (recoveredValue177).
    recoveredValue178 := recoveredValue168.
    recoveredValue179 := OSUInt8.
    recoveredValue180 := (self) parameterForClass: (recoveredValue179).
    (recoveredValue178) add: (recoveredValue180).
    recoveredValue181 := recoveredValue168.
    recoveredValue182 := OSUInt8.
    recoveredValue183 := (self) parameterForClass: (recoveredValue182).
    (recoveredValue181) add: (recoveredValue183).
    recoveredValue184 := (recoveredValue168) asArray.
    (recoveredValue166) add: (recoveredValue184).
    recoveredValue185 := recoveredLocal2.
    (recoveredValue185) add: ('uint32').
    recoveredValue186 := recoveredLocal1.
    recoveredValue187 := OrderedCollection.
    recoveredValue188 := (recoveredValue187) new.
    recoveredValue189 := recoveredValue188.
    recoveredValue190 := OSUInt8.
    recoveredValue191 := (self) parameterForClass: (recoveredValue190).
    (recoveredValue189) add: (recoveredValue191).
    recoveredValue192 := (recoveredValue188) asArray.
    (recoveredValue186) add: (recoveredValue192).
    recoveredValue193 := Array.
    recoveredValue194 := recoveredLocal2.
    recoveredValue195 := recoveredLocal1.
    recoveredValue196 := (recoveredValue193) with: (recoveredValue194) with: (recoveredValue195).
    ^recoveredValue196
! !

