"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200001b8; bytecode file offset 0x15834"
!EsLocalNameBinding methodsFor: 'recovered'!
type
    ^'LOCAL'
! !

"parse.ic method 0x20000330; bytecode file offset 0x15994"
!EsLocalNameBinding methodsFor: 'recovered'!
isValidStoreTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) isValidStoreTarget.
    ^recoveredValue1
! !

"parse.ic method 0x200012d4; bytecode file offset 0x1692c"
!EsLocalNameBinding methodsFor: 'recovered'!
valueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) valueOn: (recoveredValue1).
    ^self
! !

"parse.ic method 0x20001738; bytecode file offset 0x16d90"
!EsLocalNameBinding methodsFor: 'recovered'!
storeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := value.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) storeOn: (recoveredValue1) valueRequired: (recoveredValue2).
    ^self
! !

