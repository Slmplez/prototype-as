"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200410cc; bytecode file offset 0x1949a8"
!OSIStorage class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'createStream:grfMode:reserved1:reserved2:ppstm:' 'openStream:reserved1:grfMode:reserved2:ppstm:' 'createStorage:grfMode:dwStgFmt:reserved2:ppstg:' 'openStorage:pstgPriority:grfMode:snbExclude:reserved:ppstg:' 'copyTo:rgiidExclude:snbExclude:pstgDest:' 'moveElementTo:pstgDest:pwcsNewName:grfFlags:' 'commit:' 'revert' 'enumElements:reserved2:reserved3:ppenum:' 'destroyElement:' 'renameElement:pwcsNewName:' 'setElementTimes:pctime:patime:pmtime:' 'setClass:' 'setStateBits:grfMask:' 'stat:grfStatFlag:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (10).
    Commit := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (8).
    CopyTo := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (6).
    CreateStorage := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (4).
    CreateStream := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (13).
    DestroyElement := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (12).
    EnumElements := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (9).
    MoveElementTo := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (7).
    OpenStorage := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (5).
    OpenStream := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (14).
    RenameElement := recoveredValue9.
    recoveredValue10 := (self) callOutPlatformFunctionAt: (11).
    Revert := recoveredValue10.
    recoveredValue11 := (self) callOutPlatformFunctionAt: (16).
    SetClass := recoveredValue11.
    recoveredValue12 := (self) callOutPlatformFunctionAt: (15).
    SetElementTimes := recoveredValue12.
    recoveredValue13 := (self) callOutPlatformFunctionAt: (17).
    SetStateBits := recoveredValue13.
    recoveredValue14 := (self) callOutPlatformFunctionAt: (18).
    Stat := recoveredValue14.
    ^self
! !

