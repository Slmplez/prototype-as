"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b226c; bytecode file offset 0x9aeb54"
!DBXmlImportStepTextDocumentation methodsFor: 'recovered'!
readTextDocsDatas
    (self) readTextDocsConfig: ('.data.') tag: ('DataSet').
    ^self
! !

"ASDBase.ic method 0x200b2294; bytecode file offset 0x9aeb54"
!DBXmlImportStepTextDocumentation methodsFor: 'recovered'!
readTextDocsImpls
    (self) readTextDocsConfig: ('.implementation.') tag: ('ImplementationSet').
    ^self
! !

"ASDBase.ic method 0x200e32e4; bytecode file offset 0x9dfba4"
!DBXmlImportStepTextDocumentation methodsFor: 'recovered'!
performStep
    (self) etasDevHalt.
    (self) runtimeAssert: (false) additionalInfo: ('This step needs a more differentiated calling').
    ^nil
! !

"ASDBase.ic method 0x20113dfc; bytecode file offset 0xa106bc"
!DBXmlImportStepTextDocumentation methodsFor: 'recovered'!
readNotes: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super readNotes: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) object: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20187ca4; bytecode file offset 0xa84564"
!DBXmlImportStepTextDocumentation methodsFor: 'recovered'!
initOn: recoveredArg1 importDesc: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super initOn: (recoveredValue0) importDesc: (recoveredValue1).
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (self) unexpectedElement: (recoveredBlock10Value0).
    recoveredBlock10Value1
].
    handler := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x202d74ac; bytecode file offset 0xbd3d80"
!DBXmlImportStepTextDocumentation methodsFor: 'recovered'!
readTextDocsMain
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := [:recoveredBlock6Block13Arg1 | 
    | recoveredBlock6Block13Value0 recoveredBlock6Block13Value1 recoveredBlock6Block13Value2 recoveredBlock6Block13Value3 |
    recoveredBlock6Block13Value0 := recoveredBlock6Block13Arg1.
    recoveredBlock6Block13Value1 := [:recoveredBlock6Block13Block23Arg1 | 
    | recoveredBlock6Block13Block23Value0 recoveredBlock6Block13Block23Value1 recoveredBlock6Block13Block23Value2 recoveredBlock6Block13Block23Value3 |
    recoveredBlock6Block13Block23Value0 := recoveredBlock6Block13Block23Arg1.
    recoveredBlock6Block13Block23Value1 := sgClass.
    recoveredBlock6Block13Block23Value2 := (recoveredBlock6Block13Block23Value1) textDocumentationKey.
    recoveredBlock6Block13Block23Value3 := (self) readNotes: (recoveredBlock6Block13Block23Value0) into: (recoveredBlock6Block13Block23Value2).
    recoveredBlock6Block13Block23Value3
].
    recoveredBlock6Block13Value2 := [].
    recoveredBlock6Block13Value3 := (recoveredBlock6Block13Value0) skipTo: ('Notes') do: (recoveredBlock6Block13Value1) ifNot: (recoveredBlock6Block13Value2).
    recoveredBlock6Block13Value3
].
    recoveredBlock6Value2 := (recoveredBlock6Value0) anyDo: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (self) readTextDocs: ('.main.') filter: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x203afde8; bytecode file offset 0xcac6d0"
