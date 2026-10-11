"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200087bc; bytecode file offset 0x908be4"
!ASDGenericComponent methodsFor: 'recovered'!
allReferencedNonPrimitiveItems
    | recoveredValue0 |
    recoveredValue0 := (self) referencedComponents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ce7c; bytecode file offset 0x909ab8"
!ASDGenericComponent methodsFor: 'recovered'!
cachedNameFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x20018e90; bytecode file offset 0x92209c"
!ASDGenericComponent methodsFor: 'recovered'!
getXMLType
    ^'GenericComponent'
! !

"ASDBase.ic method 0x20019cf4; bytecode file offset 0x92209c"
!ASDGenericComponent methodsFor: 'recovered'!
getComponentType
    ^'ASCET_GenericComponent'
! !

"ASDBase.ic method 0x2001d45c; bytecode file offset 0x92209c"
!ASDGenericComponent methodsFor: 'recovered'!
getComponentTag
    ^'GenericComponent'
! !

"ASDBase.ic method 0x2002695c; bytecode file offset 0x923928"
!ASDGenericComponent methodsFor: 'recovered'!
possibleSignatureTypes
    ^#()
! !

"ASDBase.ic method 0x2002da84; bytecode file offset 0x934580"
!ASDGenericComponent methodsFor: 'recovered'!
editorIconName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) iconName.
    recoveredValue1 := (recoveredValue0) asAtom.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20058438; bytecode file offset 0x956284"
!ASDGenericComponent methodsFor: 'recovered'!
analyzeGenericComponentModuleCodeGeneration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) myFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) analyzeGenericComponentModuleCodeGeneration: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058cc8; bytecode file offset 0x956284"
!ASDGenericComponent methodsFor: 'recovered'!
requiresPreGeneration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) myFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) requiresPreGeneration: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007133c; bytecode file offset 0x96dc00"
!ASDGenericComponent methodsFor: 'recovered'!
getIconName
    | recoveredValue0 |
    recoveredValue0 := iconName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071378; bytecode file offset 0x96dc3c"
!ASDGenericComponent methodsFor: 'recovered'!
xmlFileList
    | recoveredValue0 |
    recoveredValue0 := genericSpecificationFileList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200713b4; bytecode file offset 0x96dc70"
!ASDGenericComponent methodsFor: 'recovered'!
factoryKey
    | recoveredValue0 |
    recoveredValue0 := factoryKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074190; bytecode file offset 0x970b34"
!ASDGenericComponent methodsFor: 'recovered'!
target
    ^nil
! !

"ASDBase.ic method 0x20077694; bytecode file offset 0x9757c8"
!ASDGenericComponent methodsFor: 'recovered'!
isGenericComponent
    ^true
! !

"ASDBase.ic method 0x20079a9c; bytecode file offset 0x97c330"
!ASDGenericComponent methodsFor: 'recovered'!
isCClass
    ^false
! !

"ASDBase.ic method 0x2007a754; bytecode file offset 0x97c330"
!ASDGenericComponent methodsFor: 'recovered'!
isDIFFComparable
    ^false
! !

"ASDBase.ic method 0x20088584; bytecode file offset 0x985628"
!ASDGenericComponent methodsFor: 'recovered'!
myFactory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGenericComponentFactory.
    recoveredValue1 := (self) factoryKey.
    recoveredValue2 := (recoveredValue0) getRegisteredFactory: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200905f8; bytecode file offset 0x98d054"
!ASDGenericComponent methodsFor: 'recovered'!
widgetCachingKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := (self) factoryKey.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c788c; bytecode file offset 0x9c4150"
!ASDGenericComponent methodsFor: 'recovered'!
iconName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iconName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c78b0; bytecode file offset 0x9c4194"
!ASDGenericComponent methodsFor: 'recovered'!
xmlFileList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    genericSpecificationFileList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c78fc; bytecode file offset 0x9c41c8"
!ASDGenericComponent methodsFor: 'recovered'!
factoryKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    factoryKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7930; bytecode file offset 0x9c420c"
!ASDGenericComponent methodsFor: 'recovered'!
componentProxies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentProxies := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c90f8; bytecode file offset 0x9c59c4"
!ASDGenericComponent methodsFor: 'recovered'!
editPrompt: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) makeVisibleItem: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) userInterface.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dcee0; bytecode file offset 0x9d97a0"
!ASDGenericComponent methodsFor: 'recovered'!
preGenerate: recoveredArg1 manager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) myFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) context.
    recoveredValue4 := (recoveredValue0) preGenerate: (recoveredValue1) component: (self) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e603c; bytecode file offset 0x9e28fc"
!ASDGenericComponent methodsFor: 'recovered'!
initialize
    super initialize.
    componentProxies := 'unused'.
    ^self
! !

"ASDBase.ic method 0x200ed4c8; bytecode file offset 0x9e9dc4"
!ASDGenericComponent methodsFor: 'recovered'!
writeXMLMainToFiles: recoveredArg1 baseName: recoveredArg2 xmlExt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) writeXMLMainToFiles: (recoveredValue0) baseName: (recoveredValue1) xmlExt: (recoveredValue2) cryptNode: ('/ComponentMain/GenericComponent').
    ^self
! !

