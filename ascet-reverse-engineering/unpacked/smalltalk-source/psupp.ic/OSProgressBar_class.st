"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000590; bytecode file offset 0x153f24"
!OSProgressBar class methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := ProgressBarClass.
    ^recoveredValue0
! !

"psupp.ic method 0x20000608; bytecode file offset 0x153f24"
!OSProgressBar class methodsFor: 'recovered'!
windowProc
    | recoveredValue0 |
    recoveredValue0 := ProgressBarProc.
    ^recoveredValue0
! !

"psupp.ic method 0x2002b5e8; bytecode file offset 0x17ee90"
!OSProgressBar class methodsFor: 'recovered'!
hBarExtent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OS.
    recoveredValue1 := SmCxhscroll.
    recoveredValue2 := (recoveredValue0) getSystemMetrics: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) * (10).
    recoveredValue4 := OS.
    recoveredValue5 := SmCyhscroll.
    recoveredValue6 := (recoveredValue4) getSystemMetrics: (recoveredValue5).
    recoveredValue7 := (recoveredValue3) @ (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002f39c; bytecode file offset 0x182d18"
!OSProgressBar class methodsFor: 'recovered'!
initializeWindowProc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := HInstanceNull.
    recoveredValue1 := ProgressClass.
    recoveredValue2 := recoveredValue1.
    ProgressBarClass := recoveredValue2.
    recoveredValue3 := OSWndclass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue0) getClassInfo: (recoveredValue1) lpwc: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) lpfnWndProc.
    ProgressBarProc := recoveredValue7.
    ^self
! !

