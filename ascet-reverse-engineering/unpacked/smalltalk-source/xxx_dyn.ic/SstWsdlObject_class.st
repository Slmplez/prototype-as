"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200011ec; bytecode file offset 0x626a4"
!SstWsdlObject class methodsFor: 'recovered'!
tagName
    ^''
! !

"xxx_dyn.ic method 0x20002ddc; bytecode file offset 0x64108"
!SstWsdlObject class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) definedBy: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005860; bytecode file offset 0x66a34"
!SstWsdlObject class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20009e7c; bytecode file offset 0x6af50"
!SstWsdlObject class methodsFor: 'recovered'!
name: recoveredArg1 namespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) setName: (recoveredValue2) namespace: (recoveredValue3).
    ^recoveredValue4
! !

