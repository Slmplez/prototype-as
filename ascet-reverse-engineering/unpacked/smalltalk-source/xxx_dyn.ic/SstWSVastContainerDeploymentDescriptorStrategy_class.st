"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200013e4; bytecode file offset 0x626a4"
!SstWSVastContainerDeploymentDescriptorStrategy class methodsFor: 'recovered'!
strategyIDs
    ^#('SstWSContainer')
! !

"xxx_dyn.ic method 0x20005450; bytecode file offset 0x6655c"
!SstWSVastContainerDeploymentDescriptorStrategy class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    (self) register: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20005490; bytecode file offset 0x6655c"
!SstWSVastContainerDeploymentDescriptorStrategy class methodsFor: 'recovered'!
setupAfterLoad
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    (self) register: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20010a94; bytecode file offset 0x71b68"
!SstWSVastContainerDeploymentDescriptorStrategy class methodsFor: 'recovered'!
register: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) strategyIDs.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := SstWSDeploymentManager.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value0) register: (recoveredBlock5Value1) as: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

