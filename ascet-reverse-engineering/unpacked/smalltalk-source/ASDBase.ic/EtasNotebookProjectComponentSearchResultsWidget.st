"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002bf8; bytecode file offset 0x8ffcfc"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
hideConfigSwitches
    ^self
! !

"ASDBase.ic method 0x200366d4; bytecode file offset 0x934580"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
sortBlockForName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementSortManager.
    recoveredValue1 := (recoveredValue0) sortBlockForNameAndPathString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074b64; bytecode file offset 0x9757c8"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
isProjectGlobalScope
    ^true
! !

"ASDBase.ic method 0x200c7504; bytecode file offset 0x9c3e48"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
makeConfigDict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    makeConfigDict := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8fe4; bytecode file offset 0x9c58b0"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
appendWidgetHierarchyPageContents: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super appendWidgetHierarchyPageContents: (recoveredValue0) parent: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201116e8; bytecode file offset 0xa0dfac"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
typeParentCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) getComponentFor: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) getClassTypeWithIcon: (recoveredValue3) forTab: (recoveredValue4).
    (recoveredValue0) value: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2012af98; bytecode file offset 0xa27884"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
makeConfigDict
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := makeConfigDict.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            makeConfigDict := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := makeConfigDict.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20144edc; bytecode file offset 0xa41798"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
getComponentFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014f104; bytecode file offset 0xa4b9c0"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
sortBlockForParentType
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getComponentFor: (recoveredBlock4Value0).
    recoveredBlock4Value2 := (recoveredBlock4Value1) label.
    recoveredBlock4Value3 := recoveredBlock4Arg2.
    recoveredBlock4Value4 := (self) getComponentFor: (recoveredBlock4Value3).
    recoveredBlock4Value5 := (recoveredBlock4Value4) label.
    recoveredBlock4Value6 := (recoveredBlock4Value2) < (recoveredBlock4Value5).
    recoveredBlock4Value6
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x2018ee64; bytecode file offset 0xa8b72c"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
menuRenameEnable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super menuRenameEnable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedElement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getComponentFor: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ea328; bytecode file offset 0xae6c0c"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
appendWidgetHierarchy: recoveredArg1 parent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDatas.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImplementations.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) appendWidgetHierarchyPageContents: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f2494; bytecode file offset 0xaeed60"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
modifiable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
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
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (self) getComponentFor: (recoveredBlock16Value0).
    recoveredBlock16Value2 := (recoveredBlock16Value1) modifiable.
    recoveredBlock16Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20223a30; bytecode file offset 0xb20300"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
getParentInstanceFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModelPathFor: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootElement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20249ea4; bytecode file offset 0xb46770"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
menuEditEnable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := super menuEditEnable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getComponentFor: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d91f8; bytecode file offset 0xbd5acc"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
getName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodElement.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ' -> '.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := ' -> '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathString.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e50d4; bytecode file offset 0xbe19a4"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
elementsForPageContents
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isDeleted: (recoveredBlock4Stack3).
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 43] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sgClassKey.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isRBDBObject.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 26] ifFalse: [recoveredBlock4PC := 43].
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sgClass.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack3.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 41] ifFalse: [recoveredBlock4PC := 36].
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isRead.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) not.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack2 := nil.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) asdElements.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue1) reject: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202f7da4; bytecode file offset 0xbf4690"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
createTableColumnParentTypeForTab: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Parent').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (96).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    recoveredValue9 := recoveredArg1.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('typeParentCellValueCallback:clientData:callData:') clientData: (recoveredValue9).
    recoveredValue10 := (self) tableColumnSortBlocks.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) sortBlockForParentType.
    (recoveredValue10) at: (recoveredValue11) put: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2038e2d8; bytecode file offset 0xc8abac"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
getInstancePathFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModelPathFor: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) label.
    recoveredBlock35Value2 := (recoveredBlock35Value1) , ('\').
    recoveredBlock35Value3 := recoveredBlock35Value2.
    recoveredLocal3 := recoveredBlock35Value3.
    recoveredBlock35Value2
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ec6b0; bytecode file offset 0xce8f94"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
isDeleted: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) variables.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnValue.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) getComponentFor: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveVariables.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexVariables.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ee368; bytecode file offset 0xceac60"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
columnsContents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) createTableColumnNameForTab: ('element').
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) createTableColumnParentTypeForTab: ('element').
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

