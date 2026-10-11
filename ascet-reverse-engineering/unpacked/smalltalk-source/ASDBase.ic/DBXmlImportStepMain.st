"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000bc8; bytecode file offset 0x8ffcfc"
!DBXmlImportStepMain methodsFor: 'recovered'!
handleDefaultProject
    ^self
! !

"ASDBase.ic method 0x2000dabc; bytecode file offset 0x90a4b8"
!DBXmlImportStepMain methodsFor: 'recovered'!
internFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f036c; bytecode file offset 0x9ecc2c"
!DBXmlImportStepMain methodsFor: 'recovered'!
readMainDom
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDXMLImportDOMIterator.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := mainDom.
    recoveredValue3 := (recoveredValue1) initOn: (self) parent: (nil) dom: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201209b4; bytecode file offset 0xa1d308"
!DBXmlImportStepMain methodsFor: 'recovered'!
readAsap2Item: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super readAsap2Item: (recoveredValue0).
    recoveredValue1 := (self) protoItem.
    recoveredValue2 := (self) controller.
    (recoveredValue1) commit: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201646c4; bytecode file offset 0xa60f84"
!DBXmlImportStepMain methodsFor: 'recovered'!
registerNewItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := protoClass.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) thing: (recoveredValue1).
    recoveredValue2 := dbo.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) object: (recoveredValue3).
    recoveredValue4 := controller.
    recoveredValue5 := protoClass.
    (recoveredValue4) parentizeItem: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20179fa0; bytecode file offset 0xa7685c"
!DBXmlImportStepMain methodsFor: 'recovered'!
initOn: recoveredArg1 item: recoveredArg2 importPath: recoveredArg3 ext: recoveredArg4 dom: recoveredArg5 dbo: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    super initOn: (recoveredValue0) item: (recoveredValue1) importPath: (recoveredValue2) ext: (recoveredValue3).
    recoveredValue4 := recoveredArg5.
    mainDom := recoveredValue4.
    recoveredValue5 := recoveredArg6.
    dbo := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x20194d74; bytecode file offset 0xa91640"
!DBXmlImportStepMain methodsFor: 'recovered'!
readCustomerSpecificAttributes: recoveredArg1
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
            super readCustomerSpecificAttributes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := ASDXMLImportOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionActivateWriteProtection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := protoClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) denyWrite.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ecbc8; bytecode file offset 0xae94a0"
!DBXmlImportStepMain methodsFor: 'recovered'!
handleNotes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := DBXmlImportDescTextDocumentation.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := protoClass.
    recoveredValue3 := (recoveredValue2) thing.
    recoveredValue4 := (recoveredValue3) dbObject.
    recoveredValue5 := (recoveredValue4) importDesc.
    recoveredValue6 := (recoveredValue1) initOn: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := protoClass.
    recoveredValue8 := (recoveredValue7) thing.
    recoveredValue9 := controller.
    recoveredValue10 := (recoveredValue9) database.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue10) makeNewProxy: (recoveredValue11).
    (recoveredValue8) xmlTextDocumentation: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x20333aa4; bytecode file offset 0xc3038c"
!DBXmlImportStepMain methodsFor: 'recovered'!
readTimeStamps: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('WorkspaceTimeStamps').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := [:recoveredBlock13Block23Arg1 | 
    | recoveredBlock13Block23Local1 recoveredBlock13Block23Local2 recoveredBlock13Block23Value0 recoveredBlock13Block23Value1 recoveredBlock13Block23Value2 recoveredBlock13Block23Value3 recoveredBlock13Block23Value4 recoveredBlock13Block23Value5 recoveredBlock13Block23Value6 recoveredBlock13Block23Value7 recoveredBlock13Block23Value8 recoveredBlock13Block23Value9 |
    recoveredBlock13Block23Value0 := recoveredBlock13Block23Arg1.
    recoveredBlock13Block23Value1 := (recoveredBlock13Block23Value0) getNMToken: ('timeStampKey').
    recoveredBlock13Block23Local2 := recoveredBlock13Block23Value1.
    recoveredBlock13Block23Value2 := recoveredBlock13Block23Arg1.
    recoveredBlock13Block23Value3 := (recoveredBlock13Block23Value2) getDateTime: ('timeStampValue').
    recoveredBlock13Block23Local1 := recoveredBlock13Block23Value3.
    recoveredBlock13Block23Value4 := protoClass.
    recoveredBlock13Block23Value5 := (recoveredBlock13Block23Value4) thing.
    recoveredBlock13Block23Value6 := (recoveredBlock13Block23Value5) timeStamps.
    recoveredBlock13Block23Value7 := recoveredBlock13Block23Local2.
    recoveredBlock13Block23Value8 := recoveredBlock13Block23Local1.
    recoveredBlock13Block23Value9 := (recoveredBlock13Block23Value6) at: (recoveredBlock13Block23Value7) put: (recoveredBlock13Block23Value8).
    recoveredBlock13Block23Value9
].
    recoveredBlock13Value2 := (recoveredBlock13Value0) multiple: ('TimeStamp') do: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (self) metaAt: (#('ComponentMain' 'TimeStamps')) or: (recoveredValue1) do: (recoveredValue2).
    ^self
! !

