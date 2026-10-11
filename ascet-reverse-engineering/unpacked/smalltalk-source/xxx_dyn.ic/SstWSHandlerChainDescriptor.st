"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003e4c; bytecode file offset 0x64fe8"
!SstWSHandlerChainDescriptor methodsFor: 'recovered'!
handlers
    | recoveredValue0 |
    recoveredValue0 := handlers.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005268; bytecode file offset 0x66334"
!SstWSHandlerChainDescriptor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    handlers := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x200060dc; bytecode file offset 0x671b8"
!SstWSHandlerChainDescriptor methodsFor: 'recovered'!
addHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handlers.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000836c; bytecode file offset 0x69508"
!SstWSHandlerChainDescriptor methodsFor: 'recovered'!
handlers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handlers := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200155a0; bytecode file offset 0x76674"
!SstWSHandlerChainDescriptor methodsFor: 'recovered'!
buildHandlerComponentsFor: recoveredArg1 in: recoveredArg2 using: recoveredArg3 inNamespace: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handlers.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := recoveredArg3.
    recoveredBlock5Value4 := recoveredArg4.
    recoveredBlock5Value5 := (recoveredBlock5Value1) initializeFor: (recoveredBlock5Value2) using: (recoveredBlock5Value3) inNamespace: (recoveredBlock5Value4).
    recoveredBlock5Value6 := (recoveredBlock5Value0) addHandler: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

