"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000aa8c; bytecode file offset 0x15e390"
!OSMenu class methodsFor: 'recovered'!
background
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorMenu.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000aadc; bytecode file offset 0x15e390"
!OSMenu class methodsFor: 'recovered'!
foreground
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorMenutext.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20026914; bytecode file offset 0x17a1b8"
!OSMenu class methodsFor: 'recovered'!
menuBarHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OS.
    recoveredValue1 := SmCymenu.
    recoveredValue2 := (recoveredValue0) getSystemMetrics: (recoveredValue1).
    recoveredValue3 := OS.
    recoveredValue4 := SmCyborder.
    recoveredValue5 := (recoveredValue3) getSystemMetrics: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002a3f0; bytecode file offset 0x17dc94"
!OSMenu class methodsFor: 'recovered'!
menuBarExtra
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) menuBarSpacing.
    recoveredValue1 := (recoveredValue0) * (3).
    recoveredValue2 := (recoveredValue1) // (2).
    recoveredValue3 := OS.
    recoveredValue4 := SmCxframe.
    recoveredValue5 := (recoveredValue3) getSystemMetrics: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002cfc8; bytecode file offset 0x180878"
!OSMenu class methodsFor: 'recovered'!
menuBarSpacing
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := MenuFont.
    recoveredValue1 := OSLogfont.
    recoveredValue2 := (recoveredValue1) fixedSize.
    recoveredValue3 := OSLogfont.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue0) getObject: (recoveredValue2) lpvObject: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) lfHeight.
    recoveredValue8 := (recoveredValue7) abs.
    ^recoveredValue8
! !

