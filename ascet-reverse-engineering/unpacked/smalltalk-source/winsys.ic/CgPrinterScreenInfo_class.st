"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000938; bytecode file offset 0x7cc7c"
!CgPrinterScreenInfo class methodsFor: 'recovered'!
standardPageSizes
    | recoveredValue0 |
    recoveredValue0 := StandardPageSizes.
    ^recoveredValue0
! !

"winsys.ic method 0x20012680; bytecode file offset 0x8e858"
!CgPrinterScreenInfo class methodsFor: 'recovered'!
driverName: recoveredArg1 deviceName: recoveredArg2 outputMedium: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) driverName: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) deviceName: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) outputMedium: (recoveredValue6).
    recoveredValue7 := (recoveredValue0) initialize.
    ^recoveredValue7
! !

"winsys.ic method 0x20049a60; bytecode file offset 0xc5d74"
!CgPrinterScreenInfo class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 recoveredValue151 recoveredValue152 recoveredValue153 recoveredValue154 recoveredValue155 recoveredValue156 recoveredValue157 recoveredValue158 recoveredValue159 recoveredValue160 recoveredValue161 recoveredValue162 recoveredValue163 recoveredValue164 recoveredValue165 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (50).
    recoveredValue2 := recoveredValue1.
    StandardPageSizes := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := Association.
    recoveredValue5 := (#[0 0 0 0 0 0 33 64]) @ (11).
    recoveredValue6 := (recoveredValue4) key: ('Letter') value: (recoveredValue5).
    (recoveredValue3) at: (1) put: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := Association.
    recoveredValue9 := (#[0 0 0 0 0 0 33 64]) @ (11).
    recoveredValue10 := (recoveredValue8) key: ('LetterSmall') value: (recoveredValue9).
    (recoveredValue7) at: (2) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := Association.
    recoveredValue13 := (11) @ (17).
    recoveredValue14 := (recoveredValue12) key: ('Tabloid') value: (recoveredValue13).
    (recoveredValue11) at: (3) put: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := Association.
    recoveredValue17 := (17) @ (11).
    recoveredValue18 := (recoveredValue16) key: ('Ledger') value: (recoveredValue17).
    (recoveredValue15) at: (4) put: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := Association.
    recoveredValue21 := (#[0 0 0 0 0 0 33 64]) @ (14).
    recoveredValue22 := (recoveredValue20) key: ('Legal') value: (recoveredValue21).
    (recoveredValue19) at: (5) put: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := Association.
    recoveredValue25 := (#[0 0 0 0 0 0 22 64]) @ (#[0 0 0 0 0 0 33 64]).
    recoveredValue26 := (recoveredValue24) key: ('Statement') value: (recoveredValue25).
    (recoveredValue23) at: (6) put: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := Association.
    recoveredValue29 := (#[0 0 0 0 0 0 29 64]) @ (#[0 0 0 0 0 0 37 64]).
    recoveredValue30 := (recoveredValue28) key: ('Executive') value: (recoveredValue29).
    (recoveredValue27) at: (7) put: (recoveredValue30).
    recoveredValue31 := recoveredValue1.
    recoveredValue32 := Association.
    recoveredValue33 := (#[105 44 22 139 197 98 39 64]) @ (#[23 145 72 36 18 137 48 64]).
    recoveredValue34 := (recoveredValue32) key: ('A3') value: (recoveredValue33).
    (recoveredValue31) at: (8) put: (recoveredValue34).
    recoveredValue35 := recoveredValue1.
    recoveredValue36 := Association.
    recoveredValue37 := (#[34 145 72 36 18 137 32 64]) @ (#[105 44 22 139 197 98 39 64]).
    recoveredValue38 := (recoveredValue36) key: ('A4') value: (recoveredValue37).
    (recoveredValue35) at: (9) put: (recoveredValue38).
    recoveredValue39 := recoveredValue1.
    recoveredValue40 := Association.
    recoveredValue41 := (#[34 145 72 36 18 137 32 64]) @ (#[105 44 22 139 197 98 39 64]).
    recoveredValue42 := (recoveredValue40) key: ('A4Small') value: (recoveredValue41).
    (recoveredValue39) at: (10) put: (recoveredValue42).
    recoveredValue43 := recoveredValue1.
    recoveredValue44 := Association.
    recoveredValue45 := (#[215 233 116 58 157 78 23 64]) @ (#[34 145 72 36 18 137 32 64]).
    recoveredValue46 := (recoveredValue44) key: ('A5') value: (recoveredValue45).
    (recoveredValue43) at: (11) put: (recoveredValue46).
    recoveredValue47 := recoveredValue1.
    recoveredValue48 := Association.
    recoveredValue49 := (#[236 245 122 189 94 175 35 64]) @ (#[221 251 253 126 191 223 43 64]).
    recoveredValue50 := (recoveredValue48) key: ('B4') value: (recoveredValue49).
    (recoveredValue47) at: (12) put: (recoveredValue50).
    recoveredValue51 := recoveredValue1.
    recoveredValue52 := Association.
    recoveredValue53 := (#[41 149 74 165 82 169 28 64]) @ (#[159 199 227 241 120 60 36 64]).
    recoveredValue54 := (recoveredValue52) key: ('B5') value: (recoveredValue53).
    (recoveredValue51) at: (13) put: (recoveredValue54).
    recoveredValue55 := recoveredValue1.
    recoveredValue56 := Association.
    recoveredValue57 := (#[0 0 0 0 0 0 33 64]) @ (13).
    recoveredValue58 := (recoveredValue56) key: ('Folio') value: (recoveredValue57).
    (recoveredValue55) at: (14) put: (recoveredValue58).
    recoveredValue59 := recoveredValue1.
    recoveredValue60 := Association.
    recoveredValue61 := (#[188 221 110 183 219 237 32 64]) @ (#[230 116 58 157 78 167 37 64]).
    recoveredValue62 := (recoveredValue60) key: ('Quarto') value: (recoveredValue61).
    (recoveredValue59) at: (15) put: (recoveredValue62).
    recoveredValue63 := recoveredValue1.
    recoveredValue64 := Association.
    recoveredValue65 := (10) @ (14).
    recoveredValue66 := (recoveredValue64) key: ('10x14') value: (recoveredValue65).
    (recoveredValue63) at: (16) put: (recoveredValue66).
    recoveredValue67 := recoveredValue1.
    recoveredValue68 := Association.
    recoveredValue69 := (11) @ (17).
    recoveredValue70 := (recoveredValue68) key: ('11x17') value: (recoveredValue69).
    (recoveredValue67) at: (17) put: (recoveredValue70).
    recoveredValue71 := recoveredValue1.
    recoveredValue72 := Association.
    recoveredValue73 := (#[0 0 0 0 0 0 33 64]) @ (11).
    recoveredValue74 := (recoveredValue72) key: ('Note') value: (recoveredValue73).
    (recoveredValue71) at: (18) put: (recoveredValue74).
    recoveredValue75 := recoveredValue1.
    recoveredValue76 := Association.
    recoveredValue77 := (#[0 0 0 0 0 0 15 64]) @ (#[0 0 0 0 0 192 33 64]).
    recoveredValue78 := (recoveredValue76) key: ('Env9') value: (recoveredValue77).
    (recoveredValue75) at: (19) put: (recoveredValue78).
    recoveredValue79 := recoveredValue1.
    recoveredValue80 := Association.
    recoveredValue81 := (#[0 0 0 0 0 128 16 64]) @ (#[0 0 0 0 0 0 35 64]).
    recoveredValue82 := (recoveredValue80) key: ('Env10') value: (recoveredValue81).
    (recoveredValue79) at: (20) put: (recoveredValue82).
    recoveredValue83 := recoveredValue1.
    recoveredValue84 := Association.
    recoveredValue85 := (#[0 0 0 0 0 0 18 64]) @ (#[0 0 0 0 0 192 36 64]).
    recoveredValue86 := (recoveredValue84) key: ('Env11') value: (recoveredValue85).
    (recoveredValue83) at: (21) put: (recoveredValue86).
    recoveredValue87 := recoveredValue1.
    recoveredValue88 := Association.
    recoveredValue89 := (#[0 0 0 0 0 0 19 64]) @ (11).
    recoveredValue90 := (recoveredValue88) key: ('Env12') value: (recoveredValue89).
    (recoveredValue87) at: (22) put: (recoveredValue90).
    recoveredValue91 := recoveredValue1.
    recoveredValue92 := Association.
    recoveredValue93 := (5) @ (#[0 0 0 0 0 0 39 64]).
    recoveredValue94 := (recoveredValue92) key: ('Env14') value: (recoveredValue93).
    (recoveredValue91) at: (23) put: (recoveredValue94).
    recoveredValue95 := recoveredValue1.
    recoveredValue96 := Association.
    recoveredValue97 := (17) @ (22).
    recoveredValue98 := (recoveredValue96) key: ('Csheet') value: (recoveredValue97).
    (recoveredValue95) at: (24) put: (recoveredValue98).
    recoveredValue99 := recoveredValue1.
    recoveredValue100 := Association.
    recoveredValue101 := (22) @ (34).
    recoveredValue102 := (recoveredValue100) key: ('Dsheet') value: (recoveredValue101).
    (recoveredValue99) at: (25) put: (recoveredValue102).
    recoveredValue103 := recoveredValue1.
    recoveredValue104 := Association.
    recoveredValue105 := (34) @ (44).
    recoveredValue106 := (recoveredValue104) key: ('Esheet') value: (recoveredValue105).
    (recoveredValue103) at: (26) put: (recoveredValue106).
    recoveredValue107 := recoveredValue1.
    recoveredValue108 := Association.
    recoveredValue109 := (#[81 42 149 74 165 82 17 64]) @ (#[87 42 149 74 165 82 33 64]).
    recoveredValue110 := (recoveredValue108) key: ('EnvDL') value: (recoveredValue109).
    (recoveredValue107) at: (27) put: (recoveredValue110).
    recoveredValue111 := recoveredValue1.
    recoveredValue112 := Association.
    recoveredValue113 := (#[95 48 24 12 6 131 25 64]) @ (#[0 129 64 32 16 8 34 64]).
    recoveredValue114 := (recoveredValue112) key: ('EnvC5') value: (recoveredValue113).
    (recoveredValue111) at: (28) put: (recoveredValue114).
    recoveredValue115 := recoveredValue1.
    recoveredValue116 := Association.
    recoveredValue117 := (#[83 48 24 12 6 131 41 64]) @ (#[251 128 64 32 16 8 50 64]).
    recoveredValue118 := (recoveredValue116) key: ('EnvC3') value: (recoveredValue117).
    (recoveredValue115) at: (29) put: (recoveredValue118).
    recoveredValue119 := recoveredValue1.
    recoveredValue120 := Association.
    recoveredValue121 := (#[0 129 64 32 16 8 34 64]) @ (#[83 48 24 12 6 131 41 64]).
    recoveredValue122 := (recoveredValue120) key: ('EnvC4') value: (recoveredValue121).
    (recoveredValue119) at: (30) put: (recoveredValue122).
    recoveredValue123 := recoveredValue1.
    recoveredValue124 := Association.
    recoveredValue125 := (#[122 62 159 207 231 243 17 64]) @ (#[95 48 24 12 6 131 25 64]).
    recoveredValue126 := (recoveredValue124) key: ('EnvC6') value: (recoveredValue125).
    (recoveredValue123) at: (31) put: (recoveredValue126).
    recoveredValue127 := recoveredValue1.
    recoveredValue128 := Association.
    recoveredValue129 := (#[122 62 159 207 231 243 17 64]) @ (#[0 129 64 32 16 8 34 64]).
    recoveredValue130 := (recoveredValue128) key: ('EnvC65') value: (recoveredValue129).
    (recoveredValue127) at: (32) put: (recoveredValue130).
    recoveredValue131 := recoveredValue1.
    recoveredValue132 := Association.
    recoveredValue133 := (#[236 245 122 189 94 175 35 64]) @ (#[120 185 92 46 151 203 43 64]).
    recoveredValue134 := (recoveredValue132) key: ('EnvB4') value: (recoveredValue133).
    (recoveredValue131) at: (33) put: (recoveredValue134).
    recoveredValue135 := recoveredValue1.
    recoveredValue136 := Association.
    recoveredValue137 := (#[242 118 187 221 110 183 27 64]) @ (#[236 245 122 189 94 175 35 64]).
    recoveredValue138 := (recoveredValue136) key: ('EnvB5') value: (recoveredValue137).
    (recoveredValue135) at: (34) put: (recoveredValue138).
    recoveredValue139 := recoveredValue1.
    recoveredValue140 := Association.
    recoveredValue141 := (#[242 118 187 221 110 183 27 64]) @ (#[241 245 122 189 94 175 19 64]).
    recoveredValue142 := (recoveredValue140) key: ('EnvB6') value: (recoveredValue141).
    (recoveredValue139) at: (35) put: (recoveredValue142).
    recoveredValue143 := recoveredValue1.
    recoveredValue144 := Association.
    recoveredValue145 := (#[81 42 149 74 165 82 17 64]) @ (#[135 195 225 112 56 28 34 64]).
    recoveredValue146 := (recoveredValue144) key: ('EnvItaly') value: (recoveredValue145).
    (recoveredValue143) at: (36) put: (recoveredValue146).
    recoveredValue147 := recoveredValue1.
    recoveredValue148 := Association.
    recoveredValue149 := (#[0 0 0 0 0 0 15 64]) @ (#[0 0 0 0 0 0 30 64]).
    recoveredValue150 := (recoveredValue148) key: ('EnvMonarch') value: (recoveredValue149).
    (recoveredValue147) at: (37) put: (recoveredValue150).
    recoveredValue151 := recoveredValue1.
    recoveredValue152 := Association.
    recoveredValue153 := (#[0 0 0 0 0 0 13 64]) @ (#[0 0 0 0 0 0 26 64]).
    recoveredValue154 := (recoveredValue152) key: ('EnvPersonal') value: (recoveredValue153).
    (recoveredValue151) at: (38) put: (recoveredValue154).
    recoveredValue155 := recoveredValue1.
    recoveredValue156 := Association.
    recoveredValue157 := (#[0 0 0 0 0 192 45 64]) @ (11).
    recoveredValue158 := (recoveredValue156) key: ('FanfoldUS') value: (recoveredValue157).
    (recoveredValue155) at: (39) put: (recoveredValue158).
    recoveredValue159 := recoveredValue1.
    recoveredValue160 := Association.
    recoveredValue161 := (#[0 0 0 0 0 0 33 64]) @ (12).
    recoveredValue162 := (recoveredValue160) key: ('FanfoldStdGerman') value: (recoveredValue161).
    (recoveredValue159) at: (40) put: (recoveredValue162).
    recoveredValue163 := Association.
    recoveredValue164 := (#[0 0 0 0 0 0 33 64]) @ (13).
    recoveredValue165 := (recoveredValue163) key: ('FanfoldLglGerman') value: (recoveredValue164).
    (recoveredValue1) at: (41) put: (recoveredValue165).
    ^self
! !

