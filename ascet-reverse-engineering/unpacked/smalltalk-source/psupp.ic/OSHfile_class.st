"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000a958; bytecode file offset 0x15e244"
!OSHfile class methodsFor: 'recovered'!
ulopen: recoveredArg1 fnOpenMode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) lopen: (recoveredValue0) iReadWrite: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000a970; bytecode file offset 0x15e244"
!OSHfile class methodsFor: 'recovered'!
ulcreat: recoveredArg1 fnAttribute: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) lcreat: (recoveredValue0) iAttribute: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002157c; bytecode file offset 0x174eb0"
!OSHfile class methodsFor: 'recovered'!
lopen: recoveredArg1 iReadWrite: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Lopen.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200215ac; bytecode file offset 0x174eb0"
!OSHfile class methodsFor: 'recovered'!
lcreat: recoveredArg1 iAttribute: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Lcreat.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200260c4; bytecode file offset 0x179980"
!OSHfile class methodsFor: 'recovered'!
openFile: recoveredArg1 lpOpenBuff: recoveredArg2 fuMode: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OpenFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