"ASDBase.ic method 0x20106ff8; bytecode file offset 0xa038b4"
!ASDGenericComponent methodsFor: 'recovered'!
getFileListWrapper
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := genericSpecificationFileList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c62d0Arg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012f4a4; bytecode file offset 0xa2bd68"
!ASDGenericComponent methodsFor: 'recovered'!
usesClassesUI
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super usesClassesUI.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) referencedComponents.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20149d44; bytecode file offset 0xa46608"
!ASDGenericComponent methodsFor: 'recovered'!
genericSpecificationFileList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFileListWrapper.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) initGenericSpecificationFileList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) genericSpecificationFileList.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201516c0; bytecode file offset 0xa4dfa4"
!ASDGenericComponent methodsFor: 'recovered'!
processes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super methods.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block280cd6b0Arg1 | 
    | block280cd6b0Value0 block280cd6b0Value1 |
    block280cd6b0Value0 := block280cd6b0Arg1.
    block280cd6b0Value1 := (block280cd6b0Value0) isProcess.
    block280cd6b0Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20159748; bytecode file offset 0xa56014"
!ASDGenericComponent methodsFor: 'recovered'!
deleteAllFiles
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) genericSpecificationFileList.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) keys.
    (recoveredValue1) removeAllKeys: (recoveredValue3).
    recoveredValue4 := (self) getFileListWrapper.
    (recoveredValue4) modified.
    (self) scmModified.
    ^self
! !

"ASDBase.ic method 0x2015be7c; bytecode file offset 0xa5874c"
!ASDGenericComponent methodsFor: 'recovered'!
initGenericSpecificationFileList
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGWrapperDB.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) createFor: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asRBDBReference.
    genericSpecificationFileList := recoveredValue4.
    (self) modified.
    (self) scmModified.
    ^self
! !

"ASDBase.ic method 0x2017bb2c; bytecode file offset 0xa783f0"
!ASDGenericComponent methodsFor: 'recovered'!
prepareDirectory: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGenericComponentFactory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) factoryKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRegisteredFactory: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) prepareDirectory: (recoveredStack2) component: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019bbdc; bytecode file offset 0xa984a0"
!ASDGenericComponent methodsFor: 'recovered'!
editGenericComponentParentView: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGenericComponentFactory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) factoryKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRegisteredFactory: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) editGenericComponentParentView: (recoveredStack2) context: (recoveredStack3) component: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a16f8; bytecode file offset 0xa9dfe0"
!ASDGenericComponent methodsFor: 'recovered'!
isProcessClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isGenericComponentProcessClass: (self).
    recoveredBlock4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) delegateToFactory: (recoveredStack1) ifNotDefined: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a170c; bytecode file offset 0xa9dfe0"
!ASDGenericComponent methodsFor: 'recovered'!
filterListForInsertComponent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) filterListForInsertComponent: (self).
    recoveredBlock4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) delegateToFactory: (recoveredStack1) ifNotDefined: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a1720; bytecode file offset 0xa9dfe0"
!ASDGenericComponent methodsFor: 'recovered'!
isContainer
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isGenericComponentContainer: (self).
    recoveredBlock4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) delegateToFactory: (recoveredStack1) ifNotDefined: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1cd8; bytecode file offset 0xaae598"
!ASDGenericComponent methodsFor: 'recovered'!
allUIElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) allUIElementsForComponent: (self).
    recoveredBlock4Value1
].
    recoveredValue1 := [
    ^#()
].
    recoveredValue2 := (self) delegateToFactory: (recoveredValue0) ifNotDefined: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201bd864; bytecode file offset 0xaba12c"
!ASDGenericComponent methodsFor: 'recovered'!
genericSpecificationFileList: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFileListWrapper.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) initGenericSpecificationFileList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) genericSpecificationFileList: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) contents: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ca8d0; bytecode file offset 0xac7198"
!ASDGenericComponent methodsFor: 'recovered'!
duplicateDependent
    | recoveredValue0 recoveredValue1 |
    super duplicateDependent.
    recoveredValue0 := genericSpecificationFileList.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) copyDatabaseObject.
    recoveredBlock10Value2 := (recoveredBlock10Value1) asRBDBPartOfChild.
    recoveredBlock10Value3 := recoveredBlock10Value2.
    genericSpecificationFileList := recoveredBlock10Value3.
    recoveredBlock10Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d44f4; bytecode file offset 0xad0dc0"
!ASDGenericComponent methodsFor: 'recovered'!
editableInDBBrowser
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGenericComponentFactory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) factoryKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRegisteredFactory: (recoveredStack2).
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'call_83594'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEditableComponent: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d69e8; bytecode file offset 0xad32b4"
!ASDGenericComponent methodsFor: 'recovered'!
defaultPublicSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d58a0Arg1 | 
    | block280d58a0Value0 block280d58a0Value1 |
    block280d58a0Value0 := block280d58a0Arg1.
    block280d58a0Value1 := (block280d58a0Value0) isCCodeSpecification.
    block280d58a0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := super defaultPublicSpec.
    recoveredBlock13Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ef8a4; bytecode file offset 0xaec174"
