"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001b38; bytecode file offset 0x8ffcfc"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
prepareCodeGeneration
    ^self
! !

"ASDBase.ic method 0x2003c02c; bytecode file offset 0x938914"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
stmnt: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) visitNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054a98; bytecode file offset 0x952a9c"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileAcceptNodeVisitor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2010e854; bytecode file offset 0xa0b130"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) constantExpr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    super caseStmnt: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010ee30; bytecode file offset 0xa0b7e4"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super ifThenElseStmnt: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) elseStmnt.
    (self) visitNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010ee48; bytecode file offset 0xa0b7e4"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super ifThenStmnt: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) thenStmnt.
    (self) visitNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010ee60; bytecode file offset 0xa0b7e4"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super whileStmnt: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) doStmnt.
    (self) visitNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010eef0; bytecode file offset 0xa0b7e4"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super switchStmnt: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) stmnt.
    (self) visitNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010ef08; bytecode file offset 0xa0b7e4"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
abstractLabeledStatement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super abstractLabeledStatement: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) stmnt.
    (self) visitNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010ef20; bytecode file offset 0xa0b7e4"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super repeatStmnt: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) doStmnt.
    (self) visitNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20120950; bytecode file offset 0xa1d214"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
abstractExpressionStatement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super abstractExpressionStatement: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) expr.
    (self) stmnt: (recoveredValue1) expr: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a6cec; bytecode file offset 0xaa35d0"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
abstractStatementList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super abstractStatementList: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) stmntList.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) visitNode: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a6d08; bytecode file offset 0xaa35d0"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super pmiCodeBlock: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) code.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) visitNode: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20201cfc; bytecode file offset 0xafe5c8"
!SGIlAbstractStructureStmntVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) firstExpr.
    (self) stmnt: (recoveredValue0) expr: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    super forStmnt: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) doStmnt.
    (self) stmnt: (recoveredValue4) expr: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) lastExpr.
    (self) stmnt: (recoveredValue7) expr: (recoveredValue9).
    ^self
! !

