"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d4e0; bytecode file offset 0x92209c"
!ASDParameterMappingTableWidget methodsFor: 'recovered'!
leftColumnName
    ^'Imported Parameter'
! !

"ASDBase.ic method 0x20021d34; bytecode file offset 0x92209c"
!ASDParameterMappingTableWidget methodsFor: 'recovered'!
rightColumnName
    ^'Calibration Parameter'
! !

"ASDBase.ic method 0x20051100; bytecode file offset 0x94f0e0"
!ASDParameterMappingTableWidget methodsFor: 'recovered'!
mappingLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) parameterMappingsLabel.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ec50; bytecode file offset 0x95b5ec"
!ASDParameterMappingTableWidget methodsFor: 'recovered'!
menuAutoMappingKeep
    (self) autoMapOverwrite: (false).
    ^self
! !

"ASDBase.ic method 0x2007a13c; bytecode file offset 0x97c330"
!ASDParameterMappingTableWidget methodsFor: 'recovered'!
showFirstSortColumn
    ^false
! !

"ASDBase.ic method 0x200f8d3c; bytecode file offset 0x9f5620"
!ASDParameterMappingTableWidget methodsFor: 'recovered'!
parameterMappingObjects
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (self) mappingType.
    recoveredValue2 := (self) sourceObjects.
    recoveredValue3 := (self) targetObjects.
    recoveredValue4 := (recoveredValue0) parameterMappingsType: (recoveredValue1) updatePropertiesForSourceObjects: (recoveredValue2) targetObjects: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201b19d4; bytecode file offset 0xaae2a8"
!ASDParameterMappingTableWidget methodsFor: 'recovered'!
mappingHasChanged
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super mappingHasChanged.
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (self) mappingObjects.
    recoveredValue2 := (self) mappingType.
    (recoveredValue0) uiMappings: (recoveredValue1) type: (recoveredValue2).
    recoveredValue3 := (self) uiController.
    recoveredValue4 := (recoveredValue3) userInterface.
    (recoveredValue4) modified: (true).
    ^self
! !

