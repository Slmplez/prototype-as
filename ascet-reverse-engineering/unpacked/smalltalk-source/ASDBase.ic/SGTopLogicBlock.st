"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015720; bytecode file offset 0x912098"
!SGTopLogicBlock methodsFor: 'recovered'!
logicMethodClass
    | recoveredValue0 |
    recoveredValue0 := SGLmDiagramMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016e50; bytecode file offset 0x92209c"
!SGTopLogicBlock methodsFor: 'recovered'!
wrongOwnerErrorMsg
    ^'top level diagram'
! !

"ASDBase.ic method 0x20020228; bytecode file offset 0x92209c"
!SGTopLogicBlock methodsFor: 'recovered'!
errTitle
    ^'Block Diagram'
! !

"ASDBase.ic method 0x2002ac64; bytecode file offset 0x934580"
!SGTopLogicBlock methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlName.
    recoveredValue1 := (recoveredValue0) errLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f338; bytecode file offset 0x93bf94"
!SGTopLogicBlock methodsFor: 'recovered'!
asMdlClassType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGUnsignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048f44; bytecode file offset 0x945848"
!SGTopLogicBlock methodsFor: 'recovered'!
resetStatementBlockNameErrors
    hierarchyNames := nil.
    ^self
! !

"ASDBase.ic method 0x20050ad0; bytecode file offset 0x94d4ec"
!SGTopLogicBlock methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) uniqueBlockName: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20067bdc; bytecode file offset 0x9646f8"
!SGTopLogicBlock methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ec3c; bytecode file offset 0x97c330"
!SGTopLogicBlock methodsFor: 'recovered'!
isWithinStatementBlockBlock
    ^false
! !

"ASDBase.ic method 0x2007f7cc; bytecode file offset 0x97c330"
!SGTopLogicBlock methodsFor: 'recovered'!
isBdlStatementBlockBlock
    ^false
! !

"ASDBase.ic method 0x200b8c24; bytecode file offset 0x9b5500"
!SGTopLogicBlock methodsFor: 'recovered'!
iDTableAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := iDTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200beef0; bytecode file offset 0x9bc0b4"
!SGTopLogicBlock methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e3ddc; bytecode file offset 0x9e06a4"
!SGTopLogicBlock methodsFor: 'recovered'!
analyzeCtBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (self) errTitle.
    recoveredValue2 := ('Analyzing ') , (recoveredValue1).
    (recoveredValue0) title: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e9280; bytecode file offset 0x9e5b3c"
!SGTopLogicBlock methodsFor: 'recovered'!
addBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) parent: (self).
    recoveredValue1 := children.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ea184; bytecode file offset 0x9e6a44"
!SGTopLogicBlock methodsFor: 'recovered'!
createLogicMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createLogicMethod: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) module: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20115a30; bytecode file offset 0xa1230c"
!SGTopLogicBlock methodsFor: 'recovered'!
allStates
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := iDTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c6cccArg1 | 
    | block280c6cccValue0 block280c6cccValue1 |
    block280c6cccValue0 := block280c6cccArg1.
    block280c6cccValue1 := (block280c6cccValue0) isBdlState.
    block280c6cccValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20115a48; bytecode file offset 0xa1230c"
!SGTopLogicBlock methodsFor: 'recovered'!
sequences
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := iDTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c6cf0Arg1 | 
    | block280c6cf0Value0 block280c6cf0Value1 |
    block280c6cf0Value0 := block280c6cf0Arg1.
    block280c6cf0Value1 := (block280c6cf0Value0) isBdlLogicSequence.
    block280c6cf0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015190c; bytecode file offset 0xa4e1d4"
!SGTopLogicBlock methodsFor: 'recovered'!
reinitialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super reinitialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    children := recoveredValue1.
    recoveredValue2 := IdentityDictionary.
    recoveredValue3 := (recoveredValue2) new.
    iDTable := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2018b040; bytecode file offset 0xa87908"
!SGTopLogicBlock methodsFor: 'recovered'!
seqUpdateInfo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) iDTableAt: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) number.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodAliasName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019b678; bytecode file offset 0xa97f44"
!SGTopLogicBlock methodsFor: 'recovered'!
createLogicMethodForSequencing: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createLogicMethod: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) createVariablesFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := SGBdlAutoSeqTable.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) createFor: (recoveredValue6).
    (recoveredValue4) seqTable: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201a9320; bytecode file offset 0xaa5bf0"
