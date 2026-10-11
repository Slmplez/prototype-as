"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20037fe0; bytecode file offset 0x934b68"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getSortTypeLabel: recoveredArg1
    ^'tst'
! !

"ASDBase.ic method 0x2003849c; bytecode file offset 0x935c54"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implTypeName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b234; bytecode file offset 0x938608"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getNameWithIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getName: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20046b0c; bytecode file offset 0x9451f8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
tableWidgetImplementation
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tableWidgetImplementation').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004a59c; bytecode file offset 0x947128"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForTableImplementation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableWidgetImplementation.
    recoveredValue1 := (self) sortBlockForTable: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056498; bytecode file offset 0x9531e4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getImplementation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implTypeValue.
    recoveredValue2 := (recoveredValue1) implMax.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056588; bytecode file offset 0x9531e4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getModelMin: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implTypeValue.
    recoveredValue2 := (recoveredValue1) modMin.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200567e8; bytecode file offset 0x9531e4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getImplMax: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implTypeValue.
    recoveredValue2 := (recoveredValue1) implMax.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056808; bytecode file offset 0x9531e4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getModelMax: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implTypeValue.
    recoveredValue2 := (recoveredValue1) modMax.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056888; bytecode file offset 0x9531e4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getQuantization: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implTypeValue.
    recoveredValue2 := (recoveredValue1) quantization.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200568e8; bytecode file offset 0x9531e4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getTypeLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implTypeValue.
    recoveredValue2 := (recoveredValue1) modType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056908; bytecode file offset 0x9531e4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getImplMin: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implTypeValue.
    recoveredValue2 := (recoveredValue1) implMin.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056e84; bytecode file offset 0x953900"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getImplMaxLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getImplMax: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) printString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056ea4; bytecode file offset 0x953900"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getImplMinLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getImplMin: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) printString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056ed4; bytecode file offset 0x953900"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getModelMinLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getModelMin: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) printString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056f94; bytecode file offset 0x953900"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getQuantizationLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getQuantization: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) printString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056fe4; bytecode file offset 0x953900"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getModelMaxLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getModelMax: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) printString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005b68c; bytecode file offset 0x957f48"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getFormulaName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implTypeValue.
    recoveredValue2 := (recoveredValue1) formulaName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006e728; bytecode file offset 0x96b41c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
implController
    | recoveredValue0 |
    recoveredValue0 := implController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ef7c; bytecode file offset 0x96b8a0"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
project
    | recoveredValue0 |
    recoveredValue0 := project.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083dc0; bytecode file offset 0x9807dc"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortedElementsForPageImplementation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sortBlockForTableImplementation.
    recoveredValue2 := (recoveredValue0) asSortedCollection: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20090790; bytecode file offset 0x98d054"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortedElementsForPageImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) tableWidgetImplementation.
    recoveredValue1 := (recoveredValue0) items.
    recoveredValue2 := (self) sortBlockForTableImplementation.
    recoveredValue3 := (recoveredValue1) asSortedCollection: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c5018; bytecode file offset 0x9c1afc"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
implController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    implController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5550; bytecode file offset 0x9c1f64"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    project := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9bf4; bytecode file offset 0x9c65cc"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
nameCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) getNameWithIcon: (recoveredValue2).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c9c58; bytecode file offset 0x9c65cc"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
typeCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) getTypeWithIcon: (recoveredValue2).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200d0ac4; bytecode file offset 0x9cd3a0"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
items
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_79461').
    recoveredValue1 := (self) tableWidgetImplementation.
    recoveredValue2 := (recoveredValue1) items.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e8338; bytecode file offset 0x9e4c20"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortImplementationTableByColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableWidgetImplementation.
    recoveredValue1 := recoveredArg1.
    (self) setSortBlockForWidget: (recoveredValue0) fromColumn: (recoveredValue1).
    (self) updateElementsForPageImplementation.
    ^self
! !

