"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200585a8; bytecode file offset 0x956284"
!SGVectorData class methodsFor: 'recovered'!
createForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initializeForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ce44; bytecode file offset 0x9599ac"
!SGVectorData class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBFloat.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createForType: (recoveredValue1).
    ^recoveredValue2
! !

