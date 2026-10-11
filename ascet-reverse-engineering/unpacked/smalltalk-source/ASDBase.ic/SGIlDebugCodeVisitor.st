"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20095fd0; bytecode file offset 0x992bec"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200961f0; bytecode file offset 0x992bec"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
assertIntervalExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a914c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteIrvWriteCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_IrvWrite').
    ^self
! !

"ASDBase.ic method 0x200a915c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteIrvIWriteRefCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_IrvIWriteRef').
    ^self
! !

"ASDBase.ic method 0x200a916c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
lessEqualExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('<=').
    ^self
! !

"ASDBase.ic method 0x200a917c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
subExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('-').
    ^self
! !

"ASDBase.ic method 0x200a918c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
addExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('+').
    ^self
! !

"ASDBase.ic method 0x200a920c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
equalExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('==').
    ^self
! !

"ASDBase.ic method 0x200a921c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
lessExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('<').
    ^self
! !

"ASDBase.ic method 0x200a924c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteWriteCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_Write').
    ^self
! !

"ASDBase.ic method 0x200a925c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteDReadCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_DRead').
    ^self
! !

"ASDBase.ic method 0x200a927c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteIrvIWriteCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_IrvIWrite').
    ^self
! !

"ASDBase.ic method 0x200a928c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
orExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('||').
    ^self
! !

"ASDBase.ic method 0x200a929c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteIWriteCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_IWrite').
    ^self
! !

"ASDBase.ic method 0x200a92bc; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteIReadCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_IRead').
    ^self
! !

"ASDBase.ic method 0x200a92cc; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
greaterExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('>').
    ^self
! !

"ASDBase.ic method 0x200a930c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
notEqualExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('!!=').
    ^self
! !

"ASDBase.ic method 0x200a933c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteCalPrmCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_CalPrm').
    ^self
! !

"ASDBase.ic method 0x200a934c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
andExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('&&').
    ^self
! !

"ASDBase.ic method 0x200a936c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
remExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('%').
    ^self
! !

"ASDBase.ic method 0x200a937c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteIrvReadCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_IrvRead').
    ^self
! !

"ASDBase.ic method 0x200a938c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
divExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('/').
    ^self
! !

"ASDBase.ic method 0x200a93bc; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteIWriteRefCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_IWriteRef').
    ^self
! !

"ASDBase.ic method 0x200a93cc; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteIrvIReadCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_IrvIRead').
    ^self
! !

"ASDBase.ic method 0x200a93ec; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteReadCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_Read').
    ^self
! !

"ASDBase.ic method 0x200a93fc; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
greaterEqualExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('>=').
    ^self
! !

"ASDBase.ic method 0x200a941c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
mulExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('*').
    ^self
! !

"ASDBase.ic method 0x200a942c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_Call').
    ^self
! !

"ASDBase.ic method 0x200a943c; bytecode file offset 0x9a5d18"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteModeCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRteCall: (recoveredValue0) name: ('Rte_Mode').
    ^self
! !

"ASDBase.ic method 0x200abbbc; bytecode file offset 0x9a85bc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
symbol: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) label.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200abcfc; bytecode file offset 0x9a85bc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) template.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bd63c; bytecode file offset 0x9b9f90"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) elementDecl.
    recoveredValue3 := (recoveredValue2) genName.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200bd684; bytecode file offset 0x9b9f90"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
macroAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) macroDecl.
    recoveredValue3 := (recoveredValue2) genName.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200bd69c; bytecode file offset 0x9b9f90"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ileInitValueAbstractComplex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) asString.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ea59c; bytecode file offset 0x9e6ea8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('break;').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x200ea5cc; bytecode file offset 0x9e6ea8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('return;').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x200fd234; bytecode file offset 0x9f9afc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteDtWrite: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) runnableEntity.
    recoveredValue3 := (recoveredValue2) errLabel.
    recoveredValue4 := ('dT_') , (recoveredValue3).
    (self) printRteCall: (recoveredValue0) name: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010dd7c; bytecode file offset 0xa0a660"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
shiftRightExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) rightExpr.
    recoveredValue3 := (recoveredValue2) asIleShiftValue.
    recoveredValue4 := (recoveredValue3) asString.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('>>') rightOp: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010dd98; bytecode file offset 0xa0a660"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
shiftLeftExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) rightExpr.
    recoveredValue3 := (recoveredValue2) asIleShiftValue.
    recoveredValue4 := (recoveredValue3) asString.
    (self) printBinaryOperator: (recoveredValue0) symbol: ('<<') rightOp: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010e8bc; bytecode file offset 0xa0b1bc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
postDec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    (recoveredValue2) nextPutAll: ('--').
    ^self
! !

"ASDBase.ic method 0x2010e8d8; bytecode file offset 0xa0b1bc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
postInc: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    (recoveredValue2) nextPutAll: ('++').
    ^self
! !

"ASDBase.ic method 0x2010f4dc; bytecode file offset 0xa0bddc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
preDec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('--').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010f4f8; bytecode file offset 0xa0bddc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ileInitValueAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('init value = ').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010f514; bytecode file offset 0xa0bddc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
preInc: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('++').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010ff5c; bytecode file offset 0xa0c824"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
castExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) castCType.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) expr.
    (self) visitNode: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20132d98; bytecode file offset 0xa2f6a8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
statementList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) stmntList.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20132dd4; bytecode file offset 0xa2f6a8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) code.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201452ac; bytecode file offset 0xa41b78"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: (';').
    (recoveredValue2) cr.
    ^self
! !

"ASDBase.ic method 0x20145408; bytecode file offset 0xa41ccc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
cCodeFragment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) template.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) stream.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) nextPutAll: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20145e20; bytecode file offset 0xa426e8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ileCppErrorStatement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('#error ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) errorText.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20145e50; bytecode file offset 0xa42718"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
expression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($a).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) class.
    recoveredValue4 := (recoveredValue3) name.
    (recoveredValue0) nextPutAll: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2015516c; bytecode file offset 0xa51a58"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('default:').
    (recoveredValue0) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) stmnt.
    (self) visitNode: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20176330; bytecode file offset 0xa72c1c"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) lValue.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    (recoveredValue2) nextPutAll: (' = ').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) expr.
    (self) visitNode: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20176b2c; bytecode file offset 0xa734b8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
negExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('-(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20176b4c; bytecode file offset 0xa734b8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
notExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('!!(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20176b6c; bytecode file offset 0xa734b8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
safeIndexExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('SafeIndex(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20176b8c; bytecode file offset 0xa734b8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
referencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('&(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20176bac; bytecode file offset 0xa734b8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
implCastAssignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('implCast(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20176bcc; bytecode file offset 0xa734b8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ileDereferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('*(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20176bec; bytecode file offset 0xa734b8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ileVariableReferenceCast: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('&*(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20185db0; bytecode file offset 0xa8267c"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
rteDtRead: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('dT_').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) runnableEntity.
    recoveredValue5 := (recoveredValue4) errLabel.
    (recoveredValue2) nextPutAll: (recoveredValue5).
    (recoveredValue0) nextPutAll: (' ()').
    ^self
! !

"ASDBase.ic method 0x201953c8; bytecode file offset 0xa91c90"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
assertIntervalFailureExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('AssertIntervalFailture(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: ($)).
    ^self
! !

"ASDBase.ic method 0x201953fc; bytecode file offset 0xa91d08"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
absExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('abs(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x2019543c; bytecode file offset 0xa91d08"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
abstractSafeNumeratorExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('SafeDivNumerator(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x20195718; bytecode file offset 0xa91fdc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
bracedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($().
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x201a6648; bytecode file offset 0xaa2f3c"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPut: ($.).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) elementDecl.
    recoveredValue6 := (recoveredValue5) errLabel.
    (recoveredValue2) nextPutAll: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201a6f14; bytecode file offset 0xaa3808"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('return ').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (';').
    (recoveredValue3) cr.
    ^self
! !

"ASDBase.ic method 0x201cd440; bytecode file offset 0xac9d0c"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
intConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super intConstant: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) suffix.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) stream.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) nextPutAll: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201cd4e8; bytecode file offset 0xac9db8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
abstractStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($a).
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) class.
    recoveredValue5 := (recoveredValue4) name.
    (recoveredValue2) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) nextPutAll: (';').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x2020229c; bytecode file offset 0xafeb68"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) args.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    recoveredValue3 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := (self) stream.
    recoveredBlock15Value1 := (recoveredBlock15Value0) nextPutAll: (', ').
    recoveredBlock15Value1
].
    (recoveredValue1) do: (recoveredValue2) separatedBy: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202024a8; bytecode file offset 0xafed78"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
directAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlNode.
    recoveredValue2 := (recoveredValue1) accessChain.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := (self) stream.
    (recoveredBlock7Value0) nextPut: ($.).
    recoveredBlock7Value1 := (self) stream.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value2) errLabel.
    recoveredBlock7Value4 := (recoveredBlock7Value1) nextPutAll: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue2) reverseDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20202a08; bytecode file offset 0xaff304"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('case ').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) constantExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (' : ').
    (recoveredValue3) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) stmnt.
    (self) visitNode: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2020e4c8; bytecode file offset 0xb0ad90"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
statementExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: (${).
    (recoveredValue0) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) stmnt.
    (self) visitNode: (recoveredValue3).
    recoveredValue4 := (self) stream.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPut: ($}).
    (recoveredValue4) cr.
    ^self
