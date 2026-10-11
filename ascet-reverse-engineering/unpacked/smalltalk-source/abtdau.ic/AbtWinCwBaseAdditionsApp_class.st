"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x2000058c; bytecode file offset 0xf910"
!AbtWinCwBaseAdditionsApp class methodsFor: 'recovered'!
failedRemove
    | recoveredValue0 |
    recoveredValue0 := AbtWinCwBaseAdditionsApp.
    (recoveredValue0) loaded.
    ^self
! !

"abtdau.ic method 0x2000198c; bytecode file offset 0x10d08"
!AbtWinCwBaseAdditionsApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSRegProvider.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := PanMidlineLowTrimmed.
    (recoveredValue1) eventTableAt: (recoveredValue2) put: (nil).
    recoveredValue3 := DsLocaledit.
    (recoveredValue0) eventTableAt: (recoveredValue3) put: (nil).
    ^self
! !

"abtdau.ic method 0x20001c28; bytecode file offset 0x10fac"
!AbtWinCwBaseAdditionsApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSRegProvider.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := PanMidlineLowTrimmed.
    (recoveredValue1) eventTableAt: (recoveredValue2) put: ('wmGettext:with:').
    recoveredValue3 := DsLocaledit.
    (recoveredValue0) eventTableAt: (recoveredValue3) put: ('wmGettextlength:with:').
    ^self
! !

