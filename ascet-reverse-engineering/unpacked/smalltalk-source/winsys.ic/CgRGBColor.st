"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20018aa8; bytecode file offset 0x94c78"
!CgRGBColor methodsFor: 'recovered'!
asOSRGB
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) red.
    recoveredValue1 := (recoveredValue0) // (256).
    recoveredValue2 := (self) green.
    recoveredValue3 := (recoveredValue2) // (256).
    recoveredValue4 := (recoveredValue3) * (256).
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    recoveredValue6 := (self) blue.
    recoveredValue7 := (recoveredValue6) // (256).
    recoveredValue8 := (recoveredValue7) * (65536).
    recoveredValue9 := (recoveredValue5) + (recoveredValue8).
    ^recoveredValue9
! !

