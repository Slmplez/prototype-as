"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016dcc; bytecode file offset 0x92209c"
!AMLFloatTypes methodsFor: 'recovered'!
defaultValue
    ^#[0 0 0 0 0 0 0 0]
! !

"ASDBase.ic method 0x200fcfdc; bytecode file offset 0x9f9898"
!AMLFloatTypes methodsFor: 'recovered'!
putValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := value.
    (self) putIn: (recoveredValue0) float: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010ef5c; bytecode file offset 0xa0b81c"
!AMLFloatTypes methodsFor: 'recovered'!
getValueFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super getValueFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getNumber: (recoveredValue1).
    value := recoveredValue2.
    ^self
! !