"ASDBase.ic method 0x200ef2e0; bytecode file offset 0x9ebcb8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
modelMinCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) getModelMinLabel: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ef2f4; bytecode file offset 0x9ebcb8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
formulaCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) getFormulaName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ef330; bytecode file offset 0x9ebcb8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
implMinCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) getImplMinLabel: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ef36c; bytecode file offset 0x9ebcb8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
modelMaxCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) getModelMaxLabel: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ef3a8; bytecode file offset 0x9ebcb8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
implTypeCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) getImplTypeLabel: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ef3d0; bytecode file offset 0x9ebcb8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
quantizationCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) getQuantizationLabel: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ef3f8; bytecode file offset 0x9ebcb8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
implMaxCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) getImplMaxLabel: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200f6ca0; bytecode file offset 0x9f375c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForModelMax
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getModelMax: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) sortBlockForElementValues: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f6cd0; bytecode file offset 0x9f375c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getTypeLabel: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) sortBlockForElementLabels: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f6d30; bytecode file offset 0x9f375c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getImplTypeLabel: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) sortBlockForElementLabels: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f6d40; bytecode file offset 0x9f375c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForQuantization
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getQuantization: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) sortBlockForElementValues: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f6dc0; bytecode file offset 0x9f375c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForImplMax
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getImplMax: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) sortBlockForElementValues: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f6df0; bytecode file offset 0x9f375c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForImplMin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getImplMin: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) sortBlockForElementValues: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f6e10; bytecode file offset 0x9f375c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForFormula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getFormulaName: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) sortBlockForElementLabels: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f6e50; bytecode file offset 0x9f375c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForModelMin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getModelMin: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) sortBlockForElementValues: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20120584; bytecode file offset 0xa1ce60"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getZeroNotIncluded: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) implTypeValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsZero.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'No'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Yes'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20123964; bytecode file offset 0xa20240"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
implementationTableColumnHeadingSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedColumns.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedColumns.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) sortImplementationTableByColumn: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012c638; bytecode file offset 0xa28ef0"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForName
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getName: (recoveredBlock4Value0).
    recoveredBlock4Value2 := recoveredBlock4Arg2.
    recoveredBlock4Value3 := (self) getName: (recoveredBlock4Value2).
    recoveredBlock4Value4 := (recoveredBlock4Value1) < (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x2013ba50; bytecode file offset 0xa3830c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
elementSortManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elementSortManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDElementSortingManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            elementSortManager := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := elementSortManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201bc8ec; bytecode file offset 0xab91b4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getImplTypeLabel: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBDataTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) implTypeValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) implType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDataTypeClassForIdentifier: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDisplayLabel.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) implTypeValue.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201dea38; bytecode file offset 0xadb308"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getTypeWithIcon: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBDataTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) implTypeValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) modType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeForLabel: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelLabel.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20251d04; bytecode file offset 0xb4e5e0"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
elementNameBeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) implTypeName.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := EwTextEditPolicy.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) on: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := (0) @ (recoveredValue9).
    (recoveredValue7) selection: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue6) value: (recoveredValue11).
    recoveredValue12 := recoveredArg3.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredLocal2.
    (recoveredValue13) editPolicy: (recoveredValue14).
    (recoveredValue12) doit: (true).
    ^self
! !

