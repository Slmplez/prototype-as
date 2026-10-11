"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ec24; bytecode file offset 0x94d048"
!ASDXMLImportStepConfig methodsFor: 'recovered'!
type
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2019214c; bytecode file offset 0xa8ea1c"
!ASDXMLImportStepConfig methodsFor: 'recovered'!
elementNotFound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := controller.
    recoveredValue1 := ASDXMLImportIssueOrphanedConfig.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := protoClass.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) type.
    recoveredValue6 := (recoveredValue2) initOn: (recoveredValue3) name: (recoveredValue4) type: (recoveredValue5).
    (recoveredValue0) addIssue: (recoveredValue6).
    recoveredValue7 := ElementNotFound.
    (recoveredValue7) signal.
    ^self
! !

"ASDBase.ic method 0x201cf464; bytecode file offset 0xacbd28"
!ASDXMLImportStepConfig methodsFor: 'recovered'!
readUUID: recoveredArg1 target: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getString: ('UUID') default: (nil).
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg2.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) uuid: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201d3b98; bytecode file offset 0xad0464"
!ASDXMLImportStepConfig methodsFor: 'recovered'!
makeDefaultConfig: recoveredArg1 protoConfig: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) xmlInit.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := controller.
    recoveredValue5 := protoClass.
    recoveredValue6 := (recoveredValue5) xmlOID.
    recoveredValue7 := (recoveredValue4) makeDBProxy: (recoveredValue6).
    (recoveredValue3) xmlSgClass: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) thing: (recoveredValue9).
    recoveredValue10 := controller.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) xmlOID.
    recoveredValue13 := (recoveredValue10) makeDBProxy: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x2030de54; bytecode file offset 0xc0a720"
!ASDXMLImportStepConfig methodsFor: 'recovered'!
classifyElements: recoveredArg1 instanceEls: recoveredArg2 classEls: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isImported.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 52] ifFalse: [recoveredBlock7PC := 20].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isConstantOrSystemConstant.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 31] ifFalse: [recoveredBlock7PC := 28].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isExported.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 36] ifFalse: [recoveredBlock7PC := 42].
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg3.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) aliasName.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2) put: (recoveredBlock7Stack3).
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack2 := nil.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack2.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2044eb50; bytecode file offset 0xd4b44c"
!ASDXMLImportStepConfig methodsFor: 'recovered'!
checkCompleteness: recoveredArg1 config: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280ff364Arg1 | 
    | block280ff364Value0 block280ff364Value1 |
    block280ff364Value0 := block280ff364Arg1.
    block280ff364Value1 := (block280ff364Value0) isSelf.
    block280ff364Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := found.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) xmlOID.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack3 := [
    | block280ff388Value0 |
    block280ff388Value0 := ('todo') notNil.
    block280ff388Value0
].
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) removeKey: (recoveredBlock21Stack2) ifAbsent: (recoveredBlock21Stack3).
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Local1 recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50Stack5 recoveredBlock50Stack6 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 58.
        ].
        recoveredBlock50Step = 58 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) isMethodLocal.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 109] ifFalse: [recoveredBlock50PC := 64].
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50PC := 65.
        ].
        recoveredBlock50Step = 65 ifTrue: [
            recoveredBlock50Stack1 := 'Kli'.
            recoveredBlock50PC := 67.
        ].
        recoveredBlock50Step = 67 ifTrue: [
            recoveredBlock50Stack2 := 'Call_99064'.
            recoveredBlock50PC := 69.
        ].
        recoveredBlock50Step = 69 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) == (recoveredBlock50Stack2).
            recoveredBlock50PC := 70.
        ].
        recoveredBlock50Step = 70 ifTrue: [
            recoveredBlock50PC := 71.
        ].
        recoveredBlock50Step = 71 ifTrue: [
            recoveredBlock50Stack1 := protoClass.
            recoveredBlock50PC := 73.
        ].
        recoveredBlock50Step = 73 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 74.
        ].
        recoveredBlock50Step = 74 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) xmlOID.
            recoveredBlock50PC := 75.
        ].
        recoveredBlock50Step = 75 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) xmlElementByOID: (recoveredBlock50Stack2).
            recoveredBlock50PC := 77.
        ].
        recoveredBlock50Step = 77 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Stack1.
            recoveredBlock50PC := 78.
        ].
        recoveredBlock50Step = 78 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack2.
            recoveredBlock50PC := 79.
        ].
        recoveredBlock50Step = 79 ifTrue: [
            (recoveredBlock50Stack1 ~~ nil) ifTrue: [recoveredBlock50PC := 90] ifFalse: [recoveredBlock50PC := 82].
        ].
        recoveredBlock50Step = 82 ifTrue: [
            recoveredBlock50Stack1 := protoClass.
            recoveredBlock50PC := 84.
        ].
        recoveredBlock50Step = 84 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 85.
        ].
        recoveredBlock50Step = 85 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) elementName.
            recoveredBlock50PC := 87.
        ].
        recoveredBlock50Step = 87 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) xmlElementByName: (recoveredBlock50Stack2).
            recoveredBlock50PC := 89.
        ].
        recoveredBlock50Step = 89 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 90.
        ].
        recoveredBlock50Step = 90 ifTrue: [
            recoveredBlock50Stack1 := controller.
            recoveredBlock50PC := 92.
        ].
        recoveredBlock50Step = 92 ifTrue: [
            recoveredBlock50Stack2 := ASDXMLImportIssueMissingConfig.
            recoveredBlock50PC := 94.
        ].
        recoveredBlock50Step = 94 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) new.
            recoveredBlock50PC := 96.
        ].
        recoveredBlock50Step = 96 ifTrue: [
            recoveredBlock50Stack3 := protoClass.
            recoveredBlock50PC := 98.
        ].
        recoveredBlock50Step = 98 ifTrue: [
            recoveredBlock50Stack4 := recoveredBlock50Local1.
            recoveredBlock50PC := 99.
        ].
        recoveredBlock50Step = 99 ifTrue: [
            recoveredBlock50Stack5 := recoveredArg2.
            recoveredBlock50PC := 102.
        ].
        recoveredBlock50Step = 102 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) initOn: (recoveredBlock50Stack3) element: (recoveredBlock50Stack4) config: (recoveredBlock50Stack5).
            recoveredBlock50PC := 105.
        ].
        recoveredBlock50Step = 105 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) addIssue: (recoveredBlock50Stack2).
            recoveredBlock50PC := 107.
        ].
        recoveredBlock50Step = 107 ifTrue: [
            recoveredBlock50Stack2 := nil.
            recoveredBlock50PC := 108.
        ].
        recoveredBlock50Step = 108 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack2.
            recoveredBlock50PC := 109.
        ].
        recoveredBlock50Step = 109 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

