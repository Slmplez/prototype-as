"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200033e0; bytecode file offset 0x8ffcfc"
!SGDataDialog methodsFor: 'recovered'!
updateExternalStructDeclarations
    ^self
! !

"ASDBase.ic method 0x200158cc; bytecode file offset 0x92209c"
!SGDataDialog methodsFor: 'recovered'!
mainMenuTitle
    ^'~Data'
! !

"ASDBase.ic method 0x20018bc0; bytecode file offset 0x92209c"
!SGDataDialog methodsFor: 'recovered'!
valueIconColumnHeader
    ^'Data'
! !

"ASDBase.ic method 0x2001eee4; bytecode file offset 0x92209c"
!SGDataDialog methodsFor: 'recovered'!
editorIcon
    ^'GeneralEditData'
! !

"ASDBase.ic method 0x2001fcc4; bytecode file offset 0x92209c"
!SGDataDialog methodsFor: 'recovered'!
prompterTitleDelete
    ^'Confirm delete Data(s)?'
! !

"ASDBase.ic method 0x20022a60; bytecode file offset 0x92209c"
!SGDataDialog methodsFor: 'recovered'!
editPraefixMessage
    ^'Insert prefix for all copied data'
! !

"ASDBase.ic method 0x20028374; bytecode file offset 0x934580"
!SGDataDialog methodsFor: 'recovered'!
getResultObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) selection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004464c; bytecode file offset 0x9451f8"
!SGDataDialog methodsFor: 'recovered'!
pasteDataAllowed
    | recoveredValue0 |
    recoveredValue0 := (self) pasteEntryAllowed: ('SGGlobalDataBuffer').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ec8c; bytecode file offset 0x95b5ec"
!SGDataDialog methodsFor: 'recovered'!
changesLocal
    (self) showChangesRecursive: (false).
    ^self
! !

"ASDBase.ic method 0x2005fe60; bytecode file offset 0x95c79c"
!SGDataDialog methodsFor: 'recovered'!
changesRecursive
    (self) showChangesRecursive: (true).
    ^self
! !

"ASDBase.ic method 0x20085a9c; bytecode file offset 0x98235c"
!SGDataDialog methodsFor: 'recovered'!
referenceTargetLabelsForElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) referenceTargetsForElement: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asSortedCollection.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20087264; bytecode file offset 0x983b1c"
!SGDataDialog methodsFor: 'recovered'!
elemListVisualInfo: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg3.
    (recoveredValue0) hasChildren: (false).
    ^self
! !

"ASDBase.ic method 0x2009bfd8; bytecode file offset 0x998894"
!SGDataDialog methodsFor: 'recovered'!
initReferenceTargets
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    referenceTargets := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d62ac; bytecode file offset 0x9d3134"
!SGDataDialog methodsFor: 'recovered'!
preClosingActivities
    super preClosingActivities.
    (self) unregisterDialogOnRelatedClasses.
    ^self
! !

"ASDBase.ic method 0x200d6324; bytecode file offset 0x9d3134"
!SGDataDialog methodsFor: 'recovered'!
initializeAfterOpen
    super initializeAfterOpen.
    (self) registerDialogOnRelatedClasses.
    ^self
! !

"ASDBase.ic method 0x20106a60; bytecode file offset 0xa0331c"
!SGDataDialog methodsFor: 'recovered'!
referenceTargets
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := referenceTargets.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) initReferenceTargets.
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010c1a4; bytecode file offset 0xa08a6c"
!SGDataDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 |
    super initializeAfterCreate.
    recoveredValue0 := (self) vc.
    (recoveredValue0) labelString: ('Data').
    ^self
! !

"ASDBase.ic method 0x2011a030; bytecode file offset 0xa16930"
!SGDataDialog methodsFor: 'recovered'!
allReferencedComponents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allComplexConfiguredElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c85f8Arg1 | 
    | block280c85f8Value0 block280c85f8Value1 |
    block280c85f8Value0 := block280c85f8Arg1.
    block280c85f8Value1 := (block280c85f8Value0) sgClass.
    block280c85f8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e5cc; bytecode file offset 0xa2b0c4"
