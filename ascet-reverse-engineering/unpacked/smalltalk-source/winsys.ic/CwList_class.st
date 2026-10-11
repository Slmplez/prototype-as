"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000a34; bytecode file offset 0x7cc7c"
!CwList class methodsFor: 'recovered'!
scrollHorizontal
    | recoveredValue0 |
    recoveredValue0 := ScrollHorizontal.
    ^recoveredValue0
! !

"winsys.ic method 0x2000177c; bytecode file offset 0x7d940"
!CwList class methodsFor: 'recovered'!
initializeAfterLoad
    ScrollHorizontal := true.
    ^self
! !

"winsys.ic method 0x20001e54; bytecode file offset 0x7e054"
!CwList class methodsFor: 'recovered'!
scrollHorizontal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ScrollHorizontal := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20005d7c; bytecode file offset 0x81f94"
!CwList class methodsFor: 'recovered'!
selectionForegroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := OSListBox.
    recoveredValue2 := (recoveredValue1) selectionForeground.
    recoveredValue3 := (recoveredValue0) fromOSRGB: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20005dac; bytecode file offset 0x81f94"
!CwList class methodsFor: 'recovered'!
selectionBackgroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := OSListBox.
    recoveredValue2 := (recoveredValue1) selectionBackground.
    recoveredValue3 := (recoveredValue0) fromOSRGB: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20009bf4; bytecode file offset 0x85dcc"
!CwList class methodsFor: 'recovered'!
maxItems: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSListBox.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) maxItems: (recoveredValue1) from: (recoveredValue2) to: (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x2000e980; bytecode file offset 0x8ab5c"
!CwList class methodsFor: 'recovered'!
defaultResourceSnapshotInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super defaultResourceSnapshotInfo.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := CwResourceSnapshot.
    recoveredValue3 := (recoveredValue2) getSelector: ('topItemPosition') setSelector: ('topItemPosition:').
    (recoveredValue1) add: (recoveredValue3).
    ^recoveredValue0
! !