!SGTopLogicBlock methodsFor: 'recovered'!
sequencing: recoveredArg1 on: recoveredArg2 useInfo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := WriteStream.
    recoveredValue4 := Locale.
    recoveredValue5 := (recoveredValue4) current.
    recoveredValue6 := (recoveredValue5) preferredStringClass.
    recoveredValue7 := (recoveredValue6) new: (10).
    recoveredValue8 := (recoveredValue3) on: (recoveredValue7).
    recoveredValue9 := (self) sequencing: (recoveredValue0) on: (recoveredValue1) starting: (1) useInfo: (recoveredValue2) monitorStream: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202e3eac; bytecode file offset 0xbe0778"
!SGTopLogicBlock methodsFor: 'recovered'!
checkStatementBlockName: recoveredArg1 source: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hierarchyNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            hierarchyNames := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := hierarchyNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := OrderedCollection.
    recoveredBlock20Value1 := recoveredArg2.
    recoveredBlock20Value2 := (recoveredBlock20Value0) with: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := recoveredArg2.
    recoveredBlock33Value2 := (recoveredBlock33Value0) add: (recoveredBlock33Value1).
    recoveredBlock33Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f3f0c; bytecode file offset 0xbf0808"
!SGTopLogicBlock methodsFor: 'recovered'!
analyzeComponentNoBuildMdl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e86b0Arg1 | 
    | block280e86b0Value0 block280e86b0Value1 |
    block280e86b0Value0 := block280e86b0Arg1.
    block280e86b0Value1 := (block280e86b0Value0) prepareForAnalyzing.
    block280e86b0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (self) methods.
    recoveredBlock17Value2 := (recoveredBlock17Value0) collectDefSeqForMethods: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    (self) currentMethod: (recoveredBlock36Value0).
    recoveredBlock36Value1 := recoveredBlock36Arg1.
    recoveredBlock36Value2 := (recoveredBlock36Value1) analyze.
    recoveredBlock36Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f3f34; bytecode file offset 0xbf0808"
!SGTopLogicBlock methodsFor: 'recovered'!
analyzeSyntaxForComponent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e86d4Arg1 | 
    | block280e86d4Value0 block280e86d4Value1 |
    block280e86d4Value0 := block280e86d4Arg1.
    block280e86d4Value1 := (block280e86d4Value0) prepareForAnalyzing.
    block280e86d4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (self) methods.
    recoveredBlock17Value2 := (recoveredBlock17Value0) collectDefSeqForMethods: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    (self) currentMethod: (recoveredBlock36Value0).
    recoveredBlock36Value1 := recoveredBlock36Arg1.
    recoveredBlock36Value2 := (recoveredBlock36Value1) analyze.
    recoveredBlock36Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20353b20; bytecode file offset 0xc503f8"
