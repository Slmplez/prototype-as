"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200005f8; bytecode file offset 0x51438"
!CgIcon methodsFor: 'recovered'!
ewHeightUsing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) height.
    ^recoveredValue0
! !

"extwid.ic method 0x2000061c; bytecode file offset 0x51438"
!CgIcon methodsFor: 'recovered'!
ewWidthUsing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) width.
    ^recoveredValue0
! !

"extwid.ic method 0x2000ac1c; bytecode file offset 0x5b9f4"
!CgIcon methodsFor: 'recovered'!
ewDrawUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) drawable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) gc.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) x.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) y.
    (recoveredValue1) drawIcon: (recoveredValue3) x: (recoveredValue5) y: (recoveredValue7) icon: (self).
    ^self
! !

