"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000634; bytecode file offset 0x51438"
!CgDeviceIndependentImage methodsFor: 'recovered'!
ewHeightUsing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) height.
    ^recoveredValue0
! !

"extwid.ic method 0x20000640; bytecode file offset 0x51438"
!CgDeviceIndependentImage methodsFor: 'recovered'!
ewWidthUsing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) width.
    ^recoveredValue0
! !

"extwid.ic method 0x2001e0c8; bytecode file offset 0x6eeb0"
!CgDeviceIndependentImage methodsFor: 'recovered'!
ewDrawUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) drawable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) gc.
    recoveredValue4 := Rectangle.
    recoveredValue5 := (self) width.
    recoveredValue6 := (self) height.
    recoveredValue7 := (recoveredValue4) left: (0) right: (recoveredValue5) top: (0) bottom: (recoveredValue6).
    recoveredValue8 := Rectangle.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) x.
    recoveredValue11 := (self) width.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) x.
    recoveredValue14 := (recoveredValue11) + (recoveredValue13).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) y.
    recoveredValue17 := (self) height.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) y.
    recoveredValue20 := (recoveredValue17) + (recoveredValue19).
    recoveredValue21 := (recoveredValue8) left: (recoveredValue10) right: (recoveredValue14) top: (recoveredValue16) bottom: (recoveredValue20).
    (recoveredValue1) putDeviceIndependentImage: (recoveredValue3) image: (self) srcRect: (recoveredValue7) destRect: (recoveredValue21).
    ^self
! !

