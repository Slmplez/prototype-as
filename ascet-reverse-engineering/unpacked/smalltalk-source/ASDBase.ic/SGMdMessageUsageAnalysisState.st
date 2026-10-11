"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004028; bytecode file offset 0x90206c"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
checkOutArgOverwrites: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005c10; bytecode file offset 0x902744"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
checkMethodExit: recoveredArg1 source: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2002fd84; bytecode file offset 0x934580"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
msgsRead
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) msgTableRead.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b7d4; bytecode file offset 0x938608"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) merge: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c248; bytecode file offset 0x938b78"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
merge: recoveredArg1 condition: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) merge: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048f4c; bytecode file offset 0x945848"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
resetMsgTableRead
    msgTableRead := nil.
    ^self
! !

"ASDBase.ic method 0x2005c7f8; bytecode file offset 0x959680"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20084de0; bytecode file offset 0x981ca4"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
readAccessFromReferencedObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) readAccess: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c1230; bytecode file offset 0x9bdf14"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
msgTableRead: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    msgTableRead := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1f24; bytecode file offset 0x9beac8"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
msgTableWritten: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    msgTableWritten := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2410; bytecode file offset 0x9bf474"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
msgTableExplicit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    msgTableExplicit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201203bc; bytecode file offset 0xa1cc78"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
readAccess: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) addReadMsg: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20122a68; bytecode file offset 0xa1f324"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
writeAccessToReferencedObject: recoveredArg1 source: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) addWrittenMsg: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20129848; bytecode file offset 0xa261a4"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
msgTableRead
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := msgTableRead.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            msgTableRead := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := msgTableRead.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129aec; bytecode file offset 0xa26468"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
msgTableWritten
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := msgTableWritten.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            msgTableWritten := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := msgTableWritten.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129d88; bytecode file offset 0xa26694"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
msgTableExplicit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := msgTableExplicit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            msgTableExplicit := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := msgTableExplicit.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201968a4; bytecode file offset 0xa9318c"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
addReadMsg: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) msgTableRead.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value0
].
    (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201968b8; bytecode file offset 0xa9318c"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
addExplicitMsg: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) msgTableExplicit.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value0
].
    (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201968cc; bytecode file offset 0xa9318c"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
addWrittenMsg: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) msgTableWritten.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value0
].
    (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201e4ab4; bytecode file offset 0xae1388"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
copy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := super copy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) msgTableRead.
    recoveredValue3 := (recoveredValue2) copy.
    (recoveredValue1) msgTableRead: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) msgTableWritten.
    recoveredValue6 := (recoveredValue5) copy.
    (recoveredValue4) msgTableWritten: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) msgTableExplicit.
    recoveredValue9 := (recoveredValue8) copy.
    (recoveredValue7) msgTableExplicit: (recoveredValue9).
    ^recoveredValue0
! !

