"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000b94; bytecode file offset 0x13c20"
!OSSslAsn1Integer class methodsFor: 'recovered'!
initializeAfterLoad
    (self) fixedSize: (12).
    ^self
! !

"sci.ic method 0x20000cf8; bytecode file offset 0x13d7c"
!OSSslAsn1Integer class methodsFor: 'recovered'!
newWithValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setInteger: (recoveredValue2).
    ^recoveredValue0
! !

