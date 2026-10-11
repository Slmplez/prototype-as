"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20001730; bytecode file offset 0x4c844"
!Bag class methodsFor: 'recovered'!
dictionaryClass
    | recoveredValue0 |
    recoveredValue0 := LookupTable.
    ^recoveredValue0
! !

"kernel.ic method 0x20002778; bytecode file offset 0x4d6ac"
!Bag class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) minimumSize.
    recoveredValue1 := (self) new: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20006704; bytecode file offset 0x51620"
!Bag class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := (self) dictionaryClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) occurrenceDictionary: (recoveredValue3).
    ^recoveredValue4
! !

