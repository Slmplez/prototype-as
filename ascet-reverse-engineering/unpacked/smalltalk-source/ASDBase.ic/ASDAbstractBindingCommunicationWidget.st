"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009470; bytecode file offset 0x908be4"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
tableList
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f678; bytecode file offset 0x90bff0"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
updateListSortBy: recoveredArg1 executionBlock: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005b310; bytecode file offset 0x957bcc"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
bindingsCommunicationsCellSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getUserInterface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) openModuleForSelectionWidget: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006ec9c; bytecode file offset 0x96b8a0"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
projectKey
    | recoveredValue0 |
    recoveredValue0 := projectKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f3a8; bytecode file offset 0x96bf7c"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
tableListFlags
    | recoveredValue0 |
    recoveredValue0 := tableListFlags.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20088840; bytecode file offset 0x985628"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
iconHierarchyPolicy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) resourceManager.
    recoveredValue2 := (recoveredValue0) iconHierarchyPolicy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008d738; bytecode file offset 0x98a0a4"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
updateList
    (self) updateListSortBy: (1).
    ^self
! !

"ASDBase.ic method 0x200915d0; bytecode file offset 0x98e0cc"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    ^self
! !

"ASDBase.ic method 0x20096180; bytecode file offset 0x992bec"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    (self) projectKey: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c5508; bytecode file offset 0x9c1f64"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
projectKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c577c; bytecode file offset 0x9c22c8"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
lastSortIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastSortIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5bf8; bytecode file offset 0x9c25bc"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
tableListFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tableListFlags := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e3cdc; bytecode file offset 0x9e05b0"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
project
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c363cArg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ec420; bytecode file offset 0x9e8cfc"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
updateList: recoveredArg1 sortBy: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) listSortBlockFor: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) asSortedCollection: (recoveredValue3).
    (recoveredValue0) items: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010671c; bytecode file offset 0xa02fd0"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
lastSortIndex
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lastSortIndex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := lastSortIndex.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013572c; bytecode file offset 0xa32010"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
leftColumnVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('hw') == ('Call37820').
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (self) stringLeftForEntry: (recoveredValue3).
    (recoveredValue1) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20135748; bytecode file offset 0xa32010"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
rightColumnVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('hw') == ('Call37820').
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (self) stringRightForEntry: (recoveredValue3).
    (recoveredValue1) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201357cc; bytecode file offset 0xa32090"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
withoutMappedValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := (self) tableList.
    recoveredValue2 := (self) getTableListFlagsFor: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    (self) setTableListFlagsFor: (recoveredValue0) value: (recoveredValue3).
    (self) updateList.
    ^self
! !

"ASDBase.ic method 0x201423f4; bytecode file offset 0xa3ecb8"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
stringLeftForEntry: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('hw') == ('Call37820').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) at: (2).
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (self) stringForEntry: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20142420; bytecode file offset 0xa3ece4"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
stringRightForEntry: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('hw') == ('Call37820').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) at: (2).
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredValue4 := (self) stringForEntry: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20165fa0; bytecode file offset 0xa6285c"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
updateListSortBy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) updateList: (recoveredBlock5Value0) sortBy: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (self) updateListSortBy: (recoveredValue0) executionBlock: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2016927c; bytecode file offset 0xa65b44"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
setTableListFlagsFor: recoveredArg1 value: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableListFlags.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) tableListFlags: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableListFlags.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018e934; bytecode file offset 0xa8b21c"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
sortBlockForRight
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('hw') == ('Call37820').
    recoveredValue1 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (self) stringRightForEntry: (recoveredBlock10Value0).
    recoveredBlock10Value2 := recoveredBlock10Arg2.
    recoveredBlock10Value3 := (self) stringRightForEntry: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (recoveredBlock10Value1) < (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    ^recoveredValue1
! !

"ASDBase.ic method 0x2018e95c; bytecode file offset 0xa8b21c"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
sortBlockForLeft
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('hw') == ('Call37820').
    recoveredValue1 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (self) stringLeftForEntry: (recoveredBlock10Value0).
    recoveredBlock10Value2 := recoveredBlock10Arg2.
    recoveredBlock10Value3 := (self) stringLeftForEntry: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (recoveredBlock10Value1) < (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    ^recoveredValue1
! !

"ASDBase.ic method 0x201fdbcc; bytecode file offset 0xafa494"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
sortBlockForName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call37820'.
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
            recoveredStack1 := [:block280d8924Arg1 :block280d8924Arg2 | 
    | block280d8924Value0 block280d8924Value1 block280d8924Value2 block280d8924Value3 block280d8924Value4 block280d8924Value5 block280d8924Value6 |
    block280d8924Value0 := block280d8924Arg1.
    block280d8924Value1 := (block280d8924Value0) at: (1).
    block280d8924Value2 := (block280d8924Value1) label.
    block280d8924Value3 := block280d8924Arg2.
    block280d8924Value4 := (block280d8924Value3) at: (1).
    block280d8924Value5 := (block280d8924Value4) label.
    block280d8924Value6 := (block280d8924Value2) < (block280d8924Value5).
    block280d8924Value6
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20203b04; bytecode file offset 0xb003cc"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
getTableListFlagsFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableListFlags.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) tableListFlags: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableListFlags.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021e37c; bytecode file offset 0xb1ac44"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
bindingsCommunicationsVisualCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := (recoveredValue5) > (1).
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue7) item.
    recoveredValue9 := (recoveredValue8) at: (2).
    recoveredValue10 := (recoveredValue9) at: (2).
    recoveredValue11 := (recoveredValue10) size.
    recoveredValue12 := (recoveredValue11) > (1).
    recoveredValue13 := (recoveredValue6) | (recoveredValue12).
    (recoveredValue0) hasChildren: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x20289250; bytecode file offset 0xb85b2c"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
labelVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentOfItem: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := RBRenderableBitmapString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) typeLabel.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) iconForModelElement.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOnString: (recoveredStack3) image: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202df4f0; bytecode file offset 0xbdbdc4"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
stringForEntry: recoveredArg1
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
            recoveredStack2 := 'Call37820'.
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
            recoveredStack1 := '...'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := '---'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ccacc; bytecode file offset 0xcc93a4"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
listSortBlockFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call37820'.
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
            recoveredStack1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) abs.
    recoveredBlock10Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := (self) sortBlockForLeft.
    recoveredBlock23Value0
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock34Value0 |
    recoveredBlock34Value0 := (self) sortBlockForRight.
    recoveredBlock34Value0
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock43Value0 |
    recoveredBlock43Value0 := (self) sortBlockForName.
    recoveredBlock43Value0
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) others: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) negative.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) reverseSortBlock: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ed490; bytecode file offset 0xce9d78"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
processDetectedKeyInputString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableList.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := [:block280f8f7cArg1 :block280f8f7cArg2 | 
    | block280f8f7cLocal1 block280f8f7cStack0 block280f8f7cStack1 block280f8f7cStack2 block280f8f7cStack3 block280f8f7cStack4 block280f8f7cPC block280f8f7cStep block280f8f7cDone block280f8f7cResult |
    block280f8f7cStack0 := self.
    block280f8f7cPC := 4.
    block280f8f7cDone := false.
    [block280f8f7cDone not] whileTrue: [
        block280f8f7cStep := block280f8f7cPC.
        block280f8f7cStep = 4 ifTrue: [
            block280f8f7cStack1 := block280f8f7cArg1.
            block280f8f7cPC := 5.
        ].
        block280f8f7cStep = 5 ifTrue: [
            block280f8f7cStack2 := 1.
            block280f8f7cPC := 7.
        ].
        block280f8f7cStep = 7 ifTrue: [
            block280f8f7cStack3 := [].
            block280f8f7cPC := 9.
        ].
        block280f8f7cStep = 9 ifTrue: [
            block280f8f7cStack1 := (block280f8f7cStack1) at: (block280f8f7cStack2) ifAbsent: (block280f8f7cStack3).
            block280f8f7cPC := 11.
        ].
        block280f8f7cStep = 11 ifTrue: [
            block280f8f7cLocal1 := block280f8f7cStack1.
            block280f8f7cPC := 12.
        ].
        block280f8f7cStep = 12 ifTrue: [
            block280f8f7cStack1 := block280f8f7cLocal1.
            block280f8f7cPC := 13.
        ].
        block280f8f7cStep = 13 ifTrue: [
            (block280f8f7cStack1 ~~ nil) ifTrue: [block280f8f7cPC := 22] ifFalse: [block280f8f7cPC := 16].
        ].
        block280f8f7cStep = 16 ifTrue: [
            block280f8f7cStack1 := ''.
            block280f8f7cPC := 18.
        ].
        block280f8f7cStep = 18 ifTrue: [
            block280f8f7cPC := 25.
        ].
        block280f8f7cStep = 22 ifTrue: [
            block280f8f7cStack1 := block280f8f7cLocal1.
            block280f8f7cPC := 23.
        ].
        block280f8f7cStep = 23 ifTrue: [
            block280f8f7cStack1 := (block280f8f7cStack1) typeLabel.
            block280f8f7cPC := 25.
        ].
        block280f8f7cStep = 25 ifTrue: [
            block280f8f7cResult := block280f8f7cStack1.
            block280f8f7cDone := true.
        ].
    ].
    block280f8f7cResult
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) detectedKeyInputString.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectItem: (recoveredStack1) equalMethod: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042848c; bytecode file offset 0xd24d80"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
bindingsCommunicationsColumnHeadingCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_84376'.
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedColumns.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) columns.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal1.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack2 := self.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) lastSortIndex.
            recoveredBlock50PC := 62.
        ].
        recoveredBlock50Step = 62 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) abs.
            recoveredBlock50PC := 64.
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) equals: (recoveredBlock50Stack2).
            recoveredBlock50PC := 66.
        ].
        recoveredBlock50Step = 66 ifTrue: [
            (recoveredBlock50Stack1) ifTrue: [recoveredBlock50PC := 70] ifFalse: [recoveredBlock50PC := 82].
        ].
        recoveredBlock50Step = 70 ifTrue: [
            recoveredBlock50Stack1 := self.
            recoveredBlock50PC := 71.
        ].
        recoveredBlock50Step = 71 ifTrue: [
            recoveredBlock50Stack2 := self.
            recoveredBlock50PC := 72.
        ].
        recoveredBlock50Step = 72 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) lastSortIndex.
            recoveredBlock50PC := 74.
        ].
        recoveredBlock50Step = 74 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) negated.
            recoveredBlock50PC := 76.
        ].
        recoveredBlock50Step = 76 ifTrue: [
            (recoveredBlock50Stack1) lastSortIndex: (recoveredBlock50Stack2).
            recoveredBlock50PC := 78.
        ].
        recoveredBlock50Step = 78 ifTrue: [
            recoveredBlock50PC := 88.
        ].
        recoveredBlock50Step = 82 ifTrue: [
            recoveredBlock50Stack1 := self.
            recoveredBlock50PC := 83.
        ].
        recoveredBlock50Step = 83 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal1.
            recoveredBlock50PC := 86.
        ].
        recoveredBlock50Step = 86 ifTrue: [
            (recoveredBlock50Stack1) lastSortIndex: (recoveredBlock50Stack2).
            recoveredBlock50PC := 88.
        ].
        recoveredBlock50Step = 88 ifTrue: [
            recoveredBlock50Stack1 := recoveredArg1.
            recoveredBlock50PC := 91.
        ].
        recoveredBlock50Step = 91 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) items.
            recoveredBlock50PC := 93.
        ].
        recoveredBlock50Step = 93 ifTrue: [
            recoveredBlock50Stack2 := self.
            recoveredBlock50PC := 94.
        ].
        recoveredBlock50Step = 94 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) lastSortIndex.
            recoveredBlock50PC := 96.
        ].
        recoveredBlock50Step = 96 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) updateList: (recoveredBlock50Stack1) sortBy: (recoveredBlock50Stack2).
            recoveredBlock50PC := 98.
        ].
        recoveredBlock50Step = 98 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack0.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20435d14; bytecode file offset 0xd32604"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
