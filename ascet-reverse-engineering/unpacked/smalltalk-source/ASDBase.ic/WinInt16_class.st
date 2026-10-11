"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200a037c; bytecode file offset 0x99cc38"
!WinInt16 class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 |
    recoveredValue0 := super new: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20113144; bytecode file offset 0xa0fa2c"
!WinInt16 class methodsFor: 'recovered'!
with: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := WinInt16.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) int16At: (0) put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

