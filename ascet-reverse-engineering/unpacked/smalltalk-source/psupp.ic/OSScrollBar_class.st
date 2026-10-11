"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200004e8; bytecode file offset 0x153f24"
!OSScrollBar class methodsFor: 'recovered'!
windowProc
    | recoveredValue0 |
    recoveredValue0 := ScrollBarProc.
    ^recoveredValue0
! !

"psupp.ic method 0x200005f0; bytecode file offset 0x153f24"
!OSScrollBar class methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := ScrollBarClass.
    ^recoveredValue0
! !

"psupp.ic method 0x2000aa50; bytecode file offset 0x15e390"
!OSScrollBar class methodsFor: 'recovered'!
background
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorScrollbar.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20028b28; bytecode file offset 0x17c45c"
!OSScrollBar class methodsFor: 'recovered'!
thumbExtent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OS.
    recoveredValue1 := SmCxhthumb.
    recoveredValue2 := (recoveredValue0) getSystemMetrics: (recoveredValue1).
    recoveredValue3 := OS.
    recoveredValue4 := SmCyvthumb.
    recoveredValue5 := (recoveredValue3) getSystemMetrics: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) @ (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x20028b44; bytecode file offset 0x17c45c"
!OSScrollBar class methodsFor: 'recovered'!
vBarExtent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OS.
    recoveredValue1 := SmCxvscroll.
    recoveredValue2 := (recoveredValue0) getSystemMetrics: (recoveredValue1).
    recoveredValue3 := OS.
    recoveredValue4 := SmCyvscroll.
    recoveredValue5 := (recoveredValue3) getSystemMetrics: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) @ (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x20028bb4; bytecode file offset 0x17c45c"
!OSScrollBar class methodsFor: 'recovered'!
hBarExtent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OS.
    recoveredValue1 := SmCxhscroll.
    recoveredValue2 := (recoveredValue0) getSystemMetrics: (recoveredValue1).
    recoveredValue3 := OS.
    recoveredValue4 := SmCyhscroll.
    recoveredValue5 := (recoveredValue3) getSystemMetrics: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) @ (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002fc64; bytecode file offset 0x1835a0"
!OSScrollBar class methodsFor: 'recovered'!
initializeWindowProc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := HInstanceNull.
    recoveredValue1 := ('SCROLLBAR') asPSZ.
    recoveredValue2 := recoveredValue1.
    ScrollBarClass := recoveredValue2.
    recoveredValue3 := OSWndclass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue0) getClassInfo: (recoveredValue1) lpwc: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) lpfnWndProc.
    ScrollBarProc := recoveredValue7.
    ^self
! !

