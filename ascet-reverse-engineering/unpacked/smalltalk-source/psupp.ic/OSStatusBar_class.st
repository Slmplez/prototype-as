"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200005e4; bytecode file offset 0x153f24"
!OSStatusBar class methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := StatusBarClass.
    ^recoveredValue0
! !

"psupp.ic method 0x200005fc; bytecode file offset 0x153f24"
!OSStatusBar class methodsFor: 'recovered'!
windowProc
    | recoveredValue0 |
    recoveredValue0 := StatusBarProc.
    ^recoveredValue0
! !

"psupp.ic method 0x2002f43c; bytecode file offset 0x182d18"
!OSStatusBar class methodsFor: 'recovered'!
initializeWindowProc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := HInstanceNull.
    recoveredValue1 := Statusclassname.
    recoveredValue2 := recoveredValue1.
    StatusBarClass := recoveredValue2.
    recoveredValue3 := OSWndclass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue0) getClassInfo: (recoveredValue1) lpwc: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) lpfnWndProc.
    StatusBarProc := recoveredValue7.
    ^self
! !

