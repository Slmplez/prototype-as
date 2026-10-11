"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001377c; bytecode file offset 0x912098"
!MapFileReaderEtas class methodsFor: 'recovered'!
MapSymbolClasses
    | recoveredValue0 |
    recoveredValue0 := MapSymbolClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053eac; bytecode file offset 0x951190"
!MapFileReaderEtas class methodsFor: 'recovered'!
MapSymbolClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MapSymbolClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20087818; bytecode file offset 0x9840d0"
!MapFileReaderEtas class methodsFor: 'recovered'!
createNameTableFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) createNameTable: (recoveredValue0).
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cafdc; bytecode file offset 0x9c78d8"
!MapFileReaderEtas class methodsFor: 'recovered'!
createMemoryMapFrom2: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createSymbolsFrom2: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) createMemoryMap.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cafec; bytecode file offset 0x9c78d8"
!MapFileReaderEtas class methodsFor: 'recovered'!
createMemoryMapFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createSymbolsFrom: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) createMemoryMap.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cb00c; bytecode file offset 0x9c78d8"
!MapFileReaderEtas class methodsFor: 'recovered'!
createMemoryMap: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createSymbols: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) createMemoryMap.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ef0e0; bytecode file offset 0x9eb9a4"
!MapFileReaderEtas class methodsFor: 'recovered'!
createNameTable: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) fileName: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) readNameTable.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20113994; bytecode file offset 0xa10258"
!MapFileReaderEtas class methodsFor: 'recovered'!
createSymbolsFrom2: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) buffer: (recoveredValue4).
    (recoveredValue2) parse2.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2012751c; bytecode file offset 0xa23de0"
!MapFileReaderEtas class methodsFor: 'recovered'!
createSymbolsFrom2: recoveredArg1 addressMapping: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) buffer: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    (recoveredValue2) parse2: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2014b074; bytecode file offset 0xa4793c"
!MapFileReaderEtas class methodsFor: 'recovered'!
createMemoryMapFromAddressTable: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) lines: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) createSymbols.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) createMemoryMap.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2016da74; bytecode file offset 0xa6a338"
!MapFileReaderEtas class methodsFor: 'recovered'!
createMemoryMapFrom2: recoveredArg1 addressMapping: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) halt.
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) createSections: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) createSymbolsFrom2: (recoveredValue2) addressMapping: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue5) createMemoryMap.
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2016dad4; bytecode file offset 0xa6a394"
!MapFileReaderEtas class methodsFor: 'recovered'!
createMemoryMapFrom2: recoveredArg1 addressMapping: recoveredArg2 topAttributes: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) createSections: (recoveredValue0) topAttributes: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) createSymbolsFrom2: (recoveredValue3) addressMapping: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue6) createMemoryMap.
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20306f74; bytecode file offset 0xc03864"
!MapFileReaderEtas class methodsFor: 'recovered'!
initializeClass
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := MapMemorySymbolVariable.
    (recoveredValue3) at: ('Variable') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := MapMemoryBitSymbolVariable.
    (recoveredValue5) at: ('BitVariable') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := MapMemorySymbolParameter.
    (recoveredValue7) at: ('Parameter') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := MapMemorySymbolCode.
    (recoveredValue9) at: ('Code') put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := MapMemorySymbol.
    (recoveredValue11) at: ('Pointer') put: (recoveredValue12).
    recoveredValue13 := MapMemorySymbol.
    (recoveredValue2) at: ('unknown') put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    (self) MapSymbolClasses: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x204e60ac; bytecode file offset 0xde29d8"
