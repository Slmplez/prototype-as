"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000934; bytecode file offset 0x15f90"
!EsAssocNameBinding methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"parse.ic method 0x20001374; bytecode file offset 0x169d8"
!EsAssocNameBinding methodsFor: 'recovered'!
valueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := value.
    (recoveredValue0) pushAssoc: (recoveredValue1).
    ^self
! !

"parse.ic method 0x200017f0; bytecode file offset 0x16e48"
!EsAssocNameBinding methodsFor: 'recovered'!
storeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := value.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) popAssoc: (recoveredValue1) valueRequired: (recoveredValue2).
    ^self
! !

"parse.ic method 0x20001974; bytecode file offset 0x16fd0"
!EsAssocNameBinding methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"parse.ic method 0x200021a8; bytecode file offset 0x177fc"
!EsAssocNameBinding methodsFor: 'recovered'!
variableName: recoveredArg1 type: recoveredArg2 value: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    variableName := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    type := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    value := recoveredValue2.
    ^self
! !

