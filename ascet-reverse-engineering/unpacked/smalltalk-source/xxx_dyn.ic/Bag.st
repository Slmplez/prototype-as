"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000ce44; bytecode file offset 0x6df24"
!Bag methodsFor: 'recovered'!
sstAsShallowValue
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) occurrenceDictionary.
    recoveredValue4 := (recoveredValue3) sstAsShallowValue.
    (recoveredValue2) occurrenceDictionary: (recoveredValue4).
    recoveredValue5 := SstShallowValueWrapper.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) for: (recoveredValue6).
    ^recoveredValue7
! !

