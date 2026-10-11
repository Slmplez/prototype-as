"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d1960; bytecode file offset 0x9ce734"
!EtasAbstractEHooksOleObjectWrapperCollection methodsFor: 'recovered'!
count
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Count') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201ab3d4; bytecode file offset 0xaa7ca0"
!EtasAbstractEHooksOleObjectWrapperCollection methodsFor: 'recovered'!
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