!SGDataDialog methodsFor: 'recovered'!
allComplexConfiguredElements
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuredElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ca944Arg1 | 
    | block280ca944Value0 block280ca944Value1 |
    block280ca944Value0 := block280ca944Arg1.
    block280ca944Value1 := (block280ca944Value0) isValueStorageType.
    block280ca944Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20150c70; bytecode file offset 0xa4d534"
!SGDataDialog methodsFor: 'recovered'!
allReferencedConfigurations
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allComplexConfiguredElements.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := uiController.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) configForElement: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asSet.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20199db4; bytecode file offset 0xa96690"
!SGDataDialog methodsFor: 'recovered'!
enableFileOut
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElemComplexPrim.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20199dcc; bytecode file offset 0xa96690"
!SGDataDialog methodsFor: 'recovered'!
enableFileIn
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElemComplexPrim.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ad9fc; bytecode file offset 0xaaa2cc"
!SGDataDialog methodsFor: 'recovered'!
nameIcon: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) visualCallBackImageElement.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (self) returnIconWithName: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := RBRenderableBitmapString.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue7) item.
    recoveredValue9 := (recoveredValue8) label.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue6) createOnString: (recoveredValue9) image: (recoveredValue10).
    (recoveredValue5) value: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x201cc738; bytecode file offset 0xac8ff8"
!SGDataDialog methodsFor: 'recovered'!
updateObserverListWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := observedObjects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
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
            (recoveredStack0) unregisterDialogOnRelatedClasses.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) registerDialogOnRelatedClasses.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e2470; bytecode file offset 0xaded30"
!SGDataDialog methodsFor: 'recovered'!
unregisterDialogOnRelatedClasses
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := observedObjects.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := [:recoveredBlock6Block13Arg1 | 
    | recoveredBlock6Block13Value0 recoveredBlock6Block13Value1 |
    recoveredBlock6Block13Value0 := recoveredBlock6Block13Arg1.
    recoveredBlock6Block13Value1 := (recoveredBlock6Block13Value0) removeDependent: (self).
    recoveredBlock6Block13Value1
].
    recoveredBlock6Value2 := (recoveredBlock6Value0) do: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202138a8; bytecode file offset 0xb10170"
!SGDataDialog methodsFor: 'recovered'!
getDataLabel: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isDependent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFormula: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) configNameForElement: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) notDefinedString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022bb64; bytecode file offset 0xb2843c"
!SGDataDialog methodsFor: 'recovered'!
valueIconColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super valueIconColumn.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := XmNbeginEditCallback.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('valueBeginEditCallback:clientData:callData:') clientData: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := XmNendEditCallback.
    (recoveredValue5) addCallback: (recoveredValue6) receiver: (self) selector: ('valueEndEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20242fc4; bytecode file offset 0xb3f898"
!SGDataDialog methodsFor: 'recovered'!
createConfigurationMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super createConfigurationMenu.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) addLine.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := (self) uiController.
    recoveredBlock18Value1 := (recoveredBlock18Value0) twoConfigsSelected.
    recoveredBlock18Value1
].
    (recoveredValue3) addSubMenu: ('createChangesSubMenu') label: ('~Show Differences') enable: (recoveredValue4) for: (self).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2029fcbc; bytecode file offset 0xb9c590"
!SGDataDialog methodsFor: 'recovered'!
registerDialogOnRelatedClasses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allReferencedComponents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            observedObjects := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := observedObjects.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) allReferencedConfigurations.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := observedObjects.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := observedObjects.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) addDependent: (self).
    recoveredBlock29Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cbb50; bytecode file offset 0xbc8434"
