"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001d990; bytecode file offset 0x17124c"
!OSIPersistStream methodsFor: 'recovered'!
isDirty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IsDirty.
    recoveredValue1 := (recoveredValue0) callWith: (4) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20022d5c; bytecode file offset 0x176668"
!OSIPersistStream methodsFor: 'recovered'!
load: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Load.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (5) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002308c; bytecode file offset 0x176988"
!OSIPersistStream methodsFor: 'recovered'!
getSizeMax: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetSizeMax.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (7) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20025ac8; bytecode file offset 0x1793d4"
!OSIPersistStream methodsFor: 'recovered'!
save: recoveredArg1 fClearDirty: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Save.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (6) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