!DBXmlImportStepTextDocumentation methodsFor: 'recovered'!
readTextDocsConfig: recoveredArg1 tag: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := [:recoveredBlock7Block18Arg1 | 
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 recoveredBlock7Block18Value2 recoveredBlock7Block18Value3 |
    recoveredBlock7Block18Value0 := recoveredBlock7Block18Arg1.
    recoveredBlock7Block18Value1 := [:recoveredBlock7Block18Block29Arg1 | 
    | recoveredBlock7Block18Block29Local1 recoveredBlock7Block18Block29Stack0 recoveredBlock7Block18Block29Stack1 recoveredBlock7Block18Block29Stack2 recoveredBlock7Block18Block29Stack3 recoveredBlock7Block18Block29Stack4 recoveredBlock7Block18Block29Stack5 recoveredBlock7Block18Block29PC recoveredBlock7Block18Block29Step recoveredBlock7Block18Block29Done recoveredBlock7Block18Block29Result |
    recoveredBlock7Block18Block29Stack0 := self.
    recoveredBlock7Block18Block29PC := 36.
    recoveredBlock7Block18Block29Done := false.
    [recoveredBlock7Block18Block29Done not] whileTrue: [
        recoveredBlock7Block18Block29Step := recoveredBlock7Block18Block29PC.
        recoveredBlock7Block18Block29Step = 36 ifTrue: [
            recoveredBlock7Block18Block29Stack1 := controller.
            recoveredBlock7Block18Block29PC := 38.
        ].
        recoveredBlock7Block18Block29Step = 38 ifTrue: [
            recoveredBlock7Block18Block29Stack1 := (recoveredBlock7Block18Block29Stack1) database.
            recoveredBlock7Block18Block29PC := 39.
        ].
        recoveredBlock7Block18Block29Step = 39 ifTrue: [
            recoveredBlock7Block18Block29Stack2 := recoveredBlock7Block18Arg1.
            recoveredBlock7Block18Block29PC := 42.
        ].
        recoveredBlock7Block18Block29Step = 42 ifTrue: [
            recoveredBlock7Block18Block29Stack3 := 'OID'.
            recoveredBlock7Block18Block29PC := 44.
        ].
        recoveredBlock7Block18Block29Step = 44 ifTrue: [
            recoveredBlock7Block18Block29Stack4 := nil.
            recoveredBlock7Block18Block29PC := 45.
        ].
        recoveredBlock7Block18Block29Step = 45 ifTrue: [
            recoveredBlock7Block18Block29Stack2 := (recoveredBlock7Block18Block29Stack2) getOID: (recoveredBlock7Block18Block29Stack3) default: (recoveredBlock7Block18Block29Stack4).
            recoveredBlock7Block18Block29PC := 47.
        ].
        recoveredBlock7Block18Block29Step = 47 ifTrue: [
            recoveredBlock7Block18Block29Stack1 := (recoveredBlock7Block18Block29Stack1) objectFor: (recoveredBlock7Block18Block29Stack2).
            recoveredBlock7Block18Block29PC := 49.
        ].
        recoveredBlock7Block18Block29Step = 49 ifTrue: [
            recoveredBlock7Block18Block29Stack2 := [:block280f5a30Arg1 | 
    nil
].
            recoveredBlock7Block18Block29PC := 51.
        ].
        recoveredBlock7Block18Block29Step = 51 ifTrue: [
            recoveredBlock7Block18Block29PC := 56.
        ].
        recoveredBlock7Block18Block29Step = 56 ifTrue: [
            recoveredBlock7Block18Block29Stack1 := (recoveredBlock7Block18Block29Stack1) getObjectIfUndefined: (recoveredBlock7Block18Block29Stack2).
            recoveredBlock7Block18Block29PC := 58.
        ].
        recoveredBlock7Block18Block29Step = 58 ifTrue: [
            recoveredBlock7Block18Block29Local1 := recoveredBlock7Block18Block29Stack1.
            recoveredBlock7Block18Block29PC := 59.
        ].
        recoveredBlock7Block18Block29Step = 59 ifTrue: [
            recoveredBlock7Block18Block29Stack1 := recoveredBlock7Block18Block29Arg1.
            recoveredBlock7Block18Block29PC := 60.
        ].
        recoveredBlock7Block18Block29Step = 60 ifTrue: [
            recoveredBlock7Block18Block29Stack2 := recoveredBlock7Block18Block29Local1.
            recoveredBlock7Block18Block29PC := 61.
        ].
        recoveredBlock7Block18Block29Step = 61 ifTrue: [
            recoveredBlock7Block18Block29Stack2 := (recoveredBlock7Block18Block29Stack2) textDocumentationKey.
            recoveredBlock7Block18Block29PC := 63.
        ].
        recoveredBlock7Block18Block29Step = 63 ifTrue: [
            recoveredBlock7Block18Block29Stack0 := (recoveredBlock7Block18Block29Stack0) readNotes: (recoveredBlock7Block18Block29Stack1) into: (recoveredBlock7Block18Block29Stack2).
            recoveredBlock7Block18Block29PC := 65.
        ].
        recoveredBlock7Block18Block29Step = 65 ifTrue: [
            recoveredBlock7Block18Block29Result := recoveredBlock7Block18Block29Stack0.
            recoveredBlock7Block18Block29Done := true.
        ].
    ].
    recoveredBlock7Block18Block29Result
].
    recoveredBlock7Block18Value2 := [].
    recoveredBlock7Block18Value3 := (recoveredBlock7Block18Value0) skipTo: ('Notes') do: (recoveredBlock7Block18Value1) ifNot: (recoveredBlock7Block18Value2).
    recoveredBlock7Block18Value3
].
    recoveredBlock7Value3 := (recoveredBlock7Value0) multiple: (recoveredBlock7Value1) do: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (self) readTextDocs: (recoveredValue0) filter: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203b749c; bytecode file offset 0xcb3d7c"