!SGDataDialog methodsFor: 'recovered'!
copyDataToBuffer
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyEntryAllowed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentConfig.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'SGGlobalDataBuffer'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) uiController.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) selection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := (recoveredStack5) uiController.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := (recoveredStack5) selectedElement.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := (recoveredStack4) getOrCreateDependentParameterEntryForElement: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cbd54; bytecode file offset 0xbc862c"
!SGDataDialog methodsFor: 'recovered'!
createConfig
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasDatamodelObserver.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := uiController.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := 'Data'.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) createValueConfig: (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack3.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 44] ifFalse: [recoveredBlock6PC := 26].
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            (recoveredBlock6Stack1) updateConfigs.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) vcList.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack2 := recoveredLocal2.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) dbObject.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack3 := true.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            (recoveredBlock6Stack1) selectItem: (recoveredBlock6Stack2) notify: (recoveredBlock6Stack3).
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) renameConfig.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) deferObservingWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202d47d8; bytecode file offset 0xbd10b0"
!SGDataDialog methodsFor: 'recovered'!
createChangesSubMenu
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := uiController.
    recoveredBlock13Value1 := (recoveredBlock13Value0) twoConfigsSelected.
    recoveredBlock13Value1
].
    (recoveredValue3) add: ('changesLocal') label: ('~Flat') enable: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 |
    recoveredBlock32Value0 := uiController.
    recoveredBlock32Value1 := (recoveredBlock32Value0) twoConfigsSelected.
    recoveredBlock32Value1
].
    (recoveredValue5) add: ('changesRecursive') label: ('~Recursive') enable: (recoveredValue6).
    recoveredLocal2 := recoveredValue2.
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x203028d4; bytecode file offset 0xbff1ac"
!SGDataDialog methodsFor: 'recovered'!
createTargetTableForOwner: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) allAvailableReferenceTargets.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue4) * (2).
    recoveredValue6 := (recoveredValue2) new: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) label.
    recoveredBlock27Value3 := SGLocalReferenceData.
    recoveredBlock27Value4 := recoveredBlock27Arg1.
    recoveredBlock27Value5 := (recoveredBlock27Value3) createForElement: (recoveredBlock27Value4).
    recoveredBlock27Value6 := (recoveredBlock27Value0) at: (recoveredBlock27Value2) put: (recoveredBlock27Value5).
    recoveredBlock27Value6
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20331120; bytecode file offset 0xc2da34"
!SGDataDialog methodsFor: 'recovered'!
getFormula: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Formula missing'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUniqueDataConfigured.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) relatedClassConfig.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'Call_74792'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'Formula not resolvable'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveFormula: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2038d9d8; bytecode file offset 0xc8a2c8"
!SGDataDialog methodsFor: 'recovered'!
showChangesRecursive: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedConfigs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) differencesTo: (recoveredStack1) recursive: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'No differences found'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := SGConfigChangesDialog.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForChanges: (recoveredStack1) firstConfigLabel: (recoveredStack2) secondConfigLabel: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) promptAtCurrentMousePosition.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038e24c; bytecode file offset 0xc8ab38"
!SGDataDialog methodsFor: 'recovered'!
fileInData
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'File Name for data File'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := '*.dat'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForFileNameLabel: (recoveredStack1) extension: (recoveredStack2) shouldExist: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := CfsReadFileStream.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) fileInFromString: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) selection.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039a844; bytecode file offset 0xc971a4"
!SGDataDialog methodsFor: 'recovered'!
updateWindowTitle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65715'.
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
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Data Editor for: '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := uiController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Data Editor for: '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) element.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'Data Editor for: '.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) element.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := '::'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) element.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassLabel.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d1864; bytecode file offset 0xcce158"
!SGDataDialog methodsFor: 'recovered'!
createElementMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := super createElementMenu.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) addLine.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) copyEntryAllowed.
    recoveredBlock18Value0
].
    (recoveredValue3) add: ('copyDataToBuffer') label: ('~Copy Data To Buffer') enable: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := [
    | recoveredBlock34Value0 |
    recoveredBlock34Value0 := (self) pasteDataAllowed.
    recoveredBlock34Value0
].
    (recoveredValue5) add: ('pasteDataFromBuffer') label: ('~Paste Data From Buffer') enable: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) addLine.
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := [
    | recoveredBlock53Value0 |
    recoveredBlock53Value0 := (self) enableFileOut.
    recoveredBlock53Value0
].
    (recoveredValue8) add: ('fileOutData') label: ('~Export Data') enable: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := [
    | recoveredBlock70Value0 |
    recoveredBlock70Value0 := (self) enableFileIn.
    recoveredBlock70Value0
].
    (recoveredValue10) add: ('fileInData') label: ('~Import Data') enable: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x203f7708; bytecode file offset 0xcf3fe8"
