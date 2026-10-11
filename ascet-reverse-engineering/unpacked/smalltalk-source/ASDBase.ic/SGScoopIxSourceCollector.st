"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200694a8; bytecode file offset 0x966bdc"
!SGScoopIxSourceCollector methodsFor: 'recovered'!
toBeProcessedSOsTable
    | recoveredValue0 |
    recoveredValue0 := toBeProcessedSOsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fa144; bytecode file offset 0x9f6a08"
!SGScoopIxSourceCollector methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    toBeProcessedSOsTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201e49a0; bytecode file offset 0xae1274"
!SGScoopIxSourceCollector methodsFor: 'recovered'!
getAllRequiresSources
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeProcessedSOsTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280d6d28Arg1 :block280d6d28Arg2 | 
    | block280d6d28Value0 block280d6d28Value1 block280d6d28Value2 block280d6d28Value3 block280d6d28Value4 block280d6d28Value5 block280d6d28Value6 |
    block280d6d28Value0 := block280d6d28Arg1.
    block280d6d28Value1 := (block280d6d28Value0) makeNode.
    block280d6d28Value2 := (block280d6d28Value1) label.
    block280d6d28Value3 := block280d6d28Arg2.
    block280d6d28Value4 := (block280d6d28Value3) makeNode.
    block280d6d28Value5 := (block280d6d28Value4) label.
    block280d6d28Value6 := (block280d6d28Value2) > (block280d6d28Value5).
    block280d6d28Value6
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20306224; bytecode file offset 0xc02b08"
!SGScoopIxSourceCollector methodsFor: 'recovered'!
makeProjectNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) toBeProcessedSOsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) moduleCodeStorageHandle.
    recoveredValue3 := [
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 recoveredBlock9Value9 recoveredBlock9Value10 recoveredBlock9Value11 recoveredBlock9Value12 recoveredBlock9Value13 recoveredBlock9Value14 |
    recoveredBlock9Value0 := SGScoopIxSource.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := (recoveredBlock9Value1) sgClass.
    recoveredBlock9Value3 := (recoveredBlock9Value2) label.
    recoveredBlock9Value4 := recoveredArg1.
    recoveredBlock9Value5 := (recoveredBlock9Value4) sixDescription.
    recoveredBlock9Value6 := recoveredArg1.
    recoveredBlock9Value7 := (recoveredBlock9Value6) makeModuleSource.
    recoveredBlock9Value8 := (recoveredBlock9Value0) fileName: (recoveredBlock9Value3) description: (recoveredBlock9Value5) userReference: (recoveredBlock9Value7) sourceCollector: (self).
    recoveredBlock9Local1 := recoveredBlock9Value8.
    recoveredBlock9Value9 := recoveredBlock9Local1.
    recoveredBlock9Value10 := TGSourceHandle.
    recoveredBlock9Value11 := recoveredArg1.
    recoveredBlock9Value12 := (recoveredBlock9Value11) moduleCodeStorageHandle.
    recoveredBlock9Value13 := (recoveredBlock9Value10) create: (recoveredBlock9Value12).
    recoveredBlock9Value14 := (recoveredBlock9Value9) sixSource: (recoveredBlock9Value13).
    recoveredBlock9Value14
].
    (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