"ASDBase.ic method 0x20487980; bytecode file offset 0xd842c8"
!ASDParameterMappingTableWidget methodsFor: 'recovered'!
updateMapping
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := SGMonitorStreamDummy.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) create.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := [
    | recoveredBlock6Block15Stack0 recoveredBlock6Block15Stack1 recoveredBlock6Block15Stack2 recoveredBlock6Block15Stack3 recoveredBlock6Block15Stack4 recoveredBlock6Block15PC recoveredBlock6Block15Step recoveredBlock6Block15Done recoveredBlock6Block15Result |
    recoveredBlock6Block15Stack0 := self.
    recoveredBlock6Block15PC := 22.
    recoveredBlock6Block15Done := false.
    [recoveredBlock6Block15Done not] whileTrue: [
        recoveredBlock6Block15Step := recoveredBlock6Block15PC.
        recoveredBlock6Block15Step = 22 ifTrue: [
            recoveredBlock6Block15Stack1 := self.
            recoveredBlock6Block15PC := 23.
        ].
        recoveredBlock6Block15Step = 23 ifTrue: [
            recoveredBlock6Block15Stack1 := (recoveredBlock6Block15Stack1) item.
            recoveredBlock6Block15PC := 24.
        ].
        recoveredBlock6Block15Step = 24 ifTrue: [
            recoveredBlock6Block15Stack1 := (recoveredBlock6Block15Stack1) parameterMappingSourceObjects.
            recoveredBlock6Block15PC := 26.
        ].
        recoveredBlock6Block15Step = 26 ifTrue: [
            (recoveredBlock6Block15Stack0) sourceObjects: (recoveredBlock6Block15Stack1).
            recoveredBlock6Block15PC := 28.
        ].
        recoveredBlock6Block15Step = 28 ifTrue: [
            recoveredBlock6Block15Stack0 := self.
            recoveredBlock6Block15PC := 29.
        ].
        recoveredBlock6Block15Step = 29 ifTrue: [
            recoveredBlock6Block15Stack1 := self.
            recoveredBlock6Block15PC := 30.
        ].
        recoveredBlock6Block15Step = 30 ifTrue: [
            recoveredBlock6Block15Stack1 := (recoveredBlock6Block15Stack1) item.
            recoveredBlock6Block15PC := 31.
        ].
        recoveredBlock6Block15Step = 31 ifTrue: [
            recoveredBlock6Block15Stack1 := (recoveredBlock6Block15Stack1) parameterMappingTargetObjects.
            recoveredBlock6Block15PC := 33.
        ].
        recoveredBlock6Block15Step = 33 ifTrue: [
            (recoveredBlock6Block15Stack0) targetObjects: (recoveredBlock6Block15Stack1).
            recoveredBlock6Block15PC := 35.
        ].
        recoveredBlock6Block15Step = 35 ifTrue: [
            recoveredBlock6Block15Stack0 := self.
            recoveredBlock6Block15PC := 36.
        ].
        recoveredBlock6Block15Step = 36 ifTrue: [
            recoveredBlock6Block15Stack1 := self.
            recoveredBlock6Block15PC := 37.
        ].
        recoveredBlock6Block15Step = 37 ifTrue: [
            recoveredBlock6Block15Stack1 := (recoveredBlock6Block15Stack1) parameterMappingObjects.
            recoveredBlock6Block15PC := 39.
        ].
        recoveredBlock6Block15Step = 39 ifTrue: [
            recoveredBlock6Block15Stack2 := OrderedCollection.
            recoveredBlock6Block15PC := 41.
        ].
        recoveredBlock6Block15Step = 41 ifTrue: [
            recoveredBlock6Block15Stack2 := (recoveredBlock6Block15Stack2) new.
            recoveredBlock6Block15PC := 43.
        ].
        recoveredBlock6Block15Step = 43 ifTrue: [
            recoveredBlock6Block15Stack3 := [:block28102d9cArg1 :block28102d9cArg2 | 
    | block28102d9cValue0 block28102d9cValue1 block28102d9cValue2 |
    block28102d9cValue0 := block28102d9cArg1.
    block28102d9cValue1 := block28102d9cValue0.
    block28102d9cValue2 := block28102d9cArg2.
    (block28102d9cValue1) addAll: (block28102d9cValue2).
    block28102d9cValue0
].
            recoveredBlock6Block15PC := 45.
        ].
        recoveredBlock6Block15Step = 45 ifTrue: [
            recoveredBlock6Block15PC := 54.
        ].
        recoveredBlock6Block15Step = 54 ifTrue: [
            recoveredBlock6Block15Stack1 := (recoveredBlock6Block15Stack1) inject: (recoveredBlock6Block15Stack2) into: (recoveredBlock6Block15Stack3).
            recoveredBlock6Block15PC := 56.
        ].
        recoveredBlock6Block15Step = 56 ifTrue: [
            recoveredBlock6Block15Stack0 := (recoveredBlock6Block15Stack0) mappingObjects: (recoveredBlock6Block15Stack1).
            recoveredBlock6Block15PC := 58.
        ].
        recoveredBlock6Block15Step = 58 ifTrue: [
            recoveredBlock6Block15Result := recoveredBlock6Block15Stack0.
            recoveredBlock6Block15Done := true.
        ].
    ].
    recoveredBlock6Block15Result
].
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Stack3 := 'Collecting Mapping Objects'.
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            (recoveredBlock6Stack1) measureTimeFor: (recoveredBlock6Stack2) description: (recoveredBlock6Stack3).
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) mappingObjects.
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            recoveredBlock6Stack1 := [:block28102dc0Arg1 | 
    | block28102dc0Value0 block28102dc0Value1 |
    block28102dc0Value0 := block28102dc0Arg1.
    block28102dc0Value1 := (block28102dc0Value0) isMapped.
    block28102dc0Value1
].
            recoveredBlock6PC := 67.
        ].
        recoveredBlock6Step = 67 ifTrue: [
            recoveredBlock6PC := 74.
        ].
        recoveredBlock6Step = 74 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) select: (recoveredBlock6Stack1).
            recoveredBlock6PC := 76.
        ].
        recoveredBlock6Step = 76 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block76Arg1 | 
    | recoveredBlock6Block76Value0 recoveredBlock6Block76Value1 recoveredBlock6Block76Value2 recoveredBlock6Block76Value3 recoveredBlock6Block76Value4 |
    recoveredBlock6Block76Value0 := recoveredBlock6Block76Arg1.
    recoveredBlock6Block76Value1 := (recoveredBlock6Block76Value0) sourceObject.
    (self) removeFromSourceObjects: (recoveredBlock6Block76Value1).
    recoveredBlock6Block76Value2 := recoveredBlock6Block76Arg1.
    recoveredBlock6Block76Value3 := (recoveredBlock6Block76Value2) targetObject.
    recoveredBlock6Block76Value4 := (self) removeFromTargetObjects: (recoveredBlock6Block76Value3).
    recoveredBlock6Block76Value4
].
            recoveredBlock6PC := 94.
        ].
        recoveredBlock6Step = 94 ifTrue: [
            (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 96.
        ].
        recoveredBlock6Step = 96 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 97.
        ].
        recoveredBlock6Step = 97 ifTrue: [
            (recoveredBlock6Stack0) fillFilters.
            recoveredBlock6PC := 99.
        ].
        recoveredBlock6Step = 99 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 100.
        ].
        recoveredBlock6Step = 100 ifTrue: [
            (recoveredBlock6Stack0) updateLeftList.
            recoveredBlock6PC := 102.
        ].
        recoveredBlock6Step = 102 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 103.
        ].
        recoveredBlock6Step = 103 ifTrue: [
            (recoveredBlock6Stack0) updateRightList.
            recoveredBlock6PC := 105.
        ].
        recoveredBlock6Step = 105 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 106.
        ].
        recoveredBlock6Step = 106 ifTrue: [
            (recoveredBlock6Stack0) updateMappingList.
            recoveredBlock6PC := 108.
        ].
        recoveredBlock6Step = 108 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 109.
        ].
        recoveredBlock6Step = 109 ifTrue: [
            (recoveredBlock6Stack0) updateLabelMappingComplete.
            recoveredBlock6PC := 111.
        ].
        recoveredBlock6Step = 111 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 112.
        ].
        recoveredBlock6Step = 112 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) uiController.
            recoveredBlock6PC := 114.
        ].
        recoveredBlock6Step = 114 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) graphPaneController.
            recoveredBlock6PC := 116.
        ].
        recoveredBlock6Step = 116 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 117.
        ].
        recoveredBlock6Step = 117 ifTrue: [
            (recoveredBlock6Stack0) graphicsModified: (recoveredBlock6Stack1).
            recoveredBlock6PC := 119.
        ].
        recoveredBlock6Step = 119 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 120.
        ].
        recoveredBlock6Step = 120 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) uiController.
            recoveredBlock6PC := 122.
        ].
        recoveredBlock6Step = 122 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) userInterface.
            recoveredBlock6PC := 124.
        ].
        recoveredBlock6Step = 124 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) updateToolbarSensitive.
            recoveredBlock6PC := 126.
        ].
        recoveredBlock6Step = 126 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204ad634; bytecode file offset 0xda9f50"
!ASDParameterMappingTableWidget methodsFor: 'recovered'!
createMappingMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super createMappingMenu.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'menuAutoMapping'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := '~Auto-Mapping'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := (self) item.
    recoveredBlock18Value1 := (recoveredBlock18Value0) modifiable.
    recoveredBlock18Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'menuExportMapping'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := '~Export...'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'menuImportMapping'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := '~Import...'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock67Value0 recoveredBlock67Value1 |
    recoveredBlock67Value0 := (self) item.
    recoveredBlock67Value1 := (recoveredBlock67Value0) modifiable.
    recoveredBlock67Value1
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEtasInternalMode.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'menuInspectMapping'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) etasInternalMenuLabelPrefix.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := 'Inspect Mapping'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) addWithID: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) visible: (recoveredStack4) for: (recoveredStack5) accelerator: (recoveredStack6) acceleratorText: (recoveredStack7).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

