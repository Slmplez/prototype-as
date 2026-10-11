"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20095c7c; bytecode file offset 0x992608"
!SGControlStructureBlockPort methodsFor: 'recovered'!
collectAllSeqForMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) seqTable.
    (recoveredValue1) addSelectedElement: (self).
    ^self
! !

"ASDBase.ic method 0x20099614; bytecode file offset 0x995ed4"
!SGControlStructureBlockPort methodsFor: 'recovered'!
collectHardPrerequisitesIn: recoveredArg1 forAnalyzingUnit: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) block.
    recoveredValue2 := (recoveredValue1) bdlPrereqDataflow.
    recoveredValue3 := (recoveredValue0) addAll: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab3f4; bytecode file offset 0x9a7cb0"
!SGControlStructureBlockPort methodsFor: 'recovered'!
addDefControlSeq: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) block.
    (recoveredValue0) bdlSyntaxErrNo: (8).
    ^self
! !

"ASDBase.ic method 0x200c0644; bytecode file offset 0x9bd228"
!SGControlStructureBlockPort methodsFor: 'recovered'!
hasTempVar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hasTempVar := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2017f118; bytecode file offset 0xa7b9d4"
!SGControlStructureBlockPort methodsFor: 'recovered'!
hasTempVar
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hasTempVar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := hasTempVar.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTempVarUsefull.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b1de4; bytecode file offset 0xaae6d8"
!SGControlStructureBlockPort methodsFor: 'recovered'!
isConnected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d4070Arg1 | 
    | block280d4070Value0 block280d4070Value1 |
    block280d4070Value0 := block280d4070Arg1.
    block280d4070Value1 := (block280d4070Value0) notConnected.
    block280d4070Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203785c4; bytecode file offset 0xc74eb4"
!SGControlStructureBlockPort methodsFor: 'recovered'!
isDirectLink
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceElements.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) externalConnector.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) connection.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            (recoveredBlock19Stack2 ~~ nil) ifTrue: [recoveredBlock19PC := 45] ifFalse: [recoveredBlock19PC := 36].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack3 := [].
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) remove: (recoveredBlock19Stack2) ifAbsent: (recoveredBlock19Stack3).
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:block280f2238Arg1 | 
    | block280f2238Value0 block280f2238Value1 block280f2238Value2 block280f2238Value3 |
    block280f2238Value0 := block280f2238Arg1.
    block280f2238Value1 := (block280f2238Value0) senderInterfaceElement.
    block280f2238Value2 := (block280f2238Value1) port.
    block280f2238Value3 := (block280f2238Value2) isDirectLink.
    block280f2238Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

