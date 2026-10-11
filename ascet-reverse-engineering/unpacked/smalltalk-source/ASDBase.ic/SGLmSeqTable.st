"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a7b4; bytecode file offset 0x934580"
!SGLmSeqTable methodsFor: 'recovered'!
unitAliasName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) unit.
    recoveredValue1 := (recoveredValue0) aliasName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ad14; bytecode file offset 0x934580"
!SGLmSeqTable methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) unit.
    recoveredValue1 := (recoveredValue0) errLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040c90; bytecode file offset 0x93d83c"
!SGLmSeqTable methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sequences.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200660a4; bytecode file offset 0x963428"
!SGLmSeqTable methodsFor: 'recovered'!
unit
    | recoveredValue0 |
    recoveredValue0 := unit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be794; bytecode file offset 0x9bb178"
!SGLmSeqTable methodsFor: 'recovered'!
unit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    unit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9eb4; bytecode file offset 0x9f6778"
!SGLmSeqTable methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    sequences := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2012cc28; bytecode file offset 0xa2951c"
!SGLmSeqTable methodsFor: 'recovered'!
sortedSequences
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequences.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9f00Arg1 :block280c9f00Arg2 | 
    | block280c9f00Value0 block280c9f00Value1 block280c9f00Value2 block280c9f00Value3 block280c9f00Value4 |
    block280c9f00Value0 := block280c9f00Arg1.
    block280c9f00Value1 := (block280c9f00Value0) number.
    block280c9f00Value2 := block280c9f00Arg2.
    block280c9f00Value3 := (block280c9f00Value2) number.
    block280c9f00Value4 := (block280c9f00Value1) < (block280c9f00Value3).
    block280c9f00Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20134090; bytecode file offset 0xa30950"
!SGLmSeqTable methodsFor: 'recovered'!
addChangedSequence: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addChangedSequence: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018ff2c; bytecode file offset 0xa8c7f8"
!SGLmSeqTable methodsFor: 'recovered'!
buildMdl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedSequences.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) checkForGapsInSequenceCalls: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedSequences.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d1ae4Arg1 | 
    | block280d1ae4Value0 block280d1ae4Value1 |
    block280d1ae4Value0 := block280d1ae4Arg1.
    block280d1ae4Value1 := (block280d1ae4Value0) buildMdl.
    block280d1ae4Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x201d5624; bytecode file offset 0xad1ee8"
!SGLmSeqTable methodsFor: 'recovered'!
sequences
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sequences.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := sequences.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:block280d551cArg1 | 
    | block280d551cValue0 block280d551cValue1 |
    block280d551cValue0 := block280d551cArg1.
    block280d551cValue1 := (block280d551cValue0) isNil.
    block280d551cValue1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203dd51c; bytecode file offset 0xcd9e14"
