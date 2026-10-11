"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200a0410; bytecode file offset 0x99cccc"
!WinInt32 class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 |
    recoveredValue0 := super new: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2011316c; bytecode file offset 0xa0fa2c"
!WinInt32 class methodsFor: 'recovered'!
with: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := WinInt32.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) int32At: (0) put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

