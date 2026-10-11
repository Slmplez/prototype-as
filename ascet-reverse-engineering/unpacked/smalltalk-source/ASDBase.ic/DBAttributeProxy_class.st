"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20072700; bytecode file offset 0x96f1c4"
!DBAttributeProxy class methodsFor: 'recovered'!
proxyID
    ^2
! !

"ASDBase.ic method 0x200cb788; bytecode file offset 0x9c80c4"
!DBAttributeProxy class methodsFor: 'recovered'!
indices
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := DBGlobalAttributeIdKey.
    recoveredValue2 := DBAttributeKey.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20126e4c; bytecode file offset 0xa23710"
!DBAttributeProxy class methodsFor: 'recovered'!
createWithBytes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createWithBytes: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) attributeName: ('').
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20126ea8; bytecode file offset 0xa2379c"
!DBAttributeProxy class methodsFor: 'recovered'!
createFromRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createFromRecord: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) attributeName.
    (recoveredValue2) attributeName: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

