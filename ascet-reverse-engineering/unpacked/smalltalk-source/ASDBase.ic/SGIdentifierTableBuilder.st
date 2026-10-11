"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066a04; bytecode file offset 0x963428"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
actualIndex
    | recoveredValue0 |
    recoveredValue0 := actualIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066fc4; bytecode file offset 0x9646f8"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
table
    | recoveredValue0 |
    recoveredValue0 := table.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b893c; bytecode file offset 0x9b5218"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
entryAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := table.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bdcbc; bytecode file offset 0x9bb178"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
actualIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    actualIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e9ed4; bytecode file offset 0x9e67b0"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
detectStartStateBlockForHierarchy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contents.
    (recoveredValue1) updateDynamicChildrenInfoForStates.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) blockChildren.
    recoveredValue4 := (self) detectStartStateInStateColl: (recoveredValue3) checkDynParent: (true).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb7dc; bytecode file offset 0x9e8098"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
setIdentifier: recoveredArg1 forObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) identifier: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (self) entry: (recoveredValue2) for: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20146b90; bytecode file offset 0xa43458"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
initWithIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    table := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) actualIndex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2015193c; bytecode file offset 0xa4e204"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    table := recoveredValue1.
    (self) actualIndex: (0).
    ^self
! !

"ASDBase.ic method 0x20167db0; bytecode file offset 0xa64668"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
removeIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := table.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022b870; bytecode file offset 0xb28140"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
updateActualIndexFromTable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualIndex.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) actualIndex: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032646c; bytecode file offset 0xc22d4c"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
newIndex
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualIndex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := actualIndex.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EtasXmlUtil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) maximumIntegerXML.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'Graphical Identifier overflow. All graphical objects will get a new ID.'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := ExIdentifierOverflow.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualIndex.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) actualIndex: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := actualIndex.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            actualIndex := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := actualIndex.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) entryAt: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := actualIndex.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20357148; bytecode file offset 0xc53a18"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
addIDFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := resetIDs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) entryAt: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInOutPortGO.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) entry: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'DET78320'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) newIndex.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) entry: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203910f8; bytecode file offset 0xc8d9d0"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
internalCreateIdentifierForBlock: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) addIDFor: (recoveredValue3).
    (recoveredValue2) identifier: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) connectorGOs.
    recoveredValue7 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (self) addIDFor: (recoveredBlock15Value1).
    recoveredBlock15Value3 := (recoveredBlock15Value0) identifier: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) methodCallsCurrentLevel.
    recoveredValue10 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) hasInlinePin.
            recoveredBlock33PC := 43.
        ].
        recoveredBlock33Step = 43 ifTrue: [
            (recoveredBlock33Stack1) ifTrue: [recoveredBlock33PC := 52] ifFalse: [recoveredBlock33PC := 46].
        ].
        recoveredBlock33Step = 46 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 47.
        ].
        recoveredBlock33Step = 47 ifTrue: [
            recoveredBlock33Stack2 := self.
            recoveredBlock33PC := 48.
        ].
        recoveredBlock33Step = 48 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Arg1.
            recoveredBlock33PC := 49.
        ].
        recoveredBlock33Step = 49 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) addIDFor: (recoveredBlock33Stack3).
            recoveredBlock33PC := 50.
        ].
        recoveredBlock33Step = 50 ifTrue: [
            (recoveredBlock33Stack1) identifier: (recoveredBlock33Stack2).
            recoveredBlock33PC := 52.
        ].
        recoveredBlock33Step = 52 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 53.
        ].
        recoveredBlock33Step = 53 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 54.
        ].
        recoveredBlock33Step = 54 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) hasPin.
            recoveredBlock33PC := 56.
        ].
        recoveredBlock33Step = 56 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 60] ifFalse: [recoveredBlock33PC := 70].
        ].
        recoveredBlock33Step = 60 ifTrue: [
            recoveredBlock33PC := 61.
        ].
        recoveredBlock33Step = 61 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 62.
        ].
        recoveredBlock33Step = 62 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) connectorGO.
            recoveredBlock33PC := 64.
        ].
        recoveredBlock33Step = 64 ifTrue: [
            recoveredBlock33Stack2 := self.
            recoveredBlock33PC := 65.
        ].
        recoveredBlock33Step = 65 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Arg1.
            recoveredBlock33PC := 66.
        ].
        recoveredBlock33Step = 66 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) connectorGO.
            recoveredBlock33PC := 68.
        ].
        recoveredBlock33Step = 68 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) addIDFor: (recoveredBlock33Stack3).
            recoveredBlock33PC := 69.
        ].
        recoveredBlock33Step = 69 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) identifier: (recoveredBlock33Stack2).
            recoveredBlock33PC := 70.
        ].
        recoveredBlock33Step = 70 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
    (recoveredValue9) do: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2039dbec; bytecode file offset 0xc9a4cc"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
createIdentifierFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    resetIDs := false.
    recoveredValue0 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) internalCreateIdentifierFor: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue1 := ExIdentifierOverflow.
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := resetIDs.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 34] ifFalse: [recoveredBlock21PC := 54].
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack1 := 'Failed to assign graphical identifiers. Exception will follow ...'.
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack1 := SGMonitorStreamDummy.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) create.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            (recoveredBlock21Stack1) addErrorText: (recoveredBlock21Stack2).
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) signalWith: (recoveredBlock21Stack2).
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack2 := nil.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 50.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21PC := 70.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            (recoveredBlock21Stack1) initialize.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := true.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            resetIDs := recoveredBlock21Stack1.
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg1.
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            (recoveredBlock21Stack1) internalCreateIdentifierFor: (recoveredBlock21Stack2).
            recoveredBlock21PC := 66.
        ].
        recoveredBlock21Step = 66 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredBlock21Stack2 := nil.
            recoveredBlock21PC := 68.
        ].
        recoveredBlock21Step = 68 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) exitWith: (recoveredBlock21Stack2).
            recoveredBlock21PC := 70.
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) table.
    ^recoveredValue3
! !

"ASDBase.ic method 0x203a94d4; bytecode file offset 0xca5db4"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
createIdentifierForBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    resetIDs := false.
    recoveredValue0 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) internalCreateIdentifierForBlock: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue1 := ExIdentifierOverflow.
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := resetIDs.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 34] ifFalse: [recoveredBlock21PC := 54].
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack1 := 'Failed to assign graphical identifiers. Exception will follow ...'.
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack1 := SGMonitorStreamDummy.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) create.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            (recoveredBlock21Stack1) addErrorText: (recoveredBlock21Stack2).
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) signalWith: (recoveredBlock21Stack2).
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack2 := nil.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 50.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            (recoveredBlock21Stack1) initialize.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := true.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            resetIDs := recoveredBlock21Stack1.
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg1.
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            (recoveredBlock21Stack1) internalCreateIdentifierForBlock: (recoveredBlock21Stack2).
            recoveredBlock21PC := 66.
        ].
        recoveredBlock21Step = 66 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredBlock21Stack2 := nil.
            recoveredBlock21PC := 68.
        ].
        recoveredBlock21Step = 68 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) exitWith: (recoveredBlock21Stack2).
            recoveredBlock21PC := 70.
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Stack2 := nil.
            recoveredBlock21PC := 71.
        ].
        recoveredBlock21Step = 71 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) table.
    ^recoveredValue3
! !