!SGDataDialog methodsFor: 'recovered'!
elemListChildren: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUniqueDataConfigured.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) relatedClassConfig.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) allExternalReferenceVariables.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 |
    recoveredBlock54Value0 := SGExternalReferenceVariable.
    recoveredBlock54Value1 := recoveredBlock54Arg1.
    recoveredBlock54Value2 := recoveredLocal4.
    recoveredBlock54Value3 := (recoveredBlock54Value0) createFor: (recoveredBlock54Value1) parent: (recoveredBlock54Value2).
    recoveredBlock54Value3
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ff6a4; bytecode file offset 0xcfbf9c"
!SGDataDialog methodsFor: 'recovered'!
editCreate: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImported.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementsSameGlobalAttribute: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := uiController.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := uiController.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) context.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) makeConfig.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) editCreateValueConfigFor: (recoveredStack2) configController: (recoveredStack3) makeConfig: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:block280fa110Arg1 | 
    | block280fa110Value0 block280fa110Value1 block280fa110Value2 |
    block280fa110Value0 := block280fa110Arg1.
    block280fa110Value1 := (block280fa110Value0) isValueStorageType.
    block280fa110Value2 := (block280fa110Value1) not.
    block280fa110Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) refreshElementLists.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) updateObserverListWith: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) updateElements.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20405ed4; bytecode file offset 0xd027d4"
