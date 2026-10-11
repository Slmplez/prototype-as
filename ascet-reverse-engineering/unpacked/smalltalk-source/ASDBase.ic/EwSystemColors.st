"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2011241c; bytecode file offset 0xa0ed00"
!EwSystemColors methodsFor: 'recovered'!
infoText
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorInfotext.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20112438; bytecode file offset 0xa0ed00"
!EwSystemColors methodsFor: 'recovered'!
infoBackground
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorInfobk.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

