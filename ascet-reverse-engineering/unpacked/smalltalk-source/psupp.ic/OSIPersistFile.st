"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001d980; bytecode file offset 0x17124c"
!OSIPersistFile methodsFor: 'recovered'!
isDirty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IsDirty.
    recoveredValue1 := (recoveredValue0) callWith: (4) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2002319c; bytecode file offset 0x176a68"
!OSIPersistFile methodsFor: 'recovered'!
getCurFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetCurFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (8) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200254d4; bytecode file offset 0x178d74"
!OSIPersistFile methodsFor: 'recovered'!
saveCompleted: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SaveCompleted.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := (recoveredValue0) callWith: (7) with: (self) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200280c8; bytecode file offset 0x17b968"
!OSIPersistFile methodsFor: 'recovered'!
load: recoveredArg1 dwMode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Load.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (5) with: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200280ec; bytecode file offset 0x17b98c"
!OSIPersistFile methodsFor: 'recovered'!
save: recoveredArg1 fRemember: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Save.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (6) with: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

