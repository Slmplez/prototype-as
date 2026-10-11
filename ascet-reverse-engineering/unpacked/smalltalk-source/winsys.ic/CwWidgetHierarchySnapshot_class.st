"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000b124; bytecode file offset 0x872ec"
!CwWidgetHierarchySnapshot class methodsFor: 'recovered'!
getSnapshot: recoveredArg1 forWidgets: recoveredArg2 owner: recoveredArg3 restartSelector: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getWidgetSnapshots: (recoveredValue0) forWidgets: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) widgetSnapshots: (recoveredValue2) owner: (recoveredValue3) restartSelector: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x2000baa4; bytecode file offset 0x87c8c"
!CwWidgetHierarchySnapshot class methodsFor: 'recovered'!
widgetSnapshots: recoveredArg1 owner: recoveredArg2 restartSelector: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) widgetSnapshots: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) owner: (recoveredValue4).
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) restartSelector: (recoveredValue5).
    ^recoveredValue6
! !

"winsys.ic method 0x20016b78; bytecode file offset 0x92d4c"
!CwWidgetHierarchySnapshot class methodsFor: 'recovered'!
getWidgetSnapshots: recoveredArg1 forWidgets: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := CwWidgetSnapshot.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value1) name.
    recoveredBlock7Value3 := recoveredBlock7Arg1.
    recoveredBlock7Value4 := recoveredArg1.
    recoveredBlock7Value5 := (recoveredBlock7Value3) getResourceSnapshots: (recoveredBlock7Value4).
    recoveredBlock7Value6 := (recoveredBlock7Value0) widgetReference: (recoveredBlock7Value2) resourceSnapshots: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

