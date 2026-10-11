"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20052c74; bytecode file offset 0x9505d0"
!ASDXMLImportExportController methodsFor: 'recovered'!
messagePrompt: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20065f44; bytecode file offset 0x963428"
!ASDXMLImportExportController methodsFor: 'recovered'!
issues
    | recoveredValue0 |
    recoveredValue0 := issues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008949c; bytecode file offset 0x985ef8"
!ASDXMLImportExportController methodsFor: 'recovered'!
clearIssues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    issues := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009261c; bytecode file offset 0x98ef64"
!ASDXMLImportExportController methodsFor: 'recovered'!
addIssue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := issues.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d6644; bytecode file offset 0x9d3134"
!ASDXMLImportExportController methodsFor: 'recovered'!
initialize
    super initialize.
    (self) clearIssues.
    ^self
! !

"ASDBase.ic method 0x20105628; bytecode file offset 0xa01eec"
!ASDXMLImportExportController methodsFor: 'recovered'!
haltIfDebug
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDImportExportOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDebugMode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0470; bytecode file offset 0xcecd64"
!ASDXMLImportExportController methodsFor: 'recovered'!
fileOutIssues: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initOn: ('ImportIssues').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) groupIssues.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 |
    recoveredBlock15Value0 := EtasXmlSupportDOMElement.
    recoveredBlock15Value1 := (recoveredBlock15Value0) new.
    recoveredBlock15Value2 := (recoveredBlock15Value1) initOn: ('Component').
    recoveredBlock15Local1 := recoveredBlock15Value2.
    recoveredBlock15Value3 := recoveredBlock15Local1.
    recoveredBlock15Value4 := recoveredBlock15Arg1.
    recoveredBlock15Value5 := (recoveredBlock15Value4) key.
    (recoveredBlock15Value3) setAttr: ('name') value: (recoveredBlock15Value5).
    recoveredBlock15Value6 := recoveredBlock15Arg1.
    recoveredBlock15Value7 := (recoveredBlock15Value6) value.
    recoveredBlock15Value8 := [:recoveredBlock15Block48Arg1 | 
    | recoveredBlock15Block48Value0 recoveredBlock15Block48Value1 recoveredBlock15Block48Value2 recoveredBlock15Block48Value3 |
    recoveredBlock15Block48Value0 := recoveredBlock15Local1.
    recoveredBlock15Block48Value1 := recoveredBlock15Block48Arg1.
    recoveredBlock15Block48Value2 := (recoveredBlock15Block48Value1) asXML.
    recoveredBlock15Block48Value3 := (recoveredBlock15Block48Value0) addSubElement: (recoveredBlock15Block48Value2).
    recoveredBlock15Block48Value3
].
    (recoveredBlock15Value7) do: (recoveredBlock15Value8).
    recoveredBlock15Value9 := recoveredLocal1.
    recoveredBlock15Value10 := recoveredBlock15Local1.
    recoveredBlock15Value11 := (recoveredBlock15Value9) addSubElement: (recoveredBlock15Value10).
    recoveredBlock15Value11
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := EtasXmlSupportDoc.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) initFromTree: (recoveredValue7).
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) writeToFile: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x203fa43c; bytecode file offset 0xcf6d28"
!ASDXMLImportExportController methodsFor: 'recovered'!
groupIssues
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := issues.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) protoItem.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            (recoveredBlock12Stack1 ~~ nil) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 24].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := '<Unknown item>'.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) protoItem.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) fullyQualifiedName.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack3 := [
    | block280f9cd8Value0 block280f9cd8Value1 |
    block280f9cd8Value0 := OrderedCollection.
    block280f9cd8Value1 := (block280f9cd8Value0) new.
    block280f9cd8Value1
].
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12PC := 48.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) ifAbsentPut: (recoveredBlock12Stack3).
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) new: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 |
    recoveredBlock71Value0 := recoveredLocal1.
    recoveredBlock71Value1 := recoveredBlock71Arg1.
    recoveredBlock71Value2 := (recoveredBlock71Value0) add: (recoveredBlock71Value1).
    recoveredBlock71Value2
].
    (recoveredValue8) associationsDo: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) asSortedCollection.
    ^recoveredValue11
! !