!SGLmSeqTable methodsFor: 'recovered'!
autoAnalyze
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGBdlGraph.
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
            recoveredStack3 := (recoveredStack3) sequences.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := [:block280f81d8Arg1 | 
    | block280f81d8Value0 block280f81d8Value1 |
    block280f81d8Value0 := block280f81d8Arg1.
    block280f81d8Value1 := (block280f81d8Value0) port.
    block280f81d8Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) values.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2) entryElements: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortedElements.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedElements.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 recoveredBlock45Value4 recoveredBlock45Value5 recoveredBlock45Value6 |
    recoveredBlock45Value0 := recoveredLocal1.
    recoveredBlock45Value1 := recoveredBlock45Arg1.
    recoveredBlock45Value2 := (recoveredBlock45Value1) graphicElement.
    recoveredBlock45Value3 := (recoveredBlock45Value2) block.
    recoveredBlock45Value4 := (recoveredBlock45Value3) id.
    recoveredBlock45Value5 := [
    | recoveredBlock45Block64Value0 recoveredBlock45Block64Value1 recoveredBlock45Block64Value2 |
    recoveredBlock45Block64Value0 := recoveredBlock45Arg1.
    recoveredBlock45Block64Value1 := (recoveredBlock45Block64Value0) graphicElement.
    recoveredBlock45Block64Value2 := (recoveredBlock45Block64Value1) block.
    (recoveredBlock45Block64Value2) syntacticAnalysis.
    true
].
    recoveredBlock45Value6 := (recoveredBlock45Value0) at: (recoveredBlock45Value4) ifAbsentPut: (recoveredBlock45Value5).
    recoveredBlock45Value6
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204de274; bytecode file offset 0xddab7c"
!SGLmSeqTable methodsFor: 'recovered'!
addDefSeq: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := sequences.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) number.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Local2 recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 recoveredBlock14Value12 recoveredBlock14Value13 recoveredBlock14Value14 recoveredBlock14Value15 recoveredBlock14Value16 recoveredBlock14Value17 recoveredBlock14Value18 recoveredBlock14Value19 recoveredBlock14Value20 |
    recoveredBlock14Value0 := Array.
    recoveredBlock14Value1 := (recoveredBlock14Value0) with: ('first sequence call was ') with: ('second sequence call was ').
    recoveredBlock14Local2 := recoveredBlock14Value1.
    recoveredBlock14Value2 := Array.
    recoveredBlock14Value3 := (recoveredBlock14Value2) with: (nil) with: (nil).
    recoveredBlock14Local1 := recoveredBlock14Value3.
    recoveredBlock14Value4 := Array.
    recoveredBlock14Value5 := recoveredBlock14Arg1.
    recoveredBlock14Value6 := recoveredArg1.
    recoveredBlock14Value7 := (recoveredBlock14Value4) with: (recoveredBlock14Value5) with: (recoveredBlock14Value6).
    recoveredBlock14Value8 := [:recoveredBlock14Block50Arg1 :recoveredBlock14Block50Arg2 | 
    | recoveredBlock14Block50Stack0 recoveredBlock14Block50Stack1 recoveredBlock14Block50Stack2 recoveredBlock14Block50Stack3 recoveredBlock14Block50Stack4 recoveredBlock14Block50Stack5 recoveredBlock14Block50PC recoveredBlock14Block50Step recoveredBlock14Block50Done recoveredBlock14Block50Result |
    recoveredBlock14Block50Stack0 := nil.
    recoveredBlock14Block50PC := 56.
    recoveredBlock14Block50Done := false.
    [recoveredBlock14Block50Done not] whileTrue: [
        recoveredBlock14Block50Step := recoveredBlock14Block50PC.
        recoveredBlock14Block50Step = 56 ifTrue: [
            recoveredBlock14Block50Stack1 := recoveredBlock14Block50Arg1.
            recoveredBlock14Block50PC := 57.
        ].
        recoveredBlock14Block50Step = 57 ifTrue: [
            recoveredBlock14Block50Stack1 := (recoveredBlock14Block50Stack1) isAutoNumbered.
            recoveredBlock14Block50PC := 59.
        ].
        recoveredBlock14Block50Step = 59 ifTrue: [
            (recoveredBlock14Block50Stack1) ifTrue: [recoveredBlock14Block50PC := 62] ifFalse: [recoveredBlock14Block50PC := 82].
        ].
        recoveredBlock14Block50Step = 62 ifTrue: [
            recoveredBlock14Block50Stack1 := recoveredBlock14Local2.
            recoveredBlock14Block50PC := 65.
        ].
        recoveredBlock14Block50Step = 65 ifTrue: [
            recoveredBlock14Block50Stack2 := recoveredBlock14Block50Arg2.
            recoveredBlock14Block50PC := 66.
        ].
        recoveredBlock14Block50Step = 66 ifTrue: [
            recoveredBlock14Block50Stack3 := recoveredBlock14Local2.
            recoveredBlock14Block50PC := 69.
        ].
        recoveredBlock14Block50Step = 69 ifTrue: [
            recoveredBlock14Block50Stack4 := recoveredBlock14Block50Arg2.
            recoveredBlock14Block50PC := 70.
        ].
        recoveredBlock14Block50Step = 70 ifTrue: [
            recoveredBlock14Block50Stack3 := (recoveredBlock14Block50Stack3) at: (recoveredBlock14Block50Stack4).
            recoveredBlock14Block50PC := 72.
        ].
        recoveredBlock14Block50Step = 72 ifTrue: [
            recoveredBlock14Block50Stack4 := 'automatically sequenced '.
            recoveredBlock14Block50PC := 74.
        ].
        recoveredBlock14Block50Step = 74 ifTrue: [
            recoveredBlock14Block50Stack3 := (recoveredBlock14Block50Stack3) , (recoveredBlock14Block50Stack4).
            recoveredBlock14Block50PC := 76.
        ].
        recoveredBlock14Block50Step = 76 ifTrue: [
            recoveredBlock14Block50Stack1 := (recoveredBlock14Block50Stack1) at: (recoveredBlock14Block50Stack2) put: (recoveredBlock14Block50Stack3).
            recoveredBlock14Block50PC := 78.
        ].
        recoveredBlock14Block50Step = 78 ifTrue: [
            recoveredBlock14Block50PC := 109.
        ].
        recoveredBlock14Block50Step = 82 ifTrue: [
            recoveredBlock14Block50Stack1 := recoveredBlock14Local2.
            recoveredBlock14Block50PC := 85.
        ].
        recoveredBlock14Block50Step = 85 ifTrue: [
            recoveredBlock14Block50Stack2 := recoveredBlock14Block50Arg2.
            recoveredBlock14Block50PC := 86.
        ].
        recoveredBlock14Block50Step = 86 ifTrue: [
            recoveredBlock14Block50Stack3 := recoveredBlock14Local2.
            recoveredBlock14Block50PC := 89.
        ].
        recoveredBlock14Block50Step = 89 ifTrue: [
            recoveredBlock14Block50Stack4 := recoveredBlock14Block50Arg2.
            recoveredBlock14Block50PC := 90.
        ].
        recoveredBlock14Block50Step = 90 ifTrue: [
            recoveredBlock14Block50Stack3 := (recoveredBlock14Block50Stack3) at: (recoveredBlock14Block50Stack4).
            recoveredBlock14Block50PC := 92.
        ].
        recoveredBlock14Block50Step = 92 ifTrue: [
            recoveredBlock14Block50Stack4 := 'specified '.
            recoveredBlock14Block50PC := 94.
        ].
        recoveredBlock14Block50Step = 94 ifTrue: [
            recoveredBlock14Block50Stack3 := (recoveredBlock14Block50Stack3) , (recoveredBlock14Block50Stack4).
            recoveredBlock14Block50PC := 96.
        ].
        recoveredBlock14Block50Step = 96 ifTrue: [
            (recoveredBlock14Block50Stack1) at: (recoveredBlock14Block50Stack2) put: (recoveredBlock14Block50Stack3).
            recoveredBlock14Block50PC := 98.
        ].
        recoveredBlock14Block50Step = 98 ifTrue: [
            recoveredBlock14Block50Stack1 := recoveredBlock14Local1.
            recoveredBlock14Block50PC := 101.
        ].
        recoveredBlock14Block50Step = 101 ifTrue: [
            recoveredBlock14Block50Stack2 := recoveredBlock14Block50Arg2.
            recoveredBlock14Block50PC := 102.
        ].
        recoveredBlock14Block50Step = 102 ifTrue: [
            recoveredBlock14Block50Stack3 := recoveredBlock14Block50Arg1.
            recoveredBlock14Block50PC := 103.
        ].
        recoveredBlock14Block50Step = 103 ifTrue: [
            recoveredBlock14Block50Stack3 := (recoveredBlock14Block50Stack3) block.
            recoveredBlock14Block50PC := 105.
        ].
        recoveredBlock14Block50Step = 105 ifTrue: [
            recoveredBlock14Block50Stack3 := (recoveredBlock14Block50Stack3) source.
            recoveredBlock14Block50PC := 107.
        ].
        recoveredBlock14Block50Step = 107 ifTrue: [
            recoveredBlock14Block50Stack1 := (recoveredBlock14Block50Stack1) at: (recoveredBlock14Block50Stack2) put: (recoveredBlock14Block50Stack3).
            recoveredBlock14Block50PC := 109.
        ].
        recoveredBlock14Block50Step = 109 ifTrue: [
            recoveredBlock14Block50Result := recoveredBlock14Block50Stack1.
            recoveredBlock14Block50Done := true.
        ].
    ].
    recoveredBlock14Block50Result
].
    (recoveredBlock14Value7) doWithIndex: (recoveredBlock14Value8).
    recoveredBlock14Value9 := recoveredArg1.
    recoveredBlock14Value10 := (recoveredBlock14Value9) block.
    recoveredBlock14Value11 := recoveredArg1.
    recoveredBlock14Value12 := (recoveredBlock14Value11) number.
    recoveredBlock14Value13 := (recoveredBlock14Value12) printString.
    recoveredBlock14Value14 := (self) errLabel.
    recoveredBlock14Value15 := recoveredArg1.
    recoveredBlock14Value16 := (recoveredBlock14Value15) block.
    recoveredBlock14Value17 := (recoveredBlock14Value16) source.
    recoveredBlock14Value18 := recoveredBlock14Local1.
    recoveredBlock14Value19 := recoveredBlock14Local2.
    recoveredBlock14Value20 := (recoveredBlock14Value17) createMultiSource: (recoveredBlock14Value18) labels: (recoveredBlock14Value19).
    (recoveredBlock14Value10) bdlSyntaxErrNo: (16) with: (recoveredBlock14Value13) with: (recoveredBlock14Value14) source: (recoveredBlock14Value20).
    ^self
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    recoveredValue6 := sequences.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) number.
    recoveredValue9 := recoveredArg1.
    (recoveredValue6) at: (recoveredValue8) put: (recoveredValue9).
    ^self
! !

