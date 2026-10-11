"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20004e48; bytecode file offset 0x8100c"
!CwTopLevelShell class methodsFor: 'recovered'!
appCreateShell: recoveredArg1 applicationClass: recoveredArg2 display: recoveredArg3 argBlock: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := (self) createApplicationShell: (recoveredValue0) argBlock: (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x2000bbc4; bytecode file offset 0x87d90"
!CwTopLevelShell class methodsFor: 'recovered'!
createApplicationShell: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asString.
    recoveredValue4 := recoveredArg2.
    (recoveredValue0) name: (recoveredValue3) parent: (nil) argBlock: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"winsys.ic method 0x20025ce4; bytecode file offset 0xa1ee0"
!CwTopLevelShell class methodsFor: 'recovered'!
defaultResourceSnapshotInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := super defaultResourceSnapshotInfo.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := CwResourceSnapshot.
    recoveredValue3 := (recoveredValue2) getSelector: ('iconic') setSelector: ('iconic:').
    (recoveredValue1) add: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := CwResourceSnapshot.
    recoveredValue6 := (recoveredValue5) getSelector: ('width') setSelector: ('width:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := CwResourceSnapshot.
    recoveredValue9 := (recoveredValue8) getSelector: ('height') setSelector: ('height:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := CwResourceSnapshot.
    recoveredValue12 := (recoveredValue11) getSelector: ('x') setSelector: ('x:').
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := CwResourceSnapshot.
    recoveredValue15 := (recoveredValue14) getSelector: ('y') setSelector: ('y:').
    (recoveredValue13) add: (recoveredValue15).
    ^recoveredValue0
! !