"ASDBase.ic method 0x2041a3f4; bytecode file offset 0xd16cec"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
menuGetLock
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) scmInterface.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentDriver.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (self) getComponentFor: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) scmInterface.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentDriver.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuData.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetToolBar.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block280fbcc4Arg1 | 
    | block280fbcc4Stack0 block280fbcc4Stack1 block280fbcc4Stack2 block280fbcc4Stack3 block280fbcc4PC block280fbcc4Step block280fbcc4Done block280fbcc4Result |
    block280fbcc4Stack0 := self.
    block280fbcc4PC := 4.
    block280fbcc4Done := false.
    [block280fbcc4Done not] whileTrue: [
        block280fbcc4Step := block280fbcc4PC.
        block280fbcc4Step = 4 ifTrue: [
            block280fbcc4Stack1 := false.
            block280fbcc4PC := 5.
        ].
        block280fbcc4Step = 5 ifTrue: [
            block280fbcc4Stack2 := block280fbcc4Arg1.
            block280fbcc4PC := 6.
        ].
        block280fbcc4Step = 6 ifTrue: [
            (block280fbcc4Stack2 == nil) ifTrue: [block280fbcc4PC := 17] ifFalse: [block280fbcc4PC := 10].
        ].
        block280fbcc4Step = 10 ifTrue: [
            block280fbcc4PC := 11.
        ].
        block280fbcc4Step = 11 ifTrue: [
            block280fbcc4Stack1 := block280fbcc4Arg1.
            block280fbcc4PC := 12.
        ].
        block280fbcc4Step = 12 ifTrue: [
            block280fbcc4Stack1 := (block280fbcc4Stack1) id.
            block280fbcc4PC := 14.
        ].
        block280fbcc4Step = 14 ifTrue: [
            block280fbcc4Stack2 := 'Lock'.
            block280fbcc4PC := 16.
        ].
        block280fbcc4Step = 16 ifTrue: [
            block280fbcc4Stack1 := (block280fbcc4Stack1) = (block280fbcc4Stack2).
            block280fbcc4PC := 17.
        ].
        block280fbcc4Step = 17 ifTrue: [
            block280fbcc4Result := block280fbcc4Stack1.
            block280fbcc4Done := true.
        ].
    ].
    block280fbcc4Result
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) scmInterface.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) userData.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) scmDriverMenuAction: (recoveredStack1) menuItem: (recoveredStack2) selection: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) updateWidgetSearchResults.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20466854; bytecode file offset 0xd6316c"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
contentsDelete
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuDeleteEnable.
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
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := (self) userData.
    recoveredBlock12Value1 := [:recoveredBlock12Block19Arg1 | 
    | recoveredBlock12Block19Stack0 recoveredBlock12Block19Stack1 recoveredBlock12Block19Stack2 recoveredBlock12Block19Stack3 recoveredBlock12Block19Stack4 recoveredBlock12Block19PC recoveredBlock12Block19Step recoveredBlock12Block19Done recoveredBlock12Block19Result |
    recoveredBlock12Block19Stack0 := self.
    recoveredBlock12Block19PC := 26.
    recoveredBlock12Block19Done := false.
    [recoveredBlock12Block19Done not] whileTrue: [
        recoveredBlock12Block19Step := recoveredBlock12Block19PC.
        recoveredBlock12Block19Step = 26 ifTrue: [
            recoveredBlock12Block19Stack0 := (recoveredBlock12Block19Stack0) widgetController.
            recoveredBlock12Block19PC := 27.
        ].
        recoveredBlock12Block19Step = 27 ifTrue: [
            recoveredBlock12Block19Stack0 := (recoveredBlock12Block19Stack0) selectedElements.
            recoveredBlock12Block19PC := 29.
        ].
        recoveredBlock12Block19Step = 29 ifTrue: [
            recoveredBlock12Block19Stack1 := [:recoveredBlock12Block19Block29Arg1 | 
    | recoveredBlock12Block19Block29Value0 recoveredBlock12Block19Block29Value1 recoveredBlock12Block19Block29Value2 recoveredBlock12Block19Block29Value3 recoveredBlock12Block19Block29Value4 recoveredBlock12Block19Block29Value5 recoveredBlock12Block19Block29Value6 |
    recoveredBlock12Block19Block29Value0 := recoveredBlock12Block19Arg1.
    recoveredBlock12Block19Block29Value1 := recoveredBlock12Block19Block29Arg1.
    recoveredBlock12Block19Block29Value2 := (recoveredBlock12Block19Block29Value1) typeLabel.
    recoveredBlock12Block19Block29Value3 := ('Collecting component parents') , (recoveredBlock12Block19Block29Value2).
    (recoveredBlock12Block19Block29Value0) messageString: (recoveredBlock12Block19Block29Value3).
    recoveredBlock12Block19Block29Value4 := recoveredBlock12Block19Block29Arg1.
    recoveredBlock12Block19Block29Value5 := (self) getComponentFor: (recoveredBlock12Block19Block29Value4).
    recoveredBlock12Block19Block29Value6 := (recoveredBlock12Block19Block29Value5) modifiable.
    recoveredBlock12Block19Block29Value6
].
            recoveredBlock12Block19PC := 54.
        ].
        recoveredBlock12Block19Step = 54 ifTrue: [
            recoveredBlock12Block19Stack0 := (recoveredBlock12Block19Stack0) select: (recoveredBlock12Block19Stack1).
            recoveredBlock12Block19PC := 56.
        ].
        recoveredBlock12Block19Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock12Block19Stack0.
            recoveredBlock12Block19PC := 59.
        ].
        recoveredBlock12Block19Step = 59 ifTrue: [
            recoveredBlock12Block19Stack0 := nil.
            recoveredBlock12Block19PC := 60.
        ].
        recoveredBlock12Block19Step = 60 ifTrue: [
            recoveredBlock12Block19Stack1 := self.
            recoveredBlock12Block19PC := 61.
        ].
        recoveredBlock12Block19Step = 61 ifTrue: [
            recoveredBlock12Block19Stack1 := (recoveredBlock12Block19Stack1) widgetController.
            recoveredBlock12Block19PC := 62.
        ].
        recoveredBlock12Block19Step = 62 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredLocal1.
            recoveredBlock12Block19PC := 65.
        ].
        recoveredBlock12Block19Step = 65 ifTrue: [
            recoveredBlock12Block19Stack3 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 68.
        ].
        recoveredBlock12Block19Step = 68 ifTrue: [
            recoveredBlock12Block19Stack1 := (recoveredBlock12Block19Stack1) deleteElementsWithQuery: (recoveredBlock12Block19Stack2) processDialog: (recoveredBlock12Block19Stack3).
            recoveredBlock12Block19PC := 70.
        ].
        recoveredBlock12Block19Step = 70 ifTrue: [
            (recoveredBlock12Block19Stack1 == nil) ifTrue: [recoveredBlock12Block19PC := 97] ifFalse: [recoveredBlock12Block19PC := 74].
        ].
        recoveredBlock12Block19Step = 74 ifTrue: [
            recoveredBlock12Block19PC := 75.
        ].
        recoveredBlock12Block19Step = 75 ifTrue: [
            recoveredBlock12Block19Stack0 := self.
            recoveredBlock12Block19PC := 76.
        ].
        recoveredBlock12Block19Step = 76 ifTrue: [
            recoveredBlock12Block19Stack1 := EwListSelectionCallbackData.
            recoveredBlock12Block19PC := 78.
        ].
        recoveredBlock12Block19Step = 78 ifTrue: [
            recoveredBlock12Block19Stack1 := (recoveredBlock12Block19Stack1) new.
            recoveredBlock12Block19PC := 80.
        ].
        recoveredBlock12Block19Step = 80 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Stack1.
            recoveredBlock12Block19PC := 81.
        ].
        recoveredBlock12Block19Step = 81 ifTrue: [
            recoveredBlock12Block19Stack3 := nil.
            recoveredBlock12Block19PC := 82.
        ].
        recoveredBlock12Block19Step = 82 ifTrue: [
            (recoveredBlock12Block19Stack2) reason: (recoveredBlock12Block19Stack3).
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Stack1.
            recoveredBlock12Block19PC := 85.
        ].
        recoveredBlock12Block19Step = 85 ifTrue: [
            recoveredBlock12Block19Stack3 := self.
            recoveredBlock12Block19PC := 86.
        ].
        recoveredBlock12Block19Step = 86 ifTrue: [
            recoveredBlock12Block19Stack3 := (recoveredBlock12Block19Stack3) item.
            recoveredBlock12Block19PC := 87.
        ].
        recoveredBlock12Block19Step = 87 ifTrue: [
            (recoveredBlock12Block19Stack2) item: (recoveredBlock12Block19Stack3).
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Stack1.
            recoveredBlock12Block19PC := 90.
        ].
        recoveredBlock12Block19Step = 90 ifTrue: [
            recoveredBlock12Block19Stack3 := self.
            recoveredBlock12Block19PC := 91.
        ].
        recoveredBlock12Block19Step = 91 ifTrue: [
            recoveredBlock12Block19Stack3 := (recoveredBlock12Block19Stack3) currentTableList.
            recoveredBlock12Block19PC := 93.
        ].
        recoveredBlock12Block19Step = 93 ifTrue: [
            (recoveredBlock12Block19Stack2) widget: (recoveredBlock12Block19Stack3).
            recoveredBlock12Block19PC := 95.
        ].
        recoveredBlock12Block19Step = 95 ifTrue: [
            recoveredBlock12Block19Stack0 := (recoveredBlock12Block19Stack0) callElementsDeletedCallback: (recoveredBlock12Block19Stack1).
            recoveredBlock12Block19PC := 97.
        ].
        recoveredBlock12Block19Step = 97 ifTrue: [
            recoveredBlock12Block19Result := recoveredBlock12Block19Stack0.
            recoveredBlock12Block19Done := true.
        ].
    ].
    recoveredBlock12Block19Result
].
    recoveredBlock12Value2 := (recoveredBlock12Value0) execLongOperation: (recoveredBlock12Value1) message: ('Deleting unUsed elements...') allowCancel: (true) showProgress: (true).
    recoveredBlock12Value2
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) suspendObserving: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) callToolbarRelevantUpdateCallback: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentTableList.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c5190; bytecode file offset 0xdc1a9c"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
checkElementsReferenced: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) getComponentFor: (recoveredBlock25Stack1).
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack0.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack0 := recoveredLocal1.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack1 := [
    | recoveredBlock25Block40Value0 recoveredBlock25Block40Value1 |
    recoveredBlock25Block40Value0 := (self) item.
    recoveredBlock25Block40Value1 := recoveredBlock25Block40Value0.
    recoveredLocal1 := recoveredBlock25Block40Value1.
    recoveredBlock25Block40Value0
].
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            (recoveredBlock25Stack0) ifNil: (recoveredBlock25Stack1).
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack0 := nil.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) collectReferencesForElement: (recoveredBlock25Stack2).
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredLocal3 := recoveredBlock25Stack2.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) isEmpty.
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 146] ifFalse: [recoveredBlock25PC := 70].
        ].
        recoveredBlock25Step = 70 ifTrue: [
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack0 := ReadWriteStream.
            recoveredBlock25PC := 73.
        ].
        recoveredBlock25Step = 73 ifTrue: [
            recoveredBlock25Stack1 := ''.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) on: (recoveredBlock25Stack1).
            recoveredBlock25PC := 77.
        ].
        recoveredBlock25Step = 77 ifTrue: [
            recoveredLocal2 := recoveredBlock25Stack0.
            recoveredBlock25PC := 80.
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack0 := recoveredLocal2.
            recoveredBlock25PC := 83.
        ].
        recoveredBlock25Step = 83 ifTrue: [
            recoveredBlock25Stack1 := 'Element '.
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 86.
        ].
        recoveredBlock25Step = 86 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) label.
            recoveredBlock25PC := 88.
        ].
        recoveredBlock25Step = 88 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 90.
        ].
        recoveredBlock25Step = 90 ifTrue: [
            recoveredBlock25Stack2 := ' has occurrences in '.
            recoveredBlock25PC := 92.
        ].
        recoveredBlock25Step = 92 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 94.
        ].
        recoveredBlock25Step = 94 ifTrue: [
            (recoveredBlock25Stack0) nextPutAll: (recoveredBlock25Stack1).
            recoveredBlock25PC := 96.
        ].
        recoveredBlock25Step = 96 ifTrue: [
            recoveredBlock25Stack0 := recoveredLocal3.
            recoveredBlock25PC := 99.
        ].
        recoveredBlock25Step = 99 ifTrue: [
            recoveredBlock25Stack1 := [:recoveredBlock25Block99Arg1 | 
    | recoveredBlock25Block99Value0 recoveredBlock25Block99Value1 recoveredBlock25Block99Value2 recoveredBlock25Block99Value3 recoveredBlock25Block99Value4 recoveredBlock25Block99Value5 |
    recoveredBlock25Block99Value0 := recoveredLocal2.
    recoveredBlock25Block99Value1 := recoveredBlock25Block99Value0.
    (recoveredBlock25Block99Value1) cr.
    recoveredBlock25Block99Value2 := recoveredBlock25Block99Arg1.
    recoveredBlock25Block99Value3 := recoveredLocal1.
    recoveredBlock25Block99Value4 := (recoveredBlock25Block99Value2) visualCallBackString: (recoveredBlock25Block99Value3).
    recoveredBlock25Block99Value5 := (recoveredBlock25Block99Value0) nextPutAll: (recoveredBlock25Block99Value4).
    recoveredBlock25Block99Value5
].
            recoveredBlock25PC := 121.
        ].
        recoveredBlock25Step = 121 ifTrue: [
            (recoveredBlock25Stack0) do: (recoveredBlock25Stack1).
            recoveredBlock25PC := 123.
        ].
        recoveredBlock25Step = 123 ifTrue: [
            recoveredBlock25Stack0 := recoveredLocal2.
            recoveredBlock25PC := 126.
        ].
        recoveredBlock25Step = 126 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Stack0.
            recoveredBlock25PC := 127.
        ].
        recoveredBlock25Step = 127 ifTrue: [
            (recoveredBlock25Stack1) cr.
            recoveredBlock25PC := 129.
        ].
        recoveredBlock25Step = 129 ifTrue: [
            recoveredBlock25Stack1 := 'Delete not possible.'.
            recoveredBlock25PC := 131.
        ].
        recoveredBlock25Step = 131 ifTrue: [
            (recoveredBlock25Stack0) nextPutAll: (recoveredBlock25Stack1).
            recoveredBlock25PC := 133.
        ].
        recoveredBlock25Step = 133 ifTrue: [
            recoveredBlock25Stack0 := RBUserInfo.
            recoveredBlock25PC := 135.
        ].
        recoveredBlock25Step = 135 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 138.
        ].
        recoveredBlock25Step = 138 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) contents.
            recoveredBlock25PC := 140.
        ].
        recoveredBlock25Step = 140 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) message: (recoveredBlock25Stack1).
            recoveredBlock25PC := 142.
        ].
        recoveredBlock25Step = 142 ifTrue: [
            (recoveredBlock25Stack0) prompt.
            recoveredBlock25PC := 144.
        ].
        recoveredBlock25Step = 144 ifTrue: [
            recoveredBlock25Stack0 := nil.
            recoveredBlock25PC := 145.
        ].
        recoveredBlock25Step = 145 ifTrue: [
            ^recoveredBlock25Stack0
        ].
        recoveredBlock25Step = 146 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack0.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20522018; bytecode file offset 0xe1e930"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