!SGDataDialog methodsFor: 'recovered'!
valueBeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceTargetLabelsForElement: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
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
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUniqueDataConfigured.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) relatedClassConfig.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerKey.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReferenceDataFromConfig: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := RBComboBoxEditPolicy.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) editable: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) editPolicy: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040a6c0; bytecode file offset 0xd06fc8"
!SGDataDialog methodsFor: 'recovered'!
fileOutData
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'File Name for data File'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := '*.dat'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForFileNameLabel: (recoveredStack1) extension: (recoveredStack2) shouldExist: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := CfsFileStream.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 131072.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 524288.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1) oflag: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Could not open file '.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileOutString.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204872d8; bytecode file offset 0xd83bdc"
!SGDataDialog methodsFor: 'recovered'!
valueIcon: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) notDefinedString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUniqueDataConfigured.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) relatedClassConfig.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReference.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDataLabel: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerKey.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassKey.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElement: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) getReferenceDataFromConfig: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallBackString.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) notDefinedString.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReferenceData.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValid.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 49344.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) red: (recoveredStack3) green: (recoveredStack4) blue: (recoveredStack5).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204af374; bytecode file offset 0xdabc70"
!SGDataDialog methodsFor: 'recovered'!
referenceTargetsForElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    ^#()
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceTargets.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 |
    recoveredBlock39Value0 := recoveredLocal5.
    recoveredBlock39Value1 := (self) createTargetTableForOwner: (recoveredBlock39Value0).
    recoveredBlock39Value1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 |
    recoveredBlock60Value0 := recoveredBlock60Arg1.
    recoveredBlock60Value1 := recoveredLocal3.
    recoveredBlock60Value2 := (recoveredBlock60Value0) isCompatibleModelDataTypeFor: (recoveredBlock60Value1).
    recoveredBlock60Value2
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLocal.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := SGInitialReferenceData.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := SGExternalReferenceData.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204bbdb8; bytecode file offset 0xdb86c8"
!SGDataDialog methodsFor: 'recovered'!
pasteDataFromBuffer
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteDataAllowed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'SGGlobalDataBuffer'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | block2810615cValue0 block2810615cValue1 block2810615cValue2 |
    block2810615cValue0 := RBUserInfo.
    block2810615cValue1 := (block2810615cValue0) message: ('No data available!!').
    block2810615cValue2 := (block2810615cValue1) prompt.
    block2810615cValue2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Local1 recoveredBlock29Local2 recoveredBlock29Local3 recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 37.
        ].
        recoveredBlock29Step = 37 ifTrue: [
            recoveredBlock29Stack2 := 1.
            recoveredBlock29PC := 39.
        ].
        recoveredBlock29Step = 39 ifTrue: [
            recoveredBlock29Stack3 := [
    ^nil
].
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) at: (recoveredBlock29Stack2) ifAbsent: (recoveredBlock29Stack3).
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29Local3 := recoveredBlock29Stack1.
            recoveredBlock29PC := 51.
        ].
        recoveredBlock29Step = 51 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredBlock29Stack2 := 2.
            recoveredBlock29PC := 54.
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack3 := [
    ^nil
].
            recoveredBlock29PC := 62.
        ].
        recoveredBlock29Step = 62 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) at: (recoveredBlock29Stack2) ifAbsent: (recoveredBlock29Stack3).
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29Local2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 65.
        ].
        recoveredBlock29Step = 65 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local3.
            recoveredBlock29PC := 66.
        ].
        recoveredBlock29Step = 66 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) species.
            recoveredBlock29PC := 68.
        ].
        recoveredBlock29Step = 68 ifTrue: [
            recoveredBlock29Stack2 := self.
            recoveredBlock29PC := 69.
        ].
        recoveredBlock29Step = 69 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) currentConfig.
            recoveredBlock29PC := 71.
        ].
        recoveredBlock29Step = 71 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) species.
            recoveredBlock29PC := 73.
        ].
        recoveredBlock29Step = 73 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) = (recoveredBlock29Stack2).
            recoveredBlock29PC := 74.
        ].
        recoveredBlock29Step = 74 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 78] ifFalse: [recoveredBlock29PC := 90].
        ].
        recoveredBlock29Step = 78 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 79.
        ].
        recoveredBlock29Step = 79 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local3.
            recoveredBlock29PC := 80.
        ].
        recoveredBlock29Step = 80 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) deepCopy.
            recoveredBlock29PC := 82.
        ].
        recoveredBlock29Step = 82 ifTrue: [
            (recoveredBlock29Stack1) updateCurrentConfig: (recoveredBlock29Stack2).
            recoveredBlock29PC := 84.
        ].
        recoveredBlock29Step = 84 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 85.
        ].
        recoveredBlock29Step = 85 ifTrue: [
            (recoveredBlock29Stack1) refreshElementLists.
            recoveredBlock29PC := 87.
        ].
        recoveredBlock29Step = 87 ifTrue: [
            recoveredBlock29PC := 98.
        ].
        recoveredBlock29Step = 90 ifTrue: [
            recoveredBlock29Stack1 := RBUserInfo.
            recoveredBlock29PC := 92.
        ].
        recoveredBlock29Step = 92 ifTrue: [
            recoveredBlock29Stack2 := 'No valid data available!!'.
            recoveredBlock29PC := 94.
        ].
        recoveredBlock29Step = 94 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) message: (recoveredBlock29Stack2).
            recoveredBlock29PC := 96.
        ].
        recoveredBlock29Step = 96 ifTrue: [
            (recoveredBlock29Stack1) prompt.
            recoveredBlock29PC := 98.
        ].
        recoveredBlock29Step = 98 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 99.
        ].
        recoveredBlock29Step = 99 ifTrue: [
            recoveredBlock29Stack2 := self.
            recoveredBlock29PC := 100.
        ].
        recoveredBlock29Step = 100 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) uiController.
            recoveredBlock29PC := 102.
        ].
        recoveredBlock29Step = 102 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) selectedElement.
            recoveredBlock29PC := 104.
        ].
        recoveredBlock29Step = 104 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Stack2.
            recoveredBlock29PC := 105.
        ].
        recoveredBlock29Step = 105 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack3.
            recoveredBlock29PC := 106.
        ].
        recoveredBlock29Step = 106 ifTrue: [
            (recoveredBlock29Stack2 == nil) ifTrue: [recoveredBlock29PC := 142] ifFalse: [recoveredBlock29PC := 110].
        ].
        recoveredBlock29Step = 110 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local1.
            recoveredBlock29PC := 111.
        ].
        recoveredBlock29Step = 111 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) isMethodParameter.
            recoveredBlock29PC := 113.
        ].
        recoveredBlock29Step = 113 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 142] ifFalse: [recoveredBlock29PC := 116].
        ].
        recoveredBlock29Step = 116 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local1.
            recoveredBlock29PC := 117.
        ].
        recoveredBlock29Step = 117 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) isDependent.
            recoveredBlock29PC := 119.
        ].
        recoveredBlock29Step = 119 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 122] ifFalse: [recoveredBlock29PC := 142].
        ].
        recoveredBlock29Step = 122 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local2.
            recoveredBlock29PC := 123.
        ].
        recoveredBlock29Step = 123 ifTrue: [
            (recoveredBlock29Stack2 == nil) ifTrue: [recoveredBlock29PC := 142] ifFalse: [recoveredBlock29PC := 126].
        ].
        recoveredBlock29Step = 126 ifTrue: [
            recoveredBlock29PC := 127.
        ].
        recoveredBlock29Step = 127 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 128.
        ].
        recoveredBlock29Step = 128 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) uiController.
            recoveredBlock29PC := 130.
        ].
        recoveredBlock29Step = 130 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) selection.
            recoveredBlock29PC := 132.
        ].
        recoveredBlock29Step = 132 ifTrue: [
            recoveredBlock29Stack2 := self.
            recoveredBlock29PC := 133.
        ].
        recoveredBlock29Step = 133 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) uiController.
            recoveredBlock29PC := 135.
        ].
        recoveredBlock29Step = 135 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) selectedElement.
            recoveredBlock29PC := 137.
        ].
        recoveredBlock29Step = 137 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) aliasName.
            recoveredBlock29PC := 139.
        ].
        recoveredBlock29Step = 139 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local2.
            recoveredBlock29PC := 140.
        ].
        recoveredBlock29Step = 140 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) createDependentParametersForAliasName: (recoveredBlock29Stack2) with: (recoveredBlock29Stack3).
            recoveredBlock29PC := 142.
        ].
        recoveredBlock29Step = 142 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c2724; bytecode file offset 0xdbf014"
