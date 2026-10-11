"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005130; bytecode file offset 0x90206c"
!SGMdDereferencedExpr methodsFor: 'recovered'!
semAnaNoStackVariable: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000e064; bytecode file offset 0x90ab8c"
!SGMdDereferencedExpr methodsFor: 'recovered'!
asMdlReferencedExprOnError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002c044; bytecode file offset 0x934580"
!SGMdDereferencedExpr methodsFor: 'recovered'!
mdlComponentClassType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClass.
    recoveredValue1 := (recoveredValue0) mdlComponentClassType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e1f4; bytecode file offset 0x934580"
!SGMdDereferencedExpr methodsFor: 'recovered'!
errLabelWithoutRefDeref
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) errLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034984; bytecode file offset 0x934580"
!SGMdDereferencedExpr methodsFor: 'recovered'!
varDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) varDecl.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051ce0; bytecode file offset 0x94f0e0"
!SGMdDereferencedExpr methodsFor: 'recovered'!
isMdlModifiableItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) mdlClass.
    recoveredValue2 := (recoveredValue1) writeOfReferencedObject.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200521cc; bytecode file offset 0x94f0e0"
!SGMdDereferencedExpr methodsFor: 'recovered'!
mdlMemoryClassOfItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) mdlClass.
    recoveredValue2 := (recoveredValue1) memClassOfReferencedObject.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052780; bytecode file offset 0x94f0e0"
!SGMdDereferencedExpr methodsFor: 'recovered'!
isMdlReadableItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) mdlClass.
    recoveredValue2 := (recoveredValue1) readOfReferencedObject.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20055ca4; bytecode file offset 0x952a9c"
!SGMdDereferencedExpr methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlDereferencedExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200572e8; bytecode file offset 0x956284"
!SGMdDereferencedExpr methodsFor: 'recovered'!
semAnaElementHasImplementation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) semAnaElementHasImplementation: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200770ac; bytecode file offset 0x9757c8"
!SGMdDereferencedExpr methodsFor: 'recovered'!
isMdlLValue
    ^true
! !

"ASDBase.ic method 0x2007723c; bytecode file offset 0x9757c8"
!SGMdDereferencedExpr methodsFor: 'recovered'!
isMdlModelTypedExpression
    ^true
! !

"ASDBase.ic method 0x200778d4; bytecode file offset 0x9757c8"
!SGMdDereferencedExpr methodsFor: 'recovered'!
isMdlDereferencedExpr
    ^true
! !

"ASDBase.ic method 0x200e1e5c; bytecode file offset 0x9de890"
!SGMdDereferencedExpr methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) errLabel.
    recoveredValue2 := ('(*') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (')').
    ^recoveredValue3
! !

"ASDBase.ic method 0x20153ccc; bytecode file offset 0xa50594"
!SGMdDereferencedExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('(*').
    recoveredValue1 := (self) expr.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPutAll: (')').
    ^self
! !

