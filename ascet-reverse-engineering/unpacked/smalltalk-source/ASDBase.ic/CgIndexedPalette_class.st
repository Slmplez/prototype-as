"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20312e20; bytecode file offset 0xc0f6fc"
!CgIndexedPalette class methodsFor: 'recovered'!
windowSystemDefault
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 24.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := CgRGBColor.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := OS.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) getSysColor: (recoveredStack6).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) fromOSRGB: (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 24] ifFalse: [recoveredLocal1 := nil. recoveredPC := 51]] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) colors: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043e2a8; bytecode file offset 0xd3ab84"
!CgIndexedPalette class methodsFor: 'recovered'!
grayRamp: recoveredArg1 fromPercent: recoveredArg2 toPercent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 65535.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) intensity: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := CgRGBColor.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) intensity: (recoveredStack5).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 64] ifFalse: [recoveredLocal1 := nil. recoveredPC := 102]] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) colors: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206566d0; bytecode file offset 0xf53128"
!CgIndexedPalette class methodsFor: 'recovered'!
etasDefault
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (96).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: (1) put: ('black').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (2) put: ('PureDarkBrown').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: (3) put: ('PureDarkRed').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: (4) put: ('gold4').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (5) put: ('PureDarkGreen').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: (6) put: ('PureDarkCyan').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: (7) put: ('navy').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: (8) put: ('PureDarkMagenta').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: (9) put: ('grey40').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: (10) put: ('brown').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: (11) put: ('IndianRed3').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: (12) put: ('gold3').
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: (13) put: ('OliveDrab').
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: (14) put: ('LightSeaGreen').
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: (15) put: ('MediumBlue').
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: (16) put: ('purple').
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: (17) put: ('PureDarkGrey').
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: (18) put: ('chocolate').
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: (19) put: ('red').
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: (20) put: ('DarkGoldenrod2').
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: (21) put: ('ForestGreen').
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: (22) put: ('MediumAquamarine').
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) at: (23) put: ('blue').
    recoveredValue26 := recoveredValue2.
    (recoveredValue26) at: (24) put: ('BlueViolet').
    recoveredValue27 := recoveredValue2.
    (recoveredValue27) at: (25) put: ('grey55').
    recoveredValue28 := recoveredValue2.
    (recoveredValue28) at: (26) put: ('DarkGoldenrod').
    recoveredValue29 := recoveredValue2.
    (recoveredValue29) at: (27) put: ('IndianRed1').
    recoveredValue30 := recoveredValue2.
    (recoveredValue30) at: (28) put: ('gold2').
    recoveredValue31 := recoveredValue2.
    (recoveredValue31) at: (29) put: ('DarkSeaGreen').
    recoveredValue32 := recoveredValue2.
    (recoveredValue32) at: (30) put: ('MediumTurquoise').
    recoveredValue33 := recoveredValue2.
    (recoveredValue33) at: (31) put: ('SlateGrey').
    recoveredValue34 := recoveredValue2.
    (recoveredValue34) at: (32) put: ('MediumOrchid').
    recoveredValue35 := recoveredValue2.
    (recoveredValue35) at: (33) put: ('grey65').
    recoveredValue36 := recoveredValue2.
    (recoveredValue36) at: (34) put: ('peru').
    recoveredValue37 := recoveredValue2.
    (recoveredValue37) at: (35) put: ('DarkOrange').
    recoveredValue38 := recoveredValue2.
    (recoveredValue38) at: (36) put: ('gold1').
    recoveredValue39 := recoveredValue2.
    (recoveredValue39) at: (37) put: ('MediumSeaGreen').
    recoveredValue40 := recoveredValue2.
    (recoveredValue40) at: (38) put: ('DarkTurquoise').
    recoveredValue41 := recoveredValue2.
    (recoveredValue41) at: (39) put: ('SteelBlue').
    recoveredValue42 := recoveredValue2.
    (recoveredValue42) at: (40) put: ('orchid').
    recoveredValue43 := recoveredValue2.
    (recoveredValue43) at: (41) put: ('grey70').
    recoveredValue44 := recoveredValue2.
    (recoveredValue44) at: (42) put: ('goldenrod').
    recoveredValue45 := recoveredValue2.
    (recoveredValue45) at: (43) put: ('orange').
    recoveredValue46 := recoveredValue2.
    (recoveredValue46) at: (44) put: ('gold').
    recoveredValue47 := recoveredValue2.
    (recoveredValue47) at: (45) put: ('LimeGreen').
    recoveredValue48 := recoveredValue2.
    (recoveredValue48) at: (46) put: ('turquoise').
    recoveredValue49 := recoveredValue2.
    (recoveredValue49) at: (47) put: ('CornflowerBlue').
    recoveredValue50 := recoveredValue2.
    (recoveredValue50) at: (48) put: ('VioletRed').
    recoveredValue51 := recoveredValue2.
    (recoveredValue51) at: (49) put: ('grey75').
    recoveredValue52 := recoveredValue2.
    (recoveredValue52) at: (50) put: ('tan').
    recoveredValue53 := recoveredValue2.
    (recoveredValue53) at: (51) put: ('DarkSalmon').
    recoveredValue54 := recoveredValue2.
    (recoveredValue54) at: (52) put: ('moccasin').
    recoveredValue55 := recoveredValue2.
    (recoveredValue55) at: (53) put: ('YellowGreen').
    recoveredValue56 := recoveredValue2.
    (recoveredValue56) at: (54) put: ('aquamarine2').
    recoveredValue57 := recoveredValue2.
    (recoveredValue57) at: (55) put: ('DeepSkyBlue').
    recoveredValue58 := recoveredValue2.
    (recoveredValue58) at: (56) put: ('DeepPink').
    recoveredValue59 := recoveredValue2.
    (recoveredValue59) at: (57) put: ('grey80').
    recoveredValue60 := recoveredValue2.
    (recoveredValue60) at: (58) put: ('LightGoldenrod').
    recoveredValue61 := recoveredValue2.
    (recoveredValue61) at: (59) put: ('LightSalmon').
    recoveredValue62 := recoveredValue2.
    (recoveredValue62) at: (60) put: ('yellow').
    recoveredValue63 := recoveredValue2.
    (recoveredValue63) at: (61) put: ('green').
    recoveredValue64 := recoveredValue2.
    (recoveredValue64) at: (62) put: ('aquamarine').
    recoveredValue65 := recoveredValue2.
    (recoveredValue65) at: (63) put: ('SkyBlue').
    recoveredValue66 := recoveredValue2.
    (recoveredValue66) at: (64) put: ('HotPink').
    recoveredValue67 := recoveredValue2.
    (recoveredValue67) at: (65) put: ('grey85').
    recoveredValue68 := recoveredValue2.
    (recoveredValue68) at: (66) put: ('wheat').
    recoveredValue69 := recoveredValue2.
    (recoveredValue69) at: (67) put: ('LightCoral').
    recoveredValue70 := recoveredValue2.
    (recoveredValue70) at: (68) put: ('LightYellow').
    recoveredValue71 := recoveredValue2.
    (recoveredValue71) at: (69) put: ('chartreuse').
    recoveredValue72 := recoveredValue2.
    (recoveredValue72) at: (70) put: ('PaleTurquoise').
    recoveredValue73 := recoveredValue2.
    (recoveredValue73) at: (71) put: ('LightSteelBlue').
    recoveredValue74 := recoveredValue2.
    (recoveredValue74) at: (72) put: ('violet').
    recoveredValue75 := recoveredValue2.
    (recoveredValue75) at: (73) put: ('grey90').
    recoveredValue76 := recoveredValue2.
    (recoveredValue76) at: (74) put: ('wheat1').
    recoveredValue77 := recoveredValue2.
    (recoveredValue77) at: (75) put: ('pink').
    recoveredValue78 := recoveredValue2.
    (recoveredValue78) at: (76) put: ('LightGoldenrodYellow').
    recoveredValue79 := recoveredValue2.
    (recoveredValue79) at: (77) put: ('PaleGreen').
    recoveredValue80 := recoveredValue2.
    (recoveredValue80) at: (78) put: ('cyan').
    recoveredValue81 := recoveredValue2.
    (recoveredValue81) at: (79) put: ('LightBlue').
    recoveredValue82 := recoveredValue2.
    (recoveredValue82) at: (80) put: ('magenta').
    recoveredValue83 := recoveredValue2.
    (recoveredValue83) at: (81) put: ('grey95').
    recoveredValue84 := recoveredValue2.
    (recoveredValue84) at: (82) put: ('AntiqueWhite').
    recoveredValue85 := recoveredValue2.
    (recoveredValue85) at: (83) put: ('PeachPuff').
    recoveredValue86 := recoveredValue2.
    (recoveredValue86) at: (84) put: ('beige').
    recoveredValue87 := recoveredValue2.
    (recoveredValue87) at: (85) put: ('honeydew2').
    recoveredValue88 := recoveredValue2.
    (recoveredValue88) at: (86) put: ('LightCyan').
    recoveredValue89 := recoveredValue2.
    (recoveredValue89) at: (87) put: ('CadetBlue2').
    recoveredValue90 := recoveredValue2.
    (recoveredValue90) at: (88) put: ('thistle').
    recoveredValue91 := recoveredValue2.
    (recoveredValue91) at: (89) put: ('white').
    recoveredValue92 := recoveredValue2.
    (recoveredValue92) at: (90) put: ('OldLace').
    recoveredValue93 := recoveredValue2.
    (recoveredValue93) at: (91) put: ('MistyRose').
    recoveredValue94 := recoveredValue2.
    (recoveredValue94) at: (92) put: ('LemonChiffon').
    recoveredValue95 := recoveredValue2.
    (recoveredValue95) at: (93) put: ('honeydew').
    recoveredValue96 := recoveredValue2.
    (recoveredValue96) at: (94) put: ('azure').
    recoveredValue97 := recoveredValue2.
    (recoveredValue97) at: (95) put: ('azure2').
    recoveredValue98 := recoveredValue2.
    (recoveredValue98) at: (96) put: ('GhostWhite').
    recoveredValue99 := Array.
    recoveredValue100 := recoveredLocal3.
    recoveredValue101 := (recoveredValue100) size.
    recoveredValue102 := (recoveredValue99) new: (recoveredValue101).
    recoveredLocal2 := recoveredValue102.
    recoveredValue103 := CgScreen.
    recoveredValue104 := (recoveredValue103) default.
    recoveredLocal1 := recoveredValue104.
    recoveredValue105 := recoveredLocal3.
    recoveredValue106 := [:recoveredBlock827Arg1 :recoveredBlock827Arg2 | 
    | recoveredBlock827Value0 recoveredBlock827Value1 recoveredBlock827Value2 recoveredBlock827Value3 recoveredBlock827Value4 recoveredBlock827Value5 |
    recoveredBlock827Value0 := recoveredLocal2.
    recoveredBlock827Value1 := recoveredBlock827Arg2.
    recoveredBlock827Value2 := recoveredLocal1.
    recoveredBlock827Value3 := recoveredBlock827Arg1.
    recoveredBlock827Value4 := (recoveredBlock827Value2) lookupColor: (recoveredBlock827Value3).
    recoveredBlock827Value5 := (recoveredBlock827Value0) at: (recoveredBlock827Value1) put: (recoveredBlock827Value4).
    recoveredBlock827Value5
].
    (recoveredValue105) doWithIndex: (recoveredValue106).
    recoveredValue107 := recoveredLocal2.
    recoveredValue108 := (self) colors: (recoveredValue107).
    ^recoveredValue108
! !

