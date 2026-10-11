"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000380c; bytecode file offset 0x649e8"
!SstWSOperationDescriptor methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003a10; bytecode file offset 0x64bac"
!SstWSOperationDescriptor methodsFor: 'recovered'!
qName
    | recoveredValue0 |
    recoveredValue0 := qName.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003bfc; bytecode file offset 0x64d78"
!SstWSOperationDescriptor methodsFor: 'recovered'!
flow
    | recoveredValue0 |
    recoveredValue0 := flow.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007db4; bytecode file offset 0x68f50"
!SstWSOperationDescriptor methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007eb8; bytecode file offset 0x69104"
!SstWSOperationDescriptor methodsFor: 'recovered'!
qName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    qName := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000807c; bytecode file offset 0x692b8"
!SstWSOperationDescriptor methodsFor: 'recovered'!
flow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    flow := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20013578; bytecode file offset 0x74654"
!SstWSOperationDescriptor methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPut: ($().
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) qName.
    recoveredValue5 := (recoveredValue4) abrAsString.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPut: ($)).
    ^self
! !

