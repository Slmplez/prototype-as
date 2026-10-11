"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20118e0c; bytecode file offset 0xa15718"
!DBWildcardQuery methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2033bc34; bytecode file offset 0xc38504"
!DBWildcardQuery methodsFor: 'recovered'!
dropNotMatchingFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            searchProxy := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := index.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := searchProxy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) putKeyValueIn: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := searchProxy.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
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
            recoveredBlock30Stack2 := index.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack3 := searchProxy.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Arg1.
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) dbObject.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) wildCardMatch: (recoveredBlock30Stack3) with: (recoveredBlock30Stack4).
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 55] ifFalse: [recoveredBlock30PC := 48].
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) remove: (recoveredBlock30Stack2).
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c4830; bytecode file offset 0xcc1110"
!DBWildcardQuery methodsFor: 'recovered'!
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
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 |
    recoveredBlock6Value0 := index.
    recoveredBlock6Value1 := (recoveredBlock6Value0) sortCollection.
    resultCollection := recoveredBlock6Value1.
    recoveredBlock6Value2 := dbInterface.
    recoveredBlock6Value3 := (recoveredBlock6Value2) getNewDBProxy.
    searchProxy := recoveredBlock6Value3.
    recoveredBlock6Value4 := index.
    recoveredBlock6Value5 := searchProxy.
    (recoveredBlock6Value4) putKeyValueIn: (recoveredBlock6Value5).
    recoveredBlock6Value6 := dbInterface.
    recoveredBlock6Value7 := [:recoveredBlock6Block30Arg1 | 
    | recoveredBlock6Block30Stack0 recoveredBlock6Block30Stack1 recoveredBlock6Block30Stack2 recoveredBlock6Block30Stack3 recoveredBlock6Block30Stack4 recoveredBlock6Block30Stack5 recoveredBlock6Block30PC recoveredBlock6Block30Step recoveredBlock6Block30Done recoveredBlock6Block30Result |
    recoveredBlock6Block30Stack0 := self.
    recoveredBlock6Block30PC := 36.
    recoveredBlock6Block30Done := false.
    [recoveredBlock6Block30Done not] whileTrue: [
        recoveredBlock6Block30Step := recoveredBlock6Block30PC.
        recoveredBlock6Block30Step = 36 ifTrue: [
            recoveredBlock6Block30Stack1 := nil.
            recoveredBlock6Block30PC := 37.
        ].
        recoveredBlock6Block30Step = 37 ifTrue: [
            recoveredBlock6Block30Stack2 := index.
            recoveredBlock6Block30PC := 39.
        ].
        recoveredBlock6Block30Step = 39 ifTrue: [
            recoveredBlock6Block30Stack3 := searchProxy.
            recoveredBlock6Block30PC := 41.
        ].
        recoveredBlock6Block30Step = 41 ifTrue: [
            recoveredBlock6Block30Stack4 := recoveredBlock6Block30Arg1.
            recoveredBlock6Block30PC := 42.
        ].
        recoveredBlock6Block30Step = 42 ifTrue: [
            recoveredBlock6Block30Stack2 := (recoveredBlock6Block30Stack2) wildCardMatch: (recoveredBlock6Block30Stack3) with: (recoveredBlock6Block30Stack4).
            recoveredBlock6Block30PC := 44.
        ].
        recoveredBlock6Block30Step = 44 ifTrue: [
            (recoveredBlock6Block30Stack2) ifTrue: [recoveredBlock6Block30PC := 48] ifFalse: [recoveredBlock6Block30PC := 54].
        ].
        recoveredBlock6Block30Step = 48 ifTrue: [
            recoveredBlock6Block30PC := 49.
        ].
        recoveredBlock6Block30Step = 49 ifTrue: [
            recoveredBlock6Block30Stack1 := resultCollection.
            recoveredBlock6Block30PC := 51.
        ].
        recoveredBlock6Block30Step = 51 ifTrue: [
            recoveredBlock6Block30Stack2 := recoveredBlock6Block30Arg1.
            recoveredBlock6Block30PC := 52.
        ].
        recoveredBlock6Block30Step = 52 ifTrue: [
            recoveredBlock6Block30Stack1 := (recoveredBlock6Block30Stack1) add: (recoveredBlock6Block30Stack2).
            recoveredBlock6Block30PC := 54.
        ].
        recoveredBlock6Block30Step = 54 ifTrue: [
            recoveredBlock6Block30Result := recoveredBlock6Block30Stack1.
            recoveredBlock6Block30Done := true.
        ].
    ].
    recoveredBlock6Block30Result
].
    recoveredBlock6Value8 := (recoveredBlock6Value6) allProxysDo: (recoveredBlock6Value7).
    recoveredBlock6Value8
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondsToRun: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            searchTime := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := resultCollection.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastError.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            error := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) selfClosingClose.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := resultCollection.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

