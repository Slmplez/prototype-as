"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200bdcd4; bytecode file offset 0x9bb178"
!RB3DMatrix methodsFor: 'recovered'!
values: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    values := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x204d82f4; bytecode file offset 0xdd4bcc"
!RB3DMatrix methodsFor: 'recovered'!
* recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) z.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) new: (3).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := values.
    recoveredValue11 := (recoveredValue10) at: (1).
    recoveredValue12 := (recoveredValue11) at: (1).
    recoveredValue13 := recoveredLocal4.
    recoveredValue14 := (recoveredValue12) * (recoveredValue13).
    recoveredValue15 := values.
    recoveredValue16 := (recoveredValue15) at: (2).
    recoveredValue17 := (recoveredValue16) at: (1).
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := (recoveredValue17) * (recoveredValue18).
    recoveredValue20 := (recoveredValue14) + (recoveredValue19).
    recoveredValue21 := values.
    recoveredValue22 := (recoveredValue21) at: (3).
    recoveredValue23 := (recoveredValue22) at: (1).
    recoveredValue24 := recoveredLocal2.
    recoveredValue25 := (recoveredValue23) * (recoveredValue24).
    recoveredValue26 := (recoveredValue20) + (recoveredValue25).
    (recoveredValue9) at: (1) put: (recoveredValue26).
    recoveredValue27 := recoveredValue8.
    recoveredValue28 := values.
    recoveredValue29 := (recoveredValue28) at: (1).
    recoveredValue30 := (recoveredValue29) at: (2).
    recoveredValue31 := recoveredLocal4.
    recoveredValue32 := (recoveredValue30) * (recoveredValue31).
    recoveredValue33 := values.
    recoveredValue34 := (recoveredValue33) at: (2).
    recoveredValue35 := (recoveredValue34) at: (2).
    recoveredValue36 := recoveredLocal3.
    recoveredValue37 := (recoveredValue35) * (recoveredValue36).
    recoveredValue38 := (recoveredValue32) + (recoveredValue37).
    recoveredValue39 := values.
    recoveredValue40 := (recoveredValue39) at: (3).
    recoveredValue41 := (recoveredValue40) at: (2).
    recoveredValue42 := recoveredLocal2.
    recoveredValue43 := (recoveredValue41) * (recoveredValue42).
    recoveredValue44 := (recoveredValue38) + (recoveredValue43).
    (recoveredValue27) at: (2) put: (recoveredValue44).
    recoveredValue45 := values.
    recoveredValue46 := (recoveredValue45) at: (1).
    recoveredValue47 := (recoveredValue46) at: (3).
    recoveredValue48 := recoveredLocal4.
    recoveredValue49 := (recoveredValue47) * (recoveredValue48).
    recoveredValue50 := values.
    recoveredValue51 := (recoveredValue50) at: (2).
    recoveredValue52 := (recoveredValue51) at: (3).
    recoveredValue53 := recoveredLocal3.
    recoveredValue54 := (recoveredValue52) * (recoveredValue53).
    recoveredValue55 := (recoveredValue49) + (recoveredValue54).
    recoveredValue56 := values.
    recoveredValue57 := (recoveredValue56) at: (3).
    recoveredValue58 := (recoveredValue57) at: (3).
    recoveredValue59 := recoveredLocal2.
    recoveredValue60 := (recoveredValue58) * (recoveredValue59).
    recoveredValue61 := (recoveredValue55) + (recoveredValue60).
    (recoveredValue8) at: (3) put: (recoveredValue61).
    recoveredValue62 := RB3DVector.
    recoveredValue63 := recoveredLocal1.
    recoveredValue64 := (recoveredValue62) createWith: (recoveredValue63).
    ^recoveredValue64
! !

