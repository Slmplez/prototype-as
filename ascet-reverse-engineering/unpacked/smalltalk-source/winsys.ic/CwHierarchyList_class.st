"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20020c18; bytecode file offset 0x9ce10"
!CwHierarchyList class methodsFor: 'recovered'!
defaultResourceSnapshotInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := CwResourceSnapshot.
    recoveredValue4 := (recoveredValue3) getSelector: ('showing') setSelector: ('showing:').
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := CwResourceSnapshot.
    recoveredValue7 := (recoveredValue6) getSelector: ('hierarchy') setSelector: ('hierarchy:').
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := CwResourceSnapshot.
    recoveredValue10 := (recoveredValue9) getSelector: ('itemList') setSelector: ('itemList:').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := super defaultResourceSnapshotInfo.
    (recoveredValue11) addAll: (recoveredValue12).
    ^recoveredValue1
! !

