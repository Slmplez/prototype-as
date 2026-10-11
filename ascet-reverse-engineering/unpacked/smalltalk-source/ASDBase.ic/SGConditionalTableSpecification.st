"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012b64; bytecode file offset 0x912098"
!SGConditionalTableSpecification methodsFor: 'recovered'!
editorClassForEdition
    | recoveredValue0 |
    recoveredValue0 := SGConditionalTableSpecificationEditorView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aae0; bytecode file offset 0x92209c"
!SGConditionalTableSpecification methodsFor: 'recovered'!
visualCallBackImage
    ^'GeneralDiagramTable'
! !

"ASDBase.ic method 0x2001b11c; bytecode file offset 0x92209c"
!SGConditionalTableSpecification methodsFor: 'recovered'!
dbXmlType
    ^'conditionalTable'
! !

"ASDBase.ic method 0x20023600; bytecode file offset 0x92209c"
!SGConditionalTableSpecification methodsFor: 'recovered'!
visualCallBackImageActive
    ^'GeneralDiagramTableActive'
! !

"ASDBase.ic method 0x2003810c; bytecode file offset 0x934b68"
!SGConditionalTableSpecification methodsFor: 'recovered'!
xmlGetType: recoveredArg1
    ^'ConditionalTable'
! !

"ASDBase.ic method 0x2006dca0; bytecode file offset 0x96a9dc"
!SGConditionalTableSpecification methodsFor: 'recovered'!
conditionalTableCtrl
    | recoveredValue0 |
    recoveredValue0 := conditionalTableCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e9c0; bytecode file offset 0x96b41c"
!SGConditionalTableSpecification methodsFor: 'recovered'!
instructionWidths
    | recoveredValue0 |
    recoveredValue0 := instructionWidths.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ef6c; bytecode file offset 0x96b8a0"
!SGConditionalTableSpecification methodsFor: 'recovered'!
conditionWidths
    | recoveredValue0 |
    recoveredValue0 := conditionWidths.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200776bc; bytecode file offset 0x9757c8"
!SGConditionalTableSpecification methodsFor: 'recovered'!
isConditionalTableSpecification
    ^true
! !

"ASDBase.ic method 0x2007b8d4; bytecode file offset 0x97c330"
!SGConditionalTableSpecification methodsFor: 'recovered'!
isRealASDLSpecification
    ^false
! !

"ASDBase.ic method 0x2007e384; bytecode file offset 0x97c330"
!SGConditionalTableSpecification methodsFor: 'recovered'!
isTextSpecification
    ^false
! !

"ASDBase.ic method 0x200973c4; bytecode file offset 0x995850"
!SGConditionalTableSpecification methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) conditionalTable.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) replaceAliasNames: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200afa78; bytecode file offset 0x9ac344"
!SGConditionalTableSpecification methodsFor: 'recovered'!
initDefaultMethod: recoveredArg1 methodClass: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createDefaultController.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) createConditionalTable.
    ^self
! !

"ASDBase.ic method 0x200c3e2c; bytecode file offset 0x9c0bf0"
!SGConditionalTableSpecification methodsFor: 'recovered'!
conditionalTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    conditionalTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c50c0; bytecode file offset 0x9c1afc"
!SGConditionalTableSpecification methodsFor: 'recovered'!
instructionWidths: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instructionWidths := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c53e8; bytecode file offset 0x9c1f64"
!SGConditionalTableSpecification methodsFor: 'recovered'!
conditionWidths: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    conditionWidths := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cbc10; bytecode file offset 0x9c8654"
!SGConditionalTableSpecification methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('specificationCtrl') with: ('conditionalTableCtrl').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e67b0; bytecode file offset 0x9e30bc"
!SGConditionalTableSpecification methodsFor: 'recovered'!
xmlLoaded
    | recoveredValue0 |
    super xmlLoaded.
    recoveredValue0 := (self) sgClass.
    (recoveredValue0) getGraphicRepresentation.
    ^self
! !

"ASDBase.ic method 0x2010f080; bytecode file offset 0xa0b974"
!SGConditionalTableSpecification methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super owner: (recoveredValue0).
    recoveredValue1 := (self) conditionalTable.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) item: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2013b3cc; bytecode file offset 0xa37c8c"
!SGConditionalTableSpecification methodsFor: 'recovered'!
conditionalTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := conditionalTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ConditionalTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) conditionalTable: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := conditionalTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022c6f4; bytecode file offset 0xb28fc4"
!SGConditionalTableSpecification methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (self) internalWriteXMLHeader: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) openComplex: ('TableSpecification').
    recoveredValue2 := recoveredArg1.
    (self) internalWriteXMLESDLCode: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) openComplex: ('ConditionalTable').
    recoveredValue4 := conditionalTable.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) writeXML: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) closeComplex.
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) closeComplex.
    ^self
! !

"ASDBase.ic method 0x2022e0a4; bytecode file offset 0xb2a984"
!SGConditionalTableSpecification methodsFor: 'recovered'!
createDefaultController
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) owner.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) editorClassForEdition.
    recoveredValue2 := (recoveredValue1) controllerClass.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) createDefaultMakeConfig.
    recoveredValue7 := SGContext.
    recoveredValue8 := (recoveredValue7) create.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) getLibrary.
    recoveredValue11 := (recoveredValue8) library: (recoveredValue10).
    recoveredValue12 := (recoveredValue3) initClass: (recoveredValue4) spec: (self) makeConfig: (recoveredValue6) makeConfigStack: (#()) context: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) initDatamodelManager.
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

