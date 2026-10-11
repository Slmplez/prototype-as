"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000288c; bytecode file offset 0x63b1c"
!SstWSSimpleChain methodsFor: 'recovered'!
clear
    (self) initialize.
    ^self
! !

"xxx_dyn.ic method 0x20002ecc; bytecode file offset 0x64108"
!SstWSSimpleChain methodsFor: 'recovered'!
addHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) handlers.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addLast: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20003c74; bytecode file offset 0x64d78"
!SstWSSimpleChain methodsFor: 'recovered'!
handlers
    | recoveredValue0 |
    recoveredValue0 := handlers.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200080bc; bytecode file offset 0x692b8"
!SstWSSimpleChain methodsFor: 'recovered'!
handlers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handlers := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000aae8; bytecode file offset 0x6bc84"
!SstWSSimpleChain methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) handlers: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x200100b0; bytecode file offset 0x71180"
!SstWSSimpleChain methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) handlers.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) invoke: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

