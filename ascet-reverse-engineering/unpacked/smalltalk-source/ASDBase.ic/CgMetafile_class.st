"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20145868; bytecode file offset 0xa42134"
!CgMetafile class methodsFor: 'recovered'!
screen: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super screen: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := OSHdc.
    recoveredValue4 := (recoveredValue3) createMetaFile: (nil).
    (recoveredValue2) handle: (recoveredValue4).
    recoveredValue5 := (recoveredValue1) shouldNotBeFreed.
    ^recoveredValue5
! !

