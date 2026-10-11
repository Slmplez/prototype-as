"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000e914; bytecode file offset 0x8ab5c"
!CwToggleButton class methodsFor: 'recovered'!
defaultResourceSnapshotInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super defaultResourceSnapshotInfo.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := CwResourceSnapshot.
    recoveredValue3 := (recoveredValue2) getSelector: ('set') setSelector: ('set:').
    (recoveredValue1) add: (recoveredValue3).
    ^recoveredValue0
! !

