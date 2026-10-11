"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20067934; bytecode file offset 0x9646f8"
!AbtPluggableTypeConverter methodsFor: 'recovered'!
fromBlock
    | recoveredValue0 |
    recoveredValue0 := fromBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068664; bytecode file offset 0x965b90"
!AbtPluggableTypeConverter methodsFor: 'recovered'!
toBlock
    | recoveredValue0 |
    recoveredValue0 := toBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ae204; bytecode file offset 0x9aaad8"
!AbtPluggableTypeConverter methodsFor: 'recovered'!
objectFromString: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fromBlock.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) smalltalkClass.
    recoveredValue3 := (recoveredValue0) value: (recoveredValue1) value: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae218; bytecode file offset 0x9aaad8"
!AbtPluggableTypeConverter methodsFor: 'recovered'!
convertToString: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) toBlock.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) smalltalkClass.
    recoveredValue3 := (recoveredValue0) value: (recoveredValue1) value: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bf720; bytecode file offset 0x9bc0b4"
!AbtPluggableTypeConverter methodsFor: 'recovered'!
fromBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fromBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c08f4; bytecode file offset 0x9bd228"
!AbtPluggableTypeConverter methodsFor: 'recovered'!
toBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toBlock := recoveredValue0.
    ^self
! !