!ASDGenericComponent methodsFor: 'recovered'!
removeReferences: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) removeVars: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := EtasGenericComponentReferenceCallback.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) scmModified.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fb5f0; bytecode file offset 0xaf7eb8"
!ASDGenericComponent methodsFor: 'recovered'!
delegateToFactory: recoveredArg1 ifNotDefined: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) factoryKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := ASDGenericComponentFactory.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) factoryKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRegisteredFactory: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202185e4; bytecode file offset 0xb14eb0"
!ASDGenericComponent methodsFor: 'recovered'!
allGenericComponentElements
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDirectElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dae20Arg1 | 
    | block280dae20Stack0 block280dae20Stack1 block280dae20Stack2 block280dae20Stack3 block280dae20PC block280dae20Step block280dae20Done block280dae20Result |
    block280dae20Stack0 := self.
    block280dae20PC := 4.
    block280dae20Done := false.
    [block280dae20Done not] whileTrue: [
        block280dae20Step := block280dae20PC.
        block280dae20Step = 4 ifTrue: [
            block280dae20Stack1 := false.
            block280dae20PC := 5.
        ].
        block280dae20Step = 5 ifTrue: [
            block280dae20Stack2 := block280dae20Arg1.
            block280dae20PC := 6.
        ].
        block280dae20Step = 6 ifTrue: [
            block280dae20Stack2 := (block280dae20Stack2) isGenericComponentElement.
            block280dae20PC := 7.
        ].
        block280dae20Step = 7 ifTrue: [
            (block280dae20Stack2) ifTrue: [block280dae20PC := 10] ifFalse: [block280dae20PC := 23].
        ].
        block280dae20Step = 10 ifTrue: [
            block280dae20PC := 11.
        ].
        block280dae20Step = 11 ifTrue: [
            block280dae20Stack1 := block280dae20Arg1.
            block280dae20PC := 12.
        ].
        block280dae20Step = 12 ifTrue: [
            block280dae20Stack2 := [:block280dae44Arg1 | 
    nil
].
            block280dae20PC := 14.
        ].
        block280dae20Step = 14 ifTrue: [
            block280dae20PC := 20.
        ].
        block280dae20Step = 20 ifTrue: [
            block280dae20Stack1 := (block280dae20Stack1) sgClassIfUndefined: (block280dae20Stack2).
            block280dae20PC := 22.
        ].
        block280dae20Step = 22 ifTrue: [
            block280dae20Stack1 := (block280dae20Stack1) notNil.
            block280dae20PC := 23.
        ].
        block280dae20Step = 23 ifTrue: [
            block280dae20Result := block280dae20Stack1.
            block280dae20Done := true.
        ].
    ].
    block280dae20Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20231b30; bytecode file offset 0xb2e408"
!ASDGenericComponent methodsFor: 'recovered'!
xmlLoaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super xmlLoaded.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := dbObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) importDesc.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFileList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := dbObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) database.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := DBXmlImportDescLoadSpec.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := dbObject.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) importDesc.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeNewProxy: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            genericSpecificationFileList := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20238c9c; bytecode file offset 0xb35564"
!ASDGenericComponent methodsFor: 'recovered'!
deleteFileNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) genericSpecificationFileList.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    ^nil
].
    (recoveredValue1) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue4 := (self) getFileListWrapper.
    (recoveredValue4) modified.
    (self) scmModified.
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2023fcd8; bytecode file offset 0xb3c598"
!ASDGenericComponent methodsFor: 'recovered'!
allowedToAddComponent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) isAllowedToAddIn: (self) component: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) delegateToFactory: (recoveredStack1) ifNotDefined: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202443d8; bytecode file offset 0xb40ca4"
!ASDGenericComponent methodsFor: 'recovered'!
allPartProxiesWithUnloaded: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super allPartProxiesWithUnloaded: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) getFileListWrapper.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) dbObject.
    recoveredBlock16Value3 := (recoveredBlock16Value0) add: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2024ec44; bytecode file offset 0xb4b518"
!ASDGenericComponent methodsFor: 'recovered'!
dbXmlDesc
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super dbXmlDesc.
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
            recoveredStack1 := 'genericComponent'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'hasFileList'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := genericSpecificationFileList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack3 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) genericSpecificationFileList.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) setAttr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20260614; bytecode file offset 0xb5ced8"
!ASDGenericComponent methodsFor: 'recovered'!
iconName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) getIconNameForComponent: (self).
    recoveredBlock4Value1
].
    recoveredValue1 := [
    | recoveredBlock14Value0 |
    recoveredBlock14Value0 := iconName.
    recoveredBlock14Value0
].
    recoveredValue2 := (self) delegateToFactory: (recoveredValue0) ifNotDefined: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    ^recoveredBlock25Value0
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^'GeneralFolderClosed'
! !

"ASDBase.ic method 0x2028f794; bytecode file offset 0xb8c078"
!ASDGenericComponent methodsFor: 'recovered'!
addVar: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) addVarAllowed: (recoveredBlock4Value1) forComponent: (self).
    recoveredBlock4Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) delegateToFactory: (recoveredStack1) ifNotDefined: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := super addVar: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028f7b0; bytecode file offset 0xb8c078"
!ASDGenericComponent methodsFor: 'recovered'!
addVarOnly: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) addVarAllowed: (recoveredBlock4Value1) forComponent: (self).
    recoveredBlock4Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) delegateToFactory: (recoveredStack1) ifNotDefined: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := super addVarOnly: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ae68c; bytecode file offset 0xbaaf64"
!ASDGenericComponent methodsFor: 'recovered'!
updateGenericFileList: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) genericSpecificationFileList.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) keys.
    (recoveredValue1) removeAllKeys: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) key.
    recoveredBlock20Value3 := recoveredBlock20Arg1.
    recoveredBlock20Value4 := (recoveredBlock20Value3) value.
    recoveredBlock20Value5 := (recoveredBlock20Value0) at: (recoveredBlock20Value2) put: (recoveredBlock20Value4).
    recoveredBlock20Value5
].
    (recoveredValue4) associationsDo: (recoveredValue5).
    recoveredValue6 := (self) getFileListWrapper.
    (recoveredValue6) modified.
    ^self
! !

