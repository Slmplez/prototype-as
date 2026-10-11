"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d504; bytecode file offset 0x909e08"
!SGSimEnvironmentToolC methodsFor: 'recovered'!
allowClosingMeasureView: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x200518a8; bytecode file offset 0x94f0e0"
!SGSimEnvironmentToolC methodsFor: 'recovered'!
getProject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := (recoveredValue0) simEnvironment.
    recoveredValue2 := (recoveredValue1) getProject.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058b18; bytecode file offset 0x956284"
!SGSimEnvironmentToolC methodsFor: 'recovered'!
getSimInstanceForNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getSimInstanceForNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058e68; bytecode file offset 0x956284"
!SGSimEnvironmentToolC methodsFor: 'recovered'!
getSimInstancesForNodes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getSimInstancesForNodes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066d14; bytecode file offset 0x9646f8"
!SGSimEnvironmentToolC methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := mainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081a38; bytecode file offset 0x97e554"
!SGSimEnvironmentToolC methodsFor: 'recovered'!
reOpenWithParent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := userInterface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) reOpenWithParent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200beff8; bytecode file offset 0x9bc0b4"
!SGSimEnvironmentToolC methodsFor: 'recovered'!
mainController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mainController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20447cdc; bytecode file offset 0xd445d4"
!SGSimEnvironmentToolC methodsFor: 'recovered'!
promptIndexedDataElementsForTables: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_85196'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := ASDEditIndexedDataElementsDialog.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForElements: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAtCurrentMousePositionWithParent: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := System.
    recoveredBlock56Value1 := [
    | recoveredBlock56Block64Local1 recoveredBlock56Block64Stack0 recoveredBlock56Block64Stack1 recoveredBlock56Block64Stack2 recoveredBlock56Block64Stack3 recoveredBlock56Block64Stack4 recoveredBlock56Block64Stack5 recoveredBlock56Block64Stack6 recoveredBlock56Block64PC recoveredBlock56Block64Step recoveredBlock56Block64Done recoveredBlock56Block64Result |
    recoveredBlock56Block64Stack0 := self.
    recoveredBlock56Block64PC := 70.
    recoveredBlock56Block64Done := false.
    [recoveredBlock56Block64Done not] whileTrue: [
        recoveredBlock56Block64Step := recoveredBlock56Block64PC.
        recoveredBlock56Block64Step = 70 ifTrue: [
            recoveredBlock56Block64Stack1 := nil.
            recoveredBlock56Block64PC := 71.
        ].
        recoveredBlock56Block64Step = 71 ifTrue: [
            recoveredBlock56Block64Stack2 := self.
            recoveredBlock56Block64PC := 72.
        ].
        recoveredBlock56Block64Step = 72 ifTrue: [
            recoveredBlock56Block64Stack2 := (recoveredBlock56Block64Stack2) mainController.
            recoveredBlock56Block64PC := 74.
        ].
        recoveredBlock56Block64Step = 74 ifTrue: [
            recoveredBlock56Block64Stack2 := (recoveredBlock56Block64Stack2) simEnvironment.
            recoveredBlock56Block64PC := 76.
        ].
        recoveredBlock56Block64Step = 76 ifTrue: [
            recoveredBlock56Block64Stack3 := recoveredBlock56Arg1.
            recoveredBlock56Block64PC := 79.
        ].
        recoveredBlock56Block64Step = 79 ifTrue: [
            recoveredBlock56Block64Stack4 := recoveredLocal2.
            recoveredBlock56Block64PC := 82.
        ].
        recoveredBlock56Block64Step = 82 ifTrue: [
            recoveredBlock56Block64Stack5 := recoveredBlock56Arg1.
            recoveredBlock56Block64PC := 85.
        ].
        recoveredBlock56Block64Step = 85 ifTrue: [
            recoveredBlock56Block64Stack4 := (recoveredBlock56Block64Stack4) at: (recoveredBlock56Block64Stack5).
            recoveredBlock56Block64PC := 87.
        ].
        recoveredBlock56Block64Step = 87 ifTrue: [
            recoveredBlock56Block64Stack2 := (recoveredBlock56Block64Stack2) createDataElementsForTable: (recoveredBlock56Block64Stack3) indices: (recoveredBlock56Block64Stack4).
            recoveredBlock56Block64PC := 89.
        ].
        recoveredBlock56Block64Step = 89 ifTrue: [
            recoveredBlock56Block64Stack3 := recoveredBlock56Block64Stack2.
            recoveredBlock56Block64PC := 90.
        ].
        recoveredBlock56Block64Step = 90 ifTrue: [
            recoveredBlock56Block64Local1 := recoveredBlock56Block64Stack3.
            recoveredBlock56Block64PC := 91.
        ].
        recoveredBlock56Block64Step = 91 ifTrue: [
            (recoveredBlock56Block64Stack2 == nil) ifTrue: [recoveredBlock56Block64PC := 101] ifFalse: [recoveredBlock56Block64PC := 94].
        ].
        recoveredBlock56Block64Step = 94 ifTrue: [
            recoveredBlock56Block64PC := 95.
        ].
        recoveredBlock56Block64Step = 95 ifTrue: [
            recoveredBlock56Block64Stack1 := recoveredLocal1.
            recoveredBlock56Block64PC := 98.
        ].
        recoveredBlock56Block64Step = 98 ifTrue: [
            recoveredBlock56Block64Stack2 := recoveredBlock56Block64Local1.
            recoveredBlock56Block64PC := 99.
        ].
        recoveredBlock56Block64Step = 99 ifTrue: [
            recoveredBlock56Block64Stack1 := (recoveredBlock56Block64Stack1) addAll: (recoveredBlock56Block64Stack2).
            recoveredBlock56Block64PC := 101.
        ].
        recoveredBlock56Block64Step = 101 ifTrue: [
            recoveredBlock56Block64Result := recoveredBlock56Block64Stack1.
            recoveredBlock56Block64Done := true.
        ].
    ].
    recoveredBlock56Block64Result
].
    recoveredBlock56Value2 := (recoveredBlock56Value0) showBusyCursorWhile: (recoveredBlock56Value1).
    recoveredBlock56Value2
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