!SGTopLogicBlock methodsFor: 'recovered'!
iDTableAt: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := ('Kli') == ('Call_69786').
    recoveredBlock7Value1 := SGMonitorStreamDummy.
    recoveredBlock7Value2 := (recoveredBlock7Value1) create.
    recoveredBlock7Value3 := [
    | recoveredBlock7Block23Value0 recoveredBlock7Block23Value1 |
    recoveredBlock7Block23Value0 := recoveredArg2.
    recoveredBlock7Block23Value1 := ('Invalid ID %1 found.') bindWith: (recoveredBlock7Block23Value0).
    recoveredBlock7Block23Value1
].
    (recoveredBlock7Value2) addDebugTextBlock: (recoveredBlock7Value3).
    recoveredBlock7Value4 := recoveredArg2.
    ^recoveredBlock7Value4
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := iDTable.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20353ff0; bytecode file offset 0xc508c0"
!SGTopLogicBlock methodsFor: 'recovered'!
sequencing: recoveredArg1 onBlocks: recoveredArg2 useInfo: recoveredArg3 monitorStream: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    (recoveredValue0) nextPutAll: ('Analyzing dependencies ...').
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := recoveredArg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) prepareForSequencing: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := recoveredArg1.
    recoveredBlock35Value2 := (recoveredBlock35Value0) collectAllSeqForMethod: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) cr.
    (recoveredValue6) nextPutAll: ('Numbering sequence calls ...').
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20375a38; bytecode file offset 0xc72314"
!SGTopLogicBlock methodsFor: 'recovered'!
showStatementBlockNameErrors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hierarchyNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := hierarchyNames.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12Stack6 recoveredBlock12Stack7 recoveredBlock12Stack8 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg2.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) size.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack3 := 1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) > (recoveredBlock12Stack3).
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 28] ifFalse: [recoveredBlock12PC := 66].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := 75.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack4 := self.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) source.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack5 := recoveredBlock12Arg2.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack6 := recoveredBlock12Arg2.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack7 := [:block280f1e90Arg1 | 
    | block280f1e90Stack0 block280f1e90Stack1 block280f1e90Stack2 block280f1e90PC block280f1e90Step block280f1e90Done block280f1e90Result |
    block280f1e90Stack0 := self.
    block280f1e90PC := 4.
    block280f1e90Done := false.
    [block280f1e90Done not] whileTrue: [
        block280f1e90Step := block280f1e90PC.
        block280f1e90Step = 4 ifTrue: [
            block280f1e90Stack1 := block280f1e90Arg1.
            block280f1e90PC := 5.
        ].
        block280f1e90Step = 5 ifTrue: [
            block280f1e90Stack1 := (block280f1e90Stack1) isMethodDeclSource.
            block280f1e90PC := 6.
        ].
        block280f1e90Step = 6 ifTrue: [
            (block280f1e90Stack1) ifTrue: [block280f1e90PC := 10] ifFalse: [block280f1e90PC := 16].
        ].
        block280f1e90Step = 10 ifTrue: [
            block280f1e90Stack1 := 'Method/Process'.
            block280f1e90PC := 12.
        ].
        block280f1e90Step = 12 ifTrue: [
            block280f1e90PC := 18.
        ].
        block280f1e90Step = 16 ifTrue: [
            block280f1e90Stack1 := 'Statement block'.
            block280f1e90PC := 18.
        ].
        block280f1e90Step = 18 ifTrue: [
            block280f1e90Result := block280f1e90Stack1.
            block280f1e90Done := true.
        ].
    ].
    block280f1e90Result
].
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredBlock12Stack6 := (recoveredBlock12Stack6) collect: (recoveredBlock12Stack7).
            recoveredBlock12PC := 61.
        ].
        recoveredBlock12Step = 61 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) createMultiSource: (recoveredBlock12Stack5) labels: (recoveredBlock12Stack6).
            recoveredBlock12PC := 63.
        ].
        recoveredBlock12Step = 63 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) bdlSyntaxErrNo: (recoveredBlock12Stack2) with: (recoveredBlock12Stack3) source: (recoveredBlock12Stack4).
            recoveredBlock12PC := 66.
        ].
        recoveredBlock12Step = 66 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f81cc; bytecode file offset 0xcf4ac4"