menuGoTo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super menuGoTo.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getComponentFor: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 193] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfigDict.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfig.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := #().
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := (recoveredStack5) userData.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := (recoveredStack5) uiController.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := (recoveredStack5) context.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) openDiagramEditorFor: (recoveredStack1) spec: (recoveredStack2) makeConfig: (recoveredStack3) makeConfigStack: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 'No editor available for component!!'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) selectAndExpandItem: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectParentsFor: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Value0 recoveredBlock147Value1 recoveredBlock147Value2 |
    recoveredBlock147Value0 := recoveredLocal5.
    recoveredBlock147Value1 := recoveredBlock147Arg1.
    recoveredBlock147Value2 := (recoveredBlock147Value0) selectAndExpandItem: (recoveredBlock147Value1).
    recoveredBlock147Value2
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodDeclaration.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) selectAndExpandMethod: (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) selectAndExpandItem: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) menuExtrasShowUnused.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205bd058; bytecode file offset 0xeb99a0"
!EtasNotebookProjectComponentSearchResultsWidget methodsFor: 'recovered'!
menuCreateActionForAscetLink: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'Elements'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg1.
            recoveredBlock57PC := 65.
        ].
        recoveredBlock57Step = 65 ifTrue: [
            recoveredBlock57Stack0 := (recoveredBlock57Stack0) getComponentFor: (recoveredBlock57Stack1).
            recoveredBlock57PC := 67.
        ].
        recoveredBlock57Step = 67 ifTrue: [
            recoveredLocal5 := recoveredBlock57Stack0.
            recoveredBlock57PC := 70.
        ].
        recoveredBlock57Step = 70 ifTrue: [
            recoveredBlock57Stack0 := recoveredLocal5.
            recoveredBlock57PC := 73.
        ].
        recoveredBlock57Step = 73 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 74.
        ].
        recoveredBlock57Step = 74 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) item.
            recoveredBlock57PC := 76.
        ].
        recoveredBlock57Step = 76 ifTrue: [
            recoveredBlock57Stack0 := (recoveredBlock57Stack0) ~= (recoveredBlock57Stack1).
            recoveredBlock57PC := 77.
        ].
        recoveredBlock57Step = 77 ifTrue: [
            (recoveredBlock57Stack0) ifTrue: [recoveredBlock57PC := 80] ifFalse: [recoveredBlock57PC := 140].
        ].
        recoveredBlock57Step = 80 ifTrue: [
            recoveredBlock57Stack0 := self.
            recoveredBlock57PC := 81.
        ].
        recoveredBlock57Step = 81 ifTrue: [
            recoveredBlock57Stack0 := (recoveredBlock57Stack0) makeConfigDict.
            recoveredBlock57PC := 83.
        ].
        recoveredBlock57Step = 83 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal5.
            recoveredBlock57PC := 86.
        ].
        recoveredBlock57Step = 86 ifTrue: [
            recoveredBlock57Stack2 := [].
            recoveredBlock57PC := 88.
        ].
        recoveredBlock57Step = 88 ifTrue: [
            recoveredBlock57Stack0 := (recoveredBlock57Stack0) at: (recoveredBlock57Stack1) ifAbsent: (recoveredBlock57Stack2).
            recoveredBlock57PC := 90.
        ].
        recoveredBlock57Step = 90 ifTrue: [
            recoveredLocal4 := recoveredBlock57Stack0.
            recoveredBlock57PC := 93.
        ].
        recoveredBlock57Step = 93 ifTrue: [
            recoveredBlock57Stack0 := recoveredLocal4.
            recoveredBlock57PC := 96.
        ].
        recoveredBlock57Step = 96 ifTrue: [
            (recoveredBlock57Stack0 == nil) ifTrue: [recoveredBlock57PC := 140] ifFalse: [recoveredBlock57PC := 100].
        ].
        recoveredBlock57Step = 100 ifTrue: [
            recoveredBlock57Stack0 := recoveredArg1.
            recoveredBlock57PC := 103.
        ].
        recoveredBlock57Step = 103 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal4.
            recoveredBlock57PC := 106.
        ].
        recoveredBlock57Step = 106 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) first.
            recoveredBlock57PC := 108.
        ].
        recoveredBlock57Step = 108 ifTrue: [
            (recoveredBlock57Stack0) makeConfig: (recoveredBlock57Stack1).
            recoveredBlock57PC := 110.
        ].
        recoveredBlock57Step = 110 ifTrue: [
            recoveredBlock57Stack0 := recoveredLocal5.
            recoveredBlock57PC := 113.
        ].
        recoveredBlock57Step = 113 ifTrue: [
            recoveredBlock57Stack0 := (recoveredBlock57Stack0) isCClass.
            recoveredBlock57PC := 115.
        ].
        recoveredBlock57Step = 115 ifTrue: [
            (recoveredBlock57Stack0) ifTrue: [recoveredBlock57PC := 118] ifFalse: [recoveredBlock57PC := 140].
        ].
        recoveredBlock57Step = 118 ifTrue: [
            recoveredBlock57Stack0 := recoveredArg1.
            recoveredBlock57PC := 121.
        ].
        recoveredBlock57Step = 121 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 122.
        ].
        recoveredBlock57Step = 122 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) item.
            recoveredBlock57PC := 124.
        ].
        recoveredBlock57Step = 124 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) targetLabel.
            recoveredBlock57PC := 126.
        ].
        recoveredBlock57Step = 126 ifTrue: [
            (recoveredBlock57Stack0) target: (recoveredBlock57Stack1).
            recoveredBlock57PC := 128.
        ].
        recoveredBlock57Step = 128 ifTrue: [
            recoveredBlock57Stack0 := recoveredArg1.
            recoveredBlock57PC := 131.
        ].
        recoveredBlock57Step = 131 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 132.
        ].
        recoveredBlock57Step = 132 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) item.
            recoveredBlock57PC := 134.
        ].
        recoveredBlock57Step = 134 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) generatorSettings.
            recoveredBlock57PC := 136.
        ].
        recoveredBlock57Step = 136 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) codeGenShortPathName.
            recoveredBlock57PC := 138.
        ].
        recoveredBlock57Step = 138 ifTrue: [
            (recoveredBlock57Stack0) generator: (recoveredBlock57Stack1).
            recoveredBlock57PC := 140.
        ].
        recoveredBlock57Step = 140 ifTrue: [
            recoveredBlock57Stack0 := self.
            recoveredBlock57PC := 141.
        ].
        recoveredBlock57Step = 141 ifTrue: [
            recoveredBlock57Stack0 := (recoveredBlock57Stack0) owner.
            recoveredBlock57PC := 143.
        ].
        recoveredBlock57Step = 143 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal7.
            recoveredBlock57PC := 146.
        ].
        recoveredBlock57Step = 146 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) first.
            recoveredBlock57PC := 148.
        ].
        recoveredBlock57Step = 148 ifTrue: [
            recoveredBlock57Stack2 := recoveredArg1.
            recoveredBlock57PC := 151.
        ].
        recoveredBlock57Step = 151 ifTrue: [
            recoveredBlock57Stack0 := (recoveredBlock57Stack0) menuCreateAscetLinkFor: (recoveredBlock57Stack1) param: (recoveredBlock57Stack2).
            recoveredBlock57PC := 153.
        ].
        recoveredBlock57Step = 153 ifTrue: [
            ^recoveredBlock57Stack0
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredPC := 320.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := [:recoveredBlock170Arg1 | 
    | recoveredBlock170Stack0 recoveredBlock170Stack1 recoveredBlock170Stack2 recoveredBlock170Stack3 recoveredBlock170PC recoveredBlock170Step recoveredBlock170Done recoveredBlock170Result |
    recoveredBlock170Stack0 := self.
    recoveredBlock170PC := 176.
    recoveredBlock170Done := false.
    [recoveredBlock170Done not] whileTrue: [
        recoveredBlock170Step := recoveredBlock170PC.
        recoveredBlock170Step = 176 ifTrue: [
            recoveredBlock170Stack1 := recoveredBlock170Arg1.
            recoveredBlock170PC := 177.
        ].
        recoveredBlock170Step = 177 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) getComponentFor: (recoveredBlock170Stack1).
            recoveredBlock170PC := 179.
        ].
        recoveredBlock170Step = 179 ifTrue: [
            recoveredLocal5 := recoveredBlock170Stack0.
            recoveredBlock170PC := 182.
        ].
        recoveredBlock170Step = 182 ifTrue: [
            recoveredBlock170Stack0 := recoveredArg1.
            recoveredBlock170PC := 185.
        ].
        recoveredBlock170Step = 185 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) copy.
            recoveredBlock170PC := 187.
        ].
        recoveredBlock170Step = 187 ifTrue: [
            recoveredLocal1 := recoveredBlock170Stack0.
            recoveredBlock170PC := 190.
        ].
        recoveredBlock170Step = 190 ifTrue: [
            recoveredBlock170Stack0 := recoveredLocal5.
            recoveredBlock170PC := 193.
        ].
        recoveredBlock170Step = 193 ifTrue: [
            recoveredBlock170Stack1 := self.
            recoveredBlock170PC := 194.
        ].
        recoveredBlock170Step = 194 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) item.
            recoveredBlock170PC := 196.
        ].
        recoveredBlock170Step = 196 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) ~= (recoveredBlock170Stack1).
            recoveredBlock170PC := 197.
        ].
        recoveredBlock170Step = 197 ifTrue: [
            (recoveredBlock170Stack0) ifTrue: [recoveredBlock170PC := 200] ifFalse: [recoveredBlock170PC := 260].
        ].
        recoveredBlock170Step = 200 ifTrue: [
            recoveredBlock170Stack0 := self.
            recoveredBlock170PC := 201.
        ].
        recoveredBlock170Step = 201 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) makeConfigDict.
            recoveredBlock170PC := 203.
        ].
        recoveredBlock170Step = 203 ifTrue: [
            recoveredBlock170Stack1 := recoveredLocal5.
            recoveredBlock170PC := 206.
        ].
        recoveredBlock170Step = 206 ifTrue: [
            recoveredBlock170Stack2 := [].
            recoveredBlock170PC := 208.
        ].
        recoveredBlock170Step = 208 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) at: (recoveredBlock170Stack1) ifAbsent: (recoveredBlock170Stack2).
            recoveredBlock170PC := 210.
        ].
        recoveredBlock170Step = 210 ifTrue: [
            recoveredLocal4 := recoveredBlock170Stack0.
            recoveredBlock170PC := 213.
        ].
        recoveredBlock170Step = 213 ifTrue: [
            recoveredBlock170Stack0 := recoveredLocal4.
            recoveredBlock170PC := 216.
        ].
        recoveredBlock170Step = 216 ifTrue: [
            (recoveredBlock170Stack0 == nil) ifTrue: [recoveredBlock170PC := 260] ifFalse: [recoveredBlock170PC := 220].
        ].
        recoveredBlock170Step = 220 ifTrue: [
            recoveredBlock170Stack0 := recoveredLocal1.
            recoveredBlock170PC := 223.
        ].
        recoveredBlock170Step = 223 ifTrue: [
            recoveredBlock170Stack1 := recoveredLocal4.
            recoveredBlock170PC := 226.
        ].
        recoveredBlock170Step = 226 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) first.
            recoveredBlock170PC := 228.
        ].
        recoveredBlock170Step = 228 ifTrue: [
            (recoveredBlock170Stack0) makeConfig: (recoveredBlock170Stack1).
            recoveredBlock170PC := 230.
        ].
        recoveredBlock170Step = 230 ifTrue: [
            recoveredBlock170Stack0 := recoveredLocal5.
            recoveredBlock170PC := 233.
        ].
        recoveredBlock170Step = 233 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) isCClass.
            recoveredBlock170PC := 235.
        ].
        recoveredBlock170Step = 235 ifTrue: [
            (recoveredBlock170Stack0) ifTrue: [recoveredBlock170PC := 238] ifFalse: [recoveredBlock170PC := 260].
        ].
        recoveredBlock170Step = 238 ifTrue: [
            recoveredBlock170Stack0 := recoveredLocal1.
            recoveredBlock170PC := 241.
        ].
        recoveredBlock170Step = 241 ifTrue: [
            recoveredBlock170Stack1 := self.
            recoveredBlock170PC := 242.
        ].
        recoveredBlock170Step = 242 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) item.
            recoveredBlock170PC := 244.
        ].
        recoveredBlock170Step = 244 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) targetLabel.
            recoveredBlock170PC := 246.
        ].
        recoveredBlock170Step = 246 ifTrue: [
            (recoveredBlock170Stack0) target: (recoveredBlock170Stack1).
            recoveredBlock170PC := 248.
        ].
        recoveredBlock170Step = 248 ifTrue: [
            recoveredBlock170Stack0 := recoveredLocal1.
            recoveredBlock170PC := 251.
        ].
        recoveredBlock170Step = 251 ifTrue: [
            recoveredBlock170Stack1 := self.
            recoveredBlock170PC := 252.
        ].
        recoveredBlock170Step = 252 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) item.
            recoveredBlock170PC := 254.
        ].
        recoveredBlock170Step = 254 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) generatorSettings.
            recoveredBlock170PC := 256.
        ].
        recoveredBlock170Step = 256 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) codeGenShortPathName.
            recoveredBlock170PC := 258.
        ].
        recoveredBlock170Step = 258 ifTrue: [
            (recoveredBlock170Stack0) generator: (recoveredBlock170Stack1).
            recoveredBlock170PC := 260.
        ].
        recoveredBlock170Step = 260 ifTrue: [
            recoveredBlock170Stack0 := self.
            recoveredBlock170PC := 261.
        ].
        recoveredBlock170Step = 261 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) owner.
            recoveredBlock170PC := 263.
        ].
        recoveredBlock170Step = 263 ifTrue: [
            recoveredBlock170Stack1 := recoveredBlock170Arg1.
            recoveredBlock170PC := 264.
        ].
        recoveredBlock170Step = 264 ifTrue: [
            recoveredBlock170Stack2 := recoveredLocal1.
            recoveredBlock170PC := 267.
        ].
        recoveredBlock170Step = 267 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) createAscetLinkFor: (recoveredBlock170Stack1) param: (recoveredBlock170Stack2).
            recoveredBlock170PC := 269.
        ].
        recoveredBlock170Step = 269 ifTrue: [
            recoveredLocal2 := recoveredBlock170Stack0.
            recoveredBlock170PC := 272.
        ].
        recoveredBlock170Step = 272 ifTrue: [
            recoveredBlock170Stack0 := SGMonitorStreamDummy.
            recoveredBlock170PC := 274.
        ].
        recoveredBlock170Step = 274 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) new.
            recoveredBlock170PC := 276.
        ].
        recoveredBlock170Step = 276 ifTrue: [
            recoveredBlock170Stack1 := 'ASCET-Link created: '.
            recoveredBlock170PC := 278.
        ].
        recoveredBlock170Step = 278 ifTrue: [
            recoveredBlock170Stack2 := recoveredLocal2.
            recoveredBlock170PC := 281.
        ].
        recoveredBlock170Step = 281 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) , (recoveredBlock170Stack2).
            recoveredBlock170PC := 283.
        ].
        recoveredBlock170Step = 283 ifTrue: [
            (recoveredBlock170Stack0) addImportantInfoText: (recoveredBlock170Stack1).
            recoveredBlock170PC := 285.
        ].
        recoveredBlock170Step = 285 ifTrue: [
            recoveredBlock170Stack0 := recoveredLocal3.
            recoveredBlock170PC := 288.
        ].
        recoveredBlock170Step = 288 ifTrue: [
            recoveredBlock170Stack1 := recoveredLocal2.
            recoveredBlock170PC := 291.
        ].
        recoveredBlock170Step = 291 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) , (recoveredBlock170Stack1).
            recoveredBlock170PC := 293.
        ].
        recoveredBlock170Step = 293 ifTrue: [
            recoveredBlock170Stack1 := '\'.
            recoveredBlock170PC := 295.
        ].
        recoveredBlock170Step = 295 ifTrue: [
            recoveredBlock170Stack0 := (recoveredBlock170Stack0) , (recoveredBlock170Stack1).
            recoveredBlock170PC := 297.
        ].
        recoveredBlock170Step = 297 ifTrue: [
            recoveredBlock170Stack1 := recoveredBlock170Stack0.
            recoveredBlock170PC := 298.
        ].
        recoveredBlock170Step = 298 ifTrue: [
            recoveredLocal3 := recoveredBlock170Stack1.
            recoveredBlock170PC := 301.
        ].
        recoveredBlock170Step = 301 ifTrue: [
            recoveredBlock170Result := recoveredBlock170Stack0.
            recoveredBlock170Done := true.
        ].
    ].
    recoveredBlock170Result
].
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := OSClipboard.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) withLfs.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

