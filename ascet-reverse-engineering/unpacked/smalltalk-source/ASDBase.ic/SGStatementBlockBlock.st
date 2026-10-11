"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000af10; bytecode file offset 0x908be4"
!SGStatementBlockBlock methodsFor: 'recovered'!
aliasName
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004a7dc; bytecode file offset 0x947128"
!SGStatementBlockBlock methodsFor: 'recovered'!
seqTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) executePort.
    recoveredValue1 := (self) controlBlockAtPort: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d0b0; bytecode file offset 0x9599ac"
!SGStatementBlockBlock methodsFor: 'recovered'!
executePort
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) executeMethod.
    recoveredValue2 := (self) portNamed: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006c75c; bytecode file offset 0x9692b0"
!SGStatementBlockBlock methodsFor: 'recovered'!
controlBlocks
    | recoveredValue0 |
    recoveredValue0 := controlBlocks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078cbc; bytecode file offset 0x9757c8"
!SGStatementBlockBlock methodsFor: 'recovered'!
isBdlStatementBlockBlock
    ^true
! !

"ASDBase.ic method 0x2008c104; bytecode file offset 0x988b68"
!SGStatementBlockBlock methodsFor: 'recovered'!
wrongOwnerErrorMsg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := ('different executable hierarchy named ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20097394; bytecode file offset 0x995850"
!SGStatementBlockBlock methodsFor: 'recovered'!
addDefSeq: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) seqTable.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addDefSeq: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae718; bytecode file offset 0x9ab034"
!SGStatementBlockBlock methodsFor: 'recovered'!
atPort: recoveredArg1 putControlBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) controlBlocks.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20146828; bytecode file offset 0xa430ec"
!SGStatementBlockBlock methodsFor: 'recovered'!
controlBlockAtPort: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) controlBlocks.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) fatalExpect: ('missing seqtable for control block').
    recoveredBlock6Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201d27cc; bytecode file offset 0xacf098"
!SGStatementBlockBlock methodsFor: 'recovered'!
methodScopeName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) executePort.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequence.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlValid.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodScopeName: (recoveredStack1) errOn: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super methodScopeName: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20201ebc; bytecode file offset 0xafe790"
!SGStatementBlockBlock methodsFor: 'recovered'!
buildMdl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSelectorPort.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) seqTable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) buildMdl.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            super buildMdl: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a55f4; bytecode file offset 0xba1ec4"
!SGStatementBlockBlock methodsFor: 'recovered'!
collectDefSeqForMethods: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) executePort.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) collectDefSeqForMethods: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) executePort.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (self) executePort.
    recoveredBlock16Value2 := (self) seqTable.
    recoveredBlock16Value3 := (recoveredBlock16Value0) atPort: (recoveredBlock16Value1) putControlBlock: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) inMethodFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            super collectDefSeqForMethods: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f1f40; bytecode file offset 0xbee814"
!SGStatementBlockBlock methodsFor: 'recovered'!
inMethodFrom: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) methodScopeName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredLocal2.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) aliasName.
    recoveredBlock14Value3 := (recoveredBlock14Value0) equals: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ae80c; bytecode file offset 0xcab10c"
!SGStatementBlockBlock methodsFor: 'recovered'!
prepareForAnalyzing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    controlBlocks := recoveredValue1.
    recoveredValue2 := (self) executePort.
    recoveredValue3 := SGLmSeqTable.
    recoveredValue4 := (self) executePort.
    recoveredValue5 := (recoveredValue3) createFor: (recoveredValue4).
    (self) atPort: (recoveredValue2) putControlBlock: (recoveredValue5).
    super prepareForAnalyzing.
    recoveredValue6 := (self) owner.
    recoveredValue7 := (self) name.
    recoveredValue8 := (self) source.
    (recoveredValue6) checkStatementBlockName: (recoveredValue7) source: (recoveredValue8).
    recoveredValue9 := (self) interface.
    recoveredValue10 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) isBdlHierarchyPort.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 52] ifFalse: [recoveredBlock38PC := 74].
        ].
        recoveredBlock38Step = 52 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) senderPort.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            (recoveredBlock38Stack2 == nil) ifTrue: [recoveredBlock38PC := 74] ifFalse: [recoveredBlock38PC := 58].
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) senderPort.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) block.
            recoveredBlock38PC := 63.
        ].
        recoveredBlock38Step = 63 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) isBdlControlBlock.
            recoveredBlock38PC := 65.
        ].
        recoveredBlock38Step = 65 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 68] ifFalse: [recoveredBlock38PC := 74].
        ].
        recoveredBlock38Step = 68 ifTrue: [
            recoveredBlock38PC := 69.
        ].
        recoveredBlock38Step = 69 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 70.
        ].
        recoveredBlock38Step = 70 ifTrue: [
            recoveredBlock38Stack2 := 31.
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 72 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) bdlWarningNo: (recoveredBlock38Stack2).
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    (recoveredValue9) do: (recoveredValue10).
    ^self
! !

