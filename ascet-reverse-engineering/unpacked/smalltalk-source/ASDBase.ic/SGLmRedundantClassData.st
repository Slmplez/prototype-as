"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008060; bytecode file offset 0x908be4"
!SGLmRedundantClassData methodsFor: 'recovered'!
checkedModelName
    | recoveredValue0 |
    recoveredValue0 := (self) mdlName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079f3c; bytecode file offset 0x97c330"
!SGLmRedundantClassData methodsFor: 'recovered'!
hasSetAccess
    ^false
! !

"ASDBase.ic method 0x2007b144; bytecode file offset 0x97c330"
!SGLmRedundantClassData methodsFor: 'recovered'!
hasGetAccess
    ^false
! !

"ASDBase.ic method 0x200c8fb4; bytecode file offset 0x9c5874"
!SGLmRedundantClassData methodsFor: 'recovered'!
createType: recoveredArg1 implementation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super createType: (recoveredValue0) implementation: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asRedundantModelType.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e65d0; bytecode file offset 0x9e30bc"
!SGLmRedundantClassData methodsFor: 'recovered'!
mdlVarAttributes
    | recoveredValue0 |
    super mdlVarAttributes.
    recoveredValue0 := (self) mdlBuilder.
    (recoveredValue0) redundantDataSlave.
    ^self
! !