"ASDBase.ic method 0x2028f944; bytecode file offset 0xb8c218"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForElementLabels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value: (recoveredBlock4Stack2).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg2.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value: (recoveredBlock4Stack2).
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) = (recoveredBlock4Stack2).
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 28] ifFalse: [recoveredBlock4PC := 38].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) sortBlockForName.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg2.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value: (recoveredBlock4Stack2) value: (recoveredBlock4Stack3).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) < (recoveredBlock4Stack2).
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x20297140; bytecode file offset 0xb93a14"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
updateElementsForPageImplementation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Local1 recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := (self) tableWidgetImplementation.
    recoveredBlock6Value1 := (recoveredBlock6Value0) selectedItems.
    recoveredBlock6Local1 := recoveredBlock6Value1.
    recoveredBlock6Value2 := (self) tableWidgetImplementation.
    recoveredBlock6Value3 := [:recoveredBlock6Block19Arg1 | 
    | recoveredBlock6Block19Value0 recoveredBlock6Block19Value1 recoveredBlock6Block19Value2 recoveredBlock6Block19Value3 recoveredBlock6Block19Value4 |
    recoveredBlock6Block19Value0 := recoveredBlock6Block19Arg1.
    recoveredBlock6Block19Value1 := recoveredBlock6Block19Value0.
    recoveredBlock6Block19Value2 := (self) sortedElementsForPageImplementation.
    (recoveredBlock6Block19Value1) items: (recoveredBlock6Block19Value2).
    recoveredBlock6Block19Value3 := recoveredBlock6Local1.
    recoveredBlock6Block19Value4 := (recoveredBlock6Block19Value0) selectedItems: (recoveredBlock6Block19Value3).
    recoveredBlock6Block19Value4
].
    recoveredBlock6Value4 := (recoveredBlock6Value2) setValuesBlock: (recoveredBlock6Value3).
    recoveredBlock6Value4
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202e4854; bytecode file offset 0xbe1140"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createTableColumnQuantisation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Q').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (24).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('quantizationCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) tableColumnSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForQuantization.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202e48c8; bytecode file offset 0xbe11f4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createTableColumnModelMax
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Max').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (48).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('modelMaxCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) tableColumnSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForModelMax.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202e4908; bytecode file offset 0xbe11f4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createTableColumnModelMin
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Min').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (48).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('modelMinCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) tableColumnSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForModelMin.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202ed644; bytecode file offset 0xbe9f78"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createTableColumnImplMin
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ('Impl.\Min') withCrs.
    (recoveredValue2) heading: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) editable: (false).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) verticalSeparatorThickness: (1).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) resizable: (true).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) width: (48).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := XmNcellValueCallback.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (self) selector: ('implMinCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue10 := (self) tableColumnSortBlocks.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) sortBlockForImplMin.
    (recoveredValue10) at: (recoveredValue11) put: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x202ed688; bytecode file offset 0xbe9f78"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createTableColumnImplMax
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ('Impl.\Max') withCrs.
    (recoveredValue2) heading: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) editable: (false).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) verticalSeparatorThickness: (1).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) resizable: (true).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) width: (48).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := XmNcellValueCallback.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (self) selector: ('implMaxCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue10 := (self) tableColumnSortBlocks.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) sortBlockForImplMax.
    (recoveredValue10) at: (recoveredValue11) put: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x202f6058; bytecode file offset 0xbf2930"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
updateElementsForPageImplementationItems: recoveredArg1 selectedItems: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) shell.
    recoveredBlock6Value1 := [
    | recoveredBlock6Block13Value0 recoveredBlock6Block13Value1 recoveredBlock6Block13Value2 recoveredBlock6Block13Value3 recoveredBlock6Block13Value4 recoveredBlock6Block13Value5 |
    recoveredBlock6Block13Value0 := (self) tableWidgetImplementation.
    recoveredBlock6Block13Value1 := recoveredArg1.
    recoveredBlock6Block13Value2 := (self) sortedElementsForPageImplementation: (recoveredBlock6Block13Value1).
    (recoveredBlock6Block13Value0) items: (recoveredBlock6Block13Value2).
    recoveredBlock6Block13Value3 := recoveredArg2.
    recoveredBlock6Block13Value4 := [:recoveredBlock6Block13Block31Arg1 | 
    | recoveredBlock6Block13Block31Value0 recoveredBlock6Block13Block31Value1 recoveredBlock6Block13Block31Value2 |
    recoveredBlock6Block13Block31Value0 := (self) tableWidgetImplementation.
    recoveredBlock6Block13Block31Value1 := recoveredBlock6Block13Block31Arg1.
    recoveredBlock6Block13Block31Value2 := (recoveredBlock6Block13Block31Value0) selectItem: (recoveredBlock6Block13Block31Value1) notify: (true).
    recoveredBlock6Block13Block31Value2
].
    recoveredBlock6Block13Value5 := (recoveredBlock6Block13Value3) do: (recoveredBlock6Block13Value4).
    recoveredBlock6Block13Value5
].
    recoveredBlock6Value2 := (recoveredBlock6Value0) deferRedraw: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202f6aa8; bytecode file offset 0xbf33d4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createTableColumnFormula
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Formula').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (64).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('formulaCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) tableColumnSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForFormula.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202f6ae8; bytecode file offset 0xbf33d4"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createTableColumnModelType
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Type').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (64).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('typeCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) tableColumnSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForType.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202f6cd8; bytecode file offset 0xbf35c8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createTableColumnImplType
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ('Impl.\Type') withCrs.
    (recoveredValue2) heading: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) editable: (false).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) verticalSeparatorThickness: (1).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) resizable: (true).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) width: (64).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := XmNcellValueCallback.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (self) selector: ('implTypeCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue10 := (self) tableColumnSortBlocks.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) sortBlockForImplType.
    (recoveredValue10) at: (recoveredValue11) put: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x203032dc; bytecode file offset 0xbffba8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
getQuantizationValue: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280e9988Arg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGBoolean.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplementation: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysQuantization.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2031565c; bytecode file offset 0xc11f1c"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
sortBlockForElementValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value: (recoveredBlock4Stack2).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg2.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value: (recoveredBlock4Stack2).
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) = (recoveredBlock4Stack2).
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 28] ifFalse: [recoveredBlock4PC := 38].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) sortBlockForName.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg2.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value: (recoveredBlock4Stack2) value: (recoveredBlock4Stack3).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 46] ifFalse: [recoveredBlock4PC := 42].
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 52] ifFalse: [recoveredBlock4PC := 46].
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isNil.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) < (recoveredBlock4Stack2).
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x2033309c; bytecode file offset 0xc2f980"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
columnsImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) createTableColumnName.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) createTableColumnImplType.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) createTableColumnImplMin.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) createTableColumnQuantisation.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) createTableColumnImplMax.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) createTableColumnFormula.
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) createTableColumnModelType.
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) createTableColumnModelMin.
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) createTableColumnModelMax.
    (recoveredValue18) add: (recoveredValue19).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20389ea0; bytecode file offset 0xc86784"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
elementNameEndEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAnsiCNameCallData: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Call_68753'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 recoveredBlock23Value8 recoveredBlock23Value9 recoveredBlock23Value10 recoveredBlock23Value11 |
    recoveredBlock23Value0 := (self) project.
    recoveredBlock23Value1 := recoveredArg3.
    recoveredBlock23Value2 := (recoveredBlock23Value1) item.
    (recoveredBlock23Value0) deleteImplType: (recoveredBlock23Value2).
    recoveredBlock23Value3 := recoveredArg3.
    recoveredBlock23Value4 := (recoveredBlock23Value3) item.
    recoveredBlock23Value5 := recoveredArg3.
    recoveredBlock23Value6 := (recoveredBlock23Value5) newValue.
    (recoveredBlock23Value4) implTypeName: (recoveredBlock23Value6).
    recoveredBlock23Value7 := (self) project.
    recoveredBlock23Value8 := recoveredArg3.
    recoveredBlock23Value9 := (recoveredBlock23Value8) item.
    (recoveredBlock23Value7) addImplType: (recoveredBlock23Value9).
    recoveredBlock23Value10 := recoveredArg3.
    recoveredBlock23Value11 := (recoveredBlock23Value10) doit: (true).
    recoveredBlock23Value11
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) suspendObserving: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038a134; bytecode file offset 0xc86a30"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createTableColumnName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Name').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (112).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('nameCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := XmNbeginEditCallback.
    (recoveredValue9) addCallback: (recoveredValue10) receiver: (self) selector: ('elementNameBeginEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := XmNendEditCallback.
    (recoveredValue11) addCallback: (recoveredValue12) receiver: (self) selector: ('elementNameEndEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue13 := (self) tableColumnSortBlocks.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (self) sortBlockForName.
    (recoveredValue13) at: (recoveredValue14) put: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x204b3584; bytecode file offset 0xdafec8"
!ASDImplementationTypeTableWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'tableWidgetImplementation'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 recoveredBlock13Value10 recoveredBlock13Value11 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    recoveredBlock13Value2 := (self) columnsImplementation.
    (recoveredBlock13Value1) columns: (recoveredBlock13Value2).
    recoveredBlock13Value3 := recoveredBlock13Value0.
    (recoveredBlock13Value3) editable: (false).
    recoveredBlock13Value4 := recoveredBlock13Value0.
    (recoveredBlock13Value4) selectableColumns: (true).
    recoveredBlock13Value5 := recoveredBlock13Value0.
    (recoveredBlock13Value5) lockedColumns: (1).
    recoveredBlock13Value6 := recoveredBlock13Value0.
    (recoveredBlock13Value6) headingSeparatorThickness: (3).
    recoveredBlock13Value7 := recoveredBlock13Value0.
    recoveredBlock13Value8 := XmEXTENDEDSELECT.
    (recoveredBlock13Value7) selectionPolicy: (recoveredBlock13Value8).
    recoveredBlock13Value9 := recoveredBlock13Value0.
    (recoveredBlock13Value9) applicationDrawnBackground: (true).
    recoveredBlock13Value10 := XmETCHCELLS.
    recoveredBlock13Value11 := (recoveredBlock13Value0) headingVisualStyle: (recoveredBlock13Value10).
    recoveredBlock13Value11
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledTableList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 'scrolledTableWidgetImplementation'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'tableWidgetImplementation'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:block28105a54Arg1 | 
    | block28105a54Value0 block28105a54Value1 block28105a54Value2 block28105a54Value3 block28105a54Value4 block28105a54Value5 block28105a54Value6 block28105a54Value7 block28105a54Value8 block28105a54Value9 block28105a54Value10 block28105a54Value11 block28105a54Value12 |
    block28105a54Value0 := block28105a54Arg1.
    block28105a54Value1 := block28105a54Value0.
    block28105a54Value2 := XmATTACHFORM.
    (block28105a54Value1) bottomAttachment: (block28105a54Value2).
    block28105a54Value3 := block28105a54Value0.
    (block28105a54Value3) bottomOffset: (0).
    block28105a54Value4 := block28105a54Value0.
    block28105a54Value5 := XmATTACHFORM.
    (block28105a54Value4) topAttachment: (block28105a54Value5).
    block28105a54Value6 := block28105a54Value0.
    (block28105a54Value6) topOffset: (0).
    block28105a54Value7 := block28105a54Value0.
    block28105a54Value8 := XmATTACHFORM.
    (block28105a54Value7) leftAttachment: (block28105a54Value8).
    block28105a54Value9 := block28105a54Value0.
    (block28105a54Value9) leftOffset: (0).
    block28105a54Value10 := block28105a54Value0.
    block28105a54Value11 := XmATTACHFORM.
    (block28105a54Value10) rightAttachment: (block28105a54Value11).
    block28105a54Value12 := (block28105a54Value0) rightOffset: (0).
    block28105a54Value12
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := XmNcolumnHeadingSelectionCallback.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := 'implementationTableColumnHeadingSelectionCallback:clientData:callData:'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