"ASDBase.ic method 0x203e029c; bytecode file offset 0xcdcb70"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
addIdentifierFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) identifier.
    recoveredValue2 := recoveredArg1.
    (self) entry: (recoveredValue1) for: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) basicGraphObject.
    recoveredValue5 := (recoveredValue4) connectorGOs.
    recoveredValue6 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
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
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) identifier.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack2 == nil) ifTrue: [recoveredBlock12PC := 31] ifFalse: [recoveredBlock12PC := 24].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) identifier.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) entry: (recoveredBlock12Stack2) for: (recoveredBlock12Stack3).
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) methodCalls.
    recoveredValue9 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) identifier.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            (recoveredBlock37Stack1 == nil) ifTrue: [recoveredBlock37PC := 56] ifFalse: [recoveredBlock37PC := 50].
        ].
        recoveredBlock37Step = 50 ifTrue: [
            recoveredBlock37Stack1 := self.
            recoveredBlock37PC := 51.
        ].
        recoveredBlock37Step = 51 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 52.
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) identifier.
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 54.
        ].
        recoveredBlock37Step = 54 ifTrue: [
            (recoveredBlock37Stack1) entry: (recoveredBlock37Stack2) for: (recoveredBlock37Stack3).
            recoveredBlock37PC := 56.
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 58.
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) hasPin.
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 64] ifFalse: [recoveredBlock37PC := 83].
        ].
        recoveredBlock37Step = 64 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 65.
        ].
        recoveredBlock37Step = 65 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) connectorGO.
            recoveredBlock37PC := 67.
        ].
        recoveredBlock37Step = 67 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) identifier.
            recoveredBlock37PC := 68.
        ].
        recoveredBlock37Step = 68 ifTrue: [
            (recoveredBlock37Stack2 == nil) ifTrue: [recoveredBlock37PC := 83] ifFalse: [recoveredBlock37PC := 72].
        ].
        recoveredBlock37Step = 72 ifTrue: [
            recoveredBlock37PC := 73.
        ].
        recoveredBlock37Step = 73 ifTrue: [
            recoveredBlock37Stack1 := self.
            recoveredBlock37PC := 74.
        ].
        recoveredBlock37Step = 74 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 75.
        ].
        recoveredBlock37Step = 75 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) connectorGO.
            recoveredBlock37PC := 77.
        ].
        recoveredBlock37Step = 77 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) identifier.
            recoveredBlock37PC := 78.
        ].
        recoveredBlock37Step = 78 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 79.
        ].
        recoveredBlock37Step = 79 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) connectorGO.
            recoveredBlock37PC := 81.
        ].
        recoveredBlock37Step = 81 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) entry: (recoveredBlock37Stack2) for: (recoveredBlock37Stack3).
            recoveredBlock37PC := 83.
        ].
        recoveredBlock37Step = 83 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x203ea31c; bytecode file offset 0xce6bf4"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
entry: recoveredArg1 for: recoveredArg2
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := table.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
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
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) equals: (recoveredBlock14Stack3).
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 30] ifFalse: [recoveredBlock14PC := 36].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) identifier.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            (recoveredBlock14Stack2 ~~ nil) ifTrue: [recoveredBlock14PC := 76] ifFalse: [recoveredBlock14PC := 36].
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) identifier.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) equals: (recoveredBlock14Stack2).
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 46] ifFalse: [recoveredBlock14PC := 70].
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            (recoveredBlock14Stack1) updateActualIndexFromTable.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack1 := 'hw'.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack2 := 'DET78320'.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) == (recoveredBlock14Stack2).
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) newIndex.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) entry: (recoveredBlock14Stack2) for: (recoveredBlock14Stack3).
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14PC := 76.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) identifier.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) entry: (recoveredBlock14Stack2) for: (recoveredBlock14Stack3).
            recoveredBlock14PC := 76.
        ].
        recoveredBlock14Step = 76 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := table.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043bcd8; bytecode file offset 0xd385bc"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
createStateGOTableFor: recoveredArg1 stateList: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) blockChildren.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) basicGraphObject.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isStateBlock.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 102].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) label.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) indexOf: (recoveredBlock8Stack2).
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) + (-1).
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack2 := [
    | recoveredBlock8Block45Value0 recoveredBlock8Block45Value1 |
    recoveredBlock8Block45Value0 := recoveredBlock8Local1.
    recoveredBlock8Block45Value1 := (recoveredBlock8Block45Value0) > (-1).
    recoveredBlock8Block45Value1
].
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack3 := 'state is missing in sm vars enum'.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            (recoveredBlock8Stack1) runtimeAssert: (recoveredBlock8Stack2) additionalInfo: (recoveredBlock8Stack3).
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) table.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack3 := recoveredLocal1.
            recoveredBlock8PC := 72.
        ].
        recoveredBlock8Step = 72 ifTrue: [
            (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) put: (recoveredBlock8Stack3).
            recoveredBlock8PC := 74.
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isSGHierarchyGO.
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 84] ifFalse: [recoveredBlock8PC := 98].
        ].
        recoveredBlock8Step = 84 ifTrue: [
            recoveredBlock8PC := 85.
        ].
        recoveredBlock8Step = 85 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack3 := recoveredLocal1.
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg2.
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 95 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) createHierarchieStateTableFor: (recoveredBlock8Stack2) parentStateGO: (recoveredBlock8Stack3) stateList: (recoveredBlock8Stack4).
            recoveredBlock8PC := 98.
        ].
        recoveredBlock8Step = 98 ifTrue: [
            recoveredBlock8Stack2 := nil.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack2.
            recoveredBlock8PC := 102.
        ].
        recoveredBlock8Step = 102 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) table.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2043bf9c; bytecode file offset 0xd38880"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
createHierarchieStateTableFor: recoveredArg1 parentStateGO: recoveredArg2 stateList: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) blockChildren.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) basicGraphObject.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isStateBlock.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 102].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg3.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) label.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) indexOf: (recoveredBlock8Stack2).
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) + (-1).
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack2 := [
    | recoveredBlock8Block45Value0 recoveredBlock8Block45Value1 |
    recoveredBlock8Block45Value0 := recoveredBlock8Local1.
    recoveredBlock8Block45Value1 := (recoveredBlock8Block45Value0) > (-1).
    recoveredBlock8Block45Value1
].
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack3 := 'state is missing in sm vars enum'.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            (recoveredBlock8Stack1) runtimeAssert: (recoveredBlock8Stack2) additionalInfo: (recoveredBlock8Stack3).
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) table.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 72.
        ].
        recoveredBlock8Step = 72 ifTrue: [
            (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) put: (recoveredBlock8Stack3).
            recoveredBlock8PC := 74.
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isSGHierarchyGO.
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 84] ifFalse: [recoveredBlock8PC := 98].
        ].
        recoveredBlock8Step = 84 ifTrue: [
            recoveredBlock8PC := 85.
        ].
        recoveredBlock8Step = 85 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg3.
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 95 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) createHierarchieStateTableFor: (recoveredBlock8Stack2) parentStateGO: (recoveredBlock8Stack3) stateList: (recoveredBlock8Stack4).
            recoveredBlock8PC := 98.
        ].
        recoveredBlock8Step = 98 ifTrue: [
            recoveredBlock8Stack2 := nil.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack2.
            recoveredBlock8PC := 102.
        ].
        recoveredBlock8Step = 102 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) table.
    ^recoveredValue3
! !

