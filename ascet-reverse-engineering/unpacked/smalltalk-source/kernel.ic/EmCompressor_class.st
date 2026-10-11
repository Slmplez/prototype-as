"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200015f8; bytecode file offset 0x4c844"
!EmCompressor class methodsFor: 'recovered'!
baseMap
    | recoveredValue0 |
    recoveredValue0 := BaseMap.
    ^recoveredValue0
! !

"kernel.ic method 0x20001868; bytecode file offset 0x4c844"
!EmCompressor class methodsFor: 'recovered'!
baseTable
    | recoveredValue0 |
    recoveredValue0 := BaseTable.
    ^recoveredValue0
! !

"kernel.ic method 0x20017204; bytecode file offset 0x62140"
!EmCompressor class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeBaseMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) initializeDecompressionArray.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseMap.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            BaseTable := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseMap.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block28008fb4Arg1 | 
    | block28008fb4Value0 block28008fb4Value1 block28008fb4Value2 block28008fb4Value3 block28008fb4Value4 block28008fb4Value5 |
    block28008fb4Value0 := BaseTable.
    block28008fb4Value1 := block28008fb4Arg1.
    block28008fb4Value2 := (block28008fb4Value1) value.
    block28008fb4Value3 := block28008fb4Arg1.
    block28008fb4Value4 := (block28008fb4Value3) key.
    block28008fb4Value5 := (block28008fb4Value0) at: (block28008fb4Value2) put: (block28008fb4Value4).
    block28008fb4Value5
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200330a0; bytecode file offset 0x7e1b8"
!EmCompressor class methodsFor: 'recovered'!
initializeBaseMap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    BaseMap := recoveredValue1.
    recoveredValue2 := BaseMap.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('ifTrue: ') put: (1).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('self') put: (2).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('receiver') put: (3).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('ifFalse: ') put: (4).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('the') put: (5).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('Private') put: (6).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('Answer') put: (7).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('CursorManager') put: (8).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('aString') put: (9).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('application') put: (10).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('selectedApplication') put: (11).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('selected') put: (12).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('Return') put: (13).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: ('aStream') put: (14).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: ('label: ') put: (15).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: ('class') put: (16).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: ('at: ') put: (17).
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: ('with: ') put: (18).
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: ('anInteger') put: (19).
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: ('OrderedCollection') put: (20).
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: ('answer') put: (21).
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: ('applications') put: (22).
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) at: ('index') put: (23).
    recoveredValue26 := recoveredValue2.
    (recoveredValue26) at: ('aCollection') put: (24).
    recoveredValue27 := recoveredValue2.
    (recoveredValue27) at: ('nextPutAll: ') put: (25).
    recoveredValue28 := recoveredValue2.
    (recoveredValue28) at: ('selectedApplications') put: (26).
    recoveredValue29 := recoveredValue2.
    (recoveredValue29) at: ('selector') put: (27).
    recoveredValue30 := recoveredValue2.
    (recoveredValue30) at: ('add: ') put: (28).
    recoveredValue31 := recoveredValue2.
    (recoveredValue31) at: ('method') put: (29).
    recoveredValue32 := recoveredValue2.
    (recoveredValue32) at: ('collection') put: (30).
    recoveredValue33 := recoveredValue2.
    (recoveredValue33) at: ('anObject') put: (31).
    recoveredValue34 := recoveredValue2.
    (recoveredValue34) at: ('change') put: (32).
    recoveredValue35 := recoveredValue2.
    (recoveredValue35) at: ('ifAbsent: ') put: (33).
    recoveredValue36 := recoveredValue2.
    (recoveredValue36) at: ('aRectangle') put: (34).
    recoveredValue37 := recoveredValue2.
    (recoveredValue37) at: ('enable: ') put: (35).
    recoveredValue38 := recoveredValue2.
    (recoveredValue38) at: ('aCharacter') put: (36).
    recoveredValue39 := recoveredValue2.
    (recoveredValue39) at: ('edition') put: (37).
    recoveredValue40 := recoveredValue2.
    (recoveredValue40) at: ('current') put: (38).
    recoveredValue41 := recoveredValue2.
    (recoveredValue41) at: ('isNil') put: (39).
    recoveredValue42 := recoveredValue2.
    (recoveredValue42) at: ('put: ') put: (40).
    recoveredValue43 := recoveredValue2.
    (recoveredValue43) at: ('false') put: (41).
    recoveredValue44 := recoveredValue2.
    (recoveredValue44) at: ('aFileStream') put: (42).
    recoveredValue45 := recoveredValue2.
    (recoveredValue45) at: ('selectedClasses') put: (43).
    recoveredValue46 := recoveredValue2.
    (recoveredValue46) at: ('aClass') put: (44).
    recoveredValue47 := recoveredValue2.
    (recoveredValue47) at: ('result') put: (45).
    recoveredValue48 := recoveredValue2.
    (recoveredValue48) at: ('changed: ') put: (46).
    recoveredValue49 := recoveredValue2.
    (recoveredValue49) at: ('size') put: (47).
    recoveredValue50 := recoveredValue2.
    (recoveredValue50) at: ('classes') put: (48).
    recoveredValue51 := recoveredValue2.
    (recoveredValue51) at: ('aPoint') put: (49).
    recoveredValue52 := recoveredValue2.
    (recoveredValue52) at: ('initialize') put: (50).
    recoveredValue53 := recoveredValue2.
    (recoveredValue53) at: ('position') put: (51).
    recoveredValue54 := recoveredValue2.
    (recoveredValue54) at: ('true') put: (52).
    recoveredValue55 := recoveredValue2.
    (recoveredValue55) at: ('origin') put: (53).
    recoveredValue56 := recoveredValue2.
    (recoveredValue56) at: ('selection') put: (54).
    recoveredValue57 := recoveredValue2.
    (recoveredValue57) at: ('contents') put: (55).
    recoveredValue58 := recoveredValue2.
    (recoveredValue58) at: ('which') put: (56).
    recoveredValue59 := recoveredValue2.
    (recoveredValue59) at: ('configuration') put: (57).
    recoveredValue60 := recoveredValue2.
    (recoveredValue60) at: ('anApplication') put: (58).
    recoveredValue61 := recoveredValue2.
    (recoveredValue61) at: ('name') put: (59).
    recoveredValue62 := recoveredValue2.
    (recoveredValue62) at: ('aSymbol') put: (60).
    recoveredValue63 := recoveredValue2.
    (recoveredValue63) at: ('HierarchicalMenu') put: (61).
    recoveredValue64 := recoveredValue2.
    (recoveredValue64) at: ('value') put: (62).
    recoveredValue65 := recoveredValue2.
    (recoveredValue65) at: ('includes: ') put: (63).
    recoveredValue66 := recoveredValue2.
    (recoveredValue66) at: ('methods') put: (64).
    recoveredValue67 := recoveredValue2.
    (recoveredValue67) at: ('symbol') put: (65).
    recoveredValue68 := recoveredValue2.
    (recoveredValue68) at: ('default') put: (66).
    recoveredValue69 := recoveredValue2.
    (recoveredValue69) at: ('framingBlock: ') put: (67).
    recoveredValue70 := recoveredValue2.
    (recoveredValue70) at: ('yourself') put: (68).
    recoveredValue71 := recoveredValue2.
    (recoveredValue71) at: ('aTopPane') put: (69).
    recoveredValue72 := recoveredValue2.
    (recoveredValue72) at: ('aBoolean') put: (70).
    recoveredValue73 := recoveredValue2.
    (recoveredValue73) at: ('loadedIndicator') put: (71).
    recoveredValue74 := recoveredValue2.
    (recoveredValue74) at: ('isEmpty') put: (72).
    recoveredValue75 := recoveredValue2.
    (recoveredValue75) at: ('instance') put: (73).
    recoveredValue76 := recoveredValue2.
    (recoveredValue76) at: ('new') put: (74).
    recoveredValue77 := recoveredValue2.
    (recoveredValue77) at: ('pane') put: (75).
    recoveredValue78 := recoveredValue2.
    (recoveredValue78) at: ('execute') put: (76).
    recoveredValue79 := recoveredValue2.
    (recoveredValue79) at: ('library') put: (77).
    recoveredValue80 := recoveredValue2.
    (recoveredValue80) at: ('theApplication') put: (78).
    recoveredValue81 := recoveredValue2.
    (recoveredValue81) at: ('Association') put: (79).
    recoveredValue82 := recoveredValue2.
    (recoveredValue82) at: ('whileTrue: ') put: (80).
    recoveredValue83 := recoveredValue2.
    (recoveredValue83) at: ('and: ') put: (81).
    recoveredValue84 := recoveredValue2.
    (recoveredValue84) at: ('Initialize') put: (82).
    recoveredValue85 := recoveredValue2.
    (recoveredValue85) at: ('lineHeight') put: (83).
    recoveredValue86 := recoveredValue2.
    (recoveredValue86) at: ('do: ') put: (84).
    recoveredValue87 := recoveredValue2.
    (recoveredValue87) at: ('normal') put: (85).
    recoveredValue88 := recoveredValue2.
    (recoveredValue88) at: ('editions') put: (86).
    recoveredValue89 := recoveredValue2.
    (recoveredValue89) at: ('selectedClass') put: (87).
    recoveredValue90 := recoveredValue2.
    (recoveredValue90) at: ('System') put: (88).
    recoveredValue91 := recoveredValue2.
    (recoveredValue91) at: ('that') put: (89).
    recoveredValue92 := recoveredValue2.
    (recoveredValue92) at: ('printString') put: (90).
    recoveredValue93 := recoveredValue2.
    (recoveredValue93) at: ('height') put: (91).
    recoveredValue94 := recoveredValue2.
    (recoveredValue94) at: ('value: ') put: (92).
    recoveredValue95 := recoveredValue2.
    (recoveredValue95) at: ('signature') put: (93).
    recoveredValue96 := recoveredValue2.
    (recoveredValue96) at: ('notNil') put: (94).
    recoveredValue97 := recoveredValue2.
    (recoveredValue97) at: ('Display') put: (95).
    recoveredValue98 := recoveredValue2.
    (recoveredValue98) at: ('version') put: (96).
    recoveredValue99 := recoveredValue2.
    (recoveredValue99) at: ('errorReporter') put: (97).
    recoveredValue100 := recoveredValue2.
    (recoveredValue100) at: ('to: ') put: (98).
    recoveredValue101 := recoveredValue2.
    (recoveredValue101) at: ('directoryAndFileName') put: (99).
    recoveredValue102 := recoveredValue2.
    (recoveredValue102) at: ('for') put: (100).
    recoveredValue103 := recoveredValue2.
    (recoveredValue103) at: ('timeStamp') put: (101).
    recoveredValue104 := recoveredValue2.
    (recoveredValue104) at: ('unloadedIndicator') put: (102).
    recoveredValue105 := recoveredValue2.
    (recoveredValue105) at: ('dictionary') put: (103).
    recoveredValue106 := recoveredValue2.
    (recoveredValue106) at: ('withParms: ') put: (104).
    recoveredValue107 := recoveredValue2.
    (recoveredValue107) at: ('extent: ') put: (105).
    recoveredValue108 := recoveredValue2.
    (recoveredValue108) at: ('resident') put: (106).
    recoveredValue109 := recoveredValue2.
    (recoveredValue109) at: ('frame') put: (107).
    recoveredValue110 := recoveredValue2.
    (recoveredValue110) at: ('aBlock') put: (108).
    recoveredValue111 := recoveredValue2.
    (recoveredValue111) at: ('description') put: (109).
    recoveredValue112 := recoveredValue2.
    (recoveredValue112) at: ('user') put: (110).
    recoveredValue113 := recoveredValue2.
    (recoveredValue113) at: ('whileFalse: ') put: (111).
    recoveredValue114 := recoveredValue2.
    (recoveredValue114) at: ('message: ') put: (112).
    recoveredValue115 := recoveredValue2.
    (recoveredValue115) at: ('width') put: (113).
    recoveredValue116 := recoveredValue2.
    (recoveredValue116) at: ('selectedMethods') put: (114).
    recoveredValue117 := recoveredValue2.
    (recoveredValue117) at: ('offset') put: (115).
    recoveredValue118 := recoveredValue2.
    (recoveredValue118) at: ('with') put: (116).
    recoveredValue119 := recoveredValue2.
    (recoveredValue119) at: ('from') put: (117).
    recoveredValue120 := recoveredValue2.
    (recoveredValue120) at: ('aPointOfView') put: (118).
    recoveredValue121 := recoveredValue2.
    (recoveredValue121) at: ('and') put: (119).
    recoveredValue122 := recoveredValue2.
    (recoveredValue122) at: ('message') put: (120).
    recoveredValue123 := recoveredValue2.
    (recoveredValue123) at: ('startPosition') put: (121).
    recoveredValue124 := recoveredValue2.
    (recoveredValue124) at: ('from: ') put: (122).
    recoveredValue125 := recoveredValue2.
    (recoveredValue125) at: ('prerequisites') put: (123).
    recoveredValue126 := recoveredValue2.
    (recoveredValue126) at: ('corner') put: (124).
    recoveredValue127 := recoveredValue2.
    (recoveredValue127) at: ('aDispatcher') put: (125).
    recoveredValue128 := recoveredValue2.
    (recoveredValue128) at: ('primitive: ') put: (126).
    (recoveredValue2) at: ('nextPut: ') put: (127).
    ^self
