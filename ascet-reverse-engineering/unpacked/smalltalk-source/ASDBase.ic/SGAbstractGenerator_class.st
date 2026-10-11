"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20050784; bytecode file offset 0x94d048"
!SGAbstractGenerator class methodsFor: 'recovered'!
expanderClass
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20096ab0; bytecode file offset 0x9937fc"
!SGAbstractGenerator class methodsFor: 'recovered'!
createWithContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) genContext: (recoveredValue2).
    ^recoveredValue0
! !

