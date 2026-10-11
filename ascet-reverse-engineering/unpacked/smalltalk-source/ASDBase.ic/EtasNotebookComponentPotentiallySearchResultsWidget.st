"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20056e38; bytecode file offset 0x953708"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
isPotentiallyUsed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) potentiallyUsed: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20074ab4; bytecode file offset 0x9757c8"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
isPotentiallyUsedPossible
    ^true
! !

"ASDBase.ic method 0x200af5e0; bytecode file offset 0x9abeb4"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
iconUsedInformation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 'GeneralInformation'.
    recoveredValue0 := (self) resourceManager.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue0) returnIconWithName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200af5f4; bytecode file offset 0x9abeb4"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
iconNotUsedInformation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 'GeneralTransparent'.
    recoveredValue0 := (self) resourceManager.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue0) returnIconWithName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c7524; bytecode file offset 0x9c3e48"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
potentiallyUsedelementsDict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    potentiallyUsedElementsDict := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9ba4; bytecode file offset 0x9c65cc"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
potentiallyUsedCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) getUsedWithIcon: (recoveredValue2).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010e0d4; bytecode file offset 0xa0a994"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
setElements: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) asdElements: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) allPotentiallyUsedElementsOfUnreferenced: (recoveredValue1).
    (self) updateAllTableLists.
    ^self
! !

"ASDBase.ic method 0x2012afa8; bytecode file offset 0xa27884"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
potentiallyUsedElementsDict
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := potentiallyUsedElementsDict.
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
            potentiallyUsedElementsDict := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := potentiallyUsedElementsDict.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201379ac; bytecode file offset 0xa34270"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
menuShowPotentiallyUsed
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) promptPotentiallyUsedElement: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201680f8; bytecode file offset 0xa649b0"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
potentiallyUsed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := potentiallyUsedElementsDict.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022c968; bytecode file offset 0xb29238"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
getUsedWithIcon: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) isPotentiallyUsed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPotentiallyUsedLabel: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := RBRenderableBitmapString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconUsedInformation.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOnString: (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := RBRenderableBitmapString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconNotUsedInformation.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOnString: (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20309f20; bytecode file offset 0xc06800"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
getPotentiallyUsedLabel: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPotentiallyUsed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) potentiallyUsed: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := '('.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ') '.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := '...'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035c0d0; bytecode file offset 0xc589d0"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
createTableColumnPotentiallyUsedWarning
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Potentially Used').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (50).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := Dictionary.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) at: ('id') put: ('PotentiallyUsed').
    (recoveredValue7) userData: (recoveredValue9).
    recoveredLocal1 := recoveredValue1.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := XmNcellValueCallback.
    (recoveredValue11) addCallback: (recoveredValue12) receiver: (self) selector: ('potentiallyUsedCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue13 := (self) tableColumnSortBlocks.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (self) elementSortManager.
    recoveredValue16 := (recoveredValue15) sortBlockForPotentiallyUsed.
    (recoveredValue13) at: (recoveredValue14) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x203e457c; bytecode file offset 0xce0e74"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
columnsContents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) createTableColumnNameForTab: ('element').
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) createTableColumnPotentiallyUsedWarning.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) createTableColumnTypeForTab: ('element').
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) createTableColumnMaxSize.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) createTableColumnScope.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) createTableColumnKind.
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) createTableColumnReference.
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) createTableColumnExistence.
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) createTableColumnDependency.
    (recoveredValue18) add: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) createTableColumnMemory.
    (recoveredValue20) add: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) createTableColumnCalibration.
    (recoveredValue22) add: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) createTableColumnUnit.
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) createTableColumnComment.
    (recoveredValue26) add: (recoveredValue27).
    ^recoveredValue1
! !

