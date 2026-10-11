"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20033ea4; bytecode file offset 0x934580"
!SGIlAbstractFactory methodsFor: 'recovered'!
inactiveNodeVisitorSingleton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) inactiveNodeVisitorSingleton.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d618; bytecode file offset 0x93bf94"
!SGIlAbstractFactory methodsFor: 'recovered'!
transformationFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlTransformationFactory.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ee18; bytecode file offset 0x93bf94"
!SGIlAbstractFactory methodsFor: 'recovered'!
ileBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ef78; bytecode file offset 0x93bf94"
!SGIlAbstractFactory methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052c08; bytecode file offset 0x9505d0"
!SGIlAbstractFactory methodsFor: 'recovered'!
anyExpr: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200532b0; bytecode file offset 0x9505d0"
!SGIlAbstractFactory methodsFor: 'recovered'!
initialize: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053388; bytecode file offset 0x9505d0"
!SGIlAbstractFactory methodsFor: 'recovered'!
anyNode: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053bd4; bytecode file offset 0x9505d0"
!SGIlAbstractFactory methodsFor: 'recovered'!
anyStmnt: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200dafa0; bytecode file offset 0x9d7888"
!SGIlAbstractFactory methodsFor: 'recovered'!
createIleComponent: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgComponentContext.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) ileComponent: (recoveredValue4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200dafb4; bytecode file offset 0x9d7888"
!SGIlAbstractFactory methodsFor: 'recovered'!
createIleMethod: recoveredArg1 componentContext: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgMethodContext.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) ileMethodDecl: (recoveredValue4).
    ^recoveredValue2
! !

