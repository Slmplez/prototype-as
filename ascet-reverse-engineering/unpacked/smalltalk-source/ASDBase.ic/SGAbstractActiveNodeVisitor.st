"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003d40; bytecode file offset 0x90206c"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
endStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003dd8; bytecode file offset 0x90206c"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
beginStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d5a4; bytecode file offset 0x90a4b8"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
beginBlockStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d6d4; bytecode file offset 0x90a4b8"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAbstractInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d71c; bytecode file offset 0x90a4b8"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
beginWhileStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d774; bytecode file offset 0x90a4b8"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
logicNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d7d4; bytecode file offset 0x90a4b8"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
beginMethodBody: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d984; bytecode file offset 0x90a4b8"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
currentGeneratedModuleCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000dab4; bytecode file offset 0x90a4b8"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
beginForStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000db74; bytecode file offset 0x90a4b8"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
beginSwitchStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20033e74; bytecode file offset 0x934580"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
expander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentIleBuilder.
    recoveredValue1 := (recoveredValue0) expander.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200393e0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlDataInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDataTypeInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039410; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlDataSetReference: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003941c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlEHooksMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractMapping: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039470; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200394d0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
emptyStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200394e8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlNullReference: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200394f4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039560; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
autosarRTECall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abstractMethodCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003956c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
implCast: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlPhonyAssign: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200395d8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlVarDeclWithInit: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) varDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200395e4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlMethodInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003962c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlInitValueAbstractComplex: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlInitValueAssign: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039650; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlARTimingEvent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAREvent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003965c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
abstractProcessContainer: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039698; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlTimeTableTask: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlTimerTask: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039704; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
binaryExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039710; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlModuleInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractComponentInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003971c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
blockVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractMethodScopedVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039800; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
process: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) method: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200398b4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200398cc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlMacro: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) methodDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003992c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039998; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
goto: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200399b0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlInitValueAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlPhonyAssign: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200399f8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
specialCallStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039ae8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlLogicNodeInDB: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlTypedNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039b0c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039b60; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
varDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039b90; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
methodBody: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) blockStmnt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039bb4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlDataType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlTypedNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039bfc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
specialConvertContCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) specialCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039c14; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAREvent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039c5c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) exitStmnt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039c80; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlPhonyAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) assignExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039c98; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlARModeDependency: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractReference: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039cb0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlInterrunnableVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) instVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039cbc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAscetTempVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) blockVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039ce0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlParmDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractMethodScopedVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039d58; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
event: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039d70; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlTransformedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039d94; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlDereferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlTransformedExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039da0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
autosarRteStatus: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) literal: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039db8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039e60; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAppErrorInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDataTypeInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039e9c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039eb4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039ed8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAssignSm: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) assignExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039efc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) unaryArithmeticExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039f2c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
processBody: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) methodBody: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039f5c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAROperationDependency: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractReference: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039fbc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
bypassFunction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abstractProcessContainer: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039ff8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a040; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlTempVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) noImplVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a0a0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
continueStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a0d0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a10c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlPackedExprAssignment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a1c0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
choiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a1f0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlSelfVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractMethodScopedVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a214; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlClassInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractComponentInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a274; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlLoop: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a28c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAbstractDataTypeInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a31c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlVariableReferenceCast: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlTransformedExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a3ac; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
physicalUnitIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a3b8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
statement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a3f4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
atomStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) blockStmnt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a430; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
noImplVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) blockVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a46c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlInlineDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) methodDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a4f0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAutosarMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractMapping: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a4fc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlInitTask: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) task: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a538; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAbstractDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) noDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a568; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a574; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) ifThenStmnt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a580; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlTypedNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a5bc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAbstractComponentInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDataTypeInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a5d4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
specialConvertDiscCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) specialCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a5f8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
classVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlVarDeclWithInit: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a61c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
processDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractExecutableDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a658; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractArithmeticExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a6d0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
unaryExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a6dc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) binaryArithmeticExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a700; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
attribute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a760; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
operatingSystem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a790; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlLoop: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a7c0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
implCastDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a7f0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAbstractMethodScopedVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) varDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a7fc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
labeledStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a814; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
instVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlVarDeclWithInit: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a850; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlSWComponentInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractComponentInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a88c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a8ec; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlInitValueUnused: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlInitValueAbstractComplex: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003aa30; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAbstractArithmeticExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003aa60; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
autosarRTECallWithErrorBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) autosarRTECall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ab44; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlARModeSwitchEvent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAREvent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ab68; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlExprWithClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAnnotatedNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003aba4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
blockStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003abbc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
ehooksConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ac1c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ad90; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) identifier: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003adb4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlSRInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDataTypeInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ae14; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlEnumInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDataTypeInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ae50; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
binding: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ae5c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlSmVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) instVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ae74; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
noDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlLogicNodeInDB: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ae80; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
methodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abstractMethodCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ae98; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlCSInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlMethodInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003aeb0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
runnable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) method: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003aeec; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003af28; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
externBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003af4c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) unaryLogicExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003af58; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003af70; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlErrLabelIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003afd0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlRedundantVerifyExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003afdc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
betweenAndExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) binaryRelationExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b048; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlLoop: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b090; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlRecordFieldsMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractMapping: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b0b4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) defaultStmnt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b0f0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b144; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlPhonyAssign: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b1e0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlTypedNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b1ec; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlModuleInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b210; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlReferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlTransformedExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b264; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
compoundArithmethicExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractArithmeticExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b27c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
binaryRelationExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) binaryEqualityExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b2ac; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
header: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b354; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlLoop: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b36c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlTimerTask: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlSoftwareTask: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b3c0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlRecordInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDataTypeInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b3f0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
dtVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) classVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b408; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlRunnableDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) methodDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b42c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAbstractExecutableDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b438; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
beginIfThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b468; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlModeGroupInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDataTypeInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b4c8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlComplementService: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b4d4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
literal: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b558; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
enumValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) literal: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b600; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlDataType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b648; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlSoftwareTask: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) task: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b75c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlPackedExprAssignmentVector: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlPackedExprAssignment: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b768; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
specialEnumCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) specialCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b7bc; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
methodCallStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b804; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAbstractReference: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b858; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAbstractMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b8a0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlExprWithClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b8f4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
operatingMode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) logicNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b930; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
methodDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractExecutableDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ba74; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
eventTask: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) task: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bb40; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlAnnotatedNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expression: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bb4c; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlCalprmInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAbstractDataTypeInterface: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bbac; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
assertIntervalSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) specialCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bbb8; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlARInvokeOperationEvent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlAREvent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bc78; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
expression: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlTypedNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bcb4; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
task: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abstractProcessContainer: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bcc0; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
mdlPackedExprAssignmentCharTable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mdlPackedExprAssignmentVector: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bd08; bytecode file offset 0x938608"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
importedClassVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) classVarDecl: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e218; bytecode file offset 0x93bf94"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
currentIleBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200489bc; bytecode file offset 0x945288"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
disable
    enabled := false.
    ^self
! !

"ASDBase.ic method 0x2004a8d0; bytecode file offset 0x9471a4"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
enable
    enabled := true.
    ^self
! !

"ASDBase.ic method 0x200659dc; bytecode file offset 0x963428"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
isEnabled
    | recoveredValue0 |
    recoveredValue0 := enabled.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077284; bytecode file offset 0x9757c8"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
isActiveStrategy
    ^true
! !

"ASDBase.ic method 0x200d6898; bytecode file offset 0x9d3174"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
initialize
    super initialize.
    enabled := true.
    ^self
! !

"ASDBase.ic method 0x2010f5f0; bytecode file offset 0xa0bedc"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
anyMdlNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20398bd0; bytecode file offset 0xc95498"
!SGAbstractActiveNodeVisitor methodsFor: 'recovered'!
visitMdlNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := (recoveredBlock40Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock40Value1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 |
    recoveredBlock52Value0 := recoveredLocal1.
    recoveredBlock52Value1 := recoveredLocal2.
    recoveredBlock52Value2 := (recoveredBlock52Value0) source: (recoveredBlock52Value1).
    recoveredBlock52Value2
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

