"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20093c1c; bytecode file offset 0x9904d8"
!CTreeSearchObjectRecordArray class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fixedSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := (self) new: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b74e4; bytecode file offset 0x9b3da0"
!CTreeSearchObjectRecordArray class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