"ASDBase.ic method 0x202b32a0; bytecode file offset 0xbafb7c"
!ASDGenericComponent methodsFor: 'recovered'!
componentProxies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDirectElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e4bc4Arg1 | 
    | block280e4bc4Stack0 block280e4bc4Stack1 block280e4bc4Stack2 block280e4bc4Stack3 block280e4bc4PC block280e4bc4Step block280e4bc4Done block280e4bc4Result |
    block280e4bc4Stack0 := self.
    block280e4bc4PC := 4.
    block280e4bc4Done := false.
    [block280e4bc4Done not] whileTrue: [
        block280e4bc4Step := block280e4bc4PC.
        block280e4bc4Step = 4 ifTrue: [
            block280e4bc4Stack1 := false.
            block280e4bc4PC := 5.
        ].
        block280e4bc4Step = 5 ifTrue: [
            block280e4bc4Stack2 := block280e4bc4Arg1.
            block280e4bc4PC := 6.
        ].
        block280e4bc4Step = 6 ifTrue: [
            block280e4bc4Stack2 := (block280e4bc4Stack2) isGenericComponentElement.
            block280e4bc4PC := 7.
        ].
        block280e4bc4Step = 7 ifTrue: [
            (block280e4bc4Stack2) ifTrue: [block280e4bc4PC := 10] ifFalse: [block280e4bc4PC := 23].
        ].
        block280e4bc4Step = 10 ifTrue: [
            block280e4bc4PC := 11.
        ].
        block280e4bc4Step = 11 ifTrue: [
            block280e4bc4Stack1 := block280e4bc4Arg1.
            block280e4bc4PC := 12.
        ].
        block280e4bc4Step = 12 ifTrue: [
            block280e4bc4Stack2 := [:block280e4be8Arg1 | 
    nil
].
            block280e4bc4PC := 14.
        ].
        block280e4bc4Step = 14 ifTrue: [
            block280e4bc4PC := 20.
        ].
        block280e4bc4Step = 20 ifTrue: [
            block280e4bc4Stack1 := (block280e4bc4Stack1) sgClassIfUndefined: (block280e4bc4Stack2).
            block280e4bc4PC := 22.
        ].
        block280e4bc4Step = 22 ifTrue: [
            block280e4bc4Stack1 := (block280e4bc4Stack1) notNil.
            block280e4bc4PC := 23.
        ].
        block280e4bc4Step = 23 ifTrue: [
            block280e4bc4Result := block280e4bc4Stack1.
            block280e4bc4Done := true.
        ].
    ].
    block280e4bc4Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:block280e4c0cArg1 | 
    | block280e4c0cValue0 block280e4c0cValue1 block280e4c0cValue2 |
    block280e4c0cValue0 := block280e4c0cArg1.
    block280e4c0cValue1 := (block280e4c0cValue0) sgClass.
    block280e4c0cValue2 := (block280e4c0cValue1) asRBDBReference.
    block280e4c0cValue2
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b485c; bytecode file offset 0xbb1134"
!ASDGenericComponent methodsFor: 'recovered'!
writeXMLComponentBody: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super writeXMLComponentBody: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'iconName'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := iconName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) ifNil: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'factoryKey'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := factoryKey.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) ifNil: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031194c; bytecode file offset 0xc0e220"
!ASDGenericComponent methodsFor: 'recovered'!
referencedComponents
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) componentProxies.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) componentProxies.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := [:block280ea900Arg1 | 
    nil
].
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) getObjectIfUndefined: (recoveredBlock14Stack2).
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            (recoveredBlock14Stack2 == nil) ifTrue: [recoveredBlock14PC := 49] ifFalse: [recoveredBlock14PC := 40].
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2034fec8; bytecode file offset 0xc4c79c"
!ASDGenericComponent methodsFor: 'recovered'!
xmlMaxSuffixLen: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super xmlMaxSuffixLen: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) genericSpecificationFileList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := ('.files/') size.
    recoveredBlock35Value2 := recoveredBlock35Arg1.
    recoveredBlock35Value3 := (recoveredBlock35Value2) size.
    recoveredBlock35Value4 := (recoveredBlock35Value1) + (recoveredBlock35Value3).
    recoveredBlock35Value5 := (recoveredBlock35Value0) max: (recoveredBlock35Value4).
    recoveredBlock35Value6 := recoveredBlock35Value5.
    recoveredLocal2 := recoveredBlock35Value6.
    recoveredBlock35Value5
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035568c; bytecode file offset 0xc51f74"
!ASDGenericComponent methodsFor: 'recovered'!
minToolVersion: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) destVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 'V6.0.0'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'Generic Components only supported with ASCET V6.0.0 or higher. (%1)'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) ascetLink: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) addImportantInfoText: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) myFactory.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) factoryKey.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'HWC'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'V6.1.0'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'Generic Hardware Configuration only supported with ASCET V6.1.0 or higher. (%1)'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := 'V6.1.0'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'V6.0.0'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20367e00; bytecode file offset 0xc646ec"
!ASDGenericComponent methodsFor: 'recovered'!
addFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) genericSpecificationFileList.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFileListWrapper.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) scmModified.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b4ed8; bytecode file offset 0xcb17c0"
!ASDGenericComponent methodsFor: 'recovered'!
printASDInfoOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) label.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) cr.
    recoveredValue5 := (self) factoryKey.
    recoveredValue6 := ('Factorykey: ') , (recoveredValue5).
    (recoveredValue2) nextPutAll: (recoveredValue6).
    recoveredValue7 := (self) getFileListWrapper.
    recoveredValue8 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 recoveredBlock31Value7 recoveredBlock31Value8 |
    recoveredBlock31Value0 := recoveredArg1.
    recoveredBlock31Value1 := recoveredBlock31Value0.
    (recoveredBlock31Value1) cr.
    recoveredBlock31Value2 := recoveredBlock31Value0.
    (recoveredBlock31Value2) cr.
    (recoveredBlock31Value0) nextPutAll: ('Files:').
    recoveredBlock31Value3 := recoveredBlock31Arg1.
    recoveredBlock31Value4 := (recoveredBlock31Value3) contents.
    recoveredBlock31Value5 := (recoveredBlock31Value4) keys.
    recoveredBlock31Value6 := (recoveredBlock31Value5) asSortedCollection.
    recoveredBlock31Value7 := [:recoveredBlock31Block58Arg1 | 
    | recoveredBlock31Block58Value0 recoveredBlock31Block58Value1 recoveredBlock31Block58Value2 recoveredBlock31Block58Value3 |
    recoveredBlock31Block58Value0 := recoveredArg1.
    recoveredBlock31Block58Value1 := recoveredBlock31Block58Value0.
    (recoveredBlock31Block58Value1) cr.
    recoveredBlock31Block58Value2 := recoveredBlock31Block58Arg1.
    recoveredBlock31Block58Value3 := (recoveredBlock31Block58Value0) nextPutAll: (recoveredBlock31Block58Value2).
    recoveredBlock31Block58Value3
].
    recoveredBlock31Value8 := (recoveredBlock31Value6) do: (recoveredBlock31Value7).
    recoveredBlock31Value8
].
    (recoveredValue7) ifNotNil: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x203ceca4; bytecode file offset 0xccb574"