!DBXmlImportStepTextDocumentation methodsFor: 'recovered'!
readTextDocs: recoveredArg1 filter: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := extension.
    recoveredBlock4Value2 := (recoveredBlock4Value0) , (recoveredBlock4Value1).
    recoveredBlock4Value3 := (self) readDOMTree: (recoveredBlock4Value2) schema: (nil) verify: (false).
    recoveredLocal1 := recoveredBlock4Value3.
    recoveredBlock4Value4 := recoveredArg2.
    recoveredBlock4Value5 := recoveredLocal1.
    recoveredBlock4Value6 := (recoveredBlock4Value4) value: (recoveredBlock4Value5).
    recoveredBlock4Value6
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34Stack5 recoveredBlock34Stack6 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := issue.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            (recoveredBlock34Stack1 == nil) ifTrue: [recoveredBlock34PC := 56] ifFalse: [recoveredBlock34PC := 46].
        ].
        recoveredBlock34Step = 46 ifTrue: [
            recoveredBlock34Stack1 := controller.
            recoveredBlock34PC := 48.
        ].
        recoveredBlock34Step = 48 ifTrue: [
            recoveredBlock34Stack2 := issue.
            recoveredBlock34PC := 50.
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) addIssue: (recoveredBlock34Stack2).
            recoveredBlock34PC := 52.
        ].
        recoveredBlock34Step = 52 ifTrue: [
            recoveredBlock34PC := 76.
        ].
        recoveredBlock34Step = 56 ifTrue: [
            recoveredBlock34Stack1 := Util.
            recoveredBlock34PC := 58.
        ].
        recoveredBlock34Step = 58 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 59.
        ].
        recoveredBlock34Step = 59 ifTrue: [
            (recoveredBlock34Stack1) writeStackTrace: (recoveredBlock34Stack2).
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            recoveredBlock34Stack1 := controller.
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            recoveredBlock34Stack2 := ASDXMLImportIssueUnhandledException.
            recoveredBlock34PC := 65.
        ].
        recoveredBlock34Step = 65 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) new.
            recoveredBlock34PC := 67.
        ].
        recoveredBlock34Step = 67 ifTrue: [
            recoveredBlock34Stack3 := protoClass.
            recoveredBlock34PC := 69.
        ].
        recoveredBlock34Step = 69 ifTrue: [
            recoveredBlock34Stack4 := recoveredBlock34Arg1.
            recoveredBlock34PC := 70.
        ].
        recoveredBlock34Step = 70 ifTrue: [
            recoveredBlock34Stack5 := false.
            recoveredBlock34PC := 71.
        ].
        recoveredBlock34Step = 71 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) initOn: (recoveredBlock34Stack3) exception: (recoveredBlock34Stack4) fatal: (recoveredBlock34Stack5).
            recoveredBlock34PC := 74.
        ].
        recoveredBlock34Step = 74 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) addIssue: (recoveredBlock34Stack2).
            recoveredBlock34PC := 76.
        ].
        recoveredBlock34Step = 76 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^self
! !

