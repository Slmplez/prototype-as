"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066004; bytecode file offset 0x963428"
!DBTriple methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := key.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066c4c; bytecode file offset 0x9646f8"
!DBTriple methodsFor: 'recovered'!
value1
    | recoveredValue0 |
    recoveredValue0 := value1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200685bc; bytecode file offset 0x965b90"
!DBTriple methodsFor: 'recovered'!
value2
    | recoveredValue0 |
    recoveredValue0 := value2.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be0b4; bytecode file offset 0x9bb178"
!DBTriple methodsFor: 'recovered'!
key: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    key := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bec58; bytecode file offset 0x9bc0b4"
!DBTriple methodsFor: 'recovered'!
value1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value1 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf9bc; bytecode file offset 0x9bd228"
!DBTriple methodsFor: 'recovered'!
value2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value2 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2028edd0; bytecode file offset 0xb8b69c"
!DBTriple methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPut: ($ ).
    recoveredValue2 := key.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPutAll: ('->').
    recoveredValue5 := value1.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) nextPutAll: ('/').
    recoveredValue8 := value2.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9).
    ^self
! !

