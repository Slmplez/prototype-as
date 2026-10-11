"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000118; bytecode file offset 0x8ffcfc"
!SGIlAtomicStatementList methodsFor: 'recovered'!
asIleOpimizedLabeledStmnt
    ^self
! !

"ASDBase.ic method 0x20001230; bytecode file offset 0x8ffcfc"
!SGIlAtomicStatementList methodsFor: 'recovered'!
asIleOptimizedStmntlist
    ^self
! !

"ASDBase.ic method 0x20054c0c; bytecode file offset 0x952a9c"
!SGIlAtomicStatementList methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) atomicStatementList: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074b74; bytecode file offset 0x9757c8"
!SGIlAtomicStatementList methodsFor: 'recovered'!
isIleAtomicStatementList
    ^true
! !

"ASDBase.ic method 0x200759cc; bytecode file offset 0x9757c8"
!SGIlAtomicStatementList methodsFor: 'recovered'!
isIleOpimizableLabeledStmnt
    ^true
! !

"ASDBase.ic method 0x20186f84; bytecode file offset 0xa83848"
!SGIlAtomicStatementList methodsFor: 'recovered'!
createWithChildren: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) atomicStmntList: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

