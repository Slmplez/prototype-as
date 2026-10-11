"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200004f4; bytecode file offset 0x153f24"
!OSToolBar class methodsFor: 'recovered'!
windowProc
    | recoveredValue0 |
    recoveredValue0 := ToolbarProc.
    ^recoveredValue0
! !

"psupp.ic method 0x20000518; bytecode file offset 0x153f24"
!OSToolBar class methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := ToolbarClass.
    ^recoveredValue0
! !

"psupp.ic method 0x2002f414; bytecode file offset 0x182d18"
!OSToolBar class methodsFor: 'recovered'!
initializeWindowProc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := HInstanceNull.
    recoveredValue1 := Toolbarclassname.
    recoveredValue2 := recoveredValue1.
    ToolbarClass := recoveredValue2.
    recoveredValue3 := OSWndclass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue0) getClassInfo: (recoveredValue1) lpwc: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) lpfnWndProc.
    ToolbarProc := recoveredValue7.
    ^self
! !

