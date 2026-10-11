"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000188; bytecode file offset 0x15834"
!EsInstanceVariableBinding methodsFor: 'recovered'!
type
    ^'INSTVAR'
! !

"parse.ic method 0x20001380; bytecode file offset 0x169d8"
!EsInstanceVariableBinding methodsFor: 'recovered'!
valueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := value.
    (recoveredValue0) pushInstance: (recoveredValue1).
    ^self
! !

"parse.ic method 0x200017e4; bytecode file offset 0x16e48"
!EsInstanceVariableBinding methodsFor: 'recovered'!
storeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := value.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) popInstance: (recoveredValue1) valueRequired: (recoveredValue2).
    ^self
! !