!SGDataDialog methodsFor: 'recovered'!
valueEndEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) oldValue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUniqueDataConfigured.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) relatedClassConfig.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) referenceTargetsForElement: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) newValue.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := recoveredLocal2.
            recoveredBlock62PC := 71.
        ].
        recoveredBlock62Step = 71 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) ownerKey.
            recoveredBlock62PC := 73.
        ].
        recoveredBlock62Step = 73 ifTrue: [
            recoveredBlock62Stack2 := recoveredLocal1.
            recoveredBlock62PC := 76.
        ].
        recoveredBlock62Step = 76 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) sgClassKey.
            recoveredBlock62PC := 78.
        ].
        recoveredBlock62Step = 78 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) = (recoveredBlock62Stack2).
            recoveredBlock62PC := 79.
        ].
        recoveredBlock62Step = 79 ifTrue: [
            (recoveredBlock62Stack1) ifTrue: [recoveredBlock62PC := 82] ifFalse: [recoveredBlock62PC := 88].
        ].
        recoveredBlock62Step = 82 ifTrue: [
            recoveredBlock62Stack1 := SGInitialReferenceData.
            recoveredBlock62PC := 84.
        ].
        recoveredBlock62Step = 84 ifTrue: [
            recoveredBlock62PC := 90.
        ].
        recoveredBlock62Step = 88 ifTrue: [
            recoveredBlock62Stack1 := SGExternalReferenceData.
            recoveredBlock62PC := 90.
        ].
        recoveredBlock62Step = 90 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) create.
            recoveredBlock62PC := 92.
        ].
        recoveredBlock62Step = 92 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack1.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerKey.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassKey.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) setConfig: (recoveredStack2) forElement: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) setReferenceData: (recoveredStack2) toConfig: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ee054; bytecode file offset 0xeeaa0c"
