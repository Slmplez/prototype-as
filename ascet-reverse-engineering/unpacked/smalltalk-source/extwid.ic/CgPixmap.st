"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000610; bytecode file offset 0x51438"
!CgPixmap methodsFor: 'recovered'!
ewWidthUsing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) width.
    ^recoveredValue0
! !

"extwid.ic method 0x20000670; bytecode file offset 0x51438"
!CgPixmap methodsFor: 'recovered'!
ewHeightUsing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) height.
    ^recoveredValue0
! !

"extwid.ic method 0x20011d94; bytecode file offset 0x62b74"
!CgPixmap methodsFor: 'recovered'!
ewDrawUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) drawable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) gc.
    recoveredValue4 := (self) width.
    recoveredValue5 := (self) height.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) x.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) y.
    (self) copyArea: (recoveredValue1) gc: (recoveredValue3) srcX: (0) srcY: (0) width: (recoveredValue4) height: (recoveredValue5) destX: (recoveredValue7) destY: (recoveredValue9).
    ^self
! !