"ASDBase.ic method 0x202c6ef8; bytecode file offset 0xbc37cc"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
writeAccess: recoveredArg1 source: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) addWrittenMsg: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRedundantDataFeatureActive.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRedundantDataMaster.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) redundantIdentifier.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addWrittenMsg: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038ea28; bytecode file offset 0xc8b310"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
validateMsgUsage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) msgTableRead.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f37e0Arg1 | 
    | block280f37e0Stack0 block280f37e0Stack1 block280f37e0Stack2 block280f37e0Stack3 block280f37e0Stack4 block280f37e0PC block280f37e0Step block280f37e0Done block280f37e0Result |
    block280f37e0Stack0 := self.
    block280f37e0PC := 4.
    block280f37e0Done := false.
    [block280f37e0Done not] whileTrue: [
        block280f37e0Step := block280f37e0PC.
        block280f37e0Step = 4 ifTrue: [
            block280f37e0Stack1 := nil.
            block280f37e0PC := 5.
        ].
        block280f37e0Step = 5 ifTrue: [
            block280f37e0Stack2 := block280f37e0Arg1.
            block280f37e0PC := 6.
        ].
        block280f37e0Step = 6 ifTrue: [
            block280f37e0Stack2 := (block280f37e0Stack2) varDecl.
            block280f37e0PC := 7.
        ].
        block280f37e0Step = 7 ifTrue: [
            block280f37e0Stack2 := (block280f37e0Stack2) isMdlReceiveMessage.
            block280f37e0PC := 8.
        ].
        block280f37e0Step = 8 ifTrue: [
            (block280f37e0Stack2) ifTrue: [block280f37e0PC := 33] ifFalse: [block280f37e0PC := 12].
        ].
        block280f37e0Step = 12 ifTrue: [
            block280f37e0Stack2 := block280f37e0Arg1.
            block280f37e0PC := 13.
        ].
        block280f37e0Step = 13 ifTrue: [
            block280f37e0Stack2 := (block280f37e0Stack2) accessChain.
            block280f37e0PC := 15.
        ].
        block280f37e0Step = 15 ifTrue: [
            block280f37e0Stack2 := (block280f37e0Stack2) first.
            block280f37e0PC := 17.
        ].
        block280f37e0Step = 17 ifTrue: [
            block280f37e0Stack2 := (block280f37e0Stack2) isMdlRedundantDataSlave.
            block280f37e0PC := 19.
        ].
        block280f37e0Step = 19 ifTrue: [
            (block280f37e0Stack2) ifTrue: [block280f37e0PC := 33] ifFalse: [block280f37e0PC := 22].
        ].
        block280f37e0Step = 22 ifTrue: [
            block280f37e0PC := 23.
        ].
        block280f37e0Step = 23 ifTrue: [
            block280f37e0Stack1 := block280f37e0Arg1.
            block280f37e0PC := 24.
        ].
        block280f37e0Step = 24 ifTrue: [
            block280f37e0Stack2 := 86.
            block280f37e0PC := 28.
        ].
        block280f37e0Step = 28 ifTrue: [
            block280f37e0Stack3 := block280f37e0Arg1.
            block280f37e0PC := 29.
        ].
        block280f37e0Step = 29 ifTrue: [
            block280f37e0Stack3 := (block280f37e0Stack3) errLabel.
            block280f37e0PC := 31.
        ].
        block280f37e0Step = 31 ifTrue: [
            block280f37e0Stack1 := (block280f37e0Stack1) mdlWarningNo: (block280f37e0Stack2) with: (block280f37e0Stack3).
            block280f37e0PC := 33.
        ].
        block280f37e0Step = 33 ifTrue: [
            block280f37e0Result := block280f37e0Stack1.
            block280f37e0Done := true.
        ].
    ].
    block280f37e0Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) msgTableWritten.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block280f3804Arg1 | 
    | block280f3804Stack0 block280f3804Stack1 block280f3804Stack2 block280f3804Stack3 block280f3804Stack4 block280f3804PC block280f3804Step block280f3804Done block280f3804Result |
    block280f3804Stack0 := self.
    block280f3804PC := 4.
    block280f3804Done := false.
    [block280f3804Done not] whileTrue: [
        block280f3804Step := block280f3804PC.
        block280f3804Step = 4 ifTrue: [
            block280f3804Stack1 := nil.
            block280f3804PC := 5.
        ].
        block280f3804Step = 5 ifTrue: [
            block280f3804Stack2 := block280f3804Arg1.
            block280f3804PC := 6.
        ].
        block280f3804Step = 6 ifTrue: [
            block280f3804Stack2 := (block280f3804Stack2) varDecl.
            block280f3804PC := 7.
        ].
        block280f3804Step = 7 ifTrue: [
            block280f3804Stack2 := (block280f3804Stack2) isMdlSendMessage.
            block280f3804PC := 9.
        ].
        block280f3804Step = 9 ifTrue: [
            (block280f3804Stack2) ifTrue: [block280f3804PC := 23] ifFalse: [block280f3804PC := 12].
        ].
        block280f3804Step = 12 ifTrue: [
            block280f3804PC := 13.
        ].
        block280f3804Step = 13 ifTrue: [
            block280f3804Stack1 := block280f3804Arg1.
            block280f3804PC := 14.
        ].
        block280f3804Step = 14 ifTrue: [
            block280f3804Stack2 := 87.
            block280f3804PC := 18.
        ].
        block280f3804Step = 18 ifTrue: [
            block280f3804Stack3 := block280f3804Arg1.
            block280f3804PC := 19.
        ].
        block280f3804Step = 19 ifTrue: [
            block280f3804Stack3 := (block280f3804Stack3) errLabel.
            block280f3804PC := 21.
        ].
        block280f3804Step = 21 ifTrue: [
            block280f3804Stack1 := (block280f3804Stack1) mdlWarningNo: (block280f3804Stack2) with: (block280f3804Stack3).
            block280f3804PC := 23.
        ].
        block280f3804Step = 23 ifTrue: [
            block280f3804Result := block280f3804Stack1.
            block280f3804Done := true.
        ].
    ].
    block280f3804Result
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c551c; bytecode file offset 0xcc1df0"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
merge: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) msgTableRead.
    recoveredValue2 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) msgTableRead.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includesKey: (recoveredBlock6Stack3).
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 20].
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg2.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) addReadMsg: (recoveredBlock6Stack2).
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) msgTableWritten.
    recoveredValue5 := [:recoveredBlock30Arg1 :recoveredBlock30Arg2 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) msgTableWritten.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) includesKey: (recoveredBlock30Stack3).
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 51] ifFalse: [recoveredBlock30PC := 46].
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg2.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) addWrittenMsg: (recoveredBlock30Stack2).
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) msgTableExplicit.
    recoveredValue8 := [:recoveredBlock57Arg1 :recoveredBlock57Arg2 | 
    | recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57Stack4 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := nil.
            recoveredBlock57PC := 65.
        ].
        recoveredBlock57Step = 65 ifTrue: [
            recoveredBlock57Stack2 := self.
            recoveredBlock57PC := 66.
        ].
        recoveredBlock57Step = 66 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) msgTableExplicit.
            recoveredBlock57PC := 68.
        ].
        recoveredBlock57Step = 68 ifTrue: [
            recoveredBlock57Stack3 := recoveredBlock57Arg1.
            recoveredBlock57PC := 69.
        ].
        recoveredBlock57Step = 69 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) includesKey: (recoveredBlock57Stack3).
            recoveredBlock57PC := 70.
        ].
        recoveredBlock57Step = 70 ifTrue: [
            (recoveredBlock57Stack2) ifTrue: [recoveredBlock57PC := 79] ifFalse: [recoveredBlock57PC := 74].
        ].
        recoveredBlock57Step = 74 ifTrue: [
            recoveredBlock57PC := 75.
        ].
        recoveredBlock57Step = 75 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 76.
        ].
        recoveredBlock57Step = 76 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg2.
            recoveredBlock57PC := 77.
        ].
        recoveredBlock57Step = 77 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) addExplicitMsg: (recoveredBlock57Stack2).
            recoveredBlock57PC := 79.
        ].
        recoveredBlock57Step = 79 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
    (recoveredValue7) keysAndValuesDo: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x204a1640; bytecode file offset 0xd9df44"