!SGDataDialog methodsFor: 'recovered'!
createWidgetHierarchyPageDefault
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageDefault.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'aLabel1'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := recoveredBlock28Value0.
    recoveredBlock28Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock28Value1) alignment: (recoveredBlock28Value2).
    recoveredBlock28Value3 := recoveredBlock28Value0.
    (recoveredBlock28Value3) labelString: ('Elements').
    recoveredBlock28Value4 := recoveredBlock28Value0.
    recoveredBlock28Value5 := (self) defaultLabelBlue.
    (recoveredBlock28Value4) foregroundColor: (recoveredBlock28Value5).
    recoveredBlock28Value0
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'aLabel1'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageDefault.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'timeStampLabelLocal'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [:block2811b5acArg1 | 
    | block2811b5acValue0 block2811b5acValue1 block2811b5acValue2 block2811b5acValue3 block2811b5acValue4 block2811b5acValue5 block2811b5acValue6 |
    block2811b5acValue0 := block2811b5acArg1.
    block2811b5acValue1 := block2811b5acValue0.
    (block2811b5acValue1) labelString: ('undefined').
    block2811b5acValue2 := block2811b5acValue0.
    block2811b5acValue3 := CgRGBColor.
    block2811b5acValue4 := (block2811b5acValue3) red.
    (block2811b5acValue2) foregroundColor: (block2811b5acValue4).
    block2811b5acValue5 := XmALIGNMENTEND.
    block2811b5acValue6 := (block2811b5acValue0) alignment: (block2811b5acValue5).
    block2811b5acValue6
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'timeStampLabelLocal'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := 'elemList'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Value0 recoveredBlock118Value1 recoveredBlock118Value2 recoveredBlock118Value3 recoveredBlock118Value4 recoveredBlock118Value5 recoveredBlock118Value6 recoveredBlock118Value7 recoveredBlock118Value8 recoveredBlock118Value9 recoveredBlock118Value10 recoveredBlock118Value11 recoveredBlock118Value12 recoveredBlock118Value13 |
    recoveredBlock118Value0 := recoveredBlock118Arg1.
    recoveredBlock118Value1 := recoveredBlock118Value0.
    (recoveredBlock118Value1) applicationDrawnBackground: (true).
    recoveredBlock118Value2 := recoveredBlock118Value0.
    recoveredBlock118Value3 := XmETCHCELLS.
    (recoveredBlock118Value2) headingVisualStyle: (recoveredBlock118Value3).
    recoveredBlock118Value4 := recoveredBlock118Value0.
    (recoveredBlock118Value4) rowSeparators: (false).
    recoveredBlock118Value5 := recoveredBlock118Value0.
    (recoveredBlock118Value5) editable: (true).
    recoveredBlock118Value6 := recoveredBlock118Value0.
    recoveredBlock118Value7 := (self) columns.
    (recoveredBlock118Value6) columns: (recoveredBlock118Value7).
    recoveredBlock118Value8 := recoveredBlock118Value0.
    recoveredBlock118Value9 := SGUserInterfaceSettings.
    recoveredBlock118Value10 := (self) resourceManager.
    recoveredBlock118Value11 := (recoveredBlock118Value9) iconHierarchyPolicy: (recoveredBlock118Value10).
    (recoveredBlock118Value8) hierarchyPolicy: (recoveredBlock118Value11).
    recoveredBlock118Value12 := XmEXTENDEDSELECT.
    recoveredBlock118Value13 := (recoveredBlock118Value0) selectionPolicy: (recoveredBlock118Value12).
    recoveredBlock118Value13
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledEwTableTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) unmanageChild.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := 'sTableList'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := 'elemList'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := [:recoveredBlock201Arg1 | 
    | recoveredBlock201Value0 recoveredBlock201Value1 recoveredBlock201Value2 recoveredBlock201Value3 recoveredBlock201Value4 recoveredBlock201Value5 recoveredBlock201Value6 recoveredBlock201Value7 recoveredBlock201Value8 recoveredBlock201Value9 recoveredBlock201Value10 recoveredBlock201Value11 recoveredBlock201Value12 |
    recoveredBlock201Value0 := recoveredBlock201Arg1.
    recoveredBlock201Value1 := recoveredBlock201Value0.
    recoveredBlock201Value2 := XmATTACHFORM.
    (recoveredBlock201Value1) bottomAttachment: (recoveredBlock201Value2).
    recoveredBlock201Value3 := recoveredBlock201Value0.
    (recoveredBlock201Value3) bottomOffset: (5).
    recoveredBlock201Value4 := recoveredBlock201Value0.
    recoveredBlock201Value5 := XmATTACHWIDGET.
    (recoveredBlock201Value4) topAttachment: (recoveredBlock201Value5).
    recoveredBlock201Value6 := recoveredBlock201Value0.
    recoveredBlock201Value7 := recoveredLocal8.
    (recoveredBlock201Value6) topWidget: (recoveredBlock201Value7).
    recoveredBlock201Value8 := recoveredBlock201Value0.
    recoveredBlock201Value9 := XmATTACHFORM.
    (recoveredBlock201Value8) leftAttachment: (recoveredBlock201Value9).
    recoveredBlock201Value10 := recoveredBlock201Value0.
    (recoveredBlock201Value10) leftOffset: (5).
    recoveredBlock201Value11 := XmATTACHFORM.
    recoveredBlock201Value12 := (recoveredBlock201Value0) rightAttachment: (recoveredBlock201Value11).
    recoveredBlock201Value12
].
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := [:block2811b5d0Arg1 | 
    | block2811b5d0Value0 block2811b5d0Value1 block2811b5d0Value2 block2811b5d0Value3 block2811b5d0Value4 block2811b5d0Value5 block2811b5d0Value6 block2811b5d0Value7 block2811b5d0Value8 block2811b5d0Value9 |
    block2811b5d0Value0 := block2811b5d0Arg1.
    block2811b5d0Value1 := block2811b5d0Value0.
    block2811b5d0Value2 := XmATTACHFORM.
    (block2811b5d0Value1) topAttachment: (block2811b5d0Value2).
    block2811b5d0Value3 := block2811b5d0Value0.
    (block2811b5d0Value3) topOffset: (5).
    block2811b5d0Value4 := block2811b5d0Value0.
    block2811b5d0Value5 := XmATTACHNONE.
    (block2811b5d0Value4) bottomAttachment: (block2811b5d0Value5).
    block2811b5d0Value6 := block2811b5d0Value0.
    (block2811b5d0Value6) bottomOffset: (5).
    block2811b5d0Value7 := block2811b5d0Value0.
    block2811b5d0Value8 := XmATTACHFORM.
    (block2811b5d0Value7) leftAttachment: (block2811b5d0Value8).
    block2811b5d0Value9 := (block2811b5d0Value0) leftOffset: (5).
    block2811b5d0Value9
].
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := [:recoveredBlock292Arg1 | 
    | recoveredBlock292Value0 recoveredBlock292Value1 recoveredBlock292Value2 recoveredBlock292Value3 recoveredBlock292Value4 recoveredBlock292Value5 recoveredBlock292Value6 recoveredBlock292Value7 recoveredBlock292Value8 recoveredBlock292Value9 recoveredBlock292Value10 recoveredBlock292Value11 recoveredBlock292Value12 |
    recoveredBlock292Value0 := recoveredBlock292Arg1.
    recoveredBlock292Value1 := recoveredBlock292Value0.
    recoveredBlock292Value2 := XmATTACHFORM.
    (recoveredBlock292Value1) topAttachment: (recoveredBlock292Value2).
    recoveredBlock292Value3 := recoveredBlock292Value0.
    (recoveredBlock292Value3) topOffset: (5).
    recoveredBlock292Value4 := recoveredBlock292Value0.
    recoveredBlock292Value5 := XmATTACHNONE.
    (recoveredBlock292Value4) bottomAttachment: (recoveredBlock292Value5).
    recoveredBlock292Value6 := recoveredBlock292Value0.
    recoveredBlock292Value7 := XmATTACHWIDGET.
    (recoveredBlock292Value6) leftAttachment: (recoveredBlock292Value7).
    recoveredBlock292Value8 := recoveredBlock292Value0.
    recoveredBlock292Value9 := recoveredLocal8.
    (recoveredBlock292Value8) leftWidget: (recoveredBlock292Value9).
    recoveredBlock292Value10 := recoveredBlock292Value0.
    recoveredBlock292Value11 := XmATTACHFORM.
    (recoveredBlock292Value10) rightAttachment: (recoveredBlock292Value11).
    recoveredBlock292Value12 := (recoveredBlock292Value0) rightOffset: (5).
    recoveredBlock292Value12
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := 'elemListEtasMultipleSelectionCallback:clientData:callData:'.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := XmNdefaultActionCallback.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := 'elemListDefaultActionCallback:clientData:callData:'.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := XmNchildrenCallback.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := 'elemListChildren:clientData:callData:'.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := XmNvisualInfoCallback.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := 'elemListVisualInfo:clientData:callData:'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

