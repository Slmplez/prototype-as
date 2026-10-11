"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b21c; bytecode file offset 0x908be4"
!SGIlExpansionFactory methodsFor: 'recovered'!
expansionVisitor
    | recoveredValue0 |
    recoveredValue0 := (self) arithOpExpansionVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20057378; bytecode file offset 0x956284"
!SGIlExpansionFactory methodsFor: 'recovered'!
anyNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expansionVisitor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) anyNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200588b8; bytecode file offset 0x956284"
!SGIlExpansionFactory methodsFor: 'recovered'!
methodBody: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expansionVisitor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) anyStmnt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066ddc; bytecode file offset 0x9646f8"
!SGIlExpansionFactory methodsFor: 'recovered'!
arithOpExpansionVisitor
    | recoveredValue0 |
    recoveredValue0 := arithOpExpansionVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069898; bytecode file offset 0x966bdc"
!SGIlExpansionFactory methodsFor: 'recovered'!
structureExpansionVisitor
    | recoveredValue0 |
    recoveredValue0 := structureExpansionVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e8724; bytecode file offset 0x9e4ff8"
!SGIlExpansionFactory methodsFor: 'recovered'!
anyStmnt: recoveredArg1
    | recoveredValue0 |
    (self) etasCodeGenHalt.
    recoveredValue0 := (self) errorHandler.
    (recoveredValue0) fatalNo: (3).
    ^self
! !

"ASDBase.ic method 0x200e8738; bytecode file offset 0x9e4ff8"
!SGIlExpansionFactory methodsFor: 'recovered'!
anyExpr: recoveredArg1
    | recoveredValue0 |
    (self) etasCodeGenHalt.
    recoveredValue0 := (self) errorHandler.
    (recoveredValue0) fatalNo: (3).
    ^self
! !

"ASDBase.ic method 0x200fbb68; bytecode file offset 0x9f8428"
!SGIlExpansionFactory methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlStandardNodeExpansion.
    recoveredValue1 := (recoveredValue0) create.
    arithOpExpansionVisitor := recoveredValue1.
    recoveredValue2 := SGIlStructureNodeExpansion.
    recoveredValue3 := (recoveredValue2) create.
    structureExpansionVisitor := recoveredValue3.
    ^self
! !

