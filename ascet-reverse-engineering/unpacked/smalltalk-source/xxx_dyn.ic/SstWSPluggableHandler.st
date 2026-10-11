"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003ba4; bytecode file offset 0x64d78"
!SstWSPluggableHandler methodsFor: 'recovered'!
invokeBlock
    | recoveredValue0 |
    recoveredValue0 := invokeBlock.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200080a4; bytecode file offset 0x692b8"
!SstWSPluggableHandler methodsFor: 'recovered'!
invokeBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    invokeBlock := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2001009c; bytecode file offset 0x71180"
!SstWSPluggableHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) invokeBlock.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) value: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

