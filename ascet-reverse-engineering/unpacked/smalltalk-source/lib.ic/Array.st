"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x2000c118; bytecode file offset 0x4814c"
!Array methodsFor: 'recovered'!
emWriteLiteralOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) writeLiteralTypeFor: (self).
    recoveredValue2 := (self) size.
    (recoveredValue0) writeLiteralSize: (recoveredValue2).
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) emWriteLiteralOn: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (self) do: (recoveredValue3).
    ^self
! !