! !

"ASDBase.ic method 0x20228310; bytecode file offset 0xb24c34"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
minExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('min(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (',').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) rightExpr.
    (self) visitNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20228338; bytecode file offset 0xb24c34"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
maxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('max(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (',').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) rightExpr.
    (self) visitNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20228360; bytecode file offset 0xb24c34"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
memCopyExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('memcpy(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) lValue.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (', ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) expr.
    (self) visitNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20256284; bytecode file offset 0xb52b54"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempVar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'nil'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ' = '.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20256360; bytecode file offset 0xb52c34"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
modelIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlNode.
    recoveredValue2 := (recoveredValue1) accessChain.
    recoveredValue3 := (recoveredValue2) reverse.
    recoveredValue4 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) stream.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) errLabel.
    recoveredBlock8Value3 := (recoveredBlock8Value0) nextPutAll: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue5 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := (self) stream.
    recoveredBlock21Value1 := (recoveredBlock21Value0) nextPut: ($.).
    recoveredBlock21Value1
].
    (recoveredValue3) do: (recoveredValue4) separatedBy: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2026197c; bytecode file offset 0xb5e254"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlNode.
    recoveredValue4 := (recoveredValue3) accessChain.
    recoveredValue5 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := (self) stream.
    (recoveredBlock11Value0) nextPut: ($.).
    recoveredBlock11Value1 := (self) stream.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    recoveredBlock11Value3 := (recoveredBlock11Value2) errLabel.
    recoveredBlock11Value4 := (recoveredBlock11Value1) nextPutAll: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue4) reverseDo: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2026d174; bytecode file offset 0xb69ad0"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('switch (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (') {').
    (recoveredValue3) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) stmnt.
    (self) visitNode: (recoveredValue6).
    recoveredValue7 := (self) stream.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPutAll: ('}').
    (recoveredValue7) cr.
    ^self
! !

"ASDBase.ic method 0x2026d1a0; bytecode file offset 0xb69ad0"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('if (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (') {').
    (recoveredValue3) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) thenStmnt.
    (self) visitNode: (recoveredValue6).
    recoveredValue7 := (self) stream.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPutAll: ('}').
    (recoveredValue7) cr.
    ^self
! !

"ASDBase.ic method 0x2026d1cc; bytecode file offset 0xb69ad0"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('while (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (') {').
    (recoveredValue3) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) doStmnt.
    (self) visitNode: (recoveredValue6).
    recoveredValue7 := (self) stream.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPutAll: ('}').
    (recoveredValue7) cr.
    ^self
! !

"ASDBase.ic method 0x2026d1f8; bytecode file offset 0xb69ad0"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
cppIfThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('#if (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (')').
    (recoveredValue3) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) thenStmnt.
    (self) visitNode: (recoveredValue6).
    recoveredValue7 := (self) stream.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPutAll: ('#endif').
    (recoveredValue7) cr.
    ^self
! !

"ASDBase.ic method 0x202776d0; bytecode file offset 0xb73fa8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('{').
    (recoveredValue0) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) doStmnt.
    (self) visitNode: (recoveredValue3).
    recoveredValue4 := (self) stream.
    (recoveredValue4) nextPutAll: ('} while (').
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) expr.
    (self) visitNode: (recoveredValue6).
    recoveredValue7 := (self) stream.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPutAll: (');').
    (recoveredValue7) cr.
    ^self
! !

"ASDBase.ic method 0x202aa310; bytecode file offset 0xba6c14"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
verifyPointerOp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('verifyPointer(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (', ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) identifier.
    (self) visitNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (', ').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) redundantIdentifier.
    (self) visitNode: (recoveredValue8).
    recoveredValue9 := (self) stream.
    (recoveredValue9) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x202aa33c; bytecode file offset 0xba6c14"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
floatLimitedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('lmtF(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (',').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) lowerBound.
    (self) visitNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (',').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) upperBound.
    (self) visitNode: (recoveredValue8).
    recoveredValue9 := (self) stream.
    (recoveredValue9) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x202aa398; bytecode file offset 0xba6ca4"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) condExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: ('?').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) leftExpr.
    (self) visitNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (':').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) rightExpr.
    (self) visitNode: (recoveredValue8).
    recoveredValue9 := (self) stream.
    (recoveredValue9) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x202aa3c8; bytecode file offset 0xba6ca4"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
safeDivExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('SaveDiv(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) condExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: ('?').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) leftExpr.
    (self) visitNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (':').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) rightExpr.
    (self) visitNode: (recoveredValue8).
    recoveredValue9 := (self) stream.
    (recoveredValue9) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x202aa5d8; bytecode file offset 0xba6ea8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ilePackedExprAssignment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: (${).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) args.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (self) visitNode: (recoveredBlock12Value0).
    recoveredBlock12Value1
].
    recoveredValue4 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := (self) stream.
    recoveredBlock21Value1 := (recoveredBlock21Value0) nextPutAll: (', ').
    recoveredBlock21Value1
].
    (recoveredValue2) do: (recoveredValue3) andBetweenDo: (recoveredValue4).
    recoveredValue5 := (self) stream.
    (recoveredValue5) nextPut: ($}).
    ^self
! !

"ASDBase.ic method 0x202abe2c; bytecode file offset 0xba86f4"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
printBinaryOperator: recoveredArg1 symbol: recoveredArg2 rightOp: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($().
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPut: ($ ).
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) nextPut: ($ ).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg3.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    (recoveredValue3) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x202c6fac; bytecode file offset 0xbc387c"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
printRteCall: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    (recoveredValue0) nextPut: ($().
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) args.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (self) visitNode: (recoveredBlock16Value0).
    recoveredBlock16Value1
].
    recoveredValue6 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := (self) stream.
    recoveredBlock26Value1 := (recoveredBlock26Value0) nextPutAll: (', ').
    recoveredBlock26Value1
].
    (recoveredValue4) do: (recoveredValue5) separatedBy: (recoveredValue6).
    recoveredValue7 := (self) stream.
    (recoveredValue7) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x202da32c; bytecode file offset 0xbd6bf8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
printBinaryOperator: recoveredArg1 symbol: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($().
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPut: ($ ).
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    (recoveredValue3) nextPut: ($ ).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) rightExpr.
    (self) visitNode: (recoveredValue8).
    recoveredValue9 := (self) stream.
    (recoveredValue9) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x202ebbfc; bytecode file offset 0xbe8510"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
upperLimitedExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'lmt'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) compareEqual.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '-NOTEQUAL'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ',-oo,'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) upperBound.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ebc30; bytecode file offset 0xbe8510"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
lowerLimitedExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'lmt'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) compareEqual.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '-NOTEQUAL'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ','.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) lowerBound.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := ',+oo)'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fd15c; bytecode file offset 0xbf9a3c"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('noOverflow(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) originalExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPut: ($,).
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) goalInterval.
    recoveredValue8 := (recoveredValue7) left.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue5) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    (recoveredValue10) nextPutAll: (', ').
    recoveredValue11 := recoveredValue3.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) goalInterval.
    recoveredValue14 := (recoveredValue13) right.
    recoveredValue15 := (recoveredValue14) asString.
    (recoveredValue11) nextPutAll: (recoveredValue15).
    (recoveredValue3) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x20305ab8; bytecode file offset 0xc023cc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('if (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (') {').
    (recoveredValue3) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) thenStmnt.
    (self) visitNode: (recoveredValue6).
    recoveredValue7 := (self) stream.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPutAll: ('} else {').
    (recoveredValue7) cr.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) elseStmnt.
    (self) visitNode: (recoveredValue10).
    recoveredValue11 := (self) stream.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('}').
    (recoveredValue11) cr.
    ^self
! !

"ASDBase.ic method 0x20305aec; bytecode file offset 0xc023cc"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
cppIfThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('#if (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (')').
    (recoveredValue3) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) thenStmnt.
    (self) visitNode: (recoveredValue6).
    recoveredValue7 := (self) stream.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPutAll: ('#else').
    (recoveredValue7) cr.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) elseStmnt.
    (self) visitNode: (recoveredValue10).
    recoveredValue11 := (self) stream.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('#endif').
    (recoveredValue11) cr.
    ^self
