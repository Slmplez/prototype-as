"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202f6118; bytecode file offset 0xbf29f4"
!ASDExperimentEnvironmentApiWrapperParameters methodsFor: 'recovered'!
setParameter: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := (self) invoke: ('SetParameterValue') withArguments: (recoveredValue1) returnType: (true).
    recoveredValue7 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 |
    recoveredBlock31Value0 := ExASDExperimentEnvironmentError.
    recoveredBlock31Value1 := recoveredArg1.
    recoveredBlock31Value2 := ('Error setting parameter %1') bindWith: (recoveredBlock31Value1).
    recoveredBlock31Value3 := (recoveredBlock31Value0) signalWith: (recoveredBlock31Value2).
    recoveredBlock31Value3
].
    recoveredValue8 := (recoveredValue6) ifNil: (recoveredValue7).
    ^recoveredValue8
! !

