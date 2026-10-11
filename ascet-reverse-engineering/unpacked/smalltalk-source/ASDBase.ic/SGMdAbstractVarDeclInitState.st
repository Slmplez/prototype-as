"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200280d4; bytecode file offset 0x934580"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
ileBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aaf4; bytecode file offset 0x934580"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
literalTrue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) literalTrue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034724; bytecode file offset 0x934580"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
literalFalse
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) literalFalse.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f29c; bytecode file offset 0x94d048"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
copy
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f8a8; bytecode file offset 0x94d048"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
maxCondition
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200504d8; bytecode file offset 0x94d048"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
minCondition
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052b00; bytecode file offset 0x9505d0"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
isCompletelyUninitialized: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005313c; bytecode file offset 0x9505d0"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
intersectWith: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053b38; bytecode file offset 0x9505d0"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
unionWith: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059a88; bytecode file offset 0x9566ac"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
printStateOn: recoveredArg1 keyErrLabel: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005a410; bytecode file offset 0x957a6c"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
addWriteAccessFor: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005ac98; bytecode file offset 0x957a6c"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
addPossibleWriteAccessFor: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b154; bytecode file offset 0x957a6c"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
addWriteAccessToReferencedElementOf: recoveredArg1 condition: recoveredArg2 source: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b510; bytecode file offset 0x957e10"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
checkReadAccessVarDecl: recoveredArg1 accessChain: recoveredArg2 currentCondition: recoveredArg3 errLabelBlock: recoveredArg4 onlyWarning: recoveredArg5 source: recoveredArg6
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b51c; bytecode file offset 0x957e10"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
checkReadOfReferencedElementAccessVarDecl: recoveredArg1 accessChain: recoveredArg2 currentCondition: recoveredArg3 errLabelBlock: recoveredArg4 onlyWarning: recoveredArg5 source: recoveredArg6
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005c71c; bytecode file offset 0x959680"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a91ec; bytecode file offset 0x9a5d18"
!SGMdAbstractVarDeclInitState methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printStateOn: (recoveredValue0) keyErrLabel: ('???').
    ^self
! !

