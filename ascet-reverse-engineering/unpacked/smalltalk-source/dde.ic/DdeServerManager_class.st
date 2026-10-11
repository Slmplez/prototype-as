"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dde.ic method 0x20000704; bytecode file offset 0x69e4"
!DdeServerManager class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatDDE.
    recoveredValue1 := (recoveredValue0) indexedMsg: (4).
    (self) error: (recoveredValue1).
    ^self
! !

"dde.ic method 0x20000b18; bytecode file offset 0x6dec"
!DdeServerManager class methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) caseSensitive: (false).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) initialize.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) name: (recoveredValue3).
    ^recoveredValue4
! !

"dde.ic method 0x20000b48; bytecode file offset 0x6e1c"
!DdeServerManager class methodsFor: 'recovered'!
name: recoveredArg1 caseSensitive: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) caseSensitive: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) initialize.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) name: (recoveredValue4).
    ^recoveredValue5
! !

