"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x200000bc; bytecode file offset 0xe340"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
getExecuterDelimiter
    ^'.'
! !

"ASDGenUtil_base.ic method 0x20000c6c; bytecode file offset 0xee1c"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
executerDeselectElements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidget.
    recoveredValue1 := (recoveredValue0) classList.
    (recoveredValue1) deselectAllItems.
    (self) selectObjects: (#()).
    ^self
! !

"ASDGenUtil_base.ic method 0x20000ea0; bytecode file offset 0xf050"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
executerSelectElementFromString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) executerDeselectElements.
    recoveredValue0 := (self) dbWidget.
    recoveredValue1 := (recoveredValue0) classList.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) selectItem: (recoveredValue2) equalMethodSimple: ('label') notify: (true).
    ^self
! !

"ASDGenUtil_base.ic method 0x20001aac; bytecode file offset 0xfc60"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
executerCollapseAll
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) dbWidget.
    recoveredValue1 := (recoveredValue0) classList.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue1) items.
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) indexOfItem: (recoveredBlock11Value1).
    recoveredBlock11Local1 := recoveredBlock11Value2.
    recoveredBlock11Value3 := recoveredLocal1.
    recoveredBlock11Value4 := recoveredBlock11Local1.
    recoveredBlock11Value5 := (recoveredBlock11Value3) collapsePos: (recoveredBlock11Value4) notify: (true).
    recoveredBlock11Value5
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDGenUtil_base.ic method 0x20001d10; bytecode file offset 0xfecc"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
getExecuterHierarchyPathOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) getExecuterHierarchyPathOf: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) getExecuterDelimiter.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphObject.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) getActualName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x200025f4; bytecode file offset 0x107b0"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
executerFileOutSelectedDiagrams
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASCETSD.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) dbWidget.
    recoveredValue3 := (recoveredValue2) classList.
    recoveredValue4 := (recoveredValue3) selectedItems.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    (self) doExecuterFileOutSelectedSpecificationDiagramsFor: (recoveredBlock14Value0).
    recoveredBlock14Value1 := recoveredLocal3.
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) referencedComplexElementsForItem: (recoveredBlock14Value2).
    recoveredLocal1 := recoveredBlock14Value3.
    recoveredBlock14Value4 := recoveredLocal1.
    recoveredBlock14Value5 := [:recoveredBlock14Block35Arg1 | 
    | recoveredBlock14Block35Value0 recoveredBlock14Block35Value1 |
    recoveredBlock14Block35Value0 := recoveredBlock14Block35Arg1.
    recoveredBlock14Block35Value1 := (self) doExecuterFileOutSelectedSpecificationDiagramsFor: (recoveredBlock14Block35Value0).
    recoveredBlock14Block35Value1
].
    recoveredBlock14Value6 := (recoveredBlock14Value4) do: (recoveredBlock14Value5).
    recoveredBlock14Value6
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDGenUtil_base.ic method 0x20002904; bytecode file offset 0x10ac4"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
executerExpandCollapseSelectedElement
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 |
    recoveredBlock38Value0 := (self) dbWidget.
    recoveredBlock38Value1 := (recoveredBlock38Value0) classList.
    recoveredBlock38Value2 := recoveredLocal2.
    recoveredBlock38Value3 := (recoveredBlock38Value1) expandCollapsePos: (recoveredBlock38Value2) notify: (true).
    recoveredBlock38Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20003118; bytecode file offset 0x112f4"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
executerFileOutSelectedElementsTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) executerFileName: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedObjects.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isRootItem.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 76] ifFalse: [recoveredBlock26PC := 40].
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) dbObject.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            (recoveredBlock26Stack2 == nil) ifTrue: [recoveredBlock26PC := 76] ifFalse: [recoveredBlock26PC := 48].
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal2.
            recoveredBlock26PC := 52.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) pathString.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack3 := '\'.
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) , (recoveredBlock26Stack3).
            recoveredBlock26PC := 59.
        ].
        recoveredBlock26Step = 59 ifTrue: [
            (recoveredBlock26Stack1) nextPutAll: (recoveredBlock26Stack2).
            recoveredBlock26PC := 61.
        ].
        recoveredBlock26Step = 61 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal2.
            recoveredBlock26PC := 64.
        ].
        recoveredBlock26Step = 64 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) dbObject.
            recoveredBlock26PC := 67.
        ].
        recoveredBlock26Step = 67 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) globalIdString.
            recoveredBlock26PC := 69.
        ].
        recoveredBlock26Step = 69 ifTrue: [
            (recoveredBlock26Stack1) nextPutAll: (recoveredBlock26Stack2).
            recoveredBlock26PC := 71.
        ].
        recoveredBlock26Step = 71 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal2.
            recoveredBlock26PC := 74.
        ].
        recoveredBlock26Step = 74 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) cr.
            recoveredBlock26PC := 76.
        ].
        recoveredBlock26Step = 76 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x2000523c; bytecode file offset 0x13434"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
