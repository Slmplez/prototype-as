"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2034838c; bytecode file offset 0xc44c60"
!RBDoubleFrameGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredLocal2 := 2.
    recoveredValue0 := recoveredArg1.
    super displayOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) gc.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) window.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) position.
    recoveredValue7 := (recoveredValue6) x.
    recoveredValue8 := a.
    recoveredValue9 := (recoveredValue7) - (recoveredValue8).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue9) + (recoveredValue10).
    recoveredValue12 := (self) position.
    recoveredValue13 := (recoveredValue12) y.
    recoveredValue14 := b.
    recoveredValue15 := (recoveredValue13) - (recoveredValue14).
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := (recoveredValue15) + (recoveredValue16).
    recoveredValue18 := a.
    recoveredValue19 := (2) * (recoveredValue18).
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := (2) * (recoveredValue20).
    recoveredValue22 := (recoveredValue19) - (recoveredValue21).
    recoveredValue23 := b.
    recoveredValue24 := (2) * (recoveredValue23).
    recoveredValue25 := recoveredLocal2.
    recoveredValue26 := (2) * (recoveredValue25).
    recoveredValue27 := (recoveredValue24) - (recoveredValue26).
    (recoveredValue4) drawRectangle: (recoveredValue5) x: (recoveredValue11) y: (recoveredValue17) width: (recoveredValue22) height: (recoveredValue27).
    ^self
! !

