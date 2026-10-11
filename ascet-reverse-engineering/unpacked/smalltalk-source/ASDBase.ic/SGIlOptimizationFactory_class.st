"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012b58; bytecode file offset 0x912098"
!SGIlOptimizationFactory class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048e70; bytecode file offset 0x945728"
!SGIlOptimizationFactory class methodsFor: 'recovered'!
prepareCodeGeneration
    Current := nil.
    ^self
! !

"ASDBase.ic method 0x200abd50; bytecode file offset 0x9a8610"
!SGIlOptimizationFactory class methodsFor: 'recovered'!
createCurrent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initialize: (recoveredValue1).
    Current := recoveredValue2.
    ^self
! !

