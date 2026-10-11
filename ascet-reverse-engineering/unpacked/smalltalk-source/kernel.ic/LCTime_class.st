"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20001928; bytecode file offset 0x4c844"
!LCTime class methodsFor: 'recovered'!
default
    | recoveredValue0 |
    recoveredValue0 := Default.
    ^recoveredValue0
! !

"kernel.ic method 0x20011b00; bytecode file offset 0x5ca20"
!LCTime class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) localePrimitiveClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveGetTimeDate: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) initializeEncodedFormats.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x200321f0; bytecode file offset 0x7d1e4"
!LCTime class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (52).
    recoveredValue2 := recoveredValue1.
    FormatSelectors := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := ($A) digitValue.
    recoveredValue5 := (recoveredValue4) - (9).
    recoveredValue6 := (recoveredValue5) + (26).
    (recoveredValue3) at: (recoveredValue6) put: ('format_a:date:time:').
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := ($A) digitValue.
    recoveredValue9 := (recoveredValue8) - (9).
    (recoveredValue7) at: (recoveredValue9) put: ('format_A:date:time:').
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := ($B) digitValue.
    recoveredValue12 := (recoveredValue11) - (9).
    recoveredValue13 := (recoveredValue12) + (26).
    (recoveredValue10) at: (recoveredValue13) put: ('format_b:date:time:').
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := ($B) digitValue.
    recoveredValue16 := (recoveredValue15) - (9).
    (recoveredValue14) at: (recoveredValue16) put: ('format_B:date:time:').
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := ($C) digitValue.
    recoveredValue19 := (recoveredValue18) - (9).
    (recoveredValue17) at: (recoveredValue19) put: ('format_C:date:time:').
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := ($D) digitValue.
    recoveredValue22 := (recoveredValue21) - (9).
    (recoveredValue20) at: (recoveredValue22) put: ('format_D:date:time:').
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := ($D) digitValue.
    recoveredValue25 := (recoveredValue24) - (9).
    recoveredValue26 := (recoveredValue25) + (26).
    (recoveredValue23) at: (recoveredValue26) put: ('format_d:date:time:').
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := ($E) digitValue.
    recoveredValue29 := (recoveredValue28) - (9).
    recoveredValue30 := (recoveredValue29) + (26).
    (recoveredValue27) at: (recoveredValue30) put: ('format_e:date:time:').
    recoveredValue31 := recoveredValue1.
    recoveredValue32 := ($F) digitValue.
    recoveredValue33 := (recoveredValue32) - (9).
    recoveredValue34 := (recoveredValue33) + (26).
    (recoveredValue31) at: (recoveredValue34) put: ('format_f:date:time:').
    recoveredValue35 := recoveredValue1.
    recoveredValue36 := ($H) digitValue.
    recoveredValue37 := (recoveredValue36) - (9).
    (recoveredValue35) at: (recoveredValue37) put: ('format_H:date:time:').
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := ($I) digitValue.
    recoveredValue40 := (recoveredValue39) - (9).
    (recoveredValue38) at: (recoveredValue40) put: ('format_I:date:time:').
    recoveredValue41 := recoveredValue1.
    recoveredValue42 := ($J) digitValue.
    recoveredValue43 := (recoveredValue42) - (9).
    recoveredValue44 := (recoveredValue43) + (26).
    (recoveredValue41) at: (recoveredValue44) put: ('format_j:date:time:').
    recoveredValue45 := recoveredValue1.
    recoveredValue46 := ($K) digitValue.
    recoveredValue47 := (recoveredValue46) - (9).
    recoveredValue48 := (recoveredValue47) + (26).
    (recoveredValue45) at: (recoveredValue48) put: ('format_k:date:time:').
    recoveredValue49 := recoveredValue1.
    recoveredValue50 := ($L) digitValue.
    recoveredValue51 := (recoveredValue50) - (9).
    recoveredValue52 := (recoveredValue51) + (26).
    (recoveredValue49) at: (recoveredValue52) put: ('format_l:date:time:').
    recoveredValue53 := recoveredValue1.
    recoveredValue54 := ($M) digitValue.
    recoveredValue55 := (recoveredValue54) - (9).
    recoveredValue56 := (recoveredValue55) + (26).
    (recoveredValue53) at: (recoveredValue56) put: ('format_m:date:time:').
    recoveredValue57 := recoveredValue1.
    recoveredValue58 := ($M) digitValue.
    recoveredValue59 := (recoveredValue58) - (9).
    (recoveredValue57) at: (recoveredValue59) put: ('format_M:date:time:').
    recoveredValue60 := recoveredValue1.
    recoveredValue61 := ($N) digitValue.
    recoveredValue62 := (recoveredValue61) - (9).
    recoveredValue63 := (recoveredValue62) + (26).
    (recoveredValue60) at: (recoveredValue63) put: ('format_n:date:time:').
    recoveredValue64 := recoveredValue1.
    recoveredValue65 := ($P) digitValue.
    recoveredValue66 := (recoveredValue65) - (9).
    (recoveredValue64) at: (recoveredValue66) put: ('format_P:date:time:').
    recoveredValue67 := recoveredValue1.
    recoveredValue68 := ($P) digitValue.
    recoveredValue69 := (recoveredValue68) - (9).
    recoveredValue70 := (recoveredValue69) + (26).
    (recoveredValue67) at: (recoveredValue70) put: ('format_p:date:time:').
    recoveredValue71 := recoveredValue1.
    recoveredValue72 := ($R) digitValue.
    recoveredValue73 := (recoveredValue72) - (9).
    (recoveredValue71) at: (recoveredValue73) put: ('format_R:date:time:').
    recoveredValue74 := recoveredValue1.
    recoveredValue75 := ($R) digitValue.
    recoveredValue76 := (recoveredValue75) - (9).
    recoveredValue77 := (recoveredValue76) + (26).
    (recoveredValue74) at: (recoveredValue77) put: ('format_r:date:time:').
    recoveredValue78 := recoveredValue1.
    recoveredValue79 := ($S) digitValue.
    recoveredValue80 := (recoveredValue79) - (9).
    (recoveredValue78) at: (recoveredValue80) put: ('format_S:date:time:').
    recoveredValue81 := recoveredValue1.
    recoveredValue82 := ($T) digitValue.
    recoveredValue83 := (recoveredValue82) - (9).
    (recoveredValue81) at: (recoveredValue83) put: ('format_T:date:time:').
    recoveredValue84 := recoveredValue1.
    recoveredValue85 := ($T) digitValue.
    recoveredValue86 := (recoveredValue85) - (9).
    recoveredValue87 := (recoveredValue86) + (26).
    (recoveredValue84) at: (recoveredValue87) put: ('format_t:date:time:').
    recoveredValue88 := recoveredValue1.
    recoveredValue89 := ($U) digitValue.
    recoveredValue90 := (recoveredValue89) - (9).
    recoveredValue91 := (recoveredValue90) + (26).
    (recoveredValue88) at: (recoveredValue91) put: ('format_u:date:time:').
    recoveredValue92 := recoveredValue1.
    recoveredValue93 := ($W) digitValue.
    recoveredValue94 := (recoveredValue93) - (9).
    recoveredValue95 := (recoveredValue94) + (26).
    (recoveredValue92) at: (recoveredValue95) put: ('format_w:date:time:').
    recoveredValue96 := recoveredValue1.
    recoveredValue97 := ($X) digitValue.
    recoveredValue98 := (recoveredValue97) - (9).
    recoveredValue99 := (recoveredValue98) + (26).
    (recoveredValue96) at: (recoveredValue99) put: ('format_x:date:time:').
    recoveredValue100 := recoveredValue1.
    recoveredValue101 := ($X) digitValue.
    recoveredValue102 := (recoveredValue101) - (9).
    (recoveredValue100) at: (recoveredValue102) put: ('format_X:date:time:').
    recoveredValue103 := recoveredValue1.
    recoveredValue104 := ($Y) digitValue.
    recoveredValue105 := (recoveredValue104) - (9).
    recoveredValue106 := (recoveredValue105) + (26).
    (recoveredValue103) at: (recoveredValue106) put: ('format_y:date:time:').
    recoveredValue107 := recoveredValue1.
    recoveredValue108 := ($Y) digitValue.
    recoveredValue109 := (recoveredValue108) - (9).
    (recoveredValue107) at: (recoveredValue109) put: ('format_Y:date:time:').
    recoveredValue110 := recoveredValue1.
    recoveredValue111 := ($Z) digitValue.
    recoveredValue112 := (recoveredValue111) - (9).
    recoveredValue113 := (recoveredValue112) + (26).
    (recoveredValue110) at: (recoveredValue113) put: ('format_z:date:time:').
    recoveredValue114 := ($Z) digitValue.
    recoveredValue115 := (recoveredValue114) - (9).
    (recoveredValue1) at: (recoveredValue115) put: ('format_Z:date:time:').
    recoveredValue116 := (self) new.
    recoveredValue117 := recoveredValue116.
    Default := recoveredValue117.
    recoveredValue118 := recoveredValue116.
    (recoveredValue118) abDay: (#('Sun' 'Mon' 'Tue' 'Wed' 'Thu' 'Fri' 'Sat')).
    recoveredValue119 := recoveredValue116.
    (recoveredValue119) day: (#('Sunday' 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday')).
    recoveredValue120 := recoveredValue116.
    (recoveredValue120) abMon: (#('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'Jul' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec')).
    recoveredValue121 := recoveredValue116.
    (recoveredValue121) mon: (#('January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December')).
    recoveredValue122 := recoveredValue116.
    (recoveredValue122) dtFmt: ('%H:%M:%S  %d/%m/%Y').
    recoveredValue123 := recoveredValue116.
    (recoveredValue123) dFmt: ('%d/%m/%Y').
    recoveredValue124 := recoveredValue116.
    (recoveredValue124) tFmt: ('%H:%M:%S').
    recoveredValue125 := recoveredValue116.
    (recoveredValue125) tFmtAmpm: ('%I:%M:%S %p').
    recoveredValue126 := recoveredValue116.
    (recoveredValue126) amPm: (#('AM' 'PM')).
    (recoveredValue116) markReadOnly: (true).
    ^self
! !

