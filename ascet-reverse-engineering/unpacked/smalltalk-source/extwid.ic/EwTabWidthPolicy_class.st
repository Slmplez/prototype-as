"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x2000184c; bytecode file offset 0x526c8"
!EwTabWidthPolicy class methodsFor: 'recovered'!
policyConstant
    (self) subclassResponsibility.
    ^self
! !

"extwid.ic method 0x20004e70; bytecode file offset 0x55ccc"
!EwTabWidthPolicy class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"extwid.ic method 0x20005d90; bytecode file offset 0x56b6c"
!EwTabWidthPolicy class methodsFor: 'recovered'!
forTabWidthPolicy: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) forTabWidthPolicy: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) initializeValuesFrom: (recoveredValue3).
    ^recoveredValue1
! !

"extwid.ic method 0x20005da0; bytecode file offset 0x56b6c"
!EwTabWidthPolicy class methodsFor: 'recovered'!
forTabWidthPolicy: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) forTabWidthPolicy: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) notebook: (recoveredValue3).
    ^recoveredValue1
! !

"extwid.ic method 0x20018b58; bytecode file offset 0x6992c"
!EwTabWidthPolicy class methodsFor: 'recovered'!
forTabWidthPolicy: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) subclasses.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) policyConstant.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) == (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) new.
    ^recoveredValue5
! !

