"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"eshell.ic method 0x20001bb8; bytecode file offset 0x5c84"
!CwEmbeddedShell class methodsFor: 'recovered'!
createWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 |
    recoveredValue0 := CwEmbeddedShellDecorations.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue1) name: (recoveredValue4) parent: (recoveredValue5) argBlock: (recoveredValue6).
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredLocal3.
    (recoveredValue7) insertChild: (recoveredValue8).
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := (recoveredValue9) borderWidths.
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := (self) new.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) asString.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 recoveredBlock48Value6 |
    recoveredBlock48Value0 := recoveredBlock48Arg1.
    recoveredBlock48Value1 := recoveredBlock48Value0.
    recoveredBlock48Value2 := recoveredLocal3.
    recoveredBlock48Value3 := (recoveredBlock48Value2) height.
    (recoveredBlock48Value1) height: (recoveredBlock48Value3).
    recoveredBlock48Value4 := recoveredLocal3.
    recoveredBlock48Value5 := (recoveredBlock48Value4) width.
    recoveredBlock48Value6 := (recoveredBlock48Value0) width: (recoveredBlock48Value5).
    recoveredBlock48Value6
].
    recoveredValue16 := (recoveredValue11) name: (recoveredValue13) parent: (recoveredValue14) argBlock: (recoveredValue15).
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredLocal2.
    (recoveredValue17) insertChild: (recoveredValue18).
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := (recoveredValue21) width.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) origin.
    recoveredValue25 := (recoveredValue24) x.
    recoveredValue26 := (recoveredValue22) + (recoveredValue25).
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := (recoveredValue27) corner.
    recoveredValue29 := (recoveredValue28) x.
    recoveredValue30 := (recoveredValue26) + (recoveredValue29).
    (recoveredValue20) width: (recoveredValue30).
    recoveredValue31 := recoveredLocal3.
    recoveredValue32 := (recoveredValue31) height.
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := (recoveredValue33) origin.
    recoveredValue35 := (recoveredValue34) y.
    recoveredValue36 := (recoveredValue32) + (recoveredValue35).
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := (recoveredValue37) corner.
    recoveredValue39 := (recoveredValue38) y.
    recoveredValue40 := (recoveredValue36) + (recoveredValue39).
    (recoveredValue19) height: (recoveredValue40).
    recoveredValue41 := recoveredLocal2.
    recoveredValue42 := recoveredValue41.
    recoveredValue43 := XmATTACHFORM.
    (recoveredValue42) topAttachment: (recoveredValue43).
    recoveredValue44 := recoveredValue41.
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := (recoveredValue45) origin.
    recoveredValue47 := (recoveredValue46) y.
    (recoveredValue44) topOffset: (recoveredValue47).
    recoveredValue48 := recoveredValue41.
    recoveredValue49 := XmATTACHFORM.
    (recoveredValue48) leftAttachment: (recoveredValue49).
    recoveredValue50 := recoveredValue41.
    recoveredValue51 := recoveredLocal1.
    recoveredValue52 := (recoveredValue51) origin.
    recoveredValue53 := (recoveredValue52) x.
    (recoveredValue50) leftOffset: (recoveredValue53).
    recoveredValue54 := recoveredValue41.
    recoveredValue55 := XmATTACHFORM.
    (recoveredValue54) bottomAttachment: (recoveredValue55).
    recoveredValue56 := recoveredValue41.
    recoveredValue57 := recoveredLocal1.
    recoveredValue58 := (recoveredValue57) corner.
    recoveredValue59 := (recoveredValue58) y.
    (recoveredValue56) bottomOffset: (recoveredValue59).
    recoveredValue60 := recoveredValue41.
    recoveredValue61 := XmATTACHFORM.
    (recoveredValue60) rightAttachment: (recoveredValue61).
    recoveredValue62 := recoveredLocal1.
    recoveredValue63 := (recoveredValue62) corner.
    recoveredValue64 := (recoveredValue63) x.
    (recoveredValue41) rightOffset: (recoveredValue64).
    recoveredValue65 := recoveredLocal3.
    recoveredValue66 := recoveredLocal2.
    (recoveredValue65) embeddedShell: (recoveredValue66).
    recoveredValue67 := recoveredLocal2.
    ^recoveredValue67
! !