"psupp.ic method 0x20051f0c; bytecode file offset 0x1a57e0"
!OSIStorage class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 recoveredValue151 recoveredValue152 recoveredValue153 recoveredValue154 recoveredValue155 recoveredValue156 recoveredValue157 recoveredValue158 recoveredValue159 recoveredValue160 recoveredValue161 recoveredValue162 recoveredValue163 recoveredValue164 recoveredValue165 recoveredValue166 recoveredValue167 recoveredValue168 recoveredValue169 recoveredValue170 recoveredValue171 recoveredValue172 recoveredValue173 recoveredValue174 recoveredValue175 recoveredValue176 recoveredValue177 recoveredValue178 recoveredValue179 recoveredValue180 recoveredValue181 recoveredValue182 recoveredValue183 recoveredValue184 recoveredValue185 recoveredValue186 recoveredValue187 recoveredValue188 recoveredValue189 recoveredValue190 recoveredValue191 recoveredValue192 recoveredValue193 recoveredValue194 recoveredValue195 recoveredValue196 recoveredValue197 recoveredValue198 recoveredValue199 |
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
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := (self) parameterForType: ('uint32').
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := (self) parameterForType: ('uint32').
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue7.
    recoveredValue16 := (self) parameterForType: ('uint32').
    (recoveredValue15) add: (recoveredValue16).
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
    recoveredValue26 := OSUInt8.
    recoveredValue27 := (self) parameterForClass: (recoveredValue26).
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := recoveredValue24.
    recoveredValue29 := OSUInt8.
    recoveredValue30 := (self) parameterForClass: (recoveredValue29).
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := recoveredValue24.
    recoveredValue32 := (self) parameterForType: ('uint32').
    (recoveredValue31) add: (recoveredValue32).
    recoveredValue33 := recoveredValue24.
    recoveredValue34 := (self) parameterForType: ('uint32').
    (recoveredValue33) add: (recoveredValue34).
    recoveredValue35 := recoveredValue24.
    recoveredValue36 := OSUInt8.
    recoveredValue37 := (self) parameterForClass: (recoveredValue36).
    (recoveredValue35) add: (recoveredValue37).
    recoveredValue38 := (recoveredValue24) asArray.
    (recoveredValue22) add: (recoveredValue38).
    recoveredValue39 := recoveredLocal2.
    (recoveredValue39) add: ('uint32').
    recoveredValue40 := recoveredLocal1.
    recoveredValue41 := OrderedCollection.
    recoveredValue42 := (recoveredValue41) new.
    recoveredValue43 := recoveredValue42.
    recoveredValue44 := OSUInt8.
    recoveredValue45 := (self) parameterForClass: (recoveredValue44).
    (recoveredValue43) add: (recoveredValue45).
    recoveredValue46 := recoveredValue42.
    recoveredValue47 := (self) parameterForType: ('uint32').
    (recoveredValue46) add: (recoveredValue47).
    recoveredValue48 := recoveredValue42.
    recoveredValue49 := (self) parameterForType: ('uint32').
    (recoveredValue48) add: (recoveredValue49).
    recoveredValue50 := recoveredValue42.
    recoveredValue51 := (self) parameterForType: ('uint32').
    (recoveredValue50) add: (recoveredValue51).
    recoveredValue52 := recoveredValue42.
    recoveredValue53 := OSUInt8.
    recoveredValue54 := (self) parameterForClass: (recoveredValue53).
    (recoveredValue52) add: (recoveredValue54).
    recoveredValue55 := (recoveredValue42) asArray.
    (recoveredValue40) add: (recoveredValue55).
    recoveredValue56 := recoveredLocal2.
    (recoveredValue56) add: ('uint32').
    recoveredValue57 := recoveredLocal1.
    recoveredValue58 := OrderedCollection.
    recoveredValue59 := (recoveredValue58) new.
    recoveredValue60 := recoveredValue59.
    recoveredValue61 := OSUInt8.
    recoveredValue62 := (self) parameterForClass: (recoveredValue61).
    (recoveredValue60) add: (recoveredValue62).
    recoveredValue63 := recoveredValue59.
    recoveredValue64 := OSIStorage.
    recoveredValue65 := (self) parameterForClass: (recoveredValue64).
    (recoveredValue63) add: (recoveredValue65).
    recoveredValue66 := recoveredValue59.
    recoveredValue67 := (self) parameterForType: ('uint32').
    (recoveredValue66) add: (recoveredValue67).
    recoveredValue68 := recoveredValue59.
    recoveredValue69 := OSUInt8.
    recoveredValue70 := (self) parameterForClass: (recoveredValue69).
    (recoveredValue68) add: (recoveredValue70).
    recoveredValue71 := recoveredValue59.
    recoveredValue72 := (self) parameterForType: ('uint32').
    (recoveredValue71) add: (recoveredValue72).
    recoveredValue73 := recoveredValue59.
    recoveredValue74 := OSUInt8.
    recoveredValue75 := (self) parameterForClass: (recoveredValue74).
    (recoveredValue73) add: (recoveredValue75).
    recoveredValue76 := (recoveredValue59) asArray.
    (recoveredValue57) add: (recoveredValue76).
    recoveredValue77 := recoveredLocal2.
    (recoveredValue77) add: ('uint32').
    recoveredValue78 := recoveredLocal1.
    recoveredValue79 := OrderedCollection.
    recoveredValue80 := (recoveredValue79) new.
    recoveredValue81 := recoveredValue80.
    recoveredValue82 := (self) parameterForType: ('uint32').
    (recoveredValue81) add: (recoveredValue82).
    recoveredValue83 := recoveredValue80.
    recoveredValue84 := OSIid.
    recoveredValue85 := (self) parameterForClass: (recoveredValue84).
    (recoveredValue83) add: (recoveredValue85).
    recoveredValue86 := recoveredValue80.
    recoveredValue87 := OSUInt8.
    recoveredValue88 := (self) parameterForClass: (recoveredValue87).
    (recoveredValue86) add: (recoveredValue88).
    recoveredValue89 := recoveredValue80.
    recoveredValue90 := OSIStorage.
    recoveredValue91 := (self) parameterForClass: (recoveredValue90).
    (recoveredValue89) add: (recoveredValue91).
    recoveredValue92 := (recoveredValue80) asArray.
    (recoveredValue78) add: (recoveredValue92).
    recoveredValue93 := recoveredLocal2.
    (recoveredValue93) add: ('uint32').
    recoveredValue94 := recoveredLocal1.
    recoveredValue95 := OrderedCollection.
    recoveredValue96 := (recoveredValue95) new.
    recoveredValue97 := recoveredValue96.
    recoveredValue98 := OSUInt8.
    recoveredValue99 := (self) parameterForClass: (recoveredValue98).
    (recoveredValue97) add: (recoveredValue99).
    recoveredValue100 := recoveredValue96.
    recoveredValue101 := OSIStorage.
    recoveredValue102 := (self) parameterForClass: (recoveredValue101).
    (recoveredValue100) add: (recoveredValue102).
    recoveredValue103 := recoveredValue96.
    recoveredValue104 := OSUInt8.
    recoveredValue105 := (self) parameterForClass: (recoveredValue104).
    (recoveredValue103) add: (recoveredValue105).
    recoveredValue106 := recoveredValue96.
    recoveredValue107 := (self) parameterForType: ('uint32').
    (recoveredValue106) add: (recoveredValue107).
    recoveredValue108 := (recoveredValue96) asArray.
    (recoveredValue94) add: (recoveredValue108).
    recoveredValue109 := recoveredLocal2.
    (recoveredValue109) add: ('uint32').
    recoveredValue110 := recoveredLocal1.
    recoveredValue111 := OrderedCollection.
    recoveredValue112 := (recoveredValue111) new.
    recoveredValue113 := recoveredValue112.
    recoveredValue114 := (self) parameterForType: ('uint32').
    (recoveredValue113) add: (recoveredValue114).
    recoveredValue115 := (recoveredValue112) asArray.
    (recoveredValue110) add: (recoveredValue115).
    recoveredValue116 := recoveredLocal2.
    (recoveredValue116) add: ('uint32').
    recoveredValue117 := recoveredLocal1.
    (recoveredValue117) add: (#()).
    recoveredValue118 := recoveredLocal2.
    (recoveredValue118) add: ('uint32').
    recoveredValue119 := recoveredLocal1.
    recoveredValue120 := OrderedCollection.
    recoveredValue121 := (recoveredValue120) new.
    recoveredValue122 := recoveredValue121.
    recoveredValue123 := (self) parameterForType: ('uint32').
    (recoveredValue122) add: (recoveredValue123).
    recoveredValue124 := recoveredValue121.
    recoveredValue125 := OSUInt8.
    recoveredValue126 := (self) parameterForClass: (recoveredValue125).
    (recoveredValue124) add: (recoveredValue126).
    recoveredValue127 := recoveredValue121.
    recoveredValue128 := (self) parameterForType: ('uint32').
    (recoveredValue127) add: (recoveredValue128).
    recoveredValue129 := recoveredValue121.
    recoveredValue130 := OSUInt8.
    recoveredValue131 := (self) parameterForClass: (recoveredValue130).
    (recoveredValue129) add: (recoveredValue131).
    recoveredValue132 := (recoveredValue121) asArray.
    (recoveredValue119) add: (recoveredValue132).
    recoveredValue133 := recoveredLocal2.
    (recoveredValue133) add: ('uint32').
    recoveredValue134 := recoveredLocal1.
    recoveredValue135 := OrderedCollection.
    recoveredValue136 := (recoveredValue135) new.
    recoveredValue137 := recoveredValue136.
    recoveredValue138 := OSUInt8.
    recoveredValue139 := (self) parameterForClass: (recoveredValue138).
    (recoveredValue137) add: (recoveredValue139).
    recoveredValue140 := (recoveredValue136) asArray.
    (recoveredValue134) add: (recoveredValue140).
    recoveredValue141 := recoveredLocal2.
    (recoveredValue141) add: ('uint32').
    recoveredValue142 := recoveredLocal1.
    recoveredValue143 := OrderedCollection.
    recoveredValue144 := (recoveredValue143) new.
    recoveredValue145 := recoveredValue144.
    recoveredValue146 := OSUInt8.
    recoveredValue147 := (self) parameterForClass: (recoveredValue146).
    (recoveredValue145) add: (recoveredValue147).
    recoveredValue148 := recoveredValue144.
    recoveredValue149 := OSUInt8.
    recoveredValue150 := (self) parameterForClass: (recoveredValue149).
    (recoveredValue148) add: (recoveredValue150).
    recoveredValue151 := (recoveredValue144) asArray.
    (recoveredValue142) add: (recoveredValue151).
    recoveredValue152 := recoveredLocal2.
    (recoveredValue152) add: ('uint32').
    recoveredValue153 := recoveredLocal1.
    recoveredValue154 := OrderedCollection.
    recoveredValue155 := (recoveredValue154) new.
    recoveredValue156 := recoveredValue155.
    recoveredValue157 := OSUInt8.
    recoveredValue158 := (self) parameterForClass: (recoveredValue157).
    (recoveredValue156) add: (recoveredValue158).
    recoveredValue159 := recoveredValue155.
    recoveredValue160 := OSFiletime.
    recoveredValue161 := (self) parameterForClass: (recoveredValue160).
    (recoveredValue159) add: (recoveredValue161).
    recoveredValue162 := recoveredValue155.
    recoveredValue163 := OSFiletime.
    recoveredValue164 := (self) parameterForClass: (recoveredValue163).
    (recoveredValue162) add: (recoveredValue164).
    recoveredValue165 := recoveredValue155.
    recoveredValue166 := OSFiletime.
    recoveredValue167 := (self) parameterForClass: (recoveredValue166).
    (recoveredValue165) add: (recoveredValue167).
    recoveredValue168 := (recoveredValue155) asArray.
    (recoveredValue153) add: (recoveredValue168).
    recoveredValue169 := recoveredLocal2.
    (recoveredValue169) add: ('uint32').
    recoveredValue170 := recoveredLocal1.
    recoveredValue171 := OrderedCollection.
    recoveredValue172 := (recoveredValue171) new.
    recoveredValue173 := recoveredValue172.
    recoveredValue174 := OSClsid.
    recoveredValue175 := (self) parameterForClass: (recoveredValue174).
    (recoveredValue173) add: (recoveredValue175).
    recoveredValue176 := (recoveredValue172) asArray.
    (recoveredValue170) add: (recoveredValue176).
    recoveredValue177 := recoveredLocal2.
    (recoveredValue177) add: ('uint32').
    recoveredValue178 := recoveredLocal1.
    recoveredValue179 := OrderedCollection.
    recoveredValue180 := (recoveredValue179) new.
    recoveredValue181 := recoveredValue180.
    recoveredValue182 := (self) parameterForType: ('uint32').
    (recoveredValue181) add: (recoveredValue182).
    recoveredValue183 := recoveredValue180.
    recoveredValue184 := (self) parameterForType: ('uint32').
    (recoveredValue183) add: (recoveredValue184).
    recoveredValue185 := (recoveredValue180) asArray.
    (recoveredValue178) add: (recoveredValue185).
    recoveredValue186 := recoveredLocal2.
    (recoveredValue186) add: ('uint32').
    recoveredValue187 := recoveredLocal1.
    recoveredValue188 := OrderedCollection.
    recoveredValue189 := (recoveredValue188) new.
    recoveredValue190 := recoveredValue189.
    recoveredValue191 := OSStatstg.
    recoveredValue192 := (self) parameterForClass: (recoveredValue191).
    (recoveredValue190) add: (recoveredValue192).
    recoveredValue193 := recoveredValue189.
    recoveredValue194 := (self) parameterForType: ('uint32').
    (recoveredValue193) add: (recoveredValue194).
    recoveredValue195 := (recoveredValue189) asArray.
    (recoveredValue187) add: (recoveredValue195).
    recoveredValue196 := Array.
    recoveredValue197 := recoveredLocal2.
    recoveredValue198 := recoveredLocal1.
    recoveredValue199 := (recoveredValue196) with: (recoveredValue197) with: (recoveredValue198).
    ^recoveredValue199
! !