!ASDGenericComponent methodsFor: 'recovered'!
createInfoWidget: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGenericComponentFactory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) factoryKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRegisteredFactory: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentManagerWidgetName: (recoveredStack2) widgetParent: (recoveredStack3) widgetOwner: (recoveredStack4) for: (recoveredStack5).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 |
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := recoveredBlock54Value0.
    recoveredBlock54Value2 := recoveredArg3.
    (recoveredBlock54Value1) owner: (recoveredBlock54Value2).
    recoveredBlock54Value3 := (recoveredBlock54Value0) item: (self).
    recoveredBlock54Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasItemTextWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20405b50; bytecode file offset 0xd02444"
!ASDGenericComponent methodsFor: 'recovered'!
getFilesToPath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) genericSpecificationFileList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) prepareDirectory: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Local1 recoveredBlock25Local2 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack2 := '\'.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) key.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredLocal4 := recoveredBlock25Stack1.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack1 := CfsWriteFileStream.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal4.
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) openEmpty: (recoveredBlock25Stack2).
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Local2 := recoveredBlock25Stack2.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) isCfsError.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 62] ifFalse: [recoveredBlock25PC := 64].
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 63.
        ].
        recoveredBlock25Step = 63 ifTrue: [
            ^recoveredBlock25Stack1
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack1 := EsLeadEncodedBytes.
            recoveredBlock25PC := 66.
        ].
        recoveredBlock25Step = 66 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) value.
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) fromString: (recoveredBlock25Stack2).
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) asString.
            recoveredBlock25PC := 73.
        ].
        recoveredBlock25Step = 73 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 74.
        ].
        recoveredBlock25Step = 74 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Local2.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Local1.
            recoveredBlock25PC := 76.
        ].
        recoveredBlock25Step = 76 ifTrue: [
            (recoveredBlock25Stack1) nextPutAll: (recoveredBlock25Stack2).
            recoveredBlock25PC := 78.
        ].
        recoveredBlock25Step = 78 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Local2.
            recoveredBlock25PC := 79.
        ].
        recoveredBlock25Step = 79 ifTrue: [
            (recoveredBlock25Stack1) close.
            recoveredBlock25PC := 81.
        ].
        recoveredBlock25Step = 81 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal4.
            recoveredBlock25PC := 84.
        ].
        recoveredBlock25Step = 84 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack2.
            recoveredBlock25PC := 88.
        ].
        recoveredBlock25Step = 88 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041d544; bytecode file offset 0xd19e30"
