"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20041708; bytecode file offset 0x93e1a0"
!MCSSimProcedure methodsFor: 'recovered'!
returnValueName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := returnValue.
    recoveredValue1 := (recoveredValue0) key.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200418ac; bytecode file offset 0x93e1a0"
!MCSSimProcedure methodsFor: 'recovered'!
returnValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := returnValue.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d970; bytecode file offset 0x95a234"
!MCSSimProcedure methodsFor: 'recovered'!
hasReturnValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := returnValue.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006688c; bytecode file offset 0x963428"
!MCSSimProcedure methodsFor: 'recovered'!
procedureName
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067064; bytecode file offset 0x9646f8"
!MCSSimProcedure methodsFor: 'recovered'!
isCT
    | recoveredValue0 |
    recoveredValue0 := cName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006743c; bytecode file offset 0x9646f8"
!MCSSimProcedure methodsFor: 'recovered'!
cName
    | recoveredValue0 |
    recoveredValue0 := cName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006877c; bytecode file offset 0x965b90"
!MCSSimProcedure methodsFor: 'recovered'!
arguments
    | recoveredValue0 |
    recoveredValue0 := arguments.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be6d4; bytecode file offset 0x9bb178"
!MCSSimProcedure methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bea58; bytecode file offset 0x9bc0b4"
!MCSSimProcedure methodsFor: 'recovered'!
isCT: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf4c0; bytecode file offset 0x9bc0b4"
!MCSSimProcedure methodsFor: 'recovered'!
cName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eb430; bytecode file offset 0x9e7cec"
!MCSSimProcedure methodsFor: 'recovered'!
returnValue: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := returnValue.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) key: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2013a4a4; bytecode file offset 0xa36d68"
!MCSSimProcedure methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    arguments := recoveredValue1.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) new.
    returnValue := recoveredValue3.
    (self) isCT: (false).
    ^self
! !

"ASDBase.ic method 0x2017d0d4; bytecode file offset 0xa799b8"
!MCSSimProcedure methodsFor: 'recovered'!
addArgument: recoveredArg1 name: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Association.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) key: (recoveredValue1) value: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := arguments.
    recoveredValue5 := Array.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue4) , (recoveredValue7).
    arguments := recoveredValue8.
    ^self
! !

"ASDBase.ic method 0x201cbc78; bytecode file offset 0xac856c"
!MCSSimProcedure methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) name.
    recoveredValue5 := (recoveredValue4) , (': ').
    recoveredValue6 := (self) procedureName.
    recoveredValue7 := (recoveredValue5) , (recoveredValue6).
    (recoveredValue2) nextPutAll: (recoveredValue7).
    (recoveredValue0) cr.
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2027a0fc; bytecode file offset 0xb769e8"
!MCSSimProcedure methodsFor: 'recovered'!
allArgumentValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := arguments.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := Array.
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    recoveredBlock14Value3 := (recoveredBlock14Value2) value.
    recoveredBlock14Value4 := (recoveredBlock14Value1) with: (recoveredBlock14Value3).
    recoveredBlock14Value5 := (recoveredBlock14Value0) , (recoveredBlock14Value4).
    recoveredBlock14Value6 := recoveredBlock14Value5.
    recoveredLocal1 := recoveredBlock14Value6.
    recoveredBlock14Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