selectKeySequence
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDictName.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := detectedKeyInputTime.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) millisecondClockValue.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := detectedKeyInputTime.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeAheadResetTime.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectedKeyInputString.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) detectedKeyInputString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) detectedKeyInputString: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) millisecondClockValue.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            detectedKeyInputTime := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) processDetectedKeyInputString: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20475d90; bytecode file offset 0xd726fc"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
updateListColumnWidth: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 recoveredBlock18Value8 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value1) verticalSeparatorThickness.
    recoveredBlock18Value3 := (recoveredBlock18Value0) + (recoveredBlock18Value2).
    recoveredBlock18Value4 := recoveredBlock18Arg1.
    recoveredBlock18Value5 := (recoveredBlock18Value4) widget.
    recoveredBlock18Value6 := (recoveredBlock18Value5) totalEmphasis.
    recoveredBlock18Value7 := (recoveredBlock18Value3) + (recoveredBlock18Value6).
    recoveredBlock18Value8 := recoveredBlock18Value7.
    recoveredLocal1 := recoveredBlock18Value8.
    recoveredBlock18Value7
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := (self) tableList.
    recoveredBlock63Value1 := (recoveredBlock63Value0) columns.
    recoveredBlock63Value2 := [:recoveredBlock63Block72Arg1 :recoveredBlock63Block72Arg2 | 
    | recoveredBlock63Block72Stack0 recoveredBlock63Block72Stack1 recoveredBlock63Block72Stack2 recoveredBlock63Block72Stack3 recoveredBlock63Block72Stack4 recoveredBlock63Block72PC recoveredBlock63Block72Step recoveredBlock63Block72Done recoveredBlock63Block72Result |
    recoveredBlock63Block72Stack0 := nil.
    recoveredBlock63Block72PC := 78.
    recoveredBlock63Block72Done := false.
    [recoveredBlock63Block72Done not] whileTrue: [
        recoveredBlock63Block72Step := recoveredBlock63Block72PC.
        recoveredBlock63Block72Step = 78 ifTrue: [
            recoveredBlock63Block72Stack1 := recoveredBlock63Block72Arg2.
            recoveredBlock63Block72PC := 79.
        ].
        recoveredBlock63Block72Step = 79 ifTrue: [
            recoveredBlock63Block72Stack2 := 1.
            recoveredBlock63Block72PC := 81.
        ].
        recoveredBlock63Block72Step = 81 ifTrue: [
            recoveredBlock63Block72Stack1 := (recoveredBlock63Block72Stack1) = (recoveredBlock63Block72Stack2).
            recoveredBlock63Block72PC := 82.
        ].
        recoveredBlock63Block72Step = 82 ifTrue: [
            (recoveredBlock63Block72Stack1) ifTrue: [recoveredBlock63Block72PC := 86] ifFalse: [recoveredBlock63Block72PC := 100].
        ].
        recoveredBlock63Block72Step = 86 ifTrue: [
            recoveredBlock63Block72Stack1 := recoveredBlock63Block72Arg1.
            recoveredBlock63Block72PC := 87.
        ].
        recoveredBlock63Block72Step = 87 ifTrue: [
            recoveredBlock63Block72Stack2 := recoveredLocal3.
            recoveredBlock63Block72PC := 90.
        ].
        recoveredBlock63Block72Step = 90 ifTrue: [
            recoveredBlock63Block72Stack3 := #[31 133 235 81 184 30 213 63].
            recoveredBlock63Block72PC := 92.
        ].
        recoveredBlock63Block72Step = 92 ifTrue: [
            recoveredBlock63Block72Stack2 := (recoveredBlock63Block72Stack2) * (recoveredBlock63Block72Stack3).
            recoveredBlock63Block72PC := 93.
        ].
        recoveredBlock63Block72Step = 93 ifTrue: [
            recoveredBlock63Block72Stack2 := (recoveredBlock63Block72Stack2) asInteger.
            recoveredBlock63Block72PC := 95.
        ].
        recoveredBlock63Block72Step = 95 ifTrue: [
            recoveredBlock63Block72Stack1 := (recoveredBlock63Block72Stack1) width: (recoveredBlock63Block72Stack2).
            recoveredBlock63Block72PC := 97.
        ].
        recoveredBlock63Block72Step = 97 ifTrue: [
            recoveredBlock63Block72PC := 116.
        ].
        recoveredBlock63Block72Step = 100 ifTrue: [
            recoveredBlock63Block72Stack1 := recoveredBlock63Block72Arg1.
            recoveredBlock63Block72PC := 101.
        ].
        recoveredBlock63Block72Step = 101 ifTrue: [
            recoveredBlock63Block72Stack2 := recoveredLocal3.
            recoveredBlock63Block72PC := 104.
        ].
        recoveredBlock63Block72Step = 104 ifTrue: [
            recoveredBlock63Block72Stack3 := #[31 133 235 81 184 30 229 63].
            recoveredBlock63Block72PC := 106.
        ].
        recoveredBlock63Block72Step = 106 ifTrue: [
            recoveredBlock63Block72Stack2 := (recoveredBlock63Block72Stack2) * (recoveredBlock63Block72Stack3).
            recoveredBlock63Block72PC := 107.
        ].
        recoveredBlock63Block72Step = 107 ifTrue: [
            recoveredBlock63Block72Stack3 := recoveredLocal2.
            recoveredBlock63Block72PC := 110.
        ].
        recoveredBlock63Block72Step = 110 ifTrue: [
            recoveredBlock63Block72Stack2 := (recoveredBlock63Block72Stack2) / (recoveredBlock63Block72Stack3).
            recoveredBlock63Block72PC := 112.
        ].
        recoveredBlock63Block72Step = 112 ifTrue: [
            recoveredBlock63Block72Stack2 := (recoveredBlock63Block72Stack2) asInteger.
            recoveredBlock63Block72PC := 114.
        ].
        recoveredBlock63Block72Step = 114 ifTrue: [
            recoveredBlock63Block72Stack1 := (recoveredBlock63Block72Stack1) width: (recoveredBlock63Block72Stack2).
            recoveredBlock63Block72PC := 116.
        ].
        recoveredBlock63Block72Step = 116 ifTrue: [
            recoveredBlock63Block72Result := recoveredBlock63Block72Stack1.
            recoveredBlock63Block72Done := true.
        ].
    ].
    recoveredBlock63Block72Result
].
    recoveredBlock63Value3 := (recoveredBlock63Value1) doWithIndex: (recoveredBlock63Value2).
    recoveredBlock63Value3
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ecb80; bytecode file offset 0xde949c"
!ASDAbstractBindingCommunicationWidget methodsFor: 'recovered'!
bindingsCommunicationsChildrenCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) deepCopy.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack1) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 52] ifFalse: [recoveredLocal4 := nil. recoveredPC := 158]] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) children: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