! !

"ASDBase.ic method 0x2030cd1c; bytecode file offset 0xc095f8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
methodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlNode.
    recoveredValue4 := (recoveredValue3) methodDecl.
    recoveredValue5 := (recoveredValue4) ileName.
    (recoveredValue1) nextPutAll: (recoveredValue5).
    (recoveredValue0) nextPut: ($().
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) args.
    recoveredValue8 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (self) visitNode: (recoveredBlock21Value0).
    recoveredBlock21Value1
].
    recoveredValue9 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 |
    recoveredBlock32Value0 := (self) stream.
    recoveredBlock32Value1 := (recoveredBlock32Value0) nextPutAll: (', ').
    recoveredBlock32Value1
].
    (recoveredValue7) do: (recoveredValue8) separatedBy: (recoveredValue9).
    recoveredValue10 := (self) stream.
    (recoveredValue10) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x2034af44; bytecode file offset 0xc47828"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('for(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) firstExpr.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: ('; ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) expr.
    (self) visitNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: ('; ').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) lastExpr.
    (self) visitNode: (recoveredValue8).
    recoveredValue9 := (self) stream.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) nextPutAll: (') {').
    (recoveredValue9) cr.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) doStmnt.
    (self) visitNode: (recoveredValue12).
    recoveredValue13 := (self) stream.
    recoveredValue14 := recoveredValue13.
    (recoveredValue14) nextPutAll: ('}').
    (recoveredValue13) cr.
    ^self
! !

"ASDBase.ic method 0x2034afbc; bytecode file offset 0xc478a0"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
limitedExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'lmt'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) compareEqual.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '-NOTEQUAL'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ','.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) lowerBound.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := ','.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) upperBound.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035a818; bytecode file offset 0xc570f8"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
abstractSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) class.
    recoveredValue4 := (recoveredValue3) name.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) class.
    recoveredValue7 := (recoveredValue6) name.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := (recoveredValue8) - (11).
    recoveredValue10 := (recoveredValue4) copyFrom: (5) to: (recoveredValue9).
    (recoveredValue1) nextPutAll: (recoveredValue10).
    (recoveredValue0) nextPut: ($().
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) args.
    recoveredValue13 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := (self) visitNode: (recoveredBlock31Value0).
    recoveredBlock31Value1
].
    recoveredValue14 := [
    | recoveredBlock42Value0 recoveredBlock42Value1 |
    recoveredBlock42Value0 := (self) stream.
    recoveredBlock42Value1 := (recoveredBlock42Value0) nextPutAll: (', ').
    recoveredBlock42Value1
].
    (recoveredValue12) do: (recoveredValue13) separatedBy: (recoveredValue14).
    recoveredValue15 := (self) stream.
    (recoveredValue15) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x2039b4b4; bytecode file offset 0xc97d94"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
unaryServiceExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20450da4; bytecode file offset 0xd4d68c"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
binaryServiceExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := ', '.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) secondOperand.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b2744; bytecode file offset 0xdaf034"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempVar.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBasicType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := '_tXYZ'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlComplexClassNoEnumType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := '_t'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 |
    recoveredBlock48Value0 := (self) stream.
    recoveredBlock48Value1 := recoveredBlock48Arg1.
    recoveredBlock48Value2 := (recoveredBlock48Value0) nextPutAll: (recoveredBlock48Value1).
    recoveredBlock48Value2
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 |
    recoveredBlock59Value0 := (self) stream.
    recoveredBlock59Value1 := (recoveredBlock59Value0) nextPut: ($_).
    recoveredBlock59Value1
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) andBetweenDo: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := '_t'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCType.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempVar.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempVar.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := '_t'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCType.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c5ff4; bytecode file offset 0xdc28e0"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
ternaryServiceExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) thirdOperand.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) thirdOperand.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := ', '.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) secondOperand.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := ', '.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) thirdOperand.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cefcc; bytecode file offset 0xdcb8c0"
!SGIlDebugCodeVisitor methodsFor: 'recovered'!
combinedShiftOpServiceExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) serviceKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) thirdOperand.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) thirdOperand.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) shortCType.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := ', '.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) secondOperand.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := ', '.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) thirdOperand.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleShiftValue.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

