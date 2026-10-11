"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013bc0; bytecode file offset 0x912098"
!SGBooleanTableSpecification methodsFor: 'recovered'!
editorClassForEdition
    | recoveredValue0 |
    recoveredValue0 := SGBooleanTableSpecificationEditorView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001883c; bytecode file offset 0x92209c"
!SGBooleanTableSpecification methodsFor: 'recovered'!
visualCallBackImage
    ^'GeneralDiagramTable'
! !

"ASDBase.ic method 0x2001b824; bytecode file offset 0x92209c"
!SGBooleanTableSpecification methodsFor: 'recovered'!
dbXmlType
    ^'booleanTable'
! !

"ASDBase.ic method 0x2002671c; bytecode file offset 0x923928"
!SGBooleanTableSpecification methodsFor: 'recovered'!
visualCallBackImageActive
    ^'GeneralDiagramTableActive'
! !

"ASDBase.ic method 0x20038274; bytecode file offset 0x934b68"
!SGBooleanTableSpecification methodsFor: 'recovered'!
xmlGetType: recoveredArg1
    ^'BooleanTable'
! !

"ASDBase.ic method 0x20075104; bytecode file offset 0x9757c8"
!SGBooleanTableSpecification methodsFor: 'recovered'!
isBooleanTableSpecification
    ^true
! !

"ASDBase.ic method 0x2007b454; bytecode file offset 0x97c330"
!SGBooleanTableSpecification methodsFor: 'recovered'!
isRealASDLSpecification
    ^false
! !

"ASDBase.ic method 0x2007e39c; bytecode file offset 0x97c330"
!SGBooleanTableSpecification methodsFor: 'recovered'!
isTextSpecification
    ^false
! !

"ASDBase.ic method 0x200afa88; bytecode file offset 0x9ac344"
!SGBooleanTableSpecification methodsFor: 'recovered'!
initDefaultMethod: recoveredArg1 methodClass: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createDefaultController.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) createBooleanTable.
    ^self
! !

"ASDBase.ic method 0x200c3e14; bytecode file offset 0x9c0bf0"
!SGBooleanTableSpecification methodsFor: 'recovered'!
booleanTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    booleanTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e67c8; bytecode file offset 0x9e30bc"
!SGBooleanTableSpecification methodsFor: 'recovered'!
xmlLoaded
    | recoveredValue0 |
    super xmlLoaded.
    recoveredValue0 := (self) sgClass.
    (recoveredValue0) getGraphicRepresentation.
    ^self
! !

"ASDBase.ic method 0x2013b3a4; bytecode file offset 0xa37c8c"
!SGBooleanTableSpecification methodsFor: 'recovered'!
booleanTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := booleanTable.
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
            recoveredStack2 := BooleanTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) booleanTable: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := booleanTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022e070; bytecode file offset 0xb2a984"
!SGBooleanTableSpecification methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2025aba8; bytecode file offset 0xb5747c"
!SGBooleanTableSpecification methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (self) internalWriteXMLHeader: (recoveredValue0).
    recoveredValue1 := ('todo') notNil.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) openComplex: ('TableSpecification').
    recoveredValue3 := recoveredArg1.
    (self) internalWriteXMLESDLCode: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) openComplex: ('BooleanTable').
    recoveredValue5 := booleanTable.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) writeXML: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) closeComplex.
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) closeComplex.
    ^self
! !

