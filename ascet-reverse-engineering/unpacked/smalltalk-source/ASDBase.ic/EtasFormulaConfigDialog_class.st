"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021e9c; bytecode file offset 0x92209c"
!EtasFormulaConfigDialog class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('checkAndWriteRBFormulaConst' 'checkAndWriteRBFormulaId' 'checkAndWriteRBFormulaLinear' 'checkAndWriteRBFormulaMoebius' 'checkAndWriteRBFormula5Parm')
! !

"ASDBase.ic method 0x20138d0c; bytecode file offset 0xa355f0"
!EtasFormulaConfigDialog class methodsFor: 'recovered'!
createForFormula: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) formula: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := RBFormulaId.
    recoveredValue5 := (recoveredValue4) formulasASD.
    (recoveredValue3) types: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202c39d4; bytecode file offset 0xbc0350"
!EtasFormulaConfigDialog class methodsFor: 'recovered'!
etasStaticCodeAnalysisPerformedMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('checkAndWriteRBFormula5Parm').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('checkAndWriteRBFormulaConst').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('checkAndWriteRBFormulaId').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: ('checkAndWriteRBFormulaLinear').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: ('checkAndWriteRBFormulaMoebius').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: ('checkAndWriteRBFormulaString').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) add: ('checkAndWriteRBFormulaTabInt').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) add: ('checkAndWriteRBFormulaTabNint').
    ^recoveredValue1
! !

