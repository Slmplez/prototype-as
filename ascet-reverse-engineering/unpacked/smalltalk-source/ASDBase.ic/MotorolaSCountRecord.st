"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b8bc; bytecode file offset 0x948384"
!MotorolaSCountRecord methodsFor: 'recovered'!
count
    | recoveredValue0 |
    recoveredValue0 := (self) hexWordAt: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bca04; bytecode file offset 0x9b94b8"
!MotorolaSCountRecord methodsFor: 'recovered'!
putOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) count.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) putRecordCount: (recoveredValue1) on: (recoveredValue2).
    ^self
! !

