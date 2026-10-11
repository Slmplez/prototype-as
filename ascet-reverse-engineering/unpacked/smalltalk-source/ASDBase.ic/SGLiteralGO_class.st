"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200efe14; bytecode file offset 0x9ec6d8"
!SGLiteralGO class methodsFor: 'recovered'!
connectorNameDict
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('Get') put: ('Get').
    ^recoveredValue1
! !

"ASDBase.ic method 0x201053bc; bytecode file offset 0xa01c88"
!SGLiteralGO class methodsFor: 'recovered'!
interfacePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGReservedNames.
    recoveredValue4 := (recoveredValue3) getMethod.
    (recoveredValue2) at: (recoveredValue4) put: (#(150)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20138590; bytecode file offset 0xa34e50"
!SGLiteralGO class methodsFor: 'recovered'!
createDefault: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createDefault: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) actualNameVisibility: (true).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201b79e0; bytecode file offset 0xab42b0"
!SGLiteralGO class methodsFor: 'recovered'!
interfaceProcs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGAliasMethod.
    recoveredValue4 := SGReservedNames.
    recoveredValue5 := (recoveredValue4) getMethod.
    recoveredValue6 := (recoveredValue3) createWithReturn: (recoveredValue5) template: (nil).
    (recoveredValue2) at: (1) put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

