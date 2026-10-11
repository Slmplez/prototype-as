"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2019a460; bytecode file offset 0xa97444"
!EtasAbstractEHooksOleObjectWrapperVariableCollection methodsFor: 'recovered'!
getReadAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('GetReadAt') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

