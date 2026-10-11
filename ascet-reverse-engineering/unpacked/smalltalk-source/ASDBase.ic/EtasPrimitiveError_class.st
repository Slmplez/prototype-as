"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001fe98; bytecode file offset 0x92209c"
!EtasPrimitiveError class methodsFor: 'recovered'!
labelString
    ^'Smalltalk-Primitive-Error'
! !

"ASDBase.ic method 0x20137a0c; bytecode file offset 0xa342d4"
!EtasPrimitiveError class methodsFor: 'recovered'!
primitiveFailed
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) primitiveErrorCode.
    recoveredValue4 := (self) primitiveBadArgumentNumber.
    recoveredValue5 := (recoveredValue2) primitive: (recoveredValue3) withArgument: (recoveredValue4) backUp: (1).
    ^recoveredValue5
! !

