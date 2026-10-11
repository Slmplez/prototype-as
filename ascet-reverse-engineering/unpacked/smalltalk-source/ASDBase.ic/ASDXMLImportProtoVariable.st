"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006d2d0; bytecode file offset 0x969c04"
!ASDXMLImportProtoVariable methodsFor: 'recovered'!
isClassVariable
    | recoveredValue0 |
    recoveredValue0 := isClassVariable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074acc; bytecode file offset 0x9757c8"
!ASDXMLImportProtoVariable methodsFor: 'recovered'!
isPrimitive
    ^true
! !

"ASDBase.ic method 0x20099268; bytecode file offset 0x995b2c"
!ASDXMLImportProtoVariable methodsFor: 'recovered'!
addDefaultImpl: recoveredArg1 to: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := ('todo') notNil.
    ^nil
! !

"ASDBase.ic method 0x20099274; bytecode file offset 0x995b2c"
!ASDXMLImportProtoVariable methodsFor: 'recovered'!
addDefaultData: recoveredArg1 to: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := ('todo') notNil.
    ^nil
! !

"ASDBase.ic method 0x200c3b80; bytecode file offset 0x9c058c"
!ASDXMLImportProtoVariable methodsFor: 'recovered'!
classVariable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isClassVariable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20100c60; bytecode file offset 0x9fd51c"
!ASDXMLImportProtoVariable methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super initOn: (recoveredValue0) oid: (recoveredValue1).
    isClassVariable := false.
    ^self
! !

