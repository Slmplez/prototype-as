"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000060; bytecode file offset 0xf3ec"
!AbtTimedWait class methodsFor: 'recovered'!
classComment
    ^self
! !

"abtdau.ic method 0x20000dac; bytecode file offset 0x10124"
!AbtTimedWait class methodsFor: 'recovered'!
forMilliseconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) waitInterval: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) wait.
    ^recoveredValue3
! !

"abtdau.ic method 0x200014f8; bytecode file offset 0x10870"
!AbtTimedWait class methodsFor: 'recovered'!
forSeconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) * (1000).
    (recoveredValue1) waitInterval: (recoveredValue3).
    recoveredValue4 := (recoveredValue0) wait.
    ^recoveredValue4
! !

