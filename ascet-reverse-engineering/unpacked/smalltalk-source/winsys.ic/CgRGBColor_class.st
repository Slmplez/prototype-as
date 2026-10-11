"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000c10; bytecode file offset 0x7ce40"
!CgRGBColor class methodsFor: 'recovered'!
maximumIntensity
    ^65535
! !

"winsys.ic method 0x20000c40; bytecode file offset 0x7ce40"
!CgRGBColor class methodsFor: 'recovered'!
halfIntensity
    ^32767
! !

"winsys.ic method 0x2001e578; bytecode file offset 0x9a740"
!CgRGBColor class methodsFor: 'recovered'!
fromOSRGB: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) \\ (256).
    recoveredValue2 := (recoveredValue1) * (257).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) // (256).
    recoveredValue5 := (recoveredValue4) \\ (256).
    recoveredValue6 := (recoveredValue5) * (257).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) // (65536).
    recoveredValue9 := (recoveredValue8) \\ (256).
    recoveredValue10 := (recoveredValue9) * (257).
    recoveredValue11 := (self) red: (recoveredValue2) green: (recoveredValue6) blue: (recoveredValue10).
    ^recoveredValue11
! !