"ASDBase.ic method 0x204d4cd8; bytecode file offset 0xdd15c8"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
detectStartStateInStateColl: recoveredArg1 checkDynParent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28107650Arg1 | 
    | block28107650Stack0 block28107650Stack1 block28107650Stack2 block28107650Stack3 block28107650PC block28107650Step block28107650Done block28107650Result |
    block28107650Stack0 := self.
    block28107650PC := 4.
    block28107650Done := false.
    [block28107650Done not] whileTrue: [
        block28107650Step := block28107650PC.
        block28107650Step = 4 ifTrue: [
            block28107650Stack1 := nil.
            block28107650PC := 5.
        ].
        block28107650Step = 5 ifTrue: [
            block28107650Stack2 := block28107650Arg1.
            block28107650PC := 6.
        ].
        block28107650Step = 6 ifTrue: [
            block28107650Stack2 := (block28107650Stack2) basicGraphObject.
            block28107650PC := 7.
        ].
        block28107650Step = 7 ifTrue: [
            block28107650Stack2 := (block28107650Stack2) isSGHierarchyGO.
            block28107650PC := 8.
        ].
        block28107650Step = 8 ifTrue: [
            (block28107650Stack2) ifTrue: [block28107650PC := 12] ifFalse: [block28107650PC := 17].
        ].
        block28107650Step = 12 ifTrue: [
            block28107650PC := 13.
        ].
        block28107650Step = 13 ifTrue: [
            block28107650Stack1 := block28107650Arg1.
            block28107650PC := 14.
        ].
        block28107650Step = 14 ifTrue: [
            block28107650Stack1 := (block28107650Stack1) contents.
            block28107650PC := 15.
        ].
        block28107650Step = 15 ifTrue: [
            block28107650Stack1 := (block28107650Stack1) updateDynamicChildrenInfoForStates.
            block28107650PC := 17.
        ].
        block28107650Step = 17 ifTrue: [
            block28107650Result := block28107650Stack1.
            block28107650Done := true.
        ].
    ].
    block28107650Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Local1 recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := [
    | recoveredBlock31Block38Stack0 recoveredBlock31Block38Stack1 recoveredBlock31Block38Stack2 recoveredBlock31Block38Stack3 recoveredBlock31Block38PC recoveredBlock31Block38Step recoveredBlock31Block38Done recoveredBlock31Block38Result |
    recoveredBlock31Block38Stack0 := nil.
    recoveredBlock31Block38PC := 44.
    recoveredBlock31Block38Done := false.
    [recoveredBlock31Block38Done not] whileTrue: [
        recoveredBlock31Block38Step := recoveredBlock31Block38PC.
        recoveredBlock31Block38Step = 44 ifTrue: [
            recoveredBlock31Block38Stack1 := false.
            recoveredBlock31Block38PC := 45.
        ].
        recoveredBlock31Block38Step = 45 ifTrue: [
            recoveredBlock31Block38Stack2 := recoveredBlock31Arg1.
            recoveredBlock31Block38PC := 48.
        ].
        recoveredBlock31Block38Step = 48 ifTrue: [
            recoveredBlock31Block38Stack2 := (recoveredBlock31Block38Stack2) basicGraphObject.
            recoveredBlock31Block38PC := 49.
        ].
        recoveredBlock31Block38Step = 49 ifTrue: [
            recoveredBlock31Block38Stack2 := (recoveredBlock31Block38Stack2) isStateBlock.
            recoveredBlock31Block38PC := 51.
        ].
        recoveredBlock31Block38Step = 51 ifTrue: [
            (recoveredBlock31Block38Stack2) ifTrue: [recoveredBlock31Block38PC := 54] ifFalse: [recoveredBlock31Block38PC := 61].
        ].
        recoveredBlock31Block38Step = 54 ifTrue: [
            recoveredBlock31Block38PC := 55.
        ].
        recoveredBlock31Block38Step = 55 ifTrue: [
            recoveredBlock31Block38Stack1 := recoveredBlock31Arg1.
            recoveredBlock31Block38PC := 58.
        ].
        recoveredBlock31Block38Step = 58 ifTrue: [
            recoveredBlock31Block38Stack1 := (recoveredBlock31Block38Stack1) basicGraphObject.
            recoveredBlock31Block38PC := 59.
        ].
        recoveredBlock31Block38Step = 59 ifTrue: [
            recoveredBlock31Block38Stack1 := (recoveredBlock31Block38Stack1) isStartState.
            recoveredBlock31Block38PC := 61.
        ].
        recoveredBlock31Block38Step = 61 ifTrue: [
            recoveredBlock31Block38Result := recoveredBlock31Block38Stack1.
            recoveredBlock31Block38Done := true.
        ].
    ].
    recoveredBlock31Block38Result
].
            recoveredBlock31PC := 62.
        ].
        recoveredBlock31Step = 62 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 65.
        ].
        recoveredBlock31Step = 65 ifTrue: [
            recoveredBlock31Stack1 := recoveredArg2.
            recoveredBlock31PC := 68.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 72] ifFalse: [recoveredBlock31PC := 94].
        ].
        recoveredBlock31Step = 72 ifTrue: [
            recoveredBlock31Stack1 := false.
            recoveredBlock31PC := 73.
        ].
        recoveredBlock31Step = 73 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Local1.
            recoveredBlock31PC := 76.
        ].
        recoveredBlock31Step = 76 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) value.
            recoveredBlock31PC := 78.
        ].
        recoveredBlock31Step = 78 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 82] ifFalse: [recoveredBlock31PC := 90].
        ].
        recoveredBlock31Step = 82 ifTrue: [
            recoveredBlock31PC := 83.
        ].
        recoveredBlock31Step = 83 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 86.
        ].
        recoveredBlock31Step = 86 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) basicGraphObject.
            recoveredBlock31PC := 87.
        ].
        recoveredBlock31Step = 87 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) dynamicParent.
            recoveredBlock31PC := 89.
        ].
        recoveredBlock31Step = 89 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isNil.
            recoveredBlock31PC := 90.
        ].
        recoveredBlock31Step = 90 ifTrue: [
            recoveredBlock31PC := 99.
        ].
        recoveredBlock31Step = 94 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Local1.
            recoveredBlock31PC := 97.
        ].
        recoveredBlock31Step = 97 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) value.
            recoveredBlock31PC := 99.
        ].
        recoveredBlock31Step = 99 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGHierarchyGO.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) detectStartStateBlockForHierarchy: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) dynamicChildren.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) detectStartStateInStateColl: (recoveredStack2) checkDynParent: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204dea08; bytecode file offset 0xddb2f8"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
createTableFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) blockChildren.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) basicGraphObject.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack1 := recoveredLocal1.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) identifier.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            (recoveredBlock8Stack0) entry: (recoveredBlock8Stack1) for: (recoveredBlock8Stack2).
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack0 := recoveredLocal1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) connectorGOs.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := [:recoveredBlock8Block31Arg1 | 
    | recoveredBlock8Block31Value0 recoveredBlock8Block31Value1 recoveredBlock8Block31Value2 recoveredBlock8Block31Value3 |
    recoveredBlock8Block31Value0 := recoveredBlock8Block31Arg1.
    recoveredBlock8Block31Value1 := (recoveredBlock8Block31Value0) identifier.
    recoveredBlock8Block31Value2 := recoveredBlock8Block31Arg1.
    recoveredBlock8Block31Value3 := (self) entry: (recoveredBlock8Block31Value1) for: (recoveredBlock8Block31Value2).
    recoveredBlock8Block31Value3
].
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            (recoveredBlock8Stack0) do: (recoveredBlock8Stack1).
            recoveredBlock8PC := 46.
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) methodCalls.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack1 := [:recoveredBlock8Block49Arg1 | 
    | recoveredBlock8Block49Stack0 recoveredBlock8Block49Stack1 recoveredBlock8Block49Stack2 recoveredBlock8Block49Stack3 recoveredBlock8Block49PC recoveredBlock8Block49Step recoveredBlock8Block49Done recoveredBlock8Block49Result |
    recoveredBlock8Block49Stack0 := self.
    recoveredBlock8Block49PC := 56.
    recoveredBlock8Block49Done := false.
    [recoveredBlock8Block49Done not] whileTrue: [
        recoveredBlock8Block49Step := recoveredBlock8Block49PC.
        recoveredBlock8Block49Step = 56 ifTrue: [
            recoveredBlock8Block49Stack1 := recoveredBlock8Block49Arg1.
            recoveredBlock8Block49PC := 57.
        ].
        recoveredBlock8Block49Step = 57 ifTrue: [
            recoveredBlock8Block49Stack1 := (recoveredBlock8Block49Stack1) identifier.
            recoveredBlock8Block49PC := 58.
        ].
        recoveredBlock8Block49Step = 58 ifTrue: [
            recoveredBlock8Block49Stack2 := recoveredBlock8Block49Arg1.
            recoveredBlock8Block49PC := 59.
        ].
        recoveredBlock8Block49Step = 59 ifTrue: [
            (recoveredBlock8Block49Stack0) entry: (recoveredBlock8Block49Stack1) for: (recoveredBlock8Block49Stack2).
            recoveredBlock8Block49PC := 61.
        ].
        recoveredBlock8Block49Step = 61 ifTrue: [
            recoveredBlock8Block49Stack0 := nil.
            recoveredBlock8Block49PC := 62.
        ].
        recoveredBlock8Block49Step = 62 ifTrue: [
            recoveredBlock8Block49Stack1 := recoveredBlock8Block49Arg1.
            recoveredBlock8Block49PC := 63.
        ].
        recoveredBlock8Block49Step = 63 ifTrue: [
            recoveredBlock8Block49Stack1 := (recoveredBlock8Block49Stack1) hasPin.
            recoveredBlock8Block49PC := 65.
        ].
        recoveredBlock8Block49Step = 65 ifTrue: [
            (recoveredBlock8Block49Stack1) ifTrue: [recoveredBlock8Block49PC := 68] ifFalse: [recoveredBlock8Block49PC := 79].
        ].
        recoveredBlock8Block49Step = 68 ifTrue: [
            recoveredBlock8Block49PC := 69.
        ].
        recoveredBlock8Block49Step = 69 ifTrue: [
            recoveredBlock8Block49Stack0 := self.
            recoveredBlock8Block49PC := 70.
        ].
        recoveredBlock8Block49Step = 70 ifTrue: [
            recoveredBlock8Block49Stack1 := recoveredBlock8Block49Arg1.
            recoveredBlock8Block49PC := 71.
        ].
        recoveredBlock8Block49Step = 71 ifTrue: [
            recoveredBlock8Block49Stack1 := (recoveredBlock8Block49Stack1) connectorGO.
            recoveredBlock8Block49PC := 73.
        ].
        recoveredBlock8Block49Step = 73 ifTrue: [
            recoveredBlock8Block49Stack1 := (recoveredBlock8Block49Stack1) identifier.
            recoveredBlock8Block49PC := 74.
        ].
        recoveredBlock8Block49Step = 74 ifTrue: [
            recoveredBlock8Block49Stack2 := recoveredBlock8Block49Arg1.
            recoveredBlock8Block49PC := 75.
        ].
        recoveredBlock8Block49Step = 75 ifTrue: [
            recoveredBlock8Block49Stack2 := (recoveredBlock8Block49Stack2) connectorGO.
            recoveredBlock8Block49PC := 77.
        ].
        recoveredBlock8Block49Step = 77 ifTrue: [
            recoveredBlock8Block49Stack0 := (recoveredBlock8Block49Stack0) entry: (recoveredBlock8Block49Stack1) for: (recoveredBlock8Block49Stack2).
            recoveredBlock8Block49PC := 79.
        ].
        recoveredBlock8Block49Step = 79 ifTrue: [
            recoveredBlock8Block49Result := recoveredBlock8Block49Stack0.
            recoveredBlock8Block49Done := true.
        ].
    ].
    recoveredBlock8Block49Result
].
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            (recoveredBlock8Stack0) do: (recoveredBlock8Stack1).
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            recoveredBlock8Stack0 := nil.
            recoveredBlock8PC := 83.
        ].
        recoveredBlock8Step = 83 ifTrue: [
            recoveredBlock8Stack1 := recoveredLocal1.
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isSGHierarchyGO.
            recoveredBlock8PC := 88.
        ].
        recoveredBlock8Step = 88 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 92] ifFalse: [recoveredBlock8PC := 105].
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8PC := 93.
        ].
        recoveredBlock8Step = 93 ifTrue: [
            recoveredBlock8Stack0 := nil.
            recoveredBlock8PC := 94.
        ].
        recoveredBlock8Step = 94 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 95 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isLoaded.
            recoveredBlock8PC := 97.
        ].
        recoveredBlock8Step = 97 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 100] ifFalse: [recoveredBlock8PC := 105].
        ].
        recoveredBlock8Step = 100 ifTrue: [
            recoveredBlock8PC := 101.
        ].
        recoveredBlock8Step = 101 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 102.
        ].
        recoveredBlock8Step = 102 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 103.
        ].
        recoveredBlock8Step = 103 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) createTableFor: (recoveredBlock8Stack1).
            recoveredBlock8PC := 105.
        ].
        recoveredBlock8Step = 105 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) connectionChildren.
    recoveredValue5 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Stack0 recoveredBlock113Stack1 recoveredBlock113Stack2 recoveredBlock113Stack3 recoveredBlock113Stack4 recoveredBlock113PC recoveredBlock113Step recoveredBlock113Done recoveredBlock113Result |
    recoveredBlock113Stack0 := self.
    recoveredBlock113PC := 120.
    recoveredBlock113Done := false.
    [recoveredBlock113Done not] whileTrue: [
        recoveredBlock113Step := recoveredBlock113PC.
        recoveredBlock113Step = 120 ifTrue: [
            recoveredBlock113Stack1 := nil.
            recoveredBlock113PC := 121.
        ].
        recoveredBlock113Step = 121 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Arg1.
            recoveredBlock113PC := 122.
        ].
        recoveredBlock113Step = 122 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) isStateConnection.
            recoveredBlock113PC := 124.
        ].
        recoveredBlock113Step = 124 ifTrue: [
            (recoveredBlock113Stack2) ifTrue: [recoveredBlock113PC := 128] ifFalse: [recoveredBlock113PC := 135].
        ].
        recoveredBlock113Step = 128 ifTrue: [
            recoveredBlock113PC := 129.
        ].
        recoveredBlock113Step = 129 ifTrue: [
            recoveredBlock113Stack1 := self.
            recoveredBlock113PC := 130.
        ].
        recoveredBlock113Step = 130 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Arg1.
            recoveredBlock113PC := 131.
        ].
        recoveredBlock113Step = 131 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) identifier.
            recoveredBlock113PC := 132.
        ].
        recoveredBlock113Step = 132 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Arg1.
            recoveredBlock113PC := 133.
        ].
        recoveredBlock113Step = 133 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) entry: (recoveredBlock113Stack2) for: (recoveredBlock113Stack3).
            recoveredBlock113PC := 135.
        ].
        recoveredBlock113Step = 135 ifTrue: [
            recoveredBlock113Result := recoveredBlock113Stack1.
            recoveredBlock113Done := true.
        ].
    ].
    recoveredBlock113Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) methodCalls.
    recoveredValue8 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Value0 recoveredBlock143Value1 recoveredBlock143Value2 recoveredBlock143Value3 |
    recoveredBlock143Value0 := recoveredBlock143Arg1.
    recoveredBlock143Value1 := (recoveredBlock143Value0) identifier.
    recoveredBlock143Value2 := recoveredBlock143Arg1.
    recoveredBlock143Value3 := (self) entry: (recoveredBlock143Value1) for: (recoveredBlock143Value2).
    recoveredBlock143Value3
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := (self) table.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2056332c; bytecode file offset 0xe5fc34"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
collectBlocksForHierarchy: recoveredArg1 blocks: recoveredArg2 hierarchyBlocks: recoveredArg3 commentBlocks: recoveredArg4 otherBlocks: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) hierarchyChildrenLocal.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := recoveredArg3.
    recoveredBlock8Value3 := recoveredArg4.
    recoveredBlock8Value4 := recoveredArg5.
    recoveredBlock8Value5 := (self) collectBlocksForHierarchy: (recoveredBlock8Value0) blocks: (recoveredBlock8Value1) hierarchyBlocks: (recoveredBlock8Value2) commentBlocks: (recoveredBlock8Value3) otherBlocks: (recoveredBlock8Value4).
    recoveredBlock8Value5
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := OrderedCollection.
    recoveredValue8 := (recoveredValue7) new.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := ('Kk') == ('Call_55177').
    recoveredValue10 := ('Kk') == ('Call_55390').
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) contents.
    (recoveredValue12) updateDynamicChildrenInfoForStates.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) commentChildren.
    recoveredValue15 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 |
    recoveredBlock78Value0 := recoveredArg4.
    recoveredBlock78Value1 := recoveredBlock78Arg1.
    recoveredBlock78Value2 := (recoveredBlock78Value0) add: (recoveredBlock78Value1).
    recoveredBlock78Value2
].
    (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) blockChildren.
    recoveredValue18 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Stack0 recoveredBlock98Stack1 recoveredBlock98Stack2 recoveredBlock98Stack3 recoveredBlock98PC recoveredBlock98Step recoveredBlock98Done recoveredBlock98Result |
    recoveredBlock98Stack0 := self.
    recoveredBlock98PC := 104.
    recoveredBlock98Done := false.
    [recoveredBlock98Done not] whileTrue: [
        recoveredBlock98Step := recoveredBlock98PC.
        recoveredBlock98Step = 104 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 105.
        ].
        recoveredBlock98Step = 105 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) basicGraphObject.
            recoveredBlock98PC := 107.
        ].
        recoveredBlock98Step = 107 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isStateBlock.
            recoveredBlock98PC := 109.
        ].
        recoveredBlock98Step = 109 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 112] ifFalse: [recoveredBlock98PC := 122].
        ].
        recoveredBlock98Step = 112 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal3.
            recoveredBlock98PC := 115.
        ].
        recoveredBlock98Step = 115 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 116.
        ].
        recoveredBlock98Step = 116 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) add: (recoveredBlock98Stack2).
            recoveredBlock98PC := 118.
        ].
        recoveredBlock98Step = 118 ifTrue: [
            recoveredBlock98PC := 158.
        ].
        recoveredBlock98Step = 122 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 123.
        ].
        recoveredBlock98Step = 123 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) basicGraphObject.
            recoveredBlock98PC := 125.
        ].
        recoveredBlock98Step = 125 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isInOutPortGO.
            recoveredBlock98PC := 127.
        ].
        recoveredBlock98Step = 127 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 130] ifFalse: [recoveredBlock98PC := 152].
        ].
        recoveredBlock98Step = 130 ifTrue: [
            recoveredBlock98Stack1 := 'Kk'.
            recoveredBlock98PC := 132.
        ].
        recoveredBlock98Step = 132 ifTrue: [
            recoveredBlock98Stack2 := 'Call_55177'.
            recoveredBlock98PC := 134.
        ].
        recoveredBlock98Step = 134 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) == (recoveredBlock98Stack2).
            recoveredBlock98PC := 135.
        ].
        recoveredBlock98Step = 135 ifTrue: [
            recoveredBlock98PC := 136.
        ].
        recoveredBlock98Step = 136 ifTrue: [
            recoveredBlock98Stack1 := 'Kk'.
            recoveredBlock98PC := 138.
        ].
        recoveredBlock98Step = 138 ifTrue: [
            recoveredBlock98Stack2 := 'Call_55390'.
            recoveredBlock98PC := 140.
        ].
        recoveredBlock98Step = 140 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) == (recoveredBlock98Stack2).
            recoveredBlock98PC := 141.
        ].
        recoveredBlock98Step = 141 ifTrue: [
            recoveredBlock98PC := 142.
        ].
        recoveredBlock98Step = 142 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 145.
        ].
        recoveredBlock98Step = 145 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 146.
        ].
        recoveredBlock98Step = 146 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) add: (recoveredBlock98Stack2).
            recoveredBlock98PC := 148.
        ].
        recoveredBlock98Step = 148 ifTrue: [
            recoveredBlock98PC := 158.
        ].
        recoveredBlock98Step = 152 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal2.
            recoveredBlock98PC := 155.
        ].
        recoveredBlock98Step = 155 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 156.
        ].
        recoveredBlock98Step = 156 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) add: (recoveredBlock98Stack2).
            recoveredBlock98PC := 158.
        ].
        recoveredBlock98Step = 158 ifTrue: [
            recoveredBlock98Result := recoveredBlock98Stack1.
            recoveredBlock98Done := true.
        ].
    ].
    recoveredBlock98Result
].
    (recoveredValue17) do: (recoveredValue18).
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := (recoveredValue19) asOrderedCollection.
    recoveredValue21 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Stack0 recoveredBlock166Stack1 recoveredBlock166Stack2 recoveredBlock166Stack3 recoveredBlock166PC recoveredBlock166Step recoveredBlock166Done recoveredBlock166Result |
    recoveredBlock166Stack0 := self.
    recoveredBlock166PC := 172.
    recoveredBlock166Done := false.
    [recoveredBlock166Done not] whileTrue: [
        recoveredBlock166Step := recoveredBlock166PC.
        recoveredBlock166Step = 172 ifTrue: [
            recoveredBlock166Stack1 := 'Kk'.
            recoveredBlock166PC := 174.
        ].
        recoveredBlock166Step = 174 ifTrue: [
            recoveredBlock166Stack2 := 'Call_55177'.
            recoveredBlock166PC := 176.
        ].
        recoveredBlock166Step = 176 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) == (recoveredBlock166Stack2).
            recoveredBlock166PC := 177.
        ].
        recoveredBlock166Step = 177 ifTrue: [
            recoveredBlock166PC := 178.
        ].
        recoveredBlock166Step = 178 ifTrue: [
            recoveredBlock166Stack1 := 'Kk'.
            recoveredBlock166PC := 180.
        ].
        recoveredBlock166Step = 180 ifTrue: [
            recoveredBlock166Stack2 := 'Call_55390'.
            recoveredBlock166PC := 182.
        ].
        recoveredBlock166Step = 182 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) == (recoveredBlock166Stack2).
            recoveredBlock166PC := 183.
        ].
        recoveredBlock166Step = 183 ifTrue: [
            recoveredBlock166PC := 184.
        ].
        recoveredBlock166Step = 184 ifTrue: [
            recoveredBlock166Stack1 := recoveredBlock166Arg1.
            recoveredBlock166PC := 185.
        ].
        recoveredBlock166Step = 185 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) basicGraphObject.
            recoveredBlock166PC := 187.
        ].
        recoveredBlock166Step = 187 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) isSGHierarchyGO.
            recoveredBlock166PC := 189.
        ].
        recoveredBlock166Step = 189 ifTrue: [
            (recoveredBlock166Stack1) ifTrue: [recoveredBlock166PC := 202] ifFalse: [recoveredBlock166PC := 192].
        ].
        recoveredBlock166Step = 192 ifTrue: [
            recoveredBlock166Stack1 := recoveredBlock166Arg1.
            recoveredBlock166PC := 193.
        ].
        recoveredBlock166Step = 193 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) basicGraphObject.
            recoveredBlock166PC := 195.
        ].
        recoveredBlock166Step = 195 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) dynamicChildren.
            recoveredBlock166PC := 197.
        ].
        recoveredBlock166Step = 197 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) notEmpty.
            recoveredBlock166PC := 199.
        ].
        recoveredBlock166Step = 199 ifTrue: [
            (recoveredBlock166Stack1) ifTrue: [recoveredBlock166PC := 202] ifFalse: [recoveredBlock166PC := 212].
        ].
        recoveredBlock166Step = 202 ifTrue: [
            recoveredBlock166Stack1 := recoveredArg3.
            recoveredBlock166PC := 205.
        ].
        recoveredBlock166Step = 205 ifTrue: [
            recoveredBlock166Stack2 := recoveredBlock166Arg1.
            recoveredBlock166PC := 206.
        ].
        recoveredBlock166Step = 206 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) add: (recoveredBlock166Stack2).
            recoveredBlock166PC := 208.
        ].
        recoveredBlock166Step = 208 ifTrue: [
            recoveredBlock166PC := 218.
        ].
        recoveredBlock166Step = 212 ifTrue: [
            recoveredBlock166Stack1 := recoveredArg2.
            recoveredBlock166PC := 215.
        ].
        recoveredBlock166Step = 215 ifTrue: [
            recoveredBlock166Stack2 := recoveredBlock166Arg1.
            recoveredBlock166PC := 216.
        ].
        recoveredBlock166Step = 216 ifTrue: [
            recoveredBlock166Stack1 := (recoveredBlock166Stack1) add: (recoveredBlock166Stack2).
            recoveredBlock166PC := 218.
        ].
        recoveredBlock166Step = 218 ifTrue: [
            recoveredBlock166Result := recoveredBlock166Stack1.
            recoveredBlock166Done := true.
        ].
    ].
    recoveredBlock166Result
].
    (recoveredValue20) do: (recoveredValue21).
    recoveredValue22 := recoveredArg5.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal2.
    (recoveredValue23) addAll: (recoveredValue24).
    recoveredValue25 := recoveredLocal1.
    (recoveredValue22) addAll: (recoveredValue25).
    ^self
