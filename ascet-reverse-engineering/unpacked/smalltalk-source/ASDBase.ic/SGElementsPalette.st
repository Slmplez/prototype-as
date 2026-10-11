"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005ecc; bytecode file offset 0x902de8"
!SGElementsPalette methodsFor: 'recovered'!
charTableTypeBox: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2003db48; bytecode file offset 0x93bf94"
!SGElementsPalette methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200450fc; bytecode file offset 0x9451f8"
!SGElementsPalette methodsFor: 'recovered'!
charTableTypeBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ElementsSelectionTableType').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004738c; bytecode file offset 0x9451f8"
!SGElementsPalette methodsFor: 'recovered'!
ctTypeBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ElementsSelectionScalarArray').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20459638; bytecode file offset 0xd55f50"
!SGElementsPalette methodsFor: 'recovered'!
createCharTableTypeBox: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwLabel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ElementsSelectionTableTypeLabel'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := [:block281000c0Arg1 | 
    | block281000c0Value0 block281000c0Value1 block281000c0Value2 block281000c0Value3 |
    block281000c0Value0 := block281000c0Arg1.
    block281000c0Value1 := block281000c0Value0.
    (block281000c0Value1) labelString: ('Type of table: ').
    block281000c0Value2 := block281000c0Value0.
    (block281000c0Value2) width: (100).
    block281000c0Value3 := block281000c0Value0.
    (block281000c0Value3) height: (20).
    block281000c0Value0
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'ElementsSelectionTableTypeLabel'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := CwComboBox.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'ElementsSelectionTableType'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 recoveredBlock51Value7 recoveredBlock51Value8 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := recoveredBlock51Value0.
    recoveredBlock51Value2 := (self) userInterface.
    recoveredBlock51Value3 := (recoveredBlock51Value2) specialWidgetStrings.
    (recoveredBlock51Value1) items: (recoveredBlock51Value3).
    recoveredBlock51Value4 := recoveredBlock51Value0.
    recoveredBlock51Value5 := (self) userInterface.
    recoveredBlock51Value6 := (recoveredBlock51Value5) specialWidgetStrings.
    recoveredBlock51Value7 := (recoveredBlock51Value6) size.
    (recoveredBlock51Value4) visibleItemCount: (recoveredBlock51Value7).
    recoveredBlock51Value8 := (recoveredBlock51Value0) editable: (false).
    recoveredBlock51Value8
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) specialWidgetStrings.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'ElementsSelectionTableType'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := 'charTableTypeBox:clientData:callData:'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20486430; bytecode file offset 0xd82d5c"
!SGElementsPalette methodsFor: 'recovered'!
createCTTypeBox: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwLabel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ElementsSelectionScalarArrayLabel'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := [:block28102c7cArg1 | 
    | block28102c7cValue0 block28102c7cValue1 block28102c7cValue2 block28102c7cValue3 |
    block28102c7cValue0 := block28102c7cArg1.
    block28102c7cValue1 := block28102c7cValue0.
    (block28102c7cValue1) labelString: ('Element Type: ').
    block28102c7cValue2 := block28102c7cValue0.
    (block28102c7cValue2) width: (100).
    block28102c7cValue3 := block28102c7cValue0.
    (block28102c7cValue3) height: (20).
    block28102c7cValue0
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'ElementsSelectionScalarArrayLabel'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := CwComboBox.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'ElementsSelectionScalarArray'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := [:block28102ca0Arg1 | 
    | block28102ca0Value0 block28102ca0Value1 block28102ca0Value2 block28102ca0Value3 |
    block28102ca0Value0 := block28102ca0Arg1.
    block28102ca0Value1 := block28102ca0Value0.
    (block28102ca0Value1) items: (#('Scalar' 'Array')).
    block28102ca0Value2 := block28102ca0Value0.
    (block28102ca0Value2) visibleItemCount: (2).
    block28102ca0Value3 := (block28102ca0Value0) editable: (false).
    block28102ca0Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'Scalar'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 recoveredBlock87Value3 |
    recoveredBlock87Value0 := (self) userInterface.
    recoveredBlock87Value1 := (recoveredBlock87Value0) registeredToolbarItems.
    recoveredBlock87Value2 := (recoveredBlock87Value1) at: ('ElementsSelectionScalarArray').
    recoveredBlock87Value3 := (recoveredBlock87Value2) tooltip.
    recoveredBlock87Value3
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'ElementsSelectionScalarArray'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := 'ctTypeBoxSingle:clientData:callData:'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20546aa8; bytecode file offset 0xe433b4"
!SGElementsPalette methodsFor: 'recovered'!
addButton: recoveredArg1 widgetID: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'ElementsInput'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := (recoveredStack7) asString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := (recoveredStack8) class.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack8 := (recoveredStack8) iconSize.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack6 := (recoveredStack6) returnIconWithName: (recoveredStack7).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 |
    recoveredBlock38Value0 := (self) userInterface.
    recoveredBlock38Value1 := (recoveredBlock38Value0) addInput.
    recoveredBlock38Value1
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) addButton: (recoveredStack4) widgetID: (recoveredStack5) icon: (recoveredStack6) userData: (recoveredStack7).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'ElementsOutput'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack7 := (recoveredStack7) asString.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack8 := (recoveredStack8) class.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack8 := (recoveredStack8) iconSize.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack6 := (recoveredStack6) returnIconWithName: (recoveredStack7).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock90Value0 recoveredBlock90Value1 |
    recoveredBlock90Value0 := (self) userInterface.
    recoveredBlock90Value1 := (recoveredBlock90Value0) addOutput.
    recoveredBlock90Value1
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) addButton: (recoveredStack4) widgetID: (recoveredStack5) icon: (recoveredStack6) userData: (recoveredStack7).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'ElementsSelectionTableType'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) createCharTableTypeBox: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'ElementsSelectionScalarArray'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) createCTTypeBox: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack7 := (recoveredStack7) asString.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack8 := (recoveredStack8) class.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack8 := (recoveredStack8) iconSize.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack6 := (recoveredStack6) returnIconWithName: (recoveredStack7).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock168Stack0 recoveredBlock168Stack1 recoveredBlock168Stack2 recoveredBlock168PC recoveredBlock168Step recoveredBlock168Done recoveredBlock168Result |
    recoveredBlock168Stack0 := self.
    recoveredBlock168PC := 174.
    recoveredBlock168Done := false.
    [recoveredBlock168Done not] whileTrue: [
        recoveredBlock168Step := recoveredBlock168PC.
        recoveredBlock168Step = 174 ifTrue: [
            recoveredBlock168Stack0 := (recoveredBlock168Stack0) userInterface.
            recoveredBlock168PC := 176.
        ].
        recoveredBlock168Step = 176 ifTrue: [
            recoveredBlock168Stack0 := (recoveredBlock168Stack0) registeredToolbarItems.
            recoveredBlock168PC := 178.
        ].
        recoveredBlock168Step = 178 ifTrue: [
            recoveredBlock168Stack1 := recoveredArg2.
            recoveredBlock168PC := 181.
        ].
        recoveredBlock168Step = 181 ifTrue: [
            recoveredBlock168Stack0 := (recoveredBlock168Stack0) at: (recoveredBlock168Stack1).
            recoveredBlock168PC := 183.
        ].
        recoveredBlock168Step = 183 ifTrue: [
            recoveredBlock168Stack0 := (recoveredBlock168Stack0) type.
            recoveredBlock168PC := 185.
        ].
        recoveredBlock168Step = 185 ifTrue: [
            recoveredBlock168Stack1 := 'CTElement'.
            recoveredBlock168PC := 187.
        ].
        recoveredBlock168Step = 187 ifTrue: [
            (recoveredBlock168Stack0 ~~ recoveredBlock168Stack1) ifTrue: [recoveredBlock168PC := 202] ifFalse: [recoveredBlock168PC := 190].
        ].
        recoveredBlock168Step = 190 ifTrue: [
            recoveredBlock168Stack0 := self.
            recoveredBlock168PC := 191.
        ].
        recoveredBlock168Step = 191 ifTrue: [
            recoveredBlock168Stack0 := (recoveredBlock168Stack0) userInterface.
            recoveredBlock168PC := 193.
        ].
        recoveredBlock168Step = 193 ifTrue: [
            recoveredBlock168Stack1 := recoveredArg2.
            recoveredBlock168PC := 196.
        ].
        recoveredBlock168Step = 196 ifTrue: [
            recoveredBlock168Stack0 := (recoveredBlock168Stack0) addCTElementName: (recoveredBlock168Stack1).
            recoveredBlock168PC := 198.
        ].
        recoveredBlock168Step = 198 ifTrue: [
            recoveredBlock168PC := 210.
        ].
        recoveredBlock168Step = 202 ifTrue: [
            recoveredBlock168Stack0 := self.
            recoveredBlock168PC := 203.
        ].
        recoveredBlock168Step = 203 ifTrue: [
            recoveredBlock168Stack0 := (recoveredBlock168Stack0) userInterface.
            recoveredBlock168PC := 205.
        ].
        recoveredBlock168Step = 205 ifTrue: [
            recoveredBlock168Stack1 := recoveredArg2.
            recoveredBlock168PC := 208.
        ].
        recoveredBlock168Step = 208 ifTrue: [
            recoveredBlock168Stack0 := (recoveredBlock168Stack0) addElementName: (recoveredBlock168Stack1).
            recoveredBlock168PC := 210.
        ].
        recoveredBlock168Step = 210 ifTrue: [
            recoveredBlock168Result := recoveredBlock168Stack0.
            recoveredBlock168Done := true.
        ].
    ].
    recoveredBlock168Result
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) addButton: (recoveredStack4) widgetID: (recoveredStack5) icon: (recoveredStack6) userData: (recoveredStack7).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

