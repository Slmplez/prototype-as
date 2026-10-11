"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002fae4; bytecode file offset 0x934580"
!ASDDBProxyWrapperWithPath methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbProxy.
    recoveredValue1 := (recoveredValue0) label.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065fa4; bytecode file offset 0x963428"
!ASDDBProxyWrapperWithPath methodsFor: 'recovered'!
dbProxy
    | recoveredValue0 |
    recoveredValue0 := dbProxy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066e9c; bytecode file offset 0x9646f8"
!ASDDBProxyWrapperWithPath methodsFor: 'recovered'!
dbPath
    | recoveredValue0 |
    recoveredValue0 := dbPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082ec4; bytecode file offset 0x97f798"
!ASDDBProxyWrapperWithPath methodsFor: 'recovered'!
dbProxy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    dbProxy := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082f50; bytecode file offset 0x97f81c"
!ASDDBProxyWrapperWithPath methodsFor: 'recovered'!
dbPath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    dbPath := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201ae6b8; bytecode file offset 0xaaaf80"
!ASDDBProxyWrapperWithPath methodsFor: 'recovered'!
itemPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := itemPath.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := (self) dbPath.
    recoveredBlock6Value1 := (recoveredBlock6Value0) , ('\').
    recoveredBlock6Value2 := (self) label.
    recoveredBlock6Value3 := (recoveredBlock6Value1) , (recoveredBlock6Value2).
    recoveredBlock6Value4 := recoveredBlock6Value3.
    itemPath := recoveredBlock6Value4.
    recoveredBlock6Value3
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

