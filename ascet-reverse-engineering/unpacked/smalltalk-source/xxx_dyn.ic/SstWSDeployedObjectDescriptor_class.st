"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002a48; bytecode file offset 0x63b1c"
!SstWSDeployedObjectDescriptor class methodsFor: 'recovered'!
initializeCreationActionStrategies
    (self) subclassResponsibility.
    ^self
! !

"xxx_dyn.ic method 0x20003384; bytecode file offset 0x64464"
!SstWSDeployedObjectDescriptor class methodsFor: 'recovered'!
resetCreationActionStrategies
    (self) creationActionStrategies: (nil).
    ^self
! !

"xxx_dyn.ic method 0x20004400; bytecode file offset 0x654cc"
!SstWSDeployedObjectDescriptor class methodsFor: 'recovered'!
defaultExtensionsProcessor
    | recoveredValue0 |
    recoveredValue0 := defaultExtensionsProcessor.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005c1c; bytecode file offset 0x66d78"
!SstWSDeployedObjectDescriptor class methodsFor: 'recovered'!
creationActionStrategyNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) creationActionStrategyNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200062a8; bytecode file offset 0x67374"
!SstWSDeployedObjectDescriptor class methodsFor: 'recovered'!
addCreationActionStrategy: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) creationActionStrategies.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006384; bytecode file offset 0x67530"
!SstWSDeployedObjectDescriptor class methodsFor: 'recovered'!
creationActionStrategyNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) creationActionStrategies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000891c; bytecode file offset 0x699e8"
!SstWSDeployedObjectDescriptor class methodsFor: 'recovered'!
creationActionStrategies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    creationActionStrategies := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008948; bytecode file offset 0x69a14"
!SstWSDeployedObjectDescriptor class methodsFor: 'recovered'!
defaultExtensionsProcessor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultExtensionsProcessor := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200106cc; bytecode file offset 0x717a4"
!SstWSDeployedObjectDescriptor class methodsFor: 'recovered'!
creationActionStrategies
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := creationActionStrategies.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    (self) creationActionStrategies: (recoveredBlock6Value1).
    recoveredBlock6Value2 := (self) initializeCreationActionStrategies.
    recoveredBlock6Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := creationActionStrategies.
    ^recoveredValue2
! !

