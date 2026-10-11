"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200717e4; bytecode file offset 0x96e578"
!OSStructure class methodsFor: 'recovered'!
defaultVariableCount
    ^0
! !

"ASDBase.ic method 0x2019288c; bytecode file offset 0xa8f154"
!OSStructure class methodsFor: 'recovered'!
callocStruct: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) fixedSize.
    recoveredValue1 := (self) variableSize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue0) + (recoveredValue3).
    recoveredValue5 := EsReftypePointer.
    recoveredValue6 := (self) privateCalloc: (recoveredValue4) reftype: (recoveredValue5).
    recoveredValue7 := EsReftypePointer.
    recoveredValue8 := (self) reference: (recoveredValue6) reftype: (recoveredValue7) offset: (0).
    ^recoveredValue8
! !

