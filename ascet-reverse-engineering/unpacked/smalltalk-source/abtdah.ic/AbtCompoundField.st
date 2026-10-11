"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200006b0; bytecode file offset 0x106f4"
!AbtCompoundField methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"abtdah.ic method 0x200006c8; bytecode file offset 0x106f4"
!AbtCompoundField methodsFor: 'recovered'!
fields
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) fields.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000e80; bytecode file offset 0x10eb8"
!AbtCompoundField methodsFor: 'recovered'!
setInitialValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setInitialValue: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x20000e8c; bytecode file offset 0x10eb8"
!AbtCompoundField methodsFor: 'recovered'!
fieldsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fieldsDo: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x20001bb8; bytecode file offset 0x11be8"
!AbtCompoundField methodsFor: 'recovered'!
fieldAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) fields.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

