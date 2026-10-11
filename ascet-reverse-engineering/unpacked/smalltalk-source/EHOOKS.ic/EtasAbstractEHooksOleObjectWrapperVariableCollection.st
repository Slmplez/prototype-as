"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000e44; bytecode file offset 0xffa8"
!EtasAbstractEHooksOleObjectWrapperVariableCollection methodsFor: 'recovered'!
count
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Count') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20001770; bytecode file offset 0x10908"
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

"EHOOKS.ic method 0x20001864; bytecode file offset 0x109cc"
!EtasAbstractEHooksOleObjectWrapperVariableCollection methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) automationObject.
    (recoveredValue2) at: (1) put: (recoveredValue4).
    recoveredLocal1 := recoveredValue1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) invoke: ('Add') withArguments: (recoveredValue5) returnType: (true).
    ^recoveredValue6
! !

