"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065eec; bytecode file offset 0x963428"
!SGSmAbstractOptStaticAction methodsFor: 'recovered'!
generator
    | recoveredValue0 |
    recoveredValue0 := generator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20098c94; bytecode file offset 0x995850"
!SGSmAbstractOptStaticAction methodsFor: 'recovered'!
staticAction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) staticAction: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be244; bytecode file offset 0x9bb178"
!SGSmAbstractOptStaticAction methodsFor: 'recovered'!
generator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generator := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201258c0; bytecode file offset 0xa22188"
!SGSmAbstractOptStaticAction methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) generator.
    (recoveredValue2) generator: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

