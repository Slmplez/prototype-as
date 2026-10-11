"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200069ec; bytecode file offset 0x908be4"
!SGSwitchBlock methodsFor: 'recovered'!
thenPort
    | recoveredValue0 |
    recoveredValue0 := (self) defaultPort.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020960; bytecode file offset 0x92209c"
!SGSwitchBlock methodsFor: 'recovered'!
errLabel
    ^'Switch'
! !

"ASDBase.ic method 0x200395f0; bytecode file offset 0x938608"
!SGSwitchBlock methodsFor: 'recovered'!
caseStmntList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) controlBlockAtPort: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a0fc; bytecode file offset 0x947128"
!SGSwitchBlock methodsFor: 'recovered'!
defaultPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bdlDefaultName.
    recoveredValue1 := (self) portNamed: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e30c; bytecode file offset 0x94d048"
!SGSwitchBlock methodsFor: 'recovered'!
syntacticAnalysis
    (self) analyzeControlBlocks.
    ^self
! !

"ASDBase.ic method 0x200656b8; bytecode file offset 0x962104"
!SGSwitchBlock methodsFor: 'recovered'!
defaultStmntList
    | recoveredValue0 |
    recoveredValue0 := super thenStmntList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c5b4; bytecode file offset 0x9692b0"
!SGSwitchBlock methodsFor: 'recovered'!
literals
    | recoveredValue0 |
    recoveredValue0 := literals.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076bc4; bytecode file offset 0x9757c8"
!SGSwitchBlock methodsFor: 'recovered'!
isBdlSwitchBlock
    ^true
! !

"ASDBase.ic method 0x200c2db4; bytecode file offset 0x9bfde0"
!SGSwitchBlock methodsFor: 'recovered'!
literals: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    literals := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201e4ef4; bytecode file offset 0xae17c4"
!SGSwitchBlock methodsFor: 'recovered'!
prepareForAnalyzing
    | recoveredValue0 recoveredValue1 |
    super prepareForAnalyzing.
    recoveredValue0 := (self) casePorts.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := SGLmSeqTable.
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) createFor: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (self) atPort: (recoveredBlock10Value0) putControlBlock: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20203960; bytecode file offset 0xb00234"
!SGSwitchBlock methodsFor: 'recovered'!
caseLiteral: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) literals.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) aliasName.
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) errLabel.
    recoveredBlock10Value2 := ('literal value for case ') , (recoveredBlock10Value1).
    recoveredBlock10Value3 := (self) fatalExpect: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2029dbf8; bytecode file offset 0xb9a4c8"
!SGSwitchBlock methodsFor: 'recovered'!
casePorts
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) portNamed: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 41]] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a2058; bytecode file offset 0xb9e92c"
!SGSwitchBlock methodsFor: 'recovered'!
prepareForSequencing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super prepareForSequencing: (recoveredValue0).
    recoveredValue1 := (self) casePorts.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) seqTable.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value2) createSeqTableForControlBlock: (recoveredBlock13Value3).
    (self) atPort: (recoveredBlock13Value0) putControlBlock: (recoveredBlock13Value4).
    recoveredBlock13Value5 := recoveredArg1.
    recoveredBlock13Value6 := recoveredBlock13Arg1.
    recoveredBlock13Value7 := recoveredBlock13Arg1.
    recoveredBlock13Value8 := (self) controlBlockAtPort: (recoveredBlock13Value7).
    recoveredBlock13Value9 := (recoveredBlock13Value5) atPort: (recoveredBlock13Value6) putControlBlock: (recoveredBlock13Value8).
    recoveredBlock13Value9
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202fdabc; bytecode file offset 0xbfa390"
!SGSwitchBlock methodsFor: 'recovered'!
collectDefSeqForMethods: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super collectDefSeqForMethods: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlValid.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) casePorts.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := [:recoveredBlock18Block27Arg1 | 
    | recoveredBlock18Block27Value0 recoveredBlock18Block27Value1 recoveredBlock18Block27Value2 recoveredBlock18Block27Value3 recoveredBlock18Block27Value4 |
    recoveredBlock18Block27Value0 := recoveredBlock18Block27Arg1.
    recoveredBlock18Block27Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block27Value2 := recoveredBlock18Arg1.
    recoveredBlock18Block27Value3 := (self) caseStmntList: (recoveredBlock18Block27Value2).
    recoveredBlock18Block27Value4 := (recoveredBlock18Block27Value0) atPort: (recoveredBlock18Block27Value1) putControlBlock: (recoveredBlock18Block27Value3).
    recoveredBlock18Block27Value4
].
    recoveredBlock18Value2 := (self) inMethodFrom: (recoveredBlock18Value0) do: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20502d04; bytecode file offset 0xdff618"
!SGSwitchBlock methodsFor: 'recovered'!
buildMdl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) conditionPortArgument.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) buildMdl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) block.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) casePorts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isConnected.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 95].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) caseLiteral: (recoveredBlock14Stack2).
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isString.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 40] ifFalse: [recoveredBlock14PC := 48].
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mdlBuilder.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            (recoveredBlock14Stack1) id: (recoveredBlock14Stack2).
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mdlBuilder.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            (recoveredBlock14Stack1) literal: (recoveredBlock14Stack2).
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mdlBuilder.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            (recoveredBlock14Stack1) block.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) caseStmntList: (recoveredBlock14Stack2).
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            (recoveredBlock14Stack1) buildMdl.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mdlBuilder.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) stack.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isEmpty.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 82] ifFalse: [recoveredBlock14PC := 72].
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mdlBuilder.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) peekStack.
            recoveredBlock14PC := 76.
        ].
        recoveredBlock14Step = 76 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) hasMdlUnconditionalReturn.
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 86] ifFalse: [recoveredBlock14PC := 82].
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mdlBuilder.
            recoveredBlock14PC := 84.
        ].
        recoveredBlock14Step = 84 ifTrue: [
            (recoveredBlock14Stack1) break.
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mdlBuilder.
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            (recoveredBlock14Stack2) endBlock.
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) case.
            recoveredBlock14PC := 93.
        ].
        recoveredBlock14Step = 93 ifTrue: [
            recoveredBlock14Stack2 := nil.
            recoveredBlock14PC := 94.
        ].
        recoveredBlock14Step = 94 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultStmntList.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) block.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) break.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) endBlock.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) default.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) block.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultStmntList.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) buildMdl.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) stack.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekStack.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMdlUnconditionalReturn.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) break.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) endBlock.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) default.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) endBlock.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) switch.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