!MapFileReaderEtas class methodsFor: 'recovered'!
createSections: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'Data'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := MapVariableSection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'Code'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := MapCodeSection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'Parameter'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := MapParameterSection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block28108c40Arg1 :block28108c40Arg2 | 
    | block28108c40Value0 block28108c40Value1 block28108c40Value2 block28108c40Value3 block28108c40Value4 |
    block28108c40Value0 := block28108c40Arg1.
    block28108c40Value1 := (block28108c40Value0) start.
    block28108c40Value2 := block28108c40Arg2.
    block28108c40Value3 := (block28108c40Value2) start.
    block28108c40Value4 := (block28108c40Value1) < (block28108c40Value3).
    block28108c40Value4
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 :recoveredBlock56Arg2 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := recoveredBlock56Arg2.
    recoveredBlock56Value1 := [:recoveredBlock56Block63Arg1 :recoveredBlock56Block63Arg2 | 
    | recoveredBlock56Block63Value0 recoveredBlock56Block63Value1 recoveredBlock56Block63Value2 recoveredBlock56Block63Value3 |
    recoveredBlock56Block63Value0 := recoveredBlock56Block63Arg2.
    recoveredBlock56Block63Value1 := [].
    recoveredBlock56Block63Value2 := [:recoveredBlock56Block63Block77Arg1 | 
    | recoveredBlock56Block63Block77Stack0 recoveredBlock56Block63Block77Stack1 recoveredBlock56Block63Block77Stack2 recoveredBlock56Block63Block77Stack3 recoveredBlock56Block63Block77Stack4 recoveredBlock56Block63Block77PC recoveredBlock56Block63Block77Step recoveredBlock56Block63Block77Done recoveredBlock56Block63Block77Result |
    recoveredBlock56Block63Block77Stack0 := self.
    recoveredBlock56Block63Block77PC := 84.
    recoveredBlock56Block63Block77Done := false.
    [recoveredBlock56Block63Block77Done not] whileTrue: [
        recoveredBlock56Block63Block77Step := recoveredBlock56Block63Block77PC.
        recoveredBlock56Block63Block77Step = 84 ifTrue: [
            (recoveredBlock56Block63Block77Stack0) halt.
            recoveredBlock56Block63Block77PC := 86.
        ].
        recoveredBlock56Block63Block77Step = 86 ifTrue: [
            recoveredBlock56Block63Block77Stack0 := recoveredLocal1.
            recoveredBlock56Block63Block77PC := 89.
        ].
        recoveredBlock56Block63Block77Step = 89 ifTrue: [
            recoveredBlock56Block63Block77Stack1 := recoveredBlock56Block63Block77Arg1.
            recoveredBlock56Block63Block77PC := 90.
        ].
        recoveredBlock56Block63Block77Step = 90 ifTrue: [
            recoveredBlock56Block63Block77Stack2 := 1.
            recoveredBlock56Block63Block77PC := 92.
        ].
        recoveredBlock56Block63Block77Step = 92 ifTrue: [
            recoveredBlock56Block63Block77Stack3 := [
    ''
].
            recoveredBlock56Block63Block77PC := 94.
        ].
        recoveredBlock56Block63Block77Step = 94 ifTrue: [
            recoveredBlock56Block63Block77PC := 101.
        ].
        recoveredBlock56Block63Block77Step = 101 ifTrue: [
            recoveredBlock56Block63Block77Stack1 := (recoveredBlock56Block63Block77Stack1) at: (recoveredBlock56Block63Block77Stack2) ifAbsent: (recoveredBlock56Block63Block77Stack3).
            recoveredBlock56Block63Block77PC := 103.
        ].
        recoveredBlock56Block63Block77Step = 103 ifTrue: [
            recoveredBlock56Block63Block77Stack2 := [:recoveredBlock56Block63Block77Block103Arg1 | 
    | recoveredBlock56Block63Block77Block103Local1 recoveredBlock56Block63Block77Block103Local2 recoveredBlock56Block63Block77Block103Value0 recoveredBlock56Block63Block77Block103Value1 recoveredBlock56Block63Block77Block103Value2 recoveredBlock56Block63Block77Block103Value3 recoveredBlock56Block63Block77Block103Value4 recoveredBlock56Block63Block77Block103Value5 recoveredBlock56Block63Block77Block103Value6 recoveredBlock56Block63Block77Block103Value7 recoveredBlock56Block63Block77Block103Value8 recoveredBlock56Block63Block77Block103Value9 recoveredBlock56Block63Block77Block103Value10 recoveredBlock56Block63Block77Block103Value11 recoveredBlock56Block63Block77Block103Value12 recoveredBlock56Block63Block77Block103Value13 recoveredBlock56Block63Block77Block103Value14 |
    recoveredBlock56Block63Block77Block103Value0 := recoveredBlock56Block63Arg1.
    recoveredBlock56Block63Block77Block103Value1 := (recoveredBlock56Block63Block77Block103Value0) allSubStrings: ($-).
    recoveredBlock56Block63Block77Block103Local1 := recoveredBlock56Block63Block77Block103Value1.
    recoveredBlock56Block63Block77Block103Value2 := recoveredBlock56Block63Block77Block103Arg1.
    recoveredBlock56Block63Block77Block103Value3 := (recoveredBlock56Block63Block77Block103Value2) create.
    recoveredBlock56Block63Block77Block103Local2 := recoveredBlock56Block63Block77Block103Value3.
    recoveredBlock56Block63Block77Block103Value4 := recoveredBlock56Block63Block77Block103Local2.
    recoveredBlock56Block63Block77Block103Value5 := recoveredBlock56Block63Block77Block103Value4.
    recoveredBlock56Block63Block77Block103Value6 := recoveredBlock56Block63Block77Block103Local1.
    recoveredBlock56Block63Block77Block103Value7 := (recoveredBlock56Block63Block77Block103Value6) firstOrNil.
    recoveredBlock56Block63Block77Block103Value8 := (recoveredBlock56Block63Block77Block103Value7) asIntegerFromHex.
    (recoveredBlock56Block63Block77Block103Value5) start: (recoveredBlock56Block63Block77Block103Value8).
    recoveredBlock56Block63Block77Block103Value9 := recoveredBlock56Block63Block77Block103Local1.
    recoveredBlock56Block63Block77Block103Value10 := (recoveredBlock56Block63Block77Block103Value9) lastOrNil.
    recoveredBlock56Block63Block77Block103Value11 := (recoveredBlock56Block63Block77Block103Value10) asIntegerFromHex.
    (recoveredBlock56Block63Block77Block103Value4) end: (recoveredBlock56Block63Block77Block103Value11).
    recoveredBlock56Block63Block77Block103Value12 := recoveredLocal2.
    recoveredBlock56Block63Block77Block103Value13 := recoveredBlock56Block63Block77Block103Local2.
    recoveredBlock56Block63Block77Block103Value14 := (recoveredBlock56Block63Block77Block103Value12) add: (recoveredBlock56Block63Block77Block103Value13).
    recoveredBlock56Block63Block77Block103Value14
].
            recoveredBlock56Block63Block77PC := 146.
        ].
        recoveredBlock56Block63Block77Step = 146 ifTrue: [
            recoveredBlock56Block63Block77Stack0 := (recoveredBlock56Block63Block77Stack0) at: (recoveredBlock56Block63Block77Stack1) ifPresent: (recoveredBlock56Block63Block77Stack2).
            recoveredBlock56Block63Block77PC := 148.
        ].
        recoveredBlock56Block63Block77Step = 148 ifTrue: [
            recoveredBlock56Block63Block77Result := recoveredBlock56Block63Block77Stack0.
            recoveredBlock56Block63Block77Done := true.
        ].
    ].
    recoveredBlock56Block63Block77Result
].
    recoveredBlock56Block63Value3 := (recoveredBlock56Block63Value0) at: ('Attributes') ifAbsent: (recoveredBlock56Block63Value1) ifPresent: (recoveredBlock56Block63Value2).
    recoveredBlock56Block63Value3
].
    recoveredBlock56Value2 := (recoveredBlock56Value0) keysAndValuesDo: (recoveredBlock56Value1).
    recoveredBlock56Value2
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) halt.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051dc20; bytecode file offset 0xe1a550"
!MapFileReaderEtas class methodsFor: 'recovered'!
createSections: recoveredArg1 topAttributes: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'RAMData'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := MapVariableSection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'ROM/FlashCode'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := MapCodeSection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'ROM/FlashData'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := MapParameterSection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block2810c1b0Arg1 :block2810c1b0Arg2 | 
    | block2810c1b0Value0 block2810c1b0Value1 block2810c1b0Value2 block2810c1b0Value3 block2810c1b0Value4 |
    block2810c1b0Value0 := block2810c1b0Arg1.
    block2810c1b0Value1 := (block2810c1b0Value0) start.
    block2810c1b0Value2 := block2810c1b0Arg2.
    block2810c1b0Value3 := (block2810c1b0Value2) start.
    block2810c1b0Value4 := (block2810c1b0Value1) < (block2810c1b0Value3).
    block2810c1b0Value4
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 :recoveredBlock56Arg2 | 
    | recoveredBlock56Local1 recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 recoveredBlock56Value5 recoveredBlock56Value6 |
    recoveredBlock56Value0 := recoveredArg2.
    recoveredBlock56Value1 := recoveredBlock56Arg1.
    recoveredBlock56Value2 := [].
    recoveredBlock56Value3 := (recoveredBlock56Value0) at: (recoveredBlock56Value1) ifAbsent: (recoveredBlock56Value2).
    recoveredBlock56Local1 := recoveredBlock56Value3.
    recoveredBlock56Value4 := recoveredBlock56Arg2.
    recoveredBlock56Value5 := [:recoveredBlock56Block78Arg1 :recoveredBlock56Block78Arg2 | 
    | recoveredBlock56Block78Value0 recoveredBlock56Block78Value1 recoveredBlock56Block78Value2 recoveredBlock56Block78Value3 |
    recoveredBlock56Block78Value0 := recoveredBlock56Block78Arg2.
    recoveredBlock56Block78Value1 := [].
    recoveredBlock56Block78Value2 := [:recoveredBlock56Block78Block91Arg1 | 
    | recoveredBlock56Block78Block91Stack0 recoveredBlock56Block78Block91Stack1 recoveredBlock56Block78Block91Stack2 recoveredBlock56Block78Block91Stack3 recoveredBlock56Block78Block91Stack4 recoveredBlock56Block78Block91Stack5 recoveredBlock56Block78Block91Stack6 recoveredBlock56Block78Block91PC recoveredBlock56Block78Block91Step recoveredBlock56Block78Block91Done recoveredBlock56Block78Block91Result |
    recoveredBlock56Block78Block91Stack0 := nil.
    recoveredBlock56Block78Block91PC := 98.
    recoveredBlock56Block78Block91Done := false.
    [recoveredBlock56Block78Block91Done not] whileTrue: [
        recoveredBlock56Block78Block91Step := recoveredBlock56Block78Block91PC.
        recoveredBlock56Block78Block91Step = 98 ifTrue: [
            recoveredBlock56Block78Block91Stack1 := recoveredLocal1.
            recoveredBlock56Block78Block91PC := 101.
        ].
        recoveredBlock56Block78Block91Step = 101 ifTrue: [
            recoveredBlock56Block78Block91Stack2 := recoveredBlock56Local1.
            recoveredBlock56Block78Block91PC := 104.
        ].
        recoveredBlock56Block78Block91Step = 104 ifTrue: [
            recoveredBlock56Block78Block91Stack3 := 1.
            recoveredBlock56Block78Block91PC := 106.
        ].
        recoveredBlock56Block78Block91Step = 106 ifTrue: [
            recoveredBlock56Block78Block91Stack4 := [
    ''
].
            recoveredBlock56Block78Block91PC := 108.
        ].
        recoveredBlock56Block78Block91Step = 108 ifTrue: [
            recoveredBlock56Block78Block91PC := 115.
        ].
        recoveredBlock56Block78Block91Step = 115 ifTrue: [
            recoveredBlock56Block78Block91Stack2 := (recoveredBlock56Block78Block91Stack2) at: (recoveredBlock56Block78Block91Stack3) ifAbsent: (recoveredBlock56Block78Block91Stack4).
            recoveredBlock56Block78Block91PC := 117.
        ].
        recoveredBlock56Block78Block91Step = 117 ifTrue: [
            recoveredBlock56Block78Block91Stack3 := recoveredBlock56Block78Block91Arg1.
            recoveredBlock56Block78Block91PC := 118.
        ].
        recoveredBlock56Block78Block91Step = 118 ifTrue: [
            recoveredBlock56Block78Block91Stack4 := 1.
            recoveredBlock56Block78Block91PC := 120.
        ].
        recoveredBlock56Block78Block91Step = 120 ifTrue: [
            recoveredBlock56Block78Block91Stack5 := [
    ''
].
            recoveredBlock56Block78Block91PC := 122.
        ].
        recoveredBlock56Block78Block91Step = 122 ifTrue: [
            recoveredBlock56Block78Block91PC := 129.
        ].
        recoveredBlock56Block78Block91Step = 129 ifTrue: [
            recoveredBlock56Block78Block91Stack3 := (recoveredBlock56Block78Block91Stack3) at: (recoveredBlock56Block78Block91Stack4) ifAbsent: (recoveredBlock56Block78Block91Stack5).
            recoveredBlock56Block78Block91PC := 131.
        ].
        recoveredBlock56Block78Block91Step = 131 ifTrue: [
            recoveredBlock56Block78Block91Stack2 := (recoveredBlock56Block78Block91Stack2) , (recoveredBlock56Block78Block91Stack3).
            recoveredBlock56Block78Block91PC := 133.
        ].
        recoveredBlock56Block78Block91Step = 133 ifTrue: [
            recoveredBlock56Block78Block91Stack3 := [:recoveredBlock56Block78Block91Block133Arg1 | 
    | recoveredBlock56Block78Block91Block133Local1 recoveredBlock56Block78Block91Block133Local2 recoveredBlock56Block78Block91Block133Value0 recoveredBlock56Block78Block91Block133Value1 recoveredBlock56Block78Block91Block133Value2 recoveredBlock56Block78Block91Block133Value3 recoveredBlock56Block78Block91Block133Value4 recoveredBlock56Block78Block91Block133Value5 recoveredBlock56Block78Block91Block133Value6 recoveredBlock56Block78Block91Block133Value7 recoveredBlock56Block78Block91Block133Value8 recoveredBlock56Block78Block91Block133Value9 recoveredBlock56Block78Block91Block133Value10 recoveredBlock56Block78Block91Block133Value11 recoveredBlock56Block78Block91Block133Value12 recoveredBlock56Block78Block91Block133Value13 recoveredBlock56Block78Block91Block133Value14 |
    recoveredBlock56Block78Block91Block133Value0 := recoveredBlock56Block78Arg1.
    recoveredBlock56Block78Block91Block133Value1 := (recoveredBlock56Block78Block91Block133Value0) allSubStrings: ($-).
    recoveredBlock56Block78Block91Block133Local1 := recoveredBlock56Block78Block91Block133Value1.
    recoveredBlock56Block78Block91Block133Value2 := recoveredBlock56Block78Block91Block133Arg1.
    recoveredBlock56Block78Block91Block133Value3 := (recoveredBlock56Block78Block91Block133Value2) create.
    recoveredBlock56Block78Block91Block133Local2 := recoveredBlock56Block78Block91Block133Value3.
    recoveredBlock56Block78Block91Block133Value4 := recoveredBlock56Block78Block91Block133Local2.
    recoveredBlock56Block78Block91Block133Value5 := recoveredBlock56Block78Block91Block133Value4.
    recoveredBlock56Block78Block91Block133Value6 := recoveredBlock56Block78Block91Block133Local1.
    recoveredBlock56Block78Block91Block133Value7 := (recoveredBlock56Block78Block91Block133Value6) firstOrNil.
    recoveredBlock56Block78Block91Block133Value8 := (recoveredBlock56Block78Block91Block133Value7) asIntegerFromHex.
    (recoveredBlock56Block78Block91Block133Value5) start: (recoveredBlock56Block78Block91Block133Value8).
    recoveredBlock56Block78Block91Block133Value9 := recoveredBlock56Block78Block91Block133Local1.
    recoveredBlock56Block78Block91Block133Value10 := (recoveredBlock56Block78Block91Block133Value9) lastOrNil.
    recoveredBlock56Block78Block91Block133Value11 := (recoveredBlock56Block78Block91Block133Value10) asIntegerFromHex.
    (recoveredBlock56Block78Block91Block133Value4) end: (recoveredBlock56Block78Block91Block133Value11).
    recoveredBlock56Block78Block91Block133Value12 := recoveredLocal2.
    recoveredBlock56Block78Block91Block133Value13 := recoveredBlock56Block78Block91Block133Local2.
    recoveredBlock56Block78Block91Block133Value14 := (recoveredBlock56Block78Block91Block133Value12) add: (recoveredBlock56Block78Block91Block133Value13).
    recoveredBlock56Block78Block91Block133Value14
].
            recoveredBlock56Block78Block91PC := 176.
        ].
        recoveredBlock56Block78Block91Step = 176 ifTrue: [
            recoveredBlock56Block78Block91Stack1 := (recoveredBlock56Block78Block91Stack1) at: (recoveredBlock56Block78Block91Stack2) ifPresent: (recoveredBlock56Block78Block91Stack3).
            recoveredBlock56Block78Block91PC := 178.
        ].
        recoveredBlock56Block78Block91Step = 178 ifTrue: [
            recoveredBlock56Block78Block91Result := recoveredBlock56Block78Block91Stack1.
            recoveredBlock56Block78Block91Done := true.
        ].
    ].
    recoveredBlock56Block78Block91Result
].
    recoveredBlock56Block78Value3 := (recoveredBlock56Block78Value0) at: ('Attributes') ifAbsent: (recoveredBlock56Block78Value1) ifPresent: (recoveredBlock56Block78Value2).
    recoveredBlock56Block78Value3
].
    recoveredBlock56Value6 := (recoveredBlock56Value4) keysAndValuesDo: (recoveredBlock56Value5).
    recoveredBlock56Value6
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

