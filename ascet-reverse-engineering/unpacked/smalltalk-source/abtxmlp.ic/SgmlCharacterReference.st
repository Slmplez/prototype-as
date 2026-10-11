"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x200011e4; bytecode file offset 0x19a94"
!SgmlCharacterReference methodsFor: 'recovered'!
isCharacterReference
    ^true
! !

"abtxmlp.ic method 0x200042e4; bytecode file offset 0x1cae4"
!SgmlCharacterReference methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CRO.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    recoveredValue2 := (self) contents.
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := REFC.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    ^self
! !

