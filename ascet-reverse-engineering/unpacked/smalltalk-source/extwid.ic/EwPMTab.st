"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20004124; bytecode file offset 0x54ef8"
!EwPMTab methodsFor: 'recovered'!
defaultMargin
    ^2
! !

"extwid.ic method 0x20007e84; bytecode file offset 0x58c54"
!EwPMTab methodsFor: 'recovered'!
insetBox
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) origin.
    recoveredValue1 := (recoveredValue0) + (2).
    recoveredValue2 := (self) corner.
    recoveredValue3 := (recoveredValue2) + (-2).
    recoveredValue4 := (recoveredValue1) corner: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x20008abc; bytecode file offset 0x59888"
!EwPMTab methodsFor: 'recovered'!
widthOfLabel: recoveredArg1 using: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) ewWidthUsing: (recoveredValue1).
    recoveredValue3 := (self) defaultMargin.
    recoveredValue4 := (2) * (recoveredValue3).
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x200112f4; bytecode file offset 0x620d4"
!EwPMTab methodsFor: 'recovered'!
clearTabOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) drawable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) gc.
    recoveredValue4 := (self) x.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := (self) y.
    recoveredValue7 := (recoveredValue6) + (1).
    recoveredValue8 := (self) width.
    recoveredValue9 := (recoveredValue8) + (-1).
    recoveredValue10 := (self) height.
    recoveredValue11 := (recoveredValue10) + (-1).
    (recoveredValue1) fillRectangle: (recoveredValue3) x: (recoveredValue5) y: (recoveredValue7) width: (recoveredValue9) height: (recoveredValue11).
    ^self
! !

"extwid.ic method 0x20013610; bytecode file offset 0x643f8"
!EwPMTab methodsFor: 'recovered'!
drawSelectedFocusUsing: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) insetBox.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) drawable.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) gc.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) origin.
    recoveredValue7 := (recoveredValue6) x.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) origin.
    recoveredValue10 := (recoveredValue9) y.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) width.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) height.
    (recoveredValue2) drawRectangle: (recoveredValue4) x: (recoveredValue7) y: (recoveredValue10) width: (recoveredValue12) height: (recoveredValue14).
    ^self
! !

"extwid.ic method 0x200179fc; bytecode file offset 0x687e4"
!EwPMTab methodsFor: 'recovered'!
drawBackgroundUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredValue2 := GCForeground.
    recoveredValue3 := CgGCValues.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue1) getGCValues: (recoveredValue2) valuesReturn: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) foreground.
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) gc.
    recoveredValue10 := (self) colorPixel.
    (recoveredValue9) setForeground: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    (self) clearTabOn: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) gc.
    recoveredValue14 := recoveredLocal2.
    (recoveredValue13) setForeground: (recoveredValue14).
    ^self
! !

"extwid.ic method 0x200278f8; bytecode file offset 0x786ec"
!EwPMTab methodsFor: 'recovered'!
drawBorderTopUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := (self) x.
    recoveredLocal5 := recoveredValue0.
    recoveredValue1 := (self) x.
    recoveredValue2 := (self) width.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := (self) y.
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := (self) y.
    recoveredValue6 := (self) height.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := Array.
    recoveredValue9 := (recoveredValue8) new: (4).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := recoveredLocal5.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue12) @ (recoveredValue13).
    (recoveredValue11) at: (1) put: (recoveredValue14).
    recoveredValue15 := recoveredValue10.
    recoveredValue16 := recoveredLocal5.
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := (recoveredValue16) @ (recoveredValue17).
    (recoveredValue15) at: (2) put: (recoveredValue18).
    recoveredValue19 := recoveredValue10.
    recoveredValue20 := recoveredLocal4.
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := (recoveredValue20) @ (recoveredValue21).
    (recoveredValue19) at: (3) put: (recoveredValue22).
    recoveredValue23 := recoveredLocal4.
    recoveredValue24 := recoveredLocal2.
    recoveredValue25 := (recoveredValue23) @ (recoveredValue24).
    (recoveredValue10) at: (4) put: (recoveredValue25).
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := (recoveredValue26) drawable.
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (recoveredValue28) gc.
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := CoordModeOrigin.
    (recoveredValue27) drawLines: (recoveredValue29) points: (recoveredValue30) mode: (recoveredValue31).
    ^self
! !

"extwid.ic method 0x20027d34; bytecode file offset 0x78b28"
!EwPMTab methodsFor: 'recovered'!
drawBorderBottomUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := (self) x.
    recoveredLocal5 := recoveredValue0.
    recoveredValue1 := (self) x.
    recoveredValue2 := (self) width.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := (self) y.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := (self) y.
    recoveredValue7 := (self) height.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := Array.
    recoveredValue10 := (recoveredValue9) new: (4).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := recoveredLocal5.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := (recoveredValue13) @ (recoveredValue14).
    (recoveredValue12) at: (1) put: (recoveredValue15).
    recoveredValue16 := recoveredValue11.
    recoveredValue17 := recoveredLocal5.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := (recoveredValue17) @ (recoveredValue18).
    (recoveredValue16) at: (2) put: (recoveredValue19).
    recoveredValue20 := recoveredValue11.
    recoveredValue21 := recoveredLocal4.
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := (recoveredValue21) @ (recoveredValue22).
    (recoveredValue20) at: (3) put: (recoveredValue23).
    recoveredValue24 := recoveredLocal4.
    recoveredValue25 := recoveredLocal3.
    recoveredValue26 := (recoveredValue24) @ (recoveredValue25).
    (recoveredValue11) at: (4) put: (recoveredValue26).
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) drawable.
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) gc.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := CoordModeOrigin.
    (recoveredValue28) drawLines: (recoveredValue30) points: (recoveredValue31) mode: (recoveredValue32).
    ^self
! !

"extwid.ic method 0x20027dc0; bytecode file offset 0x78bb4"
!EwPMTab methodsFor: 'recovered'!
drawBorderRightUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := (self) x.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := (self) x.
    recoveredValue3 := (self) width.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := (self) y.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := (self) y.
    recoveredValue7 := (self) height.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := Array.
    recoveredValue10 := (recoveredValue9) new: (4).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := recoveredLocal5.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := (recoveredValue13) @ (recoveredValue14).
    (recoveredValue12) at: (1) put: (recoveredValue15).
    recoveredValue16 := recoveredValue11.
    recoveredValue17 := recoveredLocal4.
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := (recoveredValue17) @ (recoveredValue18).
    (recoveredValue16) at: (2) put: (recoveredValue19).
    recoveredValue20 := recoveredValue11.
    recoveredValue21 := recoveredLocal4.
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := (recoveredValue21) @ (recoveredValue22).
    (recoveredValue20) at: (3) put: (recoveredValue23).
    recoveredValue24 := recoveredLocal5.
    recoveredValue25 := recoveredLocal2.
    recoveredValue26 := (recoveredValue24) @ (recoveredValue25).
    (recoveredValue11) at: (4) put: (recoveredValue26).
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) drawable.
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) gc.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := CoordModeOrigin.
    (recoveredValue28) drawLines: (recoveredValue30) points: (recoveredValue31) mode: (recoveredValue32).
    ^self
! !

