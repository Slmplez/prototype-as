"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20118e24; bytecode file offset 0xa15718"
!DBSubStringQuery methodsFor: 'recovered'!
search
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) searchDatabase.
    recoveredValue0 := resultCollection.
    recoveredValue1 := (self) searchModifiedObjects.
    (recoveredValue0) addAll: (recoveredValue1).
    recoveredValue2 := resultCollection.
    recoveredValue3 := (self) dropMarkAsDeleted: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2036f93c; bytecode file offset 0xc6c214"
!DBSubStringQuery methodsFor: 'recovered'!
searchDatabase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 |
    recoveredBlock6Value0 := index.
    recoveredBlock6Value1 := (recoveredBlock6Value0) sortCollection.
    resultCollection := recoveredBlock6Value1.
    recoveredBlock6Value2 := dbInterface.
    recoveredBlock6Value3 := [:recoveredBlock6Block19Arg1 | 
    | recoveredBlock6Block19Stack0 recoveredBlock6Block19Stack1 recoveredBlock6Block19Stack2 recoveredBlock6Block19Stack3 recoveredBlock6Block19Stack4 recoveredBlock6Block19PC recoveredBlock6Block19Step recoveredBlock6Block19Done recoveredBlock6Block19Result |
    recoveredBlock6Block19Stack0 := self.
    recoveredBlock6Block19PC := 26.
    recoveredBlock6Block19Done := false.
    [recoveredBlock6Block19Done not] whileTrue: [
        recoveredBlock6Block19Step := recoveredBlock6Block19PC.
        recoveredBlock6Block19Step = 26 ifTrue: [
            recoveredBlock6Block19Stack1 := nil.
            recoveredBlock6Block19PC := 27.
        ].
        recoveredBlock6Block19Step = 27 ifTrue: [
            recoveredBlock6Block19Stack2 := index.
            recoveredBlock6Block19PC := 29.
        ].
        recoveredBlock6Block19Step = 29 ifTrue: [
            recoveredBlock6Block19Stack3 := recoveredBlock6Block19Arg1.
            recoveredBlock6Block19PC := 30.
        ].
        recoveredBlock6Block19Step = 30 ifTrue: [
            recoveredBlock6Block19Stack2 := (recoveredBlock6Block19Stack2) matchSubString: (recoveredBlock6Block19Stack3).
            recoveredBlock6Block19PC := 31.
        ].
        recoveredBlock6Block19Step = 31 ifTrue: [
            (recoveredBlock6Block19Stack2) ifTrue: [recoveredBlock6Block19PC := 34] ifFalse: [recoveredBlock6Block19PC := 43].
        ].
        recoveredBlock6Block19Step = 34 ifTrue: [
            recoveredBlock6Block19PC := 35.
        ].
        recoveredBlock6Block19Step = 35 ifTrue: [
            recoveredBlock6Block19Stack1 := resultCollection.
            recoveredBlock6Block19PC := 37.
        ].
        recoveredBlock6Block19Step = 37 ifTrue: [
            recoveredBlock6Block19Stack2 := dbInterface.
            recoveredBlock6Block19PC := 39.
        ].
        recoveredBlock6Block19Step = 39 ifTrue: [
            recoveredBlock6Block19Stack3 := recoveredBlock6Block19Arg1.
            recoveredBlock6Block19PC := 40.
        ].
        recoveredBlock6Block19Step = 40 ifTrue: [
            recoveredBlock6Block19Stack2 := (recoveredBlock6Block19Stack2) getProxyFromRecord: (recoveredBlock6Block19Stack3).
            recoveredBlock6Block19PC := 41.
        ].
        recoveredBlock6Block19Step = 41 ifTrue: [
            recoveredBlock6Block19Stack1 := (recoveredBlock6Block19Stack1) add: (recoveredBlock6Block19Stack2).
            recoveredBlock6Block19PC := 43.
        ].
        recoveredBlock6Block19Step = 43 ifTrue: [
            recoveredBlock6Block19Result := recoveredBlock6Block19Stack1.
            recoveredBlock6Block19Done := true.
        ].
    ].
    recoveredBlock6Block19Result
].
    recoveredBlock6Value4 := index.
    recoveredBlock6Value5 := (recoveredBlock6Value2) allFixedPortionRecordsDo: (recoveredBlock6Value3) forKey: (recoveredBlock6Value4).
    recoveredBlock6Value5
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondsToRun: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            searchTime := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := resultCollection.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastError.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            error := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := resultCollection.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

