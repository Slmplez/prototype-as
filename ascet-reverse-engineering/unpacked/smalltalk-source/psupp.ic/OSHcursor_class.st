"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20009328; bytecode file offset 0x15cd08"
!OSHcursor class methodsFor: 'recovered'!
getCursor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetCursor.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f878; bytecode file offset 0x163194"
!OSHcursor class methodsFor: 'recovered'!
loadCursorFromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LoadCursorFromFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (recoveredValue2).
    recoveredValue4 := (self) immediate: (recoveredValue3).
    ^recoveredValue4
! !

