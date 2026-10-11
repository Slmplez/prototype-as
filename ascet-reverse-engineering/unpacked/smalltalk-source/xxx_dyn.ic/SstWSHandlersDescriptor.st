"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002e8c; bytecode file offset 0x64108"
!SstWSHandlersDescriptor methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) handlers.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20003744; bytecode file offset 0x649e8"
!SstWSHandlersDescriptor methodsFor: 'recovered'!
namespace
    | recoveredValue0 |
    recoveredValue0 := namespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003970; bytecode file offset 0x64bac"
!SstWSHandlersDescriptor methodsFor: 'recovered'!
handlers
    | recoveredValue0 |
    recoveredValue0 := handlers.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200060ec; bytecode file offset 0x671b8"
!SstWSHandlersDescriptor methodsFor: 'recovered'!
addHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handlers.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20007e74; bytecode file offset 0x68f50"
!SstWSHandlersDescriptor methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespace := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007ec8; bytecode file offset 0x69104"
!SstWSHandlersDescriptor methodsFor: 'recovered'!
handlers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handlers := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000ab90; bytecode file offset 0x6bc84"
!SstWSHandlersDescriptor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) handlers: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20012dec; bytecode file offset 0x73ec0"
!SstWSHandlersDescriptor methodsFor: 'recovered'!
initializeFor: recoveredArg1 using: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handlers.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (self) namespace.
    recoveredBlock5Value4 := (recoveredBlock5Value0) initializeFor: (recoveredBlock5Value1) using: (recoveredBlock5Value2) inNamespace: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

