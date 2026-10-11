"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000774; bytecode file offset 0x619a4"
!SstWSSoapHttpBinding class methodsFor: 'recovered'!
abtXmlCacheKey
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002b78; bytecode file offset 0x63cb8"
!SstWSSoapHttpBinding class methodsFor: 'recovered'!
registry: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Registry := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000336c; bytecode file offset 0x64464"
!SstWSSoapHttpBinding class methodsFor: 'recovered'!
cleanUpBeforeRemove
    (self) registry: (nil).
    ^self
! !

"xxx_dyn.ic method 0x2000608c; bytecode file offset 0x671b8"
!SstWSSoapHttpBinding class methodsFor: 'recovered'!
unregister: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) unregister: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006314; bytecode file offset 0x67530"
!SstWSSoapHttpBinding class methodsFor: 'recovered'!
register: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) register: (recoveredValue1) as: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200063a4; bytecode file offset 0x67530"
!SstWSSoapHttpBinding class methodsFor: 'recovered'!
lookup: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) lookup: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000e640; bytecode file offset 0x6f718"
!SstWSSoapHttpBinding class methodsFor: 'recovered'!
registry
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Registry.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := SstWSSimpleRegistry.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := (self) registry: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := Registry.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200109f4; bytecode file offset 0x71ac8"
!SstWSSoapHttpBinding class methodsFor: 'recovered'!
lookup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('No Http binding specified for %1') bindWith: (recoveredBlock7Value0).
    recoveredBlock7Value2 := (self) error: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (self) lookup: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

