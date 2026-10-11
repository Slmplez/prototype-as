"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20200034; bytecode file offset 0xafc938"
!ASDExperimentEnvironmentApiWrapperCore methodsFor: 'recovered'!
workspace
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) propertyAt: ('Workspace').
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := ASDExperimentEnvironmentApiWrapperWorkspace.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) automationObject: (recoveredBlock7Value2).
    ^recoveredBlock7Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := ExASDExperimentEnvironmentError.
    (recoveredValue2) signalWith: ('Error getting workspace object').
    ^nil
! !

"ASDBase.ic method 0x20200060; bytecode file offset 0xafc938"
!ASDExperimentEnvironmentApiWrapperCore methodsFor: 'recovered'!
commands
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) propertyAt: ('Commands').
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := ASDExperimentEnvironmentApiWrapperCommandProvider.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) automationObject: (recoveredBlock7Value2).
    ^recoveredBlock7Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := ExASDExperimentEnvironmentError.
    (recoveredValue2) signalWith: ('Error getting commands object').
    ^nil
! !