! !

"kernel.ic method 0x20033704; bytecode file offset 0x7e81c"
!EmCompressor class methodsFor: 'recovered'!
initializeDecompressionArray
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (127).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: (1) put: ('receiver').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: (2) put: ('the').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: (3) put: ('self').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: (4) put: (' := ').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: (5) put: (': ').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: (6) put: ('Answer').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: (7) put: ('Integer').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) at: (8) put: ('String').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) at: (9) put: ('answer').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) at: (10) put: ('index').
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) at: (11) put: ('Character').
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) at: (12) put: ('True').
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) at: (13) put: ('Stream').
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) at: (14) put: ('Collection').
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) at: (15) put: ('Point').
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) at: (16) put: ('Object').
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) at: (17) put: ('Rectangle').
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) at: (18) put: (': [').
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) at: (19) put: ('False').
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) at: (20) put: ('with').
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) at: (21) put: ('Private').
    recoveredValue23 := recoveredValue1.
    (recoveredValue23) at: (22) put: ('position').
    recoveredValue24 := recoveredValue1.
    (recoveredValue24) at: (23) put: ('."').
    recoveredValue25 := recoveredValue1.
    (recoveredValue25) at: (24) put: ('primitive').
    recoveredValue26 := recoveredValue1.
    (recoveredValue26) at: (25) put: ('selected').
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) at: (26) put: ('Selection').
    recoveredValue28 := recoveredValue1.
    (recoveredValue28) at: (27) put: ('if').
    recoveredValue29 := recoveredValue1.
    (recoveredValue29) at: (28) put: ('origin').
    recoveredValue30 := recoveredValue1.
    (recoveredValue30) at: (29) put: ('selection').
    recoveredValue31 := recoveredValue1.
    (recoveredValue31) at: (30) put: ('Symbol').
    recoveredValue32 := recoveredValue1.
    (recoveredValue32) at: (31) put: ('instance').
    recoveredValue33 := recoveredValue1.
    (recoveredValue33) at: (32) put: ('class').
    recoveredValue34 := recoveredValue1.
    (recoveredValue34) at: (33) put: ('Number').
    recoveredValue35 := recoveredValue1.
    (recoveredValue35) at: (34) put: ('Cursor').
    recoveredValue36 := recoveredValue1.
    (recoveredValue36) at: (35) put: ('new').
    recoveredValue37 := recoveredValue1.
    (recoveredValue37) at: (36) put: (' - ').
    recoveredValue38 := recoveredValue1.
    (recoveredValue38) at: (37) put: ('size').
    recoveredValue39 := recoveredValue1.
    (recoveredValue39) at: (38) put: ('an').
    recoveredValue40 := recoveredValue1.
    (recoveredValue40) at: (39) put: ('corner').
    recoveredValue41 := recoveredValue1.
    (recoveredValue41) at: (40) put: ('Block').
    recoveredValue42 := recoveredValue1.
    (recoveredValue42) at: (41) put: ('display').
    recoveredValue43 := recoveredValue1.
    (recoveredValue43) at: (42) put: (': [^').
    recoveredValue44 := recoveredValue1.
    (recoveredValue44) at: (43) put: ('frame').
    recoveredValue45 := recoveredValue1.
    (recoveredValue45) at: (44) put: ('Position').
    recoveredValue46 := recoveredValue1.
    (recoveredValue46) at: (45) put: ('Display').
    recoveredValue47 := recoveredValue1.
    (recoveredValue47) at: (46) put: ('extent').
    recoveredValue48 := recoveredValue1.
    (recoveredValue48) at: (47) put: ('height').
    recoveredValue49 := recoveredValue1.
    (recoveredValue49) at: (48) put: ('source').
    recoveredValue50 := recoveredValue1.
    (recoveredValue50) at: (49) put: ('Form').
    recoveredValue51 := recoveredValue1.
    (recoveredValue51) at: (50) put: ('of').
    recoveredValue52 := recoveredValue1.
    (recoveredValue52) at: (51) put: ('Class').
    recoveredValue53 := recoveredValue1.
    (recoveredValue53) at: (52) put: ('number').
    recoveredValue54 := recoveredValue1.
    (recoveredValue54) at: (53) put: ('false').
    recoveredValue55 := recoveredValue1.
    (recoveredValue55) at: (54) put: ('pane').
    recoveredValue56 := recoveredValue1.
    (recoveredValue56) at: (55) put: ('value').
    recoveredValue57 := recoveredValue1.
    (recoveredValue57) at: (56) put: ('and').
    recoveredValue58 := recoveredValue1.
    (recoveredValue58) at: (57) put: ('Index').
    recoveredValue59 := recoveredValue1.
    (recoveredValue59) at: (58) put: ('Directory').
    recoveredValue60 := recoveredValue1.
    (recoveredValue60) at: (59) put: ('element').
    recoveredValue61 := recoveredValue1.
    (recoveredValue61) at: (60) put: ('Dispatcher').
    recoveredValue62 := recoveredValue1.
    (recoveredValue62) at: (61) put: ('next').
    recoveredValue63 := recoveredValue1.
    (recoveredValue63) at: (62) put: ('to').
    recoveredValue64 := recoveredValue1.
    (recoveredValue64) at: (63) put: ('error').
    recoveredValue65 := recoveredValue1.
    (recoveredValue65) at: (64) put: ('collection').
    recoveredValue66 := recoveredValue1.
    (recoveredValue66) at: (65) put: (' + ').
    recoveredValue67 := recoveredValue1.
    (recoveredValue67) at: (66) put: ('method').
    recoveredValue68 := recoveredValue1.
    (recoveredValue68) at: (67) put: ('true').
    recoveredValue69 := recoveredValue1.
    (recoveredValue69) at: (68) put: ('directory').
    recoveredValue70 := recoveredValue1.
    (recoveredValue70) at: (69) put: ('change').
    recoveredValue71 := recoveredValue1.
    (recoveredValue71) at: (70) put: ('is').
    recoveredValue72 := recoveredValue1.
    (recoveredValue72) at: (71) put: ('Association').
    recoveredValue73 := recoveredValue1.
    (recoveredValue73) at: (72) put: ('width').
    recoveredValue74 := recoveredValue1.
    (recoveredValue74) at: (73) put: ('dispatcher').
    recoveredValue75 := recoveredValue1.
    (recoveredValue75) at: (74) put: ('elements').
    recoveredValue76 := recoveredValue1.
    (recoveredValue76) at: (75) put: ('Dictionary').
    recoveredValue77 := recoveredValue1.
    (recoveredValue77) at: (76) put: ('Pane').
    recoveredValue78 := recoveredValue1.
    (recoveredValue78) at: (77) put: ('Array').
    recoveredValue79 := recoveredValue1.
    (recoveredValue79) at: (78) put: ('changed').
    recoveredValue80 := recoveredValue1.
    (recoveredValue80) at: (79) put: ('.  ').
    recoveredValue81 := recoveredValue1.
    (recoveredValue81) at: (80) put: ('file').
    recoveredValue82 := recoveredValue1.
    (recoveredValue82) at: (81) put: ('Corner').
    recoveredValue83 := recoveredValue1.
    (recoveredValue83) at: (82) put: ('offset').
    recoveredValue84 := recoveredValue1.
    (recoveredValue84) at: (83) put: ('contents').
    recoveredValue85 := recoveredValue1.
    (recoveredValue85) at: (84) put: ('at').
    recoveredValue86 := recoveredValue1.
    (recoveredValue86) at: (85) put: ('initialize').
    recoveredValue87 := recoveredValue1.
    (recoveredValue87) at: (86) put: ('].').
    recoveredValue88 := recoveredValue1.
    (recoveredValue88) at: (87) put: ('from').
    recoveredValue89 := recoveredValue1.
    (recoveredValue89) at: (88) put: ('name').
    recoveredValue90 := recoveredValue1.
    (recoveredValue90) at: (89) put: (': [ :').
    recoveredValue91 := recoveredValue1.
    (recoveredValue91) at: (90) put: ('dest').
    recoveredValue92 := recoveredValue1.
    (recoveredValue92) at: (91) put: ('containing').
    recoveredValue93 := recoveredValue1.
    (recoveredValue93) at: (92) put: (': (').
    recoveredValue94 := recoveredValue1.
    (recoveredValue94) at: (93) put: ('result').
    recoveredValue95 := recoveredValue1.
    (recoveredValue95) at: (94) put: ('current').
    recoveredValue96 := recoveredValue1.
    (recoveredValue96) at: (95) put: ('Function').
    recoveredValue97 := recoveredValue1.
    (recoveredValue97) at: (96) put: ('first').
    recoveredValue98 := recoveredValue1.
    (recoveredValue98) at: (97) put: ('basic').
    recoveredValue99 := recoveredValue1.
    (recoveredValue99) at: (98) put: ('while').
    recoveredValue100 := recoveredValue1.
    (recoveredValue100) at: (99) put: ('for').
    recoveredValue101 := recoveredValue1.
    (recoveredValue101) at: (100) put: ('character').
    recoveredValue102 := recoveredValue1.
    (recoveredValue102) at: (101) put: ('variable').
    recoveredValue103 := recoveredValue1.
    (recoveredValue103) at: (102) put: ('selectors').
    recoveredValue104 := recoveredValue1.
    (recoveredValue104) at: (103) put: ('start').
    recoveredValue105 := recoveredValue1.
    (recoveredValue105) at: (104) put: ('Size').
    recoveredValue106 := recoveredValue1.
    (recoveredValue106) at: (105) put: ('rectangle').
    recoveredValue107 := recoveredValue1.
    (recoveredValue107) at: (106) put: ('variables').
    recoveredValue108 := recoveredValue1.
    (recoveredValue108) at: (107) put: ('replace').
    recoveredValue109 := recoveredValue1.
    (recoveredValue109) at: (108) put: (' |').
    recoveredValue110 := recoveredValue1.
    (recoveredValue110) at: (109) put: ('Smalltalk').
    recoveredValue111 := recoveredValue1.
    (recoveredValue111) at: (110) put: ('stream').
    recoveredValue112 := recoveredValue1.
    (recoveredValue112) at: (111) put: (' == ').
    recoveredValue113 := recoveredValue1.
    (recoveredValue113) at: (112) put: ('Window').
    recoveredValue114 := recoveredValue1.
    (recoveredValue114) at: (113) put: ('copy').
    recoveredValue115 := recoveredValue1.
    (recoveredValue115) at: (114) put: ('window').
    recoveredValue116 := recoveredValue1.
    (recoveredValue116) at: (115) put: ('representation').
    recoveredValue117 := recoveredValue1.
    (recoveredValue117) at: (116) put: ('File').
    recoveredValue118 := recoveredValue1.
    (recoveredValue118) at: (117) put: ('Name').
    recoveredValue119 := recoveredValue1.
    (recoveredValue119) at: (118) put: ('put').
    recoveredValue120 := recoveredValue1.
    (recoveredValue120) at: (119) put: ('denominator').
    recoveredValue121 := recoveredValue1.
    (recoveredValue121) at: (120) put: ('Manager').
    recoveredValue122 := recoveredValue1.
    (recoveredValue122) at: (121) put: (': #').
    recoveredValue123 := recoveredValue1.
    (recoveredValue123) at: (122) put: ('print').
    recoveredValue124 := recoveredValue1.
    (recoveredValue124) at: (123) put: ('select').
    recoveredValue125 := recoveredValue1.
    (recoveredValue125) at: (124) put: ('string').
    recoveredValue126 := recoveredValue1.
    (recoveredValue126) at: (125) put: ('else').
    recoveredValue127 := recoveredValue1.
    (recoveredValue127) at: (126) put: ('From').
    recoveredValue128 := recoveredValue1.
    (recoveredValue128) at: (127) put: ('object').
    DecompressionArray := recoveredValue1.
    ^self
! !

