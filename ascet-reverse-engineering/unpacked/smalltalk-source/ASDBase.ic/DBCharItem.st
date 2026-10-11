"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c9174; bytecode file offset 0x9c5a34"
!DBCharItem methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := super putItem: (recoveredValue1) in: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e6d08; bytecode file offset 0x9e35cc"
!DBCharItem methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Character.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super getItemFrom: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) value: (recoveredValue2).
    ^recoveredValue3
! !

