"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000863c; bytecode file offset 0x908be4"
!SGIlAbstractControlFlowStatement methodsFor: 'recovered'!
hasIleExitStmnt
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004debc; bytecode file offset 0x94d048"
!SGIlAbstractControlFlowStatement methodsFor: 'recovered'!
hasIleEndCaseStmnt
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20054eac; bytecode file offset 0x952a9c"
!SGIlAbstractControlFlowStatement methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractControlFlowStatement: (self).
    ^recoveredValue1
! !

