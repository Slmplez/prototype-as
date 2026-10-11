"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20003674; bytecode file offset 0x268b4"
!Character class methodsFor: 'recovered'!
loadSpecialRootFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) loadByte.
    recoveredValue2 := (self) value: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) originalPlatformFlags.
    recoveredValue5 := (recoveredValue2) convertFromPlatform: (recoveredValue4).
    ^recoveredValue5
! !

