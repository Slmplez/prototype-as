"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001168; bytecode file offset 0x626a4"
!SstWSDeploymentStrategy class methodsFor: 'recovered'!
strategyIDs
    ^#()
! !

"xxx_dyn.ic method 0x20001174; bytecode file offset 0x626a4"
!SstWSDeploymentStrategy class methodsFor: 'recovered'!
strategyURIs
    ^#()
! !

"xxx_dyn.ic method 0x20005440; bytecode file offset 0x6655c"
!SstWSDeploymentStrategy class methodsFor: 'recovered'!
setupAfterLoad
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    (self) register: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20009460; bytecode file offset 0x6a544"
!SstWSDeploymentStrategy class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) container: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) initialize.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2001a3c8; bytecode file offset 0x7b4a0"
!SstWSDeploymentStrategy class methodsFor: 'recovered'!
register: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
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
    recoveredValue2 := (self) strategyURIs.
    recoveredValue3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := SstWSDeploymentManager.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := recoveredBlock26Arg1.
    recoveredBlock26Value3 := (recoveredBlock26Value0) register: (recoveredBlock26Value1) as: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