"ASDBase.ic method 0x204dc368; bytecode file offset 0xdd8cb0"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
promptPotentiallyUsedElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) potentiallyUsed: (recoveredBlock21Stack1).
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack0 := nil.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local1.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            (recoveredBlock21Stack1 == nil) ifTrue: [recoveredBlock21PC := 43] ifFalse: [recoveredBlock21PC := 36].
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal1.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local1.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) addAll: (recoveredBlock21Stack1).
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack0.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) potentiallyUsed: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := EtasUserSelection.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'Some of the elements not used in the actual configuration but used in other configuration settings.\Note: The search result list will only reflect the actual used configuration!!'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := 'Unused Elements'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 'ASDIgnoredElementsPrompter'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := EtasIconListMessagePrompter.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) prompterClass: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := 'OK'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := #('Continue').
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack2) buttonText: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := 'DONTSHOWAGAIN'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack2) nextTimeButtonText: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack2) nextTimeButtonVisible: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := 'info'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSortedCollection.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := [:block28107b18Arg1 | 
    | block28107b18Value0 |
    block28107b18Value0 := block28107b18Arg1.
    block28107b18Value0
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack2) visualCallbackStringBlock: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := [:block28107b3cArg1 | 
    | block28107b3cValue0 block28107b3cValue1 block28107b3cValue2 |
    block28107b3cValue0 := RBUserInterface.
    block28107b3cValue1 := (block28107b3cValue0) resourceManager.
    block28107b3cValue2 := (block28107b3cValue1) returnIconWithName: ('GeneralInformation').
    block28107b3cValue2
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack2) visualCallbackIconBlock: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2062bd24; bytecode file offset 0xf2867c"
!EtasNotebookComponentPotentiallySearchResultsWidget methodsFor: 'recovered'!
allPotentiallyUsedElementsOfUnreferenced: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) item.
    recoveredValue3 := (recoveredValue2) allMethods.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 |
    recoveredBlock12Value0 := recoveredLocal3.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) methodName.
    recoveredBlock12Value3 := (self) widgetController.
    recoveredBlock12Value4 := recoveredBlock12Arg1.
    recoveredBlock12Value5 := (recoveredBlock12Value3) procedureSourceStringsAllCodeVariantsMethod: (recoveredBlock12Value4).
    recoveredBlock12Value6 := (recoveredBlock12Value0) at: (recoveredBlock12Value2) put: (recoveredBlock12Value5).
    recoveredBlock12Value6
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := IdentityDictionary.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := [:recoveredBlock44Arg1 :recoveredBlock44Arg2 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := recoveredBlock44Arg2.
    recoveredBlock44Value1 := [:recoveredBlock44Block53Arg1 :recoveredBlock44Block53Arg2 | 
    | recoveredBlock44Block53Value0 recoveredBlock44Block53Value1 recoveredBlock44Block53Value2 |
    recoveredBlock44Block53Value0 := recoveredArg1.
    recoveredBlock44Block53Value1 := [:recoveredBlock44Block53Block63Arg1 | 
    | recoveredBlock44Block53Block63Local1 recoveredBlock44Block53Block63Value0 recoveredBlock44Block53Block63Value1 recoveredBlock44Block53Block63Value2 recoveredBlock44Block53Block63Value3 recoveredBlock44Block53Block63Value4 recoveredBlock44Block53Block63Value5 |
    recoveredBlock44Block53Block63Value0 := recoveredBlock44Block53Arg2.
    recoveredBlock44Block53Block63Value1 := recoveredBlock44Block53Block63Arg1.
    recoveredBlock44Block53Block63Value2 := (recoveredBlock44Block53Block63Value1) elementName.
    recoveredBlock44Block53Block63Value3 := (recoveredBlock44Block53Block63Value0) findIdentifiers: (recoveredBlock44Block53Block63Value2).
    recoveredBlock44Block53Block63Value4 := [:recoveredBlock44Block53Block63Block80Arg1 | 
    | recoveredBlock44Block53Block63Block80Value0 recoveredBlock44Block53Block63Block80Value1 recoveredBlock44Block53Block63Block80Value2 recoveredBlock44Block53Block63Block80Value3 recoveredBlock44Block53Block63Block80Value4 recoveredBlock44Block53Block63Block80Value5 recoveredBlock44Block53Block63Block80Value6 recoveredBlock44Block53Block63Block80Value7 recoveredBlock44Block53Block63Block80Value8 recoveredBlock44Block53Block63Block80Value9 recoveredBlock44Block53Block63Block80Value10 recoveredBlock44Block53Block63Block80Value11 recoveredBlock44Block53Block63Block80Value12 recoveredBlock44Block53Block63Block80Value13 recoveredBlock44Block53Block63Block80Value14 recoveredBlock44Block53Block63Block80Value15 recoveredBlock44Block53Block63Block80Value16 recoveredBlock44Block53Block63Block80Value17 recoveredBlock44Block53Block63Block80Value18 recoveredBlock44Block53Block63Block80Value19 recoveredBlock44Block53Block63Block80Value20 recoveredBlock44Block53Block63Block80Value21 recoveredBlock44Block53Block63Block80Value22 recoveredBlock44Block53Block63Block80Value23 |
    recoveredBlock44Block53Block63Block80Value0 := recoveredLocal1.
    recoveredBlock44Block53Block63Block80Value1 := recoveredBlock44Block53Block63Arg1.
    recoveredBlock44Block53Block63Block80Value2 := [
    | recoveredBlock44Block53Block63Block80Block92Value0 recoveredBlock44Block53Block63Block80Block92Value1 recoveredBlock44Block53Block63Block80Block92Value2 recoveredBlock44Block53Block63Block80Block92Value3 recoveredBlock44Block53Block63Block80Block92Value4 |
    recoveredBlock44Block53Block63Block80Block92Value0 := recoveredLocal1.
    recoveredBlock44Block53Block63Block80Block92Value1 := recoveredBlock44Block53Block63Arg1.
    recoveredBlock44Block53Block63Block80Block92Value2 := OrderedCollection.
    recoveredBlock44Block53Block63Block80Block92Value3 := (recoveredBlock44Block53Block63Block80Block92Value2) new.
    recoveredBlock44Block53Block63Block80Block92Value4 := (recoveredBlock44Block53Block63Block80Block92Value0) at: (recoveredBlock44Block53Block63Block80Block92Value1) put: (recoveredBlock44Block53Block63Block80Block92Value3).
    recoveredBlock44Block53Block63Block80Block92Value4
].
    recoveredBlock44Block53Block63Block80Value3 := (recoveredBlock44Block53Block63Block80Value0) at: (recoveredBlock44Block53Block63Block80Value1) ifAbsent: (recoveredBlock44Block53Block63Block80Value2).
    recoveredLocal2 := recoveredBlock44Block53Block63Block80Value3.
    recoveredBlock44Block53Block63Block80Value4 := recoveredLocal2.
    recoveredBlock44Block53Block63Block80Value5 := ($') asString.
    recoveredBlock44Block53Block63Block80Value6 := recoveredBlock44Block53Block63Arg1.
    recoveredBlock44Block53Block63Block80Value7 := (recoveredBlock44Block53Block63Block80Value6) elementName.
    recoveredBlock44Block53Block63Block80Value8 := (recoveredBlock44Block53Block63Block80Value5) , (recoveredBlock44Block53Block63Block80Value7).
    recoveredBlock44Block53Block63Block80Value9 := ($') asString.
    recoveredBlock44Block53Block63Block80Value10 := (recoveredBlock44Block53Block63Block80Value8) , (recoveredBlock44Block53Block63Block80Value9).
    recoveredBlock44Block53Block63Block80Value11 := (recoveredBlock44Block53Block63Block80Value10) , (' used in ').
    recoveredBlock44Block53Block63Block80Value12 := ($') asString.
    recoveredBlock44Block53Block63Block80Value13 := (recoveredBlock44Block53Block63Block80Value11) , (recoveredBlock44Block53Block63Block80Value12).
    recoveredBlock44Block53Block63Block80Value14 := recoveredBlock44Arg1.
    recoveredBlock44Block53Block63Block80Value15 := (recoveredBlock44Block53Block63Block80Value13) , (recoveredBlock44Block53Block63Block80Value14).
    recoveredBlock44Block53Block63Block80Value16 := ($') asString.
    recoveredBlock44Block53Block63Block80Value17 := (recoveredBlock44Block53Block63Block80Value15) , (recoveredBlock44Block53Block63Block80Value16).
    recoveredBlock44Block53Block63Block80Value18 := (recoveredBlock44Block53Block63Block80Value17) , (' of [').
    recoveredBlock44Block53Block63Block80Value19 := recoveredBlock44Block53Arg1.
    recoveredBlock44Block53Block63Block80Value20 := (recoveredBlock44Block53Block63Block80Value19) variantKeySlash.
    recoveredBlock44Block53Block63Block80Value21 := (recoveredBlock44Block53Block63Block80Value18) , (recoveredBlock44Block53Block63Block80Value20).
    recoveredBlock44Block53Block63Block80Value22 := (recoveredBlock44Block53Block63Block80Value21) , (']').
    recoveredBlock44Block53Block63Block80Value23 := (recoveredBlock44Block53Block63Block80Value4) add: (recoveredBlock44Block53Block63Block80Value22).
    recoveredBlock44Block53Block63Block80Value23
].
    recoveredBlock44Block53Block63Value5 := (recoveredBlock44Block53Block63Value3) do: (recoveredBlock44Block53Block63Value4).
    recoveredBlock44Block53Block63Value5
].
    recoveredBlock44Block53Value2 := (recoveredBlock44Block53Value0) do: (recoveredBlock44Block53Value1).
    recoveredBlock44Block53Value2
].
    recoveredBlock44Value2 := (recoveredBlock44Value0) keysAndValuesDo: (recoveredBlock44Value1).
    recoveredBlock44Value2
].
    (recoveredValue7) keysAndValuesDo: (recoveredValue8).
    recoveredValue9 := (self) item.
    recoveredValue10 := (recoveredValue9) allElements.
    recoveredValue11 := [:recoveredBlock195Arg1 | 
    | recoveredBlock195Stack0 recoveredBlock195Stack1 recoveredBlock195Stack2 recoveredBlock195Stack3 recoveredBlock195PC recoveredBlock195Step recoveredBlock195Done recoveredBlock195Result |
    recoveredBlock195Stack0 := self.
    recoveredBlock195PC := 202.
    recoveredBlock195Done := false.
    [recoveredBlock195Done not] whileTrue: [
        recoveredBlock195Step := recoveredBlock195PC.
        recoveredBlock195Step = 202 ifTrue: [
            recoveredBlock195Stack1 := nil.
            recoveredBlock195PC := 203.
        ].
        recoveredBlock195Step = 203 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Arg1.
            recoveredBlock195PC := 206.
        ].
        recoveredBlock195Step = 206 ifTrue: [
            recoveredBlock195Stack2 := (recoveredBlock195Stack2) isUniqueDataConfigured.
            recoveredBlock195PC := 208.
        ].
        recoveredBlock195Step = 208 ifTrue: [
            (recoveredBlock195Stack2) ifTrue: [recoveredBlock195PC := 585] ifFalse: [recoveredBlock195PC := 212].
        ].
        recoveredBlock195Step = 212 ifTrue: [
            recoveredBlock195PC := 213.
        ].
        recoveredBlock195Step = 213 ifTrue: [
            recoveredBlock195Stack1 := self.
            recoveredBlock195PC := 214.
        ].
        recoveredBlock195Step = 214 ifTrue: [
            recoveredBlock195Stack1 := (recoveredBlock195Stack1) item.
            recoveredBlock195PC := 215.
        ].
        recoveredBlock195Step = 215 ifTrue: [
            recoveredBlock195Stack1 := (recoveredBlock195Stack1) datas.
            recoveredBlock195PC := 217.
        ].
        recoveredBlock195Step = 217 ifTrue: [
            recoveredBlock195Stack2 := [:recoveredBlock195Block217Arg1 | 
    | recoveredBlock195Block217Local1 recoveredBlock195Block217Local2 recoveredBlock195Block217Local3 recoveredBlock195Block217Stack0 recoveredBlock195Block217Stack1 recoveredBlock195Block217Stack2 recoveredBlock195Block217Stack3 recoveredBlock195Block217Stack4 recoveredBlock195Block217Stack5 recoveredBlock195Block217PC recoveredBlock195Block217Step recoveredBlock195Block217Done recoveredBlock195Block217Result |
    recoveredBlock195Block217Stack0 := nil.
    recoveredBlock195Block217PC := 224.
    recoveredBlock195Block217Done := false.
    [recoveredBlock195Block217Done not] whileTrue: [
        recoveredBlock195Block217Step := recoveredBlock195Block217PC.
        recoveredBlock195Block217Step = 224 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredBlock195Arg1.
            recoveredBlock195Block217PC := 227.
        ].
        recoveredBlock195Block217Step = 227 ifTrue: [
            recoveredBlock195Block217Stack1 := (recoveredBlock195Block217Stack1) isDependent.
            recoveredBlock195Block217PC := 229.
        ].
        recoveredBlock195Block217Step = 229 ifTrue: [
            (recoveredBlock195Block217Stack1) ifTrue: [recoveredBlock195Block217PC := 232] ifFalse: [recoveredBlock195Block217PC := 388].
        ].
        recoveredBlock195Block217Step = 232 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredBlock195Block217Arg1.
            recoveredBlock195Block217PC := 235.
        ].
        recoveredBlock195Block217Step = 235 ifTrue: [
            recoveredBlock195Block217Stack2 := recoveredBlock195Arg1.
            recoveredBlock195Block217PC := 238.
        ].
        recoveredBlock195Block217Step = 238 ifTrue: [
            recoveredBlock195Block217Stack1 := (recoveredBlock195Block217Stack1) dependentParametersFor: (recoveredBlock195Block217Stack2).
            recoveredBlock195Block217PC := 240.
        ].
        recoveredBlock195Block217Step = 240 ifTrue: [
            recoveredBlock195Block217Local3 := recoveredBlock195Block217Stack1.
            recoveredBlock195Block217PC := 243.
        ].
        recoveredBlock195Block217Step = 243 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredArg1.
            recoveredBlock195Block217PC := 246.
        ].
        recoveredBlock195Block217Step = 246 ifTrue: [
            recoveredBlock195Block217Stack2 := [:recoveredBlock195Block217Block246Arg1 | 
    | recoveredBlock195Block217Block246Value0 recoveredBlock195Block217Block246Value1 recoveredBlock195Block217Block246Value2 recoveredBlock195Block217Block246Value3 recoveredBlock195Block217Block246Value4 |
    recoveredBlock195Block217Block246Value0 := recoveredBlock195Block217Local3.
    recoveredBlock195Block217Block246Value1 := (recoveredBlock195Block217Block246Value0) values.
    recoveredBlock195Block217Block246Value2 := recoveredBlock195Block217Block246Arg1.
    recoveredBlock195Block217Block246Value3 := (recoveredBlock195Block217Block246Value2) aliasName.
    recoveredBlock195Block217Block246Value4 := (recoveredBlock195Block217Block246Value1) includes: (recoveredBlock195Block217Block246Value3).
    recoveredBlock195Block217Block246Value4
].
            recoveredBlock195Block217PC := 263.
        ].
        recoveredBlock195Block217Step = 263 ifTrue: [
            recoveredBlock195Block217Stack3 := [].
            recoveredBlock195Block217PC := 265.
        ].
        recoveredBlock195Block217Step = 265 ifTrue: [
            recoveredBlock195Block217Stack1 := (recoveredBlock195Block217Stack1) detect: (recoveredBlock195Block217Stack2) ifNone: (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 267.
        ].
        recoveredBlock195Block217Step = 267 ifTrue: [
            recoveredBlock195Block217Stack2 := recoveredBlock195Block217Stack1.
            recoveredBlock195Block217PC := 268.
        ].
        recoveredBlock195Block217Step = 268 ifTrue: [
            recoveredBlock195Block217Local2 := recoveredBlock195Block217Stack2.
            recoveredBlock195Block217PC := 271.
        ].
        recoveredBlock195Block217Step = 271 ifTrue: [
            (recoveredBlock195Block217Stack1 == nil) ifTrue: [recoveredBlock195Block217PC := 380] ifFalse: [recoveredBlock195Block217PC := 274].
        ].
        recoveredBlock195Block217Step = 274 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredLocal1.
            recoveredBlock195Block217PC := 277.
        ].
        recoveredBlock195Block217Step = 277 ifTrue: [
            recoveredBlock195Block217Stack2 := recoveredBlock195Block217Local2.
            recoveredBlock195Block217PC := 280.
        ].
        recoveredBlock195Block217Step = 280 ifTrue: [
            recoveredBlock195Block217Stack3 := [
    | recoveredBlock195Block217Block280Value0 recoveredBlock195Block217Block280Value1 recoveredBlock195Block217Block280Value2 recoveredBlock195Block217Block280Value3 recoveredBlock195Block217Block280Value4 |
    recoveredBlock195Block217Block280Value0 := recoveredLocal1.
    recoveredBlock195Block217Block280Value1 := recoveredBlock195Block217Local2.
    recoveredBlock195Block217Block280Value2 := OrderedCollection.
    recoveredBlock195Block217Block280Value3 := (recoveredBlock195Block217Block280Value2) new.
    recoveredBlock195Block217Block280Value4 := (recoveredBlock195Block217Block280Value0) at: (recoveredBlock195Block217Block280Value1) put: (recoveredBlock195Block217Block280Value3).
    recoveredBlock195Block217Block280Value4
].
            recoveredBlock195Block217PC := 298.
        ].
        recoveredBlock195Block217Step = 298 ifTrue: [
            recoveredBlock195Block217Stack1 := (recoveredBlock195Block217Stack1) at: (recoveredBlock195Block217Stack2) ifAbsent: (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 300.
        ].
        recoveredBlock195Block217Step = 300 ifTrue: [
            recoveredLocal2 := recoveredBlock195Block217Stack1.
            recoveredBlock195Block217PC := 303.
        ].
        recoveredBlock195Block217Step = 303 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredLocal2.
            recoveredBlock195Block217PC := 306.
        ].
        recoveredBlock195Block217Step = 306 ifTrue: [
            recoveredBlock195Block217Stack2 := $'.
            recoveredBlock195Block217PC := 310.
        ].
        recoveredBlock195Block217Step = 310 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) asString.
            recoveredBlock195Block217PC := 312.
        ].
        recoveredBlock195Block217Step = 312 ifTrue: [
            recoveredBlock195Block217Stack3 := recoveredBlock195Block217Local2.
            recoveredBlock195Block217PC := 315.
        ].
        recoveredBlock195Block217Step = 315 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) elementName.
            recoveredBlock195Block217PC := 317.
        ].
        recoveredBlock195Block217Step = 317 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 319.
        ].
        recoveredBlock195Block217Step = 319 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 322.
        ].
        recoveredBlock195Block217Step = 322 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 324.
        ].
        recoveredBlock195Block217Step = 324 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 326.
        ].
        recoveredBlock195Block217Step = 326 ifTrue: [
            recoveredBlock195Block217Stack3 := ' is used in dependent parameter '.
            recoveredBlock195Block217PC := 328.
        ].
        recoveredBlock195Block217Step = 328 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 330.
        ].
        recoveredBlock195Block217Step = 330 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 334.
        ].
        recoveredBlock195Block217Step = 334 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 336.
        ].
        recoveredBlock195Block217Step = 336 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 338.
        ].
        recoveredBlock195Block217Step = 338 ifTrue: [
            recoveredBlock195Block217Stack3 := recoveredBlock195Arg1.
            recoveredBlock195Block217PC := 341.
        ].
        recoveredBlock195Block217Step = 341 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) elementName.
            recoveredBlock195Block217PC := 343.
        ].
        recoveredBlock195Block217Step = 343 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 345.
        ].
        recoveredBlock195Block217Step = 345 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 348.
        ].
        recoveredBlock195Block217Step = 348 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 350.
        ].
        recoveredBlock195Block217Step = 350 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 352.
        ].
        recoveredBlock195Block217Step = 352 ifTrue: [
            recoveredBlock195Block217Stack3 := ' of data '.
            recoveredBlock195Block217PC := 354.
        ].
        recoveredBlock195Block217Step = 354 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 356.
        ].
        recoveredBlock195Block217Step = 356 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 360.
        ].
        recoveredBlock195Block217Step = 360 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 362.
        ].
        recoveredBlock195Block217Step = 362 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 364.
        ].
        recoveredBlock195Block217Step = 364 ifTrue: [
            recoveredBlock195Block217Stack3 := recoveredBlock195Block217Arg1.
            recoveredBlock195Block217PC := 367.
        ].
        recoveredBlock195Block217Step = 367 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) label.
            recoveredBlock195Block217PC := 369.
        ].
        recoveredBlock195Block217Step = 369 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 371.
        ].
        recoveredBlock195Block217Step = 371 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 374.
        ].
        recoveredBlock195Block217Step = 374 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 376.
        ].
        recoveredBlock195Block217Step = 376 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 378.
        ].
        recoveredBlock195Block217Step = 378 ifTrue: [
            (recoveredBlock195Block217Stack1) add: (recoveredBlock195Block217Stack2).
            recoveredBlock195Block217PC := 380.
        ].
        recoveredBlock195Block217Step = 380 ifTrue: [
            recoveredBlock195Block217Stack1 := nil.
            recoveredBlock195Block217PC := 381.
        ].
        recoveredBlock195Block217Step = 381 ifTrue: [
            recoveredBlock195Block217Stack2 := recoveredBlock195Block217Stack1.
            recoveredBlock195Block217PC := 382.
        ].
        recoveredBlock195Block217Step = 382 ifTrue: [
            recoveredBlock195Block217Local3 := recoveredBlock195Block217Stack2.
            recoveredBlock195Block217PC := 385.
        ].
        recoveredBlock195Block217Step = 385 ifTrue: [
            recoveredBlock195Block217Local2 := recoveredBlock195Block217Stack1.
            recoveredBlock195Block217PC := 388.
        ].
        recoveredBlock195Block217Step = 388 ifTrue: [
            recoveredBlock195Block217Stack1 := nil.
            recoveredBlock195Block217PC := 389.
        ].
        recoveredBlock195Block217Step = 389 ifTrue: [
            recoveredBlock195Block217Stack2 := recoveredBlock195Arg1.
            recoveredBlock195Block217PC := 392.
        ].
        recoveredBlock195Block217Step = 392 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) isReference.
            recoveredBlock195Block217PC := 394.
        ].
        recoveredBlock195Block217Step = 394 ifTrue: [
            (recoveredBlock195Block217Stack2) ifTrue: [recoveredBlock195Block217PC := 398] ifFalse: [recoveredBlock195Block217PC := 582].
        ].
        recoveredBlock195Block217Step = 398 ifTrue: [
            recoveredBlock195Block217PC := 399.
        ].
        recoveredBlock195Block217Step = 399 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredBlock195Block217Arg1.
            recoveredBlock195Block217PC := 402.
        ].
        recoveredBlock195Block217Step = 402 ifTrue: [
            recoveredBlock195Block217Stack2 := recoveredBlock195Arg1.
            recoveredBlock195Block217PC := 405.
        ].
        recoveredBlock195Block217Step = 405 ifTrue: [
            recoveredBlock195Block217Stack1 := (recoveredBlock195Block217Stack1) configForElement: (recoveredBlock195Block217Stack2).
            recoveredBlock195Block217PC := 407.
        ].
        recoveredBlock195Block217Step = 407 ifTrue: [
            recoveredBlock195Block217Local3 := recoveredBlock195Block217Stack1.
            recoveredBlock195Block217PC := 410.
        ].
        recoveredBlock195Block217Step = 410 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredBlock195Block217Local3.
            recoveredBlock195Block217PC := 413.
        ].
        recoveredBlock195Block217Step = 413 ifTrue: [
            (recoveredBlock195Block217Stack1 == nil) ifTrue: [recoveredBlock195Block217PC := 432] ifFalse: [recoveredBlock195Block217PC := 416].
        ].
        recoveredBlock195Block217Step = 416 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredBlock195Block217Local3.
            recoveredBlock195Block217PC := 419.
        ].
        recoveredBlock195Block217Step = 419 ifTrue: [
            recoveredBlock195Block217Stack1 := (recoveredBlock195Block217Stack1) isLocalReferenceData.
            recoveredBlock195Block217PC := 421.
        ].
        recoveredBlock195Block217Step = 421 ifTrue: [
            (recoveredBlock195Block217Stack1) ifTrue: [recoveredBlock195Block217PC := 424] ifFalse: [recoveredBlock195Block217PC := 432].
        ].
        recoveredBlock195Block217Step = 424 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredBlock195Block217Local3.
            recoveredBlock195Block217PC := 427.
        ].
        recoveredBlock195Block217Step = 427 ifTrue: [
            recoveredBlock195Block217Stack1 := (recoveredBlock195Block217Stack1) targetAlias.
            recoveredBlock195Block217PC := 429.
        ].
        recoveredBlock195Block217Step = 429 ifTrue: [
            recoveredBlock195Block217Local1 := recoveredBlock195Block217Stack1.
            recoveredBlock195Block217PC := 432.
        ].
        recoveredBlock195Block217Step = 432 ifTrue: [
            recoveredBlock195Block217Stack1 := nil.
            recoveredBlock195Block217PC := 433.
        ].
        recoveredBlock195Block217Step = 433 ifTrue: [
            recoveredBlock195Block217Stack2 := recoveredArg1.
            recoveredBlock195Block217PC := 436.
        ].
        recoveredBlock195Block217Step = 436 ifTrue: [
            recoveredBlock195Block217Stack3 := [:recoveredBlock195Block217Block436Arg1 | 
    | recoveredBlock195Block217Block436Value0 recoveredBlock195Block217Block436Value1 recoveredBlock195Block217Block436Value2 recoveredBlock195Block217Block436Value3 |
    recoveredBlock195Block217Block436Value0 := recoveredBlock195Block217Block436Arg1.
    recoveredBlock195Block217Block436Value1 := (recoveredBlock195Block217Block436Value0) aliasName.
    recoveredBlock195Block217Block436Value2 := recoveredBlock195Block217Local1.
    recoveredBlock195Block217Block436Value3 := (recoveredBlock195Block217Block436Value1) = (recoveredBlock195Block217Block436Value2).
    recoveredBlock195Block217Block436Value3
].
            recoveredBlock195Block217PC := 450.
        ].
        recoveredBlock195Block217Step = 450 ifTrue: [
            recoveredBlock195Block217Stack4 := [].
            recoveredBlock195Block217PC := 452.
        ].
        recoveredBlock195Block217Step = 452 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) detect: (recoveredBlock195Block217Stack3) ifNone: (recoveredBlock195Block217Stack4).
            recoveredBlock195Block217PC := 454.
        ].
        recoveredBlock195Block217Step = 454 ifTrue: [
            recoveredBlock195Block217Stack3 := recoveredBlock195Block217Stack2.
            recoveredBlock195Block217PC := 455.
        ].
        recoveredBlock195Block217Step = 455 ifTrue: [
            recoveredBlock195Block217Local2 := recoveredBlock195Block217Stack3.
            recoveredBlock195Block217PC := 458.
        ].
        recoveredBlock195Block217Step = 458 ifTrue: [
            (recoveredBlock195Block217Stack2 == nil) ifTrue: [recoveredBlock195Block217PC := 570] ifFalse: [recoveredBlock195Block217PC := 462].
        ].
        recoveredBlock195Block217Step = 462 ifTrue: [
            recoveredBlock195Block217PC := 463.
        ].
        recoveredBlock195Block217Step = 463 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredLocal1.
            recoveredBlock195Block217PC := 466.
        ].
        recoveredBlock195Block217Step = 466 ifTrue: [
            recoveredBlock195Block217Stack2 := recoveredBlock195Block217Local2.
            recoveredBlock195Block217PC := 469.
        ].
        recoveredBlock195Block217Step = 469 ifTrue: [
            recoveredBlock195Block217Stack3 := [
    | recoveredBlock195Block217Block469Value0 recoveredBlock195Block217Block469Value1 recoveredBlock195Block217Block469Value2 recoveredBlock195Block217Block469Value3 recoveredBlock195Block217Block469Value4 |
    recoveredBlock195Block217Block469Value0 := recoveredLocal1.
    recoveredBlock195Block217Block469Value1 := recoveredBlock195Block217Local2.
    recoveredBlock195Block217Block469Value2 := OrderedCollection.
    recoveredBlock195Block217Block469Value3 := (recoveredBlock195Block217Block469Value2) new.
    recoveredBlock195Block217Block469Value4 := (recoveredBlock195Block217Block469Value0) at: (recoveredBlock195Block217Block469Value1) put: (recoveredBlock195Block217Block469Value3).
    recoveredBlock195Block217Block469Value4
].
            recoveredBlock195Block217PC := 488.
        ].
        recoveredBlock195Block217Step = 488 ifTrue: [
            recoveredBlock195Block217Stack1 := (recoveredBlock195Block217Stack1) at: (recoveredBlock195Block217Stack2) ifAbsent: (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 490.
        ].
        recoveredBlock195Block217Step = 490 ifTrue: [
            recoveredLocal2 := recoveredBlock195Block217Stack1.
            recoveredBlock195Block217PC := 493.
        ].
        recoveredBlock195Block217Step = 493 ifTrue: [
            recoveredBlock195Block217Stack1 := recoveredLocal2.
            recoveredBlock195Block217PC := 496.
        ].
        recoveredBlock195Block217Step = 496 ifTrue: [
            recoveredBlock195Block217Stack2 := $'.
            recoveredBlock195Block217PC := 500.
        ].
        recoveredBlock195Block217Step = 500 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) asString.
            recoveredBlock195Block217PC := 502.
        ].
        recoveredBlock195Block217Step = 502 ifTrue: [
            recoveredBlock195Block217Stack3 := recoveredBlock195Block217Local2.
            recoveredBlock195Block217PC := 505.
        ].
        recoveredBlock195Block217Step = 505 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) elementName.
            recoveredBlock195Block217PC := 507.
        ].
        recoveredBlock195Block217Step = 507 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 509.
        ].
        recoveredBlock195Block217Step = 509 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 512.
        ].
        recoveredBlock195Block217Step = 512 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 514.
        ].
        recoveredBlock195Block217Step = 514 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 516.
        ].
        recoveredBlock195Block217Step = 516 ifTrue: [
            recoveredBlock195Block217Stack3 := ' get referenced in element '.
            recoveredBlock195Block217PC := 518.
        ].
        recoveredBlock195Block217Step = 518 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 520.
        ].
        recoveredBlock195Block217Step = 520 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 524.
        ].
        recoveredBlock195Block217Step = 524 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 526.
        ].
        recoveredBlock195Block217Step = 526 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 528.
        ].
        recoveredBlock195Block217Step = 528 ifTrue: [
            recoveredBlock195Block217Stack3 := recoveredBlock195Arg1.
            recoveredBlock195Block217PC := 531.
        ].
        recoveredBlock195Block217Step = 531 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) elementName.
            recoveredBlock195Block217PC := 533.
        ].
        recoveredBlock195Block217Step = 533 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 535.
        ].
        recoveredBlock195Block217Step = 535 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 538.
        ].
        recoveredBlock195Block217Step = 538 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 540.
        ].
        recoveredBlock195Block217Step = 540 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 542.
        ].
        recoveredBlock195Block217Step = 542 ifTrue: [
            recoveredBlock195Block217Stack3 := ' in data '.
            recoveredBlock195Block217PC := 544.
        ].
        recoveredBlock195Block217Step = 544 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 546.
        ].
        recoveredBlock195Block217Step = 546 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 550.
        ].
        recoveredBlock195Block217Step = 550 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 552.
        ].
        recoveredBlock195Block217Step = 552 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 554.
        ].
        recoveredBlock195Block217Step = 554 ifTrue: [
            recoveredBlock195Block217Stack3 := recoveredBlock195Block217Arg1.
            recoveredBlock195Block217PC := 557.
        ].
        recoveredBlock195Block217Step = 557 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) label.
            recoveredBlock195Block217PC := 559.
        ].
        recoveredBlock195Block217Step = 559 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 561.
        ].
        recoveredBlock195Block217Step = 561 ifTrue: [
            recoveredBlock195Block217Stack3 := $'.
            recoveredBlock195Block217PC := 564.
        ].
        recoveredBlock195Block217Step = 564 ifTrue: [
            recoveredBlock195Block217Stack3 := (recoveredBlock195Block217Stack3) asString.
            recoveredBlock195Block217PC := 566.
        ].
        recoveredBlock195Block217Step = 566 ifTrue: [
            recoveredBlock195Block217Stack2 := (recoveredBlock195Block217Stack2) , (recoveredBlock195Block217Stack3).
            recoveredBlock195Block217PC := 568.
        ].
        recoveredBlock195Block217Step = 568 ifTrue: [
            recoveredBlock195Block217Stack1 := (recoveredBlock195Block217Stack1) add: (recoveredBlock195Block217Stack2).
            recoveredBlock195Block217PC := 570.
        ].
        recoveredBlock195Block217Step = 570 ifTrue: [
            recoveredBlock195Block217Stack2 := nil.
            recoveredBlock195Block217PC := 571.
        ].
        recoveredBlock195Block217Step = 571 ifTrue: [
            recoveredBlock195Block217Stack3 := recoveredBlock195Block217Stack2.
            recoveredBlock195Block217PC := 572.
        ].
        recoveredBlock195Block217Step = 572 ifTrue: [
            recoveredBlock195Block217Local3 := recoveredBlock195Block217Stack3.
            recoveredBlock195Block217PC := 575.
        ].
        recoveredBlock195Block217Step = 575 ifTrue: [
            recoveredBlock195Block217Stack3 := recoveredBlock195Block217Stack2.
            recoveredBlock195Block217PC := 576.
        ].
        recoveredBlock195Block217Step = 576 ifTrue: [
            recoveredBlock195Block217Local2 := recoveredBlock195Block217Stack3.
            recoveredBlock195Block217PC := 579.
        ].
        recoveredBlock195Block217Step = 579 ifTrue: [
            recoveredBlock195Block217Local1 := recoveredBlock195Block217Stack2.
            recoveredBlock195Block217PC := 582.
        ].
        recoveredBlock195Block217Step = 582 ifTrue: [
            recoveredBlock195Block217Result := recoveredBlock195Block217Stack1.
            recoveredBlock195Block217Done := true.
        ].
    ].
    recoveredBlock195Block217Result
].
            recoveredBlock195PC := 583.
        ].
        recoveredBlock195Step = 583 ifTrue: [
            recoveredBlock195Stack1 := (recoveredBlock195Stack1) do: (recoveredBlock195Stack2).
            recoveredBlock195PC := 585.
        ].
        recoveredBlock195Step = 585 ifTrue: [
            recoveredBlock195Result := recoveredBlock195Stack1.
            recoveredBlock195Done := true.
        ].
    ].
    recoveredBlock195Result
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    (self) potentiallyUsedelementsDict: (recoveredValue12).
    ^self
! !

