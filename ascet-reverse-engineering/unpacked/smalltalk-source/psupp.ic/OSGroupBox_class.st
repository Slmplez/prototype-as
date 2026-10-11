"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000000; bytecode file offset 0x153a14"
!OSGroupBox class methodsFor: 'recovered'!
releaseWindowProc
    ^self
! !

"psupp.ic method 0x20000494; bytecode file offset 0x153f24"
!OSGroupBox class methodsFor: 'recovered'!
windowProc
    | recoveredValue0 |
    recoveredValue0 := GroupBoxProc.
    ^recoveredValue0
! !

"psupp.ic method 0x200005b4; bytecode file offset 0x153f24"
!OSGroupBox class methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := GroupBoxClass.
    ^recoveredValue0
! !

"psupp.ic method 0x2002fce8; bytecode file offset 0x1835a0"
!OSGroupBox class methodsFor: 'recovered'!
initializeWindowProc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := HInstanceNull.
    recoveredValue1 := ('BUTTON') asPSZ.
    recoveredValue2 := recoveredValue1.
    GroupBoxClass := recoveredValue2.
    recoveredValue3 := OSWndclass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue0) getClassInfo: (recoveredValue1) lpwc: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) lpfnWndProc.
    GroupBoxProc := recoveredValue7.
    ^self
! !