!SGMdMessageUsageAnalysisState methodsFor: 'recovered'!
collectMsgUsageInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) msgTableRead.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) errLabel.
    recoveredBlock11Value3 := [
    | recoveredBlock11Block25Value0 recoveredBlock11Block25Value1 recoveredBlock11Block25Value2 recoveredBlock11Block25Value3 |
    recoveredBlock11Block25Value0 := SGMdMsgUsage.
    recoveredBlock11Block25Value1 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value2 := (recoveredBlock11Block25Value0) create: (recoveredBlock11Block25Value1).
    recoveredBlock11Block25Value3 := (recoveredBlock11Block25Value2) asReceiveUsage.
    recoveredBlock11Block25Value3
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) at: (recoveredBlock11Value2) ifAbsentPut: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) msgTableWritten.
    recoveredValue5 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50Stack5 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal1.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 62.
        ].
        recoveredBlock50Step = 62 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) errLabel.
            recoveredBlock50PC := 63.
        ].
        recoveredBlock50Step = 63 ifTrue: [
            recoveredBlock50Stack3 := [
    | recoveredBlock50Block63Value0 recoveredBlock50Block63Value1 recoveredBlock50Block63Value2 recoveredBlock50Block63Value3 |
    recoveredBlock50Block63Value0 := SGMdMsgUsage.
    recoveredBlock50Block63Value1 := recoveredBlock50Arg1.
    recoveredBlock50Block63Value2 := (recoveredBlock50Block63Value0) create: (recoveredBlock50Block63Value1).
    recoveredBlock50Block63Value3 := (recoveredBlock50Block63Value2) asSendUsage.
    recoveredBlock50Block63Value3
].
            recoveredBlock50PC := 80.
        ].
        recoveredBlock50Step = 80 ifTrue: [
            recoveredBlock50Stack4 := [:block2810465cArg1 | 
    | block2810465cValue0 block2810465cValue1 |
    block2810465cValue0 := block2810465cArg1.
    block2810465cValue1 := (block2810465cValue0) asSendReceiveUsage.
    block2810465cValue1
].
            recoveredBlock50PC := 82.
        ].
        recoveredBlock50Step = 82 ifTrue: [
            recoveredBlock50PC := 90.
        ].
        recoveredBlock50Step = 90 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) at: (recoveredBlock50Stack2) ifAbsentPut: (recoveredBlock50Stack3) ifPresent: (recoveredBlock50Stack4).
            recoveredBlock50PC := 93.
        ].
        recoveredBlock50Step = 93 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) values.
    recoveredValue8 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Stack0 recoveredBlock101Stack1 recoveredBlock101Stack2 recoveredBlock101PC recoveredBlock101Step recoveredBlock101Done recoveredBlock101Result |
    recoveredBlock101Stack0 := self.
    recoveredBlock101PC := 108.
    recoveredBlock101Done := false.
    [recoveredBlock101Done not] whileTrue: [
        recoveredBlock101Step := recoveredBlock101PC.
        recoveredBlock101Step = 108 ifTrue: [
            recoveredBlock101Stack0 := (recoveredBlock101Stack0) msgTableExplicit.
            recoveredBlock101PC := 110.
        ].
        recoveredBlock101Step = 110 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 111.
        ].
        recoveredBlock101Step = 111 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) msgId.
            recoveredBlock101PC := 113.
        ].
        recoveredBlock101Step = 113 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) errLabel.
            recoveredBlock101PC := 114.
        ].
        recoveredBlock101Step = 114 ifTrue: [
            recoveredBlock101Stack0 := (recoveredBlock101Stack0) includesKey: (recoveredBlock101Stack1).
            recoveredBlock101PC := 116.
        ].
        recoveredBlock101Step = 116 ifTrue: [
            (recoveredBlock101Stack0) ifTrue: [recoveredBlock101PC := 120] ifFalse: [recoveredBlock101PC := 126].
        ].
        recoveredBlock101Step = 120 ifTrue: [
            recoveredBlock101Stack0 := recoveredBlock101Arg1.
            recoveredBlock101PC := 121.
        ].
        recoveredBlock101Step = 121 ifTrue: [
            recoveredBlock101Stack0 := (recoveredBlock101Stack0) asExplicitAccess.
            recoveredBlock101PC := 123.
        ].
        recoveredBlock101Step = 123 ifTrue: [
            recoveredBlock101PC := 129.
        ].
        recoveredBlock101Step = 126 ifTrue: [
            recoveredBlock101Stack0 := recoveredBlock101Arg1.
            recoveredBlock101PC := 127.
        ].
        recoveredBlock101Step = 127 ifTrue: [
            recoveredBlock101Stack0 := (recoveredBlock101Stack0) asImplicitAccess.
            recoveredBlock101PC := 129.
        ].
        recoveredBlock101Step = 129 ifTrue: [
            recoveredBlock101Result := recoveredBlock101Stack0.
            recoveredBlock101Done := true.
        ].
    ].
    recoveredBlock101Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) values.
    ^recoveredValue10
! !

