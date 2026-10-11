"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000038; bytecode file offset 0x6147c"
!SstWSHandler methodsFor: 'recovered'!
cleanup
    ^self
! !

"xxx_dyn.ic method 0x200003f0; bytecode file offset 0x615ac"
!SstWSHandler methodsFor: 'recovered'!
undo: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20002b34; bytecode file offset 0x63c2c"
!SstWSHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"xxx_dyn.ic method 0x2000374c; bytecode file offset 0x649e8"
!SstWSHandler methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003978; bytecode file offset 0x64bac"
!SstWSHandler methodsFor: 'recovered'!
options
    | recoveredValue0 |
    recoveredValue0 := options.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20006258; bytecode file offset 0x67374"
!SstWSHandler methodsFor: 'recovered'!
addOption: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000664c; bytecode file offset 0x67758"
!SstWSHandler methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) options: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20007004; bytecode file offset 0x681b0"
!SstWSHandler methodsFor: 'recovered'!
getOptionNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007ddc; bytecode file offset 0x68f50"
!SstWSHandler methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008020; bytecode file offset 0x69104"
!SstWSHandler methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    ^self
! !