!SGTopLogicBlock methodsFor: 'recovered'!
analyzeComponent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) resetStatementBlockNameErrors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) mdlLabel.
    recoveredBlock8Value2 := recoveredBlock8Arg1.
    recoveredBlock8Value3 := (recoveredBlock8Value2) declSource.
    recoveredBlock8Value4 := (self) checkStatementBlockName: (recoveredBlock8Value1) source: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:block280f9a08Arg1 | 
    | block280f9a08Value0 block280f9a08Value1 |
    block280f9a08Value0 := block280f9a08Arg1.
    block280f9a08Value1 := (block280f9a08Value0) prepareForAnalyzing.
    block280f9a08Value1
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) showStatementBlockNameErrors.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := (self) methods.
    recoveredBlock51Value2 := (recoveredBlock51Value0) collectDefSeqForMethods: (recoveredBlock51Value1).
    recoveredBlock51Value2
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 recoveredBlock68Value4 |
    recoveredBlock68Value0 := recoveredBlock68Arg1.
    (self) currentMethod: (recoveredBlock68Value0).
    recoveredBlock68Value1 := recoveredBlock68Arg1.
    (recoveredBlock68Value1) analyze.
    recoveredBlock68Value2 := recoveredBlock68Arg1.
    (recoveredBlock68Value2) buildMdl.
    recoveredBlock68Value3 := (self) mdlBuilder.
    recoveredBlock68Value4 := (recoveredBlock68Value3) resetForMethod.
    recoveredBlock68Value4
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205208c0; bytecode file offset 0xe1d1dc"
!SGTopLogicBlock methodsFor: 'recovered'!
sequencing: recoveredArg1 on: recoveredArg2 starting: recoveredArg3 useInfo: recoveredArg4 monitorStream: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Sequencing '.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) errTitle.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLogicMethodForSequencing: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) startSequencing: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) currentMethod: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := (self) iDTableAt: (recoveredBlock57Value0).
    recoveredBlock57Value1
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := [:block2810c33cArg1 | 
    | block2810c33cValue0 block2810c33cValue1 |
    block2810c33cValue0 := block2810c33cArg1.
    block2810c33cValue1 := (block2810c33cValue0) isNil.
    block2810c33cValue1
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93Stack4 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := nil.
            recoveredBlock93PC := 101.
        ].
        recoveredBlock93Step = 101 ifTrue: [
            recoveredBlock93Stack2 := recoveredLocal2.
            recoveredBlock93PC := 104.
        ].
        recoveredBlock93Step = 104 ifTrue: [
            recoveredBlock93Stack3 := recoveredBlock93Arg1.
            recoveredBlock93PC := 105.
        ].
        recoveredBlock93Step = 105 ifTrue: [
            recoveredBlock93Stack2 := (recoveredBlock93Stack2) includes: (recoveredBlock93Stack3).
            recoveredBlock93PC := 107.
        ].
        recoveredBlock93Step = 107 ifTrue: [
            (recoveredBlock93Stack2) ifTrue: [recoveredBlock93PC := 117] ifFalse: [recoveredBlock93PC := 110].
        ].
        recoveredBlock93Step = 110 ifTrue: [
            recoveredBlock93PC := 111.
        ].
        recoveredBlock93Step = 111 ifTrue: [
            recoveredBlock93Stack1 := recoveredBlock93Arg1.
            recoveredBlock93PC := 112.
        ].
        recoveredBlock93Step = 112 ifTrue: [
            recoveredBlock93Stack2 := recoveredLocal1.
            recoveredBlock93PC := 115.
        ].
        recoveredBlock93Step = 115 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) prepareForSequencing: (recoveredBlock93Stack2).
            recoveredBlock93PC := 117.
        ].
        recoveredBlock93Step = 117 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack1.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequences.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Stack0 recoveredBlock123Stack1 recoveredBlock123Stack2 recoveredBlock123Stack3 recoveredBlock123Stack4 recoveredBlock123PC recoveredBlock123Step recoveredBlock123Done recoveredBlock123Result |
    recoveredBlock123Stack0 := self.
    recoveredBlock123PC := 130.
    recoveredBlock123Done := false.
    [recoveredBlock123Done not] whileTrue: [
        recoveredBlock123Step := recoveredBlock123PC.
        recoveredBlock123Step = 130 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 131.
        ].
        recoveredBlock123Step = 131 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Arg1.
            recoveredBlock123PC := 132.
        ].
        recoveredBlock123Step = 132 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) methodAliasName.
            recoveredBlock123PC := 134.
        ].
        recoveredBlock123Step = 134 ifTrue: [
            recoveredBlock123Stack3 := recoveredLocal1.
            recoveredBlock123PC := 137.
        ].
        recoveredBlock123Step = 137 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) aliasName.
            recoveredBlock123PC := 139.
        ].
        recoveredBlock123Step = 139 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) equals: (recoveredBlock123Stack3).
            recoveredBlock123PC := 141.
        ].
        recoveredBlock123Step = 141 ifTrue: [
            (recoveredBlock123Stack2) ifTrue: [recoveredBlock123PC := 144] ifFalse: [recoveredBlock123PC := 153].
        ].
        recoveredBlock123Step = 144 ifTrue: [
            recoveredBlock123PC := 145.
        ].
        recoveredBlock123Step = 145 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 148.
        ].
        recoveredBlock123Step = 148 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) seqTable.
            recoveredBlock123PC := 150.
        ].
        recoveredBlock123Step = 150 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Arg1.
            recoveredBlock123PC := 151.
        ].
        recoveredBlock123Step = 151 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) addSequence: (recoveredBlock123Stack2).
            recoveredBlock123PC := 153.
        ].
        recoveredBlock123Step = 153 ifTrue: [
            recoveredBlock123Result := recoveredBlock123Stack1.
            recoveredBlock123Done := true.
        ].
    ].
    recoveredBlock123Result
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := [:block2810c360Arg1 | 
    | block2810c360Value0 block2810c360Value1 |
    block2810c360Value0 := block2810c360Arg1.
    block2810c360Value1 := (block2810c360Value0) resetAllSequences.
    block2810c360Value1
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) sequencing: (recoveredStack1) onBlocks: (recoveredStack2) useInfo: (recoveredStack3) monitorStream: (recoveredStack4).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

