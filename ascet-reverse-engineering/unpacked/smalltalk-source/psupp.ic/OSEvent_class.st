"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000bb3c; bytecode file offset 0x15f418"
!OSEvent class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"psupp.ic method 0x20037a00; bytecode file offset 0x18b2c8"
!OSEvent class methodsFor: 'recovered'!
widget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OS.
    recoveredValue2 := (recoveredValue1) getMessagePos.
    recoveredValue3 := (recoveredValue0) integerToPoint: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) x.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) y.
    recoveredValue9 := (recoveredValue6) @ (recoveredValue8).
    recoveredValue10 := (recoveredValue4) toWidget: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := (self) new.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) widget: (recoveredValue13).
    recoveredValue14 := recoveredValue11.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) x.
    (recoveredValue14) x: (recoveredValue16).
    recoveredValue17 := recoveredValue11.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (recoveredValue18) y.
    (recoveredValue17) y: (recoveredValue19).
    recoveredValue20 := recoveredValue11.
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (recoveredValue21) x.
    (recoveredValue20) screenX: (recoveredValue22).
    recoveredValue23 := recoveredLocal2.
    recoveredValue24 := (recoveredValue23) y.
    recoveredValue25 := (recoveredValue11) screenY: (recoveredValue24).
    ^recoveredValue25
! !