doExecuterFileOutSelectedSpecificationDiagramsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASCETSD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'publicSpecifications'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'privateSpecifications'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRead.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) publicSpecifications.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) getObject.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) privateSpecifications.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Stack0 recoveredBlock63Stack1 recoveredBlock63Stack2 recoveredBlock63Stack3 recoveredBlock63Stack4 recoveredBlock63PC recoveredBlock63Step recoveredBlock63Done recoveredBlock63Result |
    recoveredBlock63Stack0 := self.
    recoveredBlock63PC := 70.
    recoveredBlock63Done := false.
    [recoveredBlock63Done not] whileTrue: [
        recoveredBlock63Step := recoveredBlock63PC.
        recoveredBlock63Step = 70 ifTrue: [
            recoveredBlock63Stack1 := nil.
            recoveredBlock63PC := 71.
        ].
        recoveredBlock63Step = 71 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Arg1.
            recoveredBlock63PC := 74.
        ].
        recoveredBlock63Step = 74 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) specSourceOrNil.
            recoveredBlock63PC := 76.
        ].
        recoveredBlock63Step = 76 ifTrue: [
            (recoveredBlock63Stack2 == nil) ifTrue: [recoveredBlock63PC := 171] ifFalse: [recoveredBlock63PC := 80].
        ].
        recoveredBlock63Step = 80 ifTrue: [
            recoveredBlock63PC := 81.
        ].
        recoveredBlock63Step = 81 ifTrue: [
            recoveredBlock63Stack1 := recoveredLocal2.
            recoveredBlock63PC := 84.
        ].
        recoveredBlock63Step = 84 ifTrue: [
            recoveredBlock63Stack2 := recoveredArg1.
            recoveredBlock63PC := 87.
        ].
        recoveredBlock63Step = 87 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) getObject.
            recoveredBlock63PC := 88.
        ].
        recoveredBlock63Step = 88 ifTrue: [
            recoveredBlock63Stack3 := recoveredBlock63Arg1.
            recoveredBlock63PC := 91.
        ].
        recoveredBlock63Step = 91 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) hierarchySources: (recoveredBlock63Stack2) specification: (recoveredBlock63Stack3).
            recoveredBlock63PC := 93.
        ].
        recoveredBlock63Step = 93 ifTrue: [
            recoveredBlock63Stack2 := [:recoveredBlock63Block93Arg1 | 
    | recoveredBlock63Block93Value0 recoveredBlock63Block93Value1 recoveredBlock63Block93Value2 recoveredBlock63Block93Value3 recoveredBlock63Block93Value4 recoveredBlock63Block93Value5 recoveredBlock63Block93Value6 recoveredBlock63Block93Value7 recoveredBlock63Block93Value8 recoveredBlock63Block93Value9 recoveredBlock63Block93Value10 recoveredBlock63Block93Value11 recoveredBlock63Block93Value12 recoveredBlock63Block93Value13 recoveredBlock63Block93Value14 recoveredBlock63Block93Value15 recoveredBlock63Block93Value16 recoveredBlock63Block93Value17 recoveredBlock63Block93Value18 recoveredBlock63Block93Value19 recoveredBlock63Block93Value20 recoveredBlock63Block93Value21 |
    recoveredBlock63Block93Value0 := recoveredLocal2.
    recoveredBlock63Block93Value1 := recoveredBlock63Block93Arg1.
    recoveredBlock63Block93Value2 := recoveredArg1.
    recoveredBlock63Block93Value3 := (recoveredBlock63Block93Value2) getObject.
    recoveredBlock63Block93Value4 := (recoveredBlock63Block93Value3) pathString.
    recoveredBlock63Block93Value5 := (recoveredBlock63Block93Value4) replaceCharacter: ($\) with: ($.).
    recoveredBlock63Block93Value6 := (self) getExecuterDelimiter.
    recoveredBlock63Block93Value7 := (recoveredBlock63Block93Value5) , (recoveredBlock63Block93Value6).
    recoveredBlock63Block93Value8 := recoveredBlock63Arg1.
    recoveredBlock63Block93Value9 := (recoveredBlock63Block93Value8) specificationName.
    recoveredBlock63Block93Value10 := (recoveredBlock63Block93Value7) , (recoveredBlock63Block93Value9).
    recoveredBlock63Block93Value11 := recoveredBlock63Block93Arg1.
    recoveredBlock63Block93Value12 := (self) getExecuterHierarchyPathOf: (recoveredBlock63Block93Value11).
    recoveredBlock63Block93Value13 := (recoveredBlock63Block93Value10) , (recoveredBlock63Block93Value12).
    recoveredBlock63Block93Value14 := (recoveredBlock63Block93Value13) , ('_').
    recoveredBlock63Block93Value15 := recoveredLocal1.
    recoveredBlock63Block93Value16 := (recoveredBlock63Block93Value15) printString.
    recoveredBlock63Block93Value17 := (recoveredBlock63Block93Value14) , (recoveredBlock63Block93Value16).
    recoveredBlock63Block93Value18 := (recoveredBlock63Block93Value17) , ('.gif').
    (recoveredBlock63Block93Value0) printGraphicsForSource: (recoveredBlock63Block93Value1) onGIFFile: (recoveredBlock63Block93Value18) selectedCategoryName: ('') scaleFactor: (1).
    recoveredBlock63Block93Value19 := recoveredLocal1.
    recoveredBlock63Block93Value20 := (recoveredBlock63Block93Value19) + (1).
    recoveredBlock63Block93Value21 := recoveredBlock63Block93Value20.
    recoveredLocal1 := recoveredBlock63Block93Value21.
    recoveredBlock63Block93Value20
].
            recoveredBlock63PC := 169.
        ].
        recoveredBlock63Step = 169 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) do: (recoveredBlock63Stack2).
            recoveredBlock63PC := 171.
        ].
        recoveredBlock63Step = 171 ifTrue: [
            recoveredBlock63Result := recoveredBlock63Stack1.
            recoveredBlock63Done := true.
        ].
    ].
    recoveredBlock63Result
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := 'sgClass'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 199].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) getObject.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) doExecuterFileOutSelectedSpecificationDiagramsFor: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

