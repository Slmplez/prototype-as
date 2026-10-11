"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200aad84; bytecode file offset 0x9a7658"
!SGBdlMethodPort class methodsFor: 'recovered'!
createForVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) aliasName.
    (recoveredValue1) aliasName: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fecf8; bytecode file offset 0x9fb5bc"
!SGBdlMethodPort class methodsFor: 'recovered'!
createForMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) initForMethod: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) aliasName.
    (recoveredValue3) aliasName: (recoveredValue5).
    ^recoveredValue0
! !