!ASDGenericComponent methodsFor: 'recovered'!
loadFinished: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super loadFinished: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := componentProxies.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := componentProxies.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := componentProxies.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := [:block280fc264Arg1 | 
    nil
].
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) getObjectIfUndefined: (recoveredBlock26Stack2).
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack2 := [:recoveredBlock26Block42Arg1 | 
    | recoveredBlock26Block42Value0 recoveredBlock26Block42Value1 recoveredBlock26Block42Value2 recoveredBlock26Block42Value3 recoveredBlock26Block42Value4 recoveredBlock26Block42Value5 |
    recoveredBlock26Block42Value0 := recoveredBlock26Block42Arg1.
    recoveredBlock26Block42Value1 := [:recoveredBlock26Block42Block51Arg1 | 
    | recoveredBlock26Block42Block51Value0 recoveredBlock26Block42Block51Value1 recoveredBlock26Block42Block51Value2 |
    recoveredBlock26Block42Block51Value0 := recoveredBlock26Block42Block51Arg1.
    recoveredBlock26Block42Block51Value1 := recoveredBlock26Block42Arg1.
    recoveredBlock26Block42Block51Value2 := (recoveredBlock26Block42Block51Value0) getOldFileNameForDescriptionItem: (recoveredBlock26Block42Block51Value1).
    recoveredBlock26Block42Block51Value2
].
    recoveredBlock26Block42Value2 := [].
    recoveredBlock26Block42Value3 := (recoveredBlock26Block42Value0) delegateToFactory: (recoveredBlock26Block42Value1) ifNotDefined: (recoveredBlock26Block42Value2).
    recoveredBlock26Block42Value4 := [:recoveredBlock26Block42Block69Arg1 | 
    | recoveredBlock26Block42Block69Value0 recoveredBlock26Block42Block69Value1 recoveredBlock26Block42Block69Value2 recoveredBlock26Block42Block69Value3 recoveredBlock26Block42Block69Value4 |
    recoveredBlock26Block42Block69Value0 := ASDGenericComponentElement.
    recoveredBlock26Block42Block69Value1 := recoveredBlock26Block42Block69Arg1.
    recoveredBlock26Block42Block69Value2 := recoveredBlock26Block42Arg1.
    recoveredBlock26Block42Block69Value3 := (recoveredBlock26Block42Block69Value0) create: (recoveredBlock26Block42Block69Value1) sgClass: (recoveredBlock26Block42Block69Value2).
    recoveredBlock26Block42Block69Value4 := (self) addVar: (recoveredBlock26Block42Block69Value3).
    recoveredBlock26Block42Block69Value4
].
    recoveredBlock26Block42Value5 := (recoveredBlock26Block42Value3) ifNotNil: (recoveredBlock26Block42Value4).
    recoveredBlock26Block42Value5
].
            recoveredBlock26PC := 90.
        ].
        recoveredBlock26Step = 90 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) ifNotNil: (recoveredBlock26Stack2).
            recoveredBlock26PC := 92.
        ].
        recoveredBlock26Step = 92 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := 'unused'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            componentProxies := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049f240; bytecode file offset 0xd9bb58"
