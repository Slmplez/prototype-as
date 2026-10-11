"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20008a48; bytecode file offset 0x84c20"
!CwObjectList class methodsFor: 'recovered'!
createScrolledManagedWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createScrolledWidget: (recoveredValue0) parent: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) manageChild.
    ^recoveredValue4
! !

"winsys.ic method 0x20009c04; bytecode file offset 0x85dcc"
!CwObjectList class methodsFor: 'recovered'!
maxItems: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CwList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) maxItems: (recoveredValue1) from: (recoveredValue2) to: (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x2000ba80; bytecode file offset 0x87c4c"
!CwObjectList class methodsFor: 'recovered'!
createScrolledWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) scrolled: (true).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) initialize: (recoveredValue2) parent: (recoveredValue3) argBlock: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x20017bcc; bytecode file offset 0x93db0"
!CwObjectList class methodsFor: 'recovered'!
defaultResourceSnapshotInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super defaultResourceSnapshotInfo.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := CwResourceSnapshot.
    recoveredValue3 := (recoveredValue2) getSelector: ('selectedItems') setSelector: ('selectedItems:').
    (recoveredValue1) add: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := CwResourceSnapshot.
    recoveredValue6 := (recoveredValue5) getSelector: ('topItemPosition') setSelector: ('topItemPosition:').
    (recoveredValue4) add: (recoveredValue6).
    ^recoveredValue0
! !

