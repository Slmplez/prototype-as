"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"oleb.ic method 0x20000464; bytecode file offset 0x790c"
!OleEnumerator class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"oleb.ic method 0x20000a98; bytecode file offset 0x7f44"
!OleEnumerator class methodsFor: 'recovered'!
on: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) collection: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) makeStubOn: (recoveredValue6).
    (recoveredValue4) iEnumX: (recoveredValue7).
    ^recoveredValue1
! !

