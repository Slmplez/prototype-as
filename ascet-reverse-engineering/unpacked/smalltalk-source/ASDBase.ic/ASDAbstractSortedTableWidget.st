"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006f2c; bytecode file offset 0x908be4"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
sortBlockForName
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dc80; bytecode file offset 0x96a9dc"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
tableSortBlocks
    | recoveredValue0 |
    recoveredValue0 := tableSortBlocks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e23c; bytecode file offset 0x96af48"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
tableColumnSortBlocks
    | recoveredValue0 |
    recoveredValue0 := tableColumnSortBlocks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c4620; bytecode file offset 0x9c11bc"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
tableSortBlocks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tableSortBlocks := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4dac; bytecode file offset 0x9c16b0"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
tableColumnSortBlocks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tableColumnSortBlocks := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20146d10; bytecode file offset 0xa435d4"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
reverseSortBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredBlock4Arg2.
    recoveredBlock4Value2 := recoveredBlock4Arg1.
    recoveredBlock4Value3 := (recoveredBlock4Value0) value: (recoveredBlock4Value1) value: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x20172e98; bytecode file offset 0xa6f7c4"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) tableColumnSortBlocks: (recoveredValue1).
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    (self) tableSortBlocks: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2017c334; bytecode file offset 0xa78c18"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
defaultSortBlockForTable: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) columns.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlockForColumn: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlockForName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b594c; bytecode file offset 0xab2210"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
menuIDForSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getUserInterface.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) menuIDForSelector: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    (self) etasDevHalt.
    ^0
! !

"ASDBase.ic method 0x201db6e4; bytecode file offset 0xad7fa8"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
sortBlockForColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) tableColumnSortBlocks.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := (self) sortBlockForName.
    recoveredBlock8Local1 := recoveredBlock8Value0.
    recoveredBlock8Value1 := (self) tableColumnSortBlocks.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := recoveredBlock8Local1.
    recoveredBlock8Value4 := (recoveredBlock8Value1) at: (recoveredBlock8Value2) put: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20203890; bytecode file offset 0xb0016c"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
sortBlockForTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) tableSortBlocks.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (self) defaultSortBlockForTable: (recoveredBlock8Value0).
    recoveredBlock8Local1 := recoveredBlock8Value1.
    recoveredBlock8Value2 := (self) tableSortBlocks.
    recoveredBlock8Value3 := recoveredArg1.
    recoveredBlock8Value4 := recoveredBlock8Local1.
    recoveredBlock8Value5 := (recoveredBlock8Value2) at: (recoveredBlock8Value3) put: (recoveredBlock8Value4).
    recoveredBlock8Value5
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x203ddf04; bytecode file offset 0xcda7cc"
!ASDAbstractSortedTableWidget methodsFor: 'recovered'!
setSortBlockForWidget: recoveredArg1 fromColumn: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) sortBlockForColumn: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) tableSortBlocks.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredLocal1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := recoveredLocal2.
    recoveredBlock22Value3 := (recoveredBlock22Value0) at: (recoveredBlock22Value1) put: (recoveredBlock22Value2).
    recoveredBlock22Value3
].
    recoveredValue6 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40Stack5 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal2.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) = (recoveredBlock40Stack2).
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 54] ifFalse: [recoveredBlock40PC := 70].
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg1.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Stack3 := self.
            recoveredBlock40PC := 61.
        ].
        recoveredBlock40Step = 61 ifTrue: [
            recoveredBlock40Stack4 := recoveredLocal2.
            recoveredBlock40PC := 64.
        ].
        recoveredBlock40Step = 64 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) reverseSortBlock: (recoveredBlock40Stack4).
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 67.
        ].
        recoveredBlock40Step = 67 ifTrue: [
            recoveredBlock40PC := 81.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 73.
        ].
        recoveredBlock40Step = 73 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg1.
            recoveredBlock40PC := 76.
        ].
        recoveredBlock40Step = 76 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal2.
            recoveredBlock40PC := 79.
        ].
        recoveredBlock40Step = 79 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 81.
        ].
        recoveredBlock40Step = 81 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
    (recoveredValue3) at: (recoveredValue4) ifAbsent: (recoveredValue5) ifPresent: (recoveredValue6).
    ^self
! !

