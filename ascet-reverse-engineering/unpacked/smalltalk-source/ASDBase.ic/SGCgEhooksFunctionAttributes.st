"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20042f2c; bytecode file offset 0x9451f8"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
enablerParameter
    | recoveredValue0 |
    recoveredValue0 := (self) getStringAttribute: ('EnablerParameter').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043a8c; bytecode file offset 0x9451f8"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
period
    | recoveredValue0 |
    recoveredValue0 := (self) getAttribute: ('Period').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004499c; bytecode file offset 0x9451f8"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
forceWrites
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolAttribute: ('ForceWrites').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045c3c; bytecode file offset 0x9451f8"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
controlVariable
    | recoveredValue0 |
    recoveredValue0 := (self) getStringAttribute: ('ControlVariable').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047b4c; bytecode file offset 0x9451f8"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
indicatorVariable
    | recoveredValue0 |
    recoveredValue0 := (self) getStringAttribute: ('IndicatorVariable').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a3540; bytecode file offset 0x9a0b4c"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
controlVariable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('ControlVariable') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3940; bytecode file offset 0x9a0b4c"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
dispatchPoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('DispatchPoint') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a39a0; bytecode file offset 0x9a0b4c"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
forceWrites: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('ForceWrites') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3b80; bytecode file offset 0x9a0b4c"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
indicatorVariable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('IndicatorVariable') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3c20; bytecode file offset 0x9a0b4c"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
enablerParameter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('EnablerParameter') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a41b0; bytecode file offset 0x9a0b4c"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
period: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('Period') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201635fc; bytecode file offset 0xa5fec0"
!SGCgEhooksFunctionAttributes methodsFor: 'recovered'!
dispatchPoint
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getAttribute: ('DispatchPoint').
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    ^recoveredBlock7Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^''
! !