! !

"ASDBase.ic method 0x205c7a08; bytecode file offset 0xec431c"
!SGIdentifierTableBuilder methodsFor: 'recovered'!
internalCreateIdentifierFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) collectBlocksForHierarchy: (recoveredStack1) blocks: (recoveredStack2) hierarchyBlocks: (recoveredStack3) commentBlocks: (recoveredStack4) otherBlocks: (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block28118984Arg1 | 
    | block28118984Value0 block28118984Value1 block28118984Value2 |
    block28118984Value0 := block28118984Arg1.
    block28118984Value1 := (block28118984Value0) identifier.
    block28118984Value2 := (block28118984Value1) isNil.
    block28118984Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:block281189a8Arg1 | 
    | block281189a8Value0 block281189a8Value1 block281189a8Value2 |
    block281189a8Value0 := block281189a8Arg1.
    block281189a8Value1 := (block281189a8Value0) identifier.
    block281189a8Value2 := (block281189a8Value1) notNil.
    block281189a8Value2
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 |
    recoveredBlock73Value0 := recoveredBlock73Arg1.
    recoveredBlock73Value1 := (self) createIdentifierForBlock: (recoveredBlock73Value0).
    recoveredBlock73Value1
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 recoveredBlock87Value3 |
    recoveredBlock87Value0 := recoveredBlock87Arg1.
    recoveredBlock87Value1 := recoveredBlock87Arg1.
    recoveredBlock87Value2 := (self) addIDFor: (recoveredBlock87Value1).
    recoveredBlock87Value3 := (recoveredBlock87Value0) identifier: (recoveredBlock87Value2).
    recoveredBlock87Value3
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyChildren.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := [:block281189ccArg1 | 
    | block281189ccValue0 block281189ccValue1 block281189ccValue2 |
    block281189ccValue0 := block281189ccArg1.
    block281189ccValue1 := (block281189ccValue0) identifier.
    block281189ccValue2 := (block281189ccValue1) notNil.
    block281189ccValue2
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 recoveredBlock121Value3 |
    recoveredBlock121Value0 := recoveredBlock121Arg1.
    recoveredBlock121Value1 := (recoveredBlock121Value0) connectionChildren.
    recoveredBlock121Value2 := [:recoveredBlock121Block131Arg1 | 
    | recoveredBlock121Block131Stack0 recoveredBlock121Block131Stack1 recoveredBlock121Block131Stack2 recoveredBlock121Block131Stack3 recoveredBlock121Block131Stack4 recoveredBlock121Block131PC recoveredBlock121Block131Step recoveredBlock121Block131Done recoveredBlock121Block131Result |
    recoveredBlock121Block131Stack0 := self.
    recoveredBlock121Block131PC := 138.
    recoveredBlock121Block131Done := false.
    [recoveredBlock121Block131Done not] whileTrue: [
        recoveredBlock121Block131Step := recoveredBlock121Block131PC.
        recoveredBlock121Block131Step = 138 ifTrue: [
            recoveredBlock121Block131Stack1 := nil.
            recoveredBlock121Block131PC := 139.
        ].
        recoveredBlock121Block131Step = 139 ifTrue: [
            recoveredBlock121Block131Stack2 := recoveredBlock121Block131Arg1.
            recoveredBlock121Block131PC := 140.
        ].
        recoveredBlock121Block131Step = 140 ifTrue: [
            recoveredBlock121Block131Stack2 := (recoveredBlock121Block131Stack2) isStateConnection.
            recoveredBlock121Block131PC := 142.
        ].
        recoveredBlock121Block131Step = 142 ifTrue: [
            (recoveredBlock121Block131Stack2) ifTrue: [recoveredBlock121Block131PC := 146] ifFalse: [recoveredBlock121Block131PC := 183].
        ].
        recoveredBlock121Block131Step = 146 ifTrue: [
            recoveredBlock121Block131PC := 147.
        ].
        recoveredBlock121Block131Step = 147 ifTrue: [
            recoveredBlock121Block131Stack1 := recoveredBlock121Block131Arg1.
            recoveredBlock121Block131PC := 148.
        ].
        recoveredBlock121Block131Step = 148 ifTrue: [
            recoveredBlock121Block131Stack2 := self.
            recoveredBlock121Block131PC := 149.
        ].
        recoveredBlock121Block131Step = 149 ifTrue: [
            recoveredBlock121Block131Stack3 := recoveredBlock121Block131Arg1.
            recoveredBlock121Block131PC := 150.
        ].
        recoveredBlock121Block131Step = 150 ifTrue: [
            recoveredBlock121Block131Stack2 := (recoveredBlock121Block131Stack2) addIDFor: (recoveredBlock121Block131Stack3).
            recoveredBlock121Block131PC := 152.
        ].
        recoveredBlock121Block131Step = 152 ifTrue: [
            (recoveredBlock121Block131Stack1) identifier: (recoveredBlock121Block131Stack2).
            recoveredBlock121Block131PC := 154.
        ].
        recoveredBlock121Block131Step = 154 ifTrue: [
            recoveredBlock121Block131Stack1 := recoveredBlock121Block131Arg1.
            recoveredBlock121Block131PC := 155.
        ].
        recoveredBlock121Block131Step = 155 ifTrue: [
            recoveredBlock121Block131Stack1 := (recoveredBlock121Block131Stack1) methodCalls.
            recoveredBlock121Block131PC := 157.
        ].
        recoveredBlock121Block131Step = 157 ifTrue: [
            recoveredBlock121Block131Stack2 := [:recoveredBlock121Block131Block157Arg1 | 
    | recoveredBlock121Block131Block157Stack0 recoveredBlock121Block131Block157Stack1 recoveredBlock121Block131Block157Stack2 recoveredBlock121Block131Block157Stack3 recoveredBlock121Block131Block157Stack4 recoveredBlock121Block131Block157PC recoveredBlock121Block131Block157Step recoveredBlock121Block131Block157Done recoveredBlock121Block131Block157Result |
    recoveredBlock121Block131Block157Stack0 := self.
    recoveredBlock121Block131Block157PC := 164.
    recoveredBlock121Block131Block157Done := false.
    [recoveredBlock121Block131Block157Done not] whileTrue: [
        recoveredBlock121Block131Block157Step := recoveredBlock121Block131Block157PC.
        recoveredBlock121Block131Block157Step = 164 ifTrue: [
            recoveredBlock121Block131Block157Stack1 := nil.
            recoveredBlock121Block131Block157PC := 165.
        ].
        recoveredBlock121Block131Block157Step = 165 ifTrue: [
            recoveredBlock121Block131Block157Stack2 := recoveredBlock121Block131Block157Arg1.
            recoveredBlock121Block131Block157PC := 166.
        ].
        recoveredBlock121Block131Block157Step = 166 ifTrue: [
            recoveredBlock121Block131Block157Stack2 := (recoveredBlock121Block131Block157Stack2) hasInlinePin.
            recoveredBlock121Block131Block157PC := 168.
        ].
        recoveredBlock121Block131Block157Step = 168 ifTrue: [
            (recoveredBlock121Block131Block157Stack2) ifTrue: [recoveredBlock121Block131Block157PC := 180] ifFalse: [recoveredBlock121Block131Block157PC := 172].
        ].
        recoveredBlock121Block131Block157Step = 172 ifTrue: [
            recoveredBlock121Block131Block157PC := 173.
        ].
        recoveredBlock121Block131Block157Step = 173 ifTrue: [
            recoveredBlock121Block131Block157Stack1 := recoveredBlock121Block131Block157Arg1.
            recoveredBlock121Block131Block157PC := 174.
        ].
        recoveredBlock121Block131Block157Step = 174 ifTrue: [
            recoveredBlock121Block131Block157Stack2 := self.
            recoveredBlock121Block131Block157PC := 175.
        ].
        recoveredBlock121Block131Block157Step = 175 ifTrue: [
            recoveredBlock121Block131Block157Stack3 := recoveredBlock121Block131Block157Arg1.
            recoveredBlock121Block131Block157PC := 176.
        ].
        recoveredBlock121Block131Block157Step = 176 ifTrue: [
            recoveredBlock121Block131Block157Stack2 := (recoveredBlock121Block131Block157Stack2) addIDFor: (recoveredBlock121Block131Block157Stack3).
            recoveredBlock121Block131Block157PC := 178.
        ].
        recoveredBlock121Block131Block157Step = 178 ifTrue: [
            recoveredBlock121Block131Block157Stack1 := (recoveredBlock121Block131Block157Stack1) identifier: (recoveredBlock121Block131Block157Stack2).
            recoveredBlock121Block131Block157PC := 180.
        ].
        recoveredBlock121Block131Block157Step = 180 ifTrue: [
            recoveredBlock121Block131Block157Result := recoveredBlock121Block131Block157Stack1.
            recoveredBlock121Block131Block157Done := true.
        ].
    ].
    recoveredBlock121Block131Block157Result
].
            recoveredBlock121Block131PC := 181.
        ].
        recoveredBlock121Block131Step = 181 ifTrue: [
            recoveredBlock121Block131Stack1 := (recoveredBlock121Block131Stack1) do: (recoveredBlock121Block131Stack2).
            recoveredBlock121Block131PC := 183.
        ].
        recoveredBlock121Block131Step = 183 ifTrue: [
            recoveredBlock121Block131Result := recoveredBlock121Block131Stack1.
            recoveredBlock121Block131Done := true.
        ].
    ].
    recoveredBlock121Block131Result
].
    recoveredBlock121Value3 := (recoveredBlock121Value1) do: (recoveredBlock121Value2).
    recoveredBlock121Value3
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := [:recoveredBlock190Arg1 | 
    | recoveredBlock190Local1 recoveredBlock190Value0 recoveredBlock190Value1 recoveredBlock190Value2 recoveredBlock190Value3 recoveredBlock190Value4 recoveredBlock190Value5 recoveredBlock190Value6 recoveredBlock190Value7 recoveredBlock190Value8 recoveredBlock190Value9 recoveredBlock190Value10 recoveredBlock190Value11 |
    recoveredBlock190Value0 := recoveredBlock190Arg1.
    recoveredBlock190Value1 := (recoveredBlock190Value0) basicGraphObject.
    recoveredBlock190Local1 := recoveredBlock190Value1.
    recoveredBlock190Value2 := recoveredBlock190Local1.
    recoveredBlock190Value3 := recoveredBlock190Arg1.
    recoveredBlock190Value4 := (self) addIDFor: (recoveredBlock190Value3).
    (recoveredBlock190Value2) identifier: (recoveredBlock190Value4).
    recoveredBlock190Value5 := recoveredBlock190Local1.
    recoveredBlock190Value6 := (recoveredBlock190Value5) connectorGOs.
    recoveredBlock190Value7 := [:recoveredBlock190Block210Arg1 | 
    | recoveredBlock190Block210Value0 recoveredBlock190Block210Value1 recoveredBlock190Block210Value2 recoveredBlock190Block210Value3 |
    recoveredBlock190Block210Value0 := recoveredBlock190Block210Arg1.
    recoveredBlock190Block210Value1 := recoveredBlock190Block210Arg1.
    recoveredBlock190Block210Value2 := (self) addIDFor: (recoveredBlock190Block210Value1).
    recoveredBlock190Block210Value3 := (recoveredBlock190Block210Value0) identifier: (recoveredBlock190Block210Value2).
    recoveredBlock190Block210Value3
].
    (recoveredBlock190Value6) do: (recoveredBlock190Value7).
    recoveredBlock190Value8 := recoveredBlock190Arg1.
    recoveredBlock190Value9 := (recoveredBlock190Value8) methodCalls.
    recoveredBlock190Value10 := [:recoveredBlock190Block229Arg1 | 
    | recoveredBlock190Block229Stack0 recoveredBlock190Block229Stack1 recoveredBlock190Block229Stack2 recoveredBlock190Block229Stack3 recoveredBlock190Block229Stack4 recoveredBlock190Block229PC recoveredBlock190Block229Step recoveredBlock190Block229Done recoveredBlock190Block229Result |
    recoveredBlock190Block229Stack0 := self.
    recoveredBlock190Block229PC := 236.
    recoveredBlock190Block229Done := false.
    [recoveredBlock190Block229Done not] whileTrue: [
        recoveredBlock190Block229Step := recoveredBlock190Block229PC.
        recoveredBlock190Block229Step = 236 ifTrue: [
            recoveredBlock190Block229Stack1 := recoveredBlock190Block229Arg1.
            recoveredBlock190Block229PC := 237.
        ].
        recoveredBlock190Block229Step = 237 ifTrue: [
            recoveredBlock190Block229Stack1 := (recoveredBlock190Block229Stack1) hasInlinePin.
            recoveredBlock190Block229PC := 239.
        ].
        recoveredBlock190Block229Step = 239 ifTrue: [
            (recoveredBlock190Block229Stack1) ifTrue: [recoveredBlock190Block229PC := 249] ifFalse: [recoveredBlock190Block229PC := 242].
        ].
        recoveredBlock190Block229Step = 242 ifTrue: [
            recoveredBlock190Block229Stack1 := recoveredBlock190Block229Arg1.
            recoveredBlock190Block229PC := 243.
        ].
        recoveredBlock190Block229Step = 243 ifTrue: [
            recoveredBlock190Block229Stack2 := self.
            recoveredBlock190Block229PC := 244.
        ].
        recoveredBlock190Block229Step = 244 ifTrue: [
            recoveredBlock190Block229Stack3 := recoveredBlock190Block229Arg1.
            recoveredBlock190Block229PC := 245.
        ].
        recoveredBlock190Block229Step = 245 ifTrue: [
            recoveredBlock190Block229Stack2 := (recoveredBlock190Block229Stack2) addIDFor: (recoveredBlock190Block229Stack3).
            recoveredBlock190Block229PC := 247.
        ].
        recoveredBlock190Block229Step = 247 ifTrue: [
            (recoveredBlock190Block229Stack1) identifier: (recoveredBlock190Block229Stack2).
            recoveredBlock190Block229PC := 249.
        ].
        recoveredBlock190Block229Step = 249 ifTrue: [
            recoveredBlock190Block229Stack1 := nil.
            recoveredBlock190Block229PC := 250.
        ].
        recoveredBlock190Block229Step = 250 ifTrue: [
            recoveredBlock190Block229Stack2 := recoveredBlock190Block229Arg1.
            recoveredBlock190Block229PC := 251.
        ].
        recoveredBlock190Block229Step = 251 ifTrue: [
            recoveredBlock190Block229Stack2 := (recoveredBlock190Block229Stack2) hasPin.
            recoveredBlock190Block229PC := 253.
        ].
        recoveredBlock190Block229Step = 253 ifTrue: [
            (recoveredBlock190Block229Stack2) ifTrue: [recoveredBlock190Block229PC := 256] ifFalse: [recoveredBlock190Block229PC := 268].
        ].
        recoveredBlock190Block229Step = 256 ifTrue: [
            recoveredBlock190Block229PC := 257.
        ].
        recoveredBlock190Block229Step = 257 ifTrue: [
            recoveredBlock190Block229Stack1 := recoveredBlock190Block229Arg1.
            recoveredBlock190Block229PC := 258.
        ].
        recoveredBlock190Block229Step = 258 ifTrue: [
            recoveredBlock190Block229Stack1 := (recoveredBlock190Block229Stack1) connectorGO.
            recoveredBlock190Block229PC := 260.
        ].
        recoveredBlock190Block229Step = 260 ifTrue: [
            recoveredBlock190Block229Stack2 := self.
            recoveredBlock190Block229PC := 261.
        ].
        recoveredBlock190Block229Step = 261 ifTrue: [
            recoveredBlock190Block229Stack3 := recoveredBlock190Block229Arg1.
            recoveredBlock190Block229PC := 262.
        ].
        recoveredBlock190Block229Step = 262 ifTrue: [
            recoveredBlock190Block229Stack3 := (recoveredBlock190Block229Stack3) connectorGO.
            recoveredBlock190Block229PC := 264.
        ].
        recoveredBlock190Block229Step = 264 ifTrue: [
            recoveredBlock190Block229Stack2 := (recoveredBlock190Block229Stack2) addIDFor: (recoveredBlock190Block229Stack3).
            recoveredBlock190Block229PC := 266.
        ].
        recoveredBlock190Block229Step = 266 ifTrue: [
            recoveredBlock190Block229Stack1 := (recoveredBlock190Block229Stack1) identifier: (recoveredBlock190Block229Stack2).
            recoveredBlock190Block229PC := 268.
        ].
        recoveredBlock190Block229Step = 268 ifTrue: [
            recoveredBlock190Block229Result := recoveredBlock190Block229Stack1.
            recoveredBlock190Block229Done := true.
        ].
    ].
    recoveredBlock190Block229Result
].
    recoveredBlock190Value11 := (recoveredBlock190Value9) do: (recoveredBlock190Value10).
    recoveredBlock190Value11
].
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyChildren.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := [:block281189f0Arg1 | 
    | block281189f0Value0 block281189f0Value1 block281189f0Value2 |
    block281189f0Value0 := block281189f0Arg1.
    block281189f0Value1 := (block281189f0Value0) identifier.
    block281189f0Value2 := (block281189f0Value1) isNil.
    block281189f0Value2
].
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := [:recoveredBlock291Arg1 | 
    | recoveredBlock291Value0 recoveredBlock291Value1 recoveredBlock291Value2 recoveredBlock291Value3 |
    recoveredBlock291Value0 := recoveredBlock291Arg1.
    recoveredBlock291Value1 := (recoveredBlock291Value0) connectionChildren.
    recoveredBlock291Value2 := [:recoveredBlock291Block301Arg1 | 
    | recoveredBlock291Block301Local1 recoveredBlock291Block301Stack0 recoveredBlock291Block301Stack1 recoveredBlock291Block301Stack2 recoveredBlock291Block301Stack3 recoveredBlock291Block301Stack4 recoveredBlock291Block301PC recoveredBlock291Block301Step recoveredBlock291Block301Done recoveredBlock291Block301Result |
    recoveredBlock291Block301Stack0 := self.
    recoveredBlock291Block301PC := 308.
    recoveredBlock291Block301Done := false.
    [recoveredBlock291Block301Done not] whileTrue: [
        recoveredBlock291Block301Step := recoveredBlock291Block301PC.
        recoveredBlock291Block301Step = 308 ifTrue: [
            recoveredBlock291Block301Stack1 := recoveredBlock291Block301Arg1.
            recoveredBlock291Block301PC := 309.
        ].
        recoveredBlock291Block301Step = 309 ifTrue: [
            recoveredBlock291Block301Stack1 := (recoveredBlock291Block301Stack1) basicGraphObject.
            recoveredBlock291Block301PC := 311.
        ].
        recoveredBlock291Block301Step = 311 ifTrue: [
            recoveredBlock291Block301Local1 := recoveredBlock291Block301Stack1.
            recoveredBlock291Block301PC := 312.
        ].
        recoveredBlock291Block301Step = 312 ifTrue: [
            recoveredBlock291Block301Stack1 := nil.
            recoveredBlock291Block301PC := 313.
        ].
        recoveredBlock291Block301Step = 313 ifTrue: [
            recoveredBlock291Block301Stack2 := recoveredBlock291Block301Local1.
            recoveredBlock291Block301PC := 314.
        ].
        recoveredBlock291Block301Step = 314 ifTrue: [
            recoveredBlock291Block301Stack2 := (recoveredBlock291Block301Stack2) isStateConnection.
            recoveredBlock291Block301PC := 316.
        ].
        recoveredBlock291Block301Step = 316 ifTrue: [
            (recoveredBlock291Block301Stack2) ifTrue: [recoveredBlock291Block301PC := 320] ifFalse: [recoveredBlock291Block301PC := 328].
        ].
        recoveredBlock291Block301Step = 320 ifTrue: [
            recoveredBlock291Block301PC := 321.
        ].
        recoveredBlock291Block301Step = 321 ifTrue: [
            recoveredBlock291Block301Stack1 := recoveredBlock291Block301Local1.
            recoveredBlock291Block301PC := 322.
        ].
        recoveredBlock291Block301Step = 322 ifTrue: [
            recoveredBlock291Block301Stack2 := self.
            recoveredBlock291Block301PC := 323.
        ].
        recoveredBlock291Block301Step = 323 ifTrue: [
            recoveredBlock291Block301Stack3 := recoveredBlock291Block301Local1.
            recoveredBlock291Block301PC := 324.
        ].
        recoveredBlock291Block301Step = 324 ifTrue: [
            recoveredBlock291Block301Stack2 := (recoveredBlock291Block301Stack2) addIDFor: (recoveredBlock291Block301Stack3).
            recoveredBlock291Block301PC := 326.
        ].
        recoveredBlock291Block301Step = 326 ifTrue: [
            recoveredBlock291Block301Stack1 := (recoveredBlock291Block301Stack1) identifier: (recoveredBlock291Block301Stack2).
            recoveredBlock291Block301PC := 328.
        ].
        recoveredBlock291Block301Step = 328 ifTrue: [
            recoveredBlock291Block301Result := recoveredBlock291Block301Stack1.
            recoveredBlock291Block301Done := true.
        ].
    ].
    recoveredBlock291Block301Result
].
    recoveredBlock291Value3 := (recoveredBlock291Value1) do: (recoveredBlock291Value2).
    recoveredBlock291Value3
].
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