!ASDGenericComponent methodsFor: 'recovered'!
addReferences: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack2 := [:block281044f4Arg1 | 
    nil
].
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35PC := 52.
        ].
        recoveredBlock35Step = 52 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) getObjectIfUndefined: (recoveredBlock35Stack2).
            recoveredBlock35PC := 54.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack2 := [:recoveredBlock35Block54Arg1 | 
    | recoveredBlock35Block54Stack0 recoveredBlock35Block54Stack1 recoveredBlock35Block54Stack2 recoveredBlock35Block54Stack3 recoveredBlock35Block54Stack4 recoveredBlock35Block54PC recoveredBlock35Block54Step recoveredBlock35Block54Done recoveredBlock35Block54Result |
    recoveredBlock35Block54Stack0 := self.
    recoveredBlock35Block54PC := 60.
    recoveredBlock35Block54Done := false.
    [recoveredBlock35Block54Done not] whileTrue: [
        recoveredBlock35Block54Step := recoveredBlock35Block54PC.
        recoveredBlock35Block54Step = 60 ifTrue: [
            recoveredBlock35Block54Stack1 := nil.
            recoveredBlock35Block54PC := 61.
        ].
        recoveredBlock35Block54Step = 61 ifTrue: [
            recoveredBlock35Block54Stack2 := self.
            recoveredBlock35Block54PC := 62.
        ].
        recoveredBlock35Block54Step = 62 ifTrue: [
            recoveredBlock35Block54Stack2 := (recoveredBlock35Block54Stack2) complexVariables.
            recoveredBlock35Block54PC := 64.
        ].
        recoveredBlock35Block54Step = 64 ifTrue: [
            recoveredBlock35Block54Stack2 := (recoveredBlock35Block54Stack2) values.
            recoveredBlock35Block54PC := 66.
        ].
        recoveredBlock35Block54Step = 66 ifTrue: [
            recoveredBlock35Block54Stack3 := [:recoveredBlock35Block54Block66Arg1 | 
    | recoveredBlock35Block54Block66Value0 recoveredBlock35Block54Block66Value1 recoveredBlock35Block54Block66Value2 recoveredBlock35Block54Block66Value3 |
    recoveredBlock35Block54Block66Value0 := recoveredBlock35Block54Block66Arg1.
    recoveredBlock35Block54Block66Value1 := (recoveredBlock35Block54Block66Value0) sgClass.
    recoveredBlock35Block54Block66Value2 := recoveredBlock35Arg1.
    recoveredBlock35Block54Block66Value3 := (recoveredBlock35Block54Block66Value1) equals: (recoveredBlock35Block54Block66Value2).
    recoveredBlock35Block54Block66Value3
].
            recoveredBlock35Block54PC := 81.
        ].
        recoveredBlock35Block54Step = 81 ifTrue: [
            recoveredBlock35Block54Stack2 := (recoveredBlock35Block54Stack2) anySatisfy: (recoveredBlock35Block54Stack3).
            recoveredBlock35Block54PC := 83.
        ].
        recoveredBlock35Block54Step = 83 ifTrue: [
            (recoveredBlock35Block54Stack2) ifTrue: [recoveredBlock35Block54PC := 93] ifFalse: [recoveredBlock35Block54PC := 86].
        ].
        recoveredBlock35Block54Step = 86 ifTrue: [
            recoveredBlock35Block54PC := 87.
        ].
        recoveredBlock35Block54Step = 87 ifTrue: [
            recoveredBlock35Block54Stack1 := recoveredLocal1.
            recoveredBlock35Block54PC := 90.
        ].
        recoveredBlock35Block54Step = 90 ifTrue: [
            recoveredBlock35Block54Stack2 := recoveredBlock35Block54Arg1.
            recoveredBlock35Block54PC := 91.
        ].
        recoveredBlock35Block54Step = 91 ifTrue: [
            recoveredBlock35Block54Stack1 := (recoveredBlock35Block54Stack1) add: (recoveredBlock35Block54Stack2).
            recoveredBlock35Block54PC := 93.
        ].
        recoveredBlock35Block54Step = 93 ifTrue: [
            recoveredBlock35Block54Result := recoveredBlock35Block54Stack1.
            recoveredBlock35Block54Done := true.
        ].
    ].
    recoveredBlock35Block54Result
].
            recoveredBlock35PC := 94.
        ].
        recoveredBlock35Step = 94 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) ifNotNil: (recoveredBlock35Stack2).
            recoveredBlock35PC := 96.
        ].
        recoveredBlock35Step = 96 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := [:block28104518Arg1 | 
    | block28104518Value0 block28104518Value1 block28104518Value2 block28104518Value3 block28104518Value4 |
    block28104518Value0 := ASDGenericComponentElement.
    block28104518Value1 := block28104518Arg1.
    block28104518Value2 := (block28104518Value1) label.
    block28104518Value3 := block28104518Arg1.
    block28104518Value4 := (block28104518Value0) create: (block28104518Value2) sgClass: (block28104518Value3).
    block28104518Value4
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) addVars: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := EtasGenericComponentReferenceCallback.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) scmModified.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cedd4; bytecode file offset 0xdcb700"
!ASDGenericComponent methodsFor: 'recovered'!
folderModified: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGenericComponentFactory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) factoryKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRegisteredFactory: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := CfsPath.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDirectory.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := '*.xml'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFiles: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Local1 recoveredBlock66Local2 recoveredBlock66Stack0 recoveredBlock66Stack1 recoveredBlock66Stack2 recoveredBlock66Stack3 recoveredBlock66Stack4 recoveredBlock66PC recoveredBlock66Step recoveredBlock66Done recoveredBlock66Result |
    recoveredBlock66Stack0 := self.
    recoveredBlock66PC := 72.
    recoveredBlock66Done := false.
    [recoveredBlock66Done not] whileTrue: [
        recoveredBlock66Step := recoveredBlock66PC.
        recoveredBlock66Step = 72 ifTrue: [
            recoveredBlock66Stack1 := recoveredArg2.
            recoveredBlock66PC := 75.
        ].
        recoveredBlock66Step = 75 ifTrue: [
            recoveredBlock66Stack2 := '\'.
            recoveredBlock66PC := 77.
        ].
        recoveredBlock66Step = 77 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) , (recoveredBlock66Stack2).
            recoveredBlock66PC := 79.
        ].
        recoveredBlock66Step = 79 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Arg1.
            recoveredBlock66PC := 80.
        ].
        recoveredBlock66Step = 80 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) dName.
            recoveredBlock66PC := 82.
        ].
        recoveredBlock66Step = 82 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) , (recoveredBlock66Stack2).
            recoveredBlock66PC := 84.
        ].
        recoveredBlock66Step = 84 ifTrue: [
            recoveredBlock66Local1 := recoveredBlock66Stack1.
            recoveredBlock66PC := 85.
        ].
        recoveredBlock66Step = 85 ifTrue: [
            recoveredBlock66Stack1 := CfsReadFileStream.
            recoveredBlock66PC := 87.
        ].
        recoveredBlock66Step = 87 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Local1.
            recoveredBlock66PC := 88.
        ].
        recoveredBlock66Step = 88 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) open: (recoveredBlock66Stack2).
            recoveredBlock66PC := 90.
        ].
        recoveredBlock66Step = 90 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Stack1.
            recoveredBlock66PC := 91.
        ].
        recoveredBlock66Step = 91 ifTrue: [
            recoveredLocal8 := recoveredBlock66Stack2.
            recoveredBlock66PC := 94.
        ].
        recoveredBlock66Step = 94 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) isCfsError.
            recoveredBlock66PC := 96.
        ].
        recoveredBlock66Step = 96 ifTrue: [
            (recoveredBlock66Stack1) ifTrue: [recoveredBlock66PC := 100] ifFalse: [recoveredBlock66PC := 109].
        ].
        recoveredBlock66Step = 100 ifTrue: [
            recoveredBlock66Stack1 := self.
            recoveredBlock66PC := 101.
        ].
        recoveredBlock66Step = 101 ifTrue: [
            recoveredBlock66Stack2 := recoveredLocal8.
            recoveredBlock66PC := 104.
        ].
        recoveredBlock66Step = 104 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) message.
            recoveredBlock66PC := 106.
        ].
        recoveredBlock66Step = 106 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) error: (recoveredBlock66Stack2).
            recoveredBlock66PC := 108.
        ].
        recoveredBlock66Step = 108 ifTrue: [
            ^recoveredBlock66Stack1
        ].
        recoveredBlock66Step = 109 ifTrue: [
            recoveredBlock66Stack1 := recoveredLocal3.
            recoveredBlock66PC := 112.
        ].
        recoveredBlock66Step = 112 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Arg1.
            recoveredBlock66PC := 113.
        ].
        recoveredBlock66Step = 113 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) dName.
            recoveredBlock66PC := 115.
        ].
        recoveredBlock66Step = 115 ifTrue: [
            recoveredBlock66Stack3 := recoveredLocal8.
            recoveredBlock66PC := 118.
        ].
        recoveredBlock66Step = 118 ifTrue: [
            recoveredBlock66Stack3 := (recoveredBlock66Stack3) contents.
            recoveredBlock66PC := 120.
        ].
        recoveredBlock66Step = 120 ifTrue: [
            (recoveredBlock66Stack1) at: (recoveredBlock66Stack2) put: (recoveredBlock66Stack3).
            recoveredBlock66PC := 122.
        ].
        recoveredBlock66Step = 122 ifTrue: [
            recoveredBlock66Stack1 := AbtXmlDOMParser.
            recoveredBlock66PC := 124.
        ].
        recoveredBlock66Step = 124 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) newNonValidatingParser.
            recoveredBlock66PC := 126.
        ].
        recoveredBlock66Step = 126 ifTrue: [
            recoveredBlock66Stack2 := recoveredLocal8.
            recoveredBlock66PC := 129.
        ].
        recoveredBlock66Step = 129 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) contents.
            recoveredBlock66PC := 131.
        ].
        recoveredBlock66Step = 131 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) parse: (recoveredBlock66Stack2).
            recoveredBlock66PC := 133.
        ].
        recoveredBlock66Step = 133 ifTrue: [
            recoveredLocal7 := recoveredBlock66Stack1.
            recoveredBlock66PC := 136.
        ].
        recoveredBlock66Step = 136 ifTrue: [
            recoveredBlock66Stack1 := recoveredLocal8.
            recoveredBlock66PC := 139.
        ].
        recoveredBlock66Step = 139 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) close.
            recoveredBlock66PC := 141.
        ].
        recoveredBlock66Step = 141 ifTrue: [
            recoveredBlock66Result := recoveredBlock66Stack1.
            recoveredBlock66Done := true.
        ].
    ].
    recoveredBlock66Result
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) genericSpecificationFileList: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20567df8; bytecode file offset 0xe64724"
!ASDGenericComponent methodsFor: 'recovered'!
internalWriteXMLSpecifications: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super internalWriteXMLSpecifications: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := genericSpecificationFileList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) genericSpecificationFileList.
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) split: (recoveredStack1) onLast: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := '.files'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'Failed to create '.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) mkdirRecursive: (recoveredStack1) errorLabel: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) split: (recoveredStack1) onLast: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) split: (recoveredStack1) onLast: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'FileListSpecification'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Local1 recoveredBlock129Local2 recoveredBlock129Local3 recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 recoveredBlock129Value3 recoveredBlock129Value4 recoveredBlock129Value5 recoveredBlock129Value6 recoveredBlock129Value7 recoveredBlock129Value8 recoveredBlock129Value9 recoveredBlock129Value10 recoveredBlock129Value11 recoveredBlock129Value12 recoveredBlock129Value13 recoveredBlock129Value14 recoveredBlock129Value15 recoveredBlock129Value16 recoveredBlock129Value17 recoveredBlock129Value18 recoveredBlock129Value19 recoveredBlock129Value20 recoveredBlock129Value21 recoveredBlock129Value22 recoveredBlock129Value23 recoveredBlock129Value24 recoveredBlock129Value25 recoveredBlock129Value26 recoveredBlock129Value27 |
    recoveredBlock129Value0 := recoveredLocal2.
    recoveredBlock129Value1 := recoveredBlock129Arg1.
    recoveredBlock129Value2 := (recoveredBlock129Value0) , (recoveredBlock129Value1).
    recoveredBlock129Local2 := recoveredBlock129Value2.
    recoveredBlock129Value3 := Util.
    recoveredBlock129Value4 := recoveredLocal1.
    recoveredBlock129Value5 := recoveredBlock129Local2.
    recoveredBlock129Value6 := (recoveredBlock129Value4) , (recoveredBlock129Value5).
    recoveredBlock129Value7 := (recoveredBlock129Value3) checkFileName: (recoveredBlock129Value6).
    recoveredBlock129Local1 := recoveredBlock129Value7.
    recoveredBlock129Value8 := recoveredArg1.
    (recoveredBlock129Value8) openComplex: ('File').
    recoveredBlock129Value9 := recoveredArg1.
    (recoveredBlock129Value9) openComplex: ('Name').
    recoveredBlock129Value10 := recoveredArg1.
    recoveredBlock129Value11 := recoveredBlock129Arg1.
    (recoveredBlock129Value10) pcData: (recoveredBlock129Value11).
    recoveredBlock129Value12 := recoveredArg1.
    (recoveredBlock129Value12) closeComplex.
    recoveredBlock129Value13 := recoveredArg1.
    (recoveredBlock129Value13) openComplex: ('Location').
    recoveredBlock129Value14 := recoveredArg1.
    recoveredBlock129Value15 := recoveredBlock129Local2.
    recoveredBlock129Value16 := (recoveredBlock129Value15) replaceCharacter: ($\) with: ($/).
    (recoveredBlock129Value14) pcData: (recoveredBlock129Value16).
    recoveredBlock129Value17 := recoveredArg1.
    (recoveredBlock129Value17) closeComplex.
    recoveredBlock129Value18 := CfsWriteFileStream.
    recoveredBlock129Value19 := recoveredBlock129Local1.
    recoveredBlock129Value20 := (recoveredBlock129Value18) openEmptyDB: (recoveredBlock129Value19).
    recoveredBlock129Local3 := recoveredBlock129Value20.
    recoveredBlock129Value21 := recoveredBlock129Local3.
    recoveredBlock129Value22 := recoveredLocal4.
    recoveredBlock129Value23 := recoveredBlock129Arg1.
    recoveredBlock129Value24 := (recoveredBlock129Value22) at: (recoveredBlock129Value23).
    (recoveredBlock129Value21) nextPutAll: (recoveredBlock129Value24).
    recoveredBlock129Value25 := recoveredBlock129Local3.
    (recoveredBlock129Value25) close.
    recoveredBlock129Value26 := recoveredArg1.
    recoveredBlock129Value27 := (recoveredBlock129Value26) closeComplex.
    recoveredBlock129Value27
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

