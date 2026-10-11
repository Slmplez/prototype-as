"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ea66c; bytecode file offset 0x9e6f78"
!SGLmMethodData class methodsFor: 'recovered'!
createForArgument: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlNameForVar: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) initializeVariable: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ea684; bytecode file offset 0x9e6f78"
!SGLmMethodData class methodsFor: 'recovered'!
createForReturnArgument: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlNameForReturn: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) initializeVariable: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ea69c; bytecode file offset 0x9e6f78"
!SGLmMethodData class methodsFor: 'recovered'!
createForLocalVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlNameForVar: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) initializeVariable: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201551c0; bytecode file offset 0xa51a90"
!SGLmMethodData class methodsFor: 'recovered'!
createForInput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) elementName.
    recoveredValue4 := ('in') , (recoveredValue3).
    recoveredValue5 := (self) createMdlName: (recoveredValue4).
    (recoveredValue1) name: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue0) initializeVariable: (recoveredValue6).
    ^recoveredValue7
! !

