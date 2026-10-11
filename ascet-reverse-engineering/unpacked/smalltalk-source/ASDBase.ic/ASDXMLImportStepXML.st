"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003160; bytecode file offset 0x8ffcfc"
!ASDXMLImportStepXML methodsFor: 'recovered'!
createMetaStep
    ^self
! !

"ASDBase.ic method 0x20014538; bytecode file offset 0x912098"
!ASDXMLImportStepXML methodsFor: 'recovered'!
classOfNextStep
    | recoveredValue0 |
    recoveredValue0 := ASDXMLImportStepMain.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2013a530; bytecode file offset 0xa36df0"
!ASDXMLImportStepXML methodsFor: 'recovered'!
createNextStep
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASDXMLImportStepMain.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := controller.
    recoveredValue3 := protoItem.
    recoveredValue4 := importPath.
    recoveredValue5 := extension.
    recoveredValue6 := (recoveredValue1) initOn: (recoveredValue2) item: (recoveredValue3) importPath: (recoveredValue4) ext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202e7cf8; bytecode file offset 0xbe45c4"
!ASDXMLImportStepXML methodsFor: 'recovered'!
initOn: recoveredArg1 baseName: recoveredArg2 importPath: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('.main.').
    recoveredValue5 := (recoveredValue0) findExtensionFor: (recoveredValue4).
    recoveredValue6 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) xmlExt.
    recoveredBlock18Value1
].
    recoveredValue7 := (recoveredValue5) ifNil: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := recoveredLocal1.
    (self) initOn: (recoveredValue8) baseName: (recoveredValue9) importPath: (recoveredValue10) xmlExt: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2032c620; bytecode file offset 0xc28f08"
!ASDXMLImportStepXML methodsFor: 'recovered'!
handleDefaultProject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) baseName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := '.main.dp.'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := extension.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) qualifyBaseName: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ASDXMLImportStepXML.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := controller.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) baseName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := importPath.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := 'dp.'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack7 := extension.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) baseName: (recoveredStack4) importPath: (recoveredStack5) xmlExt: (recoveredStack6).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) performStep: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := recoveredArg1.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value0) defaultProjectStep: (recoveredBlock44Value1).
    recoveredBlock44Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

