"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068614; bytecode file offset 0x965b90"
!ASDExperimentEnvironmentApiWrapperCommand methodsFor: 'recovered'!
command
    | recoveredValue0 |
    recoveredValue0 := command.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bf9e4; bytecode file offset 0x9bd228"
!ASDExperimentEnvironmentApiWrapperCommand methodsFor: 'recovered'!
command: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    command := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201a36e0; bytecode file offset 0xa9ffac"
!ASDExperimentEnvironmentApiWrapperCommand methodsFor: 'recovered'!
parameters
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) propertyAt: ('Parameters').
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := ASDExperimentEnvironmentApiWrapperParameters.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) automationObject: (recoveredBlock7Value2).
    ^recoveredBlock7Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2020a938; bytecode file offset 0xb0720c"
!ASDExperimentEnvironmentApiWrapperCommand methodsFor: 'recovered'!
do
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) invoke: ('Do') withArguments: (#()) returnType: (true).
    recoveredValue1 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := ExASDExperimentEnvironmentError.
    recoveredBlock12Value1 := command.
    recoveredBlock12Value2 := ('Error executing command %1') bindWith: (recoveredBlock12Value1).
    recoveredBlock12Value3 := (recoveredBlock12Value0) signalWith: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

